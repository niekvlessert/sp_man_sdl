; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank04_6000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank04.bin

	org 06000h

	jp l625eh		;6000	c3 5e 62	. ^ b
	jp l6214h		;6003	c3 14 62	. . b
	jp l601eh		;6006	c3 1e 60	. . `
	jp l60b4h		;6009	c3 b4 60	. . `
	jp l6459h		;600c	c3 59 64	. Y d
	jp l606ah		;600f	c3 6a 60	. j `
	jp l62cbh		;6012	c3 cb 62	. . b
	jp l78e1h		;6015	c3 e1 78	. . x
	jp l7de4h		;6018	c3 e4 7d	. . }
	jp l7df1h		;601b	c3 f1 7d	. . }
l601eh:
	call sub_60fah		;601e	cd fa 60	. . `
	call sub_6056h		;6021	cd 56 60	. V `
	call sub_6035h		;6024	cd 35 60	. 5 `
	call sub_6048h		;6027	cd 48 60	. H `
	call sub_6485h		;602a	cd 85 64	. . d
	ld a,(0ce74h)		;602d	3a 74 ce	: t .
	or a			;6030	b7		.
	ret z			;6031	c8		.
	jp l607dh		;6032	c3 7d 60	. } `
sub_6035h:
	ld hl,0ce4fh		;6035	21 4f ce	! O .
	ld a,(hl)		;6038	7e		~
	and a			;6039	a7		.
	ret z			;603a	c8		.
	ld b,002h		;603b	06 02		. .
	cp b			;603d	b8		.
	jr z,l6042h		;603e	28 02		( .
	ld (hl),b		;6040	70		p
	ret			;6041	c9		.
l6042h:
	ld a,001h		;6042	3e 01		> .
	ld (0ca0fh),a		;6044	32 0f ca	2 . .
	ret			;6047	c9		.
sub_6048h:
	ld hl,0cb06h		;6048	21 06 cb	! . .
	ld a,(hl)		;604b	7e		~
	ld (hl),000h		;604c	36 00		6 .
	and 00fh		;604e	e6 0f		. .
	cp 002h			;6050	fe 02		. .
	ret c			;6052	d8		.
	ld (hl),080h		;6053	36 80		6 .
	ret			;6055	c9		.
sub_6056h:
	ld bc,01440h		;6056	01 40 14	. @ .
	ld ix,0ce80h		;6059	dd 21 80 ce	. ! . .
l605dh:
	push bc			;605d	c5		.
	call l606ah		;605e	cd 6a 60	. j `
	pop bc			;6061	c1		.
	ld e,c			;6062	59		Y
	ld d,000h		;6063	16 00		. .
	add ix,de		;6065	dd 19		. .
	djnz l605dh		;6067	10 f4		. .
	ret			;6069	c9		.
l606ah:
	call sub_6e2ch		;606a	cd 2c 6e	. , n
	ret z			;606d	c8		.
	jp c,l7d9ch		;606e	da 9c 7d	. . }
	jp l64a2h		;6071	c3 a2 64	. . d
	ld a,(ix+034h)		;6074	dd 7e 34	. ~ 4
	bit 6,a			;6077	cb 77		. w
	ret z			;6079	c8		.
	jp l6e98h		;607a	c3 98 6e	. . n
l607dh:
	ld bc,01440h		;607d	01 40 14	. @ .
	ld ix,0ce80h		;6080	dd 21 80 ce	. ! . .
l6084h:
	push bc			;6084	c5		.
	ld a,(ix+000h)		;6085	dd 7e 00	. ~ .
	cp 01bh			;6088	fe 1b		. .
	call z,sub_609ah	;608a	cc 9a 60	. . `
	pop bc			;608d	c1		.
	ld e,c			;608e	59		Y
	ld d,000h		;608f	16 00		. .
	add ix,de		;6091	dd 19		. .
	djnz l6084h		;6093	10 ef		. .
	xor a			;6095	af		.
	ld (0ce74h),a		;6096	32 74 ce	2 t .
	ret			;6099	c9		.
sub_609ah:
	ld d,(ix+00ah)		;609a	dd 56 0a	. V .
	ld e,(ix+008h)		;609d	dd 5e 08	. ^ .
	inc d			;60a0	14		.
	inc e			;60a1	1c		.
	call sub_7b06h		;60a2	cd 06 7b	. . {
	ld a,(de)		;60a5	1a		.
	sub 0cbh		;60a6	d6 cb		. .
	cp 003h			;60a8	fe 03		. .
	ret nc			;60aa	d0		.
	ld (ix+016h),000h	;60ab	dd 36 16 00	. 6 . .
	ld (ix+004h),001h	;60af	dd 36 04 01	. 6 . .
	ret			;60b3	c9		.
l60b4h:
	call sub_60beh		;60b4	cd be 60	. . `
	call sub_60d0h		;60b7	cd d0 60	. . `
	call sub_60c7h		;60ba	cd c7 60	. . `
	ret			;60bd	c9		.
sub_60beh:
	ld hl,0ce40h		;60be	21 40 ce	! @ .
	ld bc,0053fh		;60c1	01 3f 05	. ? .
	jp 04648h		;60c4	c3 48 46	. H F
sub_60c7h:
	ld hl,0d440h		;60c7	21 40 d4	! @ .
	ld bc,0025fh		;60ca	01 5f 02	. _ .
	jp 04648h		;60cd	c3 48 46	. H F
sub_60d0h:
	ld a,014h		;60d0	3e 14		> .
	ld (0ce44h),a		;60d2	32 44 ce	2 D .
	ret			;60d5	c9		.
sub_60d6h:
	inc hl			;60d6	23		#
	inc hl			;60d7	23		#
	ld a,(hl)		;60d8	7e		~
	dec a			;60d9	3d		=
	ex de,hl		;60da	eb		.
	cp 003h			;60db	fe 03		. .
	jp nc,04ae0h		;60dd	d2 e0 4a	. . J
	call 0461ah		;60e0	cd 1a 46	. . F
	jp (hl)			;60e3	e9		.
	ld h,b			;60e4	60		`
	jp (hl)			;60e5	e9		.
	ld h,b			;60e6	60		`
	call p,0eb60h		;60e7	f4 60 eb	. ` .
	ld a,(hl)		;60ea	7e		~
	ld (0ce60h),a		;60eb	32 60 ce	2 ` .
	inc hl			;60ee	23		#
	ld a,(hl)		;60ef	7e		~
	ld (0ce61h),a		;60f0	32 61 ce	2 a .
	ret			;60f3	c9		.
	ex de,hl		;60f4	eb		.
	ld a,(hl)		;60f5	7e		~
	ld (0ce60h),a		;60f6	32 60 ce	2 ` .
	ret			;60f9	c9		.
sub_60fah:
	ld a,(0ce60h)		;60fa	3a 60 ce	: ` .
	and a			;60fd	a7		.
	ret z			;60fe	c8		.
	dec a			;60ff	3d		=
	jr z,l6125h		;6100	28 23		( #
	dec a			;6102	3d		=
	jr z,l6105h		;6103	28 00		( .
l6105h:
	ld bc,01440h		;6105	01 40 14	. @ .
	ld ix,0ce80h		;6108	dd 21 80 ce	. ! . .
l610ch:
	push bc			;610c	c5		.
	ld a,(ix+000h)		;610d	dd 7e 00	. ~ .
	cp 065h			;6110	fe 65		. e
	jr z,l6118h		;6112	28 04		( .
	and a			;6114	a7		.
	call nz,l6e98h		;6115	c4 98 6e	. . n
l6118h:
	pop bc			;6118	c1		.
	ld d,000h		;6119	16 00		. .
	ld e,c			;611b	59		Y
	add ix,de		;611c	dd 19		. .
	djnz l610ch		;611e	10 ec		. .
	xor a			;6120	af		.
l6121h:
	ld (0ce60h),a		;6121	32 60 ce	2 ` .
	ret			;6124	c9		.
l6125h:
	ld a,(0ce61h)		;6125	3a 61 ce	: a .
	and a			;6128	a7		.
l6129h:
	jr z,l6173h		;6129	28 48		( H
l612bh:
	ld l,a			;612b	6f		o
	ld a,(0ca02h)		;612c	3a 02 ca	: . .
	and 001h		;612f	e6 01		. .
	ret nz			;6131	c0		.
	dec l			;6132	2d		-
	ld h,000h		;6133	26 00		& .
	ld de,l617eh		;6135	11 7e 61	. ~ a
	add hl,hl		;6138	29		)
	add hl,de		;6139	19		.
	ld e,(hl)		;613a	5e		^
	inc hl			;613b	23		#
	ld d,(hl)		;613c	56		V
	ld a,(de)		;613d	1a		.
	ld c,a			;613e	4f		O
	inc de			;613f	13		.
	ld hl,0ce68h		;6140	21 68 ce	! h .
	ld b,(hl)		;6143	46		F
	inc (hl)		;6144	34		4
	cp b			;6145	b8		.
l6146h:
	jr nz,l614ch		;6146	20 04		  .
l6148h:
	ld (hl),000h		;6148	36 00		6 .
l614ah:
	ld b,000h		;614a	06 00		. .
l614ch:
	push de			;614c	d5		.
	push bc			;614d	c5		.
l614eh:
	ld l,b			;614e	68		h
	ld h,000h		;614f	26 00		& .
	add hl,hl		;6151	29		)
	add hl,de		;6152	19		.
	ld d,(hl)		;6153	56		V
	inc hl			;6154	23		#
	ld b,(hl)		;6155	46		F
	ld a,b			;6156	78		x
	and 00fh		;6157	e6 0f		. .
	ld e,a			;6159	5f		_
	ld a,b			;615a	78		x
	rlca			;615b	07		.
	rlca			;615c	07		.
	rlca			;615d	07		.
	rlca			;615e	07		.
	and 00fh		;615f	e6 0f		. .
	call 04776h		;6161	cd 76 47	. v G
	pop bc			;6164	c1		.
	pop de			;6165	d1		.
	ld l,c			;6166	69		i
	ld h,000h		;6167	26 00		& .
	add hl,hl		;6169	29		)
	add hl,de		;616a	19		.
	ld a,(hl)		;616b	7e		~
	add a,001h		;616c	c6 01		. .
	ret c			;616e	d8		.
	inc hl			;616f	23		#
	ex de,hl		;6170	eb		.
	jr l614ch		;6171	18 d9		. .
l6173h:
	xor a			;6173	af		.
	ld (0ce60h),a		;6174	32 60 ce	2 ` .
	ld (0ce61h),a		;6177	32 61 ce	2 a .
	ld (0ce68h),a		;617a	32 68 ce	2 h .
	ret			;617d	c9		.
l617eh:
	adc a,b			;617e	88		.
	ld h,c			;617f	61		a
	sbc a,(hl)		;6180	9e		.
	ld h,c			;6181	61		a
	pop bc			;6182	c1		.
	ld h,c			;6183	61		a
	call c,0fe61h		;6184	dc 61 fe	. a .
	ld h,c			;6187	61		a
	ld a,(bc)		;6188	0a		.
	nop			;6189	00		.
	sub b			;618a	90		.
	djnz $-110		;618b	10 90		. .
	jr nz,$-110		;618d	20 90		  .
	jr nc,l6121h		;618f	30 90		0 .
	ld b,b			;6191	40		@
	sub b			;6192	90		.
	ld d,b			;6193	50		P
	sub b			;6194	90		.
	ld b,b			;6195	40		@
	sub b			;6196	90		.
l6197h:
	jr nc,l6129h		;6197	30 90		0 .
	jr nz,l612bh		;6199	20 90		  .
	djnz $-110		;619b	10 90		. .
	rst 38h			;619d	ff		.
	ex af,af'		;619e	08		.
	ld (hl),b		;619f	70		p
	ld b,h			;61a0	44		D
	ld h,b			;61a1	60		`
	ld b,e			;61a2	43		C
	ld d,b			;61a3	50		P
	ld b,d			;61a4	42		B
	ld b,b			;61a5	40		@
	ld b,c			;61a6	41		A
	jr nc,l61e9h		;61a7	30 40		0 @
	ld b,b			;61a9	40		@
	ld b,c			;61aa	41		A
	ld d,b			;61ab	50		P
	ld b,d			;61ac	42		B
	ld h,b			;61ad	60		`
	ld b,e			;61ae	43		C
	cp 070h			;61af	fe 70		. p
	sub b			;61b1	90		.
	ld d,b			;61b2	50		P
	sub b			;61b3	90		.
	jr nc,l6146h		;61b4	30 90		0 .
	jr nz,l6148h		;61b6	20 90		  .
	djnz l614ah		;61b8	10 90		. .
	jr nz,l614ch		;61ba	20 90		  .
	jr nc,l614eh		;61bc	30 90		0 .
	ld d,b			;61be	50		P
	sub b			;61bf	90		.
	rst 38h			;61c0	ff		.
	ld b,077h		;61c1	06 77		. w
	or a			;61c3	b7		.
	ld (hl),h		;61c4	74		t
	or l			;61c5	b5		.
	ld (hl),d		;61c6	72		r
	or e			;61c7	b3		.
	ld (hl),b		;61c8	70		p
	or c			;61c9	b1		.
	ld (hl),d		;61ca	72		r
	or e			;61cb	b3		.
	ld (hl),h		;61cc	74		t
	or l			;61cd	b5		.
	cp 074h			;61ce	fe 74		. t
	push bc			;61d0	c5		.
	ld (hl),b		;61d1	70		p
	pop bc			;61d2	c1		.
	ld d,b			;61d3	50		P
	ret nz			;61d4	c0		.
	jr nc,l6197h		;61d5	30 c0		0 .
	ld d,b			;61d7	50		P
	ret nz			;61d8	c0		.
	ld (hl),b		;61d9	70		p
	pop bc			;61da	c1		.
	rst 38h			;61db	ff		.
	djnz $+89		;61dc	10 57		. W
	sub (hl)		;61de	96		.
	ld b,a			;61df	47		G
	sub l			;61e0	95		.
	scf			;61e1	37		7
	sub h			;61e2	94		.
	daa			;61e3	27		'
	sub e			;61e4	93		.
	ld d,092h		;61e5	16 92		. .
	dec b			;61e7	05		.
	sub c			;61e8	91		.
l61e9h:
	inc b			;61e9	04		.
	sub b			;61ea	90		.
	inc bc			;61eb	03		.
	sub b			;61ec	90		.
	inc bc			;61ed	03		.
	sub b			;61ee	90		.
	inc b			;61ef	04		.
	sub b			;61f0	90		.
	dec b			;61f1	05		.
	sub c			;61f2	91		.
	ld d,092h		;61f3	16 92		. .
	daa			;61f5	27		'
	sub e			;61f6	93		.
	scf			;61f7	37		7
	sub h			;61f8	94		.
	ld b,a			;61f9	47		G
	sub l			;61fa	95		.
	ld d,a			;61fb	57		W
	sub (hl)		;61fc	96		.
	rst 38h			;61fd	ff		.
	ld a,(bc)		;61fe	0a		.
	ld (hl),a		;61ff	77		w
	sub a			;6200	97		.
l6201h:
	ld h,a			;6201	67		g
l6202h:
	sub (hl)		;6202	96		.
l6203h:
	ld d,a			;6203	57		W
l6204h:
	sub l			;6204	95		.
l6205h:
	ld b,(hl)		;6205	46		F
l6206h:
	sub h			;6206	94		.
l6207h:
	dec (hl)		;6207	35		5
	sub e			;6208	93		.
	inc h			;6209	24		$
	sub d			;620a	92		.
	dec (hl)		;620b	35		5
	sub e			;620c	93		.
	ld b,(hl)		;620d	46		F
	sub h			;620e	94		.
	ld d,a			;620f	57		W
	sub l			;6210	95		.
	ld h,a			;6211	67		g
	sub (hl)		;6212	96		.
	rst 38h			;6213	ff		.
l6214h:
	ld a,(0e900h)		;6214	3a 00 e9	: . .
	and a			;6217	a7		.
	call z,sub_6222h	;6218	cc 22 62	. " b
	ld hl,0e900h		;621b	21 00 e9	! . .
	ld (0ce42h),hl		;621e	22 42 ce	" B .
	ret			;6221	c9		.
sub_6222h:
	ld de,093b8h		;6222	11 b8 93	. . .
	ld hl,(0ca10h)		;6225	2a 10 ca	* . .
	ld h,000h		;6228	26 00		& .
	add hl,hl		;622a	29		)
	add hl,de		;622b	19		.
	ld e,(hl)		;622c	5e		^
	inc hl			;622d	23		#
	ld d,(hl)		;622e	56		V
	ld hl,0e900h		;622f	21 00 e9	! . .
	ex de,hl		;6232	eb		.
	ld bc,00600h		;6233	01 00 06	. . .
	ldir			;6236	ed b0		. .
	ret			;6238	c9		.
sub_6239h:
	ld a,(0ce7fh)		;6239	3a 7f ce	: . .
	or a			;623c	b7		.
	ret z			;623d	c8		.
	call sub_69a3h		;623e	cd a3 69	. . i
	ret c			;6241	d8		.
	ld (ix+031h),081h	;6242	dd 36 31 81	. 6 1 .
	ld (ix+032h),0eeh	;6246	dd 36 32 ee	. 6 2 .
	ld a,(0ee80h)		;624a	3a 80 ee	: . .
	ld (ix+030h),a		;624d	dd 77 30	. w 0
	ld a,(0ee81h)		;6250	3a 81 ee	: . .
	ld (ix+02fh),a		;6253	dd 77 2f	. w /
	call sub_6344h		;6256	cd 44 63	. D c
	xor a			;6259	af		.
	ld (0ce7fh),a		;625a	32 7f ce	2 . .
	ret			;625d	c9		.
l625eh:
	call sub_6239h		;625e	cd 39 62	. 9 b
	ld hl,(0ce42h)		;6261	2a 42 ce	* B .
	ld a,(hl)		;6264	7e		~
	and a			;6265	a7		.
	ret z			;6266	c8		.
	ld d,a			;6267	57		W
	inc hl			;6268	23		#
	ld e,(hl)		;6269	5e		^
	inc hl			;626a	23		#
	ld b,(hl)		;626b	46		F
	and a			;626c	a7		.
	jp p,l6279h		;626d	f2 79 62	. y b
	and 07fh		;6270	e6 7f		. .
	ld d,a			;6272	57		W
	ld a,(0ca04h)		;6273	3a 04 ca	: . .
	and a			;6276	a7		.
	jr z,l62abh		;6277	28 32		( 2
l6279h:
	push hl			;6279	e5		.
	ld hl,(0ca34h)		;627a	2a 34 ca	* 4 .
	call 04650h		;627d	cd 50 46	. P F
	pop hl			;6280	e1		.
	ret c			;6281	d8		.
	jr nz,l62abh		;6282	20 27		  '
	ld a,b			;6284	78		x
	bit 7,a			;6285	cb 7f		. .
	jr z,l6293h		;6287	28 0a		( .
	and 07fh		;6289	e6 7f		. .
	ld b,a			;628b	47		G
	ld a,(0ca19h)		;628c	3a 19 ca	: . .
	cp 004h			;628f	fe 04		. .
	jr c,l62abh		;6291	38 18		8 .
l6293h:
	push hl			;6293	e5		.
	call sub_62bbh		;6294	cd bb 62	. . b
	jr z,l62aah		;6297	28 11		( .
	ld a,(0ca33h)		;6299	3a 33 ca	: 3 .
	or a			;629c	b7		.
	call nz,sub_6306h	;629d	c4 06 63	. . c
	jr c,l62aah		;62a0	38 08		8 .
	call sub_66d0h		;62a2	cd d0 66	. . f
	jr c,l62aah		;62a5	38 03		8 .
	call sub_6344h		;62a7	cd 44 63	. D c
l62aah:
	pop hl			;62aa	e1		.
l62abh:
	inc hl			;62ab	23		#
	ld a,(hl)		;62ac	7e		~
	and 07fh		;62ad	e6 7f		. .
	dec a			;62af	3d		=
	dec a			;62b0	3d		=
	dec a			;62b1	3d		=
	ld e,a			;62b2	5f		_
	ld d,000h		;62b3	16 00		. .
	add hl,de		;62b5	19		.
	ld (0ce42h),hl		;62b6	22 42 ce	" B .
	jr l625eh		;62b9	18 a3		. .
sub_62bbh:
	ld a,b			;62bb	78		x
	cp 05fh			;62bc	fe 5f		. _
	ret nz			;62be	c0		.
	call sub_60d6h		;62bf	cd d6 60	. . `
	xor a			;62c2	af		.
	ret			;62c3	c9		.
	ld hl,0e900h		;62c4	21 00 e9	! . .
	ld (0ca34h),hl		;62c7	22 34 ca	" 4 .
	ret			;62ca	c9		.
l62cbh:
	ld ix,0ce80h		;62cb	dd 21 80 ce	. ! . .
	ld b,014h		;62cf	06 14		. .
l62d1h:
	ld a,(ix+000h)		;62d1	dd 7e 00	. ~ .
	and a			;62d4	a7		.
	jr z,l62feh		;62d5	28 27		( '
	ld a,(ix+015h)		;62d7	dd 7e 15	. ~ .
	bit 2,a			;62da	cb 57		. W
	jr z,l62feh		;62dc	28 20		(  
	ld hl,(0ca12h)		;62de	2a 12 ca	* . .
	ld e,(ix+007h)		;62e1	dd 5e 07	. ^ .
	ld d,(ix+008h)		;62e4	dd 56 08	. V .
	add hl,de		;62e7	19		.
	ld (ix+007h),l		;62e8	dd 75 07	. u .
	ld (ix+008h),h		;62eb	dd 74 08	. t .
	ld hl,(0ca14h)		;62ee	2a 14 ca	* . .
	ld e,(ix+009h)		;62f1	dd 5e 09	. ^ .
	ld d,(ix+00ah)		;62f4	dd 56 0a	. V .
	add hl,de		;62f7	19		.
	ld (ix+009h),l		;62f8	dd 75 09	. u .
	ld (ix+00ah),h		;62fb	dd 74 0a	. t .
l62feh:
	ld de,00040h		;62fe	11 40 00	. @ .
	add ix,de		;6301	dd 19		. .
	djnz l62d1h		;6303	10 cc		. .
	ret			;6305	c9		.
sub_6306h:
	ld de,l6315h		;6306	11 15 63	. . c
l6309h:
	ld a,(de)		;6309	1a		.
	inc a			;630a	3c		<
	jr z,l6313h		;630b	28 06		( .
	dec a			;630d	3d		=
	inc de			;630e	13		.
	cp b			;630f	b8		.
	ret z			;6310	c8		.
	jr l6309h		;6311	18 f6		. .
l6313h:
	scf			;6313	37		7
	ret			;6314	c9		.
l6315h:
	inc de			;6315	13		.
	rla			;6316	17		.
	add hl,de		;6317	19		.
	rra			;6318	1f		.
	jr nz,l633ch		;6319	20 21		  !
	ld (02624h),hl		;631b	22 24 26	" $ &
	daa			;631e	27		'
	jr z,l634ah		;631f	28 29		( )
	ld hl,(02c2bh)		;6321	2a 2b 2c	* + ,
	dec l			;6324	2d		-
	ld l,02fh		;6325	2e 2f		. /
	jr nc,l635ah		;6327	30 31		0 1
	ld (03534h),a		;6329	32 34 35	2 4 5
	ld (hl),038h		;632c	36 38		6 8
	add hl,sp		;632e	39		9
	ld a,(04841h)		;632f	3a 41 48	: A H
	ld c,c			;6332	49		I
	ld c,d			;6333	4a		J
	ld c,e			;6334	4b		K
	ld c,h			;6335	4c		L
	ld c,l			;6336	4d		M
	ld c,(hl)		;6337	4e		N
	ld c,a			;6338	4f		O
	ld d,b			;6339	50		P
	ld d,l			;633a	55		U
	ld d,(hl)		;633b	56		V
l633ch:
	ld e,d			;633c	5a		Z
	ld e,a			;633d	5f		_
	ld h,l			;633e	65		e
	ld (hl),d		;633f	72		r
	ld (hl),e		;6340	73		s
	ld (hl),h		;6341	74		t
	ld (hl),l		;6342	75		u
	rst 38h			;6343	ff		.
sub_6344h:
	ld a,(ix+000h)		;6344	dd 7e 00	. ~ .
	and a			;6347	a7		.
	ret z			;6348	c8		.
	ld b,a			;6349	47		G
l634ah:
	rlca			;634a	07		.
	ret c			;634b	d8		.
	ld a,b			;634c	78		x
	dec a			;634d	3d		=
	cp 07ch			;634e	fe 7c		. |
	jp nc,04ae0h		;6350	d2 e0 4a	. . J
	ld l,a			;6353	6f		o
	ld h,000h		;6354	26 00		& .
	add hl,hl		;6356	29		)
	ld de,l6360h		;6357	11 60 63	. ` c
l635ah:
	add hl,de		;635a	19		.
	ld e,(hl)		;635b	5e		^
	inc hl			;635c	23		#
	ld d,(hl)		;635d	56		V
	ex de,hl		;635e	eb		.
	jp (hl)			;635f	e9		.
l6360h:
	inc b			;6360	04		.
l6361h:
	ld d,c			;6361	51		Q
	inc b			;6362	04		.
	ld d,c			;6363	51		Q
	call 00450h		;6364	cd 50 04	. P .
	ld d,c			;6367	51		Q
	inc b			;6368	04		.
	ld d,c			;6369	51		Q
	inc b			;636a	04		.
	ld d,c			;636b	51		Q
	inc b			;636c	04		.
	ld d,c			;636d	51		Q
	inc b			;636e	04		.
	ld d,c			;636f	51		Q
	inc b			;6370	04		.
	ld d,c			;6371	51		Q
	inc b			;6372	04		.
	ld d,c			;6373	51		Q
	inc b			;6374	04		.
	ld d,c			;6375	51		Q
	inc b			;6376	04		.
	ld d,c			;6377	51		Q
	dec c			;6378	0d		.
	ld c,a			;6379	4f		O
	inc e			;637a	1c		.
	ld c,a			;637b	4f		O
	nop			;637c	00		.
	ld c,a			;637d	4f		O
	sub c			;637e	91		.
	ld d,d			;637f	52		R
	dec b			;6380	05		.
	ld d,e			;6381	53		S
	ld e,d			;6382	5a		Z
	ld d,e			;6383	53		S
	cp e			;6384	bb		.
	ld d,e			;6385	53		S
	ld hl,(009aeh)		;6386	2a ae 09	* . .
	add a,b			;6389	80		.
	jr c,l63e0h		;638a	38 54		8 T
	adc a,a			;638c	8f		.
	add a,b			;638d	80		.
	ret			;638e	c9		.
	ld d,h			;638f	54		T
	sub d			;6390	92		.
	ld d,l			;6391	55		U
	ld l,h			;6392	6c		l
	ld d,a			;6393	57		W
	or l			;6394	b5		.
	ld e,e			;6395	5b		[
	ld b,c			;6396	41		A
	cp d			;6397	ba		.
	xor e			;6398	ab		.
	cp d			;6399	ba		.
	ld (hl),l		;639a	75		u
	cp e			;639b	bb		.
	ld d,e			;639c	53		S
	cp h			;639d	bc		.
	cp 0bch			;639e	fe bc		. .
	ld a,(bc)		;63a0	0a		.
	ld d,b			;63a1	50		P
	jr l6361h		;63a2	18 bd		. .
	ld a,d			;63a4	7a		z
	cp l			;63a5	bd		.
	and c			;63a6	a1		.
	cp l			;63a7	bd		.
	rst 20h			;63a8	e7		.
	cp l			;63a9	bd		.
	ld l,e			;63aa	6b		k
	cp (hl)			;63ab	be		.
	ld d,b			;63ac	50		P
	add a,c			;63ad	81		.
	add hl,hl		;63ae	29		)
	add a,d			;63af	82		.
	ret nc			;63b0	d0		.
	add a,d			;63b1	82		.
	scf			;63b2	37		7
	add a,e			;63b3	83		.
	ld b,a			;63b4	47		G
	add a,e			;63b5	83		.
	or l			;63b6	b5		.
	add a,e			;63b7	83		.
	ld sp,01284h		;63b8	31 84 12	1 . .
	add a,l			;63bb	85		.
	and h			;63bc	a4		.
	add a,(hl)		;63bd	86		.
	ld e,a			;63be	5f		_
	add a,a			;63bf	87		.
	rst 18h			;63c0	df		.
	ld e,h			;63c1	5c		\
	cp e			;63c2	bb		.
	add a,a			;63c3	87		.
	add hl,bc		;63c4	09		.
	adc a,b			;63c5	88		.
	rrca			;63c6	0f		.
	adc a,c			;63c7	89		.
	rra			;63c8	1f		.
	adc a,c			;63c9	89		.
	xor (hl)		;63ca	ae		.
	adc a,d			;63cb	8a		.
	ld h,c			;63cc	61		a
	ld d,c			;63cd	51		Q
	ld sp,hl		;63ce	f9		.
	adc a,e			;63cf	8b		.
	ld a,(02b8ch)		;63d0	3a 8c 2b	: . +
	adc a,l			;63d3	8d		.
	sub c			;63d4	91		.
	and c			;63d5	a1		.
	or a			;63d6	b7		.
	and d			;63d7	a2		.
	ld (hl),0a5h		;63d8	36 a5		6 .
	ld h,a			;63da	67		g
	and (hl)		;63db	a6		.
	ld d,e			;63dc	53		S
	xor b			;63dd	a8		.
	adc a,e			;63de	8b		.
	and l			;63df	a5		.
l63e0h:
	dec sp			;63e0	3b		;
	adc a,l			;63e1	8d		.
	adc a,d			;63e2	8a		.
	ld e,d			;63e3	5a		Z
	sub h			;63e4	94		.
	adc a,(hl)		;63e5	8e		.
	and a			;63e6	a7		.
	adc a,a			;63e7	8f		.
	inc h			;63e8	24		$
	sub b			;63e9	90		.
	ccf			;63ea	3f		?
	sub b			;63eb	90		.
	ld sp,0c95bh		;63ec	31 5b c9	1 [ .
	sub c			;63ef	91		.
	push af			;63f0	f5		.
	sub d			;63f1	92		.
	sbc a,d			;63f2	9a		.
	sub e			;63f3	93		.
	halt			;63f4	76		v
	sub h			;63f5	94		.
	add a,b			;63f6	80		.
	sub h			;63f7	94		.
	jp m,04794h		;63f8	fa 94 47	. . G
	sub (hl)		;63fb	96		.
	and b			;63fc	a0		.
	sub (hl)		;63fd	96		.
	xor b			;63fe	a8		.
	ld e,d			;63ff	5a		Z
	ld e,b			;6400	58		X
	ld h,h			;6401	64		d
	ld b,b			;6402	40		@
	sbc a,c			;6403	99		.
	ld c,h			;6404	4c		L
	sbc a,c			;6405	99		.
	and e			;6406	a3		.
	sbc a,c			;6407	99		.
	ld de,02959h		;6408	11 59 29	. Y )
	cp a			;640b	bf		.
	ld e,b			;640c	58		X
	ld h,h			;640d	64		d
	ld l,a			;640e	6f		o
	or b			;640f	b0		.
	ret z			;6410	c8		.
	or (hl)			;6411	b6		.
	dec bc			;6412	0b		.
	sbc a,b			;6413	98		.
	ld e,b			;6414	58		X
	ld h,h			;6415	64		d
	jr z,$-68		;6416	28 ba		( .
	ld e,b			;6418	58		X
	ld h,h			;6419	64		d
	rst 20h			;641a	e7		.
	or (hl)			;641b	b6		.
	ld e,b			;641c	58		X
	ld h,h			;641d	64		d
	ld hl,(0fa5bh)		;641e	2a 5b fa	* [ .
	sbc a,e			;6421	9b		.
	ld b,b			;6422	40		@
	sbc a,d			;6423	9a		.
	rst 38h			;6424	ff		.
	sbc a,a			;6425	9f		.
	nop			;6426	00		.
	and e			;6427	a3		.
	adc a,d			;6428	8a		.
	ld e,l			;6429	5d		]
	ld (hl),d		;642a	72		r
	sbc a,h			;642b	9c		.
	dec e			;642c	1d		.
	sbc a,l			;642d	9d		.
	ld e,051h		;642e	1e 51		. Q
	add a,d			;6430	82		.
	sbc a,d			;6431	9a		.
	ld e,b			;6432	58		X
	ld h,h			;6433	64		d
	ld e,b			;6434	58		X
	ld h,h			;6435	64		d
	ld e,b			;6436	58		X
	ld h,h			;6437	64		d
	ld e,b			;6438	58		X
	ld h,h			;6439	64		d
	ld c,l			;643a	4d		M
	sbc a,a			;643b	9f		.
	cp (hl)			;643c	be		.
	sbc a,a			;643d	9f		.
	ld e,09dh		;643e	1e 9d		. .
	pop bc			;6440	c1		.
	or b			;6441	b0		.
	pop af			;6442	f1		.
	adc a,d			;6443	8a		.
	ld h,c			;6444	61		a
	sub h			;6445	94		.
	ld a,d			;6446	7a		z
	sbc a,(hl)		;6447	9e		.
	ld a,e			;6448	7b		{
	sbc a,(hl)		;6449	9e		.
	ld hl,(0e3b4h)		;644a	2a b4 e3	* . .
	or b			;644d	b0		.
	ld c,b			;644e	48		H
	xor d			;644f	aa		.
	pop bc			;6450	c1		.
	sub (hl)		;6451	96		.
	rrca			;6452	0f		.
	and b			;6453	a0		.
	ld c,e			;6454	4b		K
	or l			;6455	b5		.
	add a,d			;6456	82		.
	or a			;6457	b7		.
	ret			;6458	c9		.
l6459h:
	ld bc,(0f0f2h)		;6459	ed 4b f2 f0	. K . .
	push bc			;645d	c5		.
	call 04b99h		;645e	cd 99 4b	. . K
	call sub_6472h		;6461	cd 72 64	. r d
	pop bc			;6464	c1		.
	ld (0f0f2h),bc		;6465	ed 43 f2 f0	. C . .
	ld a,c			;6469	79		y
	ld (09000h),a		;646a	32 00 90	2 . .
	ld a,b			;646d	78		x
	ld (0b000h),a		;646e	32 00 b0	2 . .
	ret			;6471	c9		.
sub_6472h:
	ld a,(ix+000h)		;6472	dd 7e 00	. ~ .
	cp 003h			;6475	fe 03		. .
	jp z,05100h		;6477	ca 00 51	. . Q
	cp 04dh			;647a	fe 4d		. M
	jp z,095ddh		;647c	ca dd 95	. . .
	cp 027h			;647f	fe 27		. '
	jp z,081aah		;6481	ca aa 81	. . .
	ret			;6484	c9		.
sub_6485h:
	ld bc,01220h		;6485	01 20 12	.   .
	ld ix,0d460h		;6488	dd 21 60 d4	. ! ` .
l648ch:
	push bc			;648c	c5		.
	ld a,(ix+000h)		;648d	dd 7e 00	. ~ .
	and a			;6490	a7		.
	jr z,l6496h		;6491	28 03		( .
	call sub_649fh		;6493	cd 9f 64	. . d
l6496h:
	pop bc			;6496	c1		.
	ld e,c			;6497	59		Y
	ld d,000h		;6498	16 00		. .
	add ix,de		;649a	dd 19		. .
	djnz l648ch		;649c	10 ee		. .
	ret			;649e	c9		.
sub_649fh:
	jp l64a2h		;649f	c3 a2 64	. . d
l64a2h:
	call sub_6a7fh		;64a2	cd 7f 6a	. . j
	ld a,(ix+000h)		;64a5	dd 7e 00	. ~ .
	ld (0f0feh),a		;64a8	32 fe f0	2 . .
	dec a			;64ab	3d		=
	cp 05eh			;64ac	fe 5e		. ^
	call nz,sub_6c21h	;64ae	c4 21 6c	. ! l
	call sub_64b9h		;64b1	cd b9 64	. . d
	xor a			;64b4	af		.
	ld (0f0feh),a		;64b5	32 fe f0	2 . .
	ret			;64b8	c9		.
sub_64b9h:
	cp 07ch			;64b9	fe 7c		. |
	jp nc,04ae0h		;64bb	d2 e0 4a	. . J
	ld l,a			;64be	6f		o
	ld h,000h		;64bf	26 00		& .
	add hl,hl		;64c1	29		)
	add hl,hl		;64c2	29		)
	ld de,l64d1h		;64c3	11 d1 64	. . d
	add hl,de		;64c6	19		.
	ld e,(hl)		;64c7	5e		^
	inc hl			;64c8	23		#
	ld d,(hl)		;64c9	56		V
	push de			;64ca	d5		.
	inc hl			;64cb	23		#
	ld e,(hl)		;64cc	5e		^
	inc hl			;64cd	23		#
	ld d,(hl)		;64ce	56		V
	ex de,hl		;64cf	eb		.
	jp (hl)			;64d0	e9		.
l64d1h:
	push af			;64d1	f5		.
	ld l,l			;64d2	6d		m
	ld de,0f551h		;64d3	11 51 f5	. Q .
	ld l,l			;64d6	6d		m
	ld de,0f551h		;64d7	11 51 f5	. Q .
	ld l,l			;64da	6d		m
	ret nc			;64db	d0		.
	ld d,b			;64dc	50		P
	push af			;64dd	f5		.
	ld l,l			;64de	6d		m
	ld de,0f551h		;64df	11 51 f5	. Q .
	ld l,l			;64e2	6d		m
	ld de,0f551h		;64e3	11 51 f5	. Q .
	ld l,l			;64e6	6d		m
	ld de,0f551h		;64e7	11 51 f5	. Q .
	ld l,l			;64ea	6d		m
	ld de,0f551h		;64eb	11 51 f5	. Q .
	ld l,l			;64ee	6d		m
	ld de,0f551h		;64ef	11 51 f5	. Q .
	ld l,l			;64f2	6d		m
	ld de,0f551h		;64f3	11 51 f5	. Q .
	ld l,l			;64f6	6d		m
	ld de,0f551h		;64f7	11 51 f5	. Q .
	ld l,l			;64fa	6d		m
	ld de,0f551h		;64fb	11 51 f5	. Q .
	ld l,l			;64fe	6d		m
	ld de,0f551h		;64ff	11 51 f5	. Q .
	ld l,l			;6502	6d		m
	dec c			;6503	0d		.
	ld c,a			;6504	4f		O
	dec (hl)		;6505	35		5
	ld l,(hl)		;6506	6e		n
	inc sp			;6507	33		3
	ld c,a			;6508	4f		O
	push af			;6509	f5		.
	ld l,l			;650a	6d		m
	nop			;650b	00		.
	ld c,a			;650c	4f		O
	push af			;650d	f5		.
	ld l,l			;650e	6d		m
	adc a,b			;650f	88		.
	ld d,d			;6510	52		R
	push af			;6511	f5		.
	ld l,l			;6512	6d		m
	call p,0f552h		;6513	f4 52 f5	. R .
	ld l,l			;6516	6d		m
	ld c,(hl)		;6517	4e		N
	ld d,e			;6518	53		S
	push af			;6519	f5		.
	ld l,l			;651a	6d		m
	call nz,04453h		;651b	c4 53 44	. S D
	ld l,(hl)		;651e	6e		n
	ld a,(bc)		;651f	0a		.
	xor (hl)		;6520	ae		.
	push af			;6521	f5		.
	ld l,l			;6522	6d		m
	nop			;6523	00		.
	add a,b			;6524	80		.
	push af			;6525	f5		.
	ld l,l			;6526	6d		m
	inc l			;6527	2c		,
	ld d,h			;6528	54		T
	push af			;6529	f5		.
	ld l,l			;652a	6d		m
	ld a,a			;652b	7f		.
	add a,b			;652c	80		.
	push af			;652d	f5		.
l652eh:
	ld l,l			;652e	6d		m
	pop bc			;652f	c1		.
	ld d,h			;6530	54		T
	push af			;6531	f5		.
	ld l,l			;6532	6d		m
	ld a,h			;6533	7c		|
	ld d,l			;6534	55		U
	push af			;6535	f5		.
	ld l,l			;6536	6d		m
	ld h,e			;6537	63		c
	ld d,a			;6538	57		W
	out (06dh),a		;6539	d3 6d		. m
	jp nz,0e15bh		;653b	c2 5b e1	. [ .
	ld l,l			;653e	6d		m
	dec sp			;653f	3b		;
	cp d			;6540	ba		.
	push af			;6541	f5		.
	ld l,l			;6542	6d		m
	sbc a,a			;6543	9f		.
	cp d			;6544	ba		.
	push af			;6545	f5		.
	ld l,l			;6546	6d		m
	ld l,c			;6547	69		i
	cp e			;6548	bb		.
	jp nz,03a66h		;6549	c2 66 3a	. f :
	cp h			;654c	bc		.
	jp nz,0ec66h		;654d	c2 66 ec	. f .
	cp h			;6550	bc		.
	pop hl			;6551	e1		.
	ld l,l			;6552	6d		m
	pop af			;6553	f1		.
	ld c,a			;6554	4f		O
	pop hl			;6555	e1		.
	ld l,l			;6556	6d		m
	rrca			;6557	0f		.
	cp l			;6558	bd		.
	dec (hl)		;6559	35		5
	ld l,(hl)		;655a	6e		n
	ld (hl),h		;655b	74		t
	cp l			;655c	bd		.
	jp nz,09b66h		;655d	c2 66 9b	. f .
	cp l			;6560	bd		.
	push af			;6561	f5		.
	ld l,l			;6562	6d		m
	in a,(0bdh)		;6563	db bd		. .
	pop hl			;6565	e1		.
	ld l,l			;6566	6d		m
	ld e,a			;6567	5f		_
	cp (hl)			;6568	be		.
	pop hl			;6569	e1		.
l656ah:
	ld l,l			;656a	6d		m
	ld (hl),b		;656b	70		p
	add a,c			;656c	81		.
	dec (hl)		;656d	35		5
	ld l,(hl)		;656e	6e		n
	dec e			;656f	1d		.
	add a,d			;6570	82		.
	pop hl			;6571	e1		.
	ld l,l			;6572	6d		m
	jp z,00982h		;6573	ca 82 09	. . .
	ld l,(hl)		;6576	6e		n
	jr c,$-123		;6577	38 83		8 .
	dec (hl)		;6579	35		5
	ld l,(hl)		;657a	6e		n
	ld b,c			;657b	41		A
	add a,e			;657c	83		.
	dec (hl)		;657d	35		5
	ld l,(hl)		;657e	6e		n
	cp a			;657f	bf		.
	add a,e			;6580	83		.
	add hl,bc		;6581	09		.
	ld l,(hl)		;6582	6e		n
	ld c,l			;6583	4d		M
	add a,h			;6584	84		.
	dec (hl)		;6585	35		5
	ld l,(hl)		;6586	6e		n
	ld sp,hl		;6587	f9		.
	add a,h			;6588	84		.
	push af			;6589	f5		.
	ld l,l			;658a	6d		m
	sub h			;658b	94		.
	add a,(hl)		;658c	86		.
	out (06dh),a		;658d	d3 6d		. m
	sbc a,e			;658f	9b		.
	add a,a			;6590	87		.
	push af			;6591	f5		.
	ld l,l			;6592	6d		m
	di			;6593	f3		.
	ld e,h			;6594	5c		\
	pop hl			;6595	e1		.
	ld l,l			;6596	6d		m
	pop bc			;6597	c1		.
	add a,a			;6598	87		.
	push af			;6599	f5		.
	ld l,l			;659a	6d		m
	pop af			;659b	f1		.
	add a,a			;659c	87		.
	push af			;659d	f5		.
	ld l,l			;659e	6d		m
	rrca			;659f	0f		.
	adc a,c			;65a0	89		.
	push af			;65a1	f5		.
	ld l,l			;65a2	6d		m
	djnz l652eh		;65a3	10 89		. .
	pop hl			;65a5	e1		.
	ld l,l			;65a6	6d		m
	xor (hl)		;65a7	ae		.
	adc a,d			;65a8	8a		.
	out (06dh),a		;65a9	d3 6d		. m
	ld c,h			;65ab	4c		L
	ld d,c			;65ac	51		Q
	dec (hl)		;65ad	35		5
	ld l,(hl)		;65ae	6e		n
	di			;65af	f3		.
	adc a,e			;65b0	8b		.
	dec (hl)		;65b1	35		5
	ld l,(hl)		;65b2	6e		n
	inc (hl)		;65b3	34		4
	adc a,h			;65b4	8c		.
	dec (hl)		;65b5	35		5
	ld l,(hl)		;65b6	6e		n
	dec hl			;65b7	2b		+
	adc a,l			;65b8	8d		.
	push af			;65b9	f5		.
	ld l,l			;65ba	6d		m
	ld a,e			;65bb	7b		{
	and c			;65bc	a1		.
	ld b,h			;65bd	44		D
	ld l,(hl)		;65be	6e		n
	or c			;65bf	b1		.
	and d			;65c0	a2		.
	ld b,h			;65c1	44		D
	ld l,(hl)		;65c2	6e		n
	jr nc,l656ah		;65c3	30 a5		0 .
	ld b,h			;65c5	44		D
	ld l,(hl)		;65c6	6e		n
	ld b,a			;65c7	47		G
	and (hl)		;65c8	a6		.
	push af			;65c9	f5		.
	ld l,l			;65ca	6d		m
	ld d,e			;65cb	53		S
	xor b			;65cc	a8		.
	push af			;65cd	f5		.
	ld l,l			;65ce	6d		m
	ld a,a			;65cf	7f		.
	and l			;65d0	a5		.
	pop hl			;65d1	e1		.
	ld l,l			;65d2	6d		m
	inc l			;65d3	2c		,
	adc a,l			;65d4	8d		.
	push af			;65d5	f5		.
	ld l,l			;65d6	6d		m
	add a,h			;65d7	84		.
	ld e,d			;65d8	5a		Z
	out (06dh),a		;65d9	d3 6d		. m
	add a,c			;65db	81		.
	adc a,(hl)		;65dc	8e		.
	push af			;65dd	f5		.
	ld l,l			;65de	6d		m
	sub h			;65df	94		.
	adc a,a			;65e0	8f		.
	push af			;65e1	f5		.
	ld l,l			;65e2	6d		m
	inc a			;65e3	3c		<
	sub b			;65e4	90		.
	dec e			;65e5	1d		.
	ld l,(hl)		;65e6	6e		n
	ld d,h			;65e7	54		T
	sub b			;65e8	90		.
	jp nz,02b66h		;65e9	c2 66 2b	. f +
	ld e,e			;65ec	5b		[
	jp nz,0ac66h		;65ed	c2 66 ac	. f .
	sub c			;65f0	91		.
	dec e			;65f1	1d		.
	ld l,(hl)		;65f2	6e		n
	call po,0f592h		;65f3	e4 92 f5	. . .
	ld l,l			;65f6	6d		m
	ld a,e			;65f7	7b		{
	sub e			;65f8	93		.
	push af			;65f9	f5		.
	ld l,l			;65fa	6d		m
l65fbh:
	halt			;65fb	76		v
	sub h			;65fc	94		.
	push af			;65fd	f5		.
	ld l,l			;65fe	6d		m
	ld (hl),a		;65ff	77		w
	sub h			;6600	94		.
	jp nz,00866h		;6601	c2 66 08	. f .
	sub l			;6604	95		.
	push af			;6605	f5		.
l6606h:
	ld l,l			;6606	6d		m
	ld d,l			;6607	55		U
	sub (hl)		;6608	96		.
	pop hl			;6609	e1		.
	ld l,l			;660a	6d		m
	ld e,b			;660b	58		X
	sub (hl)		;660c	96		.
	dec (hl)		;660d	35		5
	ld l,(hl)		;660e	6e		n
	and d			;660f	a2		.
	ld e,d			;6610	5a		Z
	push af			;6611	f5		.
	ld l,l			;6612	6d		m
	dec a			;6613	3d		=
	sbc a,b			;6614	98		.
	push af			;6615	f5		.
	ld l,l			;6616	6d		m
	ld b,b			;6617	40		@
l6618h:
	sbc a,c			;6618	99		.
	push af			;6619	f5		.
	ld l,l			;661a	6d		m
	ld b,b			;661b	40		@
	sbc a,c			;661c	99		.
	push af			;661d	f5		.
	ld l,l			;661e	6d		m
	sbc a,d			;661f	9a		.
	sbc a,c			;6620	99		.
	dec (hl)		;6621	35		5
	ld l,(hl)		;6622	6e		n
	ret p			;6623	f0		.
	ld e,b			;6624	58		X
	jp nz,01466h		;6625	c2 66 14	. f .
	cp a			;6628	bf		.
	push af			;6629	f5		.
	ld l,l			;662a	6d		m
	pop bc			;662b	c1		.
	ld h,(hl)		;662c	66		f
	push af			;662d	f5		.
	ld l,l			;662e	6d		m
	ld h,(hl)		;662f	66		f
	or b			;6630	b0		.
	push af			;6631	f5		.
	ld l,l			;6632	6d		m
	ret z			;6633	c8		.
	or (hl)			;6634	b6		.
	dec (hl)		;6635	35		5
	ld l,(hl)		;6636	6e		n
	dec b			;6637	05		.
	sbc a,b			;6638	98		.
	push af			;6639	f5		.
	ld l,l			;663a	6d		m
	pop bc			;663b	c1		.
	ld h,(hl)		;663c	66		f
	push af			;663d	f5		.
	ld l,l			;663e	6d		m
	jr z,l65fbh		;663f	28 ba		( .
	push af			;6641	f5		.
	ld l,l			;6642	6d		m
	pop bc			;6643	c1		.
	ld h,(hl)		;6644	66		f
	push af			;6645	f5		.
	ld l,l			;6646	6d		m
	sbc a,0b6h		;6647	de b6		. .
	ld l,l			;6649	6d		m
	ld l,(hl)		;664a	6e		n
	add hl,sp		;664b	39		9
	sbc a,d			;664c	9a		.
	ld l,(hl)		;664d	6e		n
	ld l,(hl)		;664e	6e		n
	add hl,de		;664f	19		.
	ld e,e			;6650	5b		[
	ld l,(hl)		;6651	6e		n
	ld l,(hl)		;6652	6e		n
	dec sp			;6653	3b		;
	sbc a,h			;6654	9c		.
	push af			;6655	f5		.
	ld l,l			;6656	6d		m
	ld b,c			;6657	41		A
	sbc a,d			;6658	9a		.
	ld l,(hl)		;6659	6e		n
	ld l,(hl)		;665a	6e		n
	rst 38h			;665b	ff		.
	sbc a,a			;665c	9f		.
	ld b,h			;665d	44		D
	ld l,(hl)		;665e	6e		n
	ret c			;665f	d8		.
	and d			;6660	a2		.
	push af			;6661	f5		.
	ld l,l			;6662	6d		m
	and b			;6663	a0		.
	ld e,l			;6664	5d		]
	push af			;6665	f5		.
	ld l,l			;6666	6d		m
	ld l,h			;6667	6c		l
	sbc a,h			;6668	9c		.
	ld l,(hl)		;6669	6e		n
	ld l,(hl)		;666a	6e		n
	dec e			;666b	1d		.
	sbc a,l			;666c	9d		.
	push af			;666d	f5		.
	ld l,l			;666e	6d		m
	ld (de),a		;666f	12		.
	ld d,c			;6670	51		Q
	dec (hl)		;6671	35		5
	ld l,(hl)		;6672	6e		n
	ld a,h			;6673	7c		|
	sbc a,d			;6674	9a		.
	jp nz,0d766h		;6675	c2 66 d7	. f .
	sbc a,d			;6678	9a		.
	dec (hl)		;6679	35		5
	ld l,(hl)		;667a	6e		n
	jr c,l6618h		;667b	38 9b		8 .
	push af			;667d	f5		.
	ld l,l			;667e	6d		m
	pop bc			;667f	c1		.
	ld h,(hl)		;6680	66		f
	push af			;6681	f5		.
	ld l,l			;6682	6d		m
	pop bc			;6683	c1		.
	ld h,(hl)		;6684	66		f
	push af			;6685	f5		.
	ld l,l			;6686	6d		m
	ld b,a			;6687	47		G
	sbc a,a			;6688	9f		.
	push af			;6689	f5		.
	ld l,l			;668a	6d		m
	or b			;668b	b0		.
	sbc a,a			;668c	9f		.
	push af			;668d	f5		.
	ld l,l			;668e	6d		m
	ld h,b			;668f	60		`
	sbc a,l			;6690	9d		.
	ld b,h			;6691	44		D
	ld l,(hl)		;6692	6e		n
	pop bc			;6693	c1		.
	or b			;6694	b0		.
	push af			;6695	f5		.
	ld l,l			;6696	6d		m
	rst 10h			;6697	d7		.
	adc a,d			;6698	8a		.
	dec e			;6699	1d		.
	ld l,(hl)		;669a	6e		n
	ld (hl),e		;669b	73		s
	sub h			;669c	94		.
	push af			;669d	f5		.
	ld l,l			;669e	6d		m
	ld a,d			;669f	7a		z
	sbc a,(hl)		;66a0	9e		.
	add a,c			;66a1	81		.
	ld l,(hl)		;66a2	6e		n
	ld a,h			;66a3	7c		|
	sbc a,(hl)		;66a4	9e		.
	dec (hl)		;66a5	35		5
	ld l,(hl)		;66a6	6e		n
	inc hl			;66a7	23		#
	or h			;66a8	b4		.
	ld b,h			;66a9	44		D
	ld l,(hl)		;66aa	6e		n
	call z,0c2b0h		;66ab	cc b0 c2	. . .
	ld h,(hl)		;66ae	66		f
	add hl,de		;66af	19		.
	xor d			;66b0	aa		.
	dec (hl)		;66b1	35		5
	ld l,(hl)		;66b2	6e		n
	xor h			;66b3	ac		.
	sub (hl)		;66b4	96		.
	ld b,h			;66b5	44		D
	ld l,(hl)		;66b6	6e		n
	nop			;66b7	00		.
	and b			;66b8	a0		.
	ld b,h			;66b9	44		D
	ld l,(hl)		;66ba	6e		n
	inc de			;66bb	13		.
	or l			;66bc	b5		.
	jp nz,l6c66h		;66bd	c2 66 6c	. f l
	or a			;66c0	b7		.
	ret			;66c1	c9		.
	jp l7747h		;66c2	c3 47 77	. G w
	nop			;66c5	00		.
	rst 38h			;66c6	ff		.
	rst 38h			;66c7	ff		.
	rst 38h			;66c8	ff		.
	rst 38h			;66c9	ff		.
	rst 38h			;66ca	ff		.
	rst 38h			;66cb	ff		.
	rst 38h			;66cc	ff		.
	rst 38h			;66cd	ff		.
	rst 38h			;66ce	ff		.
	rst 38h			;66cf	ff		.
sub_66d0h:
	call sub_671ah		;66d0	cd 1a 67	. . g
	ret c			;66d3	d8		.
	call sub_6747h		;66d4	cd 47 67	. G g
	call sub_67b0h		;66d7	cd b0 67	. . g
	jr l66f4h		;66da	18 18		. .
sub_66dch:
	call sub_671ah		;66dc	cd 1a 67	. . g
	ret c			;66df	d8		.
	call sub_6747h		;66e0	cd 47 67	. G g
	ld (ix+000h),d		;66e3	dd 72 00	. r .
	ld (ix+02dh),c		;66e6	dd 71 2d	. q -
	jr l66f4h		;66e9	18 09		. .
sub_66ebh:
	call sub_671ah		;66eb	cd 1a 67	. . g
	call sub_6747h		;66ee	cd 47 67	. G g
	call sub_67ceh		;66f1	cd ce 67	. . g
l66f4h:
	push ix			;66f4	dd e5		. .
	pop hl			;66f6	e1		.
sub_66f7h:
	call 04befh		;66f7	cd ef 4b	. . K
	ld a,(hl)		;66fa	7e		~
	dec a			;66fb	3d		=
	ld de,00013h		;66fc	11 13 00	. . .
	add hl,de		;66ff	19		.
	push hl			;6700	e5		.
	ld de,09100h		;6701	11 00 91	. . .
	call 04624h		;6704	cd 24 46	. $ F
	ld c,(hl)		;6707	4e		N
	inc hl			;6708	23		#
	ld b,(hl)		;6709	46		F
	inc hl			;670a	23		#
	ld a,(hl)		;670b	7e		~
	inc hl			;670c	23		#
	ld d,(hl)		;670d	56		V
	pop hl			;670e	e1		.
	ld (hl),c		;670f	71		q
	inc l			;6710	2c		,
	ld (hl),b		;6711	70		p
	inc l			;6712	2c		,
	ld (hl),a		;6713	77		w
	inc l			;6714	2c		,
	ld (hl),d		;6715	72		r
	inc l			;6716	2c		,
	jp 04b99h		;6717	c3 99 4b	. . K
sub_671ah:
	ld a,(0ce44h)		;671a	3a 44 ce	: D .
	sub 001h		;671d	d6 01		. .
	jr c,l673eh		;671f	38 1d		8 .
	ld (0ce44h),a		;6721	32 44 ce	2 D .
	exx			;6724	d9		.
	ld hl,0ce80h		;6725	21 80 ce	! . .
	ld de,00040h		;6728	11 40 00	. @ .
	ld b,014h		;672b	06 14		. .
	ld c,001h		;672d	0e 01		. .
l672fh:
	ld a,(hl)		;672f	7e		~
	and a			;6730	a7		.
	jr z,l6737h		;6731	28 04		( .
	add hl,de		;6733	19		.
	inc c			;6734	0c		.
	djnz l672fh		;6735	10 f8		. .
l6737h:
	ld a,c			;6737	79		y
	push hl			;6738	e5		.
	exx			;6739	d9		.
	pop ix			;673a	dd e1		. .
	ld c,a			;673c	4f		O
	ret			;673d	c9		.
l673eh:
	ld hl,(0ce50h)		;673e	2a 50 ce	* P .
	inc hl			;6741	23		#
	ld (0ce50h),hl		;6742	22 50 ce	" P .
	scf			;6745	37		7
	ret			;6746	c9		.
sub_6747h:
	exx			;6747	d9		.
	push ix			;6748	dd e5		. .
	pop hl			;674a	e1		.
	xor a			;674b	af		.
	ld b,040h		;674c	06 40		. @
l674eh:
	ld (hl),a		;674e	77		w
	inc hl			;674f	23		#
	djnz l674eh		;6750	10 fc		. .
	exx			;6752	d9		.
	ret			;6753	c9		.
	call sub_6796h		;6754	cd 96 67	. . g
	ld d,a			;6757	57		W
	and 07fh		;6758	e6 7f		. .
	ld b,a			;675a	47		G
	ld a,(0c0d5h)		;675b	3a d5 c0	: . .
	dec a			;675e	3d		=
	jr z,l677ch		;675f	28 1b		( .
	dec a			;6761	3d		=
	jr z,l6780h		;6762	28 1c		( .
	dec a			;6764	3d		=
	jr z,l6780h		;6765	28 19		( .
	dec a			;6767	3d		=
	jr z,l6785h		;6768	28 1b		( .
	dec a			;676a	3d		=
	jr z,l678dh		;676b	28 20		(  
	dec a			;676d	3d		=
	jr z,l6773h		;676e	28 03		( .
	dec a			;6770	3d		=
	jr z,l6773h		;6771	28 00		( .
l6773h:
	ld c,b			;6773	48		H
	ld a,000h		;6774	3e 00		> .
	sub (ix+013h)		;6776	dd 96 13	. . .
	ld b,a			;6779	47		G
	jr l678fh		;677a	18 13		. .
l677ch:
	ld c,020h		;677c	0e 20		.  
	jr l678fh		;677e	18 0f		. .
l6780h:
	ld c,b			;6780	48		H
	ld b,018h		;6781	06 18		. .
	jr l678fh		;6783	18 0a		. .
l6785h:
	ld a,b			;6785	78		x
	sub 018h		;6786	d6 18		. .
	ld c,a			;6788	4f		O
	ld b,018h		;6789	06 18		. .
	jr l678fh		;678b	18 02		. .
l678dh:
	ld c,000h		;678d	0e 00		. .
l678fh:
	ld (ix+008h),b		;678f	dd 70 08	. p .
	ld (ix+00ah),c		;6792	dd 71 0a	. q .
	ret			;6795	c9		.
sub_6796h:
	ld a,(ix+02eh)		;6796	dd 7e 2e	. ~ .
	cp (ix+02fh)		;6799	dd be 2f	. . /
	inc a			;679c	3c		<
	ccf			;679d	3f		?
	ret c			;679e	d8		.
	ld (ix+02eh),a		;679f	dd 77 2e	. w .
	ld l,(ix+031h)		;67a2	dd 6e 31	. n 1
	ld h,(ix+032h)		;67a5	dd 66 32	. f 2
	add a,l			;67a8	85		.
	ld l,a			;67a9	6f		o
	jr nc,l67adh		;67aa	30 01		0 .
	inc h			;67ac	24		$
l67adh:
	ld a,(hl)		;67ad	7e		~
	and a			;67ae	a7		.
	ret			;67af	c9		.
sub_67b0h:
	ld a,(hl)		;67b0	7e		~
	and 07fh		;67b1	e6 7f		. .
	ld d,a			;67b3	57		W
	inc hl			;67b4	23		#
	ld a,(hl)		;67b5	7e		~
	ld e,000h		;67b6	1e 00		. .
	rlca			;67b8	07		.
	jr nc,l67bdh		;67b9	30 02		0 .
	ld e,080h		;67bb	1e 80		. .
l67bdh:
	srl a			;67bd	cb 3f		. ?
	dec a			;67bf	3d		=
	dec a			;67c0	3d		=
	dec a			;67c1	3d		=
	dec a			;67c2	3d		=
	or e			;67c3	b3		.
	call sub_67e8h		;67c4	cd e8 67	. . g
	ld (ix+000h),d		;67c7	dd 72 00	. r .
	ld (ix+02dh),c		;67ca	dd 71 2d	. q -
	ret			;67cd	c9		.
sub_67ceh:
	ld l,(iy+031h)		;67ce	fd 6e 31	. n 1
	ld h,(iy+032h)		;67d1	fd 66 32	. f 2
	ld e,(iy+02fh)		;67d4	fd 5e 2f	. ^ /
	ld d,000h		;67d7	16 00		. .
	add hl,de		;67d9	19		.
	call sub_67e7h		;67da	cd e7 67	. . g
	call sub_6796h		;67dd	cd 96 67	. . g
	ld (ix+000h),a		;67e0	dd 77 00	. w .
	ld (ix+02dh),c		;67e3	dd 71 2d	. q -
	ret			;67e6	c9		.
sub_67e7h:
	ld a,(hl)		;67e7	7e		~
sub_67e8h:
	ld b,a			;67e8	47		G
	rlca			;67e9	07		.
	ld a,b			;67ea	78		x
	jr nc,l67f4h		;67eb	30 07		0 .
	and 03fh		;67ed	e6 3f		. ?
	ld (ix+030h),a		;67ef	dd 77 30	. w 0
	inc hl			;67f2	23		#
	ld b,(hl)		;67f3	46		F
l67f4h:
	ld (ix+02fh),b		;67f4	dd 70 2f	. p /
	ld (ix+031h),l		;67f7	dd 75 31	. u 1
	ld (ix+032h),h		;67fa	dd 74 32	. t 2
	ret			;67fd	c9		.
	ld a,001h		;67fe	3e 01		> .
	call sub_6871h		;6800	cd 71 68	. q h
	ret c			;6803	d8		.
	set 7,(ix+034h)		;6804	dd cb 34 fe	. . 4 .
	call 04656h		;6808	cd 56 46	. V F
	call sub_66ebh		;680b	cd eb 66	. . f
	call sub_6938h		;680e	cd 38 69	. 8 i
	jp 04656h		;6811	c3 56 46	. V F
	ld a,001h		;6814	3e 01		> .
	call sub_6871h		;6816	cd 71 68	. q h
	ret c			;6819	d8		.
	set 7,(ix+034h)		;681a	dd cb 34 fe	. . 4 .
	call 04656h		;681e	cd 56 46	. V F
	call sub_66ebh		;6821	cd eb 66	. . f
	call sub_694dh		;6824	cd 4d 69	. M i
	jp 04656h		;6827	c3 56 46	. V F
	ld b,(ix+02eh)		;682a	dd 46 2e	. F .
	push bc			;682d	c5		.
	call sub_6836h		;682e	cd 36 68	. 6 h
	pop bc			;6831	c1		.
	ld (ix+02eh),b		;6832	dd 70 2e	. p .
	ret			;6835	c9		.
sub_6836h:
	ld a,001h		;6836	3e 01		> .
	call sub_6871h		;6838	cd 71 68	. q h
	ret c			;683b	d8		.
	set 7,(ix+034h)		;683c	dd cb 34 fe	. . 4 .
	call 04656h		;6840	cd 56 46	. V F
	call sub_66ebh		;6843	cd eb 66	. . f
	call sub_6964h		;6846	cd 64 69	. d i
	jp 04656h		;6849	c3 56 46	. V F
	ld d,a			;684c	57		W
	ld a,001h		;684d	3e 01		> .
	call sub_6871h		;684f	cd 71 68	. q h
	ret c			;6852	d8		.
	call 04656h		;6853	cd 56 46	. V F
	call sub_66dch		;6856	cd dc 66	. . f
	or a			;6859	b7		.
	jp 04656h		;685a	c3 56 46	. V F
	ld d,a			;685d	57		W
	ld a,001h		;685e	3e 01		> .
	call sub_6871h		;6860	cd 71 68	. q h
	ret c			;6863	d8		.
	call 04656h		;6864	cd 56 46	. V F
	call sub_66dch		;6867	cd dc 66	. . f
	call sub_694dh		;686a	cd 4d 69	. M i
	or a			;686d	b7		.
	jp 04656h		;686e	c3 56 46	. V F
sub_6871h:
	ld hl,0ce44h		;6871	21 44 ce	! D .
	ld b,(hl)		;6874	46		F
	ld c,a			;6875	4f		O
	and 07fh		;6876	e6 7f		. .
	cp (hl)			;6878	be		.
	ld b,a			;6879	47		G
	ccf			;687a	3f		?
	ret nc			;687b	d0		.
	bit 7,c			;687c	cb 79		. y
	jr nz,l6884h		;687e	20 04		  .
	ld a,(hl)		;6880	7e		~
	and a			;6881	a7		.
	ld b,a			;6882	47		G
	ret nz			;6883	c0		.
l6884h:
	scf			;6884	37		7
	ret			;6885	c9		.
	res 7,(iy+000h)		;6886	fd cb 00 be	. . . .
	ret			;688a	c9		.
	inc (ix+039h)		;688b	dd 34 39	. 4 9
	ld c,(ix+039h)		;688e	dd 4e 39	. N 9
	ld hl,0ce80h		;6891	21 80 ce	! . .
	ld b,014h		;6894	06 14		. .
l6896h:
	push hl			;6896	e5		.
	ld de,00034h		;6897	11 34 00	. 4 .
	add hl,de		;689a	19		.
	ld e,(hl)		;689b	5e		^
	ld a,(ix+02dh)		;689c	dd 7e 2d	. ~ -
	cp e			;689f	bb		.
	jr nz,l68a8h		;68a0	20 06		  .
	ld de,00004h		;68a2	11 04 00	. . .
	add hl,de		;68a5	19		.
	ld a,(hl)		;68a6	7e		~
	cp c			;68a7	b9		.
l68a8h:
	pop hl			;68a8	e1		.
	jr z,l68b5h		;68a9	28 0a		( .
	ld de,00040h		;68ab	11 40 00	. @ .
	add hl,de		;68ae	19		.
	djnz l6896h		;68af	10 e5		. .
	scf			;68b1	37		7
	ld hl,0d700h		;68b2	21 00 d7	! . .
l68b5h:
	push hl			;68b5	e5		.
	pop iy			;68b6	fd e1		. .
	ret			;68b8	c9		.
sub_68b9h:
	ld a,(ix+035h)		;68b9	dd 7e 35	. ~ 5
	and a			;68bc	a7		.
	jr z,l68cfh		;68bd	28 10		( .
	rla			;68bf	17		.
	ret c			;68c0	d8		.
	rra			;68c1	1f		.
	jr l68f8h		;68c2	18 34		. 4
sub_68c4h:
	ld a,(ix+036h)		;68c4	dd 7e 36	. ~ 6
	and a			;68c7	a7		.
	jr z,l68cfh		;68c8	28 05		( .
	rla			;68ca	17		.
	ret c			;68cb	d8		.
	rra			;68cc	1f		.
	jr l68f8h		;68cd	18 29		. )
l68cfh:
	ld hl,0d700h		;68cf	21 00 d7	! . .
	scf			;68d2	37		7
	ret			;68d3	c9		.
	ld a,(ix+036h)		;68d4	dd 7e 36	. ~ 6
	jr l68f8h		;68d7	18 1f		. .
	ld a,(iy+036h)		;68d9	fd 7e 36	. ~ 6
	jr l68f8h		;68dc	18 1a		. .
sub_68deh:
	ld a,(ix+034h)		;68de	dd 7e 34	. ~ 4
	ld c,a			;68e1	4f		O
	and 03fh		;68e2	e6 3f		. ?
	call l68f8h		;68e4	cd f8 68	. . h
	ld a,c			;68e7	79		y
	bit 6,a			;68e8	cb 77		. w
	jr nz,l68f2h		;68ea	20 06		  .
	and 03fh		;68ec	e6 3f		. ?
	cp (iy+02dh)		;68ee	fd be 2d	. . -
	ret			;68f1	c9		.
l68f2h:
	ld iy,0d700h		;68f2	fd 21 00 d7	. ! . .
	scf			;68f6	37		7
	ret			;68f7	c9		.
l68f8h:
	call sub_68ffh		;68f8	cd ff 68	. . h
	push hl			;68fb	e5		.
	pop iy			;68fc	fd e1		. .
	ret			;68fe	c9		.
sub_68ffh:
	dec a			;68ff	3d		=
	rrca			;6900	0f		.
	rrca			;6901	0f		.
	ld b,a			;6902	47		G
	and 0f0h		;6903	e6 f0		. .
	ld l,a			;6905	6f		o
	ld a,b			;6906	78		x
	and 00fh		;6907	e6 0f		. .
	ld h,a			;6909	67		g
	ld de,0ce80h		;690a	11 80 ce	. . .
	add hl,de		;690d	19		.
	ret			;690e	c9		.
	ld bc,00000h		;690f	01 00 00	. . .
	exx			;6912	d9		.
	call sub_68deh		;6913	cd de 68	. . h
	exx			;6916	d9		.
	ld a,(iy+008h)		;6917	fd 7e 08	. ~ .
	add a,c			;691a	81		.
	ld (ix+008h),a		;691b	dd 77 08	. w .
	ld a,(iy+00ah)		;691e	fd 7e 0a	. ~ .
	add a,b			;6921	80		.
	ld (ix+00ah),a		;6922	dd 77 0a	. w .
	ret			;6925	c9		.
	ld bc,00000h		;6926	01 00 00	. . .
	ld a,(ix+008h)		;6929	dd 7e 08	. ~ .
	add a,c			;692c	81		.
	ld (iy+008h),a		;692d	fd 77 08	. w .
	ld a,(ix+00ah)		;6930	dd 7e 0a	. ~ .
	add a,b			;6933	80		.
	ld (iy+00ah),a		;6934	fd 77 0a	. w .
	ret			;6937	c9		.
sub_6938h:
	call sub_694dh		;6938	cd 4d 69	. M i
	ld a,(iy+02dh)		;693b	fd 7e 2d	. ~ -
	ld b,(ix+02dh)		;693e	dd 46 2d	. F -
	cp b			;6941	b8		.
	jr nc,l694bh		;6942	30 07		0 .
	ld (ix+03ah),c		;6944	dd 71 3a	. q :
	ld (ix+000h),05fh	;6947	dd 36 00 5f	. 6 . _
l694bh:
	xor a			;694b	af		.
	ret			;694c	c9		.
sub_694dh:
	inc (iy+037h)		;694d	fd 34 37	. 4 7
	ld a,(iy+037h)		;6950	fd 7e 37	. ~ 7
	ld (iy+03bh),a		;6953	fd 77 3b	. w ;
	ld (ix+038h),a		;6956	dd 77 38	. w 8
	ld a,(ix+000h)		;6959	dd 7e 00	. ~ .
	ld c,a			;695c	4f		O
	ld a,(iy+02dh)		;695d	fd 7e 2d	. ~ -
	ld (ix+034h),a		;6960	dd 77 34	. w 4
	ret			;6963	c9		.
sub_6964h:
	inc (iy+037h)		;6964	fd 34 37	. 4 7
	ld a,(iy+037h)		;6967	fd 7e 37	. ~ 7
	ld (ix+038h),a		;696a	dd 77 38	. w 8
	ld c,(ix+000h)		;696d	dd 4e 00	. N .
	ld a,(iy+02dh)		;6970	fd 7e 2d	. ~ -
	ld (ix+034h),a		;6973	dd 77 34	. w 4
	ld a,(iy+033h)		;6976	fd 7e 33	. ~ 3
	ld b,(ix+02dh)		;6979	dd 46 2d	. F -
	ld (iy+033h),b		;697c	fd 70 33	. p 3
	and a			;697f	a7		.
	jr z,l6991h		;6980	28 0f		( .
	ld (ix+035h),a		;6982	dd 77 35	. w 5
	call sub_68ffh		;6985	cd ff 68	. . h
	ld de,00036h		;6988	11 36 00	. 6 .
	add hl,de		;698b	19		.
	ld a,(ix+02dh)		;698c	dd 7e 2d	. ~ -
	ld (hl),a		;698f	77		w
	ret			;6990	c9		.
l6991h:
	ld a,(iy+02dh)		;6991	fd 7e 2d	. ~ -
	ld (ix+035h),a		;6994	dd 77 35	. w 5
	ld a,(ix+02dh)		;6997	dd 7e 2d	. ~ -
	ld (iy+036h),a		;699a	fd 77 36	. w 6
	ret			;699d	c9		.
	xor a			;699e	af		.
	ld (ix+02eh),a		;699f	dd 77 2e	. w .
	ret			;69a2	c9		.
sub_69a3h:
	push ix			;69a3	dd e5		. .
	pop iy			;69a5	fd e1		. .
	push af			;69a7	f5		.
	call sub_671ah		;69a8	cd 1a 67	. . g
	jp c,0469fh		;69ab	da 9f 46	. . F
	push bc			;69ae	c5		.
	call sub_6747h		;69af	cd 47 67	. G g
	pop bc			;69b2	c1		.
	ld (ix+02dh),c		;69b3	dd 71 2d	. q -
	pop af			;69b6	f1		.
	ld (ix+000h),a		;69b7	dd 77 00	. w .
	call l66f4h		;69ba	cd f4 66	. . f
	or a			;69bd	b7		.
	ret			;69be	c9		.
	call sub_69a3h		;69bf	cd a3 69	. . i
	ret c			;69c2	d8		.
	call sub_694dh		;69c3	cd 4d 69	. M i
	inc (iy+039h)		;69c6	fd 34 39	. 4 9
	set 7,(iy+034h)		;69c9	fd cb 34 fe	. . 4 .
	res 7,(ix+000h)		;69cd	dd cb 00 be	. . . .
	res 7,(ix+03ah)		;69d1	dd cb 3a be	. . : .
	or a			;69d5	b7		.
	ret			;69d6	c9		.
sub_69d7h:
	ld a,(0ca10h)		;69d7	3a 10 ca	: . .
	ld (0ce4bh),a		;69da	32 4b ce	2 K .
	inc (ix+03fh)		;69dd	dd 34 3f	. 4 ?
	ld a,(ix+016h)		;69e0	dd 7e 16	. ~ .
	rrca			;69e3	0f		.
	rrca			;69e4	0f		.
	and 03fh		;69e5	e6 3f		. ?
	ld (0ce4ah),a		;69e7	32 4a ce	2 J .
	xor a			;69ea	af		.
	ld hl,0ce48h		;69eb	21 48 ce	! H .
	ld (hl),a		;69ee	77		w
	inc hl			;69ef	23		#
	ld (hl),a		;69f0	77		w
	ret			;69f1	c9		.
	call sub_69d7h		;69f2	cd d7 69	. . i
	ld a,008h		;69f5	3e 08		> .
	ld (0ce4bh),a		;69f7	32 4b ce	2 K .
	ret			;69fa	c9		.
	ld hl,0ce48h		;69fb	21 48 ce	! H .
	ld a,001h		;69fe	3e 01		> .
	ld (hl),a		;6a00	77		w
l6a01h:
	inc hl			;6a01	23		#
	ld (hl),a		;6a02	77		w
	call 04bb0h		;6a03	cd b0 4b	. . K
	call sub_6a3ch		;6a06	cd 3c 6a	. < j
	call 04b99h		;6a09	cd 99 4b	. . K
	xor a			;6a0c	af		.
	ld de,00000h		;6a0d	11 00 00	. . .
	jp 04776h		;6a10	c3 76 47	. v G
	call 04bb0h		;6a13	cd b0 4b	. . K
	call sub_6a22h		;6a16	cd 22 6a	. " j
	jp 04b99h		;6a19	c3 99 4b	. . K
	ld hl,0ce48h		;6a1c	21 48 ce	! H .
	res 1,(hl)		;6a1f	cb 8e		. .
	ret			;6a21	c9		.
sub_6a22h:
	ld hl,0ce48h		;6a22	21 48 ce	! H .
	ld de,086c0h		;6a25	11 c0 86	. . .
	ld a,(hl)		;6a28	7e		~
	inc hl			;6a29	23		#
	cp (hl)			;6a2a	be		.
	jr nz,l6a34h		;6a2b	20 07		  .
	ld a,(0ca02h)		;6a2d	3a 02 ca	: . .
	and 003h		;6a30	e6 03		. .
	ret nz			;6a32	c0		.
	ld a,(hl)		;6a33	7e		~
l6a34h:
	ld (hl),a		;6a34	77		w
	rrca			;6a35	0f		.
	rrca			;6a36	0f		.
	jr c,l6a6ch		;6a37	38 33		8 3
	and a			;6a39	a7		.
	jr z,l6a3fh		;6a3a	28 03		( .
sub_6a3ch:
	ld de,086d2h		;6a3c	11 d2 86	. . .
l6a3fh:
	call sub_6a4fh		;6a3f	cd 4f 6a	. O j
	ld b,008h		;6a42	06 08		. .
l6a44h:
	push bc			;6a44	c5		.
	call sub_6a5ch		;6a45	cd 5c 6a	. \ j
	call 04776h		;6a48	cd 76 47	. v G
	pop bc			;6a4b	c1		.
	djnz l6a44h		;6a4c	10 f6		. .
	ret			;6a4e	c9		.
sub_6a4fh:
	ld a,(0ce4bh)		;6a4f	3a 4b ce	: K .
	add a,a			;6a52	87		.
	ld l,a			;6a53	6f		o
	ld h,000h		;6a54	26 00		& .
	add hl,de		;6a56	19		.
	ld e,(hl)		;6a57	5e		^
	inc hl			;6a58	23		#
	ld d,(hl)		;6a59	56		V
	ex de,hl		;6a5a	eb		.
	ret			;6a5b	c9		.
sub_6a5ch:
	ld d,(hl)		;6a5c	56		V
	inc hl			;6a5d	23		#
	ld b,(hl)		;6a5e	46		F
	inc hl			;6a5f	23		#
	ld a,b			;6a60	78		x
	and 00fh		;6a61	e6 0f		. .
	ld e,a			;6a63	5f		_
	ld a,b			;6a64	78		x
	rlca			;6a65	07		.
	rlca			;6a66	07		.
	rlca			;6a67	07		.
	rlca			;6a68	07		.
	and 00fh		;6a69	e6 0f		. .
	ret			;6a6b	c9		.
l6a6ch:
	call sub_6a4fh		;6a6c	cd 4f 6a	. O j
	ld b,008h		;6a6f	06 08		. .
l6a71h:
	push bc			;6a71	c5		.
	call sub_6a5ch		;6a72	cd 5c 6a	. \ j
	ld de,l6606h		;6a75	11 06 66	. . f
	call 04776h		;6a78	cd 76 47	. v G
	pop bc			;6a7b	c1		.
	djnz l6a71h		;6a7c	10 f3		. .
	ret			;6a7e	c9		.
sub_6a7fh:
	push ix			;6a7f	dd e5		. .
	pop hl			;6a81	e1		.
	ld de,00007h		;6a82	11 07 00	. . .
	add hl,de		;6a85	19		.
	ld d,h			;6a86	54		T
	ld e,l			;6a87	5d		]
	ld a,004h		;6a88	3e 04		> .
	add a,e			;6a8a	83		.
	ld e,a			;6a8b	5f		_
	call sub_6a8fh		;6a8c	cd 8f 6a	. . j
sub_6a8fh:
	ld a,(de)		;6a8f	1a		.
	add a,(hl)		;6a90	86		.
	ld (hl),a		;6a91	77		w
	inc l			;6a92	2c		,
	inc e			;6a93	1c		.
	ld a,(de)		;6a94	1a		.
	adc a,(hl)		;6a95	8e		.
	ld (hl),a		;6a96	77		w
	inc l			;6a97	2c		,
	inc e			;6a98	1c		.
	ret			;6a99	c9		.
sub_6a9ah:
	push ix			;6a9a	dd e5		. .
	pop hl			;6a9c	e1		.
	ld de,0000bh		;6a9d	11 0b 00	. . .
	add hl,de		;6aa0	19		.
	ld e,l			;6aa1	5d		]
	ld d,h			;6aa2	54		T
	ld a,004h		;6aa3	3e 04		> .
	add a,e			;6aa5	83		.
	ld e,a			;6aa6	5f		_
	call sub_6a8fh		;6aa7	cd 8f 6a	. . j
	jr sub_6a8fh		;6aaa	18 e3		. .
	ld a,(0ca10h)		;6aac	3a 10 ca	: . .
	ld h,000h		;6aaf	26 00		& .
	ld l,a			;6ab1	6f		o
	add hl,de		;6ab2	19		.
	ld a,(hl)		;6ab3	7e		~
	ld (ix+005h),a		;6ab4	dd 77 05	. w .
	ret			;6ab7	c9		.
	ld a,(ix+005h)		;6ab8	dd 7e 05	. ~ .
	call sub_6acch		;6abb	cd cc 6a	. . j
	ld (ix+005h),a		;6abe	dd 77 05	. w .
	ret			;6ac1	c9		.
	ld a,(ix+006h)		;6ac2	dd 7e 06	. ~ .
	call sub_6acch		;6ac5	cd cc 6a	. . j
	ld (ix+006h),a		;6ac8	dd 77 06	. w .
	ret			;6acb	c9		.
sub_6acch:
	inc a			;6acc	3c		<
	cp b			;6acd	b8		.
	jr nz,l6ad1h		;6ace	20 01		  .
	xor a			;6ad0	af		.
l6ad1h:
	ret			;6ad1	c9		.
	ld a,(ix+017h)		;6ad2	dd 7e 17	. ~ .
	dec a			;6ad5	3d		=
	ret z			;6ad6	c8		.
	ld (ix+017h),a		;6ad7	dd 77 17	. w .
	ret			;6ada	c9		.
	ld (ix+017h),a		;6adb	dd 77 17	. w .
	ret			;6ade	c9		.
	ld a,(ix+018h)		;6adf	dd 7e 18	. ~ .
	dec a			;6ae2	3d		=
	ret z			;6ae3	c8		.
	ld (ix+018h),a		;6ae4	dd 77 18	. w .
	ret			;6ae7	c9		.
	ld (ix+018h),a		;6ae8	dd 77 18	. w .
	ret			;6aeb	c9		.
	ld a,(ix+018h)		;6aec	dd 7e 18	. ~ .
	bit 7,a			;6aef	cb 7f		. .
	jr nz,l6af9h		;6af1	20 06		  .
	ld c,000h		;6af3	0e 00		. .
	inc a			;6af5	3c		<
	cp b			;6af6	b8		.
	jr nz,l6b02h		;6af7	20 09		  .
l6af9h:
	ld c,080h		;6af9	0e 80		. .
	and 07fh		;6afb	e6 7f		. .
	dec a			;6afd	3d		=
	jr nz,l6b02h		;6afe	20 02		  .
	ld c,000h		;6b00	0e 00		. .
l6b02h:
	or c			;6b02	b1		.
l6b03h:
	ld (ix+018h),a		;6b03	dd 77 18	. w .
	ret			;6b06	c9		.
	ld l,(ix+00bh)		;6b07	dd 6e 0b	. n .
	ld h,(ix+00ch)		;6b0a	dd 66 0c	. f .
	ld a,h			;6b0d	7c		|
	rlca			;6b0e	07		.
	call c,04612h		;6b0f	dc 12 46	. . F
	jp 04650h		;6b12	c3 50 46	. P F
	ld l,(ix+00dh)		;6b15	dd 6e 0d	. n .
	ld h,(ix+00eh)		;6b18	dd 66 0e	. f .
	ld a,h			;6b1b	7c		|
	rlca			;6b1c	07		.
	call c,04612h		;6b1d	dc 12 46	. . F
	jp 04650h		;6b20	c3 50 46	. P F
sub_6b23h:
	ld l,(ix+00fh)		;6b23	dd 6e 0f	. n .
	ld h,(ix+010h)		;6b26	dd 66 10	. f .
	call 04612h		;6b29	cd 12 46	. . F
	ld (ix+00fh),l		;6b2c	dd 75 0f	. u .
	ld (ix+010h),h		;6b2f	dd 74 10	. t .
	ret			;6b32	c9		.
sub_6b33h:
	ld l,(ix+011h)		;6b33	dd 6e 11	. n .
	ld h,(ix+012h)		;6b36	dd 66 12	. f .
	call 04612h		;6b39	cd 12 46	. . F
	ld (ix+011h),l		;6b3c	dd 75 11	. u .
	ld (ix+012h),h		;6b3f	dd 74 12	. t .
	ret			;6b42	c9		.
	ld l,(ix+00bh)		;6b43	dd 6e 0b	. n .
	ld h,(ix+00ch)		;6b46	dd 66 0c	. f .
	call 04612h		;6b49	cd 12 46	. . F
	ld (ix+00bh),l		;6b4c	dd 75 0b	. u .
	ld (ix+00ch),h		;6b4f	dd 74 0c	. t .
	ret			;6b52	c9		.
	ld l,(ix+00dh)		;6b53	dd 6e 0d	. n .
	ld h,(ix+00eh)		;6b56	dd 66 0e	. f .
	call 04612h		;6b59	cd 12 46	. . F
	ld (ix+00dh),l		;6b5c	dd 75 0d	. u .
	ld (ix+00eh),h		;6b5f	dd 74 0e	. t .
	ret			;6b62	c9		.
	ld (0ca26h),a		;6b63	32 26 ca	2 & .
	call sub_7270h		;6b66	cd 70 72	. p r
	jp l7240h		;6b69	c3 40 72	. @ r
	call sub_6b85h		;6b6c	cd 85 6b	. . k
	call l7240h		;6b6f	cd 40 72	. @ r
	ld (ix+00bh),l		;6b72	dd 75 0b	. u .
	ld (ix+00ch),h		;6b75	dd 74 0c	. t .
	ld (ix+00dh),e		;6b78	dd 73 0d	. s .
	ld (ix+00eh),d		;6b7b	dd 72 0e	. r .
	ret			;6b7e	c9		.
	call sub_6b85h		;6b7f	cd 85 6b	. . k
	jp l7240h		;6b82	c3 40 72	. @ r
sub_6b85h:
	ld (0ca26h),a		;6b85	32 26 ca	2 & .
	call sub_71d6h		;6b88	cd d6 71	. . q
	jp sub_7270h		;6b8b	c3 70 72	. p r
	call sub_71b8h		;6b8e	cd b8 71	. . q
	jp sub_7270h		;6b91	c3 70 72	. p r
	ld c,000h		;6b94	0e 00		. .
	ld a,(0ca4ah)		;6b96	3a 4a ca	: J .
	sub (ix+00ah)		;6b99	dd 96 0a	. . .
	jr nc,l6ba2h		;6b9c	30 04		0 .
	neg			;6b9e	ed 44		. D
	or 080h			;6ba0	f6 80		. .
l6ba2h:
	ld d,a			;6ba2	57		W
	ld a,(0ca48h)		;6ba3	3a 48 ca	: H .
	sub (ix+008h)		;6ba6	dd 96 08	. . .
	jr nc,l6bafh		;6ba9	30 04		0 .
	neg			;6bab	ed 44		. D
	or 080h			;6bad	f6 80		. .
l6bafh:
	ld e,a			;6baf	5f		_
	ld a,d			;6bb0	7a		z
	rlca			;6bb1	07		.
	jr nc,l6bbeh		;6bb2	30 0a		0 .
	ld c,000h		;6bb4	0e 00		. .
	ld a,e			;6bb6	7b		{
	rlca			;6bb7	07		.
	jr c,l6bc6h		;6bb8	38 0c		8 .
	ld c,006h		;6bba	0e 06		. .
	jr l6bc6h		;6bbc	18 08		. .
l6bbeh:
	ld c,002h		;6bbe	0e 02		. .
	ld a,e			;6bc0	7b		{
	rlca			;6bc1	07		.
	jr c,l6bc6h		;6bc2	38 02		8 .
	ld c,004h		;6bc4	0e 04		. .
l6bc6h:
	ld b,000h		;6bc6	06 00		. .
	ld a,d			;6bc8	7a		z
	rlca			;6bc9	07		.
	jr nc,l6bceh		;6bca	30 02		0 .
	ld b,080h		;6bcc	06 80		. .
l6bceh:
	srl a			;6bce	cb 3f		. ?
	ld d,a			;6bd0	57		W
	ld a,e			;6bd1	7b		{
	and 080h		;6bd2	e6 80		. .
	xor b			;6bd4	a8		.
	ld b,a			;6bd5	47		G
	ld a,e			;6bd6	7b		{
	and 07fh		;6bd7	e6 7f		. .
	sub d			;6bd9	92		.
	jr c,l6be1h		;6bda	38 05		8 .
	ld a,b			;6bdc	78		x
	and a			;6bdd	a7		.
	ret nz			;6bde	c0		.
	inc c			;6bdf	0c		.
	ret			;6be0	c9		.
l6be1h:
	ld a,b			;6be1	78		x
	and a			;6be2	a7		.
	ret z			;6be3	c8		.
	inc c			;6be4	0c		.
	ret			;6be5	c9		.
	call sub_6bfah		;6be6	cd fa 6b	. . k
	jr l6bf0h		;6be9	18 05		. .
	call sub_6bfdh		;6beb	cd fd 6b	. . k
	jr l6bf3h		;6bee	18 03		. .
l6bf0h:
	ld hl,00000h		;6bf0	21 00 00	! . .
l6bf3h:
	ld (ix+00bh),l		;6bf3	dd 75 0b	. u .
	ld (ix+00ch),h		;6bf6	dd 74 0c	. t .
	ret			;6bf9	c9		.
sub_6bfah:
	ld de,00000h		;6bfa	11 00 00	. . .
sub_6bfdh:
	ld (ix+00dh),e		;6bfd	dd 73 0d	. s .
	ld (ix+00eh),d		;6c00	dd 72 0e	. r .
	ret			;6c03	c9		.
	call sub_6c16h		;6c04	cd 16 6c	. . l
	jr l6c0ch		;6c07	18 03		. .
	ld hl,00000h		;6c09	21 00 00	! . .
l6c0ch:
	ld (ix+00fh),l		;6c0c	dd 75 0f	. u .
	ld (ix+010h),h		;6c0f	dd 74 10	. t .
	ret			;6c12	c9		.
	ld de,00000h		;6c13	11 00 00	. . .
sub_6c16h:
	ld (ix+011h),e		;6c16	dd 73 11	. s .
	ld (ix+012h),d		;6c19	dd 72 12	. r .
	ret			;6c1c	c9		.
	inc (ix+001h)		;6c1d	dd 34 01	. 4 .
	ret			;6c20	c9		.
sub_6c21h:
	bit 2,(ix+015h)		;6c21	dd cb 15 56	. . . V
	ret z			;6c25	c8		.
	call sub_6c3ah		;6c26	cd 3a 6c	. : l
	ld hl,(0ca12h)		;6c29	2a 12 ca	* . .
	ld e,(ix+007h)		;6c2c	dd 5e 07	. ^ .
	ld d,(ix+008h)		;6c2f	dd 56 08	. V .
	add hl,de		;6c32	19		.
	ld (ix+007h),l		;6c33	dd 75 07	. u .
	ld (ix+008h),h		;6c36	dd 74 08	. t .
	ret			;6c39	c9		.
sub_6c3ah:
	ld hl,(0ca14h)		;6c3a	2a 14 ca	* . .
	ld e,(ix+009h)		;6c3d	dd 5e 09	. ^ .
	ld d,(ix+00ah)		;6c40	dd 56 0a	. V .
	add hl,de		;6c43	19		.
	ld (ix+009h),l		;6c44	dd 75 09	. u .
	ld (ix+00ah),h		;6c47	dd 74 0a	. t .
	ret			;6c4a	c9		.
	push ix			;6c4b	dd e5		. .
	push iy			;6c4d	fd e5		. .
	call 04c2ah		;6c4f	cd 2a 4c	. * L
	add hl,bc		;6c52	09		.
	ld a,(bc)		;6c53	0a		.
	dec bc			;6c54	0b		.
	add hl,bc		;6c55	09		.
	ld l,l			;6c56	6d		m
	pop iy			;6c57	fd e1		. .
	pop ix			;6c59	dd e1		. .
	ret			;6c5b	c9		.
	push ix			;6c5c	dd e5		. .
	push iy			;6c5e	fd e5		. .
	call 04c2ah		;6c60	cd 2a 4c	. * L
	add hl,bc		;6c63	09		.
	ld a,(bc)		;6c64	0a		.
	dec bc			;6c65	0b		.
l6c66h:
	inc c			;6c66	0c		.
	ld l,l			;6c67	6d		m
	pop iy			;6c68	fd e1		. .
	pop ix			;6c6a	dd e1		. .
	ret			;6c6c	c9		.
	ld (0c0dch),hl		;6c6d	22 dc c0	" . .
	ld (0c0deh),de		;6c70	ed 53 de c0	. S . .
	ret			;6c74	c9		.
	add a,(ix+008h)		;6c75	dd 86 08	. . .
	neg			;6c78	ed 44		. D
	add a,a			;6c7a	87		.
	add a,a			;6c7b	87		.
	add a,a			;6c7c	87		.
	and 0f8h		;6c7d	e6 f8		. .
	ld d,a			;6c7f	57		W
	ld a,(ix+009h)		;6c80	dd 7e 09	. ~ .
	and 0e0h		;6c83	e6 e0		. .
	neg			;6c85	ed 44		. D
	and 0e0h		;6c87	e6 e0		. .
	ld (0ca1ch),a		;6c89	32 1c ca	2 . .
	rlca			;6c8c	07		.
	rlca			;6c8d	07		.
	rlca			;6c8e	07		.
	ld (0c0bbh),a		;6c8f	32 bb c0	2 . .
	ld a,(ix+007h)		;6c92	dd 7e 07	. ~ .
	and 0e0h		;6c95	e6 e0		. .
	jr z,l6c9fh		;6c97	28 06		( .
	ex af,af'		;6c99	08		.
	ld a,d			;6c9a	7a		z
	sub 008h		;6c9b	d6 08		. .
	ld d,a			;6c9d	57		W
	ex af,af'		;6c9e	08		.
l6c9fh:
	neg			;6c9f	ed 44		. D
	and 0e0h		;6ca1	e6 e0		. .
	ld (0ca1ah),a		;6ca3	32 1a ca	2 . .
	rlca			;6ca6	07		.
	rlca			;6ca7	07		.
	rlca			;6ca8	07		.
	or d			;6ca9	b2		.
	ld (0c0d2h),a		;6caa	32 d2 c0	2 . .
	ret			;6cad	c9		.
	call sub_6cb5h		;6cae	cd b5 6c	. . l
	call sub_6a9ah		;6cb1	cd 9a 6a	. . j
	ret			;6cb4	c9		.
sub_6cb5h:
	push hl			;6cb5	e5		.
	push de			;6cb6	d5		.
	pop bc			;6cb7	c1		.
	call sub_6ccdh		;6cb8	cd cd 6c	. . l
	pop bc			;6cbb	c1		.
	ld h,(ix+00eh)		;6cbc	dd 66 0e	. f .
	ld l,(ix+00dh)		;6cbf	dd 6e 0d	. n .
	call sub_6cdeh		;6cc2	cd de 6c	. . l
	or a			;6cc5	b7		.
	sbc hl,bc		;6cc6	ed 42		. B
	ret c			;6cc8	d8		.
	call sub_6b33h		;6cc9	cd 33 6b	. 3 k
	ret			;6ccc	c9		.
sub_6ccdh:
	ld h,(ix+00ch)		;6ccd	dd 66 0c	. f .
	ld l,(ix+00bh)		;6cd0	dd 6e 0b	. n .
	call sub_6cdeh		;6cd3	cd de 6c	. . l
	or a			;6cd6	b7		.
	sbc hl,bc		;6cd7	ed 42		. B
	ret c			;6cd9	d8		.
	call sub_6b23h		;6cda	cd 23 6b	. # k
	ret			;6cdd	c9		.
sub_6cdeh:
	bit 7,h			;6cde	cb 7c		. |
	ret z			;6ce0	c8		.
	ld a,h			;6ce1	7c		|
	cpl			;6ce2	2f		/
	ld h,a			;6ce3	67		g
	ld a,l			;6ce4	7d		}
	cpl			;6ce5	2f		/
	ld l,a			;6ce6	6f		o
	inc hl			;6ce7	23		#
	ret			;6ce8	c9		.
	ld (ix+02ah),0ffh	;6ce9	dd 36 2a ff	. 6 * .
	ret			;6ced	c9		.
	push af			;6cee	f5		.
	call sub_6d2ch		;6cef	cd 2c 6d	. , m
	pop af			;6cf2	f1		.
	jr nz,l6d0eh		;6cf3	20 19		  .
	ld a,(ix+00ah)		;6cf5	dd 7e 0a	. ~ .
	ld (ix+028h),a		;6cf8	dd 77 28	. w (
	ld a,(ix+009h)		;6cfb	dd 7e 09	. ~ .
	ld (ix+029h),a		;6cfe	dd 77 29	. w )
	ld a,(ix+008h)		;6d01	dd 7e 08	. ~ .
	ld (ix+02ah),a		;6d04	dd 77 2a	. w *
	ld a,(ix+007h)		;6d07	dd 7e 07	. ~ .
	ld (ix+02bh),a		;6d0a	dd 77 2b	. w +
	ret			;6d0d	c9		.
l6d0eh:
	ld a,(ix+02ah)		;6d0e	dd 7e 2a	. ~ *
	inc a			;6d11	3c		<
	ret z			;6d12	c8		.
	ld a,(ix+028h)		;6d13	dd 7e 28	. ~ (
	ld (ix+00ah),a		;6d16	dd 77 0a	. w .
	ld a,(ix+029h)		;6d19	dd 7e 29	. ~ )
	ld (ix+009h),a		;6d1c	dd 77 09	. w .
	ld a,(ix+02ah)		;6d1f	dd 7e 2a	. ~ *
	ld (ix+008h),a		;6d22	dd 77 08	. w .
	ld a,(ix+02bh)		;6d25	dd 7e 2b	. ~ +
	ld (ix+007h),a		;6d28	dd 77 07	. w .
	ret			;6d2b	c9		.
sub_6d2ch:
	ld de,(0ca14h)		;6d2c	ed 5b 14 ca	. [ . .
	ld h,(ix+028h)		;6d30	dd 66 28	. f (
	ld l,(ix+029h)		;6d33	dd 6e 29	. n )
	add hl,de		;6d36	19		.
	ld (ix+028h),h		;6d37	dd 74 28	. t (
	ld (ix+029h),l		;6d3a	dd 75 29	. u )
	ld de,(0ca12h)		;6d3d	ed 5b 12 ca	. [ . .
	ld h,(ix+02ah)		;6d41	dd 66 2a	. f *
	ld l,(ix+02bh)		;6d44	dd 6e 2b	. n +
	add hl,de		;6d47	19		.
	ld (ix+02ah),h		;6d48	dd 74 2a	. t *
	ld (ix+02bh),l		;6d4b	dd 75 2b	. u +
	ret			;6d4e	c9		.
	push hl			;6d4f	e5		.
	ld b,d			;6d50	42		B
	ld c,e			;6d51	4b		K
	ld h,(ix+00eh)		;6d52	dd 66 0e	. f .
	ld l,(ix+00dh)		;6d55	dd 6e 0d	. n .
	ld d,h			;6d58	54		T
	ld e,l			;6d59	5d		]
	add hl,hl		;6d5a	29		)
	add hl,hl		;6d5b	29		)
	add hl,hl		;6d5c	29		)
	or a			;6d5d	b7		.
	sbc hl,de		;6d5e	ed 52		. R
	add hl,bc		;6d60	09		.
	sra h			;6d61	cb 2c		. ,
	rr l			;6d63	cb 1d		. .
	sra h			;6d65	cb 2c		. ,
	rr l			;6d67	cb 1d		. .
	sra h			;6d69	cb 2c		. ,
	rr l			;6d6b	cb 1d		. .
	ld (ix+00eh),h		;6d6d	dd 74 0e	. t .
	ld (ix+00dh),l		;6d70	dd 75 0d	. u .
	pop bc			;6d73	c1		.
	ld h,(ix+00ch)		;6d74	dd 66 0c	. f .
	ld l,(ix+00bh)		;6d77	dd 6e 0b	. n .
	ld d,h			;6d7a	54		T
	ld e,l			;6d7b	5d		]
	add hl,hl		;6d7c	29		)
	add hl,hl		;6d7d	29		)
	add hl,hl		;6d7e	29		)
	or a			;6d7f	b7		.
	sbc hl,de		;6d80	ed 52		. R
	add hl,bc		;6d82	09		.
	sra h			;6d83	cb 2c		. ,
	rr l			;6d85	cb 1d		. .
	sra h			;6d87	cb 2c		. ,
	rr l			;6d89	cb 1d		. .
	sra h			;6d8b	cb 2c		. ,
	rr l			;6d8d	cb 1d		. .
	ld (ix+00ch),h		;6d8f	dd 74 0c	. t .
	ld (ix+00bh),l		;6d92	dd 75 0b	. u .
	ret			;6d95	c9		.
	push hl			;6d96	e5		.
	ld b,d			;6d97	42		B
	ld c,e			;6d98	4b		K
	ld h,(ix+00eh)		;6d99	dd 66 0e	. f .
	ld l,(ix+00dh)		;6d9c	dd 6e 0d	. n .
	ld d,h			;6d9f	54		T
	ld e,l			;6da0	5d		]
	add hl,hl		;6da1	29		)
	add hl,hl		;6da2	29		)
	or a			;6da3	b7		.
	sbc hl,de		;6da4	ed 52		. R
	add hl,bc		;6da6	09		.
	sra h			;6da7	cb 2c		. ,
	rr l			;6da9	cb 1d		. .
	sra h			;6dab	cb 2c		. ,
	rr l			;6dad	cb 1d		. .
	ld (ix+00eh),h		;6daf	dd 74 0e	. t .
	ld (ix+00dh),l		;6db2	dd 75 0d	. u .
	pop bc			;6db5	c1		.
	ld h,(ix+00ch)		;6db6	dd 66 0c	. f .
	ld l,(ix+00bh)		;6db9	dd 6e 0b	. n .
	ld d,h			;6dbc	54		T
	ld e,l			;6dbd	5d		]
	add hl,hl		;6dbe	29		)
	add hl,hl		;6dbf	29		)
	or a			;6dc0	b7		.
	sbc hl,de		;6dc1	ed 52		. R
	add hl,bc		;6dc3	09		.
	sra h			;6dc4	cb 2c		. ,
	rr l			;6dc6	cb 1d		. .
	sra h			;6dc8	cb 2c		. ,
	rr l			;6dca	cb 1d		. .
	ld (ix+00ch),h		;6dcc	dd 74 0c	. t .
	ld (ix+00bh),l		;6dcf	dd 75 0b	. u .
	ret			;6dd2	c9		.
	call sub_6e2ch		;6dd3	cd 2c 6e	. , n
	ret c			;6dd6	d8		.
	ret z			;6dd7	c8		.
	call sub_6edah		;6dd8	cd da 6e	. . n
	call nc,l6e98h		;6ddb	d4 98 6e	. . n
	or a			;6dde	b7		.
	jr l6dech		;6ddf	18 0b		. .
	call sub_6e2ch		;6de1	cd 2c 6e	. , n
	ret c			;6de4	d8		.
	ret z			;6de5	c8		.
	call sub_6f0dh		;6de6	cd 0d 6f	. . o
	jp c,l6e98h		;6de9	da 98 6e	. . n
l6dech:
	call sub_7c44h		;6dec	cd 44 7c	. D |
	call c,sub_7cc3h	;6def	dc c3 7c	. . |
	jp l7747h		;6df2	c3 47 77	. G w
	call sub_6e2ch		;6df5	cd 2c 6e	. , n
	ret c			;6df8	d8		.
	ret z			;6df9	c8		.
	call sub_6eedh		;6dfa	cd ed 6e	. . n
	jp c,l6e98h		;6dfd	da 98 6e	. . n
	call sub_7c44h		;6e00	cd 44 7c	. D |
	call c,sub_7cc3h	;6e03	dc c3 7c	. . |
	jp l7747h		;6e06	c3 47 77	. G w
	call sub_6e2ch		;6e09	cd 2c 6e	. , n
	ret c			;6e0c	d8		.
	ret z			;6e0d	c8		.
	call sub_6effh		;6e0e	cd ff 6e	. . n
	jp c,l6e98h		;6e11	da 98 6e	. . n
	call sub_7c44h		;6e14	cd 44 7c	. D |
	call c,sub_7cc3h	;6e17	dc c3 7c	. . |
	jp l7747h		;6e1a	c3 47 77	. G w
	call sub_6f1fh		;6e1d	cd 1f 6f	. . o
	jp c,l6e98h		;6e20	da 98 6e	. . n
	call sub_7c44h		;6e23	cd 44 7c	. D |
	call c,sub_7cc3h	;6e26	dc c3 7c	. . |
	jp l7747h		;6e29	c3 47 77	. G w
sub_6e2ch:
	ld a,(ix+000h)		;6e2c	dd 7e 00	. ~ .
	ld b,a			;6e2f	47		G
	and a			;6e30	a7		.
	ret z			;6e31	c8		.
	rla			;6e32	17		.
	ld a,b			;6e33	78		x
	ret			;6e34	c9		.
	call sub_6f47h		;6e35	cd 47 6f	. G o
	jp c,l6e98h		;6e38	da 98 6e	. . n
	call sub_7c44h		;6e3b	cd 44 7c	. D |
	call c,sub_7cc3h	;6e3e	dc c3 7c	. . |
	jp l7747h		;6e41	c3 47 77	. G w
	call sub_7c63h		;6e44	cd 63 7c	. c |
	call c,sub_6e50h	;6e47	dc 50 6e	. P n
	call c,sub_7cc3h	;6e4a	dc c3 7c	. . |
	jp l7747h		;6e4d	c3 47 77	. G w
sub_6e50h:
	ex af,af'		;6e50	08		.
	ld a,001h		;6e51	3e 01		> .
	ld (0ce52h),a		;6e53	32 52 ce	2 R .
	ld (0ce76h),a		;6e56	32 76 ce	2 v .
	ld a,(0ce6ah)		;6e59	3a 6a ce	: j .
	add a,(ix+008h)		;6e5c	dd 86 08	. . .
	ld (ix+008h),a		;6e5f	dd 77 08	. w .
	ld a,(0ce69h)		;6e62	3a 69 ce	: i .
	add a,(ix+00ah)		;6e65	dd 86 0a	. . .
	ld (ix+00ah),a		;6e68	dd 77 0a	. w .
	ex af,af'		;6e6b	08		.
	ret			;6e6c	c9		.
	ret			;6e6d	c9		.
	call sub_6eedh		;6e6e	cd ed 6e	. . n
	jp c,l6each		;6e71	da ac 6e	. . n
	ld a,(ix+004h)		;6e74	dd 7e 04	. ~ .
	or a			;6e77	b7		.
	jp nz,l6each		;6e78	c2 ac 6e	. . n
	call sub_7c27h		;6e7b	cd 27 7c	. ' |
	jp l7747h		;6e7e	c3 47 77	. G w
	call sub_6eedh		;6e81	cd ed 6e	. . n
	jp c,l6each		;6e84	da ac 6e	. . n
	ld a,(ix+004h)		;6e87	dd 7e 04	. ~ .
	or a			;6e8a	b7		.
	jp nz,l6each		;6e8b	c2 ac 6e	. . n
	jp l7747h		;6e8e	c3 47 77	. G w
	ld a,001h		;6e91	3e 01		> .
	ld (0ce4fh),a		;6e93	32 4f ce	2 O .
	ret			;6e96	c9		.
	ret			;6e97	c9		.
l6e98h:
	call sub_7d3eh		;6e98	cd 3e 7d	. > }
	ld hl,0ce44h		;6e9b	21 44 ce	! D .
	inc (hl)		;6e9e	34		4
	call sub_6eb4h		;6e9f	cd b4 6e	. . n
	xor a			;6ea2	af		.
	ld (ix+034h),a		;6ea3	dd 77 34	. w 4
	ld (ix+02dh),a		;6ea6	dd 77 2d	. w -
	ld (ix+038h),a		;6ea9	dd 77 38	. w 8
l6each:
	xor a			;6eac	af		.
	ld (ix+000h),a		;6ead	dd 77 00	. w .
	ld (ix+015h),a		;6eb0	dd 77 15	. w .
	ret			;6eb3	c9		.
sub_6eb4h:
	xor a			;6eb4	af		.
	ld (ix+019h),a		;6eb5	dd 77 19	. w .
	ld (ix+01ah),a		;6eb8	dd 77 1a	. w .
	ld (ix+01bh),a		;6ebb	dd 77 1b	. w .
	ld (ix+01ch),a		;6ebe	dd 77 1c	. w .
	ld (ix+01dh),a		;6ec1	dd 77 1d	. w .
	ld (ix+01eh),a		;6ec4	dd 77 1e	. w .
	ld (ix+01fh),a		;6ec7	dd 77 1f	. w .
	ret			;6eca	c9		.
sub_6ecbh:
	ld a,(ix+015h)		;6ecb	dd 7e 15	. ~ .
	ld b,a			;6ece	47		G
	rlca			;6ecf	07		.
	rlca			;6ed0	07		.
	rlca			;6ed1	07		.
	and 003h		;6ed2	e6 03		. .
	or b			;6ed4	b0		.
	ld (ix+015h),a		;6ed5	dd 77 15	. w .
	and a			;6ed8	a7		.
	ret			;6ed9	c9		.
sub_6edah:
	call sub_6ecbh		;6eda	cd cb 6e	. . n
	ld a,(ix+008h)		;6edd	dd 7e 08	. ~ .
	add a,008h		;6ee0	c6 08		. .
	sub 028h		;6ee2	d6 28		. (
	ret nc			;6ee4	d0		.
	ld a,(ix+00ah)		;6ee5	dd 7e 0a	. ~ .
	add a,00ah		;6ee8	c6 0a		. .
	sub 034h		;6eea	d6 34		. 4
	ret			;6eec	c9		.
sub_6eedh:
	call sub_6ecbh		;6eed	cd cb 6e	. . n
	ret z			;6ef0	c8		.
	ld de,018fch		;6ef1	11 fc 18	. . .
	ld hl,022feh		;6ef4	21 fe 22	! . "
	ld a,(ix+008h)		;6ef7	dd 7e 08	. ~ .
	ld b,(ix+00ah)		;6efa	dd 46 0a	. F .
	jr l6f2dh		;6efd	18 2e		. .
sub_6effh:
	ld de,01bf0h		;6eff	11 f0 1b	. . .
	ld hl,022feh		;6f02	21 fe 22	! . "
	ld a,(ix+008h)		;6f05	dd 7e 08	. ~ .
	ld b,(ix+00ah)		;6f08	dd 46 0a	. F .
	jr l6f2dh		;6f0b	18 20		.  
sub_6f0dh:
	call sub_6ecbh		;6f0d	cd cb 6e	. . n
	ret z			;6f10	c8		.
	ld de,01afeh		;6f11	11 fe 1a	. . .
	ld hl,022feh		;6f14	21 fe 22	! . "
	ld a,(ix+008h)		;6f17	dd 7e 08	. ~ .
	ld b,(ix+00ah)		;6f1a	dd 46 0a	. F .
	jr l6f2dh		;6f1d	18 0e		. .
sub_6f1fh:
	ld de,01af8h		;6f1f	11 f8 1a	. . .
	ld hl,022f0h		;6f22	21 f0 22	! . "
	ld a,(ix+008h)		;6f25	dd 7e 08	. ~ .
	ld b,(ix+00ah)		;6f28	dd 46 0a	. F .
	jr l6f2dh		;6f2b	18 00		. .
l6f2dh:
	bit 7,a			;6f2d	cb 7f		. .
	jr nz,l6f36h		;6f2f	20 05		  .
	cp d			;6f31	ba		.
	jr nc,l6f45h		;6f32	30 11		0 .
	jr l6f39h		;6f34	18 03		. .
l6f36h:
	cp e			;6f36	bb		.
	jr c,l6f45h		;6f37	38 0c		8 .
l6f39h:
	ld a,b			;6f39	78		x
	bit 7,a			;6f3a	cb 7f		. .
	jr nz,l6f43h		;6f3c	20 05		  .
	cp h			;6f3e	bc		.
	jr nc,l6f45h		;6f3f	30 04		0 .
	or a			;6f41	b7		.
	ret			;6f42	c9		.
l6f43h:
	cp l			;6f43	bd		.
	ret nc			;6f44	d0		.
l6f45h:
	scf			;6f45	37		7
	ret			;6f46	c9		.
sub_6f47h:
	ld de,02cf6h		;6f47	11 f6 2c	. . ,
	ld hl,02cf6h		;6f4a	21 f6 2c	! . ,
	ld a,(ix+008h)		;6f4d	dd 7e 08	. ~ .
	ld b,(ix+00ah)		;6f50	dd 46 0a	. F .
	jr l6f2dh		;6f53	18 d8		. .
	push ix			;6f55	dd e5		. .
	push de			;6f57	d5		.
	call sub_671ah		;6f58	cd 1a 67	. . g
	jr c,l6f88h		;6f5b	38 2b		8 +
	call sub_6747h		;6f5d	cd 47 67	. G g
	ld (ix+000h),003h	;6f60	dd 36 00 03	. 6 . .
	call l66f4h		;6f64	cd f4 66	. . f
	pop de			;6f67	d1		.
	ld (ix+00ah),d		;6f68	dd 72 0a	. r .
	ld (ix+008h),e		;6f6b	dd 73 08	. s .
	ld bc,(0ca31h)		;6f6e	ed 4b 31 ca	. K 1 .
	ld a,b			;6f72	78		x
	rrca			;6f73	0f		.
	rrca			;6f74	0f		.
	rrca			;6f75	0f		.
	neg			;6f76	ed 44		. D
	ld (ix+009h),a		;6f78	dd 77 09	. w .
	ld a,c			;6f7b	79		y
	rrca			;6f7c	0f		.
	rrca			;6f7d	0f		.
	rrca			;6f7e	0f		.
	neg			;6f7f	ed 44		. D
	ld (ix+007h),a		;6f81	dd 77 07	. w .
	or a			;6f84	b7		.
	pop ix			;6f85	dd e1		. .
	ret			;6f87	c9		.
l6f88h:
	pop bc			;6f88	c1		.
	pop ix			;6f89	dd e1		. .
	ret			;6f8b	c9		.
	ld ix,0cac0h		;6f8c	dd 21 c0 ca	. ! . .
	ld a,(ix+000h)		;6f90	dd 7e 00	. ~ .
	or a			;6f93	b7		.
	jr z,l6fa2h		;6f94	28 0c		( .
	ld ix,0cae0h		;6f96	dd 21 e0 ca	. ! . .
	ld a,(ix+000h)		;6f9a	dd 7e 00	. ~ .
	or a			;6f9d	b7		.
	jr z,l6fa2h		;6f9e	28 02		( .
	scf			;6fa0	37		7
	ret			;6fa1	c9		.
l6fa2h:
	push de			;6fa2	d5		.
	push hl			;6fa3	e5		.
	push ix			;6fa4	dd e5		. .
	pop hl			;6fa6	e1		.
	ld bc,0001fh		;6fa7	01 1f 00	. . .
	call 04648h		;6faa	cd 48 46	. H F
	pop hl			;6fad	e1		.
	pop de			;6fae	d1		.
	ld (ix+015h),091h	;6faf	dd 36 15 91	. 6 . .
	ld (ix+013h),003h	;6fb3	dd 36 13 03	. 6 . .
	ld (ix+014h),003h	;6fb7	dd 36 14 03	. 6 . .
	ld (ix+000h),002h	;6fbb	dd 36 00 02	. 6 . .
	ld (ix+00ah),d		;6fbf	dd 72 0a	. r .
	ld (ix+009h),e		;6fc2	dd 73 09	. s .
	ld (ix+008h),h		;6fc5	dd 74 08	. t .
	ld (ix+007h),l		;6fc8	dd 75 07	. u .
	or a			;6fcb	b7		.
	ret			;6fcc	c9		.
	call sub_7024h		;6fcd	cd 24 70	. $ p
	call sub_6fe1h		;6fd0	cd e1 6f	. . o
	ld (ix+003h),a		;6fd3	dd 77 03	. w .
	ld hl,l7049h		;6fd6	21 49 70	! I p
	call 04600h		;6fd9	cd 00 46	. . F
	ld a,(hl)		;6fdc	7e		~
	ld (ix+006h),a		;6fdd	dd 77 06	. w .
	ret			;6fe0	c9		.
sub_6fe1h:
	push af			;6fe1	f5		.
	call sub_6ff7h		;6fe2	cd f7 6f	. . o
	or a			;6fe5	b7		.
	jr nz,l6feah		;6fe6	20 02		  .
	pop af			;6fe8	f1		.
	ret			;6fe9	c9		.
l6feah:
	dec a			;6fea	3d		=
	jr nz,l6ff2h		;6feb	20 05		  .
	ld a,00eh		;6fed	3e 0e		> .
	jp 0469fh		;6fef	c3 9f 46	. . F
l6ff2h:
	ld a,00ch		;6ff2	3e 0c		> .
	jp 0469fh		;6ff4	c3 9f 46	. . F
sub_6ff7h:
	cp 003h			;6ff7	fe 03		. .
	jr z,l7005h		;6ff9	28 0a		( .
	cp 00ah			;6ffb	fe 0a		. .
	jr z,l700dh		;6ffd	28 0e		( .
	cp 007h			;6fff	fe 07		. .
	jr z,l7017h		;7001	28 14		( .
l7003h:
	xor a			;7003	af		.
	ret			;7004	c9		.
l7005h:
	ld a,(0cb48h)		;7005	3a 48 cb	: H .
	or a			;7008	b7		.
	ret z			;7009	c8		.
	ld a,001h		;700a	3e 01		> .
	ret			;700c	c9		.
l700dh:
	ld a,(0cb41h)		;700d	3a 41 cb	: A .
	cp 00ah			;7010	fe 0a		. .
	jr nz,l7003h		;7012	20 ef		  .
	ld a,002h		;7014	3e 02		> .
	ret			;7016	c9		.
l7017h:
	ld a,(0cb50h)		;7017	3a 50 cb	: P .
	or a			;701a	b7		.
	ret z			;701b	c8		.
	ld a,(0cb58h)		;701c	3a 58 cb	: X .
	or a			;701f	b7		.
	ret z			;7020	c8		.
	ld a,001h		;7021	3e 01		> .
	ret			;7023	c9		.
sub_7024h:
	or a			;7024	b7		.
	ld a,(0cc01h)		;7025	3a 01 cc	: . .
	ld hl,l7042h		;7028	21 42 70	! B p
	ld bc,00008h		;702b	01 08 00	. . .
	cpir			;702e	ed b1		. .
	ld a,002h		;7030	3e 02		> .
	jr nz,l7035h		;7032	20 01		  .
	ld a,(hl)		;7034	7e		~
l7035h:
	ld (0cc01h),a		;7035	32 01 cc	2 . .
	ret			;7038	c9		.
	dec a			;7039	3d		=
	ld hl,l7042h		;703a	21 42 70	! B p
	call 04600h		;703d	cd 00 46	. . F
	ld a,(hl)		;7040	7e		~
	ret			;7041	c9		.
l7042h:
	ld (bc),a		;7042	02		.
	ld c,003h		;7043	0e 03		. .
	rlca			;7045	07		.
	ld a,(bc)		;7046	0a		.
	dec bc			;7047	0b		.
	ld (bc),a		;7048	02		.
l7049h:
	rst 38h			;7049	ff		.
	rst 38h			;704a	ff		.
	nop			;704b	00		.
	ld (bc),a		;704c	02		.
	rst 38h			;704d	ff		.
	rst 38h			;704e	ff		.
	rst 38h			;704f	ff		.
	inc bc			;7050	03		.
	rst 38h			;7051	ff		.
	rst 38h			;7052	ff		.
	ld bc,00804h		;7053	01 04 08	. . .
	ld b,007h		;7056	06 07		. .
	ld hl,0ce80h		;7058	21 80 ce	! . .
	ld b,014h		;705b	06 14		. .
l705dh:
	ld a,(hl)		;705d	7e		~
	and a			;705e	a7		.
	jr z,l7081h		;705f	28 20		(  
	bit 7,a			;7061	cb 7f		. .
	jr nz,l7081h		;7063	20 1c		  .
	push bc			;7065	c5		.
	push hl			;7066	e5		.
	ld hl,l70b7h		;7067	21 b7 70	! . p
	ld bc,00023h		;706a	01 23 00	. # .
	cpir			;706d	ed b1		. .
	pop hl			;706f	e1		.
	pop bc			;7070	c1		.
	jr z,l7081h		;7071	28 0e		( .
	push hl			;7073	e5		.
	ld de,00004h		;7074	11 04 00	. . .
	add hl,de		;7077	19		.
	ld (hl),001h		;7078	36 01		6 .
	ld de,00012h		;707a	11 12 00	. . .
	add hl,de		;707d	19		.
	ld (hl),000h		;707e	36 00		6 .
	pop hl			;7080	e1		.
l7081h:
	ld de,00040h		;7081	11 40 00	. @ .
	add hl,de		;7084	19		.
	djnz l705dh		;7085	10 d6		. .
	call sub_708bh		;7087	cd 8b 70	. . p
	ret			;708a	c9		.
sub_708bh:
	ld hl,0ce80h		;708b	21 80 ce	! . .
	ld b,014h		;708e	06 14		. .
l7090h:
	ld a,(hl)		;7090	7e		~
	push bc			;7091	c5		.
	push hl			;7092	e5		.
	ld hl,l70d2h		;7093	21 d2 70	! . p
	ld bc,00008h		;7096	01 08 00	. . .
	cpir			;7099	ed b1		. .
	jr z,l70a6h		;709b	28 09		( .
	pop hl			;709d	e1		.
	pop bc			;709e	c1		.
	ld de,00040h		;709f	11 40 00	. @ .
	add hl,de		;70a2	19		.
	djnz l7090h		;70a3	10 eb		. .
	ret			;70a5	c9		.
l70a6h:
	pop hl			;70a6	e1		.
	pop bc			;70a7	c1		.
	ld de,00016h		;70a8	11 16 00	. . .
	add hl,de		;70ab	19		.
	ld a,(0ce4ah)		;70ac	3a 4a ce	: J .
	dec a			;70af	3d		=
	ld (hl),a		;70b0	77		w
	ld hl,0ce48h		;70b1	21 48 ce	! H .
	ld (hl),001h		;70b4	36 01		6 .
	ret			;70b6	c9		.
l70b7h:
	ld h,l			;70b7	65		e
	ld (bc),a		;70b8	02		.
	inc bc			;70b9	03		.
	ld c,024h		;70ba	0e 24		. $
	ld hl,(l7235h)		;70bc	2a 35 72	* 5 r
	ld (hl),l		;70bf	75		u
	add hl,sp		;70c0	39		9
	ld c,b			;70c1	48		H
	ld c,l			;70c2	4d		M
	ld l,c			;70c3	69		i
	ld l,d			;70c4	6a		j
	ld l,e			;70c5	6b		k
	ld d,d			;70c6	52		R
	ld d,e			;70c7	53		S
	ld d,h			;70c8	54		T
	dec sp			;70c9	3b		;
	inc a			;70ca	3c		<
	dec a			;70cb	3d		=
	ld a,h			;70cc	7c		|
	ccf			;70cd	3f		?
	ld e,a			;70ce	5f		_
	ld a,b			;70cf	78		x
	ld a,c			;70d0	79		y
	ld d,(hl)		;70d1	56		V
l70d2h:
	ld a,03eh		;70d2	3e 3e		> >
	ld h,h			;70d4	64		d
	ld (hl),c		;70d5	71		q
	ld a,d			;70d6	7a		z
	inc d			;70d7	14		.
	ld (hl),a		;70d8	77		w
	ld a,e			;70d9	7b		{
	push af			;70da	f5		.
	call sub_7207h		;70db	cd 07 72	. . r
	pop de			;70de	d1		.
	scf			;70df	37		7
	ret nz			;70e0	c0		.
	push de			;70e1	d5		.
	call sub_721dh		;70e2	cd 1d 72	. . r
	pop de			;70e5	d1		.
	ld (hl),d		;70e6	72		r
	push hl			;70e7	e5		.
	pop ix			;70e8	dd e1		. .
	call sub_66f7h		;70ea	cd f7 66	. . f
	or a			;70ed	b7		.
	ret			;70ee	c9		.
sub_70efh:
	ld a,(ix+013h)		;70ef	dd 7e 13	. ~ .
	rrca			;70f2	0f		.
	and 03fh		;70f3	e6 3f		. ?
	add a,(ix+008h)		;70f5	dd 86 08	. . .
	ld h,a			;70f8	67		g
	ld l,(ix+007h)		;70f9	dd 6e 07	. n .
	ld a,(ix+014h)		;70fc	dd 7e 14	. ~ .
	rrca			;70ff	0f		.
	and 03fh		;7100	e6 3f		. ?
	add a,(ix+00ah)		;7102	dd 86 0a	. . .
	ld d,a			;7105	57		W
	ld e,(ix+009h)		;7106	dd 5e 09	. ^ .
	ld bc,00c00h		;7109	01 00 0c	. . .
	call sub_7725h		;710c	cd 25 77	. % w
	ret			;710f	c9		.
	call sub_7197h		;7110	cd 97 71	. . q
	ld iy,0ca40h		;7113	fd 21 40 ca	. ! @ .
	ld b,(iy+00ah)		;7117	fd 46 0a	. F .
	ld c,(iy+008h)		;711a	fd 4e 08	. N .
	push bc			;711d	c5		.
	push iy			;711e	fd e5		. .
	call 04678h		;7120	cd 78 46	. x F
	and 007h		;7123	e6 07		. .
	sub 004h		;7125	d6 04		. .
	add a,b			;7127	80		.
	ld (iy+00ah),a		;7128	fd 77 0a	. w .
	call 04678h		;712b	cd 78 46	. x F
	and 007h		;712e	e6 07		. .
	sub 004h		;7130	d6 04		. .
	add a,c			;7132	81		.
	ld (iy+008h),a		;7133	fd 77 08	. w .
	call sub_714ah		;7136	cd 4a 71	. J q
	pop iy			;7139	fd e1		. .
	pop bc			;713b	c1		.
	ld (iy+00ah),b		;713c	fd 70 0a	. p .
	ld (iy+008h),c		;713f	fd 71 08	. q .
	ret			;7142	c9		.
l7143h:
	call sub_70efh		;7143	cd ef 70	. . p
	ret c			;7146	d8		.
	call sub_7197h		;7147	cd 97 71	. . q
sub_714ah:
	call sub_7207h		;714a	cd 07 72	. . r
	ret nz			;714d	c0		.
	call sub_721dh		;714e	cd 1d 72	. . r
	push hl			;7151	e5		.
	call sub_71b8h		;7152	cd b8 71	. . q
	call sub_7270h		;7155	cd 70 72	. p r
	call l7240h		;7158	cd 40 72	. @ r
	pop bc			;715b	c1		.
sub_715ch:
	ld a,c			;715c	79		y
	ld c,l			;715d	4d		M
	ld l,a			;715e	6f		o
	ld a,b			;715f	78		x
	ld b,h			;7160	44		D
	ld h,a			;7161	67		g
	ld a,060h		;7162	3e 60		> `
	ld (hl),a		;7164	77		w
	push hl			;7165	e5		.
	ld a,008h		;7166	3e 08		> .
	add a,l			;7168	85		.
	ld l,a			;7169	6f		o
	ld a,(ix+008h)		;716a	dd 7e 08	. ~ .
	ld (hl),a		;716d	77		w
	inc l			;716e	2c		,
	inc l			;716f	2c		,
	ld a,(ix+00ah)		;7170	dd 7e 0a	. ~ .
	ld (hl),a		;7173	77		w
	inc l			;7174	2c		,
	ld (hl),c		;7175	71		q
	inc l			;7176	2c		,
	ld (hl),b		;7177	70		p
	inc l			;7178	2c		,
	ld (hl),e		;7179	73		s
	inc l			;717a	2c		,
	ld (hl),d		;717b	72		r
	ld de,00009h		;717c	11 09 00	. . .
	add hl,de		;717f	19		.
	ld (hl),004h		;7180	36 04		6 .
	pop hl			;7182	e1		.
	jp sub_66f7h		;7183	c3 f7 66	. . f
	exx			;7186	d9		.
	ld hl,l71a8h		;7187	21 a8 71	! . q
	ld de,(0ca19h)		;718a	ed 5b 19 ca	. [ . .
	ld d,000h		;718e	16 00		. .
	add hl,de		;7190	19		.
	ld a,(hl)		;7191	7e		~
	ld (0ca26h),a		;7192	32 26 ca	2 & .
	exx			;7195	d9		.
	ret			;7196	c9		.
sub_7197h:
	exx			;7197	d9		.
	ld hl,l71a8h		;7198	21 a8 71	! . q
	ld de,(0ca19h)		;719b	ed 5b 19 ca	. [ . .
	ld d,000h		;719f	16 00		. .
	add hl,de		;71a1	19		.
	ld a,(hl)		;71a2	7e		~
	ld (0ca26h),a		;71a3	32 26 ca	2 & .
	exx			;71a6	d9		.
	ret			;71a7	c9		.
l71a8h:
	djnz $+19		;71a8	10 11		. .
	ld (de),a		;71aa	12		.
	inc de			;71ab	13		.
	inc d			;71ac	14		.
	dec d			;71ad	15		.
	ld d,017h		;71ae	16 17		. .
	rla			;71b0	17		.
	jr $+26			;71b1	18 18		. .
	add hl,de		;71b3	19		.
	add hl,de		;71b4	19		.
	ld a,(de)		;71b5	1a		.
	ld a,(de)		;71b6	1a		.
	dec de			;71b7	1b		.
sub_71b8h:
	ld de,(0ca47h)		;71b8	ed 5b 47 ca	. [ G .
	ld bc,(0ca49h)		;71bc	ed 4b 49 ca	. K I .
	call sub_71eah		;71c0	cd ea 71	. . q
	ex de,hl		;71c3	eb		.
sub_71c4h:
	ld e,(ix+007h)		;71c4	dd 5e 07	. ^ .
	ld d,(ix+008h)		;71c7	dd 56 08	. V .
	ld c,(ix+009h)		;71ca	dd 4e 09	. N .
	ld b,(ix+00ah)		;71cd	dd 46 0a	. F .
	call sub_71eah		;71d0	cd ea 71	. . q
	ld c,l			;71d3	4d		M
	ld b,h			;71d4	44		D
	ret			;71d5	c9		.
sub_71d6h:
	ld e,(iy+007h)		;71d6	fd 5e 07	. ^ .
	ld d,(iy+008h)		;71d9	fd 56 08	. V .
	ld c,(iy+009h)		;71dc	fd 4e 09	. N .
	ld b,(iy+00ah)		;71df	fd 46 0a	. F .
	call sub_71eah		;71e2	cd ea 71	. . q
	ex de,hl		;71e5	eb		.
	call sub_71c4h		;71e6	cd c4 71	. . q
	ret			;71e9	c9		.
sub_71eah:
	ld a,e			;71ea	7b		{
	rlca			;71eb	07		.
	rlca			;71ec	07		.
	rlca			;71ed	07		.
	and 007h		;71ee	e6 07		. .
	sla d			;71f0	cb 22		. "
	sla d			;71f2	cb 22		. "
	sla d			;71f4	cb 22		. "
	or d			;71f6	b2		.
	ld e,a			;71f7	5f		_
	ld a,c			;71f8	79		y
	rlca			;71f9	07		.
	rlca			;71fa	07		.
	rlca			;71fb	07		.
	and 007h		;71fc	e6 07		. .
	sla b			;71fe	cb 20		.  
	sla b			;7200	cb 20		.  
	sla b			;7202	cb 20		.  
	or b			;7204	b0		.
	ld d,a			;7205	57		W
	ret			;7206	c9		.
sub_7207h:
	ld hl,0d460h		;7207	21 60 d4	! ` .
	exx			;720a	d9		.
	ld b,012h		;720b	06 12		. .
l720dh:
	exx			;720d	d9		.
	ld a,(hl)		;720e	7e		~
	and a			;720f	a7		.
	ret z			;7210	c8		.
	ld a,020h		;7211	3e 20		>  
	add a,l			;7213	85		.
	jr nc,l7217h		;7214	30 01		0 .
	inc h			;7216	24		$
l7217h:
	ld l,a			;7217	6f		o
	exx			;7218	d9		.
	djnz l720dh		;7219	10 f2		. .
	exx			;721b	d9		.
	ret			;721c	c9		.
sub_721dh:
	push hl			;721d	e5		.
	exx			;721e	d9		.
	pop hl			;721f	e1		.
	ld b,020h		;7220	06 20		.  
	ld c,000h		;7222	0e 00		. .
l7224h:
	ld (hl),c		;7224	71		q
	inc hl			;7225	23		#
	djnz l7224h		;7226	10 fc		. .
	exx			;7228	d9		.
	ret			;7229	c9		.
	ld e,a			;722a	5f		_
	ld a,d			;722b	7a		z
	ld (0ca26h),a		;722c	32 26 ca	2 & .
	ld a,d			;722f	7a		z
	and 080h		;7230	e6 80		. .
	ld (0ca23h),a		;7232	32 23 ca	2 # .
l7235h:
	ld a,d			;7235	7a		z
	add a,040h		;7236	c6 40		. @
	and 080h		;7238	e6 80		. .
	ld (0ca24h),a		;723a	32 24 ca	2 $ .
	ld a,e			;723d	7b		{
	and 03fh		;723e	e6 3f		. ?
l7240h:
	ld d,000h		;7240	16 00		. .
	ld e,a			;7242	5f		_
	sub 03fh		;7243	d6 3f		. ?
	neg			;7245	ed 44		. D
	ld hl,l73ach+1		;7247	21 ad 73	! . s
	push hl			;724a	e5		.
	add hl,de		;724b	19		.
	ld c,(hl)		;724c	4e		N
	pop hl			;724d	e1		.
	ld e,a			;724e	5f		_
	add hl,de		;724f	19		.
	ld a,(hl)		;7250	7e		~
	ld (0ca22h),a		;7251	32 22 ca	2 " .
	ld e,c			;7254	59		Y
	call sub_729eh		;7255	cd 9e 72	. . r
	ld a,(0ca23h)		;7258	3a 23 ca	: # .
	and a			;725b	a7		.
	call nz,0460ah		;725c	c4 0a 46	. . F
	push de			;725f	d5		.
	ld a,(0ca22h)		;7260	3a 22 ca	: " .
	ld e,a			;7263	5f		_
	call sub_729eh		;7264	cd 9e 72	. . r
	ld a,(0ca24h)		;7267	3a 24 ca	: $ .
	and a			;726a	a7		.
	call nz,0460ah		;726b	c4 0a 46	. . F
	pop hl			;726e	e1		.
	ret			;726f	c9		.
sub_7270h:
	ld hl,0ca23h		;7270	21 23 ca	! # .
	ld (hl),000h		;7273	36 00		6 .
	ld a,c			;7275	79		y
	sub e			;7276	93		.
	jr nc,l727ch		;7277	30 03		0 .
	neg			;7279	ed 44		. D
	inc (hl)		;727b	34		4
l727ch:
	inc hl			;727c	23		#
	ld (hl),000h		;727d	36 00		6 .
	and 0f0h		;727f	e6 f0		. .
	ld e,a			;7281	5f		_
	ld a,b			;7282	78		x
	sub d			;7283	92		.
	jr nc,l7289h		;7284	30 03		0 .
	neg			;7286	ed 44		. D
	inc (hl)		;7288	34		4
l7289h:
	ld d,a			;7289	57		W
	ld a,d			;728a	7a		z
	rra			;728b	1f		.
	rra			;728c	1f		.
	rra			;728d	1f		.
	rra			;728e	1f		.
	and 00fh		;728f	e6 0f		. .
	add a,e			;7291	83		.
	ld e,a			;7292	5f		_
	ld d,000h		;7293	16 00		. .
	ld hl,l73edh		;7295	21 ed 73	! . s
	add hl,de		;7298	19		.
	ld a,(hl)		;7299	7e		~
	ld (0ca20h),a		;729a	32 20 ca	2   .
	ret			;729d	c9		.
sub_729eh:
	ld a,(0ca26h)		;729e	3a 26 ca	: & .
	ld h,a			;72a1	67		g
	call sub_72b0h		;72a2	cd b0 72	. . r
	xor a			;72a5	af		.
	add hl,hl		;72a6	29		)
	adc a,a			;72a7	8f		.
	add hl,hl		;72a8	29		)
	adc a,a			;72a9	8f		.
	add hl,hl		;72aa	29		)
	adc a,a			;72ab	8f		.
	ld l,h			;72ac	6c		l
	ld h,a			;72ad	67		g
	ex de,hl		;72ae	eb		.
	ret			;72af	c9		.
sub_72b0h:
	ld l,000h		;72b0	2e 00		. .
	ld d,l			;72b2	55		U
	add hl,hl		;72b3	29		)
	jr nc,l72b7h		;72b4	30 01		0 .
	add hl,de		;72b6	19		.
l72b7h:
	add hl,hl		;72b7	29		)
	jr nc,l72bbh		;72b8	30 01		0 .
	add hl,de		;72ba	19		.
l72bbh:
	add hl,hl		;72bb	29		)
	jr nc,l72bfh		;72bc	30 01		0 .
	add hl,de		;72be	19		.
l72bfh:
	add hl,hl		;72bf	29		)
	jr nc,l72c3h		;72c0	30 01		0 .
	add hl,de		;72c2	19		.
l72c3h:
	add hl,hl		;72c3	29		)
	jr nc,l72c7h		;72c4	30 01		0 .
	add hl,de		;72c6	19		.
l72c7h:
	add hl,hl		;72c7	29		)
	jr nc,l72cbh		;72c8	30 01		0 .
	add hl,de		;72ca	19		.
l72cbh:
	add hl,hl		;72cb	29		)
	jr nc,l72cfh		;72cc	30 01		0 .
	add hl,de		;72ce	19		.
l72cfh:
	add hl,hl		;72cf	29		)
	jr nc,l72d3h		;72d0	30 01		0 .
	add hl,de		;72d2	19		.
l72d3h:
	ret			;72d3	c9		.
	ld a,(ix+008h)		;72d4	dd 7e 08	. ~ .
	cp 016h			;72d7	fe 16		. .
	ret nc			;72d9	d0		.
	ld hl,0ce6ch		;72da	21 6c ce	! l .
	inc (hl)		;72dd	34		4
	call sub_750fh		;72de	cd 0f 75	. . u
	ret c			;72e1	d8		.
	call sub_7586h		;72e2	cd 86 75	. . u
	ex af,af'		;72e5	08		.
	ld a,(ix+020h)		;72e6	dd 7e 20	. ~  
	and a			;72e9	a7		.
	jr nz,l72f1h		;72ea	20 05		  .
	ex af,af'		;72ec	08		.
	ret nc			;72ed	d0		.
	jp l7143h		;72ee	c3 43 71	. C q
l72f1h:
	ex af,af'		;72f1	08		.
	ret c			;72f2	d8		.
	jp l7143h		;72f3	c3 43 71	. C q
	ld (0ca26h),a		;72f6	32 26 ca	2 & .
	call sub_70efh		;72f9	cd ef 70	. . p
	ret c			;72fc	d8		.
	jp sub_714ah		;72fd	c3 4a 71	. J q
	ld bc,00000h		;7300	01 00 00	. . .
	call sub_7197h		;7303	cd 97 71	. . q
l7306h:
	ld a,(hl)		;7306	7e		~
	inc a			;7307	3c		<
	ret z			;7308	c8		.
	dec a			;7309	3d		=
	push hl			;730a	e5		.
	push bc			;730b	c5		.
	ld l,a			;730c	6f		o
	ld h,000h		;730d	26 00		& .
	add hl,hl		;730f	29		)
	ld de,l738dh		;7310	11 8d 73	. . s
	add hl,de		;7313	19		.
	ld b,(hl)		;7314	46		F
	inc hl			;7315	23		#
	ld c,(hl)		;7316	4e		N
	call sub_7322h		;7317	cd 22 73	. " s
	pop bc			;731a	c1		.
	call sub_737ch		;731b	cd 7c 73	. | s
	pop hl			;731e	e1		.
	inc hl			;731f	23		#
	jr l7306h		;7320	18 e4		. .
sub_7322h:
	call sub_7207h		;7322	cd 07 72	. . r
	ret nz			;7325	c0		.
	call sub_721dh		;7326	cd 1d 72	. . r
	push hl			;7329	e5		.
	push bc			;732a	c5		.
	call sub_733bh		;732b	cd 3b 73	. ; s
	pop bc			;732e	c1		.
	call sub_734dh		;732f	cd 4d 73	. M s
	call l7240h		;7332	cd 40 72	. @ r
	pop bc			;7335	c1		.
	call sub_715ch		;7336	cd 5c 71	. \ q
	xor a			;7339	af		.
	ret			;733a	c9		.
sub_733bh:
	push bc			;733b	c5		.
	ld e,(ix+007h)		;733c	dd 5e 07	. ^ .
	ld d,(ix+008h)		;733f	dd 56 08	. V .
	ld c,(ix+009h)		;7342	dd 4e 09	. N .
	ld b,(ix+00ah)		;7345	dd 46 0a	. F .
	call sub_71eah		;7348	cd ea 71	. . q
	pop bc			;734b	c1		.
	ret			;734c	c9		.
sub_734dh:
	ld hl,0ca23h		;734d	21 23 ca	! # .
	ld d,000h		;7350	16 00		. .
	ld a,b			;7352	78		x
	rrca			;7353	0f		.
	jr nc,l7357h		;7354	30 01		0 .
	inc d			;7356	14		.
l7357h:
	ld (hl),d		;7357	72		r
	ld d,000h		;7358	16 00		. .
	inc hl			;735a	23		#
	rrca			;735b	0f		.
	jr nc,l735fh		;735c	30 01		0 .
	inc d			;735e	14		.
l735fh:
	ld (hl),d		;735f	72		r
	ld a,c			;7360	79		y
	ret			;7361	c9		.
	ld l,a			;7362	6f		o
	ld h,000h		;7363	26 00		& .
	add hl,hl		;7365	29		)
	ld de,l738dh		;7366	11 8d 73	. . s
	add hl,de		;7369	19		.
	ld b,(hl)		;736a	46		F
	inc hl			;736b	23		#
	ld c,(hl)		;736c	4e		N
	jr sub_7322h		;736d	18 b3		. .
	ld c,000h		;736f	0e 00		. .
	ld a,l			;7371	7d		}
	and 0e0h		;7372	e6 e0		. .
	ld l,a			;7374	6f		o
	ld (hl),b		;7375	70		p
	ld a,005h		;7376	3e 05		> .
	add a,l			;7378	85		.
	ld l,a			;7379	6f		o
	ld (hl),c		;737a	71		q
	ret			;737b	c9		.
sub_737ch:
	ld a,l			;737c	7d		}
	and 0e0h		;737d	e6 e0		. .
	ld l,a			;737f	6f		o
	ld a,008h		;7380	3e 08		> .
	add a,l			;7382	85		.
	ld l,a			;7383	6f		o
	ld a,c			;7384	79		y
	add a,(hl)		;7385	86		.
	ld (hl),a		;7386	77		w
	inc l			;7387	2c		,
	inc l			;7388	2c		,
	ld a,b			;7389	78		x
	add a,(hl)		;738a	86		.
	ld (hl),a		;738b	77		w
	ret			;738c	c9		.
l738dh:
	ld (bc),a		;738d	02		.
	nop			;738e	00		.
	inc bc			;738f	03		.
	djnz $+5		;7390	10 03		. .
	jr nz,l7397h		;7392	20 03		  .
	jr nc,l7397h		;7394	30 01		0 .
	ccf			;7396	3f		?
l7397h:
	ld bc,00130h		;7397	01 30 01	. 0 .
	jr nz,$+3		;739a	20 01		  .
	djnz l739fh		;739c	10 01		. .
	nop			;739e	00		.
l739fh:
	nop			;739f	00		.
	djnz l73a2h		;73a0	10 00		. .
l73a2h:
	jr nz,l73a4h		;73a2	20 00		  .
l73a4h:
	jr nc,l73a6h		;73a4	30 00		0 .
l73a6h:
	ccf			;73a6	3f		?
	ld (bc),a		;73a7	02		.
	jr nc,l73ach		;73a8	30 02		0 .
	jr nz,l73aeh		;73aa	20 02		  .
l73ach:
	djnz l73aeh		;73ac	10 00		. .
l73aeh:
	ld b,00ch		;73ae	06 0c		. .
	ld (de),a		;73b0	12		.
	add hl,de		;73b1	19		.
	rra			;73b2	1f		.
	ld h,02ch		;73b3	26 2c		& ,
	ld (03e38h),a		;73b5	32 38 3e	2 8 >
	ld b,h			;73b8	44		D
	ld c,d			;73b9	4a		J
	ld d,b			;73ba	50		P
	ld d,(hl)		;73bb	56		V
	ld e,h			;73bc	5c		\
	ld h,d			;73bd	62		b
	ld l,b			;73be	68		h
	ld l,l			;73bf	6d		m
	ld (hl),e		;73c0	73		s
	ld a,c			;73c1	79		y
	ld a,(hl)		;73c2	7e		~
	add a,h			;73c3	84		.
	adc a,c			;73c4	89		.
	adc a,(hl)		;73c5	8e		.
	sub e			;73c6	93		.
	sbc a,c			;73c7	99		.
	sbc a,(hl)		;73c8	9e		.
	and d			;73c9	a2		.
	and a			;73ca	a7		.
	xor h			;73cb	ac		.
	or c			;73cc	b1		.
	or l			;73cd	b5		.
	cp c			;73ce	b9		.
	cp (hl)			;73cf	be		.
	jp nz,0cac6h		;73d0	c2 c6 ca	. . .
	adc a,0d1h		;73d3	ce d1		. .
	push de			;73d5	d5		.
	ret c			;73d6	d8		.
	call c,0e2dfh		;73d7	dc df e2	. . .
	push hl			;73da	e5		.
	rst 20h			;73db	e7		.
	jp pe,0efedh		;73dc	ea ed ef	. . .
	pop af			;73df	f1		.
	di			;73e0	f3		.
	push af			;73e1	f5		.
	rst 30h			;73e2	f7		.
	ret m			;73e3	f8		.
	jp m,0fcfbh		;73e4	fa fb fc	. . .
	defb 0fdh,0feh,0feh ;illegal sequence	;73e7	fd fe fe	. . .
	rst 38h			;73ea	ff		.
	rst 38h			;73eb	ff		.
	rst 38h			;73ec	ff		.
l73edh:
	jr nz,l73fch		;73ed	20 0d		  .
	ex af,af'		;73ef	08		.
	ld b,004h		;73f0	06 04		. .
	inc b			;73f2	04		.
	inc bc			;73f3	03		.
	inc bc			;73f4	03		.
	ld (bc),a		;73f5	02		.
	ld (bc),a		;73f6	02		.
	ld (bc),a		;73f7	02		.
	ld (bc),a		;73f8	02		.
	ld bc,00101h		;73f9	01 01 01	. . .
l73fch:
	ld bc,02033h		;73fc	01 33 20	. 3  
	ld d,010h		;73ff	16 10		. .
	dec c			;7401	0d		.
	dec bc			;7402	0b		.
	add hl,bc		;7403	09		.
	ex af,af'		;7404	08		.
	rlca			;7405	07		.
	ld b,006h		;7406	06 06		. .
	dec b			;7408	05		.
	dec b			;7409	05		.
	inc b			;740a	04		.
	inc b			;740b	04		.
	inc b			;740c	04		.
	jr c,l7439h		;740d	38 2a		8 *
	jr nz,l742ah		;740f	20 19		  .
	dec d			;7411	15		.
	ld de,00d0fh		;7412	11 0f 0d	. . .
	inc c			;7415	0c		.
	ld a,(bc)		;7416	0a		.
	add hl,bc		;7417	09		.
	add hl,bc		;7418	09		.
	ex af,af'		;7419	08		.
	rlca			;741a	07		.
	rlca			;741b	07		.
	ld b,03ah		;741c	06 3a		. :
	cpl			;741e	2f		/
	daa			;741f	27		'
	jr nz,l743dh		;7420	20 1b		  .
	rla			;7422	17		.
	inc d			;7423	14		.
	ld (de),a		;7424	12		.
	djnz $+16		;7425	10 0e		. .
	dec c			;7427	0d		.
	inc c			;7428	0c		.
	dec bc			;7429	0b		.
l742ah:
	ld a,(bc)		;742a	0a		.
	ld a,(bc)		;742b	0a		.
	add hl,bc		;742c	09		.
	dec sp			;742d	3b		;
	inc sp			;742e	33		3
	dec hl			;742f	2b		+
	dec h			;7430	25		%
	jr nz,l744fh		;7431	20 1c		  .
	add hl,de		;7433	19		.
	ld d,014h		;7434	16 14		. .
	ld (de),a		;7436	12		.
	djnz l7448h		;7437	10 0f		. .
l7439h:
	ld c,00dh		;7439	0e 0d		. .
	inc c			;743b	0c		.
	dec bc			;743c	0b		.
l743dh:
	inc a			;743d	3c		<
	dec (hl)		;743e	35		5
	ld l,029h		;743f	2e 29		. )
	inc h			;7441	24		$
	jr nz,l7460h		;7442	20 1c		  .
	ld a,(de)		;7444	1a		.
	rla			;7445	17		.
	dec d			;7446	15		.
	inc d			;7447	14		.
l7448h:
	ld (de),a		;7448	12		.
	ld de,00f10h		;7449	11 10 0f	. . .
	ld c,03dh		;744c	0e 3d		. =
	scf			;744e	37		7
l744fh:
	ld sp,0272ch		;744f	31 2c 27	1 , '
	inc hl			;7452	23		#
	jr nz,l7472h		;7453	20 1d		  .
	ld a,(de)		;7455	1a		.
	jr l746eh		;7456	18 16		. .
	dec d			;7458	15		.
	inc de			;7459	13		.
	ld (de),a		;745a	12		.
	ld de,03d10h		;745b	11 10 3d	. . =
	jr c,l7493h		;745e	38 33		8 3
l7460h:
	ld l,02ah		;7460	2e 2a		. *
	ld h,023h		;7462	26 23		& #
	jr nz,l7483h		;7464	20 1d		  .
	dec de			;7466	1b		.
	add hl,de		;7467	19		.
	rla			;7468	17		.
	ld d,015h		;7469	16 15		. .
	inc de			;746b	13		.
	ld (de),a		;746c	12		.
	dec a			;746d	3d		=
l746eh:
	add hl,sp		;746e	39		9
	inc (hl)		;746f	34		4
	jr nc,l749eh		;7470	30 2c		0 ,
l7472h:
	jr z,l7499h		;7472	28 25		( %
	ld (01e20h),hl		;7474	22 20 1e	"   .
	inc e			;7477	1c		.
	ld a,(de)		;7478	1a		.
	jr l7492h		;7479	18 17		. .
	dec d			;747b	15		.
	inc d			;747c	14		.
	ld a,039h		;747d	3e 39		> 9
	dec (hl)		;747f	35		5
	ld sp,02a2eh		;7480	31 2e 2a	1 . *
l7483h:
	daa			;7483	27		'
	dec h			;7484	25		%
	ld (01e20h),hl		;7485	22 20 1e	"   .
	inc e			;7488	1c		.
	ld a,(de)		;7489	1a		.
	add hl,de		;748a	19		.
	rla			;748b	17		.
	ld d,03eh		;748c	16 3e		. >
	ld a,(03336h)		;748e	3a 36 33	: 6 3
	cpl			;7491	2f		/
l7492h:
	inc l			;7492	2c		,
l7493h:
	add hl,hl		;7493	29		)
	daa			;7494	27		'
	inc h			;7495	24		$
	ld (01e20h),hl		;7496	22 20 1e	"   .
l7499h:
	inc e			;7499	1c		.
	dec de			;749a	1b		.
	add hl,de		;749b	19		.
	jr $+64			;749c	18 3e		. >
l749eh:
	dec sp			;749e	3b		;
	scf			;749f	37		7
	inc (hl)		;74a0	34		4
	ld sp,02b2eh		;74a1	31 2e 2b	1 . +
	jr z,l74cch		;74a4	28 26		( &
	inc h			;74a6	24		$
	ld (01e20h),hl		;74a7	22 20 1e	"   .
	dec e			;74aa	1d		.
	dec de			;74ab	1b		.
	ld a,(de)		;74ac	1a		.
	ld a,03bh		;74ad	3e 3b		> ;
	jr c,l74e6h		;74af	38 35		8 5
	ld (02c2fh),a		;74b1	32 2f 2c	2 / ,
	ld hl,(02528h)		;74b4	2a 28 25	* ( %
	inc hl			;74b7	23		#
	ld (01e20h),hl		;74b8	22 20 1e	"   .
	dec e			;74bb	1d		.
	inc e			;74bc	1c		.
	ld a,03bh		;74bd	3e 3b		> ;
	jr c,l74f7h		;74bf	38 36		8 6
	inc sp			;74c1	33		3
	jr nc,$+48		;74c2	30 2e		0 .
	dec hl			;74c4	2b		+
	add hl,hl		;74c5	29		)
	daa			;74c6	27		'
	dec h			;74c7	25		%
	inc hl			;74c8	23		#
	ld hl,01e20h		;74c9	21 20 1e	!   .
l74cch:
	dec e			;74cc	1d		.
	ld a,03ch		;74cd	3e 3c		> <
	add hl,sp		;74cf	39		9
	ld (hl),034h		;74d0	36 34		6 4
	ld sp,02c2fh		;74d2	31 2f 2c	1 / ,
	ld hl,(02628h)		;74d5	2a 28 26	* ( &
	dec h			;74d8	25		%
	inc hl			;74d9	23		#
	ld hl,01e20h		;74da	21 20 1e	!   .
	ccf			;74dd	3f		?
	inc a			;74de	3c		<
	add hl,sp		;74df	39		9
	scf			;74e0	37		7
	inc (hl)		;74e1	34		4
	ld (02d30h),a		;74e2	32 30 2d	2 0 -
	dec hl			;74e5	2b		+
l74e6h:
	add hl,hl		;74e6	29		)
	jr z,sub_750fh		;74e7	28 26		( &
	inc h			;74e9	24		$
	inc hl			;74ea	23		#
	ld hl,0c620h		;74eb	21 20 c6	!   .
	ld b,b			;74ee	40		@
	ld h,000h		;74ef	26 00		& .
	bit 7,a			;74f1	cb 7f		. .
	jr z,l74ffh		;74f3	28 0a		( .
	res 7,a			;74f5	cb bf		. .
l74f7h:
	call l74ffh		;74f7	cd ff 74	. . t
	neg			;74fa	ed 44		. D
	ld l,a			;74fc	6f		o
	dec h			;74fd	25		%
	ret			;74fe	c9		.
l74ffh:
	bit 6,a			;74ff	cb 77		. w
	jr z,l7506h		;7501	28 03		( .
	cpl			;7503	2f		/
	and 03fh		;7504	e6 3f		. ?
l7506h:
	ld de,l73ach+1		;7506	11 ad 73	. . s
	call 04605h		;7509	cd 05 46	. . F
	ld a,(de)		;750c	1a		.
	ld l,a			;750d	6f		o
	ret			;750e	c9		.
sub_750fh:
	call 04678h		;750f	cd 78 46	. x F
	and 00fh		;7512	e6 0f		. .
	ld hl,0ca19h		;7514	21 19 ca	! . .
	cp (hl)			;7517	be		.
	ccf			;7518	3f		?
	ret			;7519	c9		.
	push bc			;751a	c5		.
	call l7143h		;751b	cd 43 71	. C q
	pop bc			;751e	c1		.
	ret c			;751f	d8		.
	jp sub_737ch		;7520	c3 7c 73	. | s
	ld hl,0d440h		;7523	21 40 d4	! @ .
	ld bc,0025fh		;7526	01 5f 02	. _ .
	call 04648h		;7529	cd 48 46	. H F
	nop			;752c	00		.
	nop			;752d	00		.
	nop			;752e	00		.
	nop			;752f	00		.
	nop			;7530	00		.
	nop			;7531	00		.
	nop			;7532	00		.
	nop			;7533	00		.
	nop			;7534	00		.
	nop			;7535	00		.
	nop			;7536	00		.
	nop			;7537	00		.
	nop			;7538	00		.
	nop			;7539	00		.
	nop			;753a	00		.
	nop			;753b	00		.
	ld a,(0ca1ah)		;753c	3a 1a ca	: . .
	add a,(ix+007h)		;753f	dd 86 07	. . .
	ld a,000h		;7542	3e 00		> .
	adc a,e			;7544	8b		.
	ld e,a			;7545	5f		_
	ld a,(0ca1ch)		;7546	3a 1c ca	: . .
	add a,(ix+009h)		;7549	dd 86 09	. . .
	ld a,000h		;754c	3e 00		> .
	adc a,d			;754e	8a		.
	ld d,a			;754f	57		W
	call sub_7b18h		;7550	cd 18 7b	. . {
	ccf			;7553	3f		?
	ret c			;7554	d8		.
	ld a,(de)		;7555	1a		.
	ld h,0deh		;7556	26 de		& .
	ld l,a			;7558	6f		o
	ld a,(hl)		;7559	7e		~
	bit 0,a			;755a	cb 47		. G
	ret			;755c	c9		.
	ld a,(0ca48h)		;755d	3a 48 ca	: H .
	sub (ix+008h)		;7560	dd 96 08	. . .
	ld e,a			;7563	5f		_
	ld a,(0ca4ah)		;7564	3a 4a ca	: J .
	sub (ix+00ah)		;7567	dd 96 0a	. . .
	ld d,a			;756a	57		W
	ret			;756b	c9		.
	ld hl,(0ca49h)		;756c	2a 49 ca	* I .
	ld b,(ix+00ah)		;756f	dd 46 0a	. F .
	ld c,(ix+009h)		;7572	dd 4e 09	. N .
	or a			;7575	b7		.
	sbc hl,bc		;7576	ed 42		. B
	ex de,hl		;7578	eb		.
	ld hl,(0ca47h)		;7579	2a 47 ca	* G .
	ld b,(ix+008h)		;757c	dd 46 08	. F .
	ld c,(ix+007h)		;757f	dd 4e 07	. N .
	or a			;7582	b7		.
	sbc hl,bc		;7583	ed 42		. B
	ret			;7585	c9		.
sub_7586h:
	push de			;7586	d5		.
	ld hl,(0ca47h)		;7587	2a 47 ca	* G .
	ld d,(ix+008h)		;758a	dd 56 08	. V .
	ld e,(ix+007h)		;758d	dd 5e 07	. ^ .
	or a			;7590	b7		.
	sbc hl,de		;7591	ed 52		. R
	pop de			;7593	d1		.
	ret			;7594	c9		.
	ld h,d			;7595	62		b
	ld d,e			;7596	53		S
	ld e,000h		;7597	1e 00		. .
	ld l,e			;7599	6b		k
	push bc			;759a	c5		.
	call sub_76d0h		;759b	cd d0 76	. . v
	call sub_7b18h		;759e	cd 18 7b	. . {
	jp nc,l76c4h		;75a1	d2 c4 76	. . v
	ld a,(de)		;75a4	1a		.
	call sub_76c9h		;75a5	cd c9 76	. . v
	pop bc			;75a8	c1		.
	ret			;75a9	c9		.
	push bc			;75aa	c5		.
	call sub_76d0h		;75ab	cd d0 76	. . v
	push de			;75ae	d5		.
	call sub_7b18h		;75af	cd 18 7b	. . {
	jp nc,l76c3h		;75b2	d2 c3 76	. . v
	ld a,(de)		;75b5	1a		.
	ld h,0deh		;75b6	26 de		& .
	ld l,a			;75b8	6f		o
	ld a,(hl)		;75b9	7e		~
	bit 2,a			;75ba	cb 57		. W
	pop de			;75bc	d1		.
	pop bc			;75bd	c1		.
	or a			;75be	b7		.
	bit 0,a			;75bf	cb 47		. G
	ret			;75c1	c9		.
	push bc			;75c2	c5		.
	call sub_76d0h		;75c3	cd d0 76	. . v
	push de			;75c6	d5		.
	call sub_7b18h		;75c7	cd 18 7b	. . {
	jp nc,l76c3h		;75ca	d2 c3 76	. . v
	ld a,(de)		;75cd	1a		.
	ld h,0deh		;75ce	26 de		& .
	ld l,a			;75d0	6f		o
	ld a,(hl)		;75d1	7e		~
	bit 2,a			;75d2	cb 57		. W
	pop de			;75d4	d1		.
	push af			;75d5	f5		.
	jr nz,l75fah		;75d6	20 22		  "
	pop af			;75d8	f1		.
	pop bc			;75d9	c1		.
	or a			;75da	b7		.
	bit 0,a			;75db	cb 47		. G
	ret			;75dd	c9		.
	ld d,(ix+00ah)		;75de	dd 56 0a	. V .
	ld e,(ix+008h)		;75e1	dd 5e 08	. ^ .
	ld c,001h		;75e4	0e 01		. .
	push bc			;75e6	c5		.
	push af			;75e7	f5		.
	ld a,(0ca1ah)		;75e8	3a 1a ca	: . .
	add a,(ix+007h)		;75eb	dd 86 07	. . .
	jr nc,l75f1h		;75ee	30 01		0 .
	inc e			;75f0	1c		.
l75f1h:
	ld a,(0ca1ch)		;75f1	3a 1c ca	: . .
	add a,(ix+009h)		;75f4	dd 86 09	. . .
	jr nc,l75fah		;75f7	30 01		0 .
	inc d			;75f9	14		.
l75fah:
	push de			;75fa	d5		.
	call sub_7606h		;75fb	cd 06 76	. . v
	pop de			;75fe	d1		.
	pop bc			;75ff	c1		.
	ld a,b			;7600	78		x
	pop bc			;7601	c1		.
	bit 0,a			;7602	cb 47		. G
	ret nc			;7604	d0		.
	ret			;7605	c9		.
sub_7606h:
	push de			;7606	d5		.
	exx			;7607	d9		.
	pop de			;7608	d1		.
	inc d			;7609	14		.
	inc e			;760a	1c		.
	exx			;760b	d9		.
	ld hl,0ce80h		;760c	21 80 ce	! . .
	ld b,014h		;760f	06 14		. .
l7611h:
	push bc			;7611	c5		.
	ld a,(hl)		;7612	7e		~
	or a			;7613	b7		.
	jr z,l7619h		;7614	28 03		( .
	call sub_7622h		;7616	cd 22 76	. " v
l7619h:
	ld bc,00040h		;7619	01 40 00	. @ .
	add hl,bc		;761c	09		.
	pop bc			;761d	c1		.
	djnz l7611h		;761e	10 f1		. .
	or a			;7620	b7		.
	ret			;7621	c9		.
sub_7622h:
	ld a,008h		;7622	3e 08		> .
	add a,l			;7624	85		.
	ld l,a			;7625	6f		o
	ld c,(hl)		;7626	4e		N
	inc hl			;7627	23		#
	inc hl			;7628	23		#
	ld b,(hl)		;7629	46		F
	ld a,009h		;762a	3e 09		> .
	add a,l			;762c	85		.
	ld l,a			;762d	6f		o
	ld e,(hl)		;762e	5e		^
	inc hl			;762f	23		#
	ld d,(hl)		;7630	56		V
	res 7,d			;7631	cb ba		. .
	exx			;7633	d9		.
	ld a,d			;7634	7a		z
	exx			;7635	d9		.
	sub b			;7636	90		.
	cp d			;7637	ba		.
	jr nc,l7654h		;7638	30 1a		0 .
	exx			;763a	d9		.
	ld a,e			;763b	7b		{
	exx			;763c	d9		.
	sub c			;763d	91		.
	cp e			;763e	bb		.
	jr nc,l7654h		;763f	30 13		0 .
	ld a,l			;7641	7d		}
	and 0e0h		;7642	e6 e0		. .
	ld l,a			;7644	6f		o
	push hl			;7645	e5		.
	pop iy			;7646	fd e1		. .
	call sub_7662h		;7648	cd 62 76	. b v
	jr nc,l7654h		;764b	30 07		0 .
	call sub_76a9h		;764d	cd a9 76	. . v
	scf			;7650	37		7
	jp 0469dh		;7651	c3 9d 46	. . F
l7654h:
	ld a,l			;7654	7d		}
	and 0e0h		;7655	e6 e0		. .
	ld l,a			;7657	6f		o
	ret			;7658	c9		.
l7659h:
	ld a,(iy+000h)		;7659	fd 7e 00	. ~ .
	cp 003h			;765c	fe 03		. .
	jr z,l7670h		;765e	28 10		( .
	or a			;7660	b7		.
	ret			;7661	c9		.
sub_7662h:
	or a			;7662	b7		.
	bit 4,(iy+015h)		;7663	fd cb 15 66	. . . f
	jr z,l76a8h		;7667	28 3f		( ?
	ld a,(ix+000h)		;7669	dd 7e 00	. ~ .
	cp 001h			;766c	fe 01		. .
	jr z,l7659h		;766e	28 e9		( .
l7670h:
	push hl			;7670	e5		.
	ld h,(iy+00ah)		;7671	fd 66 0a	. f .
	ld l,(iy+009h)		;7674	fd 6e 09	. n .
	ld bc,(0ca1ch)		;7677	ed 4b 1c ca	. K . .
	ld b,000h		;767b	06 00		. .
	add hl,bc		;767d	09		.
	ld a,(iy+014h)		;767e	fd 7e 14	. ~ .
	and 01fh		;7681	e6 1f		. .
	dec a			;7683	3d		=
	ld b,a			;7684	47		G
	exx			;7685	d9		.
	ld a,d			;7686	7a		z
	dec a			;7687	3d		=
	exx			;7688	d9		.
	sub h			;7689	94		.
	cp b			;768a	b8		.
	jr nc,l76a7h		;768b	30 1a		0 .
	ld h,(iy+008h)		;768d	fd 66 08	. f .
	ld l,(iy+007h)		;7690	fd 6e 07	. n .
	ld bc,(0ca1ah)		;7693	ed 4b 1a ca	. K . .
	ld b,000h		;7697	06 00		. .
	add hl,bc		;7699	09		.
	ld a,(iy+013h)		;769a	fd 7e 13	. ~ .
	and 01fh		;769d	e6 1f		. .
	dec a			;769f	3d		=
	ld b,a			;76a0	47		G
	exx			;76a1	d9		.
	ld a,e			;76a2	7b		{
	dec a			;76a3	3d		=
	exx			;76a4	d9		.
	sub h			;76a5	94		.
	cp b			;76a6	b8		.
l76a7h:
	pop hl			;76a7	e1		.
l76a8h:
	ret			;76a8	c9		.
sub_76a9h:
	ld a,(ix+000h)		;76a9	dd 7e 00	. ~ .
	cp 004h			;76ac	fe 04		. .
	jr z,l76bdh		;76ae	28 0d		( .
	ld c,001h		;76b0	0e 01		. .
	sub 002h		;76b2	d6 02		. .
	cp 008h			;76b4	fe 08		. .
	ret nc			;76b6	d0		.
	ld c,002h		;76b7	0e 02		. .
l76b9h:
	ld (iy+004h),c		;76b9	fd 71 04	. q .
	ret			;76bc	c9		.
l76bdh:
	ld a,(ix+006h)		;76bd	dd 7e 06	. ~ .
	ld c,a			;76c0	4f		O
	jr l76b9h		;76c1	18 f6		. .
l76c3h:
	pop de			;76c3	d1		.
l76c4h:
	ld a,080h		;76c4	3e 80		> .
	pop bc			;76c6	c1		.
	scf			;76c7	37		7
	ret			;76c8	c9		.
sub_76c9h:
	ld h,0deh		;76c9	26 de		& .
	ld l,a			;76cb	6f		o
	ld a,(hl)		;76cc	7e		~
	bit 0,a			;76cd	cb 47		. G
	ret			;76cf	c9		.
sub_76d0h:
	ld b,(ix+008h)		;76d0	dd 46 08	. F .
	ld c,(ix+007h)		;76d3	dd 4e 07	. N .
	add hl,bc		;76d6	09		.
	ld bc,(0ca1ah)		;76d7	ed 4b 1a ca	. K . .
	ld b,000h		;76db	06 00		. .
	add hl,bc		;76dd	09		.
	ex de,hl		;76de	eb		.
	ld b,(ix+00ah)		;76df	dd 46 0a	. F .
	ld c,(ix+009h)		;76e2	dd 4e 09	. N .
	add hl,bc		;76e5	09		.
	ld bc,(0ca1ch)		;76e6	ed 4b 1c ca	. K . .
	ld b,000h		;76ea	06 00		. .
	add hl,bc		;76ec	09		.
	ld l,d			;76ed	6a		j
	ex de,hl		;76ee	eb		.
	ret			;76ef	c9		.
	ret			;76f0	c9		.
	ld a,d			;76f1	7a		z
	cp 020h			;76f2	fe 20		.  
	ret nc			;76f4	d0		.
	ld a,e			;76f5	7b		{
	cp 018h			;76f6	fe 18		. .
	ret nc			;76f8	d0		.
	call 04e3ah		;76f9	cd 3a 4e	. : N
	ex de,hl		;76fc	eb		.
	scf			;76fd	37		7
	ret			;76fe	c9		.
	push bc			;76ff	c5		.
	ld l,(ix+009h)		;7700	dd 6e 09	. n .
	ld h,(ix+00ah)		;7703	dd 66 0a	. f .
	ld e,(ix+014h)		;7706	dd 5e 14	. ^ .
	srl e			;7709	cb 3b		. ;
	ld d,000h		;770b	16 00		. .
	add hl,de		;770d	19		.
	ex de,hl		;770e	eb		.
	ld l,(ix+007h)		;770f	dd 6e 07	. n .
	ld h,(ix+008h)		;7712	dd 66 08	. f .
	ld c,(ix+014h)		;7715	dd 4e 14	. N .
	srl c			;7718	cb 39		. 9
	ld b,000h		;771a	06 00		. .
	add hl,bc		;771c	09		.
	pop bc			;771d	c1		.
	jr sub_7725h		;771e	18 05		. .
	ld h,e			;7720	63		c
	ld l,000h		;7721	2e 00		. .
	ld d,000h		;7723	16 00		. .
sub_7725h:
	push bc			;7725	c5		.
	push de			;7726	d5		.
	ex de,hl		;7727	eb		.
	ld hl,(0ca47h)		;7728	2a 47 ca	* G .
	inc h			;772b	24		$
	or a			;772c	b7		.
	sbc hl,de		;772d	ed 52		. R
	bit 7,h			;772f	cb 7c		. |
	call nz,04612h		;7731	c4 12 46	. . F
	ex de,hl		;7734	eb		.
	ld hl,(0ca49h)		;7735	2a 49 ca	* I .
	inc h			;7738	24		$
	pop bc			;7739	c1		.
	or a			;773a	b7		.
	sbc hl,bc		;773b	ed 42		. B
	bit 7,h			;773d	cb 7c		. |
	call nz,04612h		;773f	c4 12 46	. . F
	add hl,de		;7742	19		.
	pop bc			;7743	c1		.
	sbc hl,bc		;7744	ed 42		. B
	ret			;7746	c9		.
l7747h:
	ld bc,(0f0f2h)		;7747	ed 4b f2 f0	. K . .
	push bc			;774b	c5		.
	call 04bb0h		;774c	cd b0 4b	. . K
	call sub_776bh		;774f	cd 6b 77	. k w
	pop bc			;7752	c1		.
	ld (0f0f2h),bc		;7753	ed 43 f2 f0	. C . .
	ld a,c			;7757	79		y
	ld (09000h),a		;7758	32 00 90	2 . .
	ld a,b			;775b	78		x
	ld (0b000h),a		;775c	32 00 b0	2 . .
	ret			;775f	c9		.
l7760h:
	ld a,(ix+015h)		;7760	dd 7e 15	. ~ .
	and 021h		;7763	e6 21		. !
	cp 020h			;7765	fe 20		.  
	ret nz			;7767	c0		.
	jp sub_6eb4h		;7768	c3 b4 6e	. . n
sub_776bh:
	ld a,(ix+015h)		;776b	dd 7e 15	. ~ .
	and 003h		;776e	e6 03		. .
	jr z,l7760h		;7770	28 ee		( .
	jp pe,l777bh		;7772	ea 7b 77	. { w
	rrca			;7775	0f		.
	jr c,l777eh		;7776	38 06		8 .
	jp l7a3eh		;7778	c3 3e 7a	. > z
l777bh:
	call l7a3eh		;777b	cd 3e 7a	. > z
l777eh:
	ld (ix+019h),000h	;777e	dd 36 19 00	. 6 . .
	ld a,(ix+000h)		;7782	dd 7e 00	. ~ .
	dec a			;7785	3d		=
	ld l,a			;7786	6f		o
	ld h,000h		;7787	26 00		& .
	add hl,hl		;7789	29		)
	ld de,08496h		;778a	11 96 84	. . .
	add hl,de		;778d	19		.
	ld e,(hl)		;778e	5e		^
	inc hl			;778f	23		#
	ld d,(hl)		;7790	56		V
	ld l,(ix+005h)		;7791	dd 6e 05	. n .
	ld h,000h		;7794	26 00		& .
	add hl,hl		;7796	29		)
	add hl,de		;7797	19		.
	ld e,(hl)		;7798	5e		^
	inc hl			;7799	23		#
	ld d,(hl)		;779a	56		V
	ex de,hl		;779b	eb		.
	bit 3,(ix+015h)		;779c	dd cb 15 5e	. . . ^
	jr nz,l77b9h		;77a0	20 17		  .
	ld b,(hl)		;77a2	46		F
	res 7,b			;77a3	cb b8		. .
l77a5h:
	push bc			;77a5	c5		.
	call sub_7864h		;77a6	cd 64 78	. d x
	call c,sub_7861h	;77a9	dc 61 78	. a x
	push hl			;77ac	e5		.
	call sub_78e6h		;77ad	cd e6 78	. . x
	call c,sub_7821h	;77b0	dc 21 78	. ! x
	pop hl			;77b3	e1		.
	pop bc			;77b4	c1		.
	djnz l77a5h		;77b5	10 ee		. .
	or a			;77b7	b7		.
	ret			;77b8	c9		.
l77b9h:
	ld b,(hl)		;77b9	46		F
	res 7,b			;77ba	cb b8		. .
l77bch:
	push bc			;77bc	c5		.
	call sub_7864h		;77bd	cd 64 78	. d x
	call c,sub_7861h	;77c0	dc 61 78	. a x
	push hl			;77c3	e5		.
	call sub_79b6h		;77c4	cd b6 79	. . y
	call c,sub_7821h	;77c7	dc 21 78	. ! x
	pop hl			;77ca	e1		.
	pop bc			;77cb	c1		.
	djnz l77bch		;77cc	10 ee		. .
	or a			;77ce	b7		.
	ret			;77cf	c9		.
	ld bc,(0f0f2h)		;77d0	ed 4b f2 f0	. K . .
	push bc			;77d4	c5		.
	call 04bb0h		;77d5	cd b0 4b	. . K
	ld (ix+019h),000h	;77d8	dd 36 19 00	. 6 . .
	ld a,(ix+000h)		;77dc	dd 7e 00	. ~ .
	dec a			;77df	3d		=
	ld l,a			;77e0	6f		o
	ld h,000h		;77e1	26 00		& .
	add hl,hl		;77e3	29		)
	ld de,08496h		;77e4	11 96 84	. . .
	add hl,de		;77e7	19		.
	ld e,(hl)		;77e8	5e		^
	inc hl			;77e9	23		#
	ld d,(hl)		;77ea	56		V
	ld l,(ix+005h)		;77eb	dd 6e 05	. n .
	ld h,000h		;77ee	26 00		& .
	add hl,hl		;77f0	29		)
	add hl,de		;77f1	19		.
	ld e,(hl)		;77f2	5e		^
	inc hl			;77f3	23		#
	ld d,(hl)		;77f4	56		V
	ex de,hl		;77f5	eb		.
	ld b,(hl)		;77f6	46		F
	res 7,b			;77f7	cb b8		. .
l77f9h:
	push bc			;77f9	c5		.
	call sub_7864h		;77fa	cd 64 78	. d x
	call c,sub_7861h	;77fd	dc 61 78	. a x
	push hl			;7800	e5		.
	call sub_794eh		;7801	cd 4e 79	. N y
	call c,sub_7821h	;7804	dc 21 78	. ! x
	pop hl			;7807	e1		.
	pop bc			;7808	c1		.
	djnz l77f9h		;7809	10 ee		. .
	or a			;780b	b7		.
	pop bc			;780c	c1		.
	ld (0f0f2h),bc		;780d	ed 43 f2 f0	. C . .
	ld a,c			;7811	79		y
	ld (09000h),a		;7812	32 00 90	2 . .
	ld a,b			;7815	78		x
	ld (0b000h),a		;7816	32 00 b0	2 . .
	ret			;7819	c9		.
l781ah:
	ld a,001h		;781a	3e 01		> .
	ld (0c0ech),a		;781c	32 ec c0	2 . .
	scf			;781f	37		7
	ret			;7820	c9		.
sub_7821h:
	ld a,(ix+000h)		;7821	dd 7e 00	. ~ .
	cp 001h			;7824	fe 01		. .
	jr z,l781ah		;7826	28 f2		( .
	cp 01fh			;7828	fe 1f		. .
	ret z			;782a	c8		.
	cp 043h			;782b	fe 43		. C
	ret z			;782d	c8		.
	cp 050h			;782e	fe 50		. P
	ret z			;7830	c8		.
	cp 048h			;7831	fe 48		. H
	ret z			;7833	c8		.
	pop hl			;7834	e1		.
	pop bc			;7835	c1		.
	pop bc			;7836	c1		.
	inc hl			;7837	23		#
	inc hl			;7838	23		#
	inc hl			;7839	23		#
	inc hl			;783a	23		#
	inc hl			;783b	23		#
	push hl			;783c	e5		.
	push ix			;783d	dd e5		. .
	pop de			;783f	d1		.
	ld hl,02ba0h		;7840	21 a0 2b	! . +
	add hl,de		;7843	19		.
	ld bc,00240h		;7844	01 40 02	. @ .
	or a			;7847	b7		.
	sbc hl,bc		;7848	ed 42		. B
	jr c,l785ch		;784a	38 10		8 .
	ld hl,03180h		;784c	21 80 31	! . 1
	add hl,de		;784f	19		.
	ld bc,00500h		;7850	01 00 05	. . .
	or a			;7853	b7		.
	sbc hl,bc		;7854	ed 42		. B
	ret nc			;7856	d0		.
	call l6e98h		;7857	cd 98 6e	. . n
	scf			;785a	37		7
	ret			;785b	c9		.
l785ch:
	call l6each		;785c	cd ac 6e	. . n
	scf			;785f	37		7
	ret			;7860	c9		.
sub_7861h:
	ld e,0e8h		;7861	1e e8		. .
	ret			;7863	c9		.
sub_7864h:
	ld a,b			;7864	78		x
	dec a			;7865	3d		=
	jr nz,l78b2h		;7866	20 4a		  J
	ex de,hl		;7868	eb		.
	ld h,(ix+008h)		;7869	dd 66 08	. f .
	ld l,(ix+007h)		;786c	dd 6e 07	. n .
	add hl,hl		;786f	29		)
	add hl,hl		;7870	29		)
	add hl,hl		;7871	29		)
	call c,sub_7897h	;7872	dc 97 78	. . x
	ld a,h			;7875	7c		|
	ld h,(ix+00ah)		;7876	dd 66 0a	. f .
	ld l,(ix+009h)		;7879	dd 6e 09	. n .
	add hl,hl		;787c	29		)
	add hl,hl		;787d	29		)
	add hl,hl		;787e	29		)
	ex de,hl		;787f	eb		.
	jp c,l78a4h		;7880	da a4 78	. . x
	inc hl			;7883	23		#
	ld b,(hl)		;7884	46		F
	inc hl			;7885	23		#
	add a,(hl)		;7886	86		.
	ld e,a			;7887	5f		_
	inc hl			;7888	23		#
	ld a,d			;7889	7a		z
	add a,(hl)		;788a	86		.
	jp c,l78a7h		;788b	da a7 78	. . x
	ld d,a			;788e	57		W
	inc hl			;788f	23		#
	ld c,(hl)		;7890	4e		N
	inc hl			;7891	23		#
	ld a,b			;7892	78		x
	ld b,(hl)		;7893	46		F
	inc hl			;7894	23		#
	or a			;7895	b7		.
	ret			;7896	c9		.
sub_7897h:
	ld a,(ix+008h)		;7897	dd 7e 08	. ~ .
	cp 0feh			;789a	fe fe		. .
	ret nc			;789c	d0		.
	ex de,hl		;789d	eb		.
	call l78a4h		;789e	cd a4 78	. . x
	jp 0469fh		;78a1	c3 9f 46	. . F
l78a4h:
	inc hl			;78a4	23		#
	inc hl			;78a5	23		#
	inc hl			;78a6	23		#
l78a7h:
	inc hl			;78a7	23		#
	inc hl			;78a8	23		#
	inc hl			;78a9	23		#
	ld bc,00101h		;78aa	01 01 01	. . .
	ld a,000h		;78ad	3e 00		> .
	ld e,0e8h		;78af	1e e8		. .
	ret			;78b1	c9		.
l78b2h:
	ex de,hl		;78b2	eb		.
	ld h,(ix+008h)		;78b3	dd 66 08	. f .
	ld l,(ix+007h)		;78b6	dd 6e 07	. n .
	add hl,hl		;78b9	29		)
	add hl,hl		;78ba	29		)
	add hl,hl		;78bb	29		)
	call c,sub_7897h	;78bc	dc 97 78	. . x
	ld a,h			;78bf	7c		|
	ld h,(ix+00ah)		;78c0	dd 66 0a	. f .
	ld l,(ix+009h)		;78c3	dd 6e 09	. n .
	add hl,hl		;78c6	29		)
	add hl,hl		;78c7	29		)
	add hl,hl		;78c8	29		)
	ex de,hl		;78c9	eb		.
	jp c,l78a4h		;78ca	da a4 78	. . x
	inc hl			;78cd	23		#
	ld b,(hl)		;78ce	46		F
	inc hl			;78cf	23		#
	add a,(hl)		;78d0	86		.
	ld e,a			;78d1	5f		_
	inc hl			;78d2	23		#
	ld a,d			;78d3	7a		z
	add a,(hl)		;78d4	86		.
	jp c,l78a7h		;78d5	da a7 78	. . x
	ld d,a			;78d8	57		W
	inc hl			;78d9	23		#
	ld c,(hl)		;78da	4e		N
	inc hl			;78db	23		#
	ld a,b			;78dc	78		x
	ld b,(hl)		;78dd	46		F
	inc hl			;78de	23		#
	or a			;78df	b7		.
	ret			;78e0	c9		.
l78e1h:
	ld (ix+019h),000h	;78e1	dd 36 19 00	. 6 . .
	ret			;78e5	c9		.
sub_78e6h:
	ld l,(ix+000h)		;78e6	dd 6e 00	. n .
	ld h,0dfh		;78e9	26 df		& .
	add a,(hl)		;78eb	86		.
	ex af,af'		;78ec	08		.
	ld a,(ix+019h)		;78ed	dd 7e 19	. ~ .
	or a			;78f0	b7		.
	jr nz,l7913h		;78f1	20 20		   
	inc a			;78f3	3c		<
	ld (ix+019h),a		;78f4	dd 77 19	. w .
	ld a,(ix+01ah)		;78f7	dd 7e 1a	. ~ .
	or a			;78fa	b7		.
	call z,sub_793dh	;78fb	cc 3d 79	. = y
l78feh:
	ld l,a			;78fe	6f		o
	ld a,(0c0aah)		;78ff	3a aa c0	: . .
	ld h,a			;7902	67		g
	res 7,(hl)		;7903	cb be		. .
	res 0,l			;7905	cb 85		. .
	ld h,0c0h		;7907	26 c0		& .
	ld (hl),e		;7909	73		s
	inc h			;790a	24		$
	ld (hl),d		;790b	72		r
	inc h			;790c	24		$
	ex af,af'		;790d	08		.
	ld (hl),a		;790e	77		w
	inc h			;790f	24		$
	ld (hl),c		;7910	71		q
	or a			;7911	b7		.
	ret			;7912	c9		.
l7913h:
	cp 006h			;7913	fe 06		. .
	ret nc			;7915	d0		.
	inc a			;7916	3c		<
	ld (ix+019h),a		;7917	dd 77 19	. w .
	push ix			;791a	dd e5		. .
	pop hl			;791c	e1		.
	push bc			;791d	c5		.
	add a,019h		;791e	c6 19		. .
	ld c,a			;7920	4f		O
	ld b,000h		;7921	06 00		. .
	add hl,bc		;7923	09		.
	pop bc			;7924	c1		.
	ld a,(hl)		;7925	7e		~
	or a			;7926	b7		.
	call z,sub_792ch	;7927	cc 2c 79	. , y
	jr l78feh		;792a	18 d2		. .
sub_792ch:
	push bc			;792c	c5		.
	push hl			;792d	e5		.
	ld hl,0c023h		;792e	21 23 c0	! # .
	ld b,00ch		;7931	06 0c		. .
	call sub_7a20h		;7933	cd 20 7a	.   z
	pop hl			;7936	e1		.
	ld (hl),a		;7937	77		w
	pop bc			;7938	c1		.
	ret nc			;7939	d0		.
	jp 0469fh		;793a	c3 9f 46	. . F
sub_793dh:
	push bc			;793d	c5		.
	ld hl,0c023h		;793e	21 23 c0	! # .
	ld b,00ch		;7941	06 0c		. .
	call sub_7a20h		;7943	cd 20 7a	.   z
	ld (ix+01ah),a		;7946	dd 77 1a	. w .
	pop bc			;7949	c1		.
	ret nc			;794a	d0		.
	jp 0469fh		;794b	c3 9f 46	. . F
sub_794eh:
	ld l,(ix+000h)		;794e	dd 6e 00	. n .
	ld h,0dfh		;7951	26 df		& .
	add a,(hl)		;7953	86		.
	ex af,af'		;7954	08		.
	ld a,(ix+019h)		;7955	dd 7e 19	. ~ .
	or a			;7958	b7		.
	jr nz,l797bh		;7959	20 20		   
	inc a			;795b	3c		<
	ld (ix+019h),a		;795c	dd 77 19	. w .
	ld a,(ix+01ah)		;795f	dd 7e 1a	. ~ .
	or a			;7962	b7		.
	call z,sub_79a5h	;7963	cc a5 79	. . y
l7966h:
	ld l,a			;7966	6f		o
	ld a,(0c0aah)		;7967	3a aa c0	: . .
	ld h,a			;796a	67		g
	res 7,(hl)		;796b	cb be		. .
	res 0,l			;796d	cb 85		. .
	ld h,0c0h		;796f	26 c0		& .
	ld (hl),e		;7971	73		s
	inc h			;7972	24		$
	ld (hl),d		;7973	72		r
	inc h			;7974	24		$
	ex af,af'		;7975	08		.
	ld (hl),a		;7976	77		w
	inc h			;7977	24		$
	ld (hl),c		;7978	71		q
	or a			;7979	b7		.
	ret			;797a	c9		.
l797bh:
	cp 006h			;797b	fe 06		. .
	ret nc			;797d	d0		.
	inc a			;797e	3c		<
	ld (ix+019h),a		;797f	dd 77 19	. w .
	push ix			;7982	dd e5		. .
	pop hl			;7984	e1		.
	push bc			;7985	c5		.
	add a,019h		;7986	c6 19		. .
	ld c,a			;7988	4f		O
	ld b,000h		;7989	06 00		. .
	add hl,bc		;798b	09		.
	pop bc			;798c	c1		.
	ld a,(hl)		;798d	7e		~
	or a			;798e	b7		.
	call z,sub_7994h	;798f	cc 94 79	. . y
	jr l7966h		;7992	18 d2		. .
sub_7994h:
	push bc			;7994	c5		.
	push hl			;7995	e5		.
	ld hl,0c009h		;7996	21 09 c0	! . .
	ld b,00dh		;7999	06 0d		. .
	call sub_7a20h		;799b	cd 20 7a	.   z
	pop hl			;799e	e1		.
	ld (hl),a		;799f	77		w
	pop bc			;79a0	c1		.
	ret nc			;79a1	d0		.
	jp 0469fh		;79a2	c3 9f 46	. . F
sub_79a5h:
	push bc			;79a5	c5		.
	ld hl,0c009h		;79a6	21 09 c0	! . .
	ld b,00dh		;79a9	06 0d		. .
	call sub_7a20h		;79ab	cd 20 7a	.   z
	ld (ix+01ah),a		;79ae	dd 77 1a	. w .
	pop bc			;79b1	c1		.
	ret nc			;79b2	d0		.
	jp 0469fh		;79b3	c3 9f 46	. . F
sub_79b6h:
	ld l,(ix+000h)		;79b6	dd 6e 00	. n .
	ld h,0dfh		;79b9	26 df		& .
	add a,(hl)		;79bb	86		.
	ex af,af'		;79bc	08		.
	ld a,(ix+019h)		;79bd	dd 7e 19	. ~ .
	or a			;79c0	b7		.
	jr nz,l79e5h		;79c1	20 22		  "
	inc a			;79c3	3c		<
	ld (ix+019h),a		;79c4	dd 77 19	. w .
	ld a,(ix+01ah)		;79c7	dd 7e 1a	. ~ .
	or a			;79ca	b7		.
	call z,sub_79feh	;79cb	cc fe 79	. . y
l79ceh:
	ld l,a			;79ce	6f		o
	ld a,(0c0aah)		;79cf	3a aa c0	: . .
	ld h,a			;79d2	67		g
	res 7,(hl)		;79d3	cb be		. .
	res 0,l			;79d5	cb 85		. .
	ld h,0c0h		;79d7	26 c0		& .
	ld (hl),e		;79d9	73		s
	inc h			;79da	24		$
	ld (hl),d		;79db	72		r
	inc h			;79dc	24		$
	ex af,af'		;79dd	08		.
	ld (hl),a		;79de	77		w
	inc h			;79df	24		$
	ld (hl),c		;79e0	71		q
	inc h			;79e1	24		$
	ld (hl),b		;79e2	70		p
	or a			;79e3	b7		.
	ret			;79e4	c9		.
l79e5h:
	cp 006h			;79e5	fe 06		. .
	ret nc			;79e7	d0		.
	push ix			;79e8	dd e5		. .
	pop hl			;79ea	e1		.
	inc a			;79eb	3c		<
	ld (ix+019h),a		;79ec	dd 77 19	. w .
	push bc			;79ef	c5		.
	add a,019h		;79f0	c6 19		. .
	ld c,a			;79f2	4f		O
	ld b,000h		;79f3	06 00		. .
	add hl,bc		;79f5	09		.
	pop bc			;79f6	c1		.
	ld a,(hl)		;79f7	7e		~
	or a			;79f8	b7		.
	call z,sub_7a0fh	;79f9	cc 0f 7a	. . z
	jr l79ceh		;79fc	18 d0		. .
sub_79feh:
	push bc			;79fe	c5		.
	ld hl,0c03bh		;79ff	21 3b c0	! ; .
	ld b,00ch		;7a02	06 0c		. .
	call sub_7a20h		;7a04	cd 20 7a	.   z
	ld (ix+01ah),a		;7a07	dd 77 1a	. w .
	pop bc			;7a0a	c1		.
	ret nc			;7a0b	d0		.
	jp 0469fh		;7a0c	c3 9f 46	. . F
sub_7a0fh:
	push bc			;7a0f	c5		.
	push hl			;7a10	e5		.
	ld hl,0c03bh		;7a11	21 3b c0	! ; .
	ld b,00ch		;7a14	06 0c		. .
	call sub_7a20h		;7a16	cd 20 7a	.   z
	pop hl			;7a19	e1		.
	ld (hl),a		;7a1a	77		w
	pop bc			;7a1b	c1		.
	ret nc			;7a1c	d0		.
	jp 0469fh		;7a1d	c3 9f 46	. . F
sub_7a20h:
	call sub_7a35h		;7a20	cd 35 7a	. 5 z
	jr nz,l7a31h		;7a23	20 0c		  .
	ld (hl),08fh		;7a25	36 8f		6 .
	inc h			;7a27	24		$
	inc h			;7a28	24		$
	inc h			;7a29	24		$
	ld (hl),08fh		;7a2a	36 8f		6 .
	dec h			;7a2c	25		%
	dec h			;7a2d	25		%
	dec h			;7a2e	25		%
	ld a,l			;7a2f	7d		}
	ret			;7a30	c9		.
l7a31h:
	ld a,000h		;7a31	3e 00		> .
	scf			;7a33	37		7
	ret			;7a34	c9		.
sub_7a35h:
	xor a			;7a35	af		.
l7a36h:
	cp (hl)			;7a36	be		.
	ret z			;7a37	c8		.
	inc l			;7a38	2c		,
	inc l			;7a39	2c		,
	djnz l7a36h		;7a3a	10 fa		. .
	scf			;7a3c	37		7
	ret			;7a3d	c9		.
l7a3eh:
	call sub_7a5fh		;7a3e	cd 5f 7a	. _ z
	jr l7abah		;7a41	18 77		. w
	push af			;7a43	f5		.
	call 04bb0h		;7a44	cd b0 4b	. . K
	pop af			;7a47	f1		.
	ld l,(ix+000h)		;7a48	dd 6e 00	. n .
	dec l			;7a4b	2d		-
	ld h,000h		;7a4c	26 00		& .
	add hl,hl		;7a4e	29		)
	ld de,08596h		;7a4f	11 96 85	. . .
	add hl,de		;7a52	19		.
	ld e,(hl)		;7a53	5e		^
	inc hl			;7a54	23		#
	ld d,(hl)		;7a55	56		V
	call sub_7a70h		;7a56	cd 70 7a	. p z
	call l7abah		;7a59	cd ba 7a	. . z
	jp 04b99h		;7a5c	c3 99 4b	. . K
sub_7a5fh:
	ld l,(ix+000h)		;7a5f	dd 6e 00	. n .
	dec l			;7a62	2d		-
	ld h,000h		;7a63	26 00		& .
	add hl,hl		;7a65	29		)
	ld de,08596h		;7a66	11 96 85	. . .
	add hl,de		;7a69	19		.
	ld e,(hl)		;7a6a	5e		^
	inc hl			;7a6b	23		#
	ld d,(hl)		;7a6c	56		V
	ld a,(ix+006h)		;7a6d	dd 7e 06	. ~ .
sub_7a70h:
	ld h,000h		;7a70	26 00		& .
	ld l,a			;7a72	6f		o
	add hl,hl		;7a73	29		)
	add hl,de		;7a74	19		.
	ld e,(hl)		;7a75	5e		^
	inc hl			;7a76	23		#
	ld d,(hl)		;7a77	56		V
	ex de,hl		;7a78	eb		.
	ld a,(0ca1ah)		;7a79	3a 1a ca	: . .
	add a,(ix+007h)		;7a7c	dd 86 07	. . .
	ld a,(ix+008h)		;7a7f	dd 7e 08	. ~ .
	adc a,(hl)		;7a82	8e		.
	ld e,a			;7a83	5f		_
	inc hl			;7a84	23		#
	ld a,(0ca1ch)		;7a85	3a 1c ca	: . .
	add a,(ix+009h)		;7a88	dd 86 09	. . .
	ld a,(ix+00ah)		;7a8b	dd 7e 0a	. ~ .
	adc a,(hl)		;7a8e	8e		.
	ld d,a			;7a8f	57		W
	inc hl			;7a90	23		#
	ld b,(hl)		;7a91	46		F
	inc hl			;7a92	23		#
	ld c,(hl)		;7a93	4e		N
	inc hl			;7a94	23		#
	ret			;7a95	c9		.
	call 04bb0h		;7a96	cd b0 4b	. . K
	call sub_7aa8h		;7a99	cd a8 7a	. . z
	jp 04b99h		;7a9c	c3 99 4b	. . K
sub_7a9fh:
	inc d			;7a9f	14		.
	ld a,d			;7aa0	7a		z
	cp 0deh			;7aa1	fe de		. .
	ret c			;7aa3	d8		.
	scf			;7aa4	37		7
	jp 0469bh		;7aa5	c3 9b 46	. . F
sub_7aa8h:
	ld a,(0ca1ah)		;7aa8	3a 1a ca	: . .
	add a,(ix+007h)		;7aab	dd 86 07	. . .
	jr nc,l7ab1h		;7aae	30 01		0 .
	inc e			;7ab0	1c		.
l7ab1h:
	ld a,(0ca1ch)		;7ab1	3a 1c ca	: . .
	add a,(ix+009h)		;7ab4	dd 86 09	. . .
	jr nc,l7abah		;7ab7	30 01		0 .
	inc d			;7ab9	14		.
l7abah:
	push hl			;7aba	e5		.
	call sub_7b29h		;7abb	cd 29 7b	. ) {
	pop hl			;7abe	e1		.
	ret nc			;7abf	d0		.
l7ac0h:
	push bc			;7ac0	c5		.
	push de			;7ac1	d5		.
l7ac2h:
	ld a,(hl)		;7ac2	7e		~
	or a			;7ac3	b7		.
	jr z,l7ac7h		;7ac4	28 01		( .
	ld (de),a		;7ac6	12		.
l7ac7h:
	inc hl			;7ac7	23		#
	inc e			;7ac8	1c		.
	call z,sub_7a9fh	;7ac9	cc 9f 7a	. . z
	dec c			;7acc	0d		.
	jr z,l7af7h		;7acd	28 28		( (
	ld a,(hl)		;7acf	7e		~
	or a			;7ad0	b7		.
	jr z,l7ad4h		;7ad1	28 01		( .
	ld (de),a		;7ad3	12		.
l7ad4h:
	inc hl			;7ad4	23		#
	inc e			;7ad5	1c		.
	call z,sub_7a9fh	;7ad6	cc 9f 7a	. . z
	dec c			;7ad9	0d		.
	jr z,l7af7h		;7ada	28 1b		( .
	ld a,(hl)		;7adc	7e		~
	or a			;7add	b7		.
	jr z,l7ae1h		;7ade	28 01		( .
	ld (de),a		;7ae0	12		.
l7ae1h:
	inc hl			;7ae1	23		#
	inc e			;7ae2	1c		.
	call z,sub_7a9fh	;7ae3	cc 9f 7a	. . z
	dec c			;7ae6	0d		.
	jr z,l7af7h		;7ae7	28 0e		( .
	ld a,(hl)		;7ae9	7e		~
	or a			;7aea	b7		.
	jr z,l7aeeh		;7aeb	28 01		( .
	ld (de),a		;7aed	12		.
l7aeeh:
	inc hl			;7aee	23		#
	inc e			;7aef	1c		.
	call z,sub_7a9fh	;7af0	cc 9f 7a	. . z
	dec c			;7af3	0d		.
	jp nz,l7ac2h		;7af4	c2 c2 7a	. . z
l7af7h:
	pop de			;7af7	d1		.
	ld bc,00030h		;7af8	01 30 00	. 0 .
	ex de,hl		;7afb	eb		.
	add hl,bc		;7afc	09		.
	ex de,hl		;7afd	eb		.
	ld a,d			;7afe	7a		z
	cp 0deh			;7aff	fe de		. .
	pop bc			;7b01	c1		.
	ret nc			;7b02	d0		.
	djnz l7ac0h		;7b03	10 bb		. .
	ret			;7b05	c9		.
sub_7b06h:
	ld a,(0ca1ah)		;7b06	3a 1a ca	: . .
	add a,(ix+007h)		;7b09	dd 86 07	. . .
	jr nc,l7b0fh		;7b0c	30 01		0 .
	inc e			;7b0e	1c		.
l7b0fh:
	ld a,(0ca1ch)		;7b0f	3a 1c ca	: . .
	add a,(ix+009h)		;7b12	dd 86 09	. . .
	jr nc,sub_7b18h		;7b15	30 01		0 .
	inc d			;7b17	14		.
sub_7b18h:
	ld a,d			;7b18	7a		z
	cp 020h			;7b19	fe 20		.  
	ret nc			;7b1b	d0		.
	add a,008h		;7b1c	c6 08		. .
	push af			;7b1e	f5		.
	ld a,e			;7b1f	7b		{
	cp 018h			;7b20	fe 18		. .
	jp nc,l7b4eh		;7b22	d2 4e 7b	. N {
	add a,008h		;7b25	c6 08		. .
	jr l7b38h		;7b27	18 0f		. .
sub_7b29h:
	ld a,d			;7b29	7a		z
	add a,008h		;7b2a	c6 08		. .
	cp 028h			;7b2c	fe 28		. (
	ret nc			;7b2e	d0		.
	push af			;7b2f	f5		.
	ld a,e			;7b30	7b		{
	add a,008h		;7b31	c6 08		. .
	cp 020h			;7b33	fe 20		.  
	jp nc,l7b4eh		;7b35	d2 4e 7b	. N {
l7b38h:
	ld e,a			;7b38	5f		_
	add a,a			;7b39	87		.
	add a,e			;7b3a	83		.
	ld l,a			;7b3b	6f		o
	ld h,000h		;7b3c	26 00		& .
	add hl,hl		;7b3e	29		)
	add hl,hl		;7b3f	29		)
	add hl,hl		;7b40	29		)
	add hl,hl		;7b41	29		)
	ld de,0d800h		;7b42	11 00 d8	. . .
	add hl,de		;7b45	19		.
	pop af			;7b46	f1		.
	ld e,a			;7b47	5f		_
	ld d,000h		;7b48	16 00		. .
	add hl,de		;7b4a	19		.
	ex de,hl		;7b4b	eb		.
	scf			;7b4c	37		7
	ret			;7b4d	c9		.
l7b4eh:
	inc sp			;7b4e	33		3
	inc sp			;7b4f	33		3
	ret			;7b50	c9		.
	ld hl,0dda0h		;7b51	21 a0 dd	! . .
	jr l7b59h		;7b54	18 03		. .
	ld hl,0d950h		;7b56	21 50 d9	! P .
l7b59h:
	ld a,d			;7b59	7a		z
	add a,00fh		;7b5a	c6 0f		. .
	cp 02fh			;7b5c	fe 2f		. /
	ret nc			;7b5e	d0		.
	ld e,a			;7b5f	5f		_
	ld d,000h		;7b60	16 00		. .
	add hl,de		;7b62	19		.
	scf			;7b63	37		7
	ret			;7b64	c9		.
	ld l,(ix+006h)		;7b65	dd 6e 06	. n .
	ld h,000h		;7b68	26 00		& .
	add hl,hl		;7b6a	29		)
	add hl,de		;7b6b	19		.
	ld e,(hl)		;7b6c	5e		^
	inc hl			;7b6d	23		#
	ld d,(hl)		;7b6e	56		V
	ex de,hl		;7b6f	eb		.
	call sub_7c01h		;7b70	cd 01 7c	. . |
	call 04bb0h		;7b73	cd b0 4b	. . K
	exx			;7b76	d9		.
	ld l,(ix+000h)		;7b77	dd 6e 00	. n .
	dec l			;7b7a	2d		-
	ld h,000h		;7b7b	26 00		& .
	add hl,hl		;7b7d	29		)
	ld de,08596h		;7b7e	11 96 85	. . .
	add hl,de		;7b81	19		.
	ld e,(hl)		;7b82	5e		^
	inc hl			;7b83	23		#
	ld d,(hl)		;7b84	56		V
	ld (0ca27h),de		;7b85	ed 53 27 ca	. S ' .
	exx			;7b89	d9		.
l7b8ah:
	ld a,(hl)		;7b8a	7e		~
	inc hl			;7b8b	23		#
	ld d,(hl)		;7b8c	56		V
	add a,(ix+008h)		;7b8d	dd 86 08	. . .
	ld e,a			;7b90	5f		_
	ld a,(ix+00ah)		;7b91	dd 7e 0a	. ~ .
	add a,d			;7b94	82		.
	ld d,a			;7b95	57		W
	ld (0ca29h),de		;7b96	ed 53 29 ca	. S ) .
	inc hl			;7b9a	23		#
l7b9bh:
	ld a,(hl)		;7b9b	7e		~
	inc hl			;7b9c	23		#
	ld b,a			;7b9d	47		G
	inc a			;7b9e	3c		<
	jp z,04b99h		;7b9f	ca 99 4b	. . K
	inc a			;7ba2	3c		<
	jr z,l7b8ah		;7ba3	28 e5		( .
	ld a,080h		;7ba5	3e 80		> .
	add a,b			;7ba7	80		.
	jr c,l7bd5h		;7ba8	38 2b		8 +
l7baah:
	push bc			;7baa	c5		.
	push hl			;7bab	e5		.
	ld l,(hl)		;7bac	6e		n
	ld h,000h		;7bad	26 00		& .
	add hl,hl		;7baf	29		)
	ld de,(0ca27h)		;7bb0	ed 5b 27 ca	. [ ' .
	add hl,de		;7bb4	19		.
	ld e,(hl)		;7bb5	5e		^
	inc hl			;7bb6	23		#
	ld d,(hl)		;7bb7	56		V
	ex de,hl		;7bb8	eb		.
	ld bc,0ca29h		;7bb9	01 29 ca	. ) .
	ld a,(bc)		;7bbc	0a		.
	ld e,a			;7bbd	5f		_
	add a,(hl)		;7bbe	86		.
	ld (bc),a		;7bbf	02		.
	inc bc			;7bc0	03		.
	inc hl			;7bc1	23		#
	ld a,(bc)		;7bc2	0a		.
	ld d,a			;7bc3	57		W
	add a,(hl)		;7bc4	86		.
	ld (bc),a		;7bc5	02		.
	inc hl			;7bc6	23		#
	ld b,(hl)		;7bc7	46		F
	inc hl			;7bc8	23		#
	ld c,(hl)		;7bc9	4e		N
	inc hl			;7bca	23		#
	call sub_7aa8h		;7bcb	cd a8 7a	. . z
	pop hl			;7bce	e1		.
	pop bc			;7bcf	c1		.
	inc hl			;7bd0	23		#
	djnz l7baah		;7bd1	10 d7		. .
	jr l7b9bh		;7bd3	18 c6		. .
l7bd5h:
	ld b,a			;7bd5	47		G
l7bd6h:
	push hl			;7bd6	e5		.
	push bc			;7bd7	c5		.
	ld l,(hl)		;7bd8	6e		n
	ld h,000h		;7bd9	26 00		& .
	add hl,hl		;7bdb	29		)
	ld de,(0ca27h)		;7bdc	ed 5b 27 ca	. [ ' .
	add hl,de		;7be0	19		.
	ld e,(hl)		;7be1	5e		^
	inc hl			;7be2	23		#
	ld d,(hl)		;7be3	56		V
	ex de,hl		;7be4	eb		.
	ld bc,0ca29h		;7be5	01 29 ca	. ) .
	ld a,(bc)		;7be8	0a		.
	ld e,a			;7be9	5f		_
	add a,(hl)		;7bea	86		.
	ld (bc),a		;7beb	02		.
	inc bc			;7bec	03		.
	inc hl			;7bed	23		#
	ld a,(bc)		;7bee	0a		.
	ld d,a			;7bef	57		W
	add a,(hl)		;7bf0	86		.
	ld (bc),a		;7bf1	02		.
	inc hl			;7bf2	23		#
	ld b,(hl)		;7bf3	46		F
	inc hl			;7bf4	23		#
	ld c,(hl)		;7bf5	4e		N
	inc hl			;7bf6	23		#
	call sub_7aa8h		;7bf7	cd a8 7a	. . z
	pop bc			;7bfa	c1		.
	pop hl			;7bfb	e1		.
	djnz l7bd6h		;7bfc	10 d8		. .
	inc hl			;7bfe	23		#
	jr l7b9bh		;7bff	18 9a		. .
sub_7c01h:
	ld c,(hl)		;7c01	4e		N
	ld b,000h		;7c02	06 00		. .
	inc hl			;7c04	23		#
	dec c			;7c05	0d		.
	ld de,0d700h		;7c06	11 00 d7	. . .
	ldir			;7c09	ed b0		. .
	ld hl,0d700h		;7c0b	21 00 d7	! . .
	ret			;7c0e	c9		.
	push ix			;7c0f	dd e5		. .
	push iy			;7c11	fd e5		. .
	push iy			;7c13	fd e5		. .
	push ix			;7c15	dd e5		. .
	pop iy			;7c17	fd e1		. .
	pop ix			;7c19	dd e1		. .
	ld a,(ix+000h)		;7c1b	dd 7e 00	. ~ .
	call sub_7c26h		;7c1e	cd 26 7c	. & |
	pop iy			;7c21	fd e1		. .
	pop ix			;7c23	dd e1		. .
	ret			;7c25	c9		.
sub_7c26h:
	ret			;7c26	c9		.
sub_7c27h:
	bit 4,(ix+015h)		;7c27	dd cb 15 66	. . . f
	ret z			;7c2b	c8		.
	ld d,(ix+00ah)		;7c2c	dd 56 0a	. V .
	ld e,(ix+008h)		;7c2f	dd 5e 08	. ^ .
	inc d			;7c32	14		.
	inc e			;7c33	1c		.
	call sub_7b18h		;7c34	cd 18 7b	. . {
	jp nc,l6each		;7c37	d2 ac 6e	. . n
	ld a,(de)		;7c3a	1a		.
	ld l,a			;7c3b	6f		o
	ld h,0deh		;7c3c	26 de		& .
	ld a,(hl)		;7c3e	7e		~
	rrca			;7c3f	0f		.
	ret nc			;7c40	d0		.
	jp l6each		;7c41	c3 ac 6e	. . n
sub_7c44h:
	or a			;7c44	b7		.
	bit 7,(ix+014h)		;7c45	dd cb 14 7e	. . . ~
	ret z			;7c49	c8		.
	ld a,(ix+004h)		;7c4a	dd 7e 04	. ~ .
	ld (ix+004h),000h	;7c4d	dd 36 04 00	. 6 . .
	and a			;7c51	a7		.
	ret z			;7c52	c8		.
	ld b,a			;7c53	47		G
	ld a,(ix+016h)		;7c54	dd 7e 16	. ~ .
	sub b			;7c57	90		.
	ld (ix+016h),a		;7c58	dd 77 16	. w .
	push af			;7c5b	f5		.
	ld a,016h		;7c5c	3e 16		> .
	call 04af0h		;7c5e	cd f0 4a	. . J
	pop af			;7c61	f1		.
	ret			;7c62	c9		.
sub_7c63h:
	ld a,(ix+03fh)		;7c63	dd 7e 3f	. ~ ?
	and a			;7c66	a7		.
	ld c,001h		;7c67	0e 01		. .
	jr z,l7c77h		;7c69	28 0c		( .
	ld hl,0ce48h		;7c6b	21 48 ce	! H .
	res 1,(hl)		;7c6e	cb 8e		. .
	dec hl			;7c70	2b		+
	ld a,(hl)		;7c71	7e		~
	ld c,a			;7c72	4f		O
	and a			;7c73	a7		.
	jr z,l7c77h		;7c74	28 01		( .
	dec (hl)		;7c76	35		5
l7c77h:
	bit 7,(ix+014h)		;7c77	dd cb 14 7e	. . . ~
	ret z			;7c7b	c8		.
	ld a,(ix+004h)		;7c7c	dd 7e 04	. ~ .
	ld (ix+004h),000h	;7c7f	dd 36 04 00	. 6 . .
	and a			;7c83	a7		.
	ret z			;7c84	c8		.
	ld b,a			;7c85	47		G
	ld a,c			;7c86	79		y
	and a			;7c87	a7		.
	jr nz,l7c8fh		;7c88	20 05		  .
	ld (hl),004h		;7c8a	36 04		6 .
	inc hl			;7c8c	23		#
	set 1,(hl)		;7c8d	cb ce		. .
l7c8fh:
	ld a,(ix+016h)		;7c8f	dd 7e 16	. ~ .
	sub b			;7c92	90		.
	ld (ix+016h),a		;7c93	dd 77 16	. w .
	push af			;7c96	f5		.
	ld b,a			;7c97	47		G
	ld a,(0ce4ah)		;7c98	3a 4a ce	: J .
	cp b			;7c9b	b8		.
	jr c,l7ca0h		;7c9c	38 02		8 .
	set 0,(hl)		;7c9e	cb c6		. .
l7ca0h:
	ld a,025h		;7ca0	3e 25		> %
	call 04af0h		;7ca2	cd f0 4a	. . J
	pop af			;7ca5	f1		.
	ret			;7ca6	c9		.
	ld (ix+004h),000h	;7ca7	dd 36 04 00	. 6 . .
	ret			;7cab	c9		.
	ld a,(ix+004h)		;7cac	dd 7e 04	. ~ .
	and a			;7caf	a7		.
	ret z			;7cb0	c8		.
	ld (ix+004h),000h	;7cb1	dd 36 04 00	. 6 . .
	ld b,a			;7cb5	47		G
	ld a,(ix+016h)		;7cb6	dd 7e 16	. ~ .
	sub b			;7cb9	90		.
	ld (ix+016h),a		;7cba	dd 77 16	. w .
	ret			;7cbd	c9		.
	call sub_7d0ah		;7cbe	cd 0a 7d	. . }
	jr l7cd9h		;7cc1	18 16		. .
sub_7cc3h:
	ld a,004h		;7cc3	3e 04		> .
	ld (ix+015h),a		;7cc5	dd 77 15	. w .
	res 7,(ix+014h)		;7cc8	dd cb 14 be	. . . .
	call sub_7d5eh		;7ccc	cd 5e 7d	. ^ }
	call sub_7d1bh		;7ccf	cd 1b 7d	. . }
	call sub_7d0ah		;7cd2	cd 0a 7d	. . }
	ld a,(hl)		;7cd5	7e		~
	ld (ix+000h),a		;7cd6	dd 77 00	. w .
l7cd9h:
	inc hl			;7cd9	23		#
	ld a,(hl)		;7cda	7e		~
	push hl			;7cdb	e5		.
	call 04af0h		;7cdc	cd f0 4a	. . J
	pop hl			;7cdf	e1		.
l7ce0h:
	inc hl			;7ce0	23		#
	ld l,(hl)		;7ce1	6e		n
	dec l			;7ce2	2d		-
	ld h,000h		;7ce3	26 00		& .
	add hl,hl		;7ce5	29		)
	ld de,l7cf6h		;7ce6	11 f6 7c	. . |
	add hl,de		;7ce9	19		.
	ld a,(hl)		;7cea	7e		~
	add a,001h		;7ceb	c6 01		. .
	ret c			;7ced	d8		.
	ld e,(hl)		;7cee	5e		^
	inc hl			;7cef	23		#
	ld d,(hl)		;7cf0	56		V
	call sub_7e03h		;7cf1	cd 03 7e	. . ~
	scf			;7cf4	37		7
	ret			;7cf5	c9		.
l7cf6h:
	rst 38h			;7cf6	ff		.
	rst 38h			;7cf7	ff		.
	jr nz,l7cfah		;7cf8	20 00		  .
l7cfah:
	ld b,b			;7cfa	40		@
	nop			;7cfb	00		.
	ld h,b			;7cfc	60		`
	nop			;7cfd	00		.
	nop			;7cfe	00		.
	ld bc,00200h		;7cff	01 00 02	. . .
	nop			;7d02	00		.
	inc b			;7d03	04		.
	nop			;7d04	00		.
	jr nz,l7d07h		;7d05	20 00		  .
l7d07h:
	ld b,b			;7d07	40		@
	nop			;7d08	00		.
	ld d,b			;7d09	50		P
sub_7d0ah:
	ld a,(ix+000h)		;7d0a	dd 7e 00	. ~ .
	ld h,000h		;7d0d	26 00		& .
	ld l,a			;7d0f	6f		o
	add hl,hl		;7d10	29		)
	add a,l			;7d11	85		.
	ld l,a			;7d12	6f		o
	jr nc,l7d16h		;7d13	30 01		0 .
	inc h			;7d15	24		$
l7d16h:
	ld de,l7e74h		;7d16	11 74 7e	. t ~
	add hl,de		;7d19	19		.
	ret			;7d1a	c9		.
sub_7d1bh:
	call sub_6eb4h		;7d1b	cd b4 6e	. . n
	xor a			;7d1e	af		.
	ld (ix+001h),a		;7d1f	dd 77 01	. w .
	ld (ix+034h),a		;7d22	dd 77 34	. w 4
	ld (ix+038h),a		;7d25	dd 77 38	. w 8
	ld (ix+005h),a		;7d28	dd 77 05	. w .
	ld (ix+006h),a		;7d2b	dd 77 06	. w .
	ld (ix+017h),a		;7d2e	dd 77 17	. w .
	ld (ix+00bh),a		;7d31	dd 77 0b	. w .
	ld (ix+00ch),a		;7d34	dd 77 0c	. w .
	ld (ix+00dh),a		;7d37	dd 77 0d	. w .
	ld (ix+00eh),a		;7d3a	dd 77 0e	. w .
	ret			;7d3d	c9		.
sub_7d3eh:
	ld a,(ix+034h)		;7d3e	dd 7e 34	. ~ 4
	ld b,(ix+02dh)		;7d41	dd 46 2d	. F -
	and a			;7d44	a7		.
	ret z			;7d45	c8		.
	push af			;7d46	f5		.
	sla a			;7d47	cb 27		. '
	call c,sub_7d89h	;7d49	dc 89 7d	. . }
	pop af			;7d4c	f1		.
	sla a			;7d4d	cb 27		. '
	sla a			;7d4f	cb 27		. '
	ret c			;7d51	d8		.
	and a			;7d52	a7		.
	ret z			;7d53	c8		.
sub_7d54h:
	call sub_68deh		;7d54	cd de 68	. . h
	ret c			;7d57	d8		.
	ret nz			;7d58	c0		.
	dec (iy+037h)		;7d59	fd 35 37	. 5 7
	jr l7da6h		;7d5c	18 48		. H
sub_7d5eh:
	ld a,(ix+034h)		;7d5e	dd 7e 34	. ~ 4
	ld b,(ix+02dh)		;7d61	dd 46 2d	. F -
	and a			;7d64	a7		.
	ret z			;7d65	c8		.
	push af			;7d66	f5		.
	sla a			;7d67	cb 27		. '
	call c,sub_7d89h	;7d69	dc 89 7d	. . }
	pop af			;7d6c	f1		.
	sla a			;7d6d	cb 27		. '
	sla a			;7d6f	cb 27		. '
	ret c			;7d71	d8		.
	and a			;7d72	a7		.
	ret z			;7d73	c8		.
	call sub_7d54h		;7d74	cd 54 7d	. T }
	dec (iy+03bh)		;7d77	fd 35 3b	. 5 ;
	ret nz			;7d7a	c0		.
	ld a,(iy+024h)		;7d7b	fd 7e 24	. ~ $
	and a			;7d7e	a7		.
	ret nz			;7d7f	c0		.
	ld a,(iy+03dh)		;7d80	fd 7e 3d	. ~ =
	and a			;7d83	a7		.
	ret z			;7d84	c8		.
	inc (ix+03dh)		;7d85	dd 34 3d	. 4 =
	ret			;7d88	c9		.
sub_7d89h:
	ld a,b			;7d89	78		x
	ld b,014h		;7d8a	06 14		. .
	ld hl,0ceb4h		;7d8c	21 b4 ce	! . .
	ld de,00040h		;7d8f	11 40 00	. @ .
l7d92h:
	cp (hl)			;7d92	be		.
	jr nz,l7d97h		;7d93	20 02		  .
	set 6,(hl)		;7d95	cb f6		. .
l7d97h:
	add hl,de		;7d97	19		.
	djnz l7d92h		;7d98	10 f8		. .
	jr l7da6h		;7d9a	18 0a		. .
l7d9ch:
	bit 6,(ix+034h)		;7d9c	dd cb 34 76	. . 4 v
	ret z			;7da0	c8		.
	ld (ix+004h),0ffh	;7da1	dd 36 04 ff	. 6 . .
	ret			;7da5	c9		.
l7da6h:
	ld b,(ix+035h)		;7da6	dd 46 35	. F 5
	ld c,(ix+036h)		;7da9	dd 4e 36	. N 6
	ld a,b			;7dac	78		x
	or c			;7dad	b1		.
	ret z			;7dae	c8		.
	ld a,b			;7daf	78		x
	call sub_68b9h		;7db0	cd b9 68	. . h
	jr c,l7db9h		;7db3	38 04		8 .
	set 7,(iy+035h)		;7db5	fd cb 35 fe	. . 5 .
l7db9h:
	ld a,c			;7db9	79		y
	call sub_68c4h		;7dba	cd c4 68	. . h
	ret c			;7dbd	d8		.
	set 7,(iy+036h)		;7dbe	fd cb 36 fe	. . 6 .
	ret			;7dc2	c9		.
	ld a,(ix+000h)		;7dc3	dd 7e 00	. ~ .
	call sub_7dd8h		;7dc6	cd d8 7d	. . }
	inc hl			;7dc9	23		#
	jp l7ce0h		;7dca	c3 e0 7c	. . |
	ld a,(ix+000h)		;7dcd	dd 7e 00	. ~ .
	call sub_7dd8h		;7dd0	cd d8 7d	. . }
	inc hl			;7dd3	23		#
	ld a,(hl)		;7dd4	7e		~
	jp 04af5h		;7dd5	c3 f5 4a	. . J
sub_7dd8h:
	ld h,000h		;7dd8	26 00		& .
	ld l,a			;7dda	6f		o
	ld e,a			;7ddb	5f		_
	ld d,h			;7ddc	54		T
	add hl,hl		;7ddd	29		)
	add hl,de		;7dde	19		.
	ld de,l7e74h		;7ddf	11 74 7e	. t ~
	add hl,de		;7de2	19		.
	ret			;7de3	c9		.
l7de4h:
	call l7df1h		;7de4	cd f1 7d	. . }
	ld hl,00000h		;7de7	21 00 00	! . .
	ld (0c922h),hl		;7dea	22 22 c9	" " .
	ld (0c923h),hl		;7ded	22 23 c9	" # .
	ret			;7df0	c9		.
l7df1h:
	ld hl,00000h		;7df1	21 00 00	! . .
	ld (0cb0ah),hl		;7df4	22 0a cb	" . .
	ld (0cb0ch),hl		;7df7	22 0c cb	" . .
	ld (0cb10h),hl		;7dfa	22 10 cb	" . .
	ld a,050h		;7dfd	3e 50		> P
	ld (0cb10h),a		;7dff	32 10 cb	2 . .
	ret			;7e02	c9		.
sub_7e03h:
	ld hl,0cb0bh		;7e03	21 0b cb	! . .
	ld a,(hl)		;7e06	7e		~
	add a,e			;7e07	83		.
	daa			;7e08	27		'
	ld (hl),a		;7e09	77		w
	inc l			;7e0a	2c		,
	ld a,(hl)		;7e0b	7e		~
	adc a,d			;7e0c	8a		.
	daa			;7e0d	27		'
	ld (hl),a		;7e0e	77		w
	inc hl			;7e0f	23		#
	ld a,(hl)		;7e10	7e		~
	adc a,000h		;7e11	ce 00		. .
	daa			;7e13	27		'
	ld (hl),a		;7e14	77		w
	jr nc,l7e29h		;7e15	30 12		0 .
	ld de,0c924h		;7e17	11 24 c9	. $ .
	ld a,099h		;7e1a	3e 99		> .
	ld (hl),a		;7e1c	77		w
	ld (de),a		;7e1d	12		.
	dec l			;7e1e	2d		-
	dec e			;7e1f	1d		.
	ld (hl),a		;7e20	77		w
	ld (de),a		;7e21	12		.
	dec l			;7e22	2d		-
	dec e			;7e23	1d		.
	ld a,090h		;7e24	3e 90		> .
	ld (hl),a		;7e26	77		w
	ld (de),a		;7e27	12		.
	ret			;7e28	c9		.
l7e29h:
	ex de,hl		;7e29	eb		.
	ld hl,0cb11h		;7e2a	21 11 cb	! . .
	ld a,(de)		;7e2d	1a		.
	cp (hl)			;7e2e	be		.
	jr c,l7e50h		;7e2f	38 1f		8 .
	dec e			;7e31	1d		.
	dec l			;7e32	2d		-
	ld a,(de)		;7e33	1a		.
	cp (hl)			;7e34	be		.
	jr c,l7e50h		;7e35	38 19		8 .
	ld a,(hl)		;7e37	7e		~
	add a,050h		;7e38	c6 50		. P
	daa			;7e3a	27		'
	ld (hl),a		;7e3b	77		w
	inc l			;7e3c	2c		,
	ld a,(hl)		;7e3d	7e		~
	adc a,000h		;7e3e	ce 00		. .
	daa			;7e40	27		'
	ld (hl),a		;7e41	77		w
	ld hl,0cb0fh		;7e42	21 0f cb	! . .
	ld a,(hl)		;7e45	7e		~
	add a,001h		;7e46	c6 01		. .
	daa			;7e48	27		'
	ret c			;7e49	d8		.
	ld (hl),a		;7e4a	77		w
	ld a,00fh		;7e4b	3e 0f		> .
	call 04af0h		;7e4d	cd f0 4a	. . J
l7e50h:
	ld hl,0cb0dh		;7e50	21 0d cb	! . .
	ld de,0c924h		;7e53	11 24 c9	. $ .
	ld a,(de)		;7e56	1a		.
	sub (hl)		;7e57	96		.
	jr c,l7e67h		;7e58	38 0d		8 .
	ret nz			;7e5a	c0		.
	dec l			;7e5b	2d		-
	dec e			;7e5c	1d		.
	ld a,(de)		;7e5d	1a		.
	sub (hl)		;7e5e	96		.
	jr c,l7e67h		;7e5f	38 06		8 .
	ret nz			;7e61	c0		.
	dec l			;7e62	2d		-
	dec e			;7e63	1d		.
	ld a,(de)		;7e64	1a		.
	sub (hl)		;7e65	96		.
	ret nc			;7e66	d0		.
l7e67h:
	ld hl,0cb0bh		;7e67	21 0b cb	! . .
	ld de,0c922h		;7e6a	11 22 c9	. " .
	ld bc,00003h		;7e6d	01 03 00	. . .
	ldir			;7e70	ed b0		. .
	ret			;7e72	c9		.
	ret			;7e73	c9		.
l7e74h:
	ld h,d			;7e74	62		b
	ld de,l6201h		;7e75	11 01 62	. . b
	ld de,l6201h		;7e78	11 01 62	. . b
	ld de,l6201h		;7e7b	11 01 62	. . b
	ld de,l6201h		;7e7e	11 01 62	. . b
	ld de,l6201h		;7e81	11 01 62	. . b
	ld de,l6201h		;7e84	11 01 62	. . b
	ld de,l6201h		;7e87	11 01 62	. . b
	ld de,l6201h		;7e8a	11 01 62	. . b
	ld de,l6201h		;7e8d	11 01 62	. . b
	ld de,l6201h		;7e90	11 01 62	. . b
	ld de,l6201h		;7e93	11 01 62	. . b
	ld de,l6201h		;7e96	11 01 62	. . b
	ld de,l6201h		;7e99	11 01 62	. . b
	ld de,l6201h		;7e9c	11 01 62	. . b
	inc d			;7e9f	14		.
	ld b,062h		;7ea0	06 62		. b
	ld de,l6201h		;7ea2	11 01 62	. . b
	djnz $+4		;7ea5	10 02		. .
	ld h,d			;7ea7	62		b
	djnz $+4		;7ea8	10 02		. .
	ld h,d			;7eaa	62		b
	djnz $+4		;7eab	10 02		. .
	ld h,d			;7ead	62		b
	djnz l7eb2h		;7eae	10 02		. .
	ld l,d			;7eb0	6a		j
	ld c,l			;7eb1	4d		M
l7eb2h:
	ex af,af'		;7eb2	08		.
	ld h,d			;7eb3	62		b
	djnz $+4		;7eb4	10 02		. .
	ld h,d			;7eb6	62		b
	djnz $+4		;7eb7	10 02		. .
	ld h,d			;7eb9	62		b
	djnz l7ebfh		;7eba	10 03		. .
	ld h,d			;7ebc	62		b
	djnz $+4		;7ebd	10 02		. .
l7ebfh:
	ld h,d			;7ebf	62		b
	ld de,l6202h		;7ec0	11 02 62	. . b
	djnz $+4		;7ec3	10 02		. .
	ld h,d			;7ec5	62		b
	djnz l7ecah		;7ec6	10 02		. .
	ld l,e			;7ec8	6b		k
	inc de			;7ec9	13		.
l7ecah:
	inc b			;7eca	04		.
	ld h,d			;7ecb	62		b
	djnz l7ed0h		;7ecc	10 02		. .
	ld h,d			;7ece	62		b
	inc de			;7ecf	13		.
l7ed0h:
	dec b			;7ed0	05		.
	ld l,e			;7ed1	6b		k
	inc d			;7ed2	14		.
	inc bc			;7ed3	03		.
	ld h,d			;7ed4	62		b
	ld de,l6202h		;7ed5	11 02 62	. . b
	ld (de),a		;7ed8	12		.
	inc bc			;7ed9	03		.
	ld l,e			;7eda	6b		k
	inc de			;7edb	13		.
	inc b			;7edc	04		.
	ld h,d			;7edd	62		b
	djnz $+5		;7ede	10 03		. .
	ld h,d			;7ee0	62		b
	ld de,l6201h		;7ee1	11 01 62	. . b
	ld de,l6b02h		;7ee4	11 02 6b	. . k
	inc de			;7ee7	13		.
	inc b			;7ee8	04		.
	ld h,d			;7ee9	62		b
	inc de			;7eea	13		.
	inc b			;7eeb	04		.
	ld l,e			;7eec	6b		k
	inc d			;7eed	14		.
	ld b,062h		;7eee	06 62		. b
	ld de,l6202h		;7ef0	11 02 62	. . b
	ld de,06b01h		;7ef3	11 01 6b	. . k
	inc de			;7ef6	13		.
	dec b			;7ef7	05		.
	ld h,d			;7ef8	62		b
	ld de,l6205h		;7ef9	11 05 62	. . b
	ld de,00104h		;7efc	11 04 01	. . .
	inc e			;7eff	1c		.
	ld b,062h		;7f00	06 62		. b
	ld de,l6202h		;7f02	11 02 62	. . b
	ld de,l6206h		;7f05	11 06 62	. . b
	inc d			;7f08	14		.
	inc b			;7f09	04		.
	ld h,d			;7f0a	62		b
	ld de,l6202h		;7f0b	11 02 62	. . b
	inc d			;7f0e	14		.
	dec b			;7f0f	05		.
	ld h,d			;7f10	62		b
	inc de			;7f11	13		.
	inc b			;7f12	04		.
	ld h,d			;7f13	62		b
	inc de			;7f14	13		.
	ld b,062h		;7f15	06 62		. b
	ld de,l6201h		;7f17	11 01 62	. . b
	djnz l7f1dh		;7f1a	10 01		. .
	ld l,e			;7f1c	6b		k
l7f1dh:
	inc de			;7f1d	13		.
	ld b,06bh		;7f1e	06 6b		. k
	ld hl,l6207h		;7f20	21 07 62	! . b
	ld de,l6204h		;7f23	11 04 62	. . b
	ld de,l6a01h		;7f26	11 01 6a	. . j
	ld de,l6a01h		;7f29	11 01 6a	. . j
	ld de,l6a01h		;7f2c	11 01 6a	. . j
	ld c,l			;7f2f	4d		M
	ex af,af'		;7f30	08		.
	nop			;7f31	00		.
	ld de,l6201h		;7f32	11 01 62	. . b
	djnz l7f38h		;7f35	10 01		. .
	ld h,d			;7f37	62		b
l7f38h:
	ld de,l6201h		;7f38	11 01 62	. . b
	djnz $+4		;7f3b	10 02		. .
	ld h,d			;7f3d	62		b
	djnz l7f41h		;7f3e	10 01		. .
	ld h,d			;7f40	62		b
l7f41h:
	djnz l7f45h		;7f41	10 02		. .
	ld h,d			;7f43	62		b
	ld (de),a		;7f44	12		.
l7f45h:
	ld (bc),a		;7f45	02		.
	ld h,d			;7f46	62		b
	inc de			;7f47	13		.
	ld bc,01162h		;7f48	01 62 11	. b .
	ld bc,01162h		;7f4b	01 62 11	. b .
	ld bc,01062h		;7f4e	01 62 10	. b .
	ld (bc),a		;7f51	02		.
	ld h,d			;7f52	62		b
	djnz $+4		;7f53	10 02		. .
	ld h,d			;7f55	62		b
	djnz $+5		;7f56	10 03		. .
	ld h,d			;7f58	62		b
	ld de,l6203h		;7f59	11 03 62	. . b
	inc de			;7f5c	13		.
	ld b,062h		;7f5d	06 62		. b
	ld de,l6b03h		;7f5f	11 03 6b	. . k
	inc de			;7f62	13		.
	rlca			;7f63	07		.
	ld h,d			;7f64	62		b
	ld de,l6207h		;7f65	11 07 62	. . b
	ld de,l6201h		;7f68	11 01 62	. . b
	ld de,l6201h		;7f6b	11 01 62	. . b
	ld de,l6201h		;7f6e	11 01 62	. . b
	ld de,06b01h		;7f71	11 01 6b	. . k
	inc de			;7f74	13		.
	dec b			;7f75	05		.
	ld l,e			;7f76	6b		k
	inc d			;7f77	14		.
	rlca			;7f78	07		.
	ld h,d			;7f79	62		b
	ld de,l6201h		;7f7a	11 01 62	. . b
	ld de,l6201h		;7f7d	11 01 62	. . b
	ld de,l6201h		;7f80	11 01 62	. . b
	ld de,l6201h		;7f83	11 01 62	. . b
	ld de,l6201h		;7f86	11 01 62	. . b
	ld de,l6201h		;7f89	11 01 62	. . b
	ld de,l6201h		;7f8c	11 01 62	. . b
	ld de,l6201h		;7f8f	11 01 62	. . b
	ld de,l6201h		;7f92	11 01 62	. . b
	ld de,l6201h		;7f95	11 01 62	. . b
	ld de,l6201h		;7f98	11 01 62	. . b
	ld de,l6201h		;7f9b	11 01 62	. . b
	ld de,l6a01h		;7f9e	11 01 6a	. . j
	ld c,l			;7fa1	4d		M
	ex af,af'		;7fa2	08		.
	ld h,d			;7fa3	62		b
	ld de,l6201h		;7fa4	11 01 62	. . b
	ld de,l6206h		;7fa7	11 06 62	. . b
	ld de,l6201h		;7faa	11 01 62	. . b
	djnz $+4		;7fad	10 02		. .
	ld h,d			;7faf	62		b
	ld de,l6201h		;7fb0	11 01 62	. . b
	ld de,l6201h		;7fb3	11 01 62	. . b
	ld de,l6201h		;7fb6	11 01 62	. . b
	ld de,l6201h		;7fb9	11 01 62	. . b
	ld de,l6201h		;7fbc	11 01 62	. . b
	djnz l7fc2h		;7fbf	10 01		. .
	ld h,d			;7fc1	62		b
l7fc2h:
	ld (de),a		;7fc2	12		.
	ld bc,01062h		;7fc3	01 62 10	. b .
	ld bc,04d6ah		;7fc6	01 6a 4d	. j M
	ex af,af'		;7fc9	08		.
	ld h,d			;7fca	62		b
	ld de,l6201h		;7fcb	11 01 62	. . b
	ld de,l6203h		;7fce	11 03 62	. . b
	inc de			;7fd1	13		.
	ld bc,01362h		;7fd2	01 62 13	. b .
	ld bc,01462h		;7fd5	01 62 14	. b .
	ld bc,04d6ah		;7fd8	01 6a 4d	. j M
	add hl,bc		;7fdb	09		.
	ld h,d			;7fdc	62		b
	ld c,l			;7fdd	4d		M
	add hl,bc		;7fde	09		.
	ld h,d			;7fdf	62		b
	ld c,l			;7fe0	4d		M
	ld a,(bc)		;7fe1	0a		.
	ld l,d			;7fe2	6a		j
	ld c,l			;7fe3	4d		M
	ex af,af'		;7fe4	08		.
	ld l,d			;7fe5	6a		j
	ld c,l			;7fe6	4d		M
	add hl,bc		;7fe7	09		.
	ld h,d			;7fe8	62		b
	inc de			;7fe9	13		.
	ld bc,0ff00h		;7fea	01 00 ff	. . .
	rst 38h			;7fed	ff		.
	rst 38h			;7fee	ff		.
	rst 38h			;7fef	ff		.
	rst 38h			;7ff0	ff		.
	rst 38h			;7ff1	ff		.
	rst 38h			;7ff2	ff		.
	rst 38h			;7ff3	ff		.
	rst 38h			;7ff4	ff		.
	rst 38h			;7ff5	ff		.
	rst 38h			;7ff6	ff		.
	rst 38h			;7ff7	ff		.
	rst 38h			;7ff8	ff		.
	rst 38h			;7ff9	ff		.
	rst 38h			;7ffa	ff		.
	rst 38h			;7ffb	ff		.
	rst 38h			;7ffc	ff		.
	rst 38h			;7ffd	ff		.
	rst 38h			;7ffe	ff		.
	rst 38h			;7fff	ff		.
