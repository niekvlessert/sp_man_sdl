; z80dasm 1.2.0
; command line: z80dasm -a -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank04_6000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank04.bin

	org 06000h

	jp l625eh		;6000
	jp l6214h		;6003
	jp l601eh		;6006
	jp l60b4h		;6009
	jp l6459h		;600c
	jp l606ah		;600f
	jp l62cbh		;6012
	jp l78e1h		;6015
	jp l7de4h		;6018
	jp l7df1h		;601b
l601eh:
	call sub_60fah		;601e
	call sub_6056h		;6021
	call sub_6035h		;6024
	call sub_6048h		;6027
	call sub_6485h		;602a
	ld a,(0ce74h)		;602d
	or a			;6030
	ret z			;6031
	jp l607dh		;6032
sub_6035h:
	ld hl,0ce4fh		;6035
	ld a,(hl)		;6038
	and a			;6039
	ret z			;603a
	ld b,002h		;603b
	cp b			;603d
	jr z,l6042h		;603e
	ld (hl),b		;6040
	ret			;6041
l6042h:
	ld a,001h		;6042
	ld (0ca0fh),a		;6044
	ret			;6047
sub_6048h:
	ld hl,0cb06h		;6048
	ld a,(hl)		;604b
	ld (hl),000h		;604c
	and 00fh		;604e
	cp 002h			;6050
	ret c			;6052
	ld (hl),080h		;6053
	ret			;6055
sub_6056h:
	ld bc,01440h		;6056
	ld ix,0ce80h		;6059
l605dh:
	push bc			;605d
	call l606ah		;605e
	pop bc			;6061
	ld e,c			;6062
	ld d,000h		;6063
	add ix,de		;6065
	djnz l605dh		;6067
	ret			;6069
l606ah:
	call sub_6e2ch		;606a
	ret z			;606d
	jp c,l7d9ch		;606e
	jp l64a2h		;6071
	ld a,(ix+034h)		;6074
	bit 6,a			;6077
	ret z			;6079
	jp l6e98h		;607a
l607dh:
	ld bc,01440h		;607d
	ld ix,0ce80h		;6080
l6084h:
	push bc			;6084
	ld a,(ix+000h)		;6085
	cp 01bh			;6088
	call z,sub_609ah	;608a
	pop bc			;608d
	ld e,c			;608e
	ld d,000h		;608f
	add ix,de		;6091
	djnz l6084h		;6093
	xor a			;6095
	ld (0ce74h),a		;6096
	ret			;6099
sub_609ah:
	ld d,(ix+00ah)		;609a
	ld e,(ix+008h)		;609d
	inc d			;60a0
	inc e			;60a1
	call sub_7b06h		;60a2
	ld a,(de)		;60a5
	sub 0cbh		;60a6
	cp 003h			;60a8
	ret nc			;60aa
	ld (ix+016h),000h	;60ab
	ld (ix+004h),001h	;60af
	ret			;60b3
l60b4h:
	call sub_60beh		;60b4
	call sub_60d0h		;60b7
	call sub_60c7h		;60ba
	ret			;60bd
sub_60beh:
	ld hl,0ce40h		;60be
	ld bc,0053fh		;60c1
	jp 04648h		;60c4
sub_60c7h:
	ld hl,0d440h		;60c7
	ld bc,0025fh		;60ca
	jp 04648h		;60cd
sub_60d0h:
	ld a,014h		;60d0
	ld (0ce44h),a		;60d2
	ret			;60d5
sub_60d6h:
	inc hl			;60d6
	inc hl			;60d7
	ld a,(hl)		;60d8
	dec a			;60d9
	ex de,hl		;60da
	cp 003h			;60db
	jp nc,04ae0h		;60dd
	call 0461ah		;60e0
	jp (hl)			;60e3
	ld h,b			;60e4
	jp (hl)			;60e5
	ld h,b			;60e6
	call p,0eb60h		;60e7
	ld a,(hl)		;60ea
	ld (0ce60h),a		;60eb
	inc hl			;60ee
	ld a,(hl)		;60ef
	ld (0ce61h),a		;60f0
	ret			;60f3
	ex de,hl		;60f4
	ld a,(hl)		;60f5
	ld (0ce60h),a		;60f6
	ret			;60f9
sub_60fah:
	ld a,(0ce60h)		;60fa
	and a			;60fd
	ret z			;60fe
	dec a			;60ff
	jr z,l6125h		;6100
	dec a			;6102
	jr z,l6105h		;6103
l6105h:
	ld bc,01440h		;6105
	ld ix,0ce80h		;6108
l610ch:
	push bc			;610c
	ld a,(ix+000h)		;610d
	cp 065h			;6110
	jr z,l6118h		;6112
	and a			;6114
	call nz,l6e98h		;6115
l6118h:
	pop bc			;6118
	ld d,000h		;6119
	ld e,c			;611b
	add ix,de		;611c
	djnz l610ch		;611e
	xor a			;6120
l6121h:
	ld (0ce60h),a		;6121
	ret			;6124
l6125h:
	ld a,(0ce61h)		;6125
	and a			;6128
l6129h:
	jr z,l6173h		;6129
l612bh:
	ld l,a			;612b
	ld a,(0ca02h)		;612c
	and 001h		;612f
	ret nz			;6131
	dec l			;6132
	ld h,000h		;6133
	ld de,l617eh		;6135
	add hl,hl		;6138
	add hl,de		;6139
	ld e,(hl)		;613a
	inc hl			;613b
	ld d,(hl)		;613c
	ld a,(de)		;613d
	ld c,a			;613e
	inc de			;613f
	ld hl,0ce68h		;6140
	ld b,(hl)		;6143
	inc (hl)		;6144
	cp b			;6145
l6146h:
	jr nz,l614ch		;6146
l6148h:
	ld (hl),000h		;6148
l614ah:
	ld b,000h		;614a
l614ch:
	push de			;614c
	push bc			;614d
l614eh:
	ld l,b			;614e
	ld h,000h		;614f
	add hl,hl		;6151
	add hl,de		;6152
	ld d,(hl)		;6153
	inc hl			;6154
	ld b,(hl)		;6155
	ld a,b			;6156
	and 00fh		;6157
	ld e,a			;6159
	ld a,b			;615a
	rlca			;615b
	rlca			;615c
	rlca			;615d
	rlca			;615e
	and 00fh		;615f
	call 04776h		;6161
	pop bc			;6164
	pop de			;6165
	ld l,c			;6166
	ld h,000h		;6167
	add hl,hl		;6169
	add hl,de		;616a
	ld a,(hl)		;616b
	add a,001h		;616c
	ret c			;616e
	inc hl			;616f
	ex de,hl		;6170
	jr l614ch		;6171
l6173h:
	xor a			;6173
	ld (0ce60h),a		;6174
	ld (0ce61h),a		;6177
	ld (0ce68h),a		;617a
	ret			;617d
l617eh:
	adc a,b			;617e
	ld h,c			;617f
	sbc a,(hl)		;6180
	ld h,c			;6181
	pop bc			;6182
	ld h,c			;6183
	call c,0fe61h		;6184
	ld h,c			;6187
	ld a,(bc)		;6188
	nop			;6189
	sub b			;618a
	djnz $-110		;618b
	jr nz,$-110		;618d
	jr nc,l6121h		;618f
	ld b,b			;6191
	sub b			;6192
	ld d,b			;6193
	sub b			;6194
	ld b,b			;6195
	sub b			;6196
l6197h:
	jr nc,l6129h		;6197
	jr nz,l612bh		;6199
	djnz $-110		;619b
	rst 38h			;619d
	ex af,af'		;619e
	ld (hl),b		;619f
	ld b,h			;61a0
	ld h,b			;61a1
	ld b,e			;61a2
	ld d,b			;61a3
	ld b,d			;61a4
	ld b,b			;61a5
	ld b,c			;61a6
	jr nc,l61e9h		;61a7
	ld b,b			;61a9
	ld b,c			;61aa
	ld d,b			;61ab
	ld b,d			;61ac
	ld h,b			;61ad
	ld b,e			;61ae
	cp 070h			;61af
	sub b			;61b1
	ld d,b			;61b2
	sub b			;61b3
	jr nc,l6146h		;61b4
	jr nz,l6148h		;61b6
	djnz l614ah		;61b8
	jr nz,l614ch		;61ba
	jr nc,l614eh		;61bc
	ld d,b			;61be
	sub b			;61bf
	rst 38h			;61c0
	ld b,077h		;61c1
	or a			;61c3
	ld (hl),h		;61c4
	or l			;61c5
	ld (hl),d		;61c6
	or e			;61c7
	ld (hl),b		;61c8
	or c			;61c9
	ld (hl),d		;61ca
	or e			;61cb
	ld (hl),h		;61cc
	or l			;61cd
	cp 074h			;61ce
	push bc			;61d0
	ld (hl),b		;61d1
	pop bc			;61d2
	ld d,b			;61d3
	ret nz			;61d4
	jr nc,l6197h		;61d5
	ld d,b			;61d7
	ret nz			;61d8
	ld (hl),b		;61d9
	pop bc			;61da
	rst 38h			;61db
	djnz $+89		;61dc
	sub (hl)		;61de
	ld b,a			;61df
	sub l			;61e0
	scf			;61e1
	sub h			;61e2
	daa			;61e3
	sub e			;61e4
	ld d,092h		;61e5
	dec b			;61e7
	sub c			;61e8
l61e9h:
	inc b			;61e9
	sub b			;61ea
	inc bc			;61eb
	sub b			;61ec
	inc bc			;61ed
	sub b			;61ee
	inc b			;61ef
	sub b			;61f0
	dec b			;61f1
	sub c			;61f2
	ld d,092h		;61f3
	daa			;61f5
	sub e			;61f6
	scf			;61f7
	sub h			;61f8
	ld b,a			;61f9
	sub l			;61fa
	ld d,a			;61fb
	sub (hl)		;61fc
	rst 38h			;61fd
	ld a,(bc)		;61fe
	ld (hl),a		;61ff
	sub a			;6200
l6201h:
	ld h,a			;6201
l6202h:
	sub (hl)		;6202
l6203h:
	ld d,a			;6203
l6204h:
	sub l			;6204
l6205h:
	ld b,(hl)		;6205
l6206h:
	sub h			;6206
l6207h:
	dec (hl)		;6207
	sub e			;6208
	inc h			;6209
	sub d			;620a
	dec (hl)		;620b
	sub e			;620c
	ld b,(hl)		;620d
	sub h			;620e
	ld d,a			;620f
	sub l			;6210
	ld h,a			;6211
	sub (hl)		;6212
	rst 38h			;6213
l6214h:
	ld a,(0e900h)		;6214
	and a			;6217
	call z,sub_6222h	;6218
	ld hl,0e900h		;621b
	ld (0ce42h),hl		;621e
	ret			;6221
sub_6222h:
	ld de,093b8h		;6222
	ld hl,(0ca10h)		;6225
	ld h,000h		;6228
	add hl,hl		;622a
	add hl,de		;622b
	ld e,(hl)		;622c
	inc hl			;622d
	ld d,(hl)		;622e
	ld hl,0e900h		;622f
	ex de,hl		;6232
	ld bc,00600h		;6233
	ldir			;6236
	ret			;6238
sub_6239h:
	ld a,(0ce7fh)		;6239
	or a			;623c
	ret z			;623d
	call sub_69a3h		;623e
	ret c			;6241
	ld (ix+031h),081h	;6242
	ld (ix+032h),0eeh	;6246
	ld a,(0ee80h)		;624a
	ld (ix+030h),a		;624d
	ld a,(0ee81h)		;6250
	ld (ix+02fh),a		;6253
	call sub_6344h		;6256
	xor a			;6259
	ld (0ce7fh),a		;625a
	ret			;625d
l625eh:
	call sub_6239h		;625e
	ld hl,(0ce42h)		;6261
	ld a,(hl)		;6264
	and a			;6265
	ret z			;6266
	ld d,a			;6267
	inc hl			;6268
	ld e,(hl)		;6269
	inc hl			;626a
	ld b,(hl)		;626b
	and a			;626c
	jp p,l6279h		;626d
	and 07fh		;6270
	ld d,a			;6272
	ld a,(0ca04h)		;6273
	and a			;6276
	jr z,l62abh		;6277
l6279h:
	push hl			;6279
	ld hl,(0ca34h)		;627a
	call 04650h		;627d
	pop hl			;6280
	ret c			;6281
	jr nz,l62abh		;6282
	ld a,b			;6284
	bit 7,a			;6285
	jr z,l6293h		;6287
	and 07fh		;6289
	ld b,a			;628b
	ld a,(0ca19h)		;628c
	cp 004h			;628f
	jr c,l62abh		;6291
l6293h:
	push hl			;6293
	call sub_62bbh		;6294
	jr z,l62aah		;6297
	ld a,(0ca33h)		;6299
	or a			;629c
	call nz,sub_6306h	;629d
	jr c,l62aah		;62a0
	call sub_66d0h		;62a2
	jr c,l62aah		;62a5
	call sub_6344h		;62a7
l62aah:
	pop hl			;62aa
l62abh:
	inc hl			;62ab
	ld a,(hl)		;62ac
	and 07fh		;62ad
	dec a			;62af
	dec a			;62b0
	dec a			;62b1
	ld e,a			;62b2
	ld d,000h		;62b3
	add hl,de		;62b5
	ld (0ce42h),hl		;62b6
	jr l625eh		;62b9
sub_62bbh:
	ld a,b			;62bb
	cp 05fh			;62bc
	ret nz			;62be
	call sub_60d6h		;62bf
	xor a			;62c2
	ret			;62c3
	ld hl,0e900h		;62c4
	ld (0ca34h),hl		;62c7
	ret			;62ca
l62cbh:
	ld ix,0ce80h		;62cb
	ld b,014h		;62cf
l62d1h:
	ld a,(ix+000h)		;62d1
	and a			;62d4
	jr z,l62feh		;62d5
	ld a,(ix+015h)		;62d7
	bit 2,a			;62da
	jr z,l62feh		;62dc
	ld hl,(0ca12h)		;62de
	ld e,(ix+007h)		;62e1
	ld d,(ix+008h)		;62e4
	add hl,de		;62e7
	ld (ix+007h),l		;62e8
	ld (ix+008h),h		;62eb
	ld hl,(0ca14h)		;62ee
	ld e,(ix+009h)		;62f1
	ld d,(ix+00ah)		;62f4
	add hl,de		;62f7
	ld (ix+009h),l		;62f8
	ld (ix+00ah),h		;62fb
l62feh:
	ld de,00040h		;62fe
	add ix,de		;6301
	djnz l62d1h		;6303
	ret			;6305
sub_6306h:
	ld de,l6315h		;6306
l6309h:
	ld a,(de)		;6309
	inc a			;630a
	jr z,l6313h		;630b
	dec a			;630d
	inc de			;630e
	cp b			;630f
	ret z			;6310
	jr l6309h		;6311
l6313h:
	scf			;6313
	ret			;6314
l6315h:
	inc de			;6315
	rla			;6316
	add hl,de		;6317
	rra			;6318
	jr nz,l633ch		;6319
	ld (02624h),hl		;631b
	daa			;631e
	jr z,l634ah		;631f
	ld hl,(02c2bh)		;6321
	dec l			;6324
	ld l,02fh		;6325
	jr nc,l635ah		;6327
	ld (03534h),a		;6329
	ld (hl),038h		;632c
	add hl,sp		;632e
	ld a,(04841h)		;632f
	ld c,c			;6332
	ld c,d			;6333
	ld c,e			;6334
	ld c,h			;6335
	ld c,l			;6336
	ld c,(hl)		;6337
	ld c,a			;6338
	ld d,b			;6339
	ld d,l			;633a
	ld d,(hl)		;633b
l633ch:
	ld e,d			;633c
	ld e,a			;633d
	ld h,l			;633e
	ld (hl),d		;633f
	ld (hl),e		;6340
	ld (hl),h		;6341
	ld (hl),l		;6342
	rst 38h			;6343
sub_6344h:
	ld a,(ix+000h)		;6344
	and a			;6347
	ret z			;6348
	ld b,a			;6349
l634ah:
	rlca			;634a
	ret c			;634b
	ld a,b			;634c
	dec a			;634d
	cp 07ch			;634e
	jp nc,04ae0h		;6350
	ld l,a			;6353
	ld h,000h		;6354
	add hl,hl		;6356
	ld de,l6360h		;6357
l635ah:
	add hl,de		;635a
	ld e,(hl)		;635b
	inc hl			;635c
	ld d,(hl)		;635d
	ex de,hl		;635e
	jp (hl)			;635f
l6360h:
	inc b			;6360
l6361h:
	ld d,c			;6361
	inc b			;6362
	ld d,c			;6363
	call 00450h		;6364
	ld d,c			;6367
	inc b			;6368
	ld d,c			;6369
	inc b			;636a
	ld d,c			;636b
	inc b			;636c
	ld d,c			;636d
	inc b			;636e
	ld d,c			;636f
	inc b			;6370
	ld d,c			;6371
	inc b			;6372
	ld d,c			;6373
	inc b			;6374
	ld d,c			;6375
	inc b			;6376
	ld d,c			;6377
	dec c			;6378
	ld c,a			;6379
	inc e			;637a
	ld c,a			;637b
	nop			;637c
	ld c,a			;637d
	sub c			;637e
	ld d,d			;637f
	dec b			;6380
	ld d,e			;6381
	ld e,d			;6382
	ld d,e			;6383
	cp e			;6384
	ld d,e			;6385
	ld hl,(009aeh)		;6386
	add a,b			;6389
	jr c,l63e0h		;638a
	adc a,a			;638c
	add a,b			;638d
	ret			;638e
	ld d,h			;638f
	sub d			;6390
	ld d,l			;6391
	ld l,h			;6392
	ld d,a			;6393
	or l			;6394
	ld e,e			;6395
	ld b,c			;6396
	cp d			;6397
	xor e			;6398
	cp d			;6399
	ld (hl),l		;639a
	cp e			;639b
	ld d,e			;639c
	cp h			;639d
	cp 0bch			;639e
	ld a,(bc)		;63a0
	ld d,b			;63a1
	jr l6361h		;63a2
	ld a,d			;63a4
	cp l			;63a5
	and c			;63a6
	cp l			;63a7
	rst 20h			;63a8
	cp l			;63a9
	ld l,e			;63aa
	cp (hl)			;63ab
	ld d,b			;63ac
	add a,c			;63ad
	add hl,hl		;63ae
	add a,d			;63af
	ret nc			;63b0
	add a,d			;63b1
	scf			;63b2
	add a,e			;63b3
	ld b,a			;63b4
	add a,e			;63b5
	or l			;63b6
	add a,e			;63b7
	ld sp,01284h		;63b8
	add a,l			;63bb
	and h			;63bc
	add a,(hl)		;63bd
	ld e,a			;63be
	add a,a			;63bf
	rst 18h			;63c0
	ld e,h			;63c1
	cp e			;63c2
	add a,a			;63c3
	add hl,bc		;63c4
	adc a,b			;63c5
	rrca			;63c6
	adc a,c			;63c7
	rra			;63c8
	adc a,c			;63c9
	xor (hl)		;63ca
	adc a,d			;63cb
	ld h,c			;63cc
	ld d,c			;63cd
	ld sp,hl		;63ce
	adc a,e			;63cf
	ld a,(02b8ch)		;63d0
	adc a,l			;63d3
	sub c			;63d4
	and c			;63d5
	or a			;63d6
	and d			;63d7
	ld (hl),0a5h		;63d8
	ld h,a			;63da
	and (hl)		;63db
	ld d,e			;63dc
	xor b			;63dd
	adc a,e			;63de
	and l			;63df
l63e0h:
	dec sp			;63e0
	adc a,l			;63e1
	adc a,d			;63e2
	ld e,d			;63e3
	sub h			;63e4
	adc a,(hl)		;63e5
	and a			;63e6
	adc a,a			;63e7
	inc h			;63e8
	sub b			;63e9
	ccf			;63ea
	sub b			;63eb
	ld sp,0c95bh		;63ec
	sub c			;63ef
	push af			;63f0
	sub d			;63f1
	sbc a,d			;63f2
	sub e			;63f3
	halt			;63f4
	sub h			;63f5
	add a,b			;63f6
	sub h			;63f7
	jp m,04794h		;63f8
	sub (hl)		;63fb
	and b			;63fc
	sub (hl)		;63fd
	xor b			;63fe
	ld e,d			;63ff
	ld e,b			;6400
	ld h,h			;6401
	ld b,b			;6402
	sbc a,c			;6403
	ld c,h			;6404
	sbc a,c			;6405
	and e			;6406
	sbc a,c			;6407
	ld de,02959h		;6408
	cp a			;640b
	ld e,b			;640c
	ld h,h			;640d
	ld l,a			;640e
	or b			;640f
	ret z			;6410
	or (hl)			;6411
	dec bc			;6412
	sbc a,b			;6413
	ld e,b			;6414
	ld h,h			;6415
	jr z,$-68		;6416
	ld e,b			;6418
	ld h,h			;6419
	rst 20h			;641a
	or (hl)			;641b
	ld e,b			;641c
	ld h,h			;641d
	ld hl,(0fa5bh)		;641e
	sbc a,e			;6421
	ld b,b			;6422
	sbc a,d			;6423
	rst 38h			;6424
	sbc a,a			;6425
	nop			;6426
	and e			;6427
	adc a,d			;6428
	ld e,l			;6429
	ld (hl),d		;642a
	sbc a,h			;642b
	dec e			;642c
	sbc a,l			;642d
	ld e,051h		;642e
	add a,d			;6430
	sbc a,d			;6431
	ld e,b			;6432
	ld h,h			;6433
	ld e,b			;6434
	ld h,h			;6435
	ld e,b			;6436
	ld h,h			;6437
	ld e,b			;6438
	ld h,h			;6439
	ld c,l			;643a
	sbc a,a			;643b
	cp (hl)			;643c
	sbc a,a			;643d
	ld e,09dh		;643e
	pop bc			;6440
	or b			;6441
	pop af			;6442
	adc a,d			;6443
	ld h,c			;6444
	sub h			;6445
	ld a,d			;6446
	sbc a,(hl)		;6447
	ld a,e			;6448
	sbc a,(hl)		;6449
	ld hl,(0e3b4h)		;644a
	or b			;644d
	ld c,b			;644e
	xor d			;644f
	pop bc			;6450
	sub (hl)		;6451
	rrca			;6452
	and b			;6453
	ld c,e			;6454
	or l			;6455
	add a,d			;6456
	or a			;6457
	ret			;6458
l6459h:
	ld bc,(0f0f2h)		;6459
	push bc			;645d
	call 04b99h		;645e
	call sub_6472h		;6461
	pop bc			;6464
	ld (0f0f2h),bc		;6465
	ld a,c			;6469
	ld (09000h),a		;646a
	ld a,b			;646d
	ld (0b000h),a		;646e
	ret			;6471
sub_6472h:
	ld a,(ix+000h)		;6472
	cp 003h			;6475
	jp z,05100h		;6477
	cp 04dh			;647a
	jp z,095ddh		;647c
	cp 027h			;647f
	jp z,081aah		;6481
	ret			;6484
sub_6485h:
	ld bc,01220h		;6485
	ld ix,0d460h		;6488
l648ch:
	push bc			;648c
	ld a,(ix+000h)		;648d
	and a			;6490
	jr z,l6496h		;6491
	call sub_649fh		;6493
l6496h:
	pop bc			;6496
	ld e,c			;6497
	ld d,000h		;6498
	add ix,de		;649a
	djnz l648ch		;649c
	ret			;649e
sub_649fh:
	jp l64a2h		;649f
l64a2h:
	call sub_6a7fh		;64a2
	ld a,(ix+000h)		;64a5
	ld (0f0feh),a		;64a8
	dec a			;64ab
	cp 05eh			;64ac
	call nz,sub_6c21h	;64ae
	call sub_64b9h		;64b1
	xor a			;64b4
	ld (0f0feh),a		;64b5
	ret			;64b8
sub_64b9h:
	cp 07ch			;64b9
	jp nc,04ae0h		;64bb
	ld l,a			;64be
	ld h,000h		;64bf
	add hl,hl		;64c1
	add hl,hl		;64c2
	ld de,l64d1h		;64c3
	add hl,de		;64c6
	ld e,(hl)		;64c7
	inc hl			;64c8
	ld d,(hl)		;64c9
	push de			;64ca
	inc hl			;64cb
	ld e,(hl)		;64cc
	inc hl			;64cd
	ld d,(hl)		;64ce
	ex de,hl		;64cf
	jp (hl)			;64d0
l64d1h:
	push af			;64d1
	ld l,l			;64d2
	ld de,0f551h		;64d3
	ld l,l			;64d6
	ld de,0f551h		;64d7
	ld l,l			;64da
	ret nc			;64db
	ld d,b			;64dc
	push af			;64dd
	ld l,l			;64de
	ld de,0f551h		;64df
	ld l,l			;64e2
	ld de,0f551h		;64e3
	ld l,l			;64e6
	ld de,0f551h		;64e7
	ld l,l			;64ea
	ld de,0f551h		;64eb
	ld l,l			;64ee
	ld de,0f551h		;64ef
	ld l,l			;64f2
	ld de,0f551h		;64f3
	ld l,l			;64f6
	ld de,0f551h		;64f7
	ld l,l			;64fa
	ld de,0f551h		;64fb
	ld l,l			;64fe
	ld de,0f551h		;64ff
	ld l,l			;6502
	dec c			;6503
	ld c,a			;6504
	dec (hl)		;6505
	ld l,(hl)		;6506
	inc sp			;6507
	ld c,a			;6508
	push af			;6509
	ld l,l			;650a
	nop			;650b
	ld c,a			;650c
	push af			;650d
	ld l,l			;650e
	adc a,b			;650f
	ld d,d			;6510
	push af			;6511
	ld l,l			;6512
	call p,0f552h		;6513
	ld l,l			;6516
	ld c,(hl)		;6517
	ld d,e			;6518
	push af			;6519
	ld l,l			;651a
	call nz,04453h		;651b
	ld l,(hl)		;651e
	ld a,(bc)		;651f
	xor (hl)		;6520
	push af			;6521
	ld l,l			;6522
	nop			;6523
	add a,b			;6524
	push af			;6525
	ld l,l			;6526
	inc l			;6527
	ld d,h			;6528
	push af			;6529
	ld l,l			;652a
	ld a,a			;652b
	add a,b			;652c
	push af			;652d
l652eh:
	ld l,l			;652e
	pop bc			;652f
	ld d,h			;6530
	push af			;6531
	ld l,l			;6532
	ld a,h			;6533
	ld d,l			;6534
	push af			;6535
	ld l,l			;6536
	ld h,e			;6537
	ld d,a			;6538
	out (06dh),a		;6539
	jp nz,0e15bh		;653b
	ld l,l			;653e
	dec sp			;653f
	cp d			;6540
	push af			;6541
	ld l,l			;6542
	sbc a,a			;6543
	cp d			;6544
	push af			;6545
	ld l,l			;6546
	ld l,c			;6547
	cp e			;6548
	jp nz,03a66h		;6549
	cp h			;654c
	jp nz,0ec66h		;654d
	cp h			;6550
	pop hl			;6551
	ld l,l			;6552
	pop af			;6553
	ld c,a			;6554
	pop hl			;6555
	ld l,l			;6556
	rrca			;6557
	cp l			;6558
	dec (hl)		;6559
	ld l,(hl)		;655a
	ld (hl),h		;655b
	cp l			;655c
	jp nz,09b66h		;655d
	cp l			;6560
	push af			;6561
	ld l,l			;6562
	in a,(0bdh)		;6563
	pop hl			;6565
	ld l,l			;6566
	ld e,a			;6567
	cp (hl)			;6568
	pop hl			;6569
l656ah:
	ld l,l			;656a
	ld (hl),b		;656b
	add a,c			;656c
	dec (hl)		;656d
	ld l,(hl)		;656e
	dec e			;656f
	add a,d			;6570
	pop hl			;6571
	ld l,l			;6572
	jp z,00982h		;6573
	ld l,(hl)		;6576
	jr c,$-123		;6577
	dec (hl)		;6579
	ld l,(hl)		;657a
	ld b,c			;657b
	add a,e			;657c
	dec (hl)		;657d
	ld l,(hl)		;657e
	cp a			;657f
	add a,e			;6580
	add hl,bc		;6581
	ld l,(hl)		;6582
	ld c,l			;6583
	add a,h			;6584
	dec (hl)		;6585
	ld l,(hl)		;6586
	ld sp,hl		;6587
	add a,h			;6588
	push af			;6589
	ld l,l			;658a
	sub h			;658b
	add a,(hl)		;658c
	out (06dh),a		;658d
	sbc a,e			;658f
	add a,a			;6590
	push af			;6591
	ld l,l			;6592
	di			;6593
	ld e,h			;6594
	pop hl			;6595
	ld l,l			;6596
	pop bc			;6597
	add a,a			;6598
	push af			;6599
	ld l,l			;659a
	pop af			;659b
	add a,a			;659c
	push af			;659d
	ld l,l			;659e
	rrca			;659f
	adc a,c			;65a0
	push af			;65a1
	ld l,l			;65a2
	djnz l652eh		;65a3
	pop hl			;65a5
	ld l,l			;65a6
	xor (hl)		;65a7
	adc a,d			;65a8
	out (06dh),a		;65a9
	ld c,h			;65ab
	ld d,c			;65ac
	dec (hl)		;65ad
	ld l,(hl)		;65ae
	di			;65af
	adc a,e			;65b0
	dec (hl)		;65b1
	ld l,(hl)		;65b2
	inc (hl)		;65b3
	adc a,h			;65b4
	dec (hl)		;65b5
	ld l,(hl)		;65b6
	dec hl			;65b7
	adc a,l			;65b8
	push af			;65b9
	ld l,l			;65ba
	ld a,e			;65bb
	and c			;65bc
	ld b,h			;65bd
	ld l,(hl)		;65be
	or c			;65bf
	and d			;65c0
	ld b,h			;65c1
	ld l,(hl)		;65c2
	jr nc,l656ah		;65c3
	ld b,h			;65c5
	ld l,(hl)		;65c6
	ld b,a			;65c7
	and (hl)		;65c8
	push af			;65c9
	ld l,l			;65ca
	ld d,e			;65cb
	xor b			;65cc
	push af			;65cd
	ld l,l			;65ce
	ld a,a			;65cf
	and l			;65d0
	pop hl			;65d1
	ld l,l			;65d2
	inc l			;65d3
	adc a,l			;65d4
	push af			;65d5
	ld l,l			;65d6
	add a,h			;65d7
	ld e,d			;65d8
	out (06dh),a		;65d9
	add a,c			;65db
	adc a,(hl)		;65dc
	push af			;65dd
	ld l,l			;65de
	sub h			;65df
	adc a,a			;65e0
	push af			;65e1
	ld l,l			;65e2
	inc a			;65e3
	sub b			;65e4
	dec e			;65e5
	ld l,(hl)		;65e6
	ld d,h			;65e7
	sub b			;65e8
	jp nz,02b66h		;65e9
	ld e,e			;65ec
	jp nz,0ac66h		;65ed
	sub c			;65f0
	dec e			;65f1
	ld l,(hl)		;65f2
	call po,0f592h		;65f3
	ld l,l			;65f6
	ld a,e			;65f7
	sub e			;65f8
	push af			;65f9
	ld l,l			;65fa
l65fbh:
	halt			;65fb
	sub h			;65fc
	push af			;65fd
	ld l,l			;65fe
	ld (hl),a		;65ff
	sub h			;6600
	jp nz,00866h		;6601
	sub l			;6604
	push af			;6605
l6606h:
	ld l,l			;6606
	ld d,l			;6607
	sub (hl)		;6608
	pop hl			;6609
	ld l,l			;660a
	ld e,b			;660b
	sub (hl)		;660c
	dec (hl)		;660d
	ld l,(hl)		;660e
	and d			;660f
	ld e,d			;6610
	push af			;6611
	ld l,l			;6612
	dec a			;6613
	sbc a,b			;6614
	push af			;6615
	ld l,l			;6616
	ld b,b			;6617
l6618h:
	sbc a,c			;6618
	push af			;6619
	ld l,l			;661a
	ld b,b			;661b
	sbc a,c			;661c
	push af			;661d
	ld l,l			;661e
	sbc a,d			;661f
	sbc a,c			;6620
	dec (hl)		;6621
	ld l,(hl)		;6622
	ret p			;6623
	ld e,b			;6624
	jp nz,01466h		;6625
	cp a			;6628
	push af			;6629
	ld l,l			;662a
	pop bc			;662b
	ld h,(hl)		;662c
	push af			;662d
	ld l,l			;662e
	ld h,(hl)		;662f
	or b			;6630
	push af			;6631
	ld l,l			;6632
	ret z			;6633
	or (hl)			;6634
	dec (hl)		;6635
	ld l,(hl)		;6636
	dec b			;6637
	sbc a,b			;6638
	push af			;6639
	ld l,l			;663a
	pop bc			;663b
	ld h,(hl)		;663c
	push af			;663d
	ld l,l			;663e
	jr z,l65fbh		;663f
	push af			;6641
	ld l,l			;6642
	pop bc			;6643
	ld h,(hl)		;6644
	push af			;6645
	ld l,l			;6646
	sbc a,0b6h		;6647
	ld l,l			;6649
	ld l,(hl)		;664a
	add hl,sp		;664b
	sbc a,d			;664c
	ld l,(hl)		;664d
	ld l,(hl)		;664e
	add hl,de		;664f
	ld e,e			;6650
	ld l,(hl)		;6651
	ld l,(hl)		;6652
	dec sp			;6653
	sbc a,h			;6654
	push af			;6655
	ld l,l			;6656
	ld b,c			;6657
	sbc a,d			;6658
	ld l,(hl)		;6659
	ld l,(hl)		;665a
	rst 38h			;665b
	sbc a,a			;665c
	ld b,h			;665d
	ld l,(hl)		;665e
	ret c			;665f
	and d			;6660
	push af			;6661
	ld l,l			;6662
	and b			;6663
	ld e,l			;6664
	push af			;6665
	ld l,l			;6666
	ld l,h			;6667
	sbc a,h			;6668
	ld l,(hl)		;6669
	ld l,(hl)		;666a
	dec e			;666b
	sbc a,l			;666c
	push af			;666d
	ld l,l			;666e
	ld (de),a		;666f
	ld d,c			;6670
	dec (hl)		;6671
	ld l,(hl)		;6672
	ld a,h			;6673
	sbc a,d			;6674
	jp nz,0d766h		;6675
	sbc a,d			;6678
	dec (hl)		;6679
	ld l,(hl)		;667a
	jr c,l6618h		;667b
	push af			;667d
	ld l,l			;667e
	pop bc			;667f
	ld h,(hl)		;6680
	push af			;6681
	ld l,l			;6682
	pop bc			;6683
	ld h,(hl)		;6684
	push af			;6685
	ld l,l			;6686
	ld b,a			;6687
	sbc a,a			;6688
	push af			;6689
	ld l,l			;668a
	or b			;668b
	sbc a,a			;668c
	push af			;668d
	ld l,l			;668e
	ld h,b			;668f
	sbc a,l			;6690
	ld b,h			;6691
	ld l,(hl)		;6692
	pop bc			;6693
	or b			;6694
	push af			;6695
	ld l,l			;6696
	rst 10h			;6697
	adc a,d			;6698
	dec e			;6699
	ld l,(hl)		;669a
	ld (hl),e		;669b
	sub h			;669c
	push af			;669d
	ld l,l			;669e
	ld a,d			;669f
	sbc a,(hl)		;66a0
	add a,c			;66a1
	ld l,(hl)		;66a2
	ld a,h			;66a3
	sbc a,(hl)		;66a4
	dec (hl)		;66a5
	ld l,(hl)		;66a6
	inc hl			;66a7
	or h			;66a8
	ld b,h			;66a9
	ld l,(hl)		;66aa
	call z,0c2b0h		;66ab
	ld h,(hl)		;66ae
	add hl,de		;66af
	xor d			;66b0
	dec (hl)		;66b1
	ld l,(hl)		;66b2
	xor h			;66b3
	sub (hl)		;66b4
	ld b,h			;66b5
	ld l,(hl)		;66b6
	nop			;66b7
	and b			;66b8
	ld b,h			;66b9
	ld l,(hl)		;66ba
	inc de			;66bb
	or l			;66bc
	jp nz,l6c66h		;66bd
	or a			;66c0
	ret			;66c1
	jp l7747h		;66c2
	nop			;66c5
	rst 38h			;66c6
	rst 38h			;66c7
	rst 38h			;66c8
	rst 38h			;66c9
	rst 38h			;66ca
	rst 38h			;66cb
	rst 38h			;66cc
	rst 38h			;66cd
	rst 38h			;66ce
	rst 38h			;66cf
sub_66d0h:
	call sub_671ah		;66d0
	ret c			;66d3
	call sub_6747h		;66d4
	call sub_67b0h		;66d7
	jr l66f4h		;66da
sub_66dch:
	call sub_671ah		;66dc
	ret c			;66df
	call sub_6747h		;66e0
	ld (ix+000h),d		;66e3
	ld (ix+02dh),c		;66e6
	jr l66f4h		;66e9
sub_66ebh:
	call sub_671ah		;66eb
	call sub_6747h		;66ee
	call sub_67ceh		;66f1
l66f4h:
	push ix			;66f4
	pop hl			;66f6
sub_66f7h:
	call 04befh		;66f7
	ld a,(hl)		;66fa
	dec a			;66fb
	ld de,00013h		;66fc
	add hl,de		;66ff
	push hl			;6700
	ld de,09100h		;6701
	call 04624h		;6704
	ld c,(hl)		;6707
	inc hl			;6708
	ld b,(hl)		;6709
	inc hl			;670a
	ld a,(hl)		;670b
	inc hl			;670c
	ld d,(hl)		;670d
	pop hl			;670e
	ld (hl),c		;670f
	inc l			;6710
	ld (hl),b		;6711
	inc l			;6712
	ld (hl),a		;6713
	inc l			;6714
	ld (hl),d		;6715
	inc l			;6716
	jp 04b99h		;6717
sub_671ah:
	ld a,(0ce44h)		;671a
	sub 001h		;671d
	jr c,l673eh		;671f
	ld (0ce44h),a		;6721
	exx			;6724
	ld hl,0ce80h		;6725
	ld de,00040h		;6728
	ld b,014h		;672b
	ld c,001h		;672d
l672fh:
	ld a,(hl)		;672f
	and a			;6730
	jr z,l6737h		;6731
	add hl,de		;6733
	inc c			;6734
	djnz l672fh		;6735
l6737h:
	ld a,c			;6737
	push hl			;6738
	exx			;6739
	pop ix			;673a
	ld c,a			;673c
	ret			;673d
l673eh:
	ld hl,(0ce50h)		;673e
	inc hl			;6741
	ld (0ce50h),hl		;6742
	scf			;6745
	ret			;6746
sub_6747h:
	exx			;6747
	push ix			;6748
	pop hl			;674a
	xor a			;674b
	ld b,040h		;674c
l674eh:
	ld (hl),a		;674e
	inc hl			;674f
	djnz l674eh		;6750
	exx			;6752
	ret			;6753
	call sub_6796h		;6754
	ld d,a			;6757
	and 07fh		;6758
	ld b,a			;675a
	ld a,(0c0d5h)		;675b
	dec a			;675e
	jr z,l677ch		;675f
	dec a			;6761
	jr z,l6780h		;6762
	dec a			;6764
	jr z,l6780h		;6765
	dec a			;6767
	jr z,l6785h		;6768
	dec a			;676a
	jr z,l678dh		;676b
	dec a			;676d
	jr z,l6773h		;676e
	dec a			;6770
	jr z,l6773h		;6771
l6773h:
	ld c,b			;6773
	ld a,000h		;6774
	sub (ix+013h)		;6776
	ld b,a			;6779
	jr l678fh		;677a
l677ch:
	ld c,020h		;677c
	jr l678fh		;677e
l6780h:
	ld c,b			;6780
	ld b,018h		;6781
	jr l678fh		;6783
l6785h:
	ld a,b			;6785
	sub 018h		;6786
	ld c,a			;6788
	ld b,018h		;6789
	jr l678fh		;678b
l678dh:
	ld c,000h		;678d
l678fh:
	ld (ix+008h),b		;678f
	ld (ix+00ah),c		;6792
	ret			;6795
sub_6796h:
	ld a,(ix+02eh)		;6796
	cp (ix+02fh)		;6799
	inc a			;679c
	ccf			;679d
	ret c			;679e
	ld (ix+02eh),a		;679f
	ld l,(ix+031h)		;67a2
	ld h,(ix+032h)		;67a5
	add a,l			;67a8
	ld l,a			;67a9
	jr nc,l67adh		;67aa
	inc h			;67ac
l67adh:
	ld a,(hl)		;67ad
	and a			;67ae
	ret			;67af
sub_67b0h:
	ld a,(hl)		;67b0
	and 07fh		;67b1
	ld d,a			;67b3
	inc hl			;67b4
	ld a,(hl)		;67b5
	ld e,000h		;67b6
	rlca			;67b8
	jr nc,l67bdh		;67b9
	ld e,080h		;67bb
l67bdh:
	srl a			;67bd
	dec a			;67bf
	dec a			;67c0
	dec a			;67c1
	dec a			;67c2
	or e			;67c3
	call sub_67e8h		;67c4
	ld (ix+000h),d		;67c7
	ld (ix+02dh),c		;67ca
	ret			;67cd
sub_67ceh:
	ld l,(iy+031h)		;67ce
	ld h,(iy+032h)		;67d1
	ld e,(iy+02fh)		;67d4
	ld d,000h		;67d7
	add hl,de		;67d9
	call sub_67e7h		;67da
	call sub_6796h		;67dd
	ld (ix+000h),a		;67e0
	ld (ix+02dh),c		;67e3
	ret			;67e6
sub_67e7h:
	ld a,(hl)		;67e7
sub_67e8h:
	ld b,a			;67e8
	rlca			;67e9
	ld a,b			;67ea
	jr nc,l67f4h		;67eb
	and 03fh		;67ed
	ld (ix+030h),a		;67ef
	inc hl			;67f2
	ld b,(hl)		;67f3
l67f4h:
	ld (ix+02fh),b		;67f4
	ld (ix+031h),l		;67f7
	ld (ix+032h),h		;67fa
	ret			;67fd
	ld a,001h		;67fe
	call sub_6871h		;6800
	ret c			;6803
	set 7,(ix+034h)		;6804
	call 04656h		;6808
	call sub_66ebh		;680b
	call sub_6938h		;680e
	jp 04656h		;6811
	ld a,001h		;6814
	call sub_6871h		;6816
	ret c			;6819
	set 7,(ix+034h)		;681a
	call 04656h		;681e
	call sub_66ebh		;6821
	call sub_694dh		;6824
	jp 04656h		;6827
	ld b,(ix+02eh)		;682a
	push bc			;682d
	call sub_6836h		;682e
	pop bc			;6831
	ld (ix+02eh),b		;6832
	ret			;6835
sub_6836h:
	ld a,001h		;6836
	call sub_6871h		;6838
	ret c			;683b
	set 7,(ix+034h)		;683c
	call 04656h		;6840
	call sub_66ebh		;6843
	call sub_6964h		;6846
	jp 04656h		;6849
	ld d,a			;684c
	ld a,001h		;684d
	call sub_6871h		;684f
	ret c			;6852
	call 04656h		;6853
	call sub_66dch		;6856
	or a			;6859
	jp 04656h		;685a
	ld d,a			;685d
	ld a,001h		;685e
	call sub_6871h		;6860
	ret c			;6863
	call 04656h		;6864
	call sub_66dch		;6867
	call sub_694dh		;686a
	or a			;686d
	jp 04656h		;686e
sub_6871h:
	ld hl,0ce44h		;6871
	ld b,(hl)		;6874
	ld c,a			;6875
	and 07fh		;6876
	cp (hl)			;6878
	ld b,a			;6879
	ccf			;687a
	ret nc			;687b
	bit 7,c			;687c
	jr nz,l6884h		;687e
	ld a,(hl)		;6880
	and a			;6881
	ld b,a			;6882
	ret nz			;6883
l6884h:
	scf			;6884
	ret			;6885
	res 7,(iy+000h)		;6886
	ret			;688a
	inc (ix+039h)		;688b
	ld c,(ix+039h)		;688e
	ld hl,0ce80h		;6891
	ld b,014h		;6894
l6896h:
	push hl			;6896
	ld de,00034h		;6897
	add hl,de		;689a
	ld e,(hl)		;689b
	ld a,(ix+02dh)		;689c
	cp e			;689f
	jr nz,l68a8h		;68a0
	ld de,00004h		;68a2
	add hl,de		;68a5
	ld a,(hl)		;68a6
	cp c			;68a7
l68a8h:
	pop hl			;68a8
	jr z,l68b5h		;68a9
	ld de,00040h		;68ab
	add hl,de		;68ae
	djnz l6896h		;68af
	scf			;68b1
	ld hl,0d700h		;68b2
l68b5h:
	push hl			;68b5
	pop iy			;68b6
	ret			;68b8
sub_68b9h:
	ld a,(ix+035h)		;68b9
	and a			;68bc
	jr z,l68cfh		;68bd
	rla			;68bf
	ret c			;68c0
	rra			;68c1
	jr l68f8h		;68c2
sub_68c4h:
	ld a,(ix+036h)		;68c4
	and a			;68c7
	jr z,l68cfh		;68c8
	rla			;68ca
	ret c			;68cb
	rra			;68cc
	jr l68f8h		;68cd
l68cfh:
	ld hl,0d700h		;68cf
	scf			;68d2
	ret			;68d3
	ld a,(ix+036h)		;68d4
	jr l68f8h		;68d7
	ld a,(iy+036h)		;68d9
	jr l68f8h		;68dc
sub_68deh:
	ld a,(ix+034h)		;68de
	ld c,a			;68e1
	and 03fh		;68e2
	call l68f8h		;68e4
	ld a,c			;68e7
	bit 6,a			;68e8
	jr nz,l68f2h		;68ea
	and 03fh		;68ec
	cp (iy+02dh)		;68ee
	ret			;68f1
l68f2h:
	ld iy,0d700h		;68f2
	scf			;68f6
	ret			;68f7
l68f8h:
	call sub_68ffh		;68f8
	push hl			;68fb
	pop iy			;68fc
	ret			;68fe
sub_68ffh:
	dec a			;68ff
	rrca			;6900
	rrca			;6901
	ld b,a			;6902
	and 0f0h		;6903
	ld l,a			;6905
	ld a,b			;6906
	and 00fh		;6907
	ld h,a			;6909
	ld de,0ce80h		;690a
	add hl,de		;690d
	ret			;690e
	ld bc,00000h		;690f
	exx			;6912
	call sub_68deh		;6913
	exx			;6916
	ld a,(iy+008h)		;6917
	add a,c			;691a
	ld (ix+008h),a		;691b
	ld a,(iy+00ah)		;691e
	add a,b			;6921
	ld (ix+00ah),a		;6922
	ret			;6925
	ld bc,00000h		;6926
	ld a,(ix+008h)		;6929
	add a,c			;692c
	ld (iy+008h),a		;692d
	ld a,(ix+00ah)		;6930
	add a,b			;6933
	ld (iy+00ah),a		;6934
	ret			;6937
sub_6938h:
	call sub_694dh		;6938
	ld a,(iy+02dh)		;693b
	ld b,(ix+02dh)		;693e
	cp b			;6941
	jr nc,l694bh		;6942
	ld (ix+03ah),c		;6944
	ld (ix+000h),05fh	;6947
l694bh:
	xor a			;694b
	ret			;694c
sub_694dh:
	inc (iy+037h)		;694d
	ld a,(iy+037h)		;6950
	ld (iy+03bh),a		;6953
	ld (ix+038h),a		;6956
	ld a,(ix+000h)		;6959
	ld c,a			;695c
	ld a,(iy+02dh)		;695d
	ld (ix+034h),a		;6960
	ret			;6963
sub_6964h:
	inc (iy+037h)		;6964
	ld a,(iy+037h)		;6967
	ld (ix+038h),a		;696a
	ld c,(ix+000h)		;696d
	ld a,(iy+02dh)		;6970
	ld (ix+034h),a		;6973
	ld a,(iy+033h)		;6976
	ld b,(ix+02dh)		;6979
	ld (iy+033h),b		;697c
	and a			;697f
	jr z,l6991h		;6980
	ld (ix+035h),a		;6982
	call sub_68ffh		;6985
	ld de,00036h		;6988
	add hl,de		;698b
	ld a,(ix+02dh)		;698c
	ld (hl),a		;698f
	ret			;6990
l6991h:
	ld a,(iy+02dh)		;6991
	ld (ix+035h),a		;6994
	ld a,(ix+02dh)		;6997
	ld (iy+036h),a		;699a
	ret			;699d
	xor a			;699e
	ld (ix+02eh),a		;699f
	ret			;69a2
sub_69a3h:
	push ix			;69a3
	pop iy			;69a5
	push af			;69a7
	call sub_671ah		;69a8
	jp c,0469fh		;69ab
	push bc			;69ae
	call sub_6747h		;69af
	pop bc			;69b2
	ld (ix+02dh),c		;69b3
	pop af			;69b6
	ld (ix+000h),a		;69b7
	call l66f4h		;69ba
	or a			;69bd
	ret			;69be
	call sub_69a3h		;69bf
	ret c			;69c2
	call sub_694dh		;69c3
	inc (iy+039h)		;69c6
	set 7,(iy+034h)		;69c9
	res 7,(ix+000h)		;69cd
	res 7,(ix+03ah)		;69d1
	or a			;69d5
	ret			;69d6
sub_69d7h:
	ld a,(0ca10h)		;69d7
	ld (0ce4bh),a		;69da
	inc (ix+03fh)		;69dd
	ld a,(ix+016h)		;69e0
	rrca			;69e3
	rrca			;69e4
	and 03fh		;69e5
	ld (0ce4ah),a		;69e7
	xor a			;69ea
	ld hl,0ce48h		;69eb
	ld (hl),a		;69ee
	inc hl			;69ef
	ld (hl),a		;69f0
	ret			;69f1
	call sub_69d7h		;69f2
	ld a,008h		;69f5
	ld (0ce4bh),a		;69f7
	ret			;69fa
	ld hl,0ce48h		;69fb
	ld a,001h		;69fe
	ld (hl),a		;6a00
l6a01h:
	inc hl			;6a01
	ld (hl),a		;6a02
	call 04bb0h		;6a03
	call sub_6a3ch		;6a06
	call 04b99h		;6a09
	xor a			;6a0c
	ld de,00000h		;6a0d
	jp 04776h		;6a10
	call 04bb0h		;6a13
	call sub_6a22h		;6a16
	jp 04b99h		;6a19
	ld hl,0ce48h		;6a1c
	res 1,(hl)		;6a1f
	ret			;6a21
sub_6a22h:
	ld hl,0ce48h		;6a22
	ld de,086c0h		;6a25
	ld a,(hl)		;6a28
	inc hl			;6a29
	cp (hl)			;6a2a
	jr nz,l6a34h		;6a2b
	ld a,(0ca02h)		;6a2d
	and 003h		;6a30
	ret nz			;6a32
	ld a,(hl)		;6a33
l6a34h:
	ld (hl),a		;6a34
	rrca			;6a35
	rrca			;6a36
	jr c,l6a6ch		;6a37
	and a			;6a39
	jr z,l6a3fh		;6a3a
sub_6a3ch:
	ld de,086d2h		;6a3c
l6a3fh:
	call sub_6a4fh		;6a3f
	ld b,008h		;6a42
l6a44h:
	push bc			;6a44
	call sub_6a5ch		;6a45
	call 04776h		;6a48
	pop bc			;6a4b
	djnz l6a44h		;6a4c
	ret			;6a4e
sub_6a4fh:
	ld a,(0ce4bh)		;6a4f
	add a,a			;6a52
	ld l,a			;6a53
	ld h,000h		;6a54
	add hl,de		;6a56
	ld e,(hl)		;6a57
	inc hl			;6a58
	ld d,(hl)		;6a59
	ex de,hl		;6a5a
	ret			;6a5b
sub_6a5ch:
	ld d,(hl)		;6a5c
	inc hl			;6a5d
	ld b,(hl)		;6a5e
	inc hl			;6a5f
	ld a,b			;6a60
	and 00fh		;6a61
	ld e,a			;6a63
	ld a,b			;6a64
	rlca			;6a65
	rlca			;6a66
	rlca			;6a67
	rlca			;6a68
	and 00fh		;6a69
	ret			;6a6b
l6a6ch:
	call sub_6a4fh		;6a6c
	ld b,008h		;6a6f
l6a71h:
	push bc			;6a71
	call sub_6a5ch		;6a72
	ld de,l6606h		;6a75
	call 04776h		;6a78
	pop bc			;6a7b
	djnz l6a71h		;6a7c
	ret			;6a7e
sub_6a7fh:
	push ix			;6a7f
	pop hl			;6a81
	ld de,00007h		;6a82
	add hl,de		;6a85
	ld d,h			;6a86
	ld e,l			;6a87
	ld a,004h		;6a88
	add a,e			;6a8a
	ld e,a			;6a8b
	call sub_6a8fh		;6a8c
sub_6a8fh:
	ld a,(de)		;6a8f
	add a,(hl)		;6a90
	ld (hl),a		;6a91
	inc l			;6a92
	inc e			;6a93
	ld a,(de)		;6a94
	adc a,(hl)		;6a95
	ld (hl),a		;6a96
	inc l			;6a97
	inc e			;6a98
	ret			;6a99
sub_6a9ah:
	push ix			;6a9a
	pop hl			;6a9c
	ld de,0000bh		;6a9d
	add hl,de		;6aa0
	ld e,l			;6aa1
	ld d,h			;6aa2
	ld a,004h		;6aa3
	add a,e			;6aa5
	ld e,a			;6aa6
	call sub_6a8fh		;6aa7
	jr sub_6a8fh		;6aaa
	ld a,(0ca10h)		;6aac
	ld h,000h		;6aaf
	ld l,a			;6ab1
	add hl,de		;6ab2
	ld a,(hl)		;6ab3
	ld (ix+005h),a		;6ab4
	ret			;6ab7
	ld a,(ix+005h)		;6ab8
	call sub_6acch		;6abb
	ld (ix+005h),a		;6abe
	ret			;6ac1
	ld a,(ix+006h)		;6ac2
	call sub_6acch		;6ac5
	ld (ix+006h),a		;6ac8
	ret			;6acb
sub_6acch:
	inc a			;6acc
	cp b			;6acd
	jr nz,l6ad1h		;6ace
	xor a			;6ad0
l6ad1h:
	ret			;6ad1
	ld a,(ix+017h)		;6ad2
	dec a			;6ad5
	ret z			;6ad6
	ld (ix+017h),a		;6ad7
	ret			;6ada
	ld (ix+017h),a		;6adb
	ret			;6ade
	ld a,(ix+018h)		;6adf
	dec a			;6ae2
	ret z			;6ae3
	ld (ix+018h),a		;6ae4
	ret			;6ae7
	ld (ix+018h),a		;6ae8
	ret			;6aeb
	ld a,(ix+018h)		;6aec
	bit 7,a			;6aef
	jr nz,l6af9h		;6af1
	ld c,000h		;6af3
	inc a			;6af5
	cp b			;6af6
	jr nz,l6b02h		;6af7
l6af9h:
	ld c,080h		;6af9
	and 07fh		;6afb
	dec a			;6afd
	jr nz,l6b02h		;6afe
	ld c,000h		;6b00
l6b02h:
	or c			;6b02
l6b03h:
	ld (ix+018h),a		;6b03
	ret			;6b06
	ld l,(ix+00bh)		;6b07
	ld h,(ix+00ch)		;6b0a
	ld a,h			;6b0d
	rlca			;6b0e
	call c,04612h		;6b0f
	jp 04650h		;6b12
	ld l,(ix+00dh)		;6b15
	ld h,(ix+00eh)		;6b18
	ld a,h			;6b1b
	rlca			;6b1c
	call c,04612h		;6b1d
	jp 04650h		;6b20
sub_6b23h:
	ld l,(ix+00fh)		;6b23
	ld h,(ix+010h)		;6b26
	call 04612h		;6b29
	ld (ix+00fh),l		;6b2c
	ld (ix+010h),h		;6b2f
	ret			;6b32
sub_6b33h:
	ld l,(ix+011h)		;6b33
	ld h,(ix+012h)		;6b36
	call 04612h		;6b39
	ld (ix+011h),l		;6b3c
	ld (ix+012h),h		;6b3f
	ret			;6b42
	ld l,(ix+00bh)		;6b43
	ld h,(ix+00ch)		;6b46
	call 04612h		;6b49
	ld (ix+00bh),l		;6b4c
	ld (ix+00ch),h		;6b4f
	ret			;6b52
	ld l,(ix+00dh)		;6b53
	ld h,(ix+00eh)		;6b56
	call 04612h		;6b59
	ld (ix+00dh),l		;6b5c
	ld (ix+00eh),h		;6b5f
	ret			;6b62
	ld (0ca26h),a		;6b63
	call sub_7270h		;6b66
	jp l7240h		;6b69
	call sub_6b85h		;6b6c
	call l7240h		;6b6f
	ld (ix+00bh),l		;6b72
	ld (ix+00ch),h		;6b75
	ld (ix+00dh),e		;6b78
	ld (ix+00eh),d		;6b7b
	ret			;6b7e
	call sub_6b85h		;6b7f
	jp l7240h		;6b82
sub_6b85h:
	ld (0ca26h),a		;6b85
	call sub_71d6h		;6b88
	jp sub_7270h		;6b8b
	call sub_71b8h		;6b8e
	jp sub_7270h		;6b91
	ld c,000h		;6b94
	ld a,(0ca4ah)		;6b96
	sub (ix+00ah)		;6b99
	jr nc,l6ba2h		;6b9c
	neg			;6b9e
	or 080h			;6ba0
l6ba2h:
	ld d,a			;6ba2
	ld a,(0ca48h)		;6ba3
	sub (ix+008h)		;6ba6
	jr nc,l6bafh		;6ba9
	neg			;6bab
	or 080h			;6bad
l6bafh:
	ld e,a			;6baf
	ld a,d			;6bb0
	rlca			;6bb1
	jr nc,l6bbeh		;6bb2
	ld c,000h		;6bb4
	ld a,e			;6bb6
	rlca			;6bb7
	jr c,l6bc6h		;6bb8
	ld c,006h		;6bba
	jr l6bc6h		;6bbc
l6bbeh:
	ld c,002h		;6bbe
	ld a,e			;6bc0
	rlca			;6bc1
	jr c,l6bc6h		;6bc2
	ld c,004h		;6bc4
l6bc6h:
	ld b,000h		;6bc6
	ld a,d			;6bc8
	rlca			;6bc9
	jr nc,l6bceh		;6bca
	ld b,080h		;6bcc
l6bceh:
	srl a			;6bce
	ld d,a			;6bd0
	ld a,e			;6bd1
	and 080h		;6bd2
	xor b			;6bd4
	ld b,a			;6bd5
	ld a,e			;6bd6
	and 07fh		;6bd7
	sub d			;6bd9
	jr c,l6be1h		;6bda
	ld a,b			;6bdc
	and a			;6bdd
	ret nz			;6bde
	inc c			;6bdf
	ret			;6be0
l6be1h:
	ld a,b			;6be1
	and a			;6be2
	ret z			;6be3
	inc c			;6be4
	ret			;6be5
	call sub_6bfah		;6be6
	jr l6bf0h		;6be9
	call sub_6bfdh		;6beb
	jr l6bf3h		;6bee
l6bf0h:
	ld hl,00000h		;6bf0
l6bf3h:
	ld (ix+00bh),l		;6bf3
	ld (ix+00ch),h		;6bf6
	ret			;6bf9
sub_6bfah:
	ld de,00000h		;6bfa
sub_6bfdh:
	ld (ix+00dh),e		;6bfd
	ld (ix+00eh),d		;6c00
	ret			;6c03
	call sub_6c16h		;6c04
	jr l6c0ch		;6c07
	ld hl,00000h		;6c09
l6c0ch:
	ld (ix+00fh),l		;6c0c
	ld (ix+010h),h		;6c0f
	ret			;6c12
	ld de,00000h		;6c13
sub_6c16h:
	ld (ix+011h),e		;6c16
	ld (ix+012h),d		;6c19
	ret			;6c1c
	inc (ix+001h)		;6c1d
	ret			;6c20
sub_6c21h:
	bit 2,(ix+015h)		;6c21
	ret z			;6c25
	call sub_6c3ah		;6c26
	ld hl,(0ca12h)		;6c29
	ld e,(ix+007h)		;6c2c
	ld d,(ix+008h)		;6c2f
	add hl,de		;6c32
	ld (ix+007h),l		;6c33
	ld (ix+008h),h		;6c36
	ret			;6c39
sub_6c3ah:
	ld hl,(0ca14h)		;6c3a
	ld e,(ix+009h)		;6c3d
	ld d,(ix+00ah)		;6c40
	add hl,de		;6c43
	ld (ix+009h),l		;6c44
	ld (ix+00ah),h		;6c47
	ret			;6c4a
	push ix			;6c4b
	push iy			;6c4d
	call 04c2ah		;6c4f
	add hl,bc		;6c52
	ld a,(bc)		;6c53
	dec bc			;6c54
	add hl,bc		;6c55
	ld l,l			;6c56
	pop iy			;6c57
	pop ix			;6c59
	ret			;6c5b
	push ix			;6c5c
	push iy			;6c5e
	call 04c2ah		;6c60
	add hl,bc		;6c63
	ld a,(bc)		;6c64
	dec bc			;6c65
l6c66h:
	inc c			;6c66
	ld l,l			;6c67
	pop iy			;6c68
	pop ix			;6c6a
	ret			;6c6c
	ld (0c0dch),hl		;6c6d
	ld (0c0deh),de		;6c70
	ret			;6c74
	add a,(ix+008h)		;6c75
	neg			;6c78
	add a,a			;6c7a
	add a,a			;6c7b
	add a,a			;6c7c
	and 0f8h		;6c7d
	ld d,a			;6c7f
	ld a,(ix+009h)		;6c80
	and 0e0h		;6c83
	neg			;6c85
	and 0e0h		;6c87
	ld (0ca1ch),a		;6c89
	rlca			;6c8c
	rlca			;6c8d
	rlca			;6c8e
	ld (0c0bbh),a		;6c8f
	ld a,(ix+007h)		;6c92
	and 0e0h		;6c95
	jr z,l6c9fh		;6c97
	ex af,af'		;6c99
	ld a,d			;6c9a
	sub 008h		;6c9b
	ld d,a			;6c9d
	ex af,af'		;6c9e
l6c9fh:
	neg			;6c9f
	and 0e0h		;6ca1
	ld (0ca1ah),a		;6ca3
	rlca			;6ca6
	rlca			;6ca7
	rlca			;6ca8
	or d			;6ca9
	ld (0c0d2h),a		;6caa
	ret			;6cad
	call sub_6cb5h		;6cae
	call sub_6a9ah		;6cb1
	ret			;6cb4
sub_6cb5h:
	push hl			;6cb5
	push de			;6cb6
	pop bc			;6cb7
	call sub_6ccdh		;6cb8
	pop bc			;6cbb
	ld h,(ix+00eh)		;6cbc
	ld l,(ix+00dh)		;6cbf
	call sub_6cdeh		;6cc2
	or a			;6cc5
	sbc hl,bc		;6cc6
	ret c			;6cc8
	call sub_6b33h		;6cc9
	ret			;6ccc
sub_6ccdh:
	ld h,(ix+00ch)		;6ccd
	ld l,(ix+00bh)		;6cd0
	call sub_6cdeh		;6cd3
	or a			;6cd6
	sbc hl,bc		;6cd7
	ret c			;6cd9
	call sub_6b23h		;6cda
	ret			;6cdd
sub_6cdeh:
	bit 7,h			;6cde
	ret z			;6ce0
	ld a,h			;6ce1
	cpl			;6ce2
	ld h,a			;6ce3
	ld a,l			;6ce4
	cpl			;6ce5
	ld l,a			;6ce6
	inc hl			;6ce7
	ret			;6ce8
	ld (ix+02ah),0ffh	;6ce9
	ret			;6ced
	push af			;6cee
	call sub_6d2ch		;6cef
	pop af			;6cf2
	jr nz,l6d0eh		;6cf3
	ld a,(ix+00ah)		;6cf5
	ld (ix+028h),a		;6cf8
	ld a,(ix+009h)		;6cfb
	ld (ix+029h),a		;6cfe
	ld a,(ix+008h)		;6d01
	ld (ix+02ah),a		;6d04
	ld a,(ix+007h)		;6d07
	ld (ix+02bh),a		;6d0a
	ret			;6d0d
l6d0eh:
	ld a,(ix+02ah)		;6d0e
	inc a			;6d11
	ret z			;6d12
	ld a,(ix+028h)		;6d13
	ld (ix+00ah),a		;6d16
	ld a,(ix+029h)		;6d19
	ld (ix+009h),a		;6d1c
	ld a,(ix+02ah)		;6d1f
	ld (ix+008h),a		;6d22
	ld a,(ix+02bh)		;6d25
	ld (ix+007h),a		;6d28
	ret			;6d2b
sub_6d2ch:
	ld de,(0ca14h)		;6d2c
	ld h,(ix+028h)		;6d30
	ld l,(ix+029h)		;6d33
	add hl,de		;6d36
	ld (ix+028h),h		;6d37
	ld (ix+029h),l		;6d3a
	ld de,(0ca12h)		;6d3d
	ld h,(ix+02ah)		;6d41
	ld l,(ix+02bh)		;6d44
	add hl,de		;6d47
	ld (ix+02ah),h		;6d48
	ld (ix+02bh),l		;6d4b
	ret			;6d4e
	push hl			;6d4f
	ld b,d			;6d50
	ld c,e			;6d51
	ld h,(ix+00eh)		;6d52
	ld l,(ix+00dh)		;6d55
	ld d,h			;6d58
	ld e,l			;6d59
	add hl,hl		;6d5a
	add hl,hl		;6d5b
	add hl,hl		;6d5c
	or a			;6d5d
	sbc hl,de		;6d5e
	add hl,bc		;6d60
	sra h			;6d61
	rr l			;6d63
	sra h			;6d65
	rr l			;6d67
	sra h			;6d69
	rr l			;6d6b
	ld (ix+00eh),h		;6d6d
	ld (ix+00dh),l		;6d70
	pop bc			;6d73
	ld h,(ix+00ch)		;6d74
	ld l,(ix+00bh)		;6d77
	ld d,h			;6d7a
	ld e,l			;6d7b
	add hl,hl		;6d7c
	add hl,hl		;6d7d
	add hl,hl		;6d7e
	or a			;6d7f
	sbc hl,de		;6d80
	add hl,bc		;6d82
	sra h			;6d83
	rr l			;6d85
	sra h			;6d87
	rr l			;6d89
	sra h			;6d8b
	rr l			;6d8d
	ld (ix+00ch),h		;6d8f
	ld (ix+00bh),l		;6d92
	ret			;6d95
	push hl			;6d96
	ld b,d			;6d97
	ld c,e			;6d98
	ld h,(ix+00eh)		;6d99
	ld l,(ix+00dh)		;6d9c
	ld d,h			;6d9f
	ld e,l			;6da0
	add hl,hl		;6da1
	add hl,hl		;6da2
	or a			;6da3
	sbc hl,de		;6da4
	add hl,bc		;6da6
	sra h			;6da7
	rr l			;6da9
	sra h			;6dab
	rr l			;6dad
	ld (ix+00eh),h		;6daf
	ld (ix+00dh),l		;6db2
	pop bc			;6db5
	ld h,(ix+00ch)		;6db6
	ld l,(ix+00bh)		;6db9
	ld d,h			;6dbc
	ld e,l			;6dbd
	add hl,hl		;6dbe
	add hl,hl		;6dbf
	or a			;6dc0
	sbc hl,de		;6dc1
	add hl,bc		;6dc3
	sra h			;6dc4
	rr l			;6dc6
	sra h			;6dc8
	rr l			;6dca
	ld (ix+00ch),h		;6dcc
	ld (ix+00bh),l		;6dcf
	ret			;6dd2
	call sub_6e2ch		;6dd3
	ret c			;6dd6
	ret z			;6dd7
	call sub_6edah		;6dd8
	call nc,l6e98h		;6ddb
	or a			;6dde
	jr l6dech		;6ddf
	call sub_6e2ch		;6de1
	ret c			;6de4
	ret z			;6de5
	call sub_6f0dh		;6de6
	jp c,l6e98h		;6de9
l6dech:
	call sub_7c44h		;6dec
	call c,sub_7cc3h	;6def
	jp l7747h		;6df2
	call sub_6e2ch		;6df5
	ret c			;6df8
	ret z			;6df9
	call sub_6eedh		;6dfa
	jp c,l6e98h		;6dfd
	call sub_7c44h		;6e00
	call c,sub_7cc3h	;6e03
	jp l7747h		;6e06
	call sub_6e2ch		;6e09
	ret c			;6e0c
	ret z			;6e0d
	call sub_6effh		;6e0e
	jp c,l6e98h		;6e11
	call sub_7c44h		;6e14
	call c,sub_7cc3h	;6e17
	jp l7747h		;6e1a
	call sub_6f1fh		;6e1d
	jp c,l6e98h		;6e20
	call sub_7c44h		;6e23
	call c,sub_7cc3h	;6e26
	jp l7747h		;6e29
sub_6e2ch:
	ld a,(ix+000h)		;6e2c
	ld b,a			;6e2f
	and a			;6e30
	ret z			;6e31
	rla			;6e32
	ld a,b			;6e33
	ret			;6e34
	call sub_6f47h		;6e35
	jp c,l6e98h		;6e38
	call sub_7c44h		;6e3b
	call c,sub_7cc3h	;6e3e
	jp l7747h		;6e41
	call sub_7c63h		;6e44
	call c,sub_6e50h	;6e47
	call c,sub_7cc3h	;6e4a
	jp l7747h		;6e4d
sub_6e50h:
	ex af,af'		;6e50
	ld a,001h		;6e51
	ld (0ce52h),a		;6e53
	ld (0ce76h),a		;6e56
	ld a,(0ce6ah)		;6e59
	add a,(ix+008h)		;6e5c
	ld (ix+008h),a		;6e5f
	ld a,(0ce69h)		;6e62
	add a,(ix+00ah)		;6e65
	ld (ix+00ah),a		;6e68
	ex af,af'		;6e6b
	ret			;6e6c
	ret			;6e6d
	call sub_6eedh		;6e6e
	jp c,l6each		;6e71
	ld a,(ix+004h)		;6e74
	or a			;6e77
	jp nz,l6each		;6e78
	call sub_7c27h		;6e7b
	jp l7747h		;6e7e
	call sub_6eedh		;6e81
	jp c,l6each		;6e84
	ld a,(ix+004h)		;6e87
	or a			;6e8a
	jp nz,l6each		;6e8b
	jp l7747h		;6e8e
	ld a,001h		;6e91
	ld (0ce4fh),a		;6e93
	ret			;6e96
	ret			;6e97
l6e98h:
	call sub_7d3eh		;6e98
	ld hl,0ce44h		;6e9b
	inc (hl)		;6e9e
	call sub_6eb4h		;6e9f
	xor a			;6ea2
	ld (ix+034h),a		;6ea3
	ld (ix+02dh),a		;6ea6
	ld (ix+038h),a		;6ea9
l6each:
	xor a			;6eac
	ld (ix+000h),a		;6ead
	ld (ix+015h),a		;6eb0
	ret			;6eb3
sub_6eb4h:
	xor a			;6eb4
	ld (ix+019h),a		;6eb5
	ld (ix+01ah),a		;6eb8
	ld (ix+01bh),a		;6ebb
	ld (ix+01ch),a		;6ebe
	ld (ix+01dh),a		;6ec1
	ld (ix+01eh),a		;6ec4
	ld (ix+01fh),a		;6ec7
	ret			;6eca
sub_6ecbh:
	ld a,(ix+015h)		;6ecb
	ld b,a			;6ece
	rlca			;6ecf
	rlca			;6ed0
	rlca			;6ed1
	and 003h		;6ed2
	or b			;6ed4
	ld (ix+015h),a		;6ed5
	and a			;6ed8
	ret			;6ed9
sub_6edah:
	call sub_6ecbh		;6eda
	ld a,(ix+008h)		;6edd
	add a,008h		;6ee0
	sub 028h		;6ee2
	ret nc			;6ee4
	ld a,(ix+00ah)		;6ee5
	add a,00ah		;6ee8
	sub 034h		;6eea
	ret			;6eec
sub_6eedh:
	call sub_6ecbh		;6eed
	ret z			;6ef0
	ld de,018fch		;6ef1
	ld hl,022feh		;6ef4
	ld a,(ix+008h)		;6ef7
	ld b,(ix+00ah)		;6efa
	jr l6f2dh		;6efd
sub_6effh:
	ld de,01bf0h		;6eff
	ld hl,022feh		;6f02
	ld a,(ix+008h)		;6f05
	ld b,(ix+00ah)		;6f08
	jr l6f2dh		;6f0b
sub_6f0dh:
	call sub_6ecbh		;6f0d
	ret z			;6f10
	ld de,01afeh		;6f11
	ld hl,022feh		;6f14
	ld a,(ix+008h)		;6f17
	ld b,(ix+00ah)		;6f1a
	jr l6f2dh		;6f1d
sub_6f1fh:
	ld de,01af8h		;6f1f
	ld hl,022f0h		;6f22
	ld a,(ix+008h)		;6f25
	ld b,(ix+00ah)		;6f28
	jr l6f2dh		;6f2b
l6f2dh:
	bit 7,a			;6f2d
	jr nz,l6f36h		;6f2f
	cp d			;6f31
	jr nc,l6f45h		;6f32
	jr l6f39h		;6f34
l6f36h:
	cp e			;6f36
	jr c,l6f45h		;6f37
l6f39h:
	ld a,b			;6f39
	bit 7,a			;6f3a
	jr nz,l6f43h		;6f3c
	cp h			;6f3e
	jr nc,l6f45h		;6f3f
	or a			;6f41
	ret			;6f42
l6f43h:
	cp l			;6f43
	ret nc			;6f44
l6f45h:
	scf			;6f45
	ret			;6f46
sub_6f47h:
	ld de,02cf6h		;6f47
	ld hl,02cf6h		;6f4a
	ld a,(ix+008h)		;6f4d
	ld b,(ix+00ah)		;6f50
	jr l6f2dh		;6f53
	push ix			;6f55
	push de			;6f57
	call sub_671ah		;6f58
	jr c,l6f88h		;6f5b
	call sub_6747h		;6f5d
	ld (ix+000h),003h	;6f60
	call l66f4h		;6f64
	pop de			;6f67
	ld (ix+00ah),d		;6f68
	ld (ix+008h),e		;6f6b
	ld bc,(0ca31h)		;6f6e
	ld a,b			;6f72
	rrca			;6f73
	rrca			;6f74
	rrca			;6f75
	neg			;6f76
	ld (ix+009h),a		;6f78
	ld a,c			;6f7b
	rrca			;6f7c
	rrca			;6f7d
	rrca			;6f7e
	neg			;6f7f
	ld (ix+007h),a		;6f81
	or a			;6f84
	pop ix			;6f85
	ret			;6f87
l6f88h:
	pop bc			;6f88
	pop ix			;6f89
	ret			;6f8b
	ld ix,0cac0h		;6f8c
	ld a,(ix+000h)		;6f90
	or a			;6f93
	jr z,l6fa2h		;6f94
	ld ix,0cae0h		;6f96
	ld a,(ix+000h)		;6f9a
	or a			;6f9d
	jr z,l6fa2h		;6f9e
	scf			;6fa0
	ret			;6fa1
l6fa2h:
	push de			;6fa2
	push hl			;6fa3
	push ix			;6fa4
	pop hl			;6fa6
	ld bc,0001fh		;6fa7
	call 04648h		;6faa
	pop hl			;6fad
	pop de			;6fae
	ld (ix+015h),091h	;6faf
	ld (ix+013h),003h	;6fb3
	ld (ix+014h),003h	;6fb7
	ld (ix+000h),002h	;6fbb
	ld (ix+00ah),d		;6fbf
	ld (ix+009h),e		;6fc2
	ld (ix+008h),h		;6fc5
	ld (ix+007h),l		;6fc8
	or a			;6fcb
	ret			;6fcc
	call sub_7024h		;6fcd
	call sub_6fe1h		;6fd0
	ld (ix+003h),a		;6fd3
	ld hl,l7049h		;6fd6
	call 04600h		;6fd9
	ld a,(hl)		;6fdc
	ld (ix+006h),a		;6fdd
	ret			;6fe0
sub_6fe1h:
	push af			;6fe1
	call sub_6ff7h		;6fe2
	or a			;6fe5
	jr nz,l6feah		;6fe6
	pop af			;6fe8
	ret			;6fe9
l6feah:
	dec a			;6fea
	jr nz,l6ff2h		;6feb
	ld a,00eh		;6fed
	jp 0469fh		;6fef
l6ff2h:
	ld a,00ch		;6ff2
	jp 0469fh		;6ff4
sub_6ff7h:
	cp 003h			;6ff7
	jr z,l7005h		;6ff9
	cp 00ah			;6ffb
	jr z,l700dh		;6ffd
	cp 007h			;6fff
	jr z,l7017h		;7001
l7003h:
	xor a			;7003
	ret			;7004
l7005h:
	ld a,(0cb48h)		;7005
	or a			;7008
	ret z			;7009
	ld a,001h		;700a
	ret			;700c
l700dh:
	ld a,(0cb41h)		;700d
	cp 00ah			;7010
	jr nz,l7003h		;7012
	ld a,002h		;7014
	ret			;7016
l7017h:
	ld a,(0cb50h)		;7017
	or a			;701a
	ret z			;701b
	ld a,(0cb58h)		;701c
	or a			;701f
	ret z			;7020
	ld a,001h		;7021
	ret			;7023
sub_7024h:
	or a			;7024
	ld a,(0cc01h)		;7025
	ld hl,l7042h		;7028
	ld bc,00008h		;702b
	cpir			;702e
	ld a,002h		;7030
	jr nz,l7035h		;7032
	ld a,(hl)		;7034
l7035h:
	ld (0cc01h),a		;7035
	ret			;7038
	dec a			;7039
	ld hl,l7042h		;703a
	call 04600h		;703d
	ld a,(hl)		;7040
	ret			;7041
l7042h:
	ld (bc),a		;7042
	ld c,003h		;7043
	rlca			;7045
	ld a,(bc)		;7046
	dec bc			;7047
	ld (bc),a		;7048
l7049h:
	rst 38h			;7049
	rst 38h			;704a
	nop			;704b
	ld (bc),a		;704c
	rst 38h			;704d
	rst 38h			;704e
	rst 38h			;704f
	inc bc			;7050
	rst 38h			;7051
	rst 38h			;7052
	ld bc,00804h		;7053
	ld b,007h		;7056
	ld hl,0ce80h		;7058
	ld b,014h		;705b
l705dh:
	ld a,(hl)		;705d
	and a			;705e
	jr z,l7081h		;705f
	bit 7,a			;7061
	jr nz,l7081h		;7063
	push bc			;7065
	push hl			;7066
	ld hl,l70b7h		;7067
	ld bc,00023h		;706a
	cpir			;706d
	pop hl			;706f
	pop bc			;7070
	jr z,l7081h		;7071
	push hl			;7073
	ld de,00004h		;7074
	add hl,de		;7077
	ld (hl),001h		;7078
	ld de,00012h		;707a
	add hl,de		;707d
	ld (hl),000h		;707e
	pop hl			;7080
l7081h:
	ld de,00040h		;7081
	add hl,de		;7084
	djnz l705dh		;7085
	call sub_708bh		;7087
	ret			;708a
sub_708bh:
	ld hl,0ce80h		;708b
	ld b,014h		;708e
l7090h:
	ld a,(hl)		;7090
	push bc			;7091
	push hl			;7092
	ld hl,l70d2h		;7093
	ld bc,00008h		;7096
	cpir			;7099
	jr z,l70a6h		;709b
	pop hl			;709d
	pop bc			;709e
	ld de,00040h		;709f
	add hl,de		;70a2
	djnz l7090h		;70a3
	ret			;70a5
l70a6h:
	pop hl			;70a6
	pop bc			;70a7
	ld de,00016h		;70a8
	add hl,de		;70ab
	ld a,(0ce4ah)		;70ac
	dec a			;70af
	ld (hl),a		;70b0
	ld hl,0ce48h		;70b1
	ld (hl),001h		;70b4
	ret			;70b6
l70b7h:
	ld h,l			;70b7
	ld (bc),a		;70b8
	inc bc			;70b9
	ld c,024h		;70ba
	ld hl,(l7235h)		;70bc
	ld (hl),l		;70bf
	add hl,sp		;70c0
	ld c,b			;70c1
	ld c,l			;70c2
	ld l,c			;70c3
	ld l,d			;70c4
	ld l,e			;70c5
	ld d,d			;70c6
	ld d,e			;70c7
	ld d,h			;70c8
	dec sp			;70c9
	inc a			;70ca
	dec a			;70cb
	ld a,h			;70cc
	ccf			;70cd
	ld e,a			;70ce
	ld a,b			;70cf
	ld a,c			;70d0
	ld d,(hl)		;70d1
l70d2h:
	ld a,03eh		;70d2
	ld h,h			;70d4
	ld (hl),c		;70d5
	ld a,d			;70d6
	inc d			;70d7
	ld (hl),a		;70d8
	ld a,e			;70d9
	push af			;70da
	call sub_7207h		;70db
	pop de			;70de
	scf			;70df
	ret nz			;70e0
	push de			;70e1
	call sub_721dh		;70e2
	pop de			;70e5
	ld (hl),d		;70e6
	push hl			;70e7
	pop ix			;70e8
	call sub_66f7h		;70ea
	or a			;70ed
	ret			;70ee
sub_70efh:
	ld a,(ix+013h)		;70ef
	rrca			;70f2
	and 03fh		;70f3
	add a,(ix+008h)		;70f5
	ld h,a			;70f8
	ld l,(ix+007h)		;70f9
	ld a,(ix+014h)		;70fc
	rrca			;70ff
	and 03fh		;7100
	add a,(ix+00ah)		;7102
	ld d,a			;7105
	ld e,(ix+009h)		;7106
	ld bc,00c00h		;7109
	call sub_7725h		;710c
	ret			;710f
	call sub_7197h		;7110
	ld iy,0ca40h		;7113
	ld b,(iy+00ah)		;7117
	ld c,(iy+008h)		;711a
	push bc			;711d
	push iy			;711e
	call 04678h		;7120
	and 007h		;7123
	sub 004h		;7125
	add a,b			;7127
	ld (iy+00ah),a		;7128
	call 04678h		;712b
	and 007h		;712e
	sub 004h		;7130
	add a,c			;7132
	ld (iy+008h),a		;7133
	call sub_714ah		;7136
	pop iy			;7139
	pop bc			;713b
	ld (iy+00ah),b		;713c
	ld (iy+008h),c		;713f
	ret			;7142
l7143h:
	call sub_70efh		;7143
	ret c			;7146
	call sub_7197h		;7147
sub_714ah:
	call sub_7207h		;714a
	ret nz			;714d
	call sub_721dh		;714e
	push hl			;7151
	call sub_71b8h		;7152
	call sub_7270h		;7155
	call l7240h		;7158
	pop bc			;715b
sub_715ch:
	ld a,c			;715c
	ld c,l			;715d
	ld l,a			;715e
	ld a,b			;715f
	ld b,h			;7160
	ld h,a			;7161
	ld a,060h		;7162
	ld (hl),a		;7164
	push hl			;7165
	ld a,008h		;7166
	add a,l			;7168
	ld l,a			;7169
	ld a,(ix+008h)		;716a
	ld (hl),a		;716d
	inc l			;716e
	inc l			;716f
	ld a,(ix+00ah)		;7170
	ld (hl),a		;7173
	inc l			;7174
	ld (hl),c		;7175
	inc l			;7176
	ld (hl),b		;7177
	inc l			;7178
	ld (hl),e		;7179
	inc l			;717a
	ld (hl),d		;717b
	ld de,00009h		;717c
	add hl,de		;717f
	ld (hl),004h		;7180
	pop hl			;7182
	jp sub_66f7h		;7183
	exx			;7186
	ld hl,l71a8h		;7187
	ld de,(0ca19h)		;718a
	ld d,000h		;718e
	add hl,de		;7190
	ld a,(hl)		;7191
	ld (0ca26h),a		;7192
	exx			;7195
	ret			;7196
sub_7197h:
	exx			;7197
	ld hl,l71a8h		;7198
	ld de,(0ca19h)		;719b
	ld d,000h		;719f
	add hl,de		;71a1
	ld a,(hl)		;71a2
	ld (0ca26h),a		;71a3
	exx			;71a6
	ret			;71a7
l71a8h:
	djnz $+19		;71a8
	ld (de),a		;71aa
	inc de			;71ab
	inc d			;71ac
	dec d			;71ad
	ld d,017h		;71ae
	rla			;71b0
	jr $+26			;71b1
	add hl,de		;71b3
	add hl,de		;71b4
	ld a,(de)		;71b5
	ld a,(de)		;71b6
	dec de			;71b7
sub_71b8h:
	ld de,(0ca47h)		;71b8
	ld bc,(0ca49h)		;71bc
	call sub_71eah		;71c0
	ex de,hl		;71c3
sub_71c4h:
	ld e,(ix+007h)		;71c4
	ld d,(ix+008h)		;71c7
	ld c,(ix+009h)		;71ca
	ld b,(ix+00ah)		;71cd
	call sub_71eah		;71d0
	ld c,l			;71d3
	ld b,h			;71d4
	ret			;71d5
sub_71d6h:
	ld e,(iy+007h)		;71d6
	ld d,(iy+008h)		;71d9
	ld c,(iy+009h)		;71dc
	ld b,(iy+00ah)		;71df
	call sub_71eah		;71e2
	ex de,hl		;71e5
	call sub_71c4h		;71e6
	ret			;71e9
sub_71eah:
	ld a,e			;71ea
	rlca			;71eb
	rlca			;71ec
	rlca			;71ed
	and 007h		;71ee
	sla d			;71f0
	sla d			;71f2
	sla d			;71f4
	or d			;71f6
	ld e,a			;71f7
	ld a,c			;71f8
	rlca			;71f9
	rlca			;71fa
	rlca			;71fb
	and 007h		;71fc
	sla b			;71fe
	sla b			;7200
	sla b			;7202
	or b			;7204
	ld d,a			;7205
	ret			;7206
sub_7207h:
	ld hl,0d460h		;7207
	exx			;720a
	ld b,012h		;720b
l720dh:
	exx			;720d
	ld a,(hl)		;720e
	and a			;720f
	ret z			;7210
	ld a,020h		;7211
	add a,l			;7213
	jr nc,l7217h		;7214
	inc h			;7216
l7217h:
	ld l,a			;7217
	exx			;7218
	djnz l720dh		;7219
	exx			;721b
	ret			;721c
sub_721dh:
	push hl			;721d
	exx			;721e
	pop hl			;721f
	ld b,020h		;7220
	ld c,000h		;7222
l7224h:
	ld (hl),c		;7224
	inc hl			;7225
	djnz l7224h		;7226
	exx			;7228
	ret			;7229
	ld e,a			;722a
	ld a,d			;722b
	ld (0ca26h),a		;722c
	ld a,d			;722f
	and 080h		;7230
	ld (0ca23h),a		;7232
l7235h:
	ld a,d			;7235
	add a,040h		;7236
	and 080h		;7238
	ld (0ca24h),a		;723a
	ld a,e			;723d
	and 03fh		;723e
l7240h:
	ld d,000h		;7240
	ld e,a			;7242
	sub 03fh		;7243
	neg			;7245
	ld hl,l73ach+1		;7247
	push hl			;724a
	add hl,de		;724b
	ld c,(hl)		;724c
	pop hl			;724d
	ld e,a			;724e
	add hl,de		;724f
	ld a,(hl)		;7250
	ld (0ca22h),a		;7251
	ld e,c			;7254
	call sub_729eh		;7255
	ld a,(0ca23h)		;7258
	and a			;725b
	call nz,0460ah		;725c
	push de			;725f
	ld a,(0ca22h)		;7260
	ld e,a			;7263
	call sub_729eh		;7264
	ld a,(0ca24h)		;7267
	and a			;726a
	call nz,0460ah		;726b
	pop hl			;726e
	ret			;726f
sub_7270h:
	ld hl,0ca23h		;7270
	ld (hl),000h		;7273
	ld a,c			;7275
	sub e			;7276
	jr nc,l727ch		;7277
	neg			;7279
	inc (hl)		;727b
l727ch:
	inc hl			;727c
	ld (hl),000h		;727d
	and 0f0h		;727f
	ld e,a			;7281
	ld a,b			;7282
	sub d			;7283
	jr nc,l7289h		;7284
	neg			;7286
	inc (hl)		;7288
l7289h:
	ld d,a			;7289
	ld a,d			;728a
	rra			;728b
	rra			;728c
	rra			;728d
	rra			;728e
	and 00fh		;728f
	add a,e			;7291
	ld e,a			;7292
	ld d,000h		;7293
	ld hl,l73edh		;7295
	add hl,de		;7298
	ld a,(hl)		;7299
	ld (0ca20h),a		;729a
	ret			;729d
sub_729eh:
	ld a,(0ca26h)		;729e
	ld h,a			;72a1
	call sub_72b0h		;72a2
	xor a			;72a5
	add hl,hl		;72a6
	adc a,a			;72a7
	add hl,hl		;72a8
	adc a,a			;72a9
	add hl,hl		;72aa
	adc a,a			;72ab
	ld l,h			;72ac
	ld h,a			;72ad
	ex de,hl		;72ae
	ret			;72af
sub_72b0h:
	ld l,000h		;72b0
	ld d,l			;72b2
	add hl,hl		;72b3
	jr nc,l72b7h		;72b4
	add hl,de		;72b6
l72b7h:
	add hl,hl		;72b7
	jr nc,l72bbh		;72b8
	add hl,de		;72ba
l72bbh:
	add hl,hl		;72bb
	jr nc,l72bfh		;72bc
	add hl,de		;72be
l72bfh:
	add hl,hl		;72bf
	jr nc,l72c3h		;72c0
	add hl,de		;72c2
l72c3h:
	add hl,hl		;72c3
	jr nc,l72c7h		;72c4
	add hl,de		;72c6
l72c7h:
	add hl,hl		;72c7
	jr nc,l72cbh		;72c8
	add hl,de		;72ca
l72cbh:
	add hl,hl		;72cb
	jr nc,l72cfh		;72cc
	add hl,de		;72ce
l72cfh:
	add hl,hl		;72cf
	jr nc,l72d3h		;72d0
	add hl,de		;72d2
l72d3h:
	ret			;72d3
	ld a,(ix+008h)		;72d4
	cp 016h			;72d7
	ret nc			;72d9
	ld hl,0ce6ch		;72da
	inc (hl)		;72dd
	call sub_750fh		;72de
	ret c			;72e1
	call sub_7586h		;72e2
	ex af,af'		;72e5
	ld a,(ix+020h)		;72e6
	and a			;72e9
	jr nz,l72f1h		;72ea
	ex af,af'		;72ec
	ret nc			;72ed
	jp l7143h		;72ee
l72f1h:
	ex af,af'		;72f1
	ret c			;72f2
	jp l7143h		;72f3
	ld (0ca26h),a		;72f6
	call sub_70efh		;72f9
	ret c			;72fc
	jp sub_714ah		;72fd
	ld bc,00000h		;7300
	call sub_7197h		;7303
l7306h:
	ld a,(hl)		;7306
	inc a			;7307
	ret z			;7308
	dec a			;7309
	push hl			;730a
	push bc			;730b
	ld l,a			;730c
	ld h,000h		;730d
	add hl,hl		;730f
	ld de,l738dh		;7310
	add hl,de		;7313
	ld b,(hl)		;7314
	inc hl			;7315
	ld c,(hl)		;7316
	call sub_7322h		;7317
	pop bc			;731a
	call sub_737ch		;731b
	pop hl			;731e
	inc hl			;731f
	jr l7306h		;7320
sub_7322h:
	call sub_7207h		;7322
	ret nz			;7325
	call sub_721dh		;7326
	push hl			;7329
	push bc			;732a
	call sub_733bh		;732b
	pop bc			;732e
	call sub_734dh		;732f
	call l7240h		;7332
	pop bc			;7335
	call sub_715ch		;7336
	xor a			;7339
	ret			;733a
sub_733bh:
	push bc			;733b
	ld e,(ix+007h)		;733c
	ld d,(ix+008h)		;733f
	ld c,(ix+009h)		;7342
	ld b,(ix+00ah)		;7345
	call sub_71eah		;7348
	pop bc			;734b
	ret			;734c
sub_734dh:
	ld hl,0ca23h		;734d
	ld d,000h		;7350
	ld a,b			;7352
	rrca			;7353
	jr nc,l7357h		;7354
	inc d			;7356
l7357h:
	ld (hl),d		;7357
	ld d,000h		;7358
	inc hl			;735a
	rrca			;735b
	jr nc,l735fh		;735c
	inc d			;735e
l735fh:
	ld (hl),d		;735f
	ld a,c			;7360
	ret			;7361
	ld l,a			;7362
	ld h,000h		;7363
	add hl,hl		;7365
	ld de,l738dh		;7366
	add hl,de		;7369
	ld b,(hl)		;736a
	inc hl			;736b
	ld c,(hl)		;736c
	jr sub_7322h		;736d
	ld c,000h		;736f
	ld a,l			;7371
	and 0e0h		;7372
	ld l,a			;7374
	ld (hl),b		;7375
	ld a,005h		;7376
	add a,l			;7378
	ld l,a			;7379
	ld (hl),c		;737a
	ret			;737b
sub_737ch:
	ld a,l			;737c
	and 0e0h		;737d
	ld l,a			;737f
	ld a,008h		;7380
	add a,l			;7382
	ld l,a			;7383
	ld a,c			;7384
	add a,(hl)		;7385
	ld (hl),a		;7386
	inc l			;7387
	inc l			;7388
	ld a,b			;7389
	add a,(hl)		;738a
	ld (hl),a		;738b
	ret			;738c
l738dh:
	ld (bc),a		;738d
	nop			;738e
	inc bc			;738f
	djnz $+5		;7390
	jr nz,l7397h		;7392
	jr nc,l7397h		;7394
	ccf			;7396
l7397h:
	ld bc,00130h		;7397
	jr nz,$+3		;739a
	djnz l739fh		;739c
	nop			;739e
l739fh:
	nop			;739f
	djnz l73a2h		;73a0
l73a2h:
	jr nz,l73a4h		;73a2
l73a4h:
	jr nc,l73a6h		;73a4
l73a6h:
	ccf			;73a6
	ld (bc),a		;73a7
	jr nc,l73ach		;73a8
	jr nz,l73aeh		;73aa
l73ach:
	djnz l73aeh		;73ac
l73aeh:
	ld b,00ch		;73ae
	ld (de),a		;73b0
	add hl,de		;73b1
	rra			;73b2
	ld h,02ch		;73b3
	ld (03e38h),a		;73b5
	ld b,h			;73b8
	ld c,d			;73b9
	ld d,b			;73ba
	ld d,(hl)		;73bb
	ld e,h			;73bc
	ld h,d			;73bd
	ld l,b			;73be
	ld l,l			;73bf
	ld (hl),e		;73c0
	ld a,c			;73c1
	ld a,(hl)		;73c2
	add a,h			;73c3
	adc a,c			;73c4
	adc a,(hl)		;73c5
	sub e			;73c6
	sbc a,c			;73c7
	sbc a,(hl)		;73c8
	and d			;73c9
	and a			;73ca
	xor h			;73cb
	or c			;73cc
	or l			;73cd
	cp c			;73ce
	cp (hl)			;73cf
	jp nz,0cac6h		;73d0
	adc a,0d1h		;73d3
	push de			;73d5
	ret c			;73d6
	call c,0e2dfh		;73d7
	push hl			;73da
	rst 20h			;73db
	jp pe,0efedh		;73dc
	pop af			;73df
	di			;73e0
	push af			;73e1
	rst 30h			;73e2
	ret m			;73e3
	jp m,0fcfbh		;73e4
	defb 0fdh,0feh,0feh ;illegal sequence	;73e7
	rst 38h			;73ea
	rst 38h			;73eb
	rst 38h			;73ec
l73edh:
	jr nz,l73fch		;73ed
	ex af,af'		;73ef
	ld b,004h		;73f0
	inc b			;73f2
	inc bc			;73f3
	inc bc			;73f4
	ld (bc),a		;73f5
	ld (bc),a		;73f6
	ld (bc),a		;73f7
	ld (bc),a		;73f8
	ld bc,00101h		;73f9
l73fch:
	ld bc,02033h		;73fc
	ld d,010h		;73ff
	dec c			;7401
	dec bc			;7402
	add hl,bc		;7403
	ex af,af'		;7404
	rlca			;7405
	ld b,006h		;7406
	dec b			;7408
	dec b			;7409
	inc b			;740a
	inc b			;740b
	inc b			;740c
	jr c,l7439h		;740d
	jr nz,l742ah		;740f
	dec d			;7411
	ld de,00d0fh		;7412
	inc c			;7415
	ld a,(bc)		;7416
	add hl,bc		;7417
	add hl,bc		;7418
	ex af,af'		;7419
	rlca			;741a
	rlca			;741b
	ld b,03ah		;741c
	cpl			;741e
	daa			;741f
	jr nz,l743dh		;7420
	rla			;7422
	inc d			;7423
	ld (de),a		;7424
	djnz $+16		;7425
	dec c			;7427
	inc c			;7428
	dec bc			;7429
l742ah:
	ld a,(bc)		;742a
	ld a,(bc)		;742b
	add hl,bc		;742c
	dec sp			;742d
	inc sp			;742e
	dec hl			;742f
	dec h			;7430
	jr nz,l744fh		;7431
	add hl,de		;7433
	ld d,014h		;7434
	ld (de),a		;7436
	djnz l7448h		;7437
l7439h:
	ld c,00dh		;7439
	inc c			;743b
	dec bc			;743c
l743dh:
	inc a			;743d
	dec (hl)		;743e
	ld l,029h		;743f
	inc h			;7441
	jr nz,l7460h		;7442
	ld a,(de)		;7444
	rla			;7445
	dec d			;7446
	inc d			;7447
l7448h:
	ld (de),a		;7448
	ld de,00f10h		;7449
	ld c,03dh		;744c
	scf			;744e
l744fh:
	ld sp,0272ch		;744f
	inc hl			;7452
	jr nz,l7472h		;7453
	ld a,(de)		;7455
	jr l746eh		;7456
	dec d			;7458
	inc de			;7459
	ld (de),a		;745a
	ld de,03d10h		;745b
	jr c,l7493h		;745e
l7460h:
	ld l,02ah		;7460
	ld h,023h		;7462
	jr nz,l7483h		;7464
	dec de			;7466
	add hl,de		;7467
	rla			;7468
	ld d,015h		;7469
	inc de			;746b
	ld (de),a		;746c
	dec a			;746d
l746eh:
	add hl,sp		;746e
	inc (hl)		;746f
	jr nc,l749eh		;7470
l7472h:
	jr z,l7499h		;7472
	ld (01e20h),hl		;7474
	inc e			;7477
	ld a,(de)		;7478
	jr l7492h		;7479
	dec d			;747b
	inc d			;747c
	ld a,039h		;747d
	dec (hl)		;747f
	ld sp,02a2eh		;7480
l7483h:
	daa			;7483
	dec h			;7484
	ld (01e20h),hl		;7485
	inc e			;7488
	ld a,(de)		;7489
	add hl,de		;748a
	rla			;748b
	ld d,03eh		;748c
	ld a,(03336h)		;748e
	cpl			;7491
l7492h:
	inc l			;7492
l7493h:
	add hl,hl		;7493
	daa			;7494
	inc h			;7495
	ld (01e20h),hl		;7496
l7499h:
	inc e			;7499
	dec de			;749a
	add hl,de		;749b
	jr $+64			;749c
l749eh:
	dec sp			;749e
	scf			;749f
	inc (hl)		;74a0
	ld sp,02b2eh		;74a1
	jr z,l74cch		;74a4
	inc h			;74a6
	ld (01e20h),hl		;74a7
	dec e			;74aa
	dec de			;74ab
	ld a,(de)		;74ac
	ld a,03bh		;74ad
	jr c,l74e6h		;74af
	ld (02c2fh),a		;74b1
	ld hl,(02528h)		;74b4
	inc hl			;74b7
	ld (01e20h),hl		;74b8
	dec e			;74bb
	inc e			;74bc
	ld a,03bh		;74bd
	jr c,l74f7h		;74bf
	inc sp			;74c1
	jr nc,$+48		;74c2
	dec hl			;74c4
	add hl,hl		;74c5
	daa			;74c6
	dec h			;74c7
	inc hl			;74c8
	ld hl,01e20h		;74c9
l74cch:
	dec e			;74cc
	ld a,03ch		;74cd
	add hl,sp		;74cf
	ld (hl),034h		;74d0
	ld sp,02c2fh		;74d2
	ld hl,(02628h)		;74d5
	dec h			;74d8
	inc hl			;74d9
	ld hl,01e20h		;74da
	ccf			;74dd
	inc a			;74de
	add hl,sp		;74df
	scf			;74e0
	inc (hl)		;74e1
	ld (02d30h),a		;74e2
	dec hl			;74e5
l74e6h:
	add hl,hl		;74e6
	jr z,sub_750fh		;74e7
	inc h			;74e9
	inc hl			;74ea
	ld hl,0c620h		;74eb
	ld b,b			;74ee
	ld h,000h		;74ef
	bit 7,a			;74f1
	jr z,l74ffh		;74f3
	res 7,a			;74f5
l74f7h:
	call l74ffh		;74f7
	neg			;74fa
	ld l,a			;74fc
	dec h			;74fd
	ret			;74fe
l74ffh:
	bit 6,a			;74ff
	jr z,l7506h		;7501
	cpl			;7503
	and 03fh		;7504
l7506h:
	ld de,l73ach+1		;7506
	call 04605h		;7509
	ld a,(de)		;750c
	ld l,a			;750d
	ret			;750e
sub_750fh:
	call 04678h		;750f
	and 00fh		;7512
	ld hl,0ca19h		;7514
	cp (hl)			;7517
	ccf			;7518
	ret			;7519
	push bc			;751a
	call l7143h		;751b
	pop bc			;751e
	ret c			;751f
	jp sub_737ch		;7520
	ld hl,0d440h		;7523
	ld bc,0025fh		;7526
	call 04648h		;7529
	nop			;752c
	nop			;752d
	nop			;752e
	nop			;752f
	nop			;7530
	nop			;7531
	nop			;7532
	nop			;7533
	nop			;7534
	nop			;7535
	nop			;7536
	nop			;7537
	nop			;7538
	nop			;7539
	nop			;753a
	nop			;753b
	ld a,(0ca1ah)		;753c
	add a,(ix+007h)		;753f
	ld a,000h		;7542
	adc a,e			;7544
	ld e,a			;7545
	ld a,(0ca1ch)		;7546
	add a,(ix+009h)		;7549
	ld a,000h		;754c
	adc a,d			;754e
	ld d,a			;754f
	call sub_7b18h		;7550
	ccf			;7553
	ret c			;7554
	ld a,(de)		;7555
	ld h,0deh		;7556
	ld l,a			;7558
	ld a,(hl)		;7559
	bit 0,a			;755a
	ret			;755c
	ld a,(0ca48h)		;755d
	sub (ix+008h)		;7560
	ld e,a			;7563
	ld a,(0ca4ah)		;7564
	sub (ix+00ah)		;7567
	ld d,a			;756a
	ret			;756b
	ld hl,(0ca49h)		;756c
	ld b,(ix+00ah)		;756f
	ld c,(ix+009h)		;7572
	or a			;7575
	sbc hl,bc		;7576
	ex de,hl		;7578
	ld hl,(0ca47h)		;7579
	ld b,(ix+008h)		;757c
	ld c,(ix+007h)		;757f
	or a			;7582
	sbc hl,bc		;7583
	ret			;7585
sub_7586h:
	push de			;7586
	ld hl,(0ca47h)		;7587
	ld d,(ix+008h)		;758a
	ld e,(ix+007h)		;758d
	or a			;7590
	sbc hl,de		;7591
	pop de			;7593
	ret			;7594
	ld h,d			;7595
	ld d,e			;7596
	ld e,000h		;7597
	ld l,e			;7599
	push bc			;759a
	call sub_76d0h		;759b
	call sub_7b18h		;759e
	jp nc,l76c4h		;75a1
	ld a,(de)		;75a4
	call sub_76c9h		;75a5
	pop bc			;75a8
	ret			;75a9
	push bc			;75aa
	call sub_76d0h		;75ab
	push de			;75ae
	call sub_7b18h		;75af
	jp nc,l76c3h		;75b2
	ld a,(de)		;75b5
	ld h,0deh		;75b6
	ld l,a			;75b8
	ld a,(hl)		;75b9
	bit 2,a			;75ba
	pop de			;75bc
	pop bc			;75bd
	or a			;75be
	bit 0,a			;75bf
	ret			;75c1
	push bc			;75c2
	call sub_76d0h		;75c3
	push de			;75c6
	call sub_7b18h		;75c7
	jp nc,l76c3h		;75ca
	ld a,(de)		;75cd
	ld h,0deh		;75ce
	ld l,a			;75d0
	ld a,(hl)		;75d1
	bit 2,a			;75d2
	pop de			;75d4
	push af			;75d5
	jr nz,l75fah		;75d6
	pop af			;75d8
	pop bc			;75d9
	or a			;75da
	bit 0,a			;75db
	ret			;75dd
	ld d,(ix+00ah)		;75de
	ld e,(ix+008h)		;75e1
	ld c,001h		;75e4
	push bc			;75e6
	push af			;75e7
	ld a,(0ca1ah)		;75e8
	add a,(ix+007h)		;75eb
	jr nc,l75f1h		;75ee
	inc e			;75f0
l75f1h:
	ld a,(0ca1ch)		;75f1
	add a,(ix+009h)		;75f4
	jr nc,l75fah		;75f7
	inc d			;75f9
l75fah:
	push de			;75fa
	call sub_7606h		;75fb
	pop de			;75fe
	pop bc			;75ff
	ld a,b			;7600
	pop bc			;7601
	bit 0,a			;7602
	ret nc			;7604
	ret			;7605
sub_7606h:
	push de			;7606
	exx			;7607
	pop de			;7608
	inc d			;7609
	inc e			;760a
	exx			;760b
	ld hl,0ce80h		;760c
	ld b,014h		;760f
l7611h:
	push bc			;7611
	ld a,(hl)		;7612
	or a			;7613
	jr z,l7619h		;7614
	call sub_7622h		;7616
l7619h:
	ld bc,00040h		;7619
	add hl,bc		;761c
	pop bc			;761d
	djnz l7611h		;761e
	or a			;7620
	ret			;7621
sub_7622h:
	ld a,008h		;7622
	add a,l			;7624
	ld l,a			;7625
	ld c,(hl)		;7626
	inc hl			;7627
	inc hl			;7628
	ld b,(hl)		;7629
	ld a,009h		;762a
	add a,l			;762c
	ld l,a			;762d
	ld e,(hl)		;762e
	inc hl			;762f
	ld d,(hl)		;7630
	res 7,d			;7631
	exx			;7633
	ld a,d			;7634
	exx			;7635
	sub b			;7636
	cp d			;7637
	jr nc,l7654h		;7638
	exx			;763a
	ld a,e			;763b
	exx			;763c
	sub c			;763d
	cp e			;763e
	jr nc,l7654h		;763f
	ld a,l			;7641
	and 0e0h		;7642
	ld l,a			;7644
	push hl			;7645
	pop iy			;7646
	call sub_7662h		;7648
	jr nc,l7654h		;764b
	call sub_76a9h		;764d
	scf			;7650
	jp 0469dh		;7651
l7654h:
	ld a,l			;7654
	and 0e0h		;7655
	ld l,a			;7657
	ret			;7658
l7659h:
	ld a,(iy+000h)		;7659
	cp 003h			;765c
	jr z,l7670h		;765e
	or a			;7660
	ret			;7661
sub_7662h:
	or a			;7662
	bit 4,(iy+015h)		;7663
	jr z,l76a8h		;7667
	ld a,(ix+000h)		;7669
	cp 001h			;766c
	jr z,l7659h		;766e
l7670h:
	push hl			;7670
	ld h,(iy+00ah)		;7671
	ld l,(iy+009h)		;7674
	ld bc,(0ca1ch)		;7677
	ld b,000h		;767b
	add hl,bc		;767d
	ld a,(iy+014h)		;767e
	and 01fh		;7681
	dec a			;7683
	ld b,a			;7684
	exx			;7685
	ld a,d			;7686
	dec a			;7687
	exx			;7688
	sub h			;7689
	cp b			;768a
	jr nc,l76a7h		;768b
	ld h,(iy+008h)		;768d
	ld l,(iy+007h)		;7690
	ld bc,(0ca1ah)		;7693
	ld b,000h		;7697
	add hl,bc		;7699
	ld a,(iy+013h)		;769a
	and 01fh		;769d
	dec a			;769f
	ld b,a			;76a0
	exx			;76a1
	ld a,e			;76a2
	dec a			;76a3
	exx			;76a4
	sub h			;76a5
	cp b			;76a6
l76a7h:
	pop hl			;76a7
l76a8h:
	ret			;76a8
sub_76a9h:
	ld a,(ix+000h)		;76a9
	cp 004h			;76ac
	jr z,l76bdh		;76ae
	ld c,001h		;76b0
	sub 002h		;76b2
	cp 008h			;76b4
	ret nc			;76b6
	ld c,002h		;76b7
l76b9h:
	ld (iy+004h),c		;76b9
	ret			;76bc
l76bdh:
	ld a,(ix+006h)		;76bd
	ld c,a			;76c0
	jr l76b9h		;76c1
l76c3h:
	pop de			;76c3
l76c4h:
	ld a,080h		;76c4
	pop bc			;76c6
	scf			;76c7
	ret			;76c8
sub_76c9h:
	ld h,0deh		;76c9
	ld l,a			;76cb
	ld a,(hl)		;76cc
	bit 0,a			;76cd
	ret			;76cf
sub_76d0h:
	ld b,(ix+008h)		;76d0
	ld c,(ix+007h)		;76d3
	add hl,bc		;76d6
	ld bc,(0ca1ah)		;76d7
	ld b,000h		;76db
	add hl,bc		;76dd
	ex de,hl		;76de
	ld b,(ix+00ah)		;76df
	ld c,(ix+009h)		;76e2
	add hl,bc		;76e5
	ld bc,(0ca1ch)		;76e6
	ld b,000h		;76ea
	add hl,bc		;76ec
	ld l,d			;76ed
	ex de,hl		;76ee
	ret			;76ef
	ret			;76f0
	ld a,d			;76f1
	cp 020h			;76f2
	ret nc			;76f4
	ld a,e			;76f5
	cp 018h			;76f6
	ret nc			;76f8
	call 04e3ah		;76f9
	ex de,hl		;76fc
	scf			;76fd
	ret			;76fe
	push bc			;76ff
	ld l,(ix+009h)		;7700
	ld h,(ix+00ah)		;7703
	ld e,(ix+014h)		;7706
	srl e			;7709
	ld d,000h		;770b
	add hl,de		;770d
	ex de,hl		;770e
	ld l,(ix+007h)		;770f
	ld h,(ix+008h)		;7712
	ld c,(ix+014h)		;7715
	srl c			;7718
	ld b,000h		;771a
	add hl,bc		;771c
	pop bc			;771d
	jr sub_7725h		;771e
	ld h,e			;7720
	ld l,000h		;7721
	ld d,000h		;7723
sub_7725h:
	push bc			;7725
	push de			;7726
	ex de,hl		;7727
	ld hl,(0ca47h)		;7728
	inc h			;772b
	or a			;772c
	sbc hl,de		;772d
	bit 7,h			;772f
	call nz,04612h		;7731
	ex de,hl		;7734
	ld hl,(0ca49h)		;7735
	inc h			;7738
	pop bc			;7739
	or a			;773a
	sbc hl,bc		;773b
	bit 7,h			;773d
	call nz,04612h		;773f
	add hl,de		;7742
	pop bc			;7743
	sbc hl,bc		;7744
	ret			;7746
l7747h:
	ld bc,(0f0f2h)		;7747
	push bc			;774b
	call 04bb0h		;774c
	call sub_776bh		;774f
	pop bc			;7752
	ld (0f0f2h),bc		;7753
	ld a,c			;7757
	ld (09000h),a		;7758
	ld a,b			;775b
	ld (0b000h),a		;775c
	ret			;775f
l7760h:
	ld a,(ix+015h)		;7760
	and 021h		;7763
	cp 020h			;7765
	ret nz			;7767
	jp sub_6eb4h		;7768
sub_776bh:
	ld a,(ix+015h)		;776b
	and 003h		;776e
	jr z,l7760h		;7770
	jp pe,l777bh		;7772
	rrca			;7775
	jr c,l777eh		;7776
	jp l7a3eh		;7778
l777bh:
	call l7a3eh		;777b
l777eh:
	ld (ix+019h),000h	;777e
	ld a,(ix+000h)		;7782
	dec a			;7785
	ld l,a			;7786
	ld h,000h		;7787
	add hl,hl		;7789
	ld de,08496h		;778a
	add hl,de		;778d
	ld e,(hl)		;778e
	inc hl			;778f
	ld d,(hl)		;7790
	ld l,(ix+005h)		;7791
	ld h,000h		;7794
	add hl,hl		;7796
	add hl,de		;7797
	ld e,(hl)		;7798
	inc hl			;7799
	ld d,(hl)		;779a
	ex de,hl		;779b
	bit 3,(ix+015h)		;779c
	jr nz,l77b9h		;77a0
	ld b,(hl)		;77a2
	res 7,b			;77a3
l77a5h:
	push bc			;77a5
	call sub_7864h		;77a6
	call c,sub_7861h	;77a9
	push hl			;77ac
	call sub_78e6h		;77ad
	call c,sub_7821h	;77b0
	pop hl			;77b3
	pop bc			;77b4
	djnz l77a5h		;77b5
	or a			;77b7
	ret			;77b8
l77b9h:
	ld b,(hl)		;77b9
	res 7,b			;77ba
l77bch:
	push bc			;77bc
	call sub_7864h		;77bd
	call c,sub_7861h	;77c0
	push hl			;77c3
	call sub_79b6h		;77c4
	call c,sub_7821h	;77c7
	pop hl			;77ca
	pop bc			;77cb
	djnz l77bch		;77cc
	or a			;77ce
	ret			;77cf
	ld bc,(0f0f2h)		;77d0
	push bc			;77d4
	call 04bb0h		;77d5
	ld (ix+019h),000h	;77d8
	ld a,(ix+000h)		;77dc
	dec a			;77df
	ld l,a			;77e0
	ld h,000h		;77e1
	add hl,hl		;77e3
	ld de,08496h		;77e4
	add hl,de		;77e7
	ld e,(hl)		;77e8
	inc hl			;77e9
	ld d,(hl)		;77ea
	ld l,(ix+005h)		;77eb
	ld h,000h		;77ee
	add hl,hl		;77f0
	add hl,de		;77f1
	ld e,(hl)		;77f2
	inc hl			;77f3
	ld d,(hl)		;77f4
	ex de,hl		;77f5
	ld b,(hl)		;77f6
	res 7,b			;77f7
l77f9h:
	push bc			;77f9
	call sub_7864h		;77fa
	call c,sub_7861h	;77fd
	push hl			;7800
	call sub_794eh		;7801
	call c,sub_7821h	;7804
	pop hl			;7807
	pop bc			;7808
	djnz l77f9h		;7809
	or a			;780b
	pop bc			;780c
	ld (0f0f2h),bc		;780d
	ld a,c			;7811
	ld (09000h),a		;7812
	ld a,b			;7815
	ld (0b000h),a		;7816
	ret			;7819
l781ah:
	ld a,001h		;781a
	ld (0c0ech),a		;781c
	scf			;781f
	ret			;7820
sub_7821h:
	ld a,(ix+000h)		;7821
	cp 001h			;7824
	jr z,l781ah		;7826
	cp 01fh			;7828
	ret z			;782a
	cp 043h			;782b
	ret z			;782d
	cp 050h			;782e
	ret z			;7830
	cp 048h			;7831
	ret z			;7833
	pop hl			;7834
	pop bc			;7835
	pop bc			;7836
	inc hl			;7837
	inc hl			;7838
	inc hl			;7839
	inc hl			;783a
	inc hl			;783b
	push hl			;783c
	push ix			;783d
	pop de			;783f
	ld hl,02ba0h		;7840
	add hl,de		;7843
	ld bc,00240h		;7844
	or a			;7847
	sbc hl,bc		;7848
	jr c,l785ch		;784a
	ld hl,03180h		;784c
	add hl,de		;784f
	ld bc,00500h		;7850
	or a			;7853
	sbc hl,bc		;7854
	ret nc			;7856
	call l6e98h		;7857
	scf			;785a
	ret			;785b
l785ch:
	call l6each		;785c
	scf			;785f
	ret			;7860
sub_7861h:
	ld e,0e8h		;7861
	ret			;7863
sub_7864h:
	ld a,b			;7864
	dec a			;7865
	jr nz,l78b2h		;7866
	ex de,hl		;7868
	ld h,(ix+008h)		;7869
	ld l,(ix+007h)		;786c
	add hl,hl		;786f
	add hl,hl		;7870
	add hl,hl		;7871
	call c,sub_7897h	;7872
	ld a,h			;7875
	ld h,(ix+00ah)		;7876
	ld l,(ix+009h)		;7879
	add hl,hl		;787c
	add hl,hl		;787d
	add hl,hl		;787e
	ex de,hl		;787f
	jp c,l78a4h		;7880
	inc hl			;7883
	ld b,(hl)		;7884
	inc hl			;7885
	add a,(hl)		;7886
	ld e,a			;7887
	inc hl			;7888
	ld a,d			;7889
	add a,(hl)		;788a
	jp c,l78a7h		;788b
	ld d,a			;788e
	inc hl			;788f
	ld c,(hl)		;7890
	inc hl			;7891
	ld a,b			;7892
	ld b,(hl)		;7893
	inc hl			;7894
	or a			;7895
	ret			;7896
sub_7897h:
	ld a,(ix+008h)		;7897
	cp 0feh			;789a
	ret nc			;789c
	ex de,hl		;789d
	call l78a4h		;789e
	jp 0469fh		;78a1
l78a4h:
	inc hl			;78a4
	inc hl			;78a5
	inc hl			;78a6
l78a7h:
	inc hl			;78a7
	inc hl			;78a8
	inc hl			;78a9
	ld bc,00101h		;78aa
	ld a,000h		;78ad
	ld e,0e8h		;78af
	ret			;78b1
l78b2h:
	ex de,hl		;78b2
	ld h,(ix+008h)		;78b3
	ld l,(ix+007h)		;78b6
	add hl,hl		;78b9
	add hl,hl		;78ba
	add hl,hl		;78bb
	call c,sub_7897h	;78bc
	ld a,h			;78bf
	ld h,(ix+00ah)		;78c0
	ld l,(ix+009h)		;78c3
	add hl,hl		;78c6
	add hl,hl		;78c7
	add hl,hl		;78c8
	ex de,hl		;78c9
	jp c,l78a4h		;78ca
	inc hl			;78cd
	ld b,(hl)		;78ce
	inc hl			;78cf
	add a,(hl)		;78d0
	ld e,a			;78d1
	inc hl			;78d2
	ld a,d			;78d3
	add a,(hl)		;78d4
	jp c,l78a7h		;78d5
	ld d,a			;78d8
	inc hl			;78d9
	ld c,(hl)		;78da
	inc hl			;78db
	ld a,b			;78dc
	ld b,(hl)		;78dd
	inc hl			;78de
	or a			;78df
	ret			;78e0
l78e1h:
	ld (ix+019h),000h	;78e1
	ret			;78e5
sub_78e6h:
	ld l,(ix+000h)		;78e6
	ld h,0dfh		;78e9
	add a,(hl)		;78eb
	ex af,af'		;78ec
	ld a,(ix+019h)		;78ed
	or a			;78f0
	jr nz,l7913h		;78f1
	inc a			;78f3
	ld (ix+019h),a		;78f4
	ld a,(ix+01ah)		;78f7
	or a			;78fa
	call z,sub_793dh	;78fb
l78feh:
	ld l,a			;78fe
	ld a,(0c0aah)		;78ff
	ld h,a			;7902
	res 7,(hl)		;7903
	res 0,l			;7905
	ld h,0c0h		;7907
	ld (hl),e		;7909
	inc h			;790a
	ld (hl),d		;790b
	inc h			;790c
	ex af,af'		;790d
	ld (hl),a		;790e
	inc h			;790f
	ld (hl),c		;7910
	or a			;7911
	ret			;7912
l7913h:
	cp 006h			;7913
	ret nc			;7915
	inc a			;7916
	ld (ix+019h),a		;7917
	push ix			;791a
	pop hl			;791c
	push bc			;791d
	add a,019h		;791e
	ld c,a			;7920
	ld b,000h		;7921
	add hl,bc		;7923
	pop bc			;7924
	ld a,(hl)		;7925
	or a			;7926
	call z,sub_792ch	;7927
	jr l78feh		;792a
sub_792ch:
	push bc			;792c
	push hl			;792d
	ld hl,0c023h		;792e
	ld b,00ch		;7931
	call sub_7a20h		;7933
	pop hl			;7936
	ld (hl),a		;7937
	pop bc			;7938
	ret nc			;7939
	jp 0469fh		;793a
sub_793dh:
	push bc			;793d
	ld hl,0c023h		;793e
	ld b,00ch		;7941
	call sub_7a20h		;7943
	ld (ix+01ah),a		;7946
	pop bc			;7949
	ret nc			;794a
	jp 0469fh		;794b
sub_794eh:
	ld l,(ix+000h)		;794e
	ld h,0dfh		;7951
	add a,(hl)		;7953
	ex af,af'		;7954
	ld a,(ix+019h)		;7955
	or a			;7958
	jr nz,l797bh		;7959
	inc a			;795b
	ld (ix+019h),a		;795c
	ld a,(ix+01ah)		;795f
	or a			;7962
	call z,sub_79a5h	;7963
l7966h:
	ld l,a			;7966
	ld a,(0c0aah)		;7967
	ld h,a			;796a
	res 7,(hl)		;796b
	res 0,l			;796d
	ld h,0c0h		;796f
	ld (hl),e		;7971
	inc h			;7972
	ld (hl),d		;7973
	inc h			;7974
	ex af,af'		;7975
	ld (hl),a		;7976
	inc h			;7977
	ld (hl),c		;7978
	or a			;7979
	ret			;797a
l797bh:
	cp 006h			;797b
	ret nc			;797d
	inc a			;797e
	ld (ix+019h),a		;797f
	push ix			;7982
	pop hl			;7984
	push bc			;7985
	add a,019h		;7986
	ld c,a			;7988
	ld b,000h		;7989
	add hl,bc		;798b
	pop bc			;798c
	ld a,(hl)		;798d
	or a			;798e
	call z,sub_7994h	;798f
	jr l7966h		;7992
sub_7994h:
	push bc			;7994
	push hl			;7995
	ld hl,0c009h		;7996
	ld b,00dh		;7999
	call sub_7a20h		;799b
	pop hl			;799e
	ld (hl),a		;799f
	pop bc			;79a0
	ret nc			;79a1
	jp 0469fh		;79a2
sub_79a5h:
	push bc			;79a5
	ld hl,0c009h		;79a6
	ld b,00dh		;79a9
	call sub_7a20h		;79ab
	ld (ix+01ah),a		;79ae
	pop bc			;79b1
	ret nc			;79b2
	jp 0469fh		;79b3
sub_79b6h:
	ld l,(ix+000h)		;79b6
	ld h,0dfh		;79b9
	add a,(hl)		;79bb
	ex af,af'		;79bc
	ld a,(ix+019h)		;79bd
	or a			;79c0
	jr nz,l79e5h		;79c1
	inc a			;79c3
	ld (ix+019h),a		;79c4
	ld a,(ix+01ah)		;79c7
	or a			;79ca
	call z,sub_79feh	;79cb
l79ceh:
	ld l,a			;79ce
	ld a,(0c0aah)		;79cf
	ld h,a			;79d2
	res 7,(hl)		;79d3
	res 0,l			;79d5
	ld h,0c0h		;79d7
	ld (hl),e		;79d9
	inc h			;79da
	ld (hl),d		;79db
	inc h			;79dc
	ex af,af'		;79dd
	ld (hl),a		;79de
	inc h			;79df
	ld (hl),c		;79e0
	inc h			;79e1
	ld (hl),b		;79e2
	or a			;79e3
	ret			;79e4
l79e5h:
	cp 006h			;79e5
	ret nc			;79e7
	push ix			;79e8
	pop hl			;79ea
	inc a			;79eb
	ld (ix+019h),a		;79ec
	push bc			;79ef
	add a,019h		;79f0
	ld c,a			;79f2
	ld b,000h		;79f3
	add hl,bc		;79f5
	pop bc			;79f6
	ld a,(hl)		;79f7
	or a			;79f8
	call z,sub_7a0fh	;79f9
	jr l79ceh		;79fc
sub_79feh:
	push bc			;79fe
	ld hl,0c03bh		;79ff
	ld b,00ch		;7a02
	call sub_7a20h		;7a04
	ld (ix+01ah),a		;7a07
	pop bc			;7a0a
	ret nc			;7a0b
	jp 0469fh		;7a0c
sub_7a0fh:
	push bc			;7a0f
	push hl			;7a10
	ld hl,0c03bh		;7a11
	ld b,00ch		;7a14
	call sub_7a20h		;7a16
	pop hl			;7a19
	ld (hl),a		;7a1a
	pop bc			;7a1b
	ret nc			;7a1c
	jp 0469fh		;7a1d
sub_7a20h:
	call sub_7a35h		;7a20
	jr nz,l7a31h		;7a23
	ld (hl),08fh		;7a25
	inc h			;7a27
	inc h			;7a28
	inc h			;7a29
	ld (hl),08fh		;7a2a
	dec h			;7a2c
	dec h			;7a2d
	dec h			;7a2e
	ld a,l			;7a2f
	ret			;7a30
l7a31h:
	ld a,000h		;7a31
	scf			;7a33
	ret			;7a34
sub_7a35h:
	xor a			;7a35
l7a36h:
	cp (hl)			;7a36
	ret z			;7a37
	inc l			;7a38
	inc l			;7a39
	djnz l7a36h		;7a3a
	scf			;7a3c
	ret			;7a3d
l7a3eh:
	call sub_7a5fh		;7a3e
	jr l7abah		;7a41
	push af			;7a43
	call 04bb0h		;7a44
	pop af			;7a47
	ld l,(ix+000h)		;7a48
	dec l			;7a4b
	ld h,000h		;7a4c
	add hl,hl		;7a4e
	ld de,08596h		;7a4f
	add hl,de		;7a52
	ld e,(hl)		;7a53
	inc hl			;7a54
	ld d,(hl)		;7a55
	call sub_7a70h		;7a56
	call l7abah		;7a59
	jp 04b99h		;7a5c
sub_7a5fh:
	ld l,(ix+000h)		;7a5f
	dec l			;7a62
	ld h,000h		;7a63
	add hl,hl		;7a65
	ld de,08596h		;7a66
	add hl,de		;7a69
	ld e,(hl)		;7a6a
	inc hl			;7a6b
	ld d,(hl)		;7a6c
	ld a,(ix+006h)		;7a6d
sub_7a70h:
	ld h,000h		;7a70
	ld l,a			;7a72
	add hl,hl		;7a73
	add hl,de		;7a74
	ld e,(hl)		;7a75
	inc hl			;7a76
	ld d,(hl)		;7a77
	ex de,hl		;7a78
	ld a,(0ca1ah)		;7a79
	add a,(ix+007h)		;7a7c
	ld a,(ix+008h)		;7a7f
	adc a,(hl)		;7a82
	ld e,a			;7a83
	inc hl			;7a84
	ld a,(0ca1ch)		;7a85
	add a,(ix+009h)		;7a88
	ld a,(ix+00ah)		;7a8b
	adc a,(hl)		;7a8e
	ld d,a			;7a8f
	inc hl			;7a90
	ld b,(hl)		;7a91
	inc hl			;7a92
	ld c,(hl)		;7a93
	inc hl			;7a94
	ret			;7a95
	call 04bb0h		;7a96
	call sub_7aa8h		;7a99
	jp 04b99h		;7a9c
sub_7a9fh:
	inc d			;7a9f
	ld a,d			;7aa0
	cp 0deh			;7aa1
	ret c			;7aa3
	scf			;7aa4
	jp 0469bh		;7aa5
sub_7aa8h:
	ld a,(0ca1ah)		;7aa8
	add a,(ix+007h)		;7aab
	jr nc,l7ab1h		;7aae
	inc e			;7ab0
l7ab1h:
	ld a,(0ca1ch)		;7ab1
	add a,(ix+009h)		;7ab4
	jr nc,l7abah		;7ab7
	inc d			;7ab9
l7abah:
	push hl			;7aba
	call sub_7b29h		;7abb
	pop hl			;7abe
	ret nc			;7abf
l7ac0h:
	push bc			;7ac0
	push de			;7ac1
l7ac2h:
	ld a,(hl)		;7ac2
	or a			;7ac3
	jr z,l7ac7h		;7ac4
	ld (de),a		;7ac6
l7ac7h:
	inc hl			;7ac7
	inc e			;7ac8
	call z,sub_7a9fh	;7ac9
	dec c			;7acc
	jr z,l7af7h		;7acd
	ld a,(hl)		;7acf
	or a			;7ad0
	jr z,l7ad4h		;7ad1
	ld (de),a		;7ad3
l7ad4h:
	inc hl			;7ad4
	inc e			;7ad5
	call z,sub_7a9fh	;7ad6
	dec c			;7ad9
	jr z,l7af7h		;7ada
	ld a,(hl)		;7adc
	or a			;7add
	jr z,l7ae1h		;7ade
	ld (de),a		;7ae0
l7ae1h:
	inc hl			;7ae1
	inc e			;7ae2
	call z,sub_7a9fh	;7ae3
	dec c			;7ae6
	jr z,l7af7h		;7ae7
	ld a,(hl)		;7ae9
	or a			;7aea
	jr z,l7aeeh		;7aeb
	ld (de),a		;7aed
l7aeeh:
	inc hl			;7aee
	inc e			;7aef
	call z,sub_7a9fh	;7af0
	dec c			;7af3
	jp nz,l7ac2h		;7af4
l7af7h:
	pop de			;7af7
	ld bc,00030h		;7af8
	ex de,hl		;7afb
	add hl,bc		;7afc
	ex de,hl		;7afd
	ld a,d			;7afe
	cp 0deh			;7aff
	pop bc			;7b01
	ret nc			;7b02
	djnz l7ac0h		;7b03
	ret			;7b05
sub_7b06h:
	ld a,(0ca1ah)		;7b06
	add a,(ix+007h)		;7b09
	jr nc,l7b0fh		;7b0c
	inc e			;7b0e
l7b0fh:
	ld a,(0ca1ch)		;7b0f
	add a,(ix+009h)		;7b12
	jr nc,sub_7b18h		;7b15
	inc d			;7b17
sub_7b18h:
	ld a,d			;7b18
	cp 020h			;7b19
	ret nc			;7b1b
	add a,008h		;7b1c
	push af			;7b1e
	ld a,e			;7b1f
	cp 018h			;7b20
	jp nc,l7b4eh		;7b22
	add a,008h		;7b25
	jr l7b38h		;7b27
sub_7b29h:
	ld a,d			;7b29
	add a,008h		;7b2a
	cp 028h			;7b2c
	ret nc			;7b2e
	push af			;7b2f
	ld a,e			;7b30
	add a,008h		;7b31
	cp 020h			;7b33
	jp nc,l7b4eh		;7b35
l7b38h:
	ld e,a			;7b38
	add a,a			;7b39
	add a,e			;7b3a
	ld l,a			;7b3b
	ld h,000h		;7b3c
	add hl,hl		;7b3e
	add hl,hl		;7b3f
	add hl,hl		;7b40
	add hl,hl		;7b41
	ld de,0d800h		;7b42
	add hl,de		;7b45
	pop af			;7b46
	ld e,a			;7b47
	ld d,000h		;7b48
	add hl,de		;7b4a
	ex de,hl		;7b4b
	scf			;7b4c
	ret			;7b4d
l7b4eh:
	inc sp			;7b4e
	inc sp			;7b4f
	ret			;7b50
	ld hl,0dda0h		;7b51
	jr l7b59h		;7b54
	ld hl,0d950h		;7b56
l7b59h:
	ld a,d			;7b59
	add a,00fh		;7b5a
	cp 02fh			;7b5c
	ret nc			;7b5e
	ld e,a			;7b5f
	ld d,000h		;7b60
	add hl,de		;7b62
	scf			;7b63
	ret			;7b64
	ld l,(ix+006h)		;7b65
	ld h,000h		;7b68
	add hl,hl		;7b6a
	add hl,de		;7b6b
	ld e,(hl)		;7b6c
	inc hl			;7b6d
	ld d,(hl)		;7b6e
	ex de,hl		;7b6f
	call sub_7c01h		;7b70
	call 04bb0h		;7b73
	exx			;7b76
	ld l,(ix+000h)		;7b77
	dec l			;7b7a
	ld h,000h		;7b7b
	add hl,hl		;7b7d
	ld de,08596h		;7b7e
	add hl,de		;7b81
	ld e,(hl)		;7b82
	inc hl			;7b83
	ld d,(hl)		;7b84
	ld (0ca27h),de		;7b85
	exx			;7b89
l7b8ah:
	ld a,(hl)		;7b8a
	inc hl			;7b8b
	ld d,(hl)		;7b8c
	add a,(ix+008h)		;7b8d
	ld e,a			;7b90
	ld a,(ix+00ah)		;7b91
	add a,d			;7b94
	ld d,a			;7b95
	ld (0ca29h),de		;7b96
	inc hl			;7b9a
l7b9bh:
	ld a,(hl)		;7b9b
	inc hl			;7b9c
	ld b,a			;7b9d
	inc a			;7b9e
	jp z,04b99h		;7b9f
	inc a			;7ba2
	jr z,l7b8ah		;7ba3
	ld a,080h		;7ba5
	add a,b			;7ba7
	jr c,l7bd5h		;7ba8
l7baah:
	push bc			;7baa
	push hl			;7bab
	ld l,(hl)		;7bac
	ld h,000h		;7bad
	add hl,hl		;7baf
	ld de,(0ca27h)		;7bb0
	add hl,de		;7bb4
	ld e,(hl)		;7bb5
	inc hl			;7bb6
	ld d,(hl)		;7bb7
	ex de,hl		;7bb8
	ld bc,0ca29h		;7bb9
	ld a,(bc)		;7bbc
	ld e,a			;7bbd
	add a,(hl)		;7bbe
	ld (bc),a		;7bbf
	inc bc			;7bc0
	inc hl			;7bc1
	ld a,(bc)		;7bc2
	ld d,a			;7bc3
	add a,(hl)		;7bc4
	ld (bc),a		;7bc5
	inc hl			;7bc6
	ld b,(hl)		;7bc7
	inc hl			;7bc8
	ld c,(hl)		;7bc9
	inc hl			;7bca
	call sub_7aa8h		;7bcb
	pop hl			;7bce
	pop bc			;7bcf
	inc hl			;7bd0
	djnz l7baah		;7bd1
	jr l7b9bh		;7bd3
l7bd5h:
	ld b,a			;7bd5
l7bd6h:
	push hl			;7bd6
	push bc			;7bd7
	ld l,(hl)		;7bd8
	ld h,000h		;7bd9
	add hl,hl		;7bdb
	ld de,(0ca27h)		;7bdc
	add hl,de		;7be0
	ld e,(hl)		;7be1
	inc hl			;7be2
	ld d,(hl)		;7be3
	ex de,hl		;7be4
	ld bc,0ca29h		;7be5
	ld a,(bc)		;7be8
	ld e,a			;7be9
	add a,(hl)		;7bea
	ld (bc),a		;7beb
	inc bc			;7bec
	inc hl			;7bed
	ld a,(bc)		;7bee
	ld d,a			;7bef
	add a,(hl)		;7bf0
	ld (bc),a		;7bf1
	inc hl			;7bf2
	ld b,(hl)		;7bf3
	inc hl			;7bf4
	ld c,(hl)		;7bf5
	inc hl			;7bf6
	call sub_7aa8h		;7bf7
	pop bc			;7bfa
	pop hl			;7bfb
	djnz l7bd6h		;7bfc
	inc hl			;7bfe
	jr l7b9bh		;7bff
sub_7c01h:
	ld c,(hl)		;7c01
	ld b,000h		;7c02
	inc hl			;7c04
	dec c			;7c05
	ld de,0d700h		;7c06
	ldir			;7c09
	ld hl,0d700h		;7c0b
	ret			;7c0e
	push ix			;7c0f
	push iy			;7c11
	push iy			;7c13
	push ix			;7c15
	pop iy			;7c17
	pop ix			;7c19
	ld a,(ix+000h)		;7c1b
	call sub_7c26h		;7c1e
	pop iy			;7c21
	pop ix			;7c23
	ret			;7c25
sub_7c26h:
	ret			;7c26
sub_7c27h:
	bit 4,(ix+015h)		;7c27
	ret z			;7c2b
	ld d,(ix+00ah)		;7c2c
	ld e,(ix+008h)		;7c2f
	inc d			;7c32
	inc e			;7c33
	call sub_7b18h		;7c34
	jp nc,l6each		;7c37
	ld a,(de)		;7c3a
	ld l,a			;7c3b
	ld h,0deh		;7c3c
	ld a,(hl)		;7c3e
	rrca			;7c3f
	ret nc			;7c40
	jp l6each		;7c41
sub_7c44h:
	or a			;7c44
	bit 7,(ix+014h)		;7c45
	ret z			;7c49
	ld a,(ix+004h)		;7c4a
	ld (ix+004h),000h	;7c4d
	and a			;7c51
	ret z			;7c52
	ld b,a			;7c53
	ld a,(ix+016h)		;7c54
	sub b			;7c57
	ld (ix+016h),a		;7c58
	push af			;7c5b
	ld a,016h		;7c5c
	call 04af0h		;7c5e
	pop af			;7c61
	ret			;7c62
sub_7c63h:
	ld a,(ix+03fh)		;7c63
	and a			;7c66
	ld c,001h		;7c67
	jr z,l7c77h		;7c69
	ld hl,0ce48h		;7c6b
	res 1,(hl)		;7c6e
	dec hl			;7c70
	ld a,(hl)		;7c71
	ld c,a			;7c72
	and a			;7c73
	jr z,l7c77h		;7c74
	dec (hl)		;7c76
l7c77h:
	bit 7,(ix+014h)		;7c77
	ret z			;7c7b
	ld a,(ix+004h)		;7c7c
	ld (ix+004h),000h	;7c7f
	and a			;7c83
	ret z			;7c84
	ld b,a			;7c85
	ld a,c			;7c86
	and a			;7c87
	jr nz,l7c8fh		;7c88
	ld (hl),004h		;7c8a
	inc hl			;7c8c
	set 1,(hl)		;7c8d
l7c8fh:
	ld a,(ix+016h)		;7c8f
	sub b			;7c92
	ld (ix+016h),a		;7c93
	push af			;7c96
	ld b,a			;7c97
	ld a,(0ce4ah)		;7c98
	cp b			;7c9b
	jr c,l7ca0h		;7c9c
	set 0,(hl)		;7c9e
l7ca0h:
	ld a,025h		;7ca0
	call 04af0h		;7ca2
	pop af			;7ca5
	ret			;7ca6
	ld (ix+004h),000h	;7ca7
	ret			;7cab
	ld a,(ix+004h)		;7cac
	and a			;7caf
	ret z			;7cb0
	ld (ix+004h),000h	;7cb1
	ld b,a			;7cb5
	ld a,(ix+016h)		;7cb6
	sub b			;7cb9
	ld (ix+016h),a		;7cba
	ret			;7cbd
	call sub_7d0ah		;7cbe
	jr l7cd9h		;7cc1
sub_7cc3h:
	ld a,004h		;7cc3
	ld (ix+015h),a		;7cc5
	res 7,(ix+014h)		;7cc8
	call sub_7d5eh		;7ccc
	call sub_7d1bh		;7ccf
	call sub_7d0ah		;7cd2
	ld a,(hl)		;7cd5
	ld (ix+000h),a		;7cd6
l7cd9h:
	inc hl			;7cd9
	ld a,(hl)		;7cda
	push hl			;7cdb
	call 04af0h		;7cdc
	pop hl			;7cdf
l7ce0h:
	inc hl			;7ce0
	ld l,(hl)		;7ce1
	dec l			;7ce2
	ld h,000h		;7ce3
	add hl,hl		;7ce5
	ld de,l7cf6h		;7ce6
	add hl,de		;7ce9
	ld a,(hl)		;7cea
	add a,001h		;7ceb
	ret c			;7ced
	ld e,(hl)		;7cee
	inc hl			;7cef
	ld d,(hl)		;7cf0
	call sub_7e03h		;7cf1
	scf			;7cf4
	ret			;7cf5
l7cf6h:
	rst 38h			;7cf6
	rst 38h			;7cf7
	jr nz,l7cfah		;7cf8
l7cfah:
	ld b,b			;7cfa
	nop			;7cfb
	ld h,b			;7cfc
	nop			;7cfd
	nop			;7cfe
	ld bc,00200h		;7cff
	nop			;7d02
	inc b			;7d03
	nop			;7d04
	jr nz,l7d07h		;7d05
l7d07h:
	ld b,b			;7d07
	nop			;7d08
	ld d,b			;7d09
sub_7d0ah:
	ld a,(ix+000h)		;7d0a
	ld h,000h		;7d0d
	ld l,a			;7d0f
	add hl,hl		;7d10
	add a,l			;7d11
	ld l,a			;7d12
	jr nc,l7d16h		;7d13
	inc h			;7d15
l7d16h:
	ld de,l7e74h		;7d16
	add hl,de		;7d19
	ret			;7d1a
sub_7d1bh:
	call sub_6eb4h		;7d1b
	xor a			;7d1e
	ld (ix+001h),a		;7d1f
	ld (ix+034h),a		;7d22
	ld (ix+038h),a		;7d25
	ld (ix+005h),a		;7d28
	ld (ix+006h),a		;7d2b
	ld (ix+017h),a		;7d2e
	ld (ix+00bh),a		;7d31
	ld (ix+00ch),a		;7d34
	ld (ix+00dh),a		;7d37
	ld (ix+00eh),a		;7d3a
	ret			;7d3d
sub_7d3eh:
	ld a,(ix+034h)		;7d3e
	ld b,(ix+02dh)		;7d41
	and a			;7d44
	ret z			;7d45
	push af			;7d46
	sla a			;7d47
	call c,sub_7d89h	;7d49
	pop af			;7d4c
	sla a			;7d4d
	sla a			;7d4f
	ret c			;7d51
	and a			;7d52
	ret z			;7d53
sub_7d54h:
	call sub_68deh		;7d54
	ret c			;7d57
	ret nz			;7d58
	dec (iy+037h)		;7d59
	jr l7da6h		;7d5c
sub_7d5eh:
	ld a,(ix+034h)		;7d5e
	ld b,(ix+02dh)		;7d61
	and a			;7d64
	ret z			;7d65
	push af			;7d66
	sla a			;7d67
	call c,sub_7d89h	;7d69
	pop af			;7d6c
	sla a			;7d6d
	sla a			;7d6f
	ret c			;7d71
	and a			;7d72
	ret z			;7d73
	call sub_7d54h		;7d74
	dec (iy+03bh)		;7d77
	ret nz			;7d7a
	ld a,(iy+024h)		;7d7b
	and a			;7d7e
	ret nz			;7d7f
	ld a,(iy+03dh)		;7d80
	and a			;7d83
	ret z			;7d84
	inc (ix+03dh)		;7d85
	ret			;7d88
sub_7d89h:
	ld a,b			;7d89
	ld b,014h		;7d8a
	ld hl,0ceb4h		;7d8c
	ld de,00040h		;7d8f
l7d92h:
	cp (hl)			;7d92
	jr nz,l7d97h		;7d93
	set 6,(hl)		;7d95
l7d97h:
	add hl,de		;7d97
	djnz l7d92h		;7d98
	jr l7da6h		;7d9a
l7d9ch:
	bit 6,(ix+034h)		;7d9c
	ret z			;7da0
	ld (ix+004h),0ffh	;7da1
	ret			;7da5
l7da6h:
	ld b,(ix+035h)		;7da6
	ld c,(ix+036h)		;7da9
	ld a,b			;7dac
	or c			;7dad
	ret z			;7dae
	ld a,b			;7daf
	call sub_68b9h		;7db0
	jr c,l7db9h		;7db3
	set 7,(iy+035h)		;7db5
l7db9h:
	ld a,c			;7db9
	call sub_68c4h		;7dba
	ret c			;7dbd
	set 7,(iy+036h)		;7dbe
	ret			;7dc2
	ld a,(ix+000h)		;7dc3
	call sub_7dd8h		;7dc6
	inc hl			;7dc9
	jp l7ce0h		;7dca
	ld a,(ix+000h)		;7dcd
	call sub_7dd8h		;7dd0
	inc hl			;7dd3
	ld a,(hl)		;7dd4
	jp 04af5h		;7dd5
sub_7dd8h:
	ld h,000h		;7dd8
	ld l,a			;7dda
	ld e,a			;7ddb
	ld d,h			;7ddc
	add hl,hl		;7ddd
	add hl,de		;7dde
	ld de,l7e74h		;7ddf
	add hl,de		;7de2
	ret			;7de3
l7de4h:
	call l7df1h		;7de4
	ld hl,00000h		;7de7
	ld (0c922h),hl		;7dea
	ld (0c923h),hl		;7ded
	ret			;7df0
l7df1h:
	ld hl,00000h		;7df1
	ld (0cb0ah),hl		;7df4
	ld (0cb0ch),hl		;7df7
	ld (0cb10h),hl		;7dfa
	ld a,050h		;7dfd
	ld (0cb10h),a		;7dff
	ret			;7e02
sub_7e03h:
	ld hl,0cb0bh		;7e03
	ld a,(hl)		;7e06
	add a,e			;7e07
	daa			;7e08
	ld (hl),a		;7e09
	inc l			;7e0a
	ld a,(hl)		;7e0b
	adc a,d			;7e0c
	daa			;7e0d
	ld (hl),a		;7e0e
	inc hl			;7e0f
	ld a,(hl)		;7e10
	adc a,000h		;7e11
	daa			;7e13
	ld (hl),a		;7e14
	jr nc,l7e29h		;7e15
	ld de,0c924h		;7e17
	ld a,099h		;7e1a
	ld (hl),a		;7e1c
	ld (de),a		;7e1d
	dec l			;7e1e
	dec e			;7e1f
	ld (hl),a		;7e20
	ld (de),a		;7e21
	dec l			;7e22
	dec e			;7e23
	ld a,090h		;7e24
	ld (hl),a		;7e26
	ld (de),a		;7e27
	ret			;7e28
l7e29h:
	ex de,hl		;7e29
	ld hl,0cb11h		;7e2a
	ld a,(de)		;7e2d
	cp (hl)			;7e2e
	jr c,l7e50h		;7e2f
	dec e			;7e31
	dec l			;7e32
	ld a,(de)		;7e33
	cp (hl)			;7e34
	jr c,l7e50h		;7e35
	ld a,(hl)		;7e37
	add a,050h		;7e38
	daa			;7e3a
	ld (hl),a		;7e3b
	inc l			;7e3c
	ld a,(hl)		;7e3d
	adc a,000h		;7e3e
	daa			;7e40
	ld (hl),a		;7e41
	ld hl,0cb0fh		;7e42
	ld a,(hl)		;7e45
	add a,001h		;7e46
	daa			;7e48
	ret c			;7e49
	ld (hl),a		;7e4a
	ld a,00fh		;7e4b
	call 04af0h		;7e4d
l7e50h:
	ld hl,0cb0dh		;7e50
	ld de,0c924h		;7e53
	ld a,(de)		;7e56
	sub (hl)		;7e57
	jr c,l7e67h		;7e58
	ret nz			;7e5a
	dec l			;7e5b
	dec e			;7e5c
	ld a,(de)		;7e5d
	sub (hl)		;7e5e
	jr c,l7e67h		;7e5f
	ret nz			;7e61
	dec l			;7e62
	dec e			;7e63
	ld a,(de)		;7e64
	sub (hl)		;7e65
	ret nc			;7e66
l7e67h:
	ld hl,0cb0bh		;7e67
	ld de,0c922h		;7e6a
	ld bc,00003h		;7e6d
	ldir			;7e70
	ret			;7e72
	ret			;7e73
l7e74h:
	ld h,d			;7e74
	ld de,l6201h		;7e75
	ld de,l6201h		;7e78
	ld de,l6201h		;7e7b
	ld de,l6201h		;7e7e
	ld de,l6201h		;7e81
	ld de,l6201h		;7e84
	ld de,l6201h		;7e87
	ld de,l6201h		;7e8a
	ld de,l6201h		;7e8d
	ld de,l6201h		;7e90
	ld de,l6201h		;7e93
	ld de,l6201h		;7e96
	ld de,l6201h		;7e99
	ld de,l6201h		;7e9c
	inc d			;7e9f
	ld b,062h		;7ea0
	ld de,l6201h		;7ea2
	djnz $+4		;7ea5
	ld h,d			;7ea7
	djnz $+4		;7ea8
	ld h,d			;7eaa
	djnz $+4		;7eab
	ld h,d			;7ead
	djnz l7eb2h		;7eae
	ld l,d			;7eb0
	ld c,l			;7eb1
l7eb2h:
	ex af,af'		;7eb2
	ld h,d			;7eb3
	djnz $+4		;7eb4
	ld h,d			;7eb6
	djnz $+4		;7eb7
	ld h,d			;7eb9
	djnz l7ebfh		;7eba
	ld h,d			;7ebc
	djnz $+4		;7ebd
l7ebfh:
	ld h,d			;7ebf
	ld de,l6202h		;7ec0
	djnz $+4		;7ec3
	ld h,d			;7ec5
	djnz l7ecah		;7ec6
	ld l,e			;7ec8
	inc de			;7ec9
l7ecah:
	inc b			;7eca
	ld h,d			;7ecb
	djnz l7ed0h		;7ecc
	ld h,d			;7ece
	inc de			;7ecf
l7ed0h:
	dec b			;7ed0
	ld l,e			;7ed1
	inc d			;7ed2
	inc bc			;7ed3
	ld h,d			;7ed4
	ld de,l6202h		;7ed5
	ld (de),a		;7ed8
	inc bc			;7ed9
	ld l,e			;7eda
	inc de			;7edb
	inc b			;7edc
	ld h,d			;7edd
	djnz $+5		;7ede
	ld h,d			;7ee0
	ld de,l6201h		;7ee1
	ld de,l6b02h		;7ee4
	inc de			;7ee7
	inc b			;7ee8
	ld h,d			;7ee9
	inc de			;7eea
	inc b			;7eeb
	ld l,e			;7eec
	inc d			;7eed
	ld b,062h		;7eee
	ld de,l6202h		;7ef0
	ld de,06b01h		;7ef3
	inc de			;7ef6
	dec b			;7ef7
	ld h,d			;7ef8
	ld de,l6205h		;7ef9
	ld de,00104h		;7efc
	inc e			;7eff
	ld b,062h		;7f00
	ld de,l6202h		;7f02
	ld de,l6206h		;7f05
	inc d			;7f08
	inc b			;7f09
	ld h,d			;7f0a
	ld de,l6202h		;7f0b
	inc d			;7f0e
	dec b			;7f0f
	ld h,d			;7f10
	inc de			;7f11
	inc b			;7f12
	ld h,d			;7f13
	inc de			;7f14
	ld b,062h		;7f15
	ld de,l6201h		;7f17
	djnz l7f1dh		;7f1a
	ld l,e			;7f1c
l7f1dh:
	inc de			;7f1d
	ld b,06bh		;7f1e
	ld hl,l6207h		;7f20
	ld de,l6204h		;7f23
	ld de,l6a01h		;7f26
	ld de,l6a01h		;7f29
	ld de,l6a01h		;7f2c
	ld c,l			;7f2f
	ex af,af'		;7f30
	nop			;7f31
	ld de,l6201h		;7f32
	djnz l7f38h		;7f35
	ld h,d			;7f37
l7f38h:
	ld de,l6201h		;7f38
	djnz $+4		;7f3b
	ld h,d			;7f3d
	djnz l7f41h		;7f3e
	ld h,d			;7f40
l7f41h:
	djnz l7f45h		;7f41
	ld h,d			;7f43
	ld (de),a		;7f44
l7f45h:
	ld (bc),a		;7f45
	ld h,d			;7f46
	inc de			;7f47
	ld bc,01162h		;7f48
	ld bc,01162h		;7f4b
	ld bc,01062h		;7f4e
	ld (bc),a		;7f51
	ld h,d			;7f52
	djnz $+4		;7f53
	ld h,d			;7f55
	djnz $+5		;7f56
	ld h,d			;7f58
	ld de,l6203h		;7f59
	inc de			;7f5c
	ld b,062h		;7f5d
	ld de,l6b03h		;7f5f
	inc de			;7f62
	rlca			;7f63
	ld h,d			;7f64
	ld de,l6207h		;7f65
	ld de,l6201h		;7f68
	ld de,l6201h		;7f6b
	ld de,l6201h		;7f6e
	ld de,06b01h		;7f71
	inc de			;7f74
	dec b			;7f75
	ld l,e			;7f76
	inc d			;7f77
	rlca			;7f78
	ld h,d			;7f79
	ld de,l6201h		;7f7a
	ld de,l6201h		;7f7d
	ld de,l6201h		;7f80
	ld de,l6201h		;7f83
	ld de,l6201h		;7f86
	ld de,l6201h		;7f89
	ld de,l6201h		;7f8c
	ld de,l6201h		;7f8f
	ld de,l6201h		;7f92
	ld de,l6201h		;7f95
	ld de,l6201h		;7f98
	ld de,l6201h		;7f9b
	ld de,l6a01h		;7f9e
	ld c,l			;7fa1
	ex af,af'		;7fa2
	ld h,d			;7fa3
	ld de,l6201h		;7fa4
	ld de,l6206h		;7fa7
	ld de,l6201h		;7faa
	djnz $+4		;7fad
	ld h,d			;7faf
	ld de,l6201h		;7fb0
	ld de,l6201h		;7fb3
	ld de,l6201h		;7fb6
	ld de,l6201h		;7fb9
	ld de,l6201h		;7fbc
	djnz l7fc2h		;7fbf
	ld h,d			;7fc1
l7fc2h:
	ld (de),a		;7fc2
	ld bc,01062h		;7fc3
	ld bc,04d6ah		;7fc6
	ex af,af'		;7fc9
	ld h,d			;7fca
	ld de,l6201h		;7fcb
	ld de,l6203h		;7fce
	inc de			;7fd1
	ld bc,01362h		;7fd2
	ld bc,01462h		;7fd5
	ld bc,04d6ah		;7fd8
	add hl,bc		;7fdb
	ld h,d			;7fdc
	ld c,l			;7fdd
	add hl,bc		;7fde
	ld h,d			;7fdf
	ld c,l			;7fe0
	ld a,(bc)		;7fe1
	ld l,d			;7fe2
	ld c,l			;7fe3
	ex af,af'		;7fe4
	ld l,d			;7fe5
	ld c,l			;7fe6
	add hl,bc		;7fe7
	ld h,d			;7fe8
	inc de			;7fe9
	ld bc,0ff00h		;7fea
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
