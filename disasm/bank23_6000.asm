; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank23_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank23.bin

	org 06000h

	cp 004h			;6000
	jp (hl)			;6002
	dec bc			;6003
	ret nc			;6004
	push af			;6005
	ld sp,001e9h		;6006
	ld (hl),037h		;6009
	ld (hl),0e9h		;600b
	dec bc			;600d
	ld sp,001e9h		;600e
	ld (hl),037h		;6011
	ld (hl),0e9h		;6013
	dec bc			;6015
	jr nc,l6048h		;6016
	ld sp,002fbh		;6018
	push af			;601b
	ld sp,001e9h		;601c
	ld (hl),037h		;601f
	ld (hl),0e9h		;6021
	dec bc			;6023
	ld sp,001e9h		;6024
	ld (hl),037h		;6027
	ld (hl),0e9h		;6029
	dec bc			;602b
	jr nc,l605eh		;602c
	ld sp,018fbh		;602e
	cp 010h			;6031
	sub c			;6033
	jp (hl)			;6034
	ld bc,09796h		;6035
	sub (hl)		;6038
	jp (hl)			;6039
	dec bc			;603a
	sub c			;603b
	jp (hl)			;603c
	ld bc,09796h		;603d
	sub (hl)		;6040
	jp (hl)			;6041
	dec bc			;6042
	sub b			;6043
	sub b			;6044
	sub c			;6045
	cp 010h			;6046
l6048h:
	push af			;6048
	jp (hl)			;6049
	dec bc			;604a
	sub c			;604b
	jp (hl)			;604c
	ld bc,09796h		;604d
l6050h:
	sub (hl)		;6050
	ei			;6051
	ld (bc),a		;6052
	sub l			;6053
	sub h			;6054
	sub l			;6055
	sub h			;6056
	sub l			;6057
	sub h			;6058
	sub l			;6059
	sub h			;605a
	ld sp,hl		;605b
	ld a,e			;605c
	xor b			;605d
l605eh:
	ld sp,hl		;605e
	ld a,e			;605f
sub_6060h:
	xor b			;6060
	push af			;6061
	jp (hl)			;6062
	dec bc			;6063
	sub c			;6064
	jp (hl)			;6065
l6066h:
	ld bc,09796h		;6066
	sub (hl)		;6069
	jp (hl)			;606a
	dec bc			;606b
l606ch:
	sub c			;606c
	jp (hl)			;606d
	ld bc,09796h		;606e
	sub (hl)		;6071
l6072h:
	jp (hl)			;6072
	dec bc			;6073
	sub b			;6074
	sub b			;6075
	sub c			;6076
	ei			;6077
l6078h:
	ld (bc),a		;6078
	rst 38h			;6079
	cp 001h			;607a
	jp (hl)			;607c
	dec bc			;607d
l607eh:
	set 1,e			;607e
	jp pe,0f207h		;6080
	ld (bc),a		;6083
l6084h:
	pop af			;6084
	ld d,d			;6085
	defb 0ddh,006h,076h ;illegal sequence	;6086
	in a,(001h)		;6089
	push af			;608b
	pop bc			;608c
	jp nc,05020h		;608d
l6090h:
	sub b			;6090
	pop de			;6091
	jr nz,l6066h		;6092
	jr nz,l60e6h		;6094
l6096h:
	sub b			;6096
	pop de			;6097
	jr nz,l606ch		;6098
	jr nz,l60ech		;609a
l609ch:
	sub b			;609c
	pop de			;609d
	jr nz,l6072h		;609e
	jr nz,$+66		;60a0
l60a2h:
	add a,b			;60a2
	pop de			;60a3
	jr nz,l6078h		;60a4
	jr nz,$+66		;60a6
	add a,b			;60a8
	pop de			;60a9
	jr nz,l607eh		;60aa
	jr nz,$+66		;60ac
	add a,b			;60ae
	pop de			;60af
	jr nz,l6084h		;60b0
	jr nz,l60e4h		;60b2
	ld (hl),b		;60b4
	pop de			;60b5
	jr nz,$-44		;60b6
	jr nz,$+50		;60b8
	ld (hl),b		;60ba
	pop de			;60bb
	jr nz,l6090h		;60bc
	jr nz,$+50		;60be
	ld (hl),b		;60c0
	pop de			;60c1
	jr nz,l6096h		;60c2
	jr nz,$+82		;60c4
	sub b			;60c6
	pop de			;60c7
	jr nz,l609ch		;60c8
	jr nz,$+82		;60ca
	sub b			;60cc
	pop de			;60cd
	jr nz,l60a2h		;60ce
	jr nz,l6122h		;60d0
	ei			;60d2
	ld (bc),a		;60d3
	cp 001h			;60d4
	jp p,0f102h		;60d6
	ld d,d			;60d9
	jp pe,0e909h		;60da
	dec bc			;60dd
	defb 0ddh,005h,065h ;illegal sequence	;60de
	in a,(001h)		;60e1
	push af			;60e3
l60e4h:
	pop bc			;60e4
	pop de			;60e5
l60e6h:
	ld hl,02131h		;60e6
	ld sp,03121h		;60e9
l60ech:
	ld hl,02131h		;60ec
	ld sp,03121h		;60ef
	ld hl,02151h		;60f2
	ld d,c			;60f5
	ld hl,08151h		;60f6
	sub c			;60f9
	add a,c			;60fa
	sub c			;60fb
	add a,c			;60fc
	ei			;60fd
	ld (bc),a		;60fe
	pop bc			;60ff
	jp p,0f105h		;6100
	ld h,e			;6103
	in a,(001h)		;6104
	push af			;6106
	jp pe,0eb07h		;6107
	inc bc			;610a
	inc hl			;610b
	jp (hl)			;610c
	dec bc			;610d
	jp nc,0ec9ah		;610e
	jp pe,09002h		;6111
	jp pe,0eb07h		;6114
	inc de			;6117
	inc hl			;6118
	jp (hl)			;6119
	ld bc,09ad1h		;611a
	sbc a,d			;611d
	sub (hl)		;611e
	add a,a			;611f
	jp (hl)			;6120
	ex af,af'		;6121
l6122h:
	ld a,d			;6122
	call pe,002eah		;6123
	ld (hl),b		;6126
	ei			;6127
	ld (bc),a		;6128
	jp pe,0eb07h		;6129
	inc bc			;612c
	inc hl			;612d
	jp (hl)			;612e
	dec bc			;612f
	ld a,(bc)		;6130
	call pe,002eah		;6131
	nop			;6134
	jp pe,0eb07h		;6135
	inc bc			;6138
	inc hl			;6139
	ld a,(de)		;613a
	call pe,002eah		;613b
	djnz $-20		;613e
	rlca			;6140
	ex de,hl		;6141
	inc bc			;6142
	inc hl			;6143
	ld a,(bc)		;6144
	call pe,002eah		;6145
	nop			;6148
	jp pe,0eb07h		;6149
	inc bc			;614c
	inc hl			;614d
	add hl,de		;614e
	jp pe,0f109h		;614f
	ld h,c			;6152
	jp p,0ed05h		;6153
	ex af,af'		;6156
	ex de,hl		;6157
	adc a,c			;6158
	jr nz,$-35		;6159
	inc b			;615b
	ret nc			;615c
	push af			;615d
	ld hl,001e9h		;615e
	ld h,027h		;6161
	ld h,0e9h		;6163
	dec bc			;6165
	ld hl,001e9h		;6166
	ld h,027h		;6169
	ld h,0e9h		;616b
	dec bc			;616d
	jr nz,l6190h		;616e
	ld hl,002fbh		;6170
	call c,0feffh		;6173
	ld bc,00be9h		;6176
	push af			;6179
	jp pe,0db0bh		;617a
	dec b			;617d
	ex de,hl		;617e
	rla			;617f
	ld bc,02fd5h		;6180
	call pe,004eah		;6183
	daa			;6186
	cp 001h			;6187
	jp (hl)			;6189
	dec bc			;618a
	push af			;618b
	jp pe,0db0ch		;618c
	add hl,bc		;618f
l6190h:
	ex de,hl		;6190
	rla			;6191
	ld bc,02fd3h		;6192
	call pe,008eah		;6195
	daa			;6198
	ei			;6199
	ex af,af'		;619a
	push af			;619b
	ex de,hl		;619c
	rla			;619d
	ld bc,00ceah		;619e
	call nc,0ec9fh		;61a1
	jp pe,09708h		;61a4
l61a7h:
	ei			;61a7
	inc b			;61a8
	push af			;61a9
	ex de,hl		;61aa
	rla			;61ab
	ld bc,00deah		;61ac
	out (02fh),a		;61af
	call pe,008eah		;61b1
	daa			;61b4
	ei			;61b5
	ld b,0ffh		;61b6
	cp 001h			;61b8
	ret m			;61ba
	jr z,l61a7h		;61bb
	rrca			;61bd
	sub 0afh		;61be
	ld bc,00be9h		;61c0
	ex de,hl		;61c3
	add hl,de		;61c4
	ld d,b			;61c5
	push af			;61c6
	push de			;61c7
	ld hl,001e9h		;61c8
	ld h,027h		;61cb
	ld h,0e9h		;61cd
	dec bc			;61cf
	ld hl,001e9h		;61d0
	ld h,027h		;61d3
	ld h,0e9h		;61d5
	dec bc			;61d7
	jr nz,l61fah		;61d8
	ld hl,002fbh		;61da
	cp 001h			;61dd
	ret m			;61df
	jr z,$-20		;61e0
	inc c			;61e2
	in a,(003h)		;61e3
	sub 0afh		;61e5
	ld bc,00be9h		;61e7
	ex de,hl		;61ea
	ld (hl),e		;61eb
	ld b,h			;61ec
	push af			;61ed
	call nc,0e921h		;61ee
	ld bc,02726h		;61f1
	ld h,0e9h		;61f4
	dec bc			;61f6
	ld hl,001e9h		;61f7
l61fah:
	ld h,027h		;61fa
	ld h,0e9h		;61fc
	dec bc			;61fe
	jr nz,l6221h		;61ff
	ld hl,010fbh		;6201
	push de			;6204
	push af			;6205
	sub c			;6206
	jp (hl)			;6207
	ld bc,09796h		;6208
	sub (hl)		;620b
	jp (hl)			;620c
	dec bc			;620d
	sub c			;620e
	jp (hl)			;620f
	ld bc,09796h		;6210
	sub (hl)		;6213
	jp (hl)			;6214
	dec bc			;6215
	sub b			;6216
	sub b			;6217
	sub c			;6218
	ei			;6219
	ex af,af'		;621a
	jp pe,0eb0fh		;621b
	ld (hl),e		;621e
	ld (hl),h		;621f
	push af			;6220
l6221h:
	call nc,0e921h		;6221
	ld bc,02726h		;6224
	ld h,0e9h		;6227
	dec bc			;6229
	ld hl,001e9h		;622a
	ld h,027h		;622d
	ld h,0e9h		;622f
	dec bc			;6231
	jr nz,l6254h		;6232
	ld hl,00cfbh		;6234
	push de			;6237
	dec h			;6238
	ret c			;6239
	call pe,001eah		;623a
	ld (0feffh),hl		;623d
	ld bc,028f8h		;6240
	jp pe,0d60fh		;6243
	xor a			;6246
	ld bc,00be9h		;6247
	ex de,hl		;624a
	add hl,de		;624b
	ld d,b			;624c
	push af			;624d
	call nc,0e921h		;624e
	ld bc,02726h		;6251
l6254h:
	ld h,0e9h		;6254
	dec bc			;6256
	ld hl,001e9h		;6257
	ld h,027h		;625a
	ld h,0e9h		;625c
	dec bc			;625e
	jr nz,l6281h		;625f
	ld hl,002fbh		;6261
	cp 001h			;6264
	ret m			;6266
	ld (bc),a		;6267
	jp (hl)			;6268
	dec bc			;6269
	jp p,0f110h		;626a
	ld d,h			;626d
	xor 002h		;626e
	push af			;6270
	ret nz			;6271
	ex de,hl		;6272
	inc bc			;6273
	inc hl			;6274
	jp pe,0d608h		;6275
	rra			;6278
	ld (bc),a		;6279
	jp nc,0d82ah		;627a
	jp (hl)			;627d
	ld bc,0eaech		;627e
l6281h:
	ld (bc),a		;6281
	inc h			;6282
	jp pe,0eb08h		;6283
	inc bc			;6286
	inc de			;6287
	sub l			;6288
	jp (hl)			;6289
	dec bc			;628a
	adc a,d			;628b
	jp (hl)			;628c
	ld bc,0eaech		;628d
	ld (bc),a		;6290
	add a,h			;6291
	jp pe,0eb08h		;6292
	inc bc			;6295
	inc de			;6296
	dec h			;6297
	jp (hl)			;6298
	dec bc			;6299
	ld a,d			;629a
	jp (hl)			;629b
	ld bc,0eaech		;629c
	ld (bc),a		;629f
	ld (hl),h		;62a0
	jp pe,0eb08h		;62a1
	inc bc			;62a4
	inc de			;62a5
	out (095h),a		;62a6
	jp (hl)			;62a8
	dec bc			;62a9
	jp nc,0d85ah		;62aa
	ei			;62ad
	ld (bc),a		;62ae
	rst 28h			;62af
	cp 001h			;62b0
	pop af			;62b2
	ld h,d			;62b3
	jp p,0e904h		;62b4
	dec bc			;62b7
	push af			;62b8
	in a,(002h)		;62b9
	ret m			;62bb
	dec b			;62bc
	jp pe,0ed06h		;62bd
	ld (bc),a		;62c0
	defb 0ddh,085h ;add a,ixl	;62c1
	ld (021d1h),a		;62c3
	inc sp			;62c6
	ld (hl),e		;62c7
	defb 0ddh,087h,021h ;illegal sequence	;62c8
	xor h			;62cb
	call pe,002eah		;62cc
	and b			;62cf
	ret m			;62d0
	ld (bc),a		;62d1
	ret nz			;62d2
	xor 002h		;62d3
	in a,(001h)		;62d5
	ex de,hl		;62d7
	rla			;62d8
	inc de			;62d9
	jp (hl)			;62da
	ld bc,007eah		;62db
	jp nc,04796h		;62de
	ld d,(hl)		;62e1
	jp (hl)			;62e2
	dec bc			;62e3
	out (098h),a		;62e4
	call pe,002eah		;62e6
	sub b			;62e9
	jp pe,0ee07h		;62ea
	inc b			;62ed
	ex de,hl		;62ee
	rla			;62ef
	inc de			;62f0
	sub 01fh		;62f1
	ld (bc),a		;62f3
	jp nc,0ef8ah		;62f4
	ret c			;62f7
	ei			;62f8
	ld (bc),a		;62f9
	cp 001h			;62fa
	ret m			;62fc
	ld (bc),a		;62fd
	pop af			;62fe
	ld h,d			;62ff
	jp p,0f50ah		;6300
	ex de,hl		;6303
	ld b,e			;6304
	ld (hl),e		;6305
	in a,(002h)		;6306
	jp pe,0d609h		;6308
	ld b,002h		;630b
	jp (hl)			;630d
	dec bc			;630e
	jp nc,0e941h		;630f
	ld (bc),a		;6312
	ld b,e			;6313
	ld b,d			;6314
	ld b,e			;6315
	jp (hl)			;6316
	dec bc			;6317
	jp nc,0e941h		;6318
	ld (bc),a		;631b
	ld b,e			;631c
	ld b,d			;631d
	ld b,e			;631e
	jp (hl)			;631f
	dec bc			;6320
	jp nc,0e941h		;6321
	ld (bc),a		;6324
	ld b,e			;6325
	ld b,d			;6326
	ld b,e			;6327
	jp (hl)			;6328
	dec bc			;6329
	jp pe,0d109h		;632a
	sbc a,e			;632d
	ei			;632e
	ld (bc),a		;632f
	ret c			;6330
	ret m			;6331
	ld (bc),a		;6332
	jp (hl)			;6333
	ld bc,008eah		;6334
	ex de,hl		;6337
	inc bc			;6338
	inc bc			;6339
	pop af			;633a
	ld d,c			;633b
	jp p,0f504h		;633c
	call nz,0d4c5h		;633f
	sub l			;6342
	and h			;6343
	add a,l			;6344
	sub h			;6345
	out (085h),a		;6346
	sub h			;6348
	ld (hl),l		;6349
	add a,h			;634a
	sub l			;634b
	and h			;634c
	add a,l			;634d
	sub h			;634e
	jp nc,09485h		;634f
	ld (hl),l		;6352
	add a,h			;6353
	sub l			;6354
	and h			;6355
	add a,l			;6356
	sub h			;6357
	pop de			;6358
	add a,l			;6359
	sub h			;635a
	ei			;635b
	inc b			;635c
	cp 001h			;635d
	ret m			;635f
	ld (bc),a		;6360
	pop af			;6361
	ld d,c			;6362
	jp p,0ea03h		;6363
	ld c,0e9h		;6366
	dec bc			;6368
	in a,(002h)		;6369
	sub 02fh		;636b
	ld bc,0ebf5h		;636d
	ld (hl),e		;6370
	ld h,e			;6371
	push af			;6372
	pop de			;6373
	ld hl,001e9h		;6374
	ld h,027h		;6377
	ld h,0e9h		;6379
	dec bc			;637b
	ld hl,001e9h		;637c
	ld h,027h		;637f
	ld h,0e9h		;6381
	dec bc			;6383
	jr nz,l63a6h		;6384
	ld hl,002fbh		;6386
	call c,0fed8h		;6389
	ld bc,002f8h		;638c
	pop af			;638f
	ld h,h			;6390
	jp p,0e905h		;6391
	dec bc			;6394
	push af			;6395
	ex de,hl		;6396
	ld (hl),e		;6397
	ld b,e			;6398
	jp pe,0db0eh		;6399
	ld (bc),a		;639c
	sub 01fh		;639d
	ld bc,0a3d2h		;639f
	add a,a			;63a2
	and e			;63a3
	add a,a			;63a4
	jp (hl)			;63a5
l63a6h:
	ld bc,0d186h		;63a6
	rlca			;63a9
	jp nc,0e9b6h		;63aa
	dec bc			;63ad
	xor a			;63ae
	ret c			;63af
	call pe,002eah		;63b0
	and l			;63b3
	ei			;63b4
	ld (bc),a		;63b5
	ex de,hl		;63b6
	ld (hl),e		;63b7
	ld b,e			;63b8
	sub 003h		;63b9
	ld bc,00feah		;63bb
	sbc a,a			;63be
	call pe,0ead8h		;63bf
	ld (bc),a		;63c2
	sub a			;63c3
	jp pe,09401h		;63c4
	rst 38h			;63c7
	cp 001h			;63c8
	ret m			;63ca
	ld (bc),a		;63cb
	pop af			;63cc
	ld d,e			;63cd
	jp p,0ea0ah		;63ce
	dec b			;63d1
	jp (hl)			;63d2
	djnz $-19		;63d3
l63d5h:
	add a,c			;63d5
	inc de			;63d6
	in a,(001h)		;63d7
	out (05fh),a		;63d9
l63dbh:
	call pe,0eaf3h		;63db
	ld bc,001e9h		;63de
l63e1h:
	ld d,a			;63e1
	cp 001h			;63e2
	ret m			;63e4
	ld (bc),a		;63e5
	jp pe,0ed08h		;63e6
	dec b			;63e9
	jp p,0f102h		;63ea
l63edh:
	ld d,d			;63ed
	jp (hl)			;63ee
	dec bc			;63ef
	add a,(ix-079h)		;63f0
l63f3h:
	in a,(001h)		;63f3
	push af			;63f5
	jp nc,05020h		;63f6
l63f9h:
	sub b			;63f9
	pop de			;63fa
	jr nz,$-44		;63fb
	jr nz,l644fh		;63fd
l63ffh:
	sub b			;63ff
	pop de			;6400
	jr nz,l63d5h		;6401
	jr nz,l6455h		;6403
l6405h:
	sub b			;6405
	pop de			;6406
	jr nz,l63dbh		;6407
	jr nz,l644bh		;6409
l640bh:
	add a,b			;640b
	pop de			;640c
	jr nz,l63e1h		;640d
	jr nz,l6451h		;640f
	add a,b			;6411
	pop de			;6412
	jr nz,$-44		;6413
	jr nz,$+66		;6415
	add a,b			;6417
	pop de			;6418
	jr nz,l63edh		;6419
	jr nz,$+50		;641b
	ld (hl),b		;641d
	pop de			;641e
	jr nz,l63f3h		;641f
	jr nz,$+50		;6421
	ld (hl),b		;6423
	pop de			;6424
	jr nz,l63f9h		;6425
	jr nz,$+50		;6427
	ld (hl),b		;6429
	pop de			;642a
	jr nz,l63ffh		;642b
	jr nz,l647fh		;642d
	sub b			;642f
	pop de			;6430
	jr nz,l6405h		;6431
	jr nz,l6485h		;6433
	sub b			;6435
	pop de			;6436
	jr nz,l640bh		;6437
	jr nz,l648bh		;6439
	sub b			;643b
	pop de			;643c
	jr nz,$-3		;643d
	ld (bc),a		;643f
	cp 001h			;6440
	ret m			;6442
	ld h,0f2h		;6443
	ld (bc),a		;6445
	pop af			;6446
	ld d,d			;6447
	jp pe,0e909h		;6448
l644bh:
	dec bc			;644b
	defb 0ddh,025h ;dec ixh	;644c
	ld h,l			;644e
l644fh:
	in a,(001h)		;644f
l6451h:
	push af			;6451
	jp nc,03121h		;6452
l6455h:
	ld hl,02131h		;6455
	ld sp,03121h		;6458
	ld hl,02131h		;645b
	ld sp,05121h		;645e
	ld hl,02151h		;6461
	ld d,c			;6464
	add a,c			;6465
	sub c			;6466
	add a,c			;6467
	sub c			;6468
	add a,c			;6469
	sub c			;646a
	ei			;646b
	ld (bc),a		;646c
	cp 001h			;646d
	ret m			;646f
	ld (bc),a		;6470
	pop af			;6471
	ld d,c			;6472
	jp p,0f504h		;6473
	ex de,hl		;6476
	ld b,e			;6477
	ld (hl),e		;6478
	in a,(002h)		;6479
	jp pe,0d609h		;647b
	inc b			;647e
l647fh:
	ld (bc),a		;647f
	jp (hl)			;6480
	dec bc			;6481
	jp nc,0e991h		;6482
l6485h:
	ld (bc),a		;6485
	sub e			;6486
	sub d			;6487
	sub e			;6488
	jp (hl)			;6489
	dec bc			;648a
l648bh:
	jp nc,0e991h		;648b
	ld (bc),a		;648e
	sub e			;648f
	sub d			;6490
	sub e			;6491
	jp (hl)			;6492
	dec bc			;6493
	jp nc,0e991h		;6494
	ld (bc),a		;6497
	sub e			;6498
	sub d			;6499
	sub e			;649a
	jp (hl)			;649b
	dec bc			;649c
	jp nc,0e991h		;649d
	ld (bc),a		;64a0
	sub e			;64a1
	sub d			;64a2
	sub e			;64a3
	jp (hl)			;64a4
	ld bc,004d6h		;64a5
	ld (bc),a		;64a8
	jp pe,0d20ah		;64a9
	sbc a,d			;64ac
	sbc a,d			;64ad
	sub (hl)		;64ae
	add a,(hl)		;64af
	jp (hl)			;64b0
	dec bc			;64b1
	ld (hl),e		;64b2
	ret c			;64b3
	call c,001e9h		;64b4
	jp pe,l7702h		;64b7
	ei			;64ba
	ld (bc),a		;64bb
	ret c			;64bc
	ret m			;64bd
	ld (bc),a		;64be
	jp (hl)			;64bf
	ld bc,008eah		;64c0
	ex de,hl		;64c3
	add a,e			;64c4
	inc de			;64c5
	pop af			;64c6
	ld d,c			;64c7
	jp p,0f508h		;64c8
	defb 0edh ;next byte illegal after ed	;64cb
	dec b			;64cc
	call nc,0a495h		;64cd
	add a,l			;64d0
	sub h			;64d1
	out (085h),a		;64d2
	sub h			;64d4
	ld (hl),l		;64d5
	add a,h			;64d6
	sub l			;64d7
	and h			;64d8
	add a,l			;64d9
	sub h			;64da
	jp nc,09485h		;64db
	ld (hl),l		;64de
	add a,h			;64df
	sub l			;64e0
	and h			;64e1
	add a,l			;64e2
	sub h			;64e3
	defb 0edh ;next byte illegal after ed	;64e4
	inc bc			;64e5
	pop de			;64e6
	add a,l			;64e7
	sub h			;64e8
	ld (hl),l		;64e9
	add a,h			;64ea
	ei			;64eb
	inc b			;64ec
	cp 001h			;64ed
	ret m			;64ef
	ld (bc),a		;64f0
	pop af			;64f1
	ld d,c			;64f2
	jp p,0ea03h		;64f3
	rrca			;64f6
	jp (hl)			;64f7
	dec bc			;64f8
	in a,(002h)		;64f9
	sub 02fh		;64fb
	ld bc,0ebf5h		;64fd
	ld (hl),e		;6500
	ld h,e			;6501
	push af			;6502
	jp nc,0e921h		;6503
	ld bc,02726h		;6506
	ld h,0e9h		;6509
	dec bc			;650b
	ld hl,001e9h		;650c
	ld h,027h		;650f
	ld h,0e9h		;6511
	dec bc			;6513
	jr nz,l6536h		;6514
	ld hl,002fbh		;6516
	call c,0fed8h		;6519
	ld bc,002f8h		;651c
	pop af			;651f
	ld d,d			;6520
	jp p,0e905h		;6521
	dec bc			;6524
	push af			;6525
	ex de,hl		;6526
	ld (hl),e		;6527
	inc sp			;6528
	jp pe,0db0eh		;6529
	ld (bc),a		;652c
	sub 003h		;652d
	ld (bc),a		;652f
	pop de			;6530
	and e			;6531
	add a,a			;6532
	and e			;6533
	add a,a			;6534
	jp (hl)			;6535
l6536h:
	ld bc,0d086h		;6536
	rlca			;6539
	pop de			;653a
	or (hl)			;653b
	jp (hl)			;653c
	dec bc			;653d
	xor a			;653e
	ret c			;653f
	call pe,002eah		;6540
	and l			;6543
	ei			;6544
	ld (bc),a		;6545
	ex de,hl		;6546
	ld (hl),e		;6547
	inc sp			;6548
	sub 005h		;6549
	ld (bc),a		;654b
	jp pe,09f0eh		;654c
	call pe,0ead8h		;654f
	ld (bc),a		;6552
	sub a			;6553
	jp pe,09401h		;6554
	rst 38h			;6557
	cp 001h			;6558
	ret m			;655a
	ld (bc),a		;655b
	pop af			;655c
	ld d,e			;655d
	jp p,0ea0ah		;655e
	dec b			;6561
	jp (hl)			;6562
	djnz $-19		;6563
	add a,b			;6565
	inc de			;6566
	in a,(001h)		;6567
	out (09fh),a		;6569
	call pe,0eaf3h		;656b
	ld bc,001e9h		;656e
	sub a			;6571
	cp 001h			;6572
	ret m			;6574
	ld (bc),a		;6575
	jp (hl)			;6576
	dec bc			;6577
	pop af			;6578
	ld d,(hl)		;6579
	jp p,0f510h		;657a
	jp pe,0eb0dh		;657d
	inc sp			;6580
	inc hl			;6581
	sub 02fh		;6582
	ld (bc),a		;6584
	out (09ah),a		;6585
	ret c			;6587
	jp (hl)			;6588
	ld bc,0eaech		;6589
	inc b			;658c
	sub h			;658d
	jp pe,0d60dh		;658e
	rra			;6591
	ld (bc),a		;6592
	ex de,hl		;6593
	inc sp			;6594
	inc hl			;6595
	jp nc,0e955h		;6596
	dec bc			;6599
	ld c,d			;659a
	ret c			;659b
	jp (hl)			;659c
	ld bc,0eaech		;659d
	inc b			;65a0
	ld b,h			;65a1
	sub 01fh		;65a2
	ld (bc),a		;65a4
	jp pe,0eb0dh		;65a5
	inc sp			;65a8
	inc hl			;65a9
	out (095h),a		;65aa
	jp (hl)			;65ac
	dec bc			;65ad
	jp nc,0d83ah		;65ae
	jp (hl)			;65b1
	ld bc,0eaech		;65b2
	inc b			;65b5
	inc (hl)		;65b6
	jp pe,0d60dh		;65b7
	rra			;65ba
	ld (bc),a		;65bb
	ex de,hl		;65bc
	inc sp			;65bd
	inc hl			;65be
	out (055h),a		;65bf
	jp (hl)			;65c1
	dec bc			;65c2
	jp nc,0d82ah		;65c3
l65c6h:
	call pe,004eah		;65c6
	jr nz,l65c6h		;65c9
	ld (bc),a		;65cb
	cp 001h			;65cc
	pop af			;65ce
	ld h,e			;65cf
	jp p,0e904h		;65d0
	dec bc			;65d3
	in a,(001h)		;65d4
	push af			;65d6
	ret m			;65d7
	inc e			;65d8
	jp pe,0dd0dh		;65d9
	add a,h			;65dc
	ld d,h			;65dd
	jp nc,03321h		;65de
	ld (hl),e		;65e1
	defb 0ddh,087h,021h ;illegal sequence	;65e2
	xor h			;65e5
	call pe,001eah		;65e6
	and b			;65e9
	ret m			;65ea
	ld (bc),a		;65eb
	ex de,hl		;65ec
	ld (hl),a		;65ed
	inc de			;65ee
	jp (hl)			;65ef
	ld bc,00eeah		;65f0
	sub (hl)		;65f3
	ld b,a			;65f4
	ld d,(hl)		;65f5
	jp (hl)			;65f6
	dec bc			;65f7
	out (098h),a		;65f8
	call pe,002eah		;65fa
	sub b			;65fd
	jp pe,0eb0dh		;65fe
	ld (hl),a		;6601
	inc de			;6602
	sub 01fh		;6603
	ld (bc),a		;6605
	jp nc,0d889h		;6606
	call pe,002eah		;6609
	add a,c			;660c
	ei			;660d
	ld (bc),a		;660e
	cp 001h			;660f
	jp p,0f105h		;6611
	ld h,e			;6614
	in a,(004h)		;6615
	ret m			;6617
	ld (bc),a		;6618
	push af			;6619
	jp pe,0eb0ch		;661a
	ld (hl),e		;661d
	inc hl			;661e
	sub 01fh		;661f
	inc bc			;6621
	jp (hl)			;6622
	dec bc			;6623
	out (09ah),a		;6624
	ret c			;6626
	call pe,003eah		;6627
	sub b			;662a
	sub 007h		;662b
	ld (bc),a		;662d
	jp pe,0eb0ch		;662e
	ld (hl),e		;6631
	inc hl			;6632
	jp (hl)			;6633
	ld bc,09ad2h		;6634
	sbc a,d			;6637
	sub (hl)		;6638
	add a,(hl)		;6639
	jp (hl)			;663a
	dec bc			;663b
	ld (hl),a		;663c
	jp (hl)			;663d
	ld bc,0ecd8h		;663e
	jp pe,l7703h		;6641
	ei			;6644
	ld (bc),a		;6645
	jp pe,0eb09h		;6646
	ld (hl),e		;6649
	inc hl			;664a
	sub 01fh		;664b
	inc bc			;664d
	jp (hl)			;664e
l664fh:
	dec bc			;664f
	ld a,(bc)		;6650
	ret c			;6651
	call pe,003eah		;6652
	nop			;6655
	jp pe,0eb0ah		;6656
	ld (hl),e		;6659
	inc hl			;665a
	sub 01fh		;665b
	inc bc			;665d
	ld a,(de)		;665e
	ret c			;665f
	call pe,003eah		;6660
	djnz l664fh		;6663
	inc c			;6665
	ex de,hl		;6666
	ld (hl),e		;6667
	inc hl			;6668
	sub 01fh		;6669
	inc bc			;666b
	ld a,(bc)		;666c
	ret c			;666d
	call pe,003eah		;666e
	nop			;6671
	jp pe,0eb0eh		;6672
	ld (hl),e		;6675
	inc hl			;6676
	sub 01fh		;6677
	inc b			;6679
	ld a,(de)		;667a
	ret c			;667b
	call pe,004eah		;667c
	djnz $-15		;667f
	ret c			;6681
	call c,001feh		;6682
	ret m			;6685
	ld (bc),a		;6686
	pop af			;6687
	ld d,c			;6688
	jp p,0ea03h		;6689
	ld c,0e9h		;668c
	dec bc			;668e
	in a,(002h)		;668f
	sub 01fh		;6691
	ld bc,0ebf5h		;6693
	ld (hl),e		;6696
	ld h,e			;6697
	push af			;6698
	jp nc,0e991h		;6699
	ld bc,09796h		;669c
	sub (hl)		;669f
	jp (hl)			;66a0
	dec bc			;66a1
	sub c			;66a2
	jp (hl)			;66a3
	ld bc,09796h		;66a4
	sub (hl)		;66a7
	jp (hl)			;66a8
	dec bc			;66a9
	sub b			;66aa
	sub b			;66ab
	sub c			;66ac
	ei			;66ad
	ld (bc),a		;66ae
	call c,0fed8h		;66af
	ld bc,002f8h		;66b2
	pop af			;66b5
	ld d,d			;66b6
	jp p,0e905h		;66b7
	dec bc			;66ba
	push af			;66bb
	ex de,hl		;66bc
	ld (hl),e		;66bd
	inc sp			;66be
	in a,(002h)		;66bf
	jp pe,0d60eh		;66c1
	rlca			;66c4
	ld (bc),a		;66c5
	pop de			;66c6
	ld (hl),e		;66c7
	ld d,a			;66c8
	ld (hl),e		;66c9
	ld d,a			;66ca
	jp (hl)			;66cb
	ld bc,09756h		;66cc
	add a,(hl)		;66cf
	jp (hl)			;66d0
	dec bc			;66d1
	ld a,a			;66d2
	ret c			;66d3
	call pe,002eah		;66d4
	ld (hl),l		;66d7
	ei			;66d8
	ld (bc),a		;66d9
	sub 00fh		;66da
	ld (bc),a		;66dc
	ex de,hl		;66dd
	ld (hl),e		;66de
	inc sp			;66df
	jp pe,05f0dh		;66e0
	ret c			;66e3
l66e4h:
	call pe,002eah		;66e4
	ld d,a			;66e7
	jp pe,05401h		;66e8
	rst 38h			;66eb
	cp 001h			;66ec
	ret m			;66ee
	ld (bc),a		;66ef
	pop af			;66f0
	ld d,e			;66f1
	jp p,0ea0ah		;66f2
	dec b			;66f5
	jp (hl)			;66f6
	djnz l66e4h		;66f7
	add a,b			;66f9
	inc de			;66fa
	in a,(001h)		;66fb
	jp nc,0ec2fh		;66fd
	di			;6700
	jp pe,0e901h		;6701
	ld bc,0fe27h		;6704
	ld bc,002f8h		;6707
	jp (hl)			;670a
	dec bc			;670b
	jp p,0f110h		;670c
	ld d,l			;670f
	push af			;6710
	jp pe,0eb0dh		;6711
	inc sp			;6714
	inc hl			;6715
	sub 03fh		;6716
	ld (bc),a		;6718
	jp nc,0d82ah		;6719
	jp (hl)			;671c
	ld bc,0eaech		;671d
	inc b			;6720
	inc h			;6721
	jp pe,0eb0dh		;6722
	inc sp			;6725
	inc hl			;6726
	sub 01fh		;6727
	ld (bc),a		;6729
	sub l			;672a
	jp (hl)			;672b
	dec bc			;672c
	adc a,d			;672d
	ret c			;672e
	jp (hl)			;672f
	ld bc,0eaech		;6730
	inc b			;6733
	add a,h			;6734
	jp pe,0eb0dh		;6735
	inc sp			;6738
	inc hl			;6739
	sub 01fh		;673a
	ld (bc),a		;673c
	dec h			;673d
	jp (hl)			;673e
	dec bc			;673f
	ld a,d			;6740
	ret c			;6741
	jp (hl)			;6742
	ld bc,0eaech		;6743
	inc b			;6746
	ld (hl),h		;6747
	sub 01fh		;6748
	ld (bc),a		;674a
	jp pe,0eb0dh		;674b
	inc sp			;674e
	inc hl			;674f
	out (095h),a		;6750
	jp (hl)			;6752
	dec bc			;6753
	jp nc,0ec5ah		;6754
	jp pe,0d804h		;6757
	ld d,b			;675a
	ei			;675b
	ld (bc),a		;675c
	cp 001h			;675d
	pop af			;675f
	ld h,e			;6760
	jp p,0f504h		;6761
	jp pe,0e908h		;6764
	dec bc			;6767
	add a,(ix+033h)		;6768
	in a,(001h)		;676b
	xor 002h		;676d
	ret m			;676f
	inc e			;6770
	pop bc			;6771
	jp nc,03321h		;6772
	ld (hl),e		;6775
	xor d			;6776
	call pe,002eah		;6777
	and b			;677a
	ret m			;677b
	ld (bc),a		;677c
	ex de,hl		;677d
	ld (hl),a		;677e
	inc de			;677f
	rst 28h			;6780
	jp pe,0e90eh		;6781
	ld bc,01756h		;6784
	ld h,0e9h		;6787
	dec bc			;6789
	out (059h),a		;678a
	jp pe,0eb0eh		;678c
	ld (hl),a		;678f
	inc de			;6790
	sub 01fh		;6791
	ld (bc),a		;6793
	jp nc,0d849h		;6794
	call pe,002eah		;6797
	ld b,c			;679a
	ei			;679b
	ld (bc),a		;679c
	cp 001h			;679d
	jp p,0f105h		;679f
	ld h,e			;67a2
	in a,(004h)		;67a3
	ret m			;67a5
	ld (bc),a		;67a6
	push af			;67a7
	jp pe,0eb0ch		;67a8
	ld (hl),e		;67ab
	inc hl			;67ac
	sub 01fh		;67ad
	inc bc			;67af
	jp (hl)			;67b0
	dec bc			;67b1
	out (04ah),a		;67b2
	ret c			;67b4
	call pe,003eah		;67b5
	ld b,b			;67b8
	sub 007h		;67b9
	ld (bc),a		;67bb
	jp pe,0eb0ch		;67bc
	ld (hl),e		;67bf
	inc hl			;67c0
	jp (hl)			;67c1
	ld bc,05ad2h		;67c2
	ld e,d			;67c5
	ld d,(hl)		;67c6
	ld b,(hl)		;67c7
	jp (hl)			;67c8
	dec bc			;67c9
	scf			;67ca
	ret c			;67cb
	call pe,001e9h		;67cc
	jp pe,03703h		;67cf
	ei			;67d2
	ld (bc),a		;67d3
	jp pe,0eb09h		;67d4
	ld (hl),e		;67d7
	inc hl			;67d8
	sub 01fh		;67d9
	inc bc			;67db
	jp (hl)			;67dc
	dec bc			;67dd
	out (07ah),a		;67de
	ret c			;67e0
	call pe,003eah		;67e1
	ld (hl),b		;67e4
	jp pe,0eb0ah		;67e5
	ld (hl),e		;67e8
	inc hl			;67e9
	sub 02fh		;67ea
	inc bc			;67ec
	adc a,d			;67ed
	ret c			;67ee
	call pe,003eah		;67ef
	add a,b			;67f2
	jp pe,0eb0ch		;67f3
	ld (hl),e		;67f6
	inc hl			;67f7
	sub 01fh		;67f8
	inc bc			;67fa
	ld a,d			;67fb
	ret c			;67fc
	call pe,003eah		;67fd
	ld (hl),b		;6800
	jp pe,0eb0eh		;6801
	ld (hl),e		;6804
	inc hl			;6805
	sub 01fh		;6806
	inc b			;6808
	adc a,d			;6809
	ret c			;680a
	call pe,004eah		;680b
	add a,b			;680e
	ret c			;680f
	call c,0feefh		;6810
	ld bc,002f8h		;6813
	pop af			;6816
	ld d,c			;6817
	jp p,0ea03h		;6818
	ld c,0e9h		;681b
	dec bc			;681d
	in a,(002h)		;681e
	sub 01fh		;6820
	ld bc,0ebf5h		;6822
	ld (hl),e		;6825
	ld h,e			;6826
	push af			;6827
	out (091h),a		;6828
	jp (hl)			;682a
	ld bc,09796h		;682b
	sub (hl)		;682e
	jp (hl)			;682f
	dec bc			;6830
	sub c			;6831
	jp (hl)			;6832
	ld bc,09796h		;6833
	sub (hl)		;6836
	jp (hl)			;6837
	dec bc			;6838
	sub b			;6839
	sub b			;683a
	sub c			;683b
	ei			;683c
	ld (bc),a		;683d
	call c,0fed8h		;683e
	ld bc,002f8h		;6841
	pop af			;6844
	ld d,e			;6845
	jp p,0e903h		;6846
	dec bc			;6849
	push af			;684a
	sub 007h		;684b
l684dh:
	ld (bc),a		;684d
	ex de,hl		;684e
	ld (hl),e		;684f
	inc sp			;6850
	in a,(002h)		;6851
	jp pe,0d10eh		;6853
	inc sp			;6856
	rla			;6857
	inc sp			;6858
	rla			;6859
	jp (hl)			;685a
	ld bc,05716h		;685b
	ld b,(hl)		;685e
	jp (hl)			;685f
	dec bc			;6860
	ccf			;6861
	call pe,0ead8h		;6862
	ld (bc),a		;6865
	dec (hl)		;6866
	ei			;6867
	ld (bc),a		;6868
	sub 017h		;6869
	ld (bc),a		;686b
	ex de,hl		;686c
	ld (hl),e		;686d
	inc sp			;686e
	jp pe,02f0eh		;686f
	call pe,0ead8h		;6872
	ld (bc),a		;6875
	daa			;6876
	jp pe,02401h		;6877
	rst 38h			;687a
	cp 010h			;687b
	jp (hl)			;687d
	dec bc			;687e
	push af			;687f
	sub c			;6880
	jp (hl)			;6881
	ld bc,09796h		;6882
	sub (hl)		;6885
	jp (hl)			;6886
	dec bc			;6887
	sub c			;6888
	jp (hl)			;6889
	ld bc,09796h		;688a
	sub (hl)		;688d
	jp (hl)			;688e
	dec bc			;688f
	sub b			;6890
	sub b			;6891
	sub c			;6892
	ei			;6893
	ld (bc),a		;6894
	push af			;6895
	jp (hl)			;6896
	dec bc			;6897
	sub c			;6898
	jp (hl)			;6899
	ld bc,09796h		;689a
	sub (hl)		;689d
	jp (hl)			;689e
	dec bc			;689f
	sub c			;68a0
	jp (hl)			;68a1
	ld bc,09796h		;68a2
	sub (hl)		;68a5
	sbc a,d			;68a6
	sbc a,d			;68a7
	sub e			;68a8
	sub d			;68a9
	sub e			;68aa
	sub e			;68ab
	sub d			;68ac
	sub e			;68ad
	ei			;68ae
	ld (bc),a		;68af
	jp m,004feh		;68b0
	ret nc			;68b3
	jp (hl)			;68b4
	rlca			;68b5
	push af			;68b6
	sub b			;68b7
	nop			;68b8
	sub b			;68b9
	nop			;68ba
	jr nc,l684dh		;68bb
	nop			;68bd
	sub b			;68be
	nop			;68bf
	sub b			;68c0
	sub b			;68c1
	nop			;68c2
	cp 010h			;68c3
	sub c			;68c5
	cp 004h			;68c6
	ei			;68c8
	rrca			;68c9
	sub b			;68ca
	nop			;68cb
	sub b			;68cc
	nop			;68cd
	cp 010h			;68ce
	sub b			;68d0
	cp 004h			;68d1
	sub b			;68d3
	nop			;68d4
	cp 010h			;68d5
	sub b			;68d7
	cp 004h			;68d8
	sub b			;68da
	cp 010h			;68db
	sub b			;68dd
	sub b			;68de
	cp 004h			;68df
	sub b			;68e1
	cp 010h			;68e2
	sub b			;68e4
	sub b			;68e5
	defb 0fdh,0b1h,0a8h ;illegal sequence	;68e6
	cp 001h			;68e9
	jp (hl)			;68eb
	rlca			;68ec
	jp 002eeh		;68ed
	ex de,hl		;68f0
	inc b			;68f1
	ld (056f1h),a		;68f2
	jp p,0ea13h		;68f5
	add hl,bc		;68f8
	jp nc,03000h		;68f9
	ld d,b			;68fc
	and l			;68fd
	nop			;68fe
	jr nc,l6951h		;68ff
	and c			;6901
	nop			;6902
	jr nc,l6955h		;6903
	sub l			;6905
	nop			;6906
	jr nc,$+82		;6907
	sub c			;6909
	nop			;690a
	jr nc,l695dh		;690b
	and l			;690d
	jp (hl)			;690e
	ld bc,l7382h		;690f
	jp (hl)			;6912
	rlca			;6913
	sub b			;6914
	and b			;6915
	pop de			;6916
	nop			;6917
	jr nc,$+3		;6918
	jp nc,0a120h		;691a
	nop			;691d
	sub c			;691e
	out (0a0h),a		;691f
	jp nc,0d371h		;6921
	sub b			;6924
	jp nc,0d350h		;6925
	ld (hl),b		;6928
	jp nc,04010h		;6929
	ld h,b			;692c
	or l			;692d
	djnz l6970h		;692e
	ld h,b			;6930
	or c			;6931
	djnz l6974h		;6932
	ld h,b			;6934
	and l			;6935
	djnz l6978h		;6936
	ld h,b			;6938
	and c			;6939
	djnz $+66		;693a
	ld h,b			;693c
	or l			;693d
	jp (hl)			;693e
	ld bc,08392h		;693f
	jp (hl)			;6942
	rlca			;6943
	and b			;6944
	or b			;6945
l6946h:
	pop de			;6946
	djnz $+66		;6947
l6949h:
	pop de			;6949
	ld h,d			;694a
	jp nc,032a1h		;694b
	ld h,c			;694e
	jp (iy)			;694f
l6951h:
	xor b			;6951
	cp 001h			;6952
l6954h:
	ret m			;6954
l6955h:
	ld d,d			;6955
	jp (hl)			;6956
	rlca			;6957
	jp pe,0eb0eh		;6958
	ld (hl),h		;695b
	nop			;695c
l695dh:
	push af			;695d
	call nc,0d300h		;695e
	nop			;6961
	call nc,0d300h		;6962
	nop			;6965
	push de			;6966
	and b			;6967
	call nc,05000h		;6968
	out (000h),a		;696b
	call nc,0d500h		;696d
l6970h:
	jr nc,l6946h		;6970
	jr nc,l6949h		;6972
l6974h:
	and b			;6974
	call nc,070a0h		;6975
l6978h:
	ei			;6978
	inc b			;6979
	push af			;697a
	call nc,0d310h		;697b
	djnz l6954h		;697e
	djnz l6955h		;6980
	djnz $-41		;6982
	or b			;6984
	call nc,06010h		;6985
l6988h:
	out (010h),a		;6988
	call nc,0d510h		;698a
	ld b,b			;698d
	call nc,0d540h		;698e
	or b			;6991
	call nc,080b0h		;6992
	ei			;6995
	inc b			;6996
	defb 0fdh,052h,0a9h ;illegal sequence	;6997
	cp 001h			;699a
	ret m			;699c
	dec c			;699d
	jp (hl)			;699e
	rlca			;699f
	ex de,hl		;69a0
l69a1h:
	add hl,bc		;69a1
	ld b,b			;69a2
	jp pe,0db0fh		;69a3
	inc bc			;69a6
	call nc,000a0h		;69a7
l69aah:
	jr nc,l69ach		;69aa
l69ach:
	ld d,b			;69ac
	nop			;69ad
l69aeh:
	and b			;69ae
	nop			;69af
l69b0h:
	jr nc,l69b2h		;69b0
l69b2h:
	ld d,b			;69b2
	nop			;69b3
	and b			;69b4
l69b5h:
	nop			;69b5
l69b6h:
	out (000h),a		;69b6
	call nc,05000h		;69b8
	nop			;69bb
	ld (hl),b		;69bc
	nop			;69bd
	out (000h),a		;69be
	call nc,05000h		;69c0
	nop			;69c3
	ld (hl),b		;69c4
	nop			;69c5
	out (000h),a		;69c6
	call nc,0d300h		;69c8
	jr nc,l69a1h		;69cb
	nop			;69cd
	sub b			;69ce
	nop			;69cf
l69d0h:
	and b			;69d0
	nop			;69d1
	out (030h),a		;69d2
l69d4h:
	call nc,09000h		;69d4
	nop			;69d7
l69d8h:
	and b			;69d8
	nop			;69d9
	out (030h),a		;69da
	call nc,0d300h		;69dc
	jr nz,l69b5h		;69df
	nop			;69e1
	ld (hl),b		;69e2
	nop			;69e3
	sub b			;69e4
l69e5h:
	nop			;69e5
	out (020h),a		;69e6
l69e8h:
	call nc,sub_7000h	;69e8
	nop			;69eb
	sub b			;69ec
	nop			;69ed
	out (020h),a		;69ee
	call nc,0d400h		;69f0
	or b			;69f3
	djnz l6a36h		;69f4
	djnz $+98		;69f6
	djnz l69aah		;69f8
	djnz l6a3ch		;69fa
	djnz $+98		;69fc
	djnz l69b0h		;69fe
l6a00h:
	djnz $-43		;6a00
	djnz l69d8h		;6a02
	djnz l6a66h		;6a04
	djnz l6988h		;6a06
l6a08h:
	djnz $-43		;6a08
	djnz $-42		;6a0a
	djnz $+98		;6a0c
	djnz $-126		;6a0e
l6a10h:
	djnz l69e5h		;6a10
	djnz l69e8h		;6a12
	djnz $-43		;6a14
	ld b,b			;6a16
	call nc,0a010h		;6a17
	djnz $-78		;6a1a
	djnz $-43		;6a1c
	ld b,b			;6a1e
	call nc,0a010h		;6a1f
	djnz l69d4h		;6a22
	djnz $-43		;6a24
	ld b,b			;6a26
	call nc,0d310h		;6a27
	jr nc,l6a00h		;6a2a
	djnz l69aeh		;6a2c
	djnz l69d0h		;6a2e
	djnz $-43		;6a30
	jr nc,l6a08h		;6a32
	djnz l69b6h		;6a34
l6a36h:
	djnz l69d8h		;6a36
	djnz $-43		;6a38
	jr nc,l6a10h		;6a3a
l6a3ch:
	djnz $-1		;6a3c
	sbc a,d			;6a3e
	xor c			;6a3f
	cp 001h			;6a40
	ret m			;6a42
	ld (bc),a		;6a43
	jp (hl)			;6a44
	rlca			;6a45
	ex de,hl		;6a46
	ld b,h			;6a47
	ld (056f1h),a		;6a48
	jp p,0ea13h		;6a4b
	ld c,0d2h		;6a4e
	nop			;6a50
	jr nc,l6aa3h		;6a51
	and l			;6a53
	ret m			;6a54
	add hl,bc		;6a55
	nop			;6a56
	jr nc,l6aa9h		;6a57
	and c			;6a59
	ret m			;6a5a
	ld (bc),a		;6a5b
	nop			;6a5c
	jr nc,l6aafh		;6a5d
	sub l			;6a5f
	ret m			;6a60
	add hl,bc		;6a61
	nop			;6a62
	jr nc,l6ab5h		;6a63
	sub c			;6a65
l6a66h:
	ret m			;6a66
	ld (bc),a		;6a67
	nop			;6a68
	jr nc,l6abbh		;6a69
	and l			;6a6b
	jp (hl)			;6a6c
	ld bc,l7382h		;6a6d
	jp (hl)			;6a70
	rlca			;6a71
	sub b			;6a72
	and b			;6a73
	pop de			;6a74
	nop			;6a75
	jr nc,$+3		;6a76
	jp nc,0a120h		;6a78
	nop			;6a7b
	sub c			;6a7c
	out (0a0h),a		;6a7d
	jp nc,0d371h		;6a7f
	sub b			;6a82
	jp nc,0d350h		;6a83
	ld (hl),b		;6a86
	jp nc,04010h		;6a87
	ld h,b			;6a8a
	or l			;6a8b
	ret m			;6a8c
	add hl,bc		;6a8d
	djnz l6ad0h		;6a8e
	ld h,b			;6a90
	or c			;6a91
	ret m			;6a92
	ld (bc),a		;6a93
	djnz l6ad6h		;6a94
	ld h,b			;6a96
	and l			;6a97
	ret m			;6a98
	add hl,bc		;6a99
	djnz l6adch		;6a9a
	ld h,b			;6a9c
	and c			;6a9d
	ret m			;6a9e
	ld (bc),a		;6a9f
	djnz l6ae2h		;6aa0
	ld h,b			;6aa2
l6aa3h:
	or l			;6aa3
	jp (hl)			;6aa4
	ld bc,08392h		;6aa5
	jp (hl)			;6aa8
l6aa9h:
	rlca			;6aa9
	and b			;6aaa
	or b			;6aab
	pop de			;6aac
	djnz l6aefh		;6aad
l6aafh:
	pop de			;6aaf
	ld h,d			;6ab0
	jp nc,032a1h		;6ab1
	ld h,c			;6ab4
l6ab5h:
	add a,c			;6ab5
	pop de			;6ab6
	ld sp,040fdh		;6ab7
	xor d			;6aba
l6abbh:
	cp 001h			;6abb
	ret m			;6abd
	ld (bc),a		;6abe
	jp (hl)			;6abf
	rlca			;6ac0
	jp nz,024ebh		;6ac1
	ld (056f1h),a		;6ac4
	jp p,0ea13h		;6ac7
	add hl,bc		;6aca
	jp nc,03000h		;6acb
	ld d,b			;6ace
	and l			;6acf
l6ad0h:
	ret m			;6ad0
	add hl,bc		;6ad1
	nop			;6ad2
	jr nc,l6b25h		;6ad3
	and c			;6ad5
l6ad6h:
	ret m			;6ad6
	ld (bc),a		;6ad7
	nop			;6ad8
	jr nc,l6b2bh		;6ad9
	sub l			;6adb
l6adch:
	ret m			;6adc
	add hl,bc		;6add
	nop			;6ade
	jr nc,l6b31h		;6adf
	sub c			;6ae1
l6ae2h:
	ret m			;6ae2
	ld (bc),a		;6ae3
	nop			;6ae4
	jr nc,$+82		;6ae5
	and l			;6ae7
	jp (hl)			;6ae8
	ld bc,l7382h		;6ae9
	jp (hl)			;6aec
	rlca			;6aed
	sub b			;6aee
l6aefh:
	and b			;6aef
	pop de			;6af0
	nop			;6af1
	jr nc,$+3		;6af2
	jp nc,0a120h		;6af4
	nop			;6af7
	sub c			;6af8
	out (0a0h),a		;6af9
	jp nc,0d371h		;6afb
	sub b			;6afe
	jp nc,0d350h		;6aff
	ld (hl),b		;6b02
	jp nc,04010h		;6b03
	ld h,b			;6b06
	or l			;6b07
	ret m			;6b08
	add hl,bc		;6b09
	djnz l6b4ch		;6b0a
	ld h,b			;6b0c
	or c			;6b0d
	ret m			;6b0e
	ld (bc),a		;6b0f
	djnz $+66		;6b10
	ld h,b			;6b12
	and l			;6b13
	ret m			;6b14
	add hl,bc		;6b15
	djnz $+66		;6b16
	ld h,b			;6b18
	and c			;6b19
	ret m			;6b1a
	ld (bc),a		;6b1b
	djnz $+66		;6b1c
	ld h,b			;6b1e
	or l			;6b1f
	jp (hl)			;6b20
	ld bc,08392h		;6b21
	jp (hl)			;6b24
l6b25h:
	rlca			;6b25
	and b			;6b26
	or b			;6b27
	pop de			;6b28
	djnz l6b6bh		;6b29
l6b2bh:
	pop de			;6b2b
	ld h,d			;6b2c
	jp nc,032a1h		;6b2d
	ld h,c			;6b30
l6b31h:
	pop de			;6b31
	jr nc,l6b31h		;6b32
	cp e			;6b34
	xor d			;6b35
	cp 004h			;6b36
	ret nc			;6b38
	jp (hl)			;6b39
	ld b,0f5h		;6b3a
	sub c			;6b3c
	ld de,09131h		;6b3d
	nop			;6b40
	nop			;6b41
	sub b			;6b42
	nop			;6b43
	ld sp,0fb11h		;6b44
	inc bc			;6b47
	sub c			;6b48
	ld de,09131h		;6b49
l6b4ch:
	nop			;6b4c
	jr nc,l6b7fh		;6b4d
	djnz l6b81h		;6b4f
	jr nc,$+50		;6b51
	jr nc,$-9		;6b53
	sub c			;6b55
	ld de,09131h		;6b56
	nop			;6b59
	nop			;6b5a
	sub b			;6b5b
	sub b			;6b5c
	jr nc,l6b71h		;6b5d
	ei			;6b5f
	inc bc			;6b60
	sub b			;6b61
	sub b			;6b62
	ld de,03030h		;6b63
	sub b			;6b66
	nop			;6b67
	jp (hl)			;6b68
	inc bc			;6b69
	ld b,b			;6b6a
l6b6bh:
	jr nz,$+34		;6b6b
	jr nz,$-21		;6b6d
	ld b,040h		;6b6f
l6b71h:
	ld b,b			;6b71
	ld b,b			;6b72
	ld b,b			;6b73
	ld b,c			;6b74
	cp 004h			;6b75
	ret nc			;6b77
	jp (hl)			;6b78
	ld b,091h		;6b79
	ld de,00031h		;6b7b
	sub b			;6b7e
l6b7fh:
	nop			;6b7f
	nop			;6b80
l6b81h:
	sub c			;6b81
	ld sp,00000h		;6b82
	sub c			;6b85
	ld de,09131h		;6b86
	jr nc,l6b8bh		;6b89
l6b8bh:
	nop			;6b8b
	jr nc,l6b8eh		;6b8c
l6b8eh:
	nop			;6b8e
	jr nc,$+18		;6b8f
	push af			;6b91
	sub c			;6b92
	ld de,00031h		;6b93
	sub b			;6b96
	nop			;6b97
	nop			;6b98
	sub c			;6b99
l6b9ah:
	ld sp,00000h		;6b9a
	ei			;6b9d
	inc bc			;6b9e
	sub c			;6b9f
	jr nc,l6bd2h		;6ba0
	jr nc,$+50		;6ba2
	jr nc,l6bd6h		;6ba4
	jr nz,l6bc8h		;6ba6
	jr nz,l6bcah		;6ba8
	jr nc,l6bdch		;6baa
	jr nc,$+50		;6bac
	cp 004h			;6bae
	ret nc			;6bb0
	jp (hl)			;6bb1
	ld b,091h		;6bb2
	ld de,00031h		;6bb4
	sub b			;6bb7
	nop			;6bb8
	nop			;6bb9
	sub c			;6bba
l6bbbh:
	ld sp,00000h		;6bbb
	sub c			;6bbe
	ld de,09131h		;6bbf
	jr nc,l6bc4h		;6bc2
l6bc4h:
	nop			;6bc4
	jr nc,l6bc7h		;6bc5
l6bc7h:
	nop			;6bc7
l6bc8h:
	jr nc,l6bfah		;6bc8
l6bcah:
	push af			;6bca
	sub c			;6bcb
	ld de,00031h		;6bcc
	sub b			;6bcf
	nop			;6bd0
	nop			;6bd1
l6bd2h:
	sub c			;6bd2
	ld sp,00000h		;6bd3
l6bd6h:
	ei			;6bd6
	inc bc			;6bd7
	jp (hl)			;6bd8
	inc bc			;6bd9
	jr nz,l6bfch		;6bda
l6bdch:
	jp (hl)			;6bdc
	ld b,030h		;6bdd
	jr nc,$+50		;6bdf
	jr nc,l6c13h		;6be1
l6be3h:
	jr nc,l6c15h		;6be3
	jr nz,$+34		;6be5
	djnz l6c19h		;6be7
	nop			;6be9
	jr nc,l6c1ch		;6bea
	jr nc,l6be3h		;6bec
	cp 004h			;6bee
	ret nc			;6bf0
	jp (hl)			;6bf1
	ld b,091h		;6bf2
	ld de,00030h		;6bf4
	sub c			;6bf7
	nop			;6bf8
	nop			;6bf9
l6bfah:
	sub b			;6bfa
	sub b			;6bfb
l6bfch:
	cp 010h			;6bfc
	sub e			;6bfe
	ei			;6bff
	rlca			;6c00
	cp 004h			;6c01
	sub b			;6c03
	jr nc,$+50		;6c04
	jr nc,$+50		;6c06
	jr nc,l6b9ah		;6c08
	djnz $-110		;6c0a
	jr nc,$+50		;6c0c
l6c0eh:
	jr nc,l6c0eh		;6c0e
	djnz $-107		;6c10
	push af			;6c12
l6c13h:
	cp 004h			;6c13
l6c15h:
	ret nc			;6c15
	jp (hl)			;6c16
	ld b,091h		;6c17
l6c19h:
	ld de,09131h		;6c19
l6c1ch:
	nop			;6c1c
	nop			;6c1d
	sub b			;6c1e
	sub b			;6c1f
	cp 010h			;6c20
	sub e			;6c22
	cp 004h			;6c23
	ei			;6c25
	rlca			;6c26
	sub b			;6c27
	sub b			;6c28
	djnz l6bbbh		;6c29
	djnz l6c4dh		;6c2b
	jr nc,$+50		;6c2d
	jr nc,$-21		;6c2f
l6c31h:
	inc bc			;6c31
	jr nz,l6c54h		;6c32
	jp (hl)			;6c34
	ld b,030h		;6c35
l6c37h:
	jr nc,l6c37h		;6c37
	djnz $-107		;6c39
	ld (iy-055h),0feh	;6c3b
	ld bc,006e9h		;6c3f
	jp p,0f122h		;6c42
	ld d,e			;6c45
	call pe,001eeh		;6c46
	pop bc			;6c49
	jp pe,0d006h		;6c4a
l6c4dh:
	dec hl			;6c4d
	jp (hl)			;6c4e
	inc bc			;6c4f
	pop de			;6c50
	ld (hl),b		;6c51
	add a,b			;6c52
	sub b			;6c53
l6c54h:
	and b			;6c54
	or b			;6c55
	ret nc			;6c56
	nop			;6c57
	djnz l6c7ah		;6c58
	jp (hl)			;6c5a
	ld b,01bh		;6c5b
	ret nc			;6c5d
	jr nz,l6c31h		;6c5e
	or b			;6c60
	ret nc			;6c61
	dec e			;6c62
	jp (hl)			;6c63
	ld b,0ech		;6c64
	pop de			;6c66
	jp pe,0d204h		;6c67
	ld b,e			;6c6a
	jp pe,04105h		;6c6b
	jp pe,04106h		;6c6e
	jp pe,04107h		;6c71
	jp pe,04106h		;6c74
	jp pe,04105h		;6c77
l6c7ah:
	jp pe,0e907h		;6c7a
	inc bc			;6c7d
	ret nz			;6c7e
	jp nc,03040h		;6c7f
	jr nz,l6c94h		;6c82
	nop			;6c84
	out (0b0h),a		;6c85
	and b			;6c87
	cp 001h			;6c88
	jp (hl)			;6c8a
	ld b,0f2h		;6c8b
	djnz $-13		;6c8d
	ld d,l			;6c8f
	call pe,003eeh		;6c90
	pop bc			;6c93
l6c94h:
	jp pe,0d107h		;6c94
	dec hl			;6c97
	jp (hl)			;6c98
	inc bc			;6c99
	jp nc,08070h		;6c9a
	sub b			;6c9d
	and b			;6c9e
	or b			;6c9f
	pop de			;6ca0
	nop			;6ca1
	djnz l6cc4h		;6ca2
	jp (hl)			;6ca4
	ld b,01bh		;6ca5
	jp (hl)			;6ca7
	inc b			;6ca8
	jp nc,04030h		;6ca9
	ld d,b			;6cac
	ld h,b			;6cad
	ld (hl),b		;6cae
	add a,b			;6caf
	jp (hl)			;6cb0
	ld b,09fh		;6cb1
	sbc a,c			;6cb3
	jp (hl)			;6cb4
	inc b			;6cb5
	jp nc,03040h		;6cb6
	jr nz,l6ccbh		;6cb9
	out (0b0h),a		;6cbb
	and b			;6cbd
	cp 001h			;6cbe
	jp (hl)			;6cc0
	ld b,0f2h		;6cc1
	inc d			;6cc3
l6cc4h:
	pop af			;6cc4
	ld d,a			;6cc5
	ex de,hl		;6cc6
	add a,c			;6cc7
	ld hl,007eah		;6cc8
l6ccbh:
	defb 0edh ;next byte illegal after ed	;6ccb
	inc bc			;6ccc
	jp nc,0d31fh		;6ccd
l6cd0h:
	sbc a,a			;6cd0
	out (0bfh),a		;6cd1
	jp nc,0d32bh		;6cd3
l6cd6h:
	or e			;6cd6
	jp nc,0131fh		;6cd7
l6cdah:
	out (093h),a		;6cda
	ld b,e			;6cdc
	inc hl			;6cdd
	cp 001h			;6cde
	jp (hl)			;6ce0
	ld b,0f2h		;6ce1
	jr nz,l6cd6h		;6ce3
	ld d,(hl)		;6ce5
	ex de,hl		;6ce6
	add a,c			;6ce7
	ld hl,007eah		;6ce8
	defb 0edh ;next byte illegal after ed	;6ceb
	inc bc			;6cec
	jp nc,0d31fh		;6ced
	sbc a,a			;6cf0
	jp nc,02f4fh		;6cf1
	jp pe,0d009h		;6cf4
	ld b,b			;6cf7
	djnz l6ccbh		;6cf8
	sub b			;6cfa
	ld b,b			;6cfb
	djnz l6cd0h		;6cfc
	sub b			;6cfe
	ld b,b			;6cff
	djnz $-43		;6d00
	sub b			;6d02
	ld b,b			;6d03
	djnz l6cdah		;6d04
	sub b			;6d06
	ld b,b			;6d07
	djnz $-41		;6d08
	sub b			;6d0a
	ld b,b			;6d0b
	jp pe,0e906h		;6d0c
	inc b			;6d0f
	pop de			;6d10
	sub b			;6d11
	add a,b			;6d12
	ld (hl),b		;6d13
	ld h,b			;6d14
	ld d,b			;6d15
	ld b,b			;6d16
	jr nc,l6d39h		;6d17
	djnz l6d1bh		;6d19
l6d1bh:
	jp pe,0d207h		;6d1b
	or b			;6d1e
	and b			;6d1f
	sub b			;6d20
	add a,b			;6d21
	ld (hl),b		;6d22
	ld h,b			;6d23
	ld d,b			;6d24
	ld b,b			;6d25
	jr nc,l6d48h		;6d26
l6d28h:
	djnz l6d2ah		;6d28
l6d2ah:
	out (0b1h),a		;6d2a
	cp 001h			;6d2c
	jp (hl)			;6d2e
	ld b,0efh		;6d2f
	ex de,hl		;6d31
	add a,e			;6d32
	ld d,d			;6d33
	jp pe,0ed08h		;6d34
	ld b,0f5h		;6d37
l6d39h:
	pop de			;6d39
	sub b			;6d3a
	ld d,b			;6d3b
	nop			;6d3c
	sub b			;6d3d
	ld d,b			;6d3e
	nop			;6d3f
	sub b			;6d40
	ld d,b			;6d41
	ei			;6d42
	inc b			;6d43
	jp (hl)			;6d44
	ld b,0d3h		;6d45
	or b			;6d47
l6d48h:
	jp nc,04020h		;6d48
	ld (hl),b		;6d4b
	jr nz,l6d8eh		;6d4c
	ld (hl),b		;6d4e
	or b			;6d4f
	ld b,b			;6d50
	ld (hl),b		;6d51
	or b			;6d52
	pop de			;6d53
	jr nz,l6d28h		;6d54
	ld (hl),b		;6d56
	or b			;6d57
	pop de			;6d58
	jr nz,l6d9bh		;6d59
	jp nc,0d1b0h		;6d5b
	jr nz,l6da0h		;6d5e
	ld (hl),b		;6d60
	jr nz,l6da3h		;6d61
	ld (hl),b		;6d63
	or b			;6d64
	ld b,b			;6d65
	ld (hl),b		;6d66
	or b			;6d67
	ret nc			;6d68
	jr nz,$+66		;6d69
	ld (hl),b		;6d6b
	or b			;6d6c
	ret nc			;6d6d
	ld (hl),b		;6d6e
	jp (hl)			;6d6f
	ld b,0f5h		;6d70
	jp nc,09050h		;6d72
	pop de			;6d75
	nop			;6d76
	ld b,b			;6d77
	ei			;6d78
	inc b			;6d79
	push af			;6d7a
	jp nc,09060h		;6d7b
	pop de			;6d7e
	nop			;6d7f
	ld b,b			;6d80
	ei			;6d81
	inc b			;6d82
	push af			;6d83
	jp nc,0b070h		;6d84
	pop de			;6d87
	jr nz,l6ddah		;6d88
	ei			;6d8a
	inc b			;6d8b
	jp (hl)			;6d8c
	inc bc			;6d8d
l6d8eh:
	jp pe,0d109h		;6d8e
	or b			;6d91
	and b			;6d92
	sub b			;6d93
	add a,b			;6d94
	ld (hl),b		;6d95
	ld h,b			;6d96
	ld d,b			;6d97
	ld b,b			;6d98
	jr nc,$+34		;6d99
l6d9bh:
	djnz l6d9dh		;6d9b
l6d9dh:
	jp nc,0a0b0h		;6d9d
l6da0h:
	sub b			;6da0
	add a,b			;6da1
	ld (hl),b		;6da2
l6da3h:
	ld h,b			;6da3
	ld d,b			;6da4
	ld b,b			;6da5
	jr nc,l6dc8h		;6da6
	djnz l6daah		;6da8
l6daah:
	out (0b0h),a		;6daa
	and b			;6dac
	sub b			;6dad
l6daeh:
	add a,b			;6dae
	ld (hl),b		;6daf
	ld h,b			;6db0
	ld d,b			;6db1
	ld b,b			;6db2
	cp 001h			;6db3
	jp (hl)			;6db5
	ld b,0ebh		;6db6
	add a,e			;6db8
	ld d,d			;6db9
	jp pe,0ed08h		;6dba
	ld b,0d1h		;6dbd
	push af			;6dbf
	sub b			;6dc0
	ld d,b			;6dc1
	nop			;6dc2
	sub b			;6dc3
	ld d,b			;6dc4
	nop			;6dc5
	sub b			;6dc6
	ld d,b			;6dc7
l6dc8h:
	ei			;6dc8
	inc b			;6dc9
	jp (hl)			;6dca
	ld b,0d3h		;6dcb
	or b			;6dcd
	jp nc,04020h		;6dce
	ld (hl),b		;6dd1
	jr nz,$+66		;6dd2
	ld (hl),b		;6dd4
	or b			;6dd5
	ld b,b			;6dd6
	ld (hl),b		;6dd7
	or b			;6dd8
	pop de			;6dd9
l6ddah:
	jr nz,l6daeh		;6dda
	ld (hl),b		;6ddc
	or b			;6ddd
	pop de			;6dde
	jr nz,l6e21h		;6ddf
	jp nc,0d1b0h		;6de1
	jr nz,l6e26h		;6de4
	ld (hl),b		;6de6
	jr nz,l6e29h		;6de7
	ld (hl),b		;6de9
	or b			;6dea
	ld b,b			;6deb
	ld (hl),b		;6dec
	or b			;6ded
	ret nc			;6dee
	jr nz,l6e31h		;6def
l6df1h:
	ld (hl),b		;6df1
	or b			;6df2
	ret nc			;6df3
	ld (hl),b		;6df4
	jp (hl)			;6df5
	ld b,0f5h		;6df6
	jp nc,05020h		;6df8
	sub b			;6dfb
	pop de			;6dfc
	nop			;6dfd
	ei			;6dfe
	inc b			;6dff
	push af			;6e00
	jp nc,06030h		;6e01
	sub b			;6e04
	pop de			;6e05
	nop			;6e06
	ei			;6e07
	inc b			;6e08
	push af			;6e09
	jp nc,08040h		;6e0a
	or b			;6e0d
	pop de			;6e0e
	jr nz,$-3		;6e0f
	inc b			;6e11
	jp (hl)			;6e12
	ld b,0d4h		;6e13
	or b			;6e15
	out (020h),a		;6e16
	ld b,b			;6e18
	add a,b			;6e19
l6e1ah:
	or b			;6e1a
	jp nc,04020h		;6e1b
	add a,b			;6e1e
	or b			;6e1f
l6e20h:
	pop de			;6e20
l6e21h:
	jr nz,l6e63h		;6e21
	add a,b			;6e23
	or b			;6e24
	ret nc			;6e25
l6e26h:
	jr nz,l6e68h		;6e26
	add a,b			;6e28
l6e29h:
	defb 0fdh,03eh,0ach ;illegal sequence	;6e29
	cp 001h			;6e2c
	ret m			;6e2e
	jr z,l6e1ah		;6e2f
l6e31h:
	ld b,0ebh		;6e31
	add hl,bc		;6e33
l6e34h:
	jr nc,l6e20h		;6e34
	add hl,bc		;6e36
	in a,(003h)		;6e37
	push af			;6e39
	call nc,02040h		;6e3a
	ld (hl),b		;6e3d
	jr nz,$-110		;6e3e
	ld b,b			;6e40
	ld b,b			;6e41
	ld (hl),b		;6e42
	ei			;6e43
	inc b			;6e44
	ex de,hl		;6e45
	add hl,bc		;6e46
	ret p			;6e47
	call c,0d5f5h		;6e48
	sub b			;6e4b
	ld b,b			;6e4c
	ld (hl),b		;6e4d
	sub b			;6e4e
	ld b,b			;6e4f
	ld (hl),b		;6e50
	sub b			;6e51
	sub b			;6e52
	ei			;6e53
	inc b			;6e54
	ex de,hl		;6e55
	add hl,bc		;6e56
	jr nc,l6e34h		;6e57
	inc bc			;6e59
	push af			;6e5a
	call nc,02040h		;6e5b
	ld (hl),b		;6e5e
	jr nz,l6df1h		;6e5f
	ld b,b			;6e61
	ld b,b			;6e62
l6e63h:
	ld b,b			;6e63
	ei			;6e64
	inc b			;6e65
	ex de,hl		;6e66
	add hl,bc		;6e67
l6e68h:
	ret p			;6e68
	call c,0d5f5h		;6e69
	sub b			;6e6c
l6e6dh:
	ld b,b			;6e6d
	ld (hl),b		;6e6e
	sub b			;6e6f
	ld b,b			;6e70
	ld (hl),b		;6e71
	sub b			;6e72
	sub b			;6e73
	ei			;6e74
	inc bc			;6e75
	push de			;6e76
l6e77h:
	sub b			;6e77
	call nc,04010h		;6e78
	ld (hl),b		;6e7b
	call nc,04010h		;6e7c
	ld (hl),b		;6e7f
	sub b			;6e80
	cp 001h			;6e81
	jp (hl)			;6e83
	ld b,0ebh		;6e84
l6e86h:
	add hl,de		;6e86
	ld d,d			;6e87
	jp pe,0f50ah		;6e88
	ret m			;6e8b
	jr z,l6e63h		;6e8c
	sub b			;6e8e
	ret m			;6e8f
l6e90h:
	ld h,0d4h		;6e90
	sub b			;6e92
	out (090h),a		;6e93
	ret m			;6e95
	jr z,l6e6dh		;6e96
	sub b			;6e98
l6e99h:
	ret m			;6e99
	ld h,0d4h		;6e9a
	sub b			;6e9c
	out (090h),a		;6e9d
	ret m			;6e9f
	jr z,l6e77h		;6ea0
	sub b			;6ea2
l6ea3h:
	sub b			;6ea3
	ei			;6ea4
	inc bc			;6ea5
	push de			;6ea6
	sub b			;6ea7
	ret m			;6ea8
	ld h,0d4h		;6ea9
	sub b			;6eab
	out (090h),a		;6eac
	ret m			;6eae
	jr z,l6e86h		;6eaf
	sub b			;6eb1
	ret m			;6eb2
	ld h,0d4h		;6eb3
	sub b			;6eb5
	out (090h),a		;6eb6
	ret m			;6eb8
	jr z,l6e90h		;6eb9
	ld d,b			;6ebb
	ret m			;6ebc
l6ebdh:
	ld h,0d4h		;6ebd
	ld d,b			;6ebf
	push af			;6ec0
	ret m			;6ec1
	jr z,l6e99h		;6ec2
	ld (hl),b		;6ec4
	ret m			;6ec5
	ld h,0d4h		;6ec6
	ld (hl),b		;6ec8
	out (070h),a		;6ec9
	ret m			;6ecb
	jr z,l6ea3h		;6ecc
	ld (hl),b		;6ece
	ret m			;6ecf
	ld h,0d4h		;6ed0
	ld (hl),b		;6ed2
	out (070h),a		;6ed3
	ret m			;6ed5
	jr z,$-41		;6ed6
l6ed8h:
	ld (hl),b		;6ed8
	ld (hl),b		;6ed9
	ei			;6eda
	inc b			;6edb
	push af			;6edc
	push de			;6edd
	sub b			;6ede
	ret m			;6edf
	ld h,0d4h		;6ee0
l6ee2h:
	sub b			;6ee2
	out (090h),a		;6ee3
	ret m			;6ee5
	jr z,l6ebdh		;6ee6
	sub b			;6ee8
	ret m			;6ee9
	ld h,0d4h		;6eea
l6eech:
	sub b			;6eec
	out (090h),a		;6eed
	ret m			;6eef
	jr z,$-41		;6ef0
	sub b			;6ef2
	sub b			;6ef3
l6ef4h:
	ei			;6ef4
	inc b			;6ef5
	cp 001h			;6ef6
	jp (hl)			;6ef8
	ld b,0ebh		;6ef9
	add hl,bc		;6efb
	ld b,d			;6efc
	jp pe,0f50ah		;6efd
l6f00h:
	ret m			;6f00
	jr z,l6ed8h		;6f01
	sub b			;6f03
	ret m			;6f04
	ld h,0d4h		;6f05
	sub b			;6f07
	out (090h),a		;6f08
	ret m			;6f0a
	jr z,l6ee2h		;6f0b
	sub b			;6f0d
	ret m			;6f0e
	ld h,0d4h		;6f0f
	sub b			;6f11
	out (090h),a		;6f12
	ret m			;6f14
	jr z,l6eech		;6f15
	sub b			;6f17
	sub b			;6f18
	ei			;6f19
	ld a,(bc)		;6f1a
	push af			;6f1b
	ret m			;6f1c
	jr z,l6ef4h		;6f1d
	sub b			;6f1f
	ret m			;6f20
	ld h,0d4h		;6f21
	sub b			;6f23
	ei			;6f24
	inc b			;6f25
	jp pe,0f80bh		;6f26
	jr z,l6f00h		;6f29
	ld (hl),b		;6f2b
	call nc,0c070h		;6f2c
	ld (hl),b		;6f2f
	ret nz			;6f30
	ld (hl),b		;6f31
	ret nz			;6f32
	ld (hl),b		;6f33
	cp 001h			;6f34
	ret m			;6f36
	jr z,$-21		;6f37
	ld b,0ebh		;6f39
	add hl,bc		;6f3b
	ld d,d			;6f3c
	jp pe,0f50ah		;6f3d
	push de			;6f40
	ld d,b			;6f41
	ld d,b			;6f42
	call nc,05050h		;6f43
	ei			;6f46
	ex af,af'		;6f47
	push af			;6f48
	push de			;6f49
	ld b,b			;6f4a
	ld b,b			;6f4b
	call nc,04040h		;6f4c
	ei			;6f4f
	ex af,af'		;6f50
	push af			;6f51
	push de			;6f52
	ld d,b			;6f53
	ld d,b			;6f54
	call nc,05050h		;6f55
	ei			;6f58
	inc b			;6f59
	push af			;6f5a
	push de			;6f5b
	ld h,b			;6f5c
	ld h,b			;6f5d
	call nc,sub_6060h	;6f5e
	ei			;6f61
	inc b			;6f62
	push af			;6f63
	push de			;6f64
	ld (hl),b		;6f65
	ld (hl),b		;6f66
	call nc,sub_7070h	;6f67
	ei			;6f6a
	inc b			;6f6b
	ex de,hl		;6f6c
	add hl,bc		;6f6d
	ld (00beah),a		;6f6e
	push de			;6f71
	add a,c			;6f72
	call nc,0d5b0h		;6f73
	add a,c			;6f76
	call nc,0d580h		;6f77
	add a,c			;6f7a
	call nc,0d580h		;6f7b
	add a,c			;6f7e
	call nc,0d580h		;6f7f
	add a,b			;6f82
	or b			;6f83
	call nc,04020h		;6f84
	cp 001h			;6f87
	ret m			;6f89
	jr z,$-21		;6f8a
	ld b,0ebh		;6f8c
	add hl,bc		;6f8e
	ld d,d			;6f8f
	jp pe,0f50ah		;6f90
	push de			;6f93
	ld d,b			;6f94
	ld d,b			;6f95
	call nc,05050h		;6f96
	ei			;6f99
	ex af,af'		;6f9a
	push af			;6f9b
	push de			;6f9c
	ld b,b			;6f9d
	ld b,b			;6f9e
	call nc,04040h		;6f9f
	ei			;6fa2
	ex af,af'		;6fa3
	push af			;6fa4
	push de			;6fa5
	jr nz,l6fc8h		;6fa6
	call nc,02020h		;6fa8
	ei			;6fab
	inc b			;6fac
	push af			;6fad
	push de			;6fae
	jr nc,$+50		;6faf
	call nc,03030h		;6fb1
	ei			;6fb4
	inc b			;6fb5
	push af			;6fb6
	push de			;6fb7
	ld b,b			;6fb8
	ld b,b			;6fb9
	call nc,04040h		;6fba
	ei			;6fbd
	inc b			;6fbe
	jp pe,0eb0bh		;6fbf
	add hl,bc		;6fc2
	ld (0b0d5h),a		;6fc3
	or b			;6fc6
	ret nz			;6fc7
l6fc8h:
	or b			;6fc8
	ret nz			;6fc9
	or b			;6fca
	ret nz			;6fcb
	or b			;6fcc
	push de			;6fcd
	ld b,b			;6fce
l6fcfh:
	add a,b			;6fcf
	or b			;6fd0
	call nc,04020h		;6fd1
	add a,b			;6fd4
	or b			;6fd5
	out (020h),a		;6fd6
	defb 0fdh,02ch ;inc iyl	;6fd8
	xor (hl)		;6fda
	cp 001h			;6fdb
	ret m			;6fdd
	ld a,(bc)		;6fde
	jp (hl)			;6fdf
	ld b,0ebh		;6fe0
	add hl,bc		;6fe2
	jr nz,l6fcfh		;6fe3
	ex af,af'		;6fe5
	push af			;6fe6
	jp nc,l7040h		;6fe7
	or b			;6fea
	pop de			;6feb
	jr nz,$-44		;6fec
	ld (hl),b		;6fee
	or b			;6fef
	ei			;6ff0
	dec b			;6ff1
	ld b,b			;6ff2
	ld (hl),b		;6ff3
l6ff4h:
	push af			;6ff4
	sub b			;6ff5
	ld b,b			;6ff6
	jr nz,l6ff4h		;6ff7
	dec b			;6ff9
l6ffah:
	push af			;6ffa
	sub b			;6ffb
	ld b,b			;6ffc
	djnz l6ffah		;6ffd
	inc b			;6fff
sub_7000h:
	out (090h),a		;7000
	jp nc,0b090h		;7002
	jr nz,l7077h		;7005
	push af			;7007
	jp nc,l7040h		;7008
	or b			;700b
	pop de			;700c
	jr nz,$-44		;700d
	ld (hl),b		;700f
	or b			;7010
	ei			;7011
	dec b			;7012
	ld b,b			;7013
	ld (hl),b		;7014
l7015h:
	jp nc,090f5h		;7015
	ld b,b			;7018
	jr nz,$-3		;7019
	dec b			;701b
l701ch:
	push af			;701c
	sub b			;701d
	ld b,b			;701e
	djnz l701ch		;701f
	inc bc			;7021
	cp 004h			;7022
	ret m			;7024
	dec b			;7025
	ret nc			;7026
	jp (hl)			;7027
	inc bc			;7028
	ld d,b			;7029
	ld d,b			;702a
	ld d,b			;702b
	ld d,b			;702c
	jp (hl)			;702d
	ld b,060h		;702e
	ld h,b			;7030
	ld h,b			;7031
	ld h,b			;7032
	add a,c			;7033
l7034h:
	cp 001h			;7034
	ret m			;7036
	ld a,(bc)		;7037
	jp (hl)			;7038
	ld b,0ebh		;7039
	ld a,b			;703b
	ld e,a			;703c
	jp pe,0f508h		;703d
l7040h:
	pop de			;7040
	djnz l7015h		;7041
	sub b			;7043
	ld b,b			;7044
	ei			;7045
	ld a,(bc)		;7046
	pop de			;7047
	djnz l701ch		;7048
	sub b			;704a
	push af			;704b
l704ch:
	jp nc,l70b0h		;704c
	jr nz,l704ch		;704f
	dec b			;7051
	jp nc,0f5b0h		;7052
	jp nc,0b070h		;7055
	pop de			;7058
	jr nz,$-3		;7059
	dec b			;705b
	jp nc,0f570h		;705c
	pop de			;705f
l7060h:
	djnz l7034h		;7060
	sub b			;7062
	ld b,b			;7063
	ei			;7064
	dec b			;7065
	pop de			;7066
	djnz $-9		;7067
l7069h:
	pop de			;7069
	ld b,b			;706a
	djnz $-44		;706b
	sub b			;706d
	ei			;706e
	ld (bc),a		;706f
sub_7070h:
	pop de			;7070
	ld b,b			;7071
	djnz l7069h		;7072
l7074h:
	pop de			;7074
	ld (hl),b		;7075
	ld b,b			;7076
l7077h:
	djnz l7074h		;7077
	ld (bc),a		;7079
	ld (hl),b		;707a
	ld b,b			;707b
l707ch:
	cp 001h			;707c
	ret m			;707e
	ld a,(bc)		;707f
	jp (hl)			;7080
l7081h:
	ld b,0ebh		;7081
	ld a,b			;7083
	ld e,a			;7084
	jp pe,0f508h		;7085
l7088h:
	pop de			;7088
	sub b			;7089
	ld b,b			;708a
l708bh:
	djnz l7088h		;708b
	ld a,(bc)		;708d
	pop de			;708e
	sub b			;708f
l7090h:
	ld b,b			;7090
	push af			;7091
	pop de			;7092
	ld (hl),b		;7093
	jr nz,$-44		;7094
	or b			;7096
	ei			;7097
	dec b			;7098
	pop de			;7099
	ld (hl),b		;709a
	push af			;709b
l709ch:
	pop de			;709c
	or b			;709d
	ld (hl),b		;709e
	jr nz,l709ch		;709f
	dec b			;70a1
	pop de			;70a2
	or b			;70a3
	ret m			;70a4
	dec e			;70a5
	jp pe,0eb0ch		;70a6
	add hl,bc		;70a9
	jr nz,l707ch		;70aa
	sub b			;70ac
	ld b,b			;70ad
	djnz l7081h		;70ae
l70b0h:
	sub b			;70b0
	ld b,b			;70b1
	djnz $-44		;70b2
	sub b			;70b4
	ld b,b			;70b5
	djnz l708bh		;70b6
	sub b			;70b8
	ld b,b			;70b9
	djnz l7090h		;70ba
	sub b			;70bc
l70bdh:
	ld b,b			;70bd
	djnz $-41		;70be
l70c0h:
	sub b			;70c0
	ex de,hl		;70c1
	add hl,bc		;70c2
	jr nc,l70bdh		;70c3
	ld a,(bc)		;70c5
	call nc,0b090h		;70c6
	out (010h),a		;70c9
	ld b,b			;70cb
	sub b			;70cc
	or b			;70cd
	jp nc,04010h		;70ce
sub_70d1h:
	ld (hl),b		;70d1
sub_70d2h:
	or b			;70d2
	pop de			;70d3
	djnz $+66		;70d4
	ld (hl),b		;70d6
	or b			;70d7
	ret nc			;70d8
	djnz $+66		;70d9
	cp 001h			;70db
	ret m			;70dd
	dec d			;70de
	jp (hl)			;70df
	ld b,0efh		;70e0
	jp p,0f110h		;70e2
	ld d,l			;70e5
	add a,(ix+054h)		;70e6
	in a,(001h)		;70e9
	jp pe,0ed09h		;70eb
	ld b,0d3h		;70ee
	sub l			;70f0
	jp nc,02b49h		;70f1
	inc bc			;70f4
	cpl			;70f5
	ret m			;70f6
	dec e			;70f7
	jp pe,0dd0ah		;70f8
	ld b,054h		;70fb
	pop de			;70fd
	ld a,a			;70fe
	ret m			;70ff
	dec d			;7100
	jp pe,0dd0ah		;7101
	add a,(hl)		;7104
	ld d,h			;7105
	jp nc,0539bh		;7106
	ld l,e			;7109
l710ah:
	pop de			;710a
	inc hl			;710b
	jp nc,0f8bfh		;710c
	ld (bc),a		;710f
	ex de,hl		;7110
	ld b,d			;7111
	ld b,b			;7112
	in a,(002h)		;7113
	jp pe,0d30ah		;7115
	add a,d			;7118
	or d			;7119
	jp nc,05222h		;711a
	jr nz,l716fh		;711d
	add a,b			;711f
	or b			;7120
l7121h:
	call c,001feh		;7121
	ret m			;7124
	dec d			;7125
	jp (hl)			;7126
	ld b,0efh		;7127
	jp p,0f110h		;7129
	ld d,l			;712c
	add a,(ix+054h)		;712d
	in a,(001h)		;7130
	jp pe,0ed09h		;7132
	ld b,0d3h		;7135
	sub l			;7137
	jp nc,02b49h		;7138
	inc bc			;713b
	jp nc,0f82fh		;713c
	dec e			;713f
	jp pe,0dd0ah		;7140
	ld b,054h		;7143
	pop de			;7145
l7146h:
	ld a,a			;7146
	ret m			;7147
	dec d			;7148
	jp pe,0dd0ah		;7149
	add a,(hl)		;714c
	ld d,h			;714d
	jp nc,05995h		;714e
	ld h,l			;7151
	sbc a,c			;7152
	jp nc,0f84fh		;7153
	ld (bc),a		;7156
	jp pe,0eb0ah		;7157
	add hl,bc		;715a
	jr nz,l7146h		;715b
	ld b,0d4h		;715d
	add a,b			;715f
	or b			;7160
	out (020h),a		;7161
	ld b,b			;7163
	add a,b			;7164
	or b			;7165
	jp nc,04020h		;7166
	add a,b			;7169
	or b			;716a
	pop de			;716b
	jr nz,l71aeh		;716c
	add a,b			;716e
l716fh:
	or b			;716f
	ret nc			;7170
	jr nz,l71b3h		;7171
	defb 0fdh,0dbh,0afh ;illegal sequence	;7173
	cp 001h			;7176
	ret m			;7178
	ld (bc),a		;7179
	jp (hl)			;717a
	ld b,0f2h		;717b
	ld (054f1h),hl		;717d
	ex de,hl		;7180
	add a,a			;7181
	ld h,b			;7182
	jp pe,0ed0ah		;7183
	ex af,af'		;7186
l7187h:
	pop de			;7187
	sub 001h		;7188
	rlca			;718a
l718bh:
	sbc a,e			;718b
	ret c			;718c
	jp (hl)			;718d
	inc bc			;718e
	call pe,007eah		;718f
	jp nc,09080h		;7192
	and b			;7195
	or b			;7196
	pop de			;7197
	nop			;7198
	djnz $+34		;7199
	jr nc,l7187h		;719b
	ex af,af'		;719d
	ex de,hl		;719e
	add a,a			;719f
	jr nc,l718bh		;71a0
	ld b,04bh		;71a2
	jp pe,0f108h		;71a4
	ld d,c			;71a7
	ret nc			;71a8
	or b			;71a9
	ld (hl),b		;71aa
	ex de,hl		;71ab
	add a,a			;71ac
	ld b,b			;71ad
l71aeh:
	sbc a,a			;71ae
	xor 001h		;71af
	pop af			;71b1
	ld d,e			;71b2
l71b3h:
	jp pe,0ec06h		;71b3
	ret m			;71b6
	dec c			;71b7
	jp (hl)			;71b8
	inc bc			;71b9
	jp nc,l6050h		;71ba
	ld (hl),b		;71bd
	add a,b			;71be
	jp (hl)			;71bf
	ld b,0d2h		;71c0
	jp pe,09105h		;71c2
	jp pe,09106h		;71c5
	jp pe,09107h		;71c8
	jp pe,09108h		;71cb
	jp pe,09107h		;71ce
	jp pe,09106h		;71d1
	jp pe,09105h		;71d4
	jp pe,09104h		;71d7
	ret m			;71da
	ld (bc),a		;71db
	ex de,hl		;71dc
	add a,a			;71dd
	ld (hl),b		;71de
	in a,(002h)		;71df
	jp pe,0ed09h		;71e1
	inc bc			;71e4
	jp nc,09f9fh		;71e5
	ld h,a			;71e8
	daa			;71e9
l71eah:
	ex de,hl		;71ea
	add a,e			;71eb
	ld d,b			;71ec
	jp pe,01f0ah		;71ed
	cp 001h			;71f0
	ret m			;71f2
	dec d			;71f3
	jp (hl)			;71f4
	ld b,0f2h		;71f5
	jr nz,l71eah		;71f7
	ld b,l			;71f9
	ex de,hl		;71fa
	add a,d			;71fb
	ld b,c			;71fc
	jp pe,0ed0eh		;71fd
	ld a,(bc)		;7200
	jp nc,01020h		;7201
	jr nz,l724eh		;7204
	jp nc,0d191h		;7206
	ld hl,0d217h		;7209
	or c			;720c
	ret nz			;720d
	pop de			;720e
	ld de,021c0h		;720f
	defb 0edh ;next byte illegal after ed	;7212
	add hl,bc		;7213
	ld c,l			;7214
	defb 0edh ;next byte illegal after ed	;7215
	dec bc			;7216
	jr nz,l7229h		;7217
	daa			;7219
	ld (de),a		;721a
	ret nz			;721b
	ld (0ebc0h),hl		;721c
	add a,c			;721f
	pop bc			;7220
	ld (de),a		;7221
	jp nc,0ea92h		;7222
	ld a,(bc)		;7225
	in a,(002h)		;7226
	ex de,hl		;7228
l7229h:
	add a,a			;7229
l722ah:
	ld d,b			;722a
	jp (hl)			;722b
	inc c			;722c
	ld c,d			;722d
	call pe,001eah		;722e
	ld b,c			;7231
	cp 001h			;7232
	jp (hl)			;7234
	ld b,0f2h		;7235
	jr nz,l722ah		;7237
	ld d,l			;7239
	ex de,hl		;723a
	add a,d			;723b
	ld b,c			;723c
	ret m			;723d
	dec d			;723e
	jp pe,0ed0eh		;723f
	ld a,(bc)		;7242
	jp nc,01020h		;7243
l7246h:
	jr nz,l7290h		;7246
	sub c			;7248
l7249h:
	pop de			;7249
	ld hl,0d217h		;724a
	or c			;724d
l724eh:
	ret nz			;724e
	pop de			;724f
	ld de,021c0h		;7250
	jp pe,0ed0eh		;7253
	ld a,(bc)		;7256
	ld c,h			;7257
	ret nz			;7258
	defb 0edh ;next byte illegal after ed	;7259
	dec c			;725a
	jr nz,$+18		;725b
	daa			;725d
	jp nc,0c0b1h		;725e
	pop de			;7261
	ld hl,l70c0h		;7262
	ld b,b			;7265
	ex de,hl		;7266
	add a,a			;7267
	ld (hl),b		;7268
	sbc a,a			;7269
	ret m			;726a
	dec e			;726b
	jp pe,0eb08h		;726c
	add hl,bc		;726f
	jr nz,l7246h		;7270
	djnz l7249h		;7272
	sub b			;7274
	ex de,hl		;7275
	add hl,bc		;7276
	jr nz,$-20		;7277
	ld a,(bc)		;7279
	ret m			;727a
	ld a,(bc)		;727b
	call nc,0b090h		;727c
	out (010h),a		;727f
	ld b,b			;7281
	sub b			;7282
	or b			;7283
	jp nc,04010h		;7284
	ld (hl),b		;7287
l7288h:
	or b			;7288
	pop de			;7289
	djnz $+66		;728a
	ld (hl),b		;728c
	or b			;728d
	cp 001h			;728e
l7290h:
	ret m			;7290
	ld a,(bc)		;7291
	jp (hl)			;7292
	ld b,0f2h		;7293
	jr l7288h		;7295
	ld d,h			;7297
	ex de,hl		;7298
	add a,a			;7299
	ld d,b			;729a
	jp pe,0ed0ch		;729b
	ld a,(bc)		;729e
	rst 28h			;729f
	pop de			;72a0
	nop			;72a1
	jr nz,l72e4h		;72a2
	jp nc,09099h		;72a4
	pop de			;72a7
	jr nz,l72eah		;72a8
	sbc a,e			;72aa
	ret nc			;72ab
	nop			;72ac
	pop de			;72ad
	ld (hl),b		;72ae
	jr nz,l72b1h		;72af
l72b1h:
	out (0bfh),a		;72b1
	in a,(002h)		;72b3
	defb 0ddh,006h,054h ;illegal sequence	;72b5
	ret p			;72b8
	jp pe,0d10ah		;72b9
	cp a			;72bc
	cp 001h			;72bd
	jp (hl)			;72bf
	ld b,0f8h		;72c0
	ld a,(bc)		;72c2
	jp p,0f118h		;72c3
	ld d,h			;72c6
	ex de,hl		;72c7
	add a,a			;72c8
	ld d,b			;72c9
	jp pe,0ed0ch		;72ca
	ld a,(bc)		;72cd
	pop de			;72ce
	nop			;72cf
	jr nz,l7312h		;72d0
l72d2h:
	jp nc,09099h		;72d2
	pop de			;72d5
	jr nz,$+66		;72d6
	sbc a,e			;72d8
l72d9h:
	jp pe,0d00ch		;72d9
	nop			;72dc
	pop de			;72dd
	sub b			;72de
	ld h,b			;72df
	jr nz,l7322h		;72e0
	ld (hl),b		;72e2
	or b			;72e3
l72e4h:
	jp pe,0d00ah		;72e4
	pop af			;72e7
	ld d,e			;72e8
	dec hl			;72e9
l72eah:
	call pe,002eah		;72ea
	jr nz,l72d9h		;72ed
	ld a,(bc)		;72ef
	ret m			;72f0
	ld (bc),a		;72f1
	ex de,hl		;72f2
	ld b,d			;72f3
	ld b,b			;72f4
	jp nc,05222h		;72f5
	add a,d			;72f8
	or d			;72f9
	defb 0edh ;next byte illegal after ed	;72fa
l72fbh:
	ld bc,08050h		;72fb
	or b			;72fe
	pop de			;72ff
l7300h:
	jr nz,l7300h		;7300
	ld bc,00af8h		;7302
	jp (hl)			;7305
	ld b,0f2h		;7306
	jr l72fbh		;7308
	ld d,h			;730a
	ex de,hl		;730b
	add a,a			;730c
	ld d,b			;730d
	jp pe,0ed0ch		;730e
	ld a,(bc)		;7311
l7312h:
	pop de			;7312
	nop			;7313
	jr nz,$+66		;7314
	jp nc,09099h		;7316
	pop de			;7319
	jr nz,l735ch		;731a
	sbc a,e			;731c
	jp pe,0d00ch		;731d
	nop			;7320
	pop de			;7321
l7322h:
	ld (hl),b		;7322
	jr nz,l7325h		;7323
l7325h:
	out (0bfh),a		;7325
	defb 0ddh,006h,054h ;illegal sequence	;7327
	ret p			;732a
	jp pe,0db0ah		;732b
	ld bc,0bfd1h		;732e
	call c,001feh		;7331
	ret m			;7334
	ld a,(bc)		;7335
	jp (hl)			;7336
	ld b,0f2h		;7337
	jr $-13			;7339
	ld d,h			;733b
	ex de,hl		;733c
	add a,a			;733d
	ld d,b			;733e
	jp pe,0ed0ch		;733f
	add hl,bc		;7342
	pop de			;7343
	nop			;7344
	jr nz,l7387h		;7345
	jp nc,0d199h		;7347
	nop			;734a
	jr nc,l73adh		;734b
	sub a			;734d
	defb 0edh ;next byte illegal after ed	;734e
	ld a,(bc)		;734f
	ret nc			;7350
	nop			;7351
	pop de			;7352
	sub b			;7353
l7354h:
	ld h,b			;7354
	jr nz,l7387h		;7355
	ld h,b			;7357
	sub b			;7358
	ret nc			;7359
	nop			;735a
	pop de			;735b
l735ch:
	or b			;735c
	add a,b			;735d
	jp pe,0f20ah		;735e
	jr l7354h		;7361
	ld d,d			;7363
	ret nc			;7364
	ld c,l			;7365
	ret m			;7366
	dec bc			;7367
	ex de,hl		;7368
	add hl,bc		;7369
	jr nz,$-42		;736a
	jr nz,l73aeh		;736c
	add a,b			;736e
	or b			;736f
	out (020h),a		;7370
	ld b,b			;7372
	add a,b			;7373
	or b			;7374
	jp nc,04020h		;7375
	add a,b			;7378
	or b			;7379
	pop de			;737a
	jr nz,$+66		;737b
	add a,b			;737d
	or b			;737e
	defb 0fdh,076h,0b1h ;illegal sequence	;737f
l7382h:
	cp 001h			;7382
l7384h:
	ret m			;7384
	ld (bc),a		;7385
	jp (hl)			;7386
l7387h:
	ld b,0f2h		;7387
	ld (044f1h),hl		;7389
	ex de,hl		;738c
	add a,a			;738d
	ld d,b			;738e
	jp pe,0ed0ah		;738f
	inc bc			;7392
	sub 001h		;7393
	rlca			;7395
	ret nc			;7396
	dec hl			;7397
	ret c			;7398
	jp pe,0e908h		;7399
	inc bc			;739c
	call pe,sub_70d1h	;739d
	add a,b			;73a0
	sub b			;73a1
	and b			;73a2
	or b			;73a3
	ret nc			;73a4
	nop			;73a5
	djnz $+34		;73a6
	jp (hl)			;73a8
	ld b,0ebh		;73a9
	add a,a			;73ab
	ld b,c			;73ac
l73adh:
	dec de			;73ad
l73aeh:
	jp pe,0d009h		;73ae
	jr nz,l7384h		;73b1
l73b3h:
	or b			;73b3
	ex de,hl		;73b4
	add a,a			;73b5
	ld d,c			;73b6
	jp pe,0d00ah		;73b7
	rra			;73ba
	jp (hl)			;73bb
	ld b,0ech		;73bc
	ret m			;73be
	dec c			;73bf
	jp pe,0d205h		;73c0
	ld b,c			;73c3
	jp pe,04106h		;73c4
	jp pe,04107h		;73c7
	jp pe,04108h		;73ca
	jp pe,04107h		;73cd
	jp pe,04106h		;73d0
	jp pe,04105h		;73d3
l73d6h:
	jp pe,04104h		;73d6
	jp pe,04103h		;73d9
	cp 001h			;73dc
	ret m			;73de
	ld (bc),a		;73df
	jp (hl)			;73e0
	ld b,0f2h		;73e1
	djnz l73d6h		;73e3
	ld d,l			;73e5
	ex de,hl		;73e6
	add a,a			;73e7
	ld d,b			;73e8
	jp pe,0ed0bh		;73e9
	ld b,0d6h		;73ec
	ld bc,0d104h		;73ee
	dec hl			;73f1
	ret c			;73f2
	jp pe,0e908h		;73f3
	inc bc			;73f6
	call pe,sub_70d2h	;73f7
	add a,b			;73fa
	sub b			;73fb
	and b			;73fc
	or b			;73fd
	pop de			;73fe
	nop			;73ff
	djnz l7422h		;7400
	jp (hl)			;7402
	ld b,0eah		;7403
	ld a,(bc)		;7405
	ex de,hl		;7406
	add a,a			;7407
	ld d,b			;7408
	dec de			;7409
	jp (hl)			;740a
	inc b			;740b
	jp nc,04030h		;740c
	ld d,b			;740f
	ld h,b			;7410
	ld (hl),b		;7411
	add a,b			;7412
	jp pe,0db0ah		;7413
	ld (bc),a		;7416
	jp (hl)			;7417
	inc c			;7418
	sbc a,l			;7419
	call pe,005eah		;741a
	jp (hl)			;741d
	ld (bc),a		;741e
	sub b			;741f
	add a,b			;7420
	ld (hl),b		;7421
l7422h:
	ld h,b			;7422
	ld d,b			;7423
	ld b,b			;7424
	jp pe,03004h		;7425
	jr nz,$+18		;7428
	nop			;742a
l742bh:
	jp pe,0d303h		;742b
	or b			;742e
	and b			;742f
	cp 001h			;7430
	ret m			;7432
	dec d			;7433
	jp (hl)			;7434
	ld b,0c2h		;7435
	xor 001h		;7437
	jp p,0f120h		;7439
	ld b,h			;743c
	ex de,hl		;743d
	rlca			;743e
	jr nz,l742bh		;743f
	ex af,af'		;7441
	jp nc,01020h		;7442
	jr nz,$+74		;7445
	jp nc,0d191h		;7447
	ld hl,0d217h		;744a
	or c			;744d
	ret nz			;744e
	pop de			;744f
	ld (de),a		;7450
	ld hl,0204dh		;7451
	djnz l747dh		;7454
	inc de			;7456
	inc hl			;7457
	ld (de),a		;7458
	jp nc,0ea92h		;7459
	rlca			;745c
	jp (hl)			;745d
	inc c			;745e
	ld c,h			;745f
	cp 001h			;7460
	jp (hl)			;7462
	ld b,0eeh		;7463
	ld bc,020f2h		;7465
	pop af			;7468
	ld b,l			;7469
	ex de,hl		;746a
	rlca			;746b
	jr nz,$-6		;746c
	dec d			;746e
	jp pe,0f508h		;746f
	jp nc,01020h		;7472
	jr nz,$+74		;7475
	sub c			;7477
	pop de			;7478
	ld hl,0d217h		;7479
	or d			;747c
l747dh:
	pop de			;747d
	ld (de),a		;747e
	ld hl,008eah		;747f
	ld c,l			;7482
	jr nz,$+18		;7483
	daa			;7485
	jp nc,0d1b2h		;7486
	ld (04070h),hl		;7489
	sbc a,h			;748c
	jp pe,0f805h		;748d
	ld a,(bc)		;7490
	jp (hl)			;7491
l7492h:
	ld b,0c1h		;7492
	call nc,0b090h		;7494
	out (010h),a		;7497
	ld b,b			;7499
	sub b			;749a
	or b			;749b
	jp nc,04010h		;749c
	ld (hl),b		;749f
	or b			;74a0
	jp pe,0d107h		;74a1
	djnz $+66		;74a4
	ld (hl),b		;74a6
l74a7h:
	ret nz			;74a7
l74a8h:
	cp 001h			;74a8
	jp (hl)			;74aa
	ld b,0c1h		;74ab
	xor 001h		;74ad
	ret m			;74af
	ld a,(bc)		;74b0
l74b1h:
	ex de,hl		;74b1
	rlca			;74b2
	jr nz,l74a7h		;74b3
	jr l74a8h		;74b5
	ld d,h			;74b7
	jp pe,0d208h		;74b8
	or b			;74bb
	pop de			;74bc
	nop			;74bd
	jr nz,l7492h		;74be
	sbc a,c			;74c0
	sub b			;74c1
	pop de			;74c2
	jr nz,$+66		;74c3
	sbc a,e			;74c5
	ret nc			;74c6
	nop			;74c7
	jp nc,02070h		;74c8
	nop			;74cb
	out (0bdh),a		;74cc
	ret p			;74ce
	defb 0ddh,006h,054h ;illegal sequence	;74cf
	ret p			;74d2
	rst 28h			;74d3
	jp pe,0d10ah		;74d4
	in a,(001h)		;74d7
	cpl			;74d9
	call c,001feh		;74da
	jp (hl)			;74dd
	ld b,0f8h		;74de
	ld a,(bc)		;74e0
	pop bc			;74e1
	xor 001h		;74e2
	jp p,0f118h		;74e4
	ld d,h			;74e7
	ex de,hl		;74e8
	rlca			;74e9
	ld hl,008eah		;74ea
	defb 0edh ;next byte illegal after ed	;74ed
	rlca			;74ee
	pop de			;74ef
	nop			;74f0
	jr nz,l7533h		;74f1
	jp nc,09099h		;74f3
	pop de			;74f6
	jr nz,l7539h		;74f7
	sbc a,e			;74f9
	ret nc			;74fa
	nop			;74fb
	pop de			;74fc
	sub b			;74fd
	ld b,b			;74fe
	jr nz,l74b1h		;74ff
	pop af			;7501
	ld d,d			;7502
	jp pe,0d005h		;7503
	dec hl			;7506
	call pe,001eah		;7507
	jr nz,$-6		;750a
	ld (bc),a		;750c
	ex de,hl		;750d
	ld b,d			;750e
	ld b,b			;750f
	jp pe,0ef0ah		;7510
	jp nc,08252h		;7513
	or d			;7516
	pop de			;7517
	ld (001edh),hl		;7518
	jp nc,0d1b0h		;751b
l751eh:
	jr nz,$+82		;751e
	add a,b			;7520
	cp 001h			;7521
	ret m			;7523
	ld a,(bc)		;7524
	jp (hl)			;7525
	ld b,0eeh		;7526
	ld bc,0f2c1h		;7528
	jr l751eh		;752b
	ld d,h			;752d
	ex de,hl		;752e
	rlca			;752f
	jr nz,$-20		;7530
	ex af,af'		;7532
l7533h:
	jp nc,0d1b0h		;7533
	nop			;7536
	jr nz,$-44		;7537
l7539h:
	sbc a,c			;7539
	sub b			;753a
	pop de			;753b
	jr nz,l757eh		;753c
	sbc a,e			;753e
	ret nc			;753f
	nop			;7540
	jp nc,02070h		;7541
	nop			;7544
	out (0bdh),a		;7545
	ret p			;7547
	defb 0ddh,006h,054h ;illegal sequence	;7548
	jp pe,0ef0ah		;754b
	in a,(001h)		;754e
	pop de			;7550
	cpl			;7551
	call c,001feh		;7552
	ret m			;7555
	ld a,(bc)		;7556
	jp (hl)			;7557
	ld b,0eeh		;7558
	ld bc,018f2h		;755a
	pop af			;755d
	ld d,h			;755e
l755fh:
	ex de,hl		;755f
	add a,e			;7560
	ld hl,008eah		;7561
	defb 0edh ;next byte illegal after ed	;7564
	ld b,0d1h		;7565
	pop bc			;7567
	nop			;7568
	jr nz,l75abh		;7569
	jp nc,0d199h		;756b
	nop			;756e
	jr nc,l75d1h		;756f
	sub a			;7571
	jp pe,0ed07h		;7572
	ld b,0d0h		;7575
	nop			;7577
	pop de			;7578
	sub b			;7579
	ld h,b			;757a
	jr nz,$+50		;757b
	ld h,b			;757d
l757eh:
	sub b			;757e
	ret nc			;757f
	nop			;7580
	pop de			;7581
	or b			;7582
	add a,b			;7583
	call pe,018f2h		;7584
	ret nc			;7587
	jp pe,04105h		;7588
	jp pe,04104h		;758b
	jp pe,04103h		;758e
	jp pe,04702h		;7591
	ret m			;7594
	dec bc			;7595
	rst 28h			;7596
	jp pe,0eb04h		;7597
	ex af,af'		;759a
	djnz l755fh		;759b
	call nc,04020h		;759d
	add a,b			;75a0
	or b			;75a1
	out (020h),a		;75a2
	ld b,b			;75a4
	add a,b			;75a5
	or b			;75a6
	jp nc,04020h		;75a7
	add a,b			;75aa
l75abh:
	rst 28h			;75ab
	defb 0fdh,082h,0b3h ;illegal sequence	;75ac
	cp 010h			;75af
	jp (hl)			;75b1
	rlca			;75b2
	and b			;75b3
	and b			;75b4
l75b5h:
	sub c			;75b5
	ld hl,000a0h		;75b6
	ld hl,000a0h		;75b9
	ld hl,000a0h		;75bc
	ld hl,001e9h		;75bf
	ld b,c			;75c2
	ld b,c			;75c3
	ld d,d			;75c4
	ld d,d			;75c5
	ld d,e			;75c6
	ld d,d			;75c7
	ld d,e			;75c8
	ld d,d			;75c9
	ld d,e			;75ca
	ld d,d			;75cb
	ld d,e			;75cc
	ld d,d			;75cd
	ld d,e			;75ce
	ld h,d			;75cf
	ld h,e			;75d0
l75d1h:
	ld h,d			;75d1
	ld h,e			;75d2
	ld h,d			;75d3
	ld h,e			;75d4
	ld h,e			;75d5
	ld (hl),d		;75d6
	ld (hl),e		;75d7
	ld (hl),e		;75d8
	ld (hl),d		;75d9
	ld (hl),e		;75da
	ld (hl),d		;75db
	add a,e			;75dc
	add a,d			;75dd
	sub e			;75de
	jp (hl)			;75df
	rlca			;75e0
	sub c			;75e1
	and c			;75e2
	ld hl,000a0h		;75e3
	ld hl,000a0h		;75e6
	ld hl,000a0h		;75e9
	ld hl,000a0h		;75ec
	ld hl,000a0h		;75ef
	ld hl,004feh		;75f2
	jp (hl)			;75f5
	ld bc,04243h		;75f6
	ld b,e			;75f9
	ld b,d			;75fa
	jp (hl)			;75fb
	rlca			;75fc
	ld b,b			;75fd
	ld b,b			;75fe
	ld b,b			;75ff
	ld b,b			;7600
	ld b,b			;7601
	ld b,b			;7602
	cp 010h			;7603
	jp (hl)			;7605
	rlca			;7606
	push af			;7607
	and b			;7608
	nop			;7609
	ld hl,01181h		;760a
	and b			;760d
	nop			;760e
	ld hl,01181h		;760f
	ei			;7612
	inc bc			;7613
	and b			;7614
	nop			;7615
	ld de,01181h		;7616
	add a,c			;7619
	add a,c			;761a
	add a,b			;761b
	add a,b			;761c
	and c			;761d
	cp 010h			;761e
	jp (hl)			;7620
	rlca			;7621
	push af			;7622
	and b			;7623
	nop			;7624
	ld hl,01181h		;7625
	and b			;7628
	nop			;7629
	ld hl,01181h		;762a
	and b			;762d
	nop			;762e
	ld hl,01181h		;762f
	and b			;7632
	nop			;7633
	ld hl,0a181h		;7634
	ei			;7637
	inc b			;7638
	cp 010h			;7639
	jp (hl)			;763b
	rlca			;763c
	and a			;763d
	add a,d			;763e
	add a,d			;763f
	and b			;7640
l7641h:
	and b			;7641
	sbc a,a			;7642
l7643h:
	cp 001h			;7643
	jp 0feffh		;7645
	ld bc,007e9h		;7648
	ex de,hl		;764b
	rlca			;764c
	jr nc,l7641h		;764d
	add hl,bc		;764f
	pop af			;7650
	ld d,e			;7651
	jp pe,0d50bh		;7652
	ld b,c			;7655
	jp pe,0c208h		;7656
	xor 001h		;7659
	jp nc,sub_7070h		;765b
	ld (hl),b		;765e
	ld (hl),c		;765f
	ld (hl),c		;7660
	ld (hl),c		;7661
	ld (hl),c		;7662
	ld (hl),b		;7663
	ld (hl),c		;7664
	ld (hl),c		;7665
	sub b			;7666
	sub c			;7667
	sub c			;7668
l7669h:
	sub b			;7669
	sbc a,b			;766a
	jp pe,0eb07h		;766b
	inc sp			;766e
	jr nc,l7643h		;766f
	ld (hl),b		;7671
	ld (hl),b		;7672
	ld (hl),b		;7673
	ld (hl),c		;7674
	ld (hl),c		;7675
	ld (hl),c		;7676
	ld (hl),c		;7677
	ld (hl),b		;7678
	ld (hl),c		;7679
	sub c			;767a
	sub b			;767b
	sub c			;767c
	sub c			;767d
	sub b			;767e
	call nc,00beah		;767f
	inc hl			;7682
	ld b,e			;7683
	cp 001h			;7684
	jp (hl)			;7686
	rlca			;7687
	jp pe,0eb0bh		;7688
	add hl,bc		;768b
	jr nz,l7669h		;768c
	inc b			;768e
	push af			;768f
	push de			;7690
	ld (hl),b		;7691
	sub b			;7692
	call nc,04000h		;7693
	ei			;7696
	inc b			;7697
	push af			;7698
	push de			;7699
	ld h,b			;769a
	sub b			;769b
	call nc,04000h		;769c
	ei			;769f
	inc b			;76a0
	push af			;76a1
	push de			;76a2
	ld h,b			;76a3
	sub b			;76a4
	call nc,02000h		;76a5
	ei			;76a8
	inc b			;76a9
	push af			;76aa
	push de			;76ab
	nop			;76ac
	jr nz,$+98		;76ad
	sub b			;76af
	ei			;76b0
	ld (bc),a		;76b1
	push de			;76b2
	jr nz,l76d5h		;76b3
	call nc,02020h		;76b5
	push de			;76b8
	ld h,b			;76b9
	ld h,b			;76ba
	call nc,sub_6060h	;76bb
	cp 001h			;76be
	jp (hl)			;76c0
	rlca			;76c1
	ex de,hl		;76c2
	ld b,h			;76c3
	ld b,b			;76c4
	in a,(003h)		;76c5
	push af			;76c7
	jp pe,0d10ah		;76c8
	sub c			;76cb
	sub c			;76cc
	jp pe,0910ah		;76cd
	sub c			;76d0
	jp pe,09009h		;76d1
	sub c			;76d4
l76d5h:
	sub b			;76d5
	sub e			;76d6
	ei			;76d7
	ld (bc),a		;76d8
	push af			;76d9
	jp pe,0b10ah		;76da
	or c			;76dd
	jp pe,0b10ah		;76de
	or c			;76e1
	jp pe,0b009h		;76e2
	or c			;76e5
	or b			;76e6
	or e			;76e7
	ei			;76e8
	ld (bc),a		;76e9
	push af			;76ea
	jp pe,0910ah		;76eb
	sub c			;76ee
	jp pe,0910ah		;76ef
	sub c			;76f2
	jp pe,09009h		;76f3
	sub c			;76f6
	sub b			;76f7
	sub e			;76f8
	ei			;76f9
	ld (bc),a		;76fa
	jp pe,0510ah		;76fb
	ld d,c			;76fe
	jp pe,0510ah		;76ff
l7702h:
	ld d,c			;7702
l7703h:
	jp pe,05109h		;7703
	ld d,c			;7706
	jp pe,05108h		;7707
	ld d,c			;770a
	jp pe,0210ah		;770b
	ld hl,00aeah		;770e
	ld hl,0ea21h		;7711
	add hl,bc		;7714
	ld hl,0ea21h		;7715
	ex af,af'		;7718
	jp nc,0b1b1h		;7719
	cp 001h			;771c
	jp (hl)			;771e
	ld c,0eah		;771f
	inc b			;7721
	call pe,002d6h		;7722
	add a,b			;7725
	pop af			;7726
	ld b,c			;7727
	rst 28h			;7728
	pop bc			;7729
	ret nc			;772a
	sbc a,b			;772b
	ret c			;772c
	jp pe,09103h		;772d
	jp pe,09302h		;7730
	jp pe,09001h		;7733
	rst 38h			;7736
	cp 001h			;7737
	jp (hl)			;7739
	rlca			;773a
	ex de,hl		;773b
	rlca			;773c
	jr nc,$-12		;773d
	add hl,bc		;773f
	pop af			;7740
	ld d,e			;7741
	jp pe,0c108h		;7742
	jp nz,020d2h		;7745
	jr nz,l776ah		;7748
	ld hl,02121h		;774a
	ld hl,02120h		;774d
	ld hl,04140h		;7750
	ld b,c			;7753
	ld b,b			;7754
	ld c,b			;7755
	jp pe,0eb07h		;7756
	inc bc			;7759
	jr nc,$-44		;775a
	jr nz,$+34		;775c
	jr nz,l7781h		;775e
	ld hl,02121h		;7760
	jr nz,l7786h		;7763
	ld b,c			;7765
	ld b,b			;7766
	ld b,c			;7767
	ld b,c			;7768
	ld b,b			;7769
l776ah:
	ld d,e			;776a
l776bh:
	ld b,e			;776b
l776ch:
	cp 001h			;776c
	jp (hl)			;776e
	rlca			;776f
	ret m			;7770
	ld a,(bc)		;7771
	xor 002h		;7772
	jp nz,007ebh		;7774
	djnz l776bh		;7777
	jr z,l776ch		;7779
	ld h,(hl)		;777b
	jp pe,0d207h		;777c
	ld b,b			;777f
	sub b			;7780
l7781h:
	add a,b			;7781
	ld (hl),b		;7782
	jp (hl)			;7783
	ld c,077h		;7784
l7786h:
	call pe,0eb70h		;7786
	rlca			;7789
	djnz $-21		;778a
	rlca			;778c
	ld (hl),c		;778d
	ld b,b			;778e
	sub b			;778f
	add a,b			;7790
	ld (hl),b		;7791
	pop de			;7792
	ld bc,090d2h		;7793
	jp (hl)			;7796
sub_7797h:
	ld c,0d1h		;7797
	ld l,0ech		;7799
	jp pe,0e901h		;779b
	rlca			;779e
	cp 001h			;779f
	jp (hl)			;77a1
	rlca			;77a2
	ex de,hl		;77a3
	ld b,h			;77a4
	ld b,b			;77a5
	in a,(003h)		;77a6
	push af			;77a8
	jp pe,0d10ah		;77a9
	ld d,c			;77ac
	ld d,c			;77ad
	jp pe,0510ah		;77ae
	ld d,c			;77b1
	jp pe,05009h		;77b2
	ld d,c			;77b5
	ld d,b			;77b6
	ld d,e			;77b7
	ei			;77b8
	ld (bc),a		;77b9
	push af			;77ba
	jp pe,l710ah		;77bb
	ld (hl),c		;77be
	jp pe,l710ah		;77bf
	ld (hl),c		;77c2
	jp pe,07009h		;77c3
	ld (hl),c		;77c6
	ld (hl),b		;77c7
	ld (hl),e		;77c8
	ei			;77c9
	ld (bc),a		;77ca
	push af			;77cb
	jp pe,0510ah		;77cc
	ld d,c			;77cf
	jp pe,0510ah		;77d0
	ld d,c			;77d3
	jp pe,05009h		;77d4
	ld d,c			;77d7
	ld d,b			;77d8
	ld d,e			;77d9
	ei			;77da
	ld (bc),a		;77db
	jp pe,0210ah		;77dc
	ld hl,00aeah		;77df
	ld hl,0ea21h		;77e2
	add hl,bc		;77e5
	ld hl,0ea21h		;77e6
	ex af,af'		;77e9
	ld hl,0ea21h		;77ea
	ld a,(bc)		;77ed
	jp nc,0b1b1h		;77ee
	jp pe,0b10ah		;77f1
	or c			;77f4
	jp pe,0b109h		;77f5
	or c			;77f8
	jp pe,07108h		;77f9
	ld (hl),c		;77fc
	cp 001h			;77fd
	jp (hl)			;77ff
	ld c,0eah		;7800
	inc bc			;7802
	call pe,002d6h		;7803
	add a,b			;7806
	pop af			;7807
l7808h:
	ld b,c			;7808
	rst 28h			;7809
	xor 001h		;780a
	pop de			;780c
	sbc a,e			;780d
	ret c			;780e
	jp pe,09102h		;780f
	jp pe,09201h		;7812
	rst 38h			;7815
	cp 001h			;7816
	jp (hl)			;7818
	rlca			;7819
	ret m			;781a
	jr z,l7808h		;781b
	add hl,bc		;781d
	ld b,b			;781e
	jp pe,0d50fh		;781f
	ld b,c			;7822
	ex de,hl		;7823
	add hl,bc		;7824
	ld b,b			;7825
	sub a			;7826
	ld (hl),a		;7827
	ld e,l			;7828
	ld b,c			;7829
	sub a			;782a
	ld (hl),a		;782b
	ld d,a			;782c
	inc hl			;782d
	ld b,e			;782e
	cp 001h			;782f
	jp (hl)			;7831
	rlca			;7832
	jp pe,0eb0fh		;7833
	ld a,(bc)		;7836
	jr nc,$-35		;7837
	inc b			;7839
	push af			;783a
	ret m			;783b
	inc hl			;783c
	push de			;783d
	ld (hl),b		;783e
	sub b			;783f
	ret m			;7840
	inc e			;7841
	call nc,04000h		;7842
	ei			;7845
	inc b			;7846
	push af			;7847
	ret m			;7848
	inc hl			;7849
	push de			;784a
	ld h,b			;784b
	sub b			;784c
	ret m			;784d
	inc e			;784e
	call nc,04000h		;784f
	ei			;7852
	inc b			;7853
	push af			;7854
	ret m			;7855
	inc hl			;7856
	push de			;7857
	ld h,b			;7858
l7859h:
	sub b			;7859
	ret m			;785a
	inc e			;785b
	call nc,02000h		;785c
	ei			;785f
	inc b			;7860
	push af			;7861
	ret m			;7862
	inc hl			;7863
	push de			;7864
	nop			;7865
	jr nz,l78c8h		;7866
	sub b			;7868
	ei			;7869
	ld (bc),a		;786a
	ex de,hl		;786b
	ld a,(bc)		;786c
	jr nc,l7859h		;786d
	rrca			;786f
	ret m			;7870
	inc hl			;7871
	push de			;7872
	jr nz,l7895h		;7873
	ret m			;7875
	inc e			;7876
	call nc,02020h		;7877
	ret m			;787a
	inc hl			;787b
	push de			;787c
	ld h,b			;787d
	ld h,b			;787e
	ret m			;787f
	inc e			;7880
	call nc,sub_6060h	;7881
	cp 001h			;7884
	jp (hl)			;7886
	rlca			;7887
	ret m			;7888
	inc hl			;7889
	ex de,hl		;788a
	ld a,(bc)		;788b
	jr nc,$-20		;788c
	rrca			;788e
	jp p,0f110h		;788f
	ld d,l			;7892
	push af			;7893
	push de			;7894
l7895h:
	ld d,b			;7895
	ld d,b			;7896
	call nc,05050h		;7897
	ei			;789a
	ex af,af'		;789b
	push af			;789c
	push de			;789d
	ld (hl),b		;789e
	ld (hl),b		;789f
	call nc,sub_7070h	;78a0
	ei			;78a3
	ex af,af'		;78a4
	push af			;78a5
	push de			;78a6
l78a7h:
	jr nz,l78c9h		;78a7
	call nc,02020h		;78a9
	ei			;78ac
	ex af,af'		;78ad
	push af			;78ae
	push de			;78af
	ld d,b			;78b0
	ld d,b			;78b1
	call nc,05050h		;78b2
	ei			;78b5
	inc b			;78b6
l78b7h:
	push af			;78b7
	push de			;78b8
	ld b,b			;78b9
	ld b,b			;78ba
	call nc,04040h		;78bb
	ei			;78be
	inc bc			;78bf
	push de			;78c0
	ld b,b			;78c1
	call nc,0d540h		;78c2
	ld b,c			;78c5
	cp 001h			;78c6
l78c8h:
	jp (hl)			;78c8
l78c9h:
	rlca			;78c9
	ret m			;78ca
	jr z,l78b7h		;78cb
	rrca			;78cd
	ex de,hl		;78ce
	add hl,bc		;78cf
	jr nc,l78a7h		;78d0
	sbc a,a			;78d2
	call pe,004eah		;78d3
	sub a			;78d6
	jp pe,09103h		;78d7
	jp pe,09302h		;78da
	jp pe,09301h		;78dd
	rst 38h			;78e0
l78e1h:
	cp 001h			;78e1
	jp (hl)			;78e3
	rlca			;78e4
	ex de,hl		;78e5
	ld a,(bc)		;78e6
	jr nc,l78e1h		;78e7
	ld h,0eah		;78e9
	inc c			;78eb
	call nc,006eeh		;78ec
	ld b,c			;78ef
	jp pe,0eb0ch		;78f0
	ld (hl),070h		;78f3
	sub a			;78f5
	ld (hl),a		;78f6
	ld e,l			;78f7
	push de			;78f8
	ld b,c			;78f9
	call nc,sub_7797h	;78fa
	ld d,a			;78fd
	rst 28h			;78fe
	cp 004h			;78ff
	ret nc			;7901
	ret m			;7902
	dec b			;7903
	jp (hl)			;7904
	ld bc,05253h		;7905
	ld d,e			;7908
	ld d,d			;7909
	jp (hl)			;790a
	rlca			;790b
	ld h,b			;790c
	ld h,b			;790d
	ld d,b			;790e
	ld d,b			;790f
	ld (hl),b		;7910
	ld (hl),b		;7911
	cp 001h			;7912
	jp (hl)			;7914
	rlca			;7915
	ret m			;7916
	ld (bc),a		;7917
	ex de,hl		;7918
	inc (hl)		;7919
	ld b,b			;791a
	jp p,0f114h		;791b
	ld d,l			;791e
	jp pe,0d60dh		;791f
	djnz $+5		;7922
	out (09dh),a		;7924
	call pe,004eah		;7926
	sub c			;7929
	jp pe,0eb0dh		;792a
	inc (hl)		;792d
	ld b,b			;792e
	jp nc,0d307h		;792f
	sub e			;7932
	jp nc,02d03h		;7933
	call pe,004eah		;7936
	ld hl,00deah		;7939
	ex de,hl		;793c
	inc (hl)		;793d
	jr nc,l79a7h		;793e
	sub e			;7940
	ret c			;7941
	call pe,006eah		;7942
	add a,b			;7945
	ld (hl),b		;7946
	ld h,b			;7947
	ld d,b			;7948
	cp 001h			;7949
	jp (hl)			;794b
	rlca			;794c
	rst 28h			;794d
	ret m			;794e
	ld a,(bc)		;794f
	ret c			;7950
	ex de,hl		;7951
	add a,a			;7952
	ld (hl),b		;7953
	defb 0edh ;next byte illegal after ed	;7954
	add hl,bc		;7955
	jp p,0db15h		;7956
	ld (bc),a		;7959
	pop af			;795a
	ld d,c			;795b
	jp pe,0d30ah		;795c
	sub l			;795f
l7960h:
	ld d,l			;7960
	jp pe,0d209h		;7961
	ld b,e			;7964
	daa			;7965
	jp pe,0030ah		;7966
	out (093h),a		;7969
	cp l			;796b
	call pe,006eah		;796c
	or c			;796f
	jp pe,0d207h		;7970
	nop			;7973
	djnz l7960h		;7974
	ex af,af'		;7976
	add hl,hl		;7977
	call pe,007eah		;7978
	djnz l797dh		;797b
l797dh:
	out (0b0h),a		;797d
	and b			;797f
	jp pe,0eb0bh		;7980
	add a,a			;7983
	ld (hl),b		;7984
	out (095h),a		;7985
	ld d,l			;7987
	sub e			;7988
	jp nc,0eb0fh		;7989
	add a,a			;798c
	ld b,b			;798d
	dec hl			;798e
	ex de,hl		;798f
	add a,a			;7990
	ld (hl),b		;7991
	inc bc			;7992
	jp pe,0d30ch		;7993
	or a			;7996
	ld (hl),a		;7997
	cp 001h			;7998
	jp (hl)			;799a
	ld c,0f8h		;799b
	dec b			;799d
	jp pe,0ec04h		;799e
	sub 002h		;79a1
	add a,b			;79a3
	pop af			;79a4
	ld b,c			;79a5
	rst 28h			;79a6
l79a7h:
	ret nc			;79a7
	sbc a,c			;79a8
	ret c			;79a9
	jp pe,09103h		;79aa
	jp pe,09102h		;79ad
	jp pe,09201h		;79b0
	rst 38h			;79b3
	cp 001h			;79b4
	jp (hl)			;79b6
	rlca			;79b7
	ret m			;79b8
	inc de			;79b9
	jp p,0f109h		;79ba
l79bdh:
	ld d,e			;79bd
	ex de,hl		;79be
	add hl,de		;79bf
	jr nc,$-20		;79c0
	ld c,0c1h		;79c2
	pop bc			;79c4
	sub 020h		;79c5
	ld bc,0b0d3h		;79c7
	or b			;79ca
l79cbh:
	or b			;79cb
	or c			;79cc
	or c			;79cd
	or c			;79ce
	or c			;79cf
l79d0h:
	or b			;79d0
	or c			;79d1
	or c			;79d2
	jp nc,00100h		;79d3
	ld bc,00100h		;79d6
	call pe,007eah		;79d9
l79dch:
	sub 006h		;79dc
	jr nz,$-44		;79de
	sub a			;79e0
	ret c			;79e1
	sub 004h		;79e2
	ld bc,00eeah		;79e4
	ex de,hl		;79e7
	add hl,de		;79e8
l79e9h:
	jr nc,l79bdh		;79e9
	or b			;79eb
	or b			;79ec
	or b			;79ed
	or c			;79ee
	or c			;79ef
	or c			;79f0
	or c			;79f1
	or b			;79f2
	or c			;79f3
	jp pe,0eb0ch		;79f4
	add hl,bc		;79f7
	jr nz,l79cbh		;79f8
	ld bc,009ebh		;79fa
	jr nc,l79e9h		;79fd
	dec c			;79ff
	nop			;7a00
	ld bc,00001h		;7a01
	jp pe,0eb0eh		;7a04
	ld a,(de)		;7a07
	jr nz,l79dch		;7a08
l7a0ah:
	inc hl			;7a0a
	out (0b3h),a		;7a0b
	ret c			;7a0d
	cp 001h			;7a0e
	jp (hl)			;7a10
	rlca			;7a11
	ret m			;7a12
	ld (bc),a		;7a13
	ex de,hl		;7a14
	inc (hl)		;7a15
	jr nc,l7a0ah		;7a16
	inc d			;7a18
	pop af			;7a19
	ld d,l			;7a1a
	jp pe,0d60eh		;7a1b
	djnz l7a23h		;7a1e
	jp nc,0ec0dh		;7a20
l7a23h:
	jp pe,00104h		;7a23
	jp pe,0eb0eh		;7a26
	inc (hl)		;7a29
	jr nc,l7a73h		;7a2a
	inc bc			;7a2c
	ld b,e			;7a2d
	ld l,l			;7a2e
	jp pe,0ec04h		;7a2f
	ld h,c			;7a32
	jp pe,0eb0eh		;7a33
	inc (hl)		;7a36
	jr nc,l79d0h		;7a37
	pop de			;7a39
	inc bc			;7a3a
	ret c			;7a3b
	jp pe,0ec06h		;7a3c
	jp nc,0a0b0h		;7a3f
	sub b			;7a42
	add a,b			;7a43
	cp 001h			;7a44
	jp (hl)			;7a46
	rlca			;7a47
	rst 28h			;7a48
	ret m			;7a49
	ld a,(bc)		;7a4a
	ret c			;7a4b
	ex de,hl		;7a4c
	add a,a			;7a4d
	ld (hl),b		;7a4e
	defb 0edh ;next byte illegal after ed	;7a4f
	ex af,af'		;7a50
	jp p,0db15h		;7a51
	ld (bc),a		;7a54
	pop af			;7a55
	ld d,l			;7a56
	jp pe,0d30bh		;7a57
	ld d,l			;7a5a
	dec b			;7a5b
	jp nc,0d303h		;7a5c
	or a			;7a5f
	sub e			;7a60
	ld d,e			;7a61
	ld a,l			;7a62
	call pe,006eah		;7a63
	ld (hl),b		;7a66
	add a,b			;7a67
	jp pe,09007h		;7a68
	and b			;7a6b
	jp pe,0b908h		;7a6c
	jp pe,0a007h		;7a6f
	sub b			;7a72
l7a73h:
	add a,b			;7a73
	ld (hl),b		;7a74
	jp pe,0eb0bh		;7a75
	add a,a			;7a78
	ld (hl),b		;7a79
	ld d,l			;7a7a
	dec b			;7a7b
	ld d,e			;7a7c
l7a7dh:
	ex de,hl		;7a7d
	add a,a			;7a7e
	ld b,b			;7a7f
	sbc a,a			;7a80
	jp nc,0435bh		;7a81
	jp pe,0270bh		;7a84
l7a87h:
	out (0b7h),a		;7a87
	cp 001h			;7a89
	jp (hl)			;7a8b
	ld bc,00df8h		;7a8c
	ex de,hl		;7a8f
	add hl,bc		;7a90
	jr nc,l7a7dh		;7a91
	dec bc			;7a93
	push af			;7a94
	push de			;7a95
	sub e			;7a96
	call nc,0fb92h		;7a97
	djnz l7a87h		;7a9a
	rlca			;7a9c
	ld (hl),b		;7a9d
	jp (hl)			;7a9e
	rlca			;7a9f
	call nc,0ea99h		;7aa0
	ld b,091h		;7aa3
	jp pe,09105h		;7aa5
	jp pe,09104h		;7aa8
	jp pe,09103h		;7aab
	jp pe,09002h		;7aae
	rst 38h			;7ab1
	cp 001h			;7ab2
	jp (hl)			;7ab4
	rlca			;7ab5
	ret m			;7ab6
	ld (bc),a		;7ab7
	jp p,0f109h		;7ab8
	ld d,e			;7abb
	ex de,hl		;7abc
	add hl,de		;7abd
	jr nc,$-20		;7abe
	rrca			;7ac0
	pop bc			;7ac1
	pop bc			;7ac2
	sub 010h		;7ac3
	ld bc,020d2h		;7ac5
	jr nz,l7aeah		;7ac8
	ld hl,02121h		;7aca
	ld hl,02120h		;7acd
	ld hl,040d2h		;7ad0
	ld b,c			;7ad3
	ld b,c			;7ad4
	ld b,b			;7ad5
l7ad6h:
	ld b,c			;7ad6
	call pe,004eah		;7ad7
	ld b,b			;7ada
	jp pe,04005h		;7adb
	jp pe,04007h		;7ade
	jp pe,04109h		;7ae1
	jp pe,04007h		;7ae4
	jp pe,04005h		;7ae7
l7aeah:
	jp pe,04003h		;7aea
	jp pe,0eb0ch		;7aed
	add hl,bc		;7af0
	jr nz,$-40		;7af1
	ld (bc),a		;7af3
l7af4h:
	ld bc,020d1h		;7af4
	jr nz,l7b19h		;7af7
	ld hl,02121h		;7af9
	ld hl,02120h		;7afc
	jp pe,0eb0bh		;7aff
	add hl,bc		;7b02
	jr nz,l7ad6h		;7b03
	ld b,c			;7b05
	ex de,hl		;7b06
	add hl,bc		;7b07
	jr nc,l7af4h		;7b08
	inc c			;7b0a
	ld b,b			;7b0b
	ld b,c			;7b0c
	ld b,c			;7b0d
	ld b,b			;7b0e
	pop de			;7b0f
	ex de,hl		;7b10
	ld a,(de)		;7b11
	djnz l7b67h		;7b12
l7b14h:
	ld b,e			;7b14
	ret c			;7b15
	cp 001h			;7b16
	jp (hl)			;7b18
l7b19h:
	rlca			;7b19
	ret m			;7b1a
	ld a,(bc)		;7b1b
	jp p,0f128h		;7b1c
	ld h,l			;7b1f
	call pe,001e9h		;7b20
	jp pe,0d20fh		;7b23
	ld b,b			;7b26
	jr nc,l7b14h		;7b27
	ld (0ea30h),a		;7b29
	rrca			;7b2c
	ex de,hl		;7b2d
l7b2eh:
	inc hl			;7b2e
	jr nc,l7b75h		;7b2f
	jp (hl)			;7b31
	rlca			;7b32
	sub b			;7b33
	add a,b			;7b34
	jp (hl)			;7b35
	ld c,077h		;7b36
	jp (hl)			;7b38
	rlca			;7b39
	call pe,004eah		;7b3a
	ld (hl),b		;7b3d
	ld h,b			;7b3e
	ld d,b			;7b3f
	ld b,b			;7b40
	jr nc,l7b2eh		;7b41
	ld (0ea30h),a		;7b43
	rrca			;7b46
	jp (hl)			;7b47
	ld bc,02030h		;7b48
	ld b,h			;7b4b
	jp (hl)			;7b4c
	rlca			;7b4d
	sub b			;7b4e
	add a,b			;7b4f
	ld (hl),b		;7b50
	pop de			;7b51
	ld bc,090d2h		;7b52
	jp pe,0e90fh		;7b55
	ld c,0d1h		;7b58
	dec l			;7b5a
	jp pe,0e907h		;7b5b
	rlca			;7b5e
	ret p			;7b5f
	call pe,00010h		;7b60
	jp nc,0a0b0h		;7b63
	sub b			;7b66
l7b67h:
	cp 001h			;7b67
	jp (hl)			;7b69
	rlca			;7b6a
	ret m			;7b6b
	ld (bc),a		;7b6c
	defb 0edh ;next byte illegal after ed	;7b6d
	ex af,af'		;7b6e
	ex de,hl		;7b6f
	add a,l			;7b70
	ld d,b			;7b71
	jp p,0f115h		;7b72
l7b75h:
	ld h,e			;7b75
	jp pe,0d10dh		;7b76
	dec b			;7b79
	jp nc,0b090h		;7b7a
	pop de			;7b7d
	dec c			;7b7e
	call pe,003eah		;7b7f
	ld bc,00deah		;7b82
	ex de,hl		;7b85
	ld de,00260h		;7b86
	ld (0ed41h),hl		;7b89
	ex af,af'		;7b8c
	ex de,hl		;7b8d
	add a,l			;7b8e
	ld d,b			;7b8f
	jp nc,l75b5h		;7b90
	ex de,hl		;7b93
	add a,l			;7b94
	ld h,b			;7b95
	jp (hl)			;7b96
	ld c,0d1h		;7b97
	ld c,b			;7b99
	call pe,005eah		;7b9a
	ld b,b			;7b9d
	jp (hl)			;7b9e
	rlca			;7b9f
	ret m			;7ba0
	ld (bc),a		;7ba1
	ex de,hl		;7ba2
	add a,l			;7ba3
	ld b,b			;7ba4
	jp pe,0d20dh		;7ba5
	sub l			;7ba8
	ld d,b			;7ba9
	ld (hl),b		;7baa
	sbc a,l			;7bab
	call pe,004eah		;7bac
	sub c			;7baf
	jp pe,0ed0dh		;7bb0
	ex af,af'		;7bb3
	ex de,hl		;7bb4
	add a,l			;7bb5
	ld d,b			;7bb6
	sub e			;7bb7
	or e			;7bb8
	pop de			;7bb9
	dec b			;7bba
	jp nc,08381h		;7bbb
	pop de			;7bbe
	ld b,e			;7bbf
	inc hl			;7bc0
	inc bc			;7bc1
	jp nc,l73b3h		;7bc2
	cp 001h			;7bc5
	jp (hl)			;7bc7
	rlca			;7bc8
	ret m			;7bc9
	ld (bc),a		;7bca
	jp p,0f109h		;7bcb
	ld d,e			;7bce
	ex de,hl		;7bcf
	add hl,de		;7bd0
	jr nz,$-20		;7bd1
	ld c,0d5h		;7bd3
	sub c			;7bd5
	out (091h),a		;7bd6
	jp nc,l7121h		;7bd8
	ld (0d172h),hl		;7bdb
	ld bc,007ebh		;7bde
	ld (hl),b		;7be1
	ld c,c			;7be2
	call pe,004eah		;7be3
	ld b,c			;7be6
	jp pe,04103h		;7be7
	jp pe,04102h		;7bea
	call pe,001eah		;7bed
	ld b,c			;7bf0
	rst 38h			;7bf1
	cp 001h			;7bf2
	jp (hl)			;7bf4
	rlca			;7bf5
	ret m			;7bf6
l7bf7h:
	inc e			;7bf7
	jp p,0f113h		;7bf8
	ld d,h			;7bfb
	ex de,hl		;7bfc
	ld a,(bc)		;7bfd
	ld b,b			;7bfe
	jp pe,0d50fh		;7bff
	ld b,c			;7c02
	pop bc			;7c03
	sub 002h		;7c04
	ld bc,002f8h		;7c06
	ex de,hl		;7c09
	add hl,bc		;7c0a
l7c0bh:
	jr nc,l7bf7h		;7c0b
	ld c,0d2h		;7c0d
	ld (hl),b		;7c0f
	ld (hl),b		;7c10
	ld (hl),b		;7c11
	ld (hl),c		;7c12
	ld (hl),c		;7c13
	ld (hl),c		;7c14
	ld (hl),c		;7c15
	ld (hl),b		;7c16
	ld (hl),c		;7c17
	ld (hl),c		;7c18
	sub b			;7c19
	sub c			;7c1a
	sub c			;7c1b
	sub b			;7c1c
	sub c			;7c1d
	call pe,006eah		;7c1e
	sub b			;7c21
	jp pe,09008h		;7c22
	jp pe,0900ah		;7c25
	jp pe,0910ch		;7c28
	jp pe,09008h		;7c2b
	jp pe,09006h		;7c2e
	jp pe,09004h		;7c31
	jp pe,0eb0bh		;7c34
	add hl,bc		;7c37
	jr nz,l7c0bh		;7c38
	ld (hl),b		;7c3a
	ld (hl),b		;7c3b
	ld (hl),b		;7c3c
	ld (hl),c		;7c3d
	ld (hl),c		;7c3e
	ld (hl),c		;7c3f
	ld (hl),c		;7c40
	ld (hl),b		;7c41
	ld (hl),c		;7c42
	jp pe,0eb0ah		;7c43
	add hl,bc		;7c46
	jr nz,$-109		;7c47
	jp pe,0eb0bh		;7c49
	add hl,bc		;7c4c
	jr nc,$-110		;7c4d
	sub c			;7c4f
	sub c			;7c50
	sub b			;7c51
	jp p,0f110h		;7c52
	ld b,h			;7c55
	ex de,hl		;7c56
	ld (09320h),a		;7c57
	add a,e			;7c5a
l7c5bh:
	ret c			;7c5b
l7c5ch:
	cp 001h			;7c5c
	jp (hl)			;7c5e
	rlca			;7c5f
	ret m			;7c60
	ld a,(bc)		;7c61
	xor 001h		;7c62
	pop bc			;7c64
	ex de,hl		;7c65
	rlca			;7c66
	djnz l7c5bh		;7c67
	jr z,l7c5ch		;7c69
	ld h,(hl)		;7c6b
	jp pe,0d20ah		;7c6c
l7c6fh:
	ld b,b			;7c6f
	sub b			;7c70
	add a,b			;7c71
	jp pe,0e909h		;7c72
	ld c,077h		;7c75
	jp (hl)			;7c77
	rlca			;7c78
	call pe,003eah		;7c79
	ld (hl),b		;7c7c
	ld h,b			;7c7d
	ld d,b			;7c7e
	ld b,b			;7c7f
	jr nc,$-19		;7c80
	rlca			;7c82
	djnz l7c6fh		;7c83
	add hl,bc		;7c85
	jp (hl)			;7c86
	rlca			;7c87
	ld b,b			;7c88
	sub b			;7c89
	add a,b			;7c8a
	ld (hl),b		;7c8b
	pop de			;7c8c
	ld bc,090d2h		;7c8d
	jp pe,0e905h		;7c90
	ld c,0d1h		;7c93
	ld l,0ech		;7c95
	jp pe,0e902h		;7c97
	rlca			;7c9a
l7c9bh:
	jr nz,l7c9bh		;7c9b
	ld bc,007e9h		;7c9d
	ret m			;7ca0
	ld (bc),a		;7ca1
	xor 001h		;7ca2
	pop bc			;7ca4
	ex de,hl		;7ca5
	rlca			;7ca6
	djnz l7c9bh		;7ca7
	dec d			;7ca9
	pop af			;7caa
	ld h,e			;7cab
	jp pe,0d107h		;7cac
	dec b			;7caf
	jp nc,0b090h		;7cb0
	pop de			;7cb3
	rrca			;7cb4
	ld (bc),a		;7cb5
	ld (0d241h),hl		;7cb6
	or l			;7cb9
	ld (hl),l		;7cba
	jp (hl)			;7cbb
	ld c,0d1h		;7cbc
	ld c,c			;7cbe
	jp (hl)			;7cbf
	rlca			;7cc0
	ret m			;7cc1
	ld (bc),a		;7cc2
	jp nc,05095h		;7cc3
	ld (hl),b		;7cc6
	sbc a,a			;7cc7
	sub e			;7cc8
	or e			;7cc9
	pop de			;7cca
	dec b			;7ccb
	jp nc,08381h		;7ccc
	pop de			;7ccf
	ld b,e			;7cd0
	inc hl			;7cd1
	inc bc			;7cd2
	jp nc,l71b3h		;7cd3
	cp 001h			;7cd6
	jp (hl)			;7cd8
	rlca			;7cd9
	ret m			;7cda
	ld (bc),a		;7cdb
	jp p,0f109h		;7cdc
	ld d,e			;7cdf
	ex de,hl		;7ce0
	add hl,de		;7ce1
	jr nz,$-20		;7ce2
	dec c			;7ce4
	out (091h),a		;7ce5
	jp nc,l7121h		;7ce7
	pop de			;7cea
	ld bc,l72d2h		;7ceb
	pop de			;7cee
	ld (bc),a		;7cef
l7cf0h:
	ld d,c			;7cf0
	ex de,hl		;7cf1
	rlca			;7cf2
	ld (hl),b		;7cf3
	jp nc,0ec99h		;7cf4
	jp pe,09104h		;7cf7
	jp pe,09103h		;7cfa
	jp pe,09102h		;7cfd
	call pe,001eah		;7d00
	sub c			;7d03
	rst 38h			;7d04
	cp 001h			;7d05
	jp (hl)			;7d07
	dec b			;7d08
	xor 001h		;7d09
	in a,(003h)		;7d0b
	defb 0edh ;next byte illegal after ed	;7d0d
	rlca			;7d0e
	defb 0ddh,085h ;add a,ixl	;7d0f
	ld h,l			;7d11
	jp pe,0f508h		;7d12
	pop bc			;7d15
	jp nc,0d123h		;7d16
	ld b,e			;7d19
	ld (hl),e		;7d1a
	jp nc,02323h		;7d1b
	inc hl			;7d1e
	dec h			;7d1f
	inc hl			;7d20
	pop de			;7d21
	ld b,e			;7d22
	ld (hl),e		;7d23
	jp nc,02323h		;7d24
	inc hl			;7d27
	dec h			;7d28
	jp nc,0d123h		;7d29
	ld b,e			;7d2c
	ld (hl),e		;7d2d
	jp nc,02323h		;7d2e
	rst 28h			;7d31
	cp 010h			;7d32
	ret nc			;7d34
	sub c			;7d35
	and c			;7d36
	sub c			;7d37
	and c			;7d38
	cp 004h			;7d39
	nop			;7d3b
	nop			;7d3c
	ld de,00000h		;7d3d
	ld de,010feh		;7d40
	sub c			;7d43
	and c			;7d44
	cp 004h			;7d45
	ld de,01191h		;7d47
	sub c			;7d4a
	cp 010h			;7d4b
	sub c			;7d4d
	and c			;7d4e
	sub c			;7d4f
	inc sp			;7d50
	cp 004h			;7d51
	ret nc			;7d53
	jp (hl)			;7d54
	dec b			;7d55
	sub c			;7d56
	ld de,010feh		;7d57
	sub e			;7d5a
	sub c			;7d5b
	and b			;7d5c
	djnz l7cf0h		;7d5d
	ld hl,093a1h		;7d5f
	sub e			;7d62
	ld sp,0fe91h		;7d63
	inc b			;7d66
	ld d,(iy-043h)		;7d67
	cp 001h			;7d6a
	jp (hl)			;7d6c
	dec b			;7d6d
	xor 001h		;7d6e
	in a,(003h)		;7d70
	pop bc			;7d72
	defb 0ddh,085h ;add a,ixl	;7d73
	ld h,l			;7d75
	defb 0edh ;next byte illegal after ed	;7d76
	ex af,af'		;7d77
	jp pe,0c109h		;7d78
	pop de			;7d7b
	inc hl			;7d7c
	jp nc,0d123h		;7d7d
	ld d,e			;7d80
	inc hl			;7d81
	ld b,e			;7d82
	inc bc			;7d83
	dec b			;7d84
l7d85h:
	inc hl			;7d85
	jp nc,0d123h		;7d86
	ld d,e			;7d89
	inc hl			;7d8a
	ld b,e			;7d8b
	inc bc			;7d8c
	dec b			;7d8d
	inc hl			;7d8e
	jp nc,0d123h		;7d8f
	ld d,e			;7d92
	inc hl			;7d93
	ld b,e			;7d94
	inc bc			;7d95
	dec b			;7d96
l7d97h:
	pop de			;7d97
	inc hl			;7d98
	jp nc,0d123h		;7d99
	ld d,e			;7d9c
l7d9dh:
	inc hl			;7d9d
	ld b,e			;7d9e
	inc bc			;7d9f
	ld bc,0feefh		;7da0
	ld bc,005e9h		;7da3
	pop bc			;7da6
	xor 001h		;7da7
	ex de,hl		;7da9
	add a,a			;7daa
	djnz l7d97h		;7dab
	add hl,bc		;7dad
	defb 0edh ;next byte illegal after ed	;7dae
	rlca			;7daf
	push af			;7db0
	ret nc			;7db1
l7db2h:
	jr nz,l7d85h		;7db2
	sub b			;7db4
	jr nz,l7db2h		;7db5
	ld a,(bc)		;7db7
	push af			;7db8
	ret nc			;7db9
l7dbah:
	ld d,b			;7dba
	nop			;7dbb
	pop de			;7dbc
	jr nz,l7dbah		;7dbd
	ld a,(bc)		;7dbf
	push af			;7dc0
	ret nc			;7dc1
l7dc2h:
	ld b,b			;7dc2
	pop de			;7dc3
	or b			;7dc4
	jr nz,l7dc2h		;7dc5
	ld a,(bc)		;7dc7
	push af			;7dc8
	ret nc			;7dc9
l7dcah:
	jr nc,l7d9dh		;7dca
	and b			;7dcc
	jr nz,l7dcah		;7dcd
	add hl,bc		;7dcf
l7dd0h:
	ret nc			;7dd0
	jr nc,l7dd0h		;7dd1
	and d			;7dd3
	cp l			;7dd4
	cp 001h			;7dd5
	ret m			;7dd7
	dec b			;7dd8
	jp (hl)			;7dd9
	dec b			;7dda
	jp pe,0f50eh		;7ddb
	out (020h),a		;7dde
	jr nc,$+66		;7de0
	ld d,b			;7de2
	ld h,b			;7de3
	ld (hl),b		;7de4
	add a,b			;7de5
	sub b			;7de6
	add a,b			;7de7
	ld (hl),b		;7de8
	ld h,b			;7de9
	ld d,b			;7dea
	ld b,b			;7deb
	jr nc,l7e0eh		;7dec
	jr nc,$+66		;7dee
	ld d,b			;7df0
	ld h,b			;7df1
	ld (hl),b		;7df2
	add a,b			;7df3
	sub b			;7df4
	add a,b			;7df5
	ld (hl),b		;7df6
	ld h,b			;7df7
	ld d,b			;7df8
l7df9h:
	ld b,b			;7df9
	jr nc,$+34		;7dfa
	jr nc,l7df9h		;7dfc
	inc bc			;7dfe
	ret m			;7dff
	ld h,0eah		;7e00
	ld c,0dbh		;7e02
	ld (bc),a		;7e04
	ex de,hl		;7e05
	ld d,d			;7e06
	ld b,d			;7e07
	call nc,0e921h		;7e08
	ld (bc),a		;7e0b
	out (010h),a		;7e0c
l7e0eh:
	inc hl			;7e0e
	jp (hl)			;7e0f
	dec b			;7e10
	call nc,02121h		;7e11
	jp (hl)			;7e14
	ld (bc),a		;7e15
	out (010h),a		;7e16
	inc hl			;7e18
	jp (hl)			;7e19
	dec b			;7e1a
	call nc,02121h		;7e1b
	jp (hl)			;7e1e
	ld (bc),a		;7e1f
	call nc,02310h		;7e20
	jp (hl)			;7e23
	dec b			;7e24
	call nc,0e921h		;7e25
	ld (bc),a		;7e28
	out (010h),a		;7e29
	inc hl			;7e2b
l7e2ch:
	jp (hl)			;7e2c
	dec b			;7e2d
	call nc,02121h		;7e2e
	jp (hl)			;7e31
	ld (bc),a		;7e32
l7e33h:
	out (010h),a		;7e33
	inc hl			;7e35
	jp (hl)			;7e36
	dec b			;7e37
	call nc,0e921h		;7e38
	ld bc,l7060h		;7e3b
	add a,b			;7e3e
	sub b			;7e3f
	call nc,0b0a0h		;7e40
	out (000h),a		;7e43
	djnz $+34		;7e45
	cp 001h			;7e47
	jp (hl)			;7e49
	dec b			;7e4a
	jp pe,0eb0fh		;7e4b
	add hl,bc		;7e4e
	jr nc,l7e2ch		;7e4f
l7e51h:
	inc bc			;7e51
	ret m			;7e52
	jr z,$-41		;7e53
	ld hl,052f8h		;7e55
	call nc,02010h		;7e58
	ret m			;7e5b
	jr z,l7e33h		;7e5c
	ld hl,0f821h		;7e5e
	ld d,d			;7e61
	call nc,02010h		;7e62
	ret m			;7e65
	jr z,$-41		;7e66
	ld hl,052f8h		;7e68
	call nc,02010h		;7e6b
	djnz l7e90h		;7e6e
	ret m			;7e70
	jr z,$-41		;7e71
	ld hl,052f8h		;7e73
	call nc,02010h		;7e76
	ret m			;7e79
	jr z,l7e51h		;7e7a
	ld hl,052f8h		;7e7c
	call nc,02010h		;7e7f
	ret m			;7e82
	jr z,$-41		;7e83
	sub c			;7e85
	ret m			;7e86
	ld d,d			;7e87
	call nc,02050h		;7e88
	ld d,b			;7e8b
	sub b			;7e8c
	defb 0fdh,052h,0beh ;illegal sequence	;7e8d
l7e90h:
	cp 001h			;7e90
	ret m			;7e92
	dec b			;7e93
	jp (hl)			;7e94
	dec b			;7e95
	xor 009h		;7e96
	jp pe,0c10ah		;7e98
	push af			;7e9b
	out (020h),a		;7e9c
	jr nc,l7ee0h		;7e9e
	ld d,b			;7ea0
	ld h,b			;7ea1
	ld (hl),b		;7ea2
	add a,b			;7ea3
	sub b			;7ea4
	add a,b			;7ea5
	ld (hl),b		;7ea6
	ld h,b			;7ea7
	ld d,b			;7ea8
	ld b,b			;7ea9
	jr nc,$+34		;7eaa
	jr nc,$+66		;7eac
	ld d,b			;7eae
	ld h,b			;7eaf
	ld (hl),b		;7eb0
	add a,b			;7eb1
	sub b			;7eb2
	add a,b			;7eb3
	ld (hl),b		;7eb4
	ld h,b			;7eb5
	ld d,b			;7eb6
l7eb7h:
	ld b,b			;7eb7
	jr nc,$+34		;7eb8
	djnz l7eb7h		;7eba
	ld (bc),a		;7ebc
	out (020h),a		;7ebd
	jr nc,l7f01h		;7ebf
	ld d,b			;7ec1
	ld h,b			;7ec2
	ld (hl),b		;7ec3
	add a,b			;7ec4
	sub b			;7ec5
	add a,b			;7ec6
	ld (hl),b		;7ec7
	ld h,b			;7ec8
	ld d,b			;7ec9
l7ecah:
	ld b,b			;7eca
	jr nc,l7eedh		;7ecb
	jr nc,l7f0fh		;7ecd
	ld d,b			;7ecf
	ld h,b			;7ed0
	ld (hl),b		;7ed1
	add a,b			;7ed2
	sub b			;7ed3
	add a,b			;7ed4
	ld (hl),b		;7ed5
	ld h,b			;7ed6
	ld d,b			;7ed7
	ld b,b			;7ed8
	jr nc,l7ecah		;7ed9
	ret m			;7edb
	ld h,0eah		;7edc
	ld c,0dbh		;7ede
l7ee0h:
	ld (bc),a		;7ee0
	ex de,hl		;7ee1
	ld d,d			;7ee2
	ld b,d			;7ee3
	call nc,0e991h		;7ee4
	ld (bc),a		;7ee7
	out (080h),a		;7ee8
	sub e			;7eea
	jp (hl)			;7eeb
	dec b			;7eec
l7eedh:
	call nc,09191h		;7eed
	jp (hl)			;7ef0
	ld (bc),a		;7ef1
	out (080h),a		;7ef2
	sub e			;7ef4
	jp (hl)			;7ef5
	dec b			;7ef6
	call nc,09191h		;7ef7
	jp (hl)			;7efa
	ld (bc),a		;7efb
	call nc,09380h		;7efc
	jp (hl)			;7eff
	dec b			;7f00
l7f01h:
	push de			;7f01
	sub c			;7f02
	jp (hl)			;7f03
	ld (bc),a		;7f04
l7f05h:
	call nc,09380h		;7f05
	jp (hl)			;7f08
	dec b			;7f09
	push de			;7f0a
	sub c			;7f0b
	sub c			;7f0c
l7f0dh:
	jp (hl)			;7f0d
	ld (bc),a		;7f0e
l7f0fh:
	call nc,09380h		;7f0f
	jp (hl)			;7f12
	dec b			;7f13
	push de			;7f14
	sub c			;7f15
	jp (hl)			;7f16
	ld bc,010d4h		;7f17
	jr nz,l7f4ch		;7f1a
	ld b,b			;7f1c
	ld d,b			;7f1d
	ld h,b			;7f1e
	ld (hl),b		;7f1f
	add a,b			;7f20
	sub b			;7f21
	cp 001h			;7f22
	jp (hl)			;7f24
	dec b			;7f25
	ret m			;7f26
	ld a,(bc)		;7f27
	ex de,hl		;7f28
	add hl,bc		;7f29
	ld b,b			;7f2a
	in a,(003h)		;7f2b
	jp pe,0f50dh		;7f2d
	pop de			;7f30
l7f31h:
	jr nz,l7f05h		;7f31
	sub b			;7f33
	jr nz,l7f31h		;7f34
	add hl,bc		;7f36
l7f37h:
	ret m			;7f37
l7f38h:
	dec bc			;7f38
	ret nc			;7f39
	jr nz,l7f0dh		;7f3a
	sub b			;7f3c
	jr nz,l7f37h		;7f3d
	ld a,(bc)		;7f3f
l7f40h:
	push af			;7f40
	pop de			;7f41
	ld d,b			;7f42
	nop			;7f43
	jp nc,0fb20h		;7f44
	add hl,bc		;7f47
l7f48h:
	ret m			;7f48
	dec bc			;7f49
	ret nc			;7f4a
	ld d,b			;7f4b
l7f4ch:
	nop			;7f4c
	pop de			;7f4d
	jr nz,l7f48h		;7f4e
	ld a,(bc)		;7f50
	push af			;7f51
	pop de			;7f52
	ld b,b			;7f53
	jp nc,020b0h		;7f54
	ei			;7f57
	add hl,bc		;7f58
l7f59h:
	ret m			;7f59
	dec bc			;7f5a
	ret nc			;7f5b
	ld b,b			;7f5c
	pop de			;7f5d
	or b			;7f5e
	jr nz,l7f59h		;7f5f
	ld a,(bc)		;7f61
	push af			;7f62
	pop de			;7f63
l7f64h:
	jr nc,l7f38h		;7f64
	and b			;7f66
	jr nz,l7f64h		;7f67
	add hl,bc		;7f69
	ret m			;7f6a
	dec bc			;7f6b
	ret nc			;7f6c
	jr nc,l7f40h		;7f6d
l7f6fh:
	and b			;7f6f
	jr nz,l7f6fh		;7f70
	ld (0febfh),hl		;7f72
	ld bc,005e9h		;7f75
	ret m			;7f78
	dec e			;7f79
	dec (ix+065h)		;7f7a
	jp pe,0f50ch		;7f7d
	jp nc,0d123h		;7f80
	ld b,e			;7f83
	ld (hl),e		;7f84
	jp nc,0d223h		;7f85
	inc hl			;7f88
	inc hl			;7f89
	inc hl			;7f8a
	pop de			;7f8b
	ld hl,004fbh		;7f8c
	cp 001h			;7f8f
	ret m			;7f91
	inc d			;7f92
	jp (hl)			;7f93
	dec b			;7f94
	dec (ix+065h)		;7f95
	jp pe,0f20ch		;7f98
	djnz $-13		;7f9b
	ld b,h			;7f9d
	jp nc,0d123h		;7f9e
	ld b,e			;7fa1
	ld (hl),e		;7fa2
	jp nc,0d223h		;7fa3
	inc hl			;7fa6
	inc hl			;7fa7
	inc hl			;7fa8
	pop de			;7fa9
	ld hl,09efdh		;7faa
	cp a			;7fad
	cp 001h			;7fae
	jp (hl)			;7fb0
	dec b			;7fb1
	ret m			;7fb2
	dec e			;7fb3
	dec (ix+065h)		;7fb4
	jp pe,0c10dh		;7fb7
	push af			;7fba
	pop de			;7fbb
	inc hl			;7fbc
	jp nc,0d123h		;7fbd
	ld d,e			;7fc0
	inc hl			;7fc1
	ld b,e			;7fc2
	inc bc			;7fc3
	dec b			;7fc4
	ei			;7fc5
	inc bc			;7fc6
	pop de			;7fc7
	inc hl			;7fc8
	jp nc,0d123h		;7fc9
	ld d,e			;7fcc
	inc hl			;7fcd
	ld b,e			;7fce
	inc bc			;7fcf
l7fd0h:
	inc bc			;7fd0
	cp 001h			;7fd1
	ret m			;7fd3
	inc d			;7fd4
	jp (hl)			;7fd5
	dec b			;7fd6
	dec (ix+065h)		;7fd7
	jp pe,0f20ch		;7fda
	djnz l7fd0h		;7fdd
	ld b,h			;7fdf
	pop bc			;7fe0
	pop de			;7fe1
	inc hl			;7fe2
	jp nc,0d123h		;7fe3
	ld d,e			;7fe6
	inc hl			;7fe7
	ld b,e			;7fe8
	inc bc			;7fe9
	dec b			;7fea
	pop iy			;7feb
	cp a			;7fed
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
