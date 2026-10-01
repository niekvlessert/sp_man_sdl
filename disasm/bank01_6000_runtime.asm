; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank01_6000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank01.bin

	org 06000h

	jp l6021h		;6000	c3 21 60	. ! `
	jp l6bd6h		;6003	c3 d6 6b	. . k
	jp l6b33h		;6006	c3 33 6b	. 3 k
	jp l6c6ah		;6009	c3 6a 6c	. j l
sub_600ch:
	jp 0a65bh		;600c	c3 5b a6	. [ .
sub_600fh:
	jp 0a6a5h		;600f	c3 a5 a6	. . .
sub_6012h:
	jp 0a600h		;6012	c3 00 a6	. . .
	jp 0a6a5h		;6015	c3 a5 a6	. . .
sub_6018h:
	jp 0a62ah		;6018	c3 2a a6	. * .
sub_601bh:
	jp 0a69fh		;601b	c3 9f a6	. . .
sub_601eh:
	jp 0a651h		;601e	c3 51 a6	. Q .
l6021h:
	ld hl,0c903h		;6021	21 03 c9	! . .
	inc (hl)		;6024	34		4
	ld bc,(0c900h)		;6025	ed 4b 00 c9	. K . .
	ld a,c			;6029	79		y
	cp 006h			;602a	fe 06		. .
	jp nc,04ae0h		;602c	d2 e0 4a	. . J
	call 0461ah		;602f	cd 1a 46	. . F
	ld a,060h		;6032	3e 60		> `
	ld d,b			;6034	50		P
	ld h,b			;6035	60		`
	sbc a,l			;6036	9d		.
	ld h,b			;6037	60		`
	in a,(060h)		;6038	db 60		. `
	or b			;603a	b0		.
	ld h,c			;603b	61		a
	jp po,0e561h		;603c	e2 61 e5	. a .
	ld hl,0f0f8h		;603f	21 f8 f0	! . .
	ld (hl),000h		;6042	36 00		6 .
	pop hl			;6044	e1		.
	call 04725h		;6045	cd 25 47	. % G
	jp l621fh		;6048	c3 1f 62	. . b
	ld a,005h		;604b	3e 05		> .
	jp l622dh		;604d	c3 2d 62	. - b
	ld a,b			;6050	78		x
	and a			;6051	a7		.
	call nz,sub_623dh	;6052	c4 3d 62	. = b
	ret c			;6055	d8		.
	ld a,b			;6056	78		x
	cp 003h			;6057	fe 03		. .
	jp nc,04ae0h		;6059	d2 e0 4a	. . J
	call 0461ah		;605c	cd 1a 46	. . F
	ld h,l			;605f	65		e
	ld h,b			;6060	60		`
	ld a,e			;6061	7b		{
	ld h,b			;6062	60		`
	sub (hl)		;6063	96		.
	ld h,b			;6064	60		`
	ld hl,0d700h		;6065	21 00 d7	! . .
	ld bc,0000fh		;6068	01 0f 00	. . .
	call 04648h		;606b	cd 48 46	. H F
	push hl			;606e	e5		.
	ld hl,0f0f8h		;606f	21 f8 f0	! . .
	ld (hl),001h		;6072	36 01		6 .
	pop hl			;6074	e1		.
	call sub_6664h		;6075	cd 64 66	. d f
	jp l621ah		;6078	c3 1a 62	. . b
	push hl			;607b	e5		.
	ld hl,0f0f8h		;607c	21 f8 f0	! . .
	ld (hl),008h		;607f	36 08		6 .
	pop hl			;6081	e1		.
	call sub_6707h		;6082	cd 07 67	. . g
	ld a,(0d702h)		;6085	3a 02 d7	: . .
	or a			;6088	b7		.
	ret z			;6089	c8		.
	push hl			;608a	e5		.
	ld hl,0f0f8h		;608b	21 f8 f0	! . .
	ld (hl),009h		;608e	36 09		6 .
	pop hl			;6090	e1		.
	ld a,080h		;6091	3e 80		> .
	jp l6217h		;6093	c3 17 62	. . b
	call sub_6238h		;6096	cd 38 62	. 8 b
	ret nz			;6099	c0		.
	jp l621fh		;609a	c3 1f 62	. . b
	ld a,b			;609d	78		x
	cp 002h			;609e	fe 02		. .
	jp nc,04ae0h		;60a0	d2 e0 4a	. . J
	call 0461ah		;60a3	cd 1a 46	. . F
	xor d			;60a6	aa		.
	ld h,b			;60a7	60		`
	add a,060h		;60a8	c6 60		. `
	ld bc,01000h		;60aa	01 00 10	. . .
l60adh:
	dec bc			;60ad	0b		.
	ld a,b			;60ae	78		x
	or c			;60af	b1		.
	jr nz,l60adh		;60b0	20 fb		  .
	push hl			;60b2	e5		.
	ld hl,0f0f8h		;60b3	21 f8 f0	! . .
	ld (hl),010h		;60b6	36 10		6 .
	pop hl			;60b8	e1		.
	call sub_6981h		;60b9	cd 81 69	. . i
	push hl			;60bc	e5		.
	ld hl,0f0f8h		;60bd	21 f8 f0	! . .
	ld (hl),011h		;60c0	36 11		6 .
	pop hl			;60c2	e1		.
	jp l621ah		;60c3	c3 1a 62	. . b
	ld bc,01000h		;60c6	01 00 10	. . .
l60c9h:
	dec bc			;60c9	0b		.
	ld a,b			;60ca	78		x
	or c			;60cb	b1		.
	jr nz,l60c9h		;60cc	20 fb		  .
	push hl			;60ce	e5		.
	ld hl,0f0f8h		;60cf	21 f8 f0	! . .
	ld (hl),012h		;60d2	36 12		6 .
	pop hl			;60d4	e1		.
	call sub_6994h		;60d5	cd 94 69	. . i
	jp l621fh		;60d8	c3 1f 62	. . b
	ld a,b			;60db	78		x
	cp 002h			;60dc	fe 02		. .
	jp nc,04ae0h		;60de	d2 e0 4a	. . J
	call 0461ah		;60e1	cd 1a 46	. . F
	ret pe			;60e4	e8		.
	ld h,b			;60e5	60		`
	sbc a,c			;60e6	99		.
	ld h,c			;60e7	61		a
	push hl			;60e8	e5		.
	ld hl,0f0f8h		;60e9	21 f8 f0	! . .
	ld (hl),020h		;60ec	36 20		6  
	pop hl			;60ee	e1		.
	call sub_6a92h		;60ef	cd 92 6a	. . j
	call sub_600ch		;60f2	cd 0c 60	. . `
	call 04c7ah		;60f5	cd 7a 4c	. z L
	ld hl,l615dh		;60f8	21 5d 61	! ] a
	ld de,02824h		;60fb	11 24 28	. $ (
	ld a,0f1h		;60fe	3e f1		> .
	call l6c6ah		;6100	cd 6a 6c	. j l
	ld hl,l618ah		;6103	21 8a 61	! . a
	call sub_6157h		;6106	cd 57 61	. W a
	xor a			;6109	af		.
	ld (0c914h),a		;610a	32 14 c9	2 . .
l610dh:
	ld a,(0c914h)		;610d	3a 14 c9	: . .
	cp 0f0h			;6110	fe f0		. .
	jr c,l610dh		;6112	38 f9		8 .
	ld hl,l616ch		;6114	21 6c 61	! l a
	ld de,02808h		;6117	11 08 28	. . (
	ld a,0f2h		;611a	3e f2		> .
	call l6c6ah		;611c	cd 6a 6c	. j l
	ld hl,l618fh		;611f	21 8f 61	! . a
	call sub_6157h		;6122	cd 57 61	. W a
	xor a			;6125	af		.
	ld (0c914h),a		;6126	32 14 c9	2 . .
l6129h:
	ld a,(0c914h)		;6129	3a 14 c9	: . .
	cp 0f0h			;612c	fe f0		. .
	jr c,l6129h		;612e	38 f9		8 .
	ld hl,l6194h		;6130	21 94 61	! . a
	call sub_6157h		;6133	cd 57 61	. W a
	xor a			;6136	af		.
	ld (0c914h),a		;6137	32 14 c9	2 . .
l613ah:
	ld a,(0c914h)		;613a	3a 14 c9	: . .
	cp 03ch			;613d	fe 3c		. <
	jr c,l613ah		;613f	38 f9		8 .
	xor a			;6141	af		.
	ld h,a			;6142	67		g
	ld l,a			;6143	6f		o
	ld b,a			;6144	47		G
	ld c,a			;6145	4f		O
	ld d,a			;6146	57		W
	call 047fch		;6147	cd fc 47	. . G
	call 047d2h		;614a	cd d2 47	. . G
	push hl			;614d	e5		.
	ld hl,0f0f8h		;614e	21 f8 f0	! . .
	ld (hl),021h		;6151	36 21		6 !
	pop hl			;6153	e1		.
	jp l621ah		;6154	c3 1a 62	. . b
sub_6157h:
	call 04ce0h		;6157	cd e0 4c	. . L
	jp 04cf5h		;615a	c3 f5 4c	. . L
l615dh:
	jr nz,l61a8h		;615d	20 49		  I
	ld c,(hl)		;615f	4e		N
	jr nz,$+34		;6160	20 20		   
	jr nz,l6195h		;6162	20 31		  1
	jr c,l619fh		;6164	38 39		8 9
	ld l,053h		;6166	2e 53		. S
	ld l,044h		;6168	2e 44		. D
	ld l,000h		;616a	2e 00		. .
l616ch:
	ld b,h			;616c	44		D
	ld b,c			;616d	41		A
	ld c,(hl)		;616e	4e		N
	ld b,a			;616f	47		G
	ld b,l			;6170	45		E
	ld d,d			;6171	52		R
	jr nz,l61c8h		;6172	20 54		  T
	ld c,b			;6174	48		H
	ld d,d			;6175	52		R
	ld b,l			;6176	45		E
	ld b,c			;6177	41		A
	ld d,h			;6178	54		T
	ld b,l			;6179	45		E
	ld c,(hl)		;617a	4e		N
	ld b,l			;617b	45		E
	ld b,h			;617c	44		D
	jr nz,l61ceh		;617d	20 4f		  O
	ld d,l			;617f	55		U
	ld d,d			;6180	52		R
	jr nz,$+73		;6181	20 47		  G
	ld b,c			;6183	41		A
	ld c,h			;6184	4c		L
	ld b,c			;6185	41		A
	ld e,b			;6186	58		X
	ld e,c			;6187	59		Y
	ld l,000h		;6188	2e 00		. .
l618ah:
	ld (hl),e		;618a	73		s
	rla			;618b	17		.
	nop			;618c	00		.
	jr nz,$+1		;618d	20 ff		  .
l618fh:
	nop			;618f	00		.
	djnz $+117		;6190	10 73		. s
	daa			;6192	27		'
	rst 38h			;6193	ff		.
l6194h:
	nop			;6194	00		.
l6195h:
	djnz l6197h		;6195	10 00		. .
l6197h:
	jr nz,$+1		;6197	20 ff		  .
	push hl			;6199	e5		.
	ld hl,0f0f8h		;619a	21 f8 f0	! . .
	ld (hl),022h		;619d	36 22		6 "
l619fh:
	pop hl			;619f	e1		.
	call sub_600fh		;61a0	cd 0f 60	. . `
	ret z			;61a3	c8		.
	push hl			;61a4	e5		.
	ld hl,0f0f8h		;61a5	21 f8 f0	! . .
l61a8h:
	ld (hl),023h		;61a8	36 23		6 #
	pop hl			;61aa	e1		.
	ld a,005h		;61ab	3e 05		> .
	jp l622dh		;61ad	c3 2d 62	. - b
	ld a,b			;61b0	78		x
	cp 002h			;61b1	fe 02		. .
	jp nc,04ae0h		;61b3	d2 e0 4a	. . J
	call 0461ah		;61b6	cd 1a 46	. . F
	cp l			;61b9	bd		.
	ld h,c			;61ba	61		a
	ret nc			;61bb	d0		.
	ld h,c			;61bc	61		a
	push hl			;61bd	e5		.
	ld hl,0f0f8h		;61be	21 f8 f0	! . .
	ld (hl),030h		;61c1	36 30		6 0
	pop hl			;61c3	e1		.
	call sub_64ach		;61c4	cd ac 64	. . d
	push hl			;61c7	e5		.
l61c8h:
	ld hl,0f0f8h		;61c8	21 f8 f0	! . .
	ld (hl),032h		;61cb	36 32		6 2
	pop hl			;61cd	e1		.
l61ceh:
	jr l6216h		;61ce	18 46		. F
	push hl			;61d0	e5		.
	ld hl,0f0f8h		;61d1	21 f8 f0	! . .
	ld (hl),034h		;61d4	36 34		6 4
	pop hl			;61d6	e1		.
	call sub_6256h		;61d7	cd 56 62	. V b
	push hl			;61da	e5		.
	ld hl,0f0f8h		;61db	21 f8 f0	! . .
	ld (hl),035h		;61de	36 35		6 5
	pop hl			;61e0	e1		.
	ret			;61e1	c9		.
	ld a,b			;61e2	78		x
	cp 002h			;61e3	fe 02		. .
	jp nc,04ae0h		;61e5	d2 e0 4a	. . J
	call 0461ah		;61e8	cd 1a 46	. . F
	rst 28h			;61eb	ef		.
	ld h,c			;61ec	61		a
	ld (bc),a		;61ed	02		.
	ld h,d			;61ee	62		b
	push hl			;61ef	e5		.
	ld hl,0f0f8h		;61f0	21 f8 f0	! . .
	ld (hl),020h		;61f3	36 20		6  
	pop hl			;61f5	e1		.
	call sub_77b5h		;61f6	cd b5 77	. . w
	push hl			;61f9	e5		.
	ld hl,0f0f8h		;61fa	21 f8 f0	! . .
	ld (hl),021h		;61fd	36 21		6 !
	pop hl			;61ff	e1		.
	jr l621ah		;6200	18 18		. .
	push hl			;6202	e5		.
	ld hl,0f0f8h		;6203	21 f8 f0	! . .
	ld (hl),022h		;6206	36 22		6 "
	pop hl			;6208	e1		.
	call sub_77f0h		;6209	cd f0 77	. . w
	ret nz			;620c	c0		.
	push hl			;620d	e5		.
	ld hl,0f0f8h		;620e	21 f8 f0	! . .
	ld (hl),023h		;6211	36 23		6 #
	pop hl			;6213	e1		.
	jr l622ch		;6214	18 16		. .
l6216h:
	xor a			;6216	af		.
l6217h:
	ld (0c904h),a		;6217	32 04 c9	2 . .
l621ah:
	ld hl,0c901h		;621a	21 01 c9	! . .
	inc (hl)		;621d	34		4
	ret			;621e	c9		.
l621fh:
	xor a			;621f	af		.
	ld (0c904h),a		;6220	32 04 c9	2 . .
	ld hl,0c900h		;6223	21 00 c9	! . .
	inc (hl)		;6226	34		4
	xor a			;6227	af		.
	ld (0c901h),a		;6228	32 01 c9	2 . .
	ret			;622b	c9		.
l622ch:
	xor a			;622c	af		.
l622dh:
	ld hl,0c900h		;622d	21 00 c9	! . .
	ld (hl),a		;6230	77		w
	inc hl			;6231	23		#
	xor a			;6232	af		.
	ld (hl),a		;6233	77		w
	ld (0c904h),a		;6234	32 04 c9	2 . .
	ret			;6237	c9		.
sub_6238h:
	ld hl,0c904h		;6238	21 04 c9	! . .
	dec (hl)		;623b	35		5
	ret			;623c	c9		.
sub_623dh:
	ld a,(0c907h)		;623d	3a 07 c9	: . .
	or a			;6240	b7		.
	ret z			;6241	c8		.
	ld a,002h		;6242	3e 02		> .
	call l622dh		;6244	cd 2d 62	. - b
	scf			;6247	37		7
	ret			;6248	c9		.
	exx			;6249	d9		.
	call 04a8ch		;624a	cd 8c 4a	. . J
	ld hl,0c921h		;624d	21 21 c9	! ! .
	call 04a63h		;6250	cd 63 4a	. c J
	or a			;6253	b7		.
	exx			;6254	d9		.
	ret			;6255	c9		.
sub_6256h:
	ld hl,0ca02h		;6256	21 02 ca	! . .
	inc (hl)		;6259	34		4
	ld bc,(0ca00h)		;625a	ed 4b 00 ca	. K . .
	ld a,c			;625e	79		y
	cp 005h			;625f	fe 05		. .
	jp nc,04ae0h		;6261	d2 e0 4a	. . J
	call 0461ah		;6264	cd 1a 46	. . F
	ld (hl),c		;6267	71		q
	ld h,d			;6268	62		b
	sub d			;6269	92		.
	ld h,d			;626a	62		b
	pop bc			;626b	c1		.
	ld h,d			;626c	62		b
	dec l			;626d	2d		-
	ld h,e			;626e	63		c
	ld b,b			;626f	40		@
	ld h,h			;6270	64		d
	ld a,b			;6271	78		x
	cp 002h			;6272	fe 02		. .
	jp nc,04ae0h		;6274	d2 e0 4a	. . J
	call 0461ah		;6277	cd 1a 46	. . F
	ld a,(hl)		;627a	7e		~
	ld h,d			;627b	62		b
	adc a,b			;627c	88		.
	ld h,d			;627d	62		b
	push hl			;627e	e5		.
	ld hl,0f0f9h		;627f	21 f9 f0	! . .
	ld (hl),000h		;6282	36 00		6 .
	pop hl			;6284	e1		.
	jp l64a7h		;6285	c3 a7 64	. . d
	push hl			;6288	e5		.
	ld hl,0f0f9h		;6289	21 f9 f0	! . .
	ld (hl),001h		;628c	36 01		6 .
	pop hl			;628e	e1		.
	jp l649eh		;628f	c3 9e 64	. . d
	ld a,b			;6292	78		x
	cp 002h			;6293	fe 02		. .
	jp nc,04ae0h		;6295	d2 e0 4a	. . J
	call 0461ah		;6298	cd 1a 46	. . F
	sbc a,a			;629b	9f		.
	ld h,d			;629c	62		b
	or b			;629d	b0		.
	ld h,d			;629e	62		b
	push hl			;629f	e5		.
	ld hl,0f0f9h		;62a0	21 f9 f0	! . .
	ld (hl),010h		;62a3	36 10		6 .
	pop hl			;62a5	e1		.
	push hl			;62a6	e5		.
	ld hl,0f0f9h		;62a7	21 f9 f0	! . .
	ld (hl),011h		;62aa	36 11		6 .
	pop hl			;62ac	e1		.
	jp l64a7h		;62ad	c3 a7 64	. . d
	push hl			;62b0	e5		.
	ld hl,0f0f9h		;62b1	21 f9 f0	! . .
	ld (hl),012h		;62b4	36 12		6 .
	pop hl			;62b6	e1		.
	push hl			;62b7	e5		.
	ld hl,0f0f9h		;62b8	21 f9 f0	! . .
	ld (hl),003h		;62bb	36 03		6 .
	pop hl			;62bd	e1		.
	jp l649eh		;62be	c3 9e 64	. . d
	ld a,b			;62c1	78		x
	cp 003h			;62c2	fe 03		. .
	jp nc,04ae0h		;62c4	d2 e0 4a	. . J
	call 0461ah		;62c7	cd 1a 46	. . F
	ret nc			;62ca	d0		.
	ld h,d			;62cb	62		b
	ret pe			;62cc	e8		.
	ld h,d			;62cd	62		b
	ex af,af'		;62ce	08		.
	ld h,e			;62cf	63		c
	call 04c7ah		;62d0	cd 7a 4c	. z L
	push hl			;62d3	e5		.
	ld hl,0f0f9h		;62d4	21 f9 f0	! . .
	ld (hl),020h		;62d7	36 20		6  
	pop hl			;62d9	e1		.
	xor a			;62da	af		.
	call 04103h		;62db	cd 03 41	. . A
	push hl			;62de	e5		.
	ld hl,0f0f9h		;62df	21 f9 f0	! . .
	ld (hl),021h		;62e2	36 21		6 !
	pop hl			;62e4	e1		.
	jp l64a7h		;62e5	c3 a7 64	. . d
	push hl			;62e8	e5		.
	ld hl,0f0f9h		;62e9	21 f9 f0	! . .
	ld (hl),028h		;62ec	36 28		6 (
	pop hl			;62ee	e1		.
	xor a			;62ef	af		.
	call 04100h		;62f0	cd 00 41	. . A
	dec a			;62f3	3d		=
	ret m			;62f4	f8		.
	call sub_6300h		;62f5	cd 00 63	. . c
	ld a,003h		;62f8	3e 03		> .
	jp z,l6496h		;62fa	ca 96 64	. . d
	jp l64a7h		;62fd	c3 a7 64	. . d
sub_6300h:
	push af			;6300	f5		.
	ld hl,0c947h		;6301	21 47 c9	! G .
	ld (hl),000h		;6304	36 00		6 .
	pop af			;6306	f1		.
	ret			;6307	c9		.
	call 04b78h		;6308	cd 78 4b	. x K
	call 04c7ah		;630b	cd 7a 4c	. z L
	xor a			;630e	af		.
	ld (0ca0fh),a		;630f	32 0f ca	2 . .
	ld a,(0ca10h)		;6312	3a 10 ca	: . .
	inc a			;6315	3c		<
	cp 009h			;6316	fe 09		. .
	ld (0ca10h),a		;6318	32 10 ca	2 . .
	ld a,004h		;631b	3e 04		> .
	jp nc,l6496h		;631d	d2 96 64	. . d
	call 04c7ah		;6320	cd 7a 4c	. z L
	ld a,003h		;6323	3e 03		> .
	call 04103h		;6325	cd 03 41	. . A
	ld a,001h		;6328	3e 01		> .
	jp l64a3h		;632a	c3 a3 64	. . d
	ld a,b			;632d	78		x
	cp 005h			;632e	fe 05		. .
	jp nc,04ae0h		;6330	d2 e0 4a	. . J
	call 0461ah		;6333	cd 1a 46	. . F
	ld b,b			;6336	40		@
	ld h,e			;6337	63		c
	ld h,a			;6338	67		g
	ld h,e			;6339	63		c
	sbc a,c			;633a	99		.
	ld h,e			;633b	63		c
	rst 0			;633c	c7		.
	ld h,e			;633d	63		c
	push de			;633e	d5		.
	ld h,e			;633f	63		c
	push hl			;6340	e5		.
	ld hl,0f0f9h		;6341	21 f9 f0	! . .
	ld (hl),030h		;6344	36 30		6 0
	pop hl			;6346	e1		.
	call 04b78h		;6347	cd 78 4b	. x K
	call 04c7ah		;634a	cd 7a 4c	. z L
	ld a,(0cb0fh)		;634d	3a 0f cb	: . .
	sub 001h		;6350	d6 01		. .
	daa			;6352	27		'
	ld (0cb0fh),a		;6353	32 0f cb	2 . .
	jp c,l64a7h		;6356	da a7 64	. . d
	call 04c7ah		;6359	cd 7a 4c	. z L
	ld a,001h		;635c	3e 01		> .
	call 04103h		;635e	cd 03 41	. . A
	ld hl,00102h		;6361	21 02 01	! . .
	jp l6492h		;6364	c3 92 64	. . d
	ld a,060h		;6367	3e 60		> `
	ld (0ca02h),a		;6369	32 02 ca	2 . .
	ld a,04bh		;636c	3e 4b		> K
	call 04aebh		;636e	cd eb 4a	. . J
	call sub_63eeh		;6371	cd ee 63	. . c
	ld hl,0641eh		;6374	21 1e 64	! . d
	ld de,02830h		;6377	11 30 28	. 0 (
	ld a,00eh		;637a	3e 0e		> .
	call l6c6ah		;637c	cd 6a 6c	. j l
	ld hl,l6428h		;637f	21 28 64	! ( d
	ld de,03826h		;6382	11 26 38	. & 8
	ld a,00dh		;6385	3e 0d		> .
	call l6c6ah		;6387	cd 6a 6c	. j l
	ld hl,06418h		;638a	21 18 64	! . d
	call sub_63e8h		;638d	cd e8 63	. . c
	ld hl,0641bh		;6390	21 1b 64	! . d
	call sub_63e8h		;6393	cd e8 63	. . c
	jp l64a7h		;6396	c3 a7 64	. . d
	ld a,(0c90ch)		;6399	3a 0c c9	: . .
	bit 4,a			;639c	cb 67		. g
	jr nz,l63afh		;639e	20 0f		  .
	ld a,(0ca02h)		;63a0	3a 02 ca	: . .
	cp 0d8h			;63a3	fe d8		. .
	ld hl,l6413h		;63a5	21 13 64	! . d
	jr z,sub_63e8h		;63a8	28 3e		( >
	or a			;63aa	b7		.
	ret nz			;63ab	c0		.
	jp l64a7h		;63ac	c3 a7 64	. . d
l63afh:
	ld hl,l6437h		;63af	21 37 64	! 7 d
	ld de,01830h		;63b2	11 30 18	. 0 .
	ld a,00ch		;63b5	3e 0c		> .
	call l6c6ah		;63b7	cd 6a 6c	. j l
	ld hl,06411h		;63ba	21 11 64	! . d
	call sub_63e8h		;63bd	cd e8 63	. . c
	ld a,004h		;63c0	3e 04		> .
	call l64a3h		;63c2	cd a3 64	. . d
	jr l63d5h		;63c5	18 0e		. .
	push hl			;63c7	e5		.
	ld hl,0f0f9h		;63c8	21 f9 f0	! . .
	ld (hl),031h		;63cb	36 31		6 1
	pop hl			;63cd	e1		.
	call 049e3h		;63ce	cd e3 49	. . I
	xor a			;63d1	af		.
	jp l622dh		;63d2	c3 2d 62	. - b
l63d5h:
	ld a,(0ca02h)		;63d5	3a 02 ca	: . .
	or a			;63d8	b7		.
	ret nz			;63d9	c0		.
	call 04c7ah		;63da	cd 7a 4c	. z L
	ld a,002h		;63dd	3e 02		> .
	call 04103h		;63df	cd 03 41	. . A
	ld hl,00102h		;63e2	21 02 01	! . .
	jp l6492h		;63e5	c3 92 64	. . d
sub_63e8h:
	call 04ce0h		;63e8	cd e0 4c	. . L
	jp 04cf5h		;63eb	c3 f5 4c	. . L
sub_63eeh:
	ld hl,l6405h		;63ee	21 05 64	! . d
	ld b,006h		;63f1	06 06		. .
	call 04a1fh		;63f3	cd 1f 4a	. . J
	call 04760h		;63f6	cd 60 47	. ` G
	xor a			;63f9	af		.
	ld h,a			;63fa	67		g
	ld l,a			;63fb	6f		o
	ld b,a			;63fc	47		G
	ld c,a			;63fd	4f		O
	ld d,a			;63fe	57		W
	call 047fch		;63ff	cd fc 47	. . G
	jp 047d2h		;6402	c3 d2 47	. . G
l6405h:
	nop			;6405	00		.
	ld b,001h		;6406	06 01		. .
	ld (00017h),hl		;6408	22 17 00	" . .
	ld (de),a		;640b	12		.
	ld (hl),b		;640c	70		p
	ld (bc),a		;640d	02		.
	rra			;640e	1f		.
	ld bc,l7762h		;640f	01 62 77	. b w
	rst 0			;6412	c7		.
l6413h:
	nop			;6413	00		.
	ret nc			;6414	d0		.
	nop			;6415	00		.
	ret po			;6416	e0		.
	cp 077h			;6417	fe 77		. w
	rst 20h			;6419	e7		.
	cp 077h			;641a	fe 77		. w
	rst 10h			;641c	d7		.
	cp 047h			;641d	fe 47		. G
	ld b,c			;641f	41		A
	ld c,l			;6420	4d		M
	ld b,l			;6421	45		E
	jr nz,$+81		;6422	20 4f		  O
	ld d,(hl)		;6424	56		V
	ld b,l			;6425	45		E
	ld d,d			;6426	52		R
	nop			;6427	00		.
l6428h:
	ld b,e			;6428	43		C
	ld c,a			;6429	4f		O
	ld c,(hl)		;642a	4e		N
	ld d,h			;642b	54		T
	ld c,c			;642c	49		I
	ld c,(hl)		;642d	4e		N
	ld d,l			;642e	55		U
	ld b,l			;642f	45		E
	jr nz,$+86		;6430	20 54		  T
	ld c,a			;6432	4f		O
	jr nz,l647bh		;6433	20 46		  F
	dec (hl)		;6435	35		5
	nop			;6436	00		.
l6437h:
	ld b,e			;6437	43		C
	ld c,a			;6438	4f		O
	ld c,(hl)		;6439	4e		N
	ld d,h			;643a	54		T
	ld c,c			;643b	49		I
	ld c,(hl)		;643c	4e		N
	ld d,l			;643d	55		U
	ld b,l			;643e	45		E
	nop			;643f	00		.
	ld hl,0ca00h		;6440	21 00 ca	! . .
	ld de,0c000h		;6443	11 00 c0	. . .
	ld bc,00600h		;6446	01 00 06	. . .
	ldir			;6449	ed b0		. .
	call sub_647ch		;644b	cd 7c 64	. | d
	ld hl,0ca00h		;644e	21 00 ca	! . .
	ld bc,01effh		;6451	01 ff 1e	. . .
	call 04648h		;6454	cd 48 46	. H F
	ld de,0ca00h		;6457	11 00 ca	. . .
	ld hl,0c000h		;645a	21 00 c0	! . .
	ld bc,00600h		;645d	01 00 06	. . .
	ldir			;6460	ed b0		. .
	xor a			;6462	af		.
	ld (0ca10h),a		;6463	32 10 ca	2 . .
	ld a,(0ca04h)		;6466	3a 04 ca	: . .
	inc a			;6469	3c		<
	jr z,l646fh		;646a	28 03		( .
	ld (0ca04h),a		;646c	32 04 ca	2 . .
l646fh:
	ld a,003h		;646f	3e 03		> .
	call 04103h		;6471	cd 03 41	. . A
	ld bc,00102h		;6474	01 02 01	. . .
	ld (0ca00h),bc		;6477	ed 43 00 ca	. C . .
l647bh:
	ret			;647b	c9		.
sub_647ch:
	ld hl,0c947h		;647c	21 47 c9	! G .
	ld (hl),000h		;647f	36 00		6 .
	call sub_6018h		;6481	cd 18 60	. . `
l6484h:
	call sub_601bh		;6484	cd 1b 60	. . `
	ld a,001h		;6487	3e 01		> .
	ld (0c942h),a		;6489	32 42 c9	2 B .
	jr z,l6484h		;648c	28 f6		( .
	call 04c7ah		;648e	cd 7a 4c	. z L
	ret			;6491	c9		.
l6492h:
	ld (0ca00h),hl		;6492	22 00 ca	" . .
	ret			;6495	c9		.
l6496h:
	ld hl,0ca00h		;6496	21 00 ca	! . .
	ld (hl),a		;6499	77		w
	inc hl			;649a	23		#
	ld (hl),000h		;649b	36 00		6 .
	ret			;649d	c9		.
l649eh:
	ld hl,0ca00h		;649e	21 00 ca	! . .
	inc (hl)		;64a1	34		4
	xor a			;64a2	af		.
l64a3h:
	ld (0ca01h),a		;64a3	32 01 ca	2 . .
	ret			;64a6	c9		.
l64a7h:
	ld hl,0ca01h		;64a7	21 01 ca	! . .
	inc (hl)		;64aa	34		4
	ret			;64ab	c9		.
sub_64ach:
	push hl			;64ac	e5		.
	ld hl,0f0f9h		;64ad	21 f9 f0	! . .
	ld (hl),000h		;64b0	36 00		6 .
	pop hl			;64b2	e1		.
	ld hl,0ca00h		;64b3	21 00 ca	! . .
	ld bc,025ffh		;64b6	01 ff 25	. . %
	call 04648h		;64b9	cd 48 46	. H F
	xor a			;64bc	af		.
	ld (0c947h),a		;64bd	32 47 c9	2 G .
	push hl			;64c0	e5		.
	ld hl,0f0f9h		;64c1	21 f9 f0	! . .
	ld (hl),001h		;64c4	36 01		6 .
	pop hl			;64c6	e1		.
	ld a,(0c900h)		;64c7	3a 00 c9	: . .
	cp 004h			;64ca	fe 04		. .
	ld a,000h		;64cc	3e 00		> .
	jr nz,l64d9h		;64ce	20 09		  .
	ld a,(0f0fch)		;64d0	3a fc f0	: . .
	push af			;64d3	f5		.
	xor a			;64d4	af		.
	ld (0f0fch),a		;64d5	32 fc f0	2 . .
	pop af			;64d8	f1		.
l64d9h:
	ld (0ca10h),a		;64d9	32 10 ca	2 . .
	push hl			;64dc	e5		.
	ld hl,0f0f9h		;64dd	21 f9 f0	! . .
	ld (hl),002h		;64e0	36 02		6 .
	pop hl			;64e2	e1		.
	ld hl,0ca03h		;64e3	21 03 ca	! . .
	ld (hl),000h		;64e6	36 00		6 .
	ld a,(04032h)		;64e8	3a 32 40	: 2 @
	inc a			;64eb	3c		<
	ret z			;64ec	c8		.
	ld a,(0c90dh)		;64ed	3a 0d c9	: . .
	bit 2,a			;64f0	cb 57		. W
	ret z			;64f2	c8		.
	set 0,(hl)		;64f3	cb c6		. .
	ret			;64f5	c9		.
	ld a,001h		;64f6	3e 01		> .
	ld (0faf6h),a		;64f8	32 f6 fa	2 . .
	ld de,00000h		;64fb	11 00 00	. . .
	ld bc,01000h		;64fe	01 00 10	. . .
l6501h:
	push bc			;6501	c5		.
	push de			;6502	d5		.
	ld hl,l665ch		;6503	21 5c 66	! \ f
	call sub_6960h		;6506	cd 60 69	. ` i
	pop de			;6509	d1		.
	call 049d9h		;650a	cd d9 49	. . I
	pop bc			;650d	c1		.
	inc c			;650e	0c		.
	djnz l6501h		;650f	10 f0		. .
	ld de,00008h		;6511	11 08 00	. . .
	ld a,020h		;6514	3e 20		>  
	call sub_6530h		;6516	cd 30 65	. 0 e
	ld bc,sub_600fh		;6519	01 0f 60	. . `
	call sub_692eh		;651c	cd 2e 69	. . i
	ld de,08000h		;651f	11 00 80	. . .
	ld hl,l653ch		;6522	21 3c 65	! < e
	ld bc,02b0fh		;6525	01 0f 2b	. . +
	call sub_692eh		;6528	cd 2e 69	. . i
	xor a			;652b	af		.
	ld (0faf6h),a		;652c	32 f6 fa	2 . .
	ret			;652f	c9		.
sub_6530h:
	ld l,a			;6530	6f		o
	ld h,000h		;6531	26 00		& .
	ld bc,(00004h)		;6533	ed 4b 04 00	. K . .
	add hl,hl		;6537	29		)
	add hl,hl		;6538	29		)
	add hl,hl		;6539	29		)
	add hl,bc		;653a	09		.
	ret			;653b	c9		.
l653ch:
	nop			;653c	00		.
	inc e			;653d	1c		.
	ld (06363h),hl		;653e	22 63 63	" c c
	ld h,e			;6541	63		c
	ld (0001ch),hl		;6542	22 1c 00	" . .
	jr l657fh		;6545	18 38		. 8
	jr l6561h		;6547	18 18		. .
	jr l6563h		;6549	18 18		. .
	ld a,(hl)		;654b	7e		~
	nop			;654c	00		.
	ld a,063h		;654d	3e 63		> c
	inc bc			;654f	03		.
	ld c,03ch		;6550	0e 3c		. <
	ld (hl),b		;6552	70		p
	ld a,a			;6553	7f		.
	nop			;6554	00		.
	ld a,063h		;6555	3e 63		> c
	inc bc			;6557	03		.
	ld c,003h		;6558	0e 03		. .
	ld h,e			;655a	63		c
	ld a,000h		;655b	3e 00		> .
	ld c,01eh		;655d	0e 1e		. .
	ld (hl),066h		;655f	36 66		6 f
l6561h:
	ld h,(hl)		;6561	66		f
	ld a,a			;6562	7f		.
l6563h:
	ld b,000h		;6563	06 00		. .
	ld a,a			;6565	7f		.
	ld h,b			;6566	60		`
	ld a,(hl)		;6567	7e		~
	ld h,e			;6568	63		c
	inc bc			;6569	03		.
	ld h,e			;656a	63		c
	ld a,000h		;656b	3e 00		> .
	ld a,063h		;656d	3e 63		> c
	ld h,b			;656f	60		`
	ld a,(hl)		;6570	7e		~
	ld h,e			;6571	63		c
	ld h,e			;6572	63		c
	ld a,000h		;6573	3e 00		> .
	ld a,a			;6575	7f		.
	ld h,e			;6576	63		c
	ld b,00ch		;6577	06 0c		. .
	jr l6593h		;6579	18 18		. .
	jr l657dh		;657b	18 00		. .
l657dh:
	ld a,063h		;657d	3e 63		> c
l657fh:
	ld h,e			;657f	63		c
	ld a,063h		;6580	3e 63		> c
	ld h,e			;6582	63		c
	ld a,000h		;6583	3e 00		> .
	ld a,063h		;6585	3e 63		> c
	ld h,e			;6587	63		c
	ccf			;6588	3f		?
	inc bc			;6589	03		.
	ld h,e			;658a	63		c
	ld a,000h		;658b	3e 00		> .
	inc e			;658d	1c		.
	ld (hl),063h		;658e	36 63		6 c
	ld h,e			;6590	63		c
	ld a,a			;6591	7f		.
	ld h,e			;6592	63		c
l6593h:
	ld h,e			;6593	63		c
	nop			;6594	00		.
	ld a,(hl)		;6595	7e		~
	ld h,e			;6596	63		c
	ld h,e			;6597	63		c
	ld a,(hl)		;6598	7e		~
	ld h,e			;6599	63		c
	ld h,e			;659a	63		c
	ld a,(hl)		;659b	7e		~
	nop			;659c	00		.
	ld a,063h		;659d	3e 63		> c
	ld h,b			;659f	60		`
	ld h,b			;65a0	60		`
	ld h,b			;65a1	60		`
	ld h,e			;65a2	63		c
	ld a,000h		;65a3	3e 00		> .
	ld a,h			;65a5	7c		|
	ld h,(hl)		;65a6	66		f
	ld h,e			;65a7	63		c
	ld h,e			;65a8	63		c
	ld h,e			;65a9	63		c
	ld h,(hl)		;65aa	66		f
	ld a,h			;65ab	7c		|
	nop			;65ac	00		.
	ld a,a			;65ad	7f		.
	ld h,b			;65ae	60		`
	ld h,b			;65af	60		`
	ld a,(hl)		;65b0	7e		~
	ld h,b			;65b1	60		`
	ld h,b			;65b2	60		`
	ld a,a			;65b3	7f		.
	nop			;65b4	00		.
	ld a,a			;65b5	7f		.
	ld h,b			;65b6	60		`
	ld h,b			;65b7	60		`
	ld a,(hl)		;65b8	7e		~
	ld h,b			;65b9	60		`
	ld h,b			;65ba	60		`
	ld h,b			;65bb	60		`
	nop			;65bc	00		.
	ld a,063h		;65bd	3e 63		> c
	ld h,b			;65bf	60		`
	ld h,a			;65c0	67		g
	ld h,e			;65c1	63		c
	ld h,e			;65c2	63		c
	ccf			;65c3	3f		?
	nop			;65c4	00		.
	ld h,e			;65c5	63		c
	ld h,e			;65c6	63		c
	ld h,e			;65c7	63		c
	ld a,a			;65c8	7f		.
	ld h,e			;65c9	63		c
	ld h,e			;65ca	63		c
	ld h,e			;65cb	63		c
	nop			;65cc	00		.
	inc a			;65cd	3c		<
	jr l65e8h		;65ce	18 18		. .
	jr l65eah		;65d0	18 18		. .
	jr l6610h		;65d2	18 3c		. <
	nop			;65d4	00		.
	rra			;65d5	1f		.
	ld b,006h		;65d6	06 06		. .
	ld b,006h		;65d8	06 06		. .
	ld h,(hl)		;65da	66		f
	inc a			;65db	3c		<
	nop			;65dc	00		.
	ld h,e			;65dd	63		c
	ld h,(hl)		;65de	66		f
	ld l,h			;65df	6c		l
	ld a,b			;65e0	78		x
	ld a,h			;65e1	7c		|
	ld l,(hl)		;65e2	6e		n
	ld h,a			;65e3	67		g
	nop			;65e4	00		.
	ld h,b			;65e5	60		`
	ld h,b			;65e6	60		`
	ld h,b			;65e7	60		`
l65e8h:
	ld h,b			;65e8	60		`
	ld h,b			;65e9	60		`
l65eah:
	ld h,b			;65ea	60		`
	ld a,a			;65eb	7f		.
	nop			;65ec	00		.
	ld h,e			;65ed	63		c
	ld (hl),a		;65ee	77		w
	ld a,a			;65ef	7f		.
	ld a,a			;65f0	7f		.
	ld l,e			;65f1	6b		k
	ld h,e			;65f2	63		c
	ld h,e			;65f3	63		c
	nop			;65f4	00		.
	ld h,e			;65f5	63		c
	ld (hl),e		;65f6	73		s
	ld a,e			;65f7	7b		{
	ld a,a			;65f8	7f		.
	ld l,a			;65f9	6f		o
	ld h,a			;65fa	67		g
	ld h,e			;65fb	63		c
	nop			;65fc	00		.
	ld a,063h		;65fd	3e 63		> c
	ld h,e			;65ff	63		c
	ld h,e			;6600	63		c
	ld h,e			;6601	63		c
	ld h,e			;6602	63		c
	ld a,000h		;6603	3e 00		> .
	ld a,(hl)		;6605	7e		~
	ld h,e			;6606	63		c
	ld h,e			;6607	63		c
	ld h,e			;6608	63		c
	ld a,(hl)		;6609	7e		~
	ld h,b			;660a	60		`
	ld h,b			;660b	60		`
	nop			;660c	00		.
	ld a,063h		;660d	3e 63		> c
	ld h,e			;660f	63		c
l6610h:
	ld h,e			;6610	63		c
	ld l,a			;6611	6f		o
	ld h,(hl)		;6612	66		f
	dec a			;6613	3d		=
	nop			;6614	00		.
	ld a,(hl)		;6615	7e		~
	ld h,e			;6616	63		c
	ld h,e			;6617	63		c
	ld h,d			;6618	62		b
	ld a,h			;6619	7c		|
	ld h,(hl)		;661a	66		f
	ld h,e			;661b	63		c
	nop			;661c	00		.
	ld a,063h		;661d	3e 63		> c
	ld h,b			;661f	60		`
	ld a,003h		;6620	3e 03		> .
	ld h,e			;6622	63		c
	ld a,000h		;6623	3e 00		> .
	ld a,(hl)		;6625	7e		~
	jr l6640h		;6626	18 18		. .
	jr l6642h		;6628	18 18		. .
	jr $+26			;662a	18 18		. .
	nop			;662c	00		.
	ld h,e			;662d	63		c
	ld h,e			;662e	63		c
	ld h,e			;662f	63		c
	ld h,e			;6630	63		c
	ld h,e			;6631	63		c
	ld h,e			;6632	63		c
	ld a,000h		;6633	3e 00		> .
	ld h,e			;6635	63		c
	ld h,e			;6636	63		c
	ld h,e			;6637	63		c
	ld h,e			;6638	63		c
	ld (hl),01ch		;6639	36 1c		6 .
	ex af,af'		;663b	08		.
	nop			;663c	00		.
	ld h,e			;663d	63		c
	ld h,e			;663e	63		c
	ld l,e			;663f	6b		k
l6640h:
	ld l,e			;6640	6b		k
	ld a,a			;6641	7f		.
l6642h:
	ld (hl),a		;6642	77		w
	ld (sub_6300h),hl	;6643	22 00 63	" . c
	halt			;6646	76		v
	inc a			;6647	3c		<
	inc e			;6648	1c		.
	ld e,037h		;6649	1e 37		. 7
	ld h,e			;664b	63		c
	nop			;664c	00		.
	ld h,(hl)		;664d	66		f
	ld h,(hl)		;664e	66		f
	ld a,(hl)		;664f	7e		~
	inc a			;6650	3c		<
	jr $+26			;6651	18 18		. .
	jr l6655h		;6653	18 00		. .
l6655h:
	ld a,a			;6655	7f		.
	rlca			;6656	07		.
	ld c,01ch		;6657	0e 1c		. .
	jr c,$+114		;6659	38 70		8 p
	ld a,a			;665b	7f		.
l665ch:
	rst 38h			;665c	ff		.
	rst 38h			;665d	ff		.
	rst 38h			;665e	ff		.
	rst 38h			;665f	ff		.
	rst 38h			;6660	ff		.
	rst 38h			;6661	ff		.
	rst 38h			;6662	ff		.
	rst 38h			;6663	ff		.
sub_6664h:
	call 047d2h		;6664	cd d2 47	. . G
	call 049e3h		;6667	cd e3 49	. . I
	call 0474bh		;666a	cd 4b 47	. K G
	call 04790h		;666d	cd 90 47	. . G
	ld hl,l66d6h		;6670	21 d6 66	! . f
	call 047c4h		;6673	cd c4 47	. . G
	ld a,00fh		;6676	3e 0f		> .
	ld (0f3ebh),a		;6678	32 eb f3	2 . .
	call 00062h		;667b	cd 62 00	. b .
	ld b,00fh		;667e	06 0f		. .
	ld c,007h		;6680	0e 07		. .
	call 00047h		;6682	cd 47 00	. G .
	ld hl,02840h		;6685	21 40 28	! @ (
	ld bc,0a848h		;6688	01 48 a8	. H .
	xor a			;668b	af		.
	ld d,001h		;668c	16 01		. .
	call 047fch		;668e	cd fc 47	. . G
	ld hl,l678eh		;6691	21 8e 67	! . g
	ld de,00800h		;6694	11 00 08	. . .
	ld bc,00d01h		;6697	01 01 0d	. . .
	call sub_692eh		;669a	cd 2e 69	. . i
	ld hl,l67f6h		;669d	21 f6 67	! . g
	ld de,l7000h		;66a0	11 00 70	. . p
	ld bc,00d02h		;66a3	01 02 0d	. . .
	call sub_692eh		;66a6	cd 2e 69	. . i
	ld hl,l685eh		;66a9	21 5e 68	! ^ h
	ld de,0d800h		;66ac	11 00 d8	. . .
	ld bc,01a03h		;66af	01 03 1a	. . .
	call sub_692eh		;66b2	cd 2e 69	. . i
	ld de,04040h		;66b5	11 40 40	. @ @
	ld hl,l674dh		;66b8	21 4d 67	! M g
	call sub_672dh		;66bb	cd 2d 67	. - g
	call 0473eh		;66be	cd 3e 47	. > G
	ld hl,0d700h		;66c1	21 00 d7	! . .
	ld bc,0000fh		;66c4	01 0f 00	. . .
	call 04648h		;66c7	cd 48 46	. H F
	ld hl,0d700h		;66ca	21 00 d7	! . .
	ld (hl),03ch		;66cd	36 3c		6 <
	inc hl			;66cf	23		#
	ld (hl),031h		;66d0	36 31		6 1
	inc hl			;66d2	23		#
	ld (hl),000h		;66d3	36 00		6 .
	ret			;66d5	c9		.
l66d6h:
	nop			;66d6	00		.
	nop			;66d7	00		.
	nop			;66d8	00		.
	ld bc,00370h		;66d9	01 70 03	. p .
	ld (bc),a		;66dc	02		.
	ld h,b			;66dd	60		`
	ld bc,04403h		;66de	01 03 44	. . D
	inc b			;66e1	04		.
	inc b			;66e2	04		.
	ld (hl),a		;66e3	77		w
	rlca			;66e4	07		.
	dec b			;66e5	05		.
	ld (hl),a		;66e6	77		w
	rlca			;66e7	07		.
	ld b,077h		;66e8	06 77		. w
	rlca			;66ea	07		.
	rlca			;66eb	07		.
	ld (hl),a		;66ec	77		w
	rlca			;66ed	07		.
	ex af,af'		;66ee	08		.
	ld (hl),a		;66ef	77		w
	rlca			;66f0	07		.
	add hl,bc		;66f1	09		.
	ld (hl),a		;66f2	77		w
	rlca			;66f3	07		.
	ld a,(bc)		;66f4	0a		.
	ld (hl),a		;66f5	77		w
	rlca			;66f6	07		.
	dec bc			;66f7	0b		.
	ld (hl),a		;66f8	77		w
	rlca			;66f9	07		.
	inc c			;66fa	0c		.
	ld (hl),a		;66fb	77		w
	rlca			;66fc	07		.
	dec c			;66fd	0d		.
	ld (hl),a		;66fe	77		w
	rlca			;66ff	07		.
	ld c,077h		;6700	0e 77		. w
	rlca			;6702	07		.
	rrca			;6703	0f		.
	ld (hl),a		;6704	77		w
	rlca			;6705	07		.
	rst 38h			;6706	ff		.
sub_6707h:
	ld hl,0d700h		;6707	21 00 d7	! . .
	dec (hl)		;670a	35		5
	ld a,(hl)		;670b	7e		~
	and 001h		;670c	e6 01		. .
	ret nz			;670e	c0		.
	inc hl			;670f	23		#
	dec (hl)		;6710	35		5
	jr nz,l6719h		;6711	20 06		  .
	ld a,001h		;6713	3e 01		> .
	ld (0d702h),a		;6715	32 02 d7	2 . .
	ret			;6718	c9		.
l6719h:
	ld a,031h		;6719	3e 31		> 1
	sub (hl)		;671b	96		.
	ld c,a			;671c	4f		O
	ld b,0a8h		;671d	06 a8		. .
	ld hl,02840h		;671f	21 40 28	! @ (
	ld de,02840h		;6722	11 40 28	. @ (
	ld a,001h		;6725	3e 01		> .
	call 04838h		;6727	cd 38 48	. 8 H
	jp 047d2h		;672a	c3 d2 47	. . G
sub_672dh:
	push de			;672d	d5		.
l672eh:
	ld a,(hl)		;672e	7e		~
	inc hl			;672f	23		#
	ld c,a			;6730	4f		O
	inc a			;6731	3c		<
	jr z,l674bh		;6732	28 17		( .
	inc a			;6734	3c		<
	jr nz,l6742h		;6735	20 0b		  .
	pop de			;6737	d1		.
	ld a,(hl)		;6738	7e		~
	inc hl			;6739	23		#
	add a,d			;673a	82		.
	ld d,a			;673b	57		W
	ld a,008h		;673c	3e 08		> .
	add a,e			;673e	83		.
	ld e,a			;673f	5f		_
	jr sub_672dh		;6740	18 eb		. .
l6742h:
	ld a,c			;6742	79		y
	call 049b9h		;6743	cd b9 49	. . I
	call 049d9h		;6746	cd d9 49	. . I
	jr l672eh		;6749	18 e3		. .
l674bh:
	pop de			;674b	d1		.
	ret			;674c	c9		.
l674dh:
	ld bc,00302h		;674d	01 02 03	. . .
	cp 0f8h			;6750	fe f8		. .
	inc b			;6752	04		.
	dec b			;6753	05		.
	ld b,007h		;6754	06 07		. .
	cp 0f0h			;6756	fe f0		. .
	ex af,af'		;6758	08		.
	add hl,bc		;6759	09		.
	ld a,(bc)		;675a	0a		.
	dec bc			;675b	0b		.
	ld c,00fh		;675c	0e 0f		. .
	djnz l6771h		;675e	10 11		. .
	dec de			;6760	1b		.
	inc e			;6761	1c		.
	dec e			;6762	1d		.
	ld e,01fh		;6763	1e 1f		. .
	jr nz,l6788h		;6765	20 21		  !
	ld (02423h),hl		;6767	22 23 24	" # $
	dec h			;676a	25		%
	ld h,0feh		;676b	26 fe		& .
	nop			;676d	00		.
	inc c			;676e	0c		.
	ld (bc),a		;676f	02		.
	dec c			;6770	0d		.
l6771h:
	ld (de),a		;6771	12		.
	inc de			;6772	13		.
	inc d			;6773	14		.
	dec d			;6774	15		.
	daa			;6775	27		'
	jr z,l67a1h		;6776	28 29		( )
	ld hl,(02c2bh)		;6778	2a 2b 2c	* + ,
	dec l			;677b	2d		-
	ld l,02fh		;677c	2e 2f		. /
	jr nc,l67b1h		;677e	30 31		0 1
	ld (03433h),a		;6780	32 33 34	2 3 4
	cp 010h			;6783	fe 10		. .
	ld d,019h		;6785	16 19		. .
	rla			;6787	17		.
l6788h:
	cp 0f8h			;6788	fe f8		. .
	jr l67a5h		;678a	18 19		. .
	ld a,(de)		;678c	1a		.
	rst 38h			;678d	ff		.
l678eh:
	rlca			;678e	07		.
	rlca			;678f	07		.
	rrca			;6790	0f		.
	rrca			;6791	0f		.
	rrca			;6792	0f		.
	rra			;6793	1f		.
	rra			;6794	1f		.
	ccf			;6795	3f		?
	rst 38h			;6796	ff		.
	rst 38h			;6797	ff		.
	rst 38h			;6798	ff		.
	rst 38h			;6799	ff		.
	rst 38h			;679a	ff		.
	rst 38h			;679b	ff		.
	rst 38h			;679c	ff		.
	rst 38h			;679d	ff		.
	ret m			;679e	f8		.
	ret m			;679f	f8		.
	ret p			;67a0	f0		.
l67a1h:
	ret p			;67a1	f0		.
	ret p			;67a2	f0		.
	ret po			;67a3	e0		.
	ret po			;67a4	e0		.
l67a5h:
	ret po			;67a5	e0		.
	nop			;67a6	00		.
	nop			;67a7	00		.
	nop			;67a8	00		.
	nop			;67a9	00		.
	ld bc,00f03h		;67aa	01 03 0f	. . .
	ld a,a			;67ad	7f		.
	ccf			;67ae	3f		?
	ld a,a			;67af	7f		.
	ld a,a			;67b0	7f		.
l67b1h:
	rst 38h			;67b1	ff		.
	rst 38h			;67b2	ff		.
	rst 38h			;67b3	ff		.
	rst 38h			;67b4	ff		.
	rst 38h			;67b5	ff		.
	rst 38h			;67b6	ff		.
	rst 38h			;67b7	ff		.
	rst 38h			;67b8	ff		.
	rst 38h			;67b9	ff		.
	rst 38h			;67ba	ff		.
	call m,0c0f0h		;67bb	fc f0 c0	. . .
	ret nz			;67be	c0		.
	ret nz			;67bf	c0		.
	add a,b			;67c0	80		.
	add a,b			;67c1	80		.
	nop			;67c2	00		.
	nop			;67c3	00		.
	nop			;67c4	00		.
	nop			;67c5	00		.
	nop			;67c6	00		.
	nop			;67c7	00		.
	nop			;67c8	00		.
	ld bc,00703h		;67c9	01 03 07	. . .
	rrca			;67cc	0f		.
	rrca			;67cd	0f		.
	rrca			;67ce	0f		.
	ccf			;67cf	3f		?
	rst 38h			;67d0	ff		.
	rst 38h			;67d1	ff		.
	rst 38h			;67d2	ff		.
	rst 38h			;67d3	ff		.
	rst 38h			;67d4	ff		.
	rst 38h			;67d5	ff		.
	rst 38h			;67d6	ff		.
	rst 38h			;67d7	ff		.
	rst 38h			;67d8	ff		.
	cp 0fch			;67d9	fe fc		. .
	ret m			;67db	f8		.
	ret m			;67dc	f8		.
	ret p			;67dd	f0		.
	ret m			;67de	f8		.
	ret nz			;67df	c0		.
	nop			;67e0	00		.
	nop			;67e1	00		.
	nop			;67e2	00		.
	nop			;67e3	00		.
	nop			;67e4	00		.
	nop			;67e5	00		.
	rra			;67e6	1f		.
	rra			;67e7	1f		.
	rra			;67e8	1f		.
	ccf			;67e9	3f		?
	ccf			;67ea	3f		?
	ccf			;67eb	3f		?
	ld a,a			;67ec	7f		.
	ld a,a			;67ed	7f		.
	ret p			;67ee	f0		.
	ret po			;67ef	e0		.
	ret po			;67f0	e0		.
	ret nz			;67f1	c0		.
	ret nz			;67f2	c0		.
	ret nz			;67f3	c0		.
	add a,b			;67f4	80		.
	add a,b			;67f5	80		.
l67f6h:
	nop			;67f6	00		.
	nop			;67f7	00		.
	nop			;67f8	00		.
	nop			;67f9	00		.
	nop			;67fa	00		.
	ld bc,00301h		;67fb	01 01 03	. . .
	ld a,a			;67fe	7f		.
	ld a,a			;67ff	7f		.
	rst 38h			;6800	ff		.
	rst 38h			;6801	ff		.
	rst 38h			;6802	ff		.
	rst 38h			;6803	ff		.
	rst 38h			;6804	ff		.
	rst 38h			;6805	ff		.
	rst 38h			;6806	ff		.
	rst 38h			;6807	ff		.
	rst 38h			;6808	ff		.
	rst 38h			;6809	ff		.
	rst 38h			;680a	ff		.
	cp 0feh			;680b	fe fe		. .
	call m,08080h		;680d	fc 80 80	. . .
	nop			;6810	00		.
	nop			;6811	00		.
	nop			;6812	00		.
	nop			;6813	00		.
	nop			;6814	00		.
	nop			;6815	00		.
	nop			;6816	00		.
	nop			;6817	00		.
	nop			;6818	00		.
	nop			;6819	00		.
	nop			;681a	00		.
	nop			;681b	00		.
	nop			;681c	00		.
	rlca			;681d	07		.
	inc bc			;681e	03		.
	rlca			;681f	07		.
	rlca			;6820	07		.
	rrca			;6821	0f		.
	rra			;6822	1f		.
	ccf			;6823	3f		?
	rst 38h			;6824	ff		.
	rst 38h			;6825	ff		.
	rst 38h			;6826	ff		.
	rst 38h			;6827	ff		.
	rst 38h			;6828	ff		.
	rst 38h			;6829	ff		.
	rst 38h			;682a	ff		.
	rst 38h			;682b	ff		.
	rst 38h			;682c	ff		.
	ret m			;682d	f8		.
	call m,0f8f8h		;682e	fc f8 f8	. . .
	ret p			;6831	f0		.
	ret po			;6832	e0		.
	ret nz			;6833	c0		.
	nop			;6834	00		.
	nop			;6835	00		.
	nop			;6836	00		.
	inc bc			;6837	03		.
	rrca			;6838	0f		.
	rra			;6839	1f		.
	ccf			;683a	3f		?
	ld a,a			;683b	7f		.
	rst 38h			;683c	ff		.
	rst 38h			;683d	ff		.
	rst 38h			;683e	ff		.
	call m,0e0f0h		;683f	fc f0 e0	. . .
	ret nz			;6842	c0		.
	add a,b			;6843	80		.
	add a,b			;6844	80		.
	nop			;6845	00		.
	ld bc,00101h		;6846	01 01 01	. . .
	inc bc			;6849	03		.
	inc bc			;684a	03		.
	inc bc			;684b	03		.
	rlca			;684c	07		.
	rlca			;684d	07		.
	rst 38h			;684e	ff		.
	rst 38h			;684f	ff		.
	rst 38h			;6850	ff		.
	rst 38h			;6851	ff		.
	rst 38h			;6852	ff		.
	rst 38h			;6853	ff		.
	rst 38h			;6854	ff		.
	rst 38h			;6855	ff		.
	rst 38h			;6856	ff		.
	cp 0feh			;6857	fe fe		. .
	call m,0fcfch		;6859	fc fc fc	. . .
	ret m			;685c	f8		.
	ret m			;685d	f8		.
l685eh:
	inc a			;685e	3c		<
	inc a			;685f	3c		<
	ld a,b			;6860	78		x
	ld a,b			;6861	78		x
	ld a,c			;6862	79		y
	di			;6863	f3		.
	rst 30h			;6864	f7		.
	rst 38h			;6865	ff		.
	rra			;6866	1f		.
	ld a,07ch		;6867	3e 7c		> |
	ld sp,hl		;6869	f9		.
	di			;686a	f3		.
	ex (sp),hl		;686b	e3		.
	jp 01f87h		;686c	c3 87 1f	. . .
	ld a,a			;686f	7f		.
	ret m			;6870	f8		.
	ret p			;6871	f0		.
	ret po			;6872	e0		.
	ret po			;6873	e0		.
	ret nz			;6874	c0		.
	ret nz			;6875	c0		.
	ret nz			;6876	c0		.
	ret p			;6877	f0		.
	ret m			;6878	f8		.
	ld a,b			;6879	78		x
	ld a,b			;687a	78		x
	ld a,c			;687b	79		y
	ld a,c			;687c	79		y
	ld a,c			;687d	79		y
	ld a,a			;687e	7f		.
	ld a,a			;687f	7f		.
	rst 38h			;6880	ff		.
	rst 30h			;6881	f7		.
	rst 30h			;6882	f7		.
	rst 20h			;6883	e7		.
	rst 20h			;6884	e7		.
	rst 20h			;6885	e7		.
	rrca			;6886	0f		.
	rrca			;6887	0f		.
	ld e,01eh		;6888	1e 1e		. .
	ld e,03ch		;688a	1e 3c		. <
	inc a			;688c	3c		<
	inc a			;688d	3c		<
	inc bc			;688e	03		.
	rlca			;688f	07		.
	rrca			;6890	0f		.
	ld c,01eh		;6891	0e 1e		. .
	inc a			;6893	3c		<
	jr c,l690eh		;6894	38 78		8 x
	ret po			;6896	e0		.
	ret po			;6897	e0		.
	ret po			;6898	e0		.
	ret po			;6899	e0		.
	ret po			;689a	e0		.
	pop hl			;689b	e1		.
	pop hl			;689c	e1		.
	pop hl			;689d	e1		.
	ld a,(hl)		;689e	7e		~
	ld a,(hl)		;689f	7e		~
	cp 0f6h			;68a0	fe f6		. .
	or 0eeh			;68a2	f6 ee		. .
	xor 0eeh		;68a4	ee ee		. .
	rrca			;68a6	0f		.
	rrca			;68a7	0f		.
	rra			;68a8	1f		.
	dec e			;68a9	1d		.
	dec a			;68aa	3d		=
	dec sp			;68ab	3b		;
	ld a,e			;68ac	7b		{
	ld (hl),e		;68ad	73		s
	pop af			;68ae	f1		.
	pop af			;68af	f1		.
	ex (sp),hl		;68b0	e3		.
	ex (sp),hl		;68b1	e3		.
	ex (sp),hl		;68b2	e3		.
	rst 0			;68b3	c7		.
	rst 0			;68b4	c7		.
	rst 0			;68b5	c7		.
	ret po			;68b6	e0		.
	ret po			;68b7	e0		.
	ret nz			;68b8	c0		.
	ret nz			;68b9	c0		.
	ret nz			;68ba	c0		.
	add a,b			;68bb	80		.
	add a,b			;68bc	80		.
	add a,b			;68bd	80		.
	ld bc,00101h		;68be	01 01 01	. . .
	inc bc			;68c1	03		.
	inc bc			;68c2	03		.
	inc bc			;68c3	03		.
	rlca			;68c4	07		.
	rlca			;68c5	07		.
	rst 28h			;68c6	ef		.
	rst 20h			;68c7	e7		.
	rst 20h			;68c8	e7		.
	rst 0			;68c9	c7		.
l68cah:
	rst 0			;68ca	c7		.
	jp 08383h		;68cb	c3 83 83	. . .
	add a,a			;68ce	87		.
	add a,a			;68cf	87		.
	add a,a			;68d0	87		.
	rst 0			;68d1	c7		.
	rst 0			;68d2	c7		.
	rst 0			;68d3	c7		.
	ex (sp),hl		;68d4	e3		.
	ret po			;68d5	e0		.
	add a,b			;68d6	80		.
	add a,b			;68d7	80		.
	add a,c			;68d8	81		.
	add a,c			;68d9	81		.
	add a,e			;68da	83		.
	rst 0			;68db	c7		.
	rst 38h			;68dc	ff		.
	cp 0fbh			;68dd	fe fb		. .
	di			;68df	f3		.
	di			;68e0	f3		.
	rst 30h			;68e1	f7		.
	rst 20h			;68e2	e7		.
	rst 0			;68e3	c7		.
	adc a,a			;68e4	8f		.
	rrca			;68e5	0f		.
	rst 0			;68e6	c7		.
	rst 0			;68e7	c7		.
	rst 0			;68e8	c7		.
	add a,a			;68e9	87		.
	add a,a			;68ea	87		.
	add a,a			;68eb	87		.
	rlca			;68ec	07		.
	rlca			;68ed	07		.
	ld a,b			;68ee	78		x
	ld a,b			;68ef	78		x
	ld a,c			;68f0	79		y
	pop af			;68f1	f1		.
	di			;68f2	f3		.
	rst 30h			;68f3	f7		.
	rst 20h			;68f4	e7		.
	rst 28h			;68f5	ef		.
	ld (hl),b		;68f6	70		p
	ret p			;68f7	f0		.
	rst 38h			;68f8	ff		.
	rst 38h			;68f9	ff		.
	rst 38h			;68fa	ff		.
	add a,b			;68fb	80		.
	add a,b			;68fc	80		.
	nop			;68fd	00		.
	ex (sp),hl		;68fe	e3		.
	ex (sp),hl		;68ff	e3		.
	ex (sp),hl		;6900	e3		.
	rst 20h			;6901	e7		.
	rst 20h			;6902	e7		.
	rst 20h			;6903	e7		.
	rst 28h			;6904	ef		.
	rst 28h			;6905	ef		.
	adc a,0ceh		;6906	ce ce		. .
	rst 8			;6908	cf		.
	adc a,a			;6909	8f		.
	adc a,a			;690a	8f		.
	adc a,a			;690b	8f		.
	rrca			;690c	0f		.
	rrca			;690d	0f		.
l690eh:
	rst 30h			;690e	f7		.
	rst 20h			;690f	e7		.
	rst 0			;6910	c7		.
	rst 8			;6911	cf		.
	adc a,a			;6912	8f		.
	adc a,a			;6913	8f		.
	ld e,01eh		;6914	1e 1e		. .
	adc a,a			;6916	8f		.
	adc a,a			;6917	8f		.
	adc a,a			;6918	8f		.
	ld e,01eh		;6919	1e 1e		. .
	ld e,03ch		;691b	1e 3c		. <
	inc a			;691d	3c		<
	rlca			;691e	07		.
	ex af,af'		;691f	08		.
	rla			;6920	17		.
	inc d			;6921	14		.
	rla			;6922	17		.
	inc d			;6923	14		.
	ex af,af'		;6924	08		.
	rlca			;6925	07		.
	add a,b			;6926	80		.
	ld b,b			;6927	40		@
	jr nz,l68cah		;6928	20 a0		  .
	jr nz,$-94		;692a	20 a0		  .
	ld b,b			;692c	40		@
	add a,b			;692d	80		.
sub_692eh:
	call 047d2h		;692e	cd d2 47	. . G
	call sub_6960h		;6931	cd 60 69	. ` i
	call 049d9h		;6934	cd d9 49	. . I
	djnz sub_692eh		;6937	10 f5		. .
	ret			;6939	c9		.
sub_693ah:
	ld b,008h		;693a	06 08		. .
	ld de,0d800h		;693c	11 00 d8	. . .
l693fh:
	push bc			;693f	c5		.
	push hl			;6940	e5		.
	ex de,hl		;6941	eb		.
	ld a,(de)		;6942	1a		.
	ld d,a			;6943	57		W
	ld b,004h		;6944	06 04		. .
l6946h:
	ld a,c			;6946	79		y
	rl d			;6947	cb 12		. .
	jr c,l694ch		;6949	38 01		8 .
	xor a			;694b	af		.
l694ch:
	rld			;694c	ed 6f		. o
	ld a,c			;694e	79		y
	rl d			;694f	cb 12		. .
	jr c,l6954h		;6951	38 01		8 .
	xor a			;6953	af		.
l6954h:
	rld			;6954	ed 6f		. o
	inc hl			;6956	23		#
	djnz l6946h		;6957	10 ed		. .
	ex de,hl		;6959	eb		.
	pop hl			;695a	e1		.
	inc hl			;695b	23		#
	pop bc			;695c	c1		.
	djnz l693fh		;695d	10 e0		. .
	ret			;695f	c9		.
sub_6960h:
	push bc			;6960	c5		.
	push de			;6961	d5		.
	push hl			;6962	e5		.
	push de			;6963	d5		.
	call sub_693ah		;6964	cd 3a 69	. : i
	pop de			;6967	d1		.
	ld b,d			;6968	42		B
	ld d,e			;6969	53		S
	ld e,b			;696a	58		X
	srl d			;696b	cb 3a		. :
	rr e			;696d	cb 1b		. .
	ld a,d			;696f	7a		z
	add a,080h		;6970	c6 80		. .
	ld d,a			;6972	57		W
	ld hl,0d800h		;6973	21 00 d8	! . .
	call 0490bh		;6976	cd 0b 49	. . I
	pop hl			;6979	e1		.
	ld bc,00008h		;697a	01 08 00	. . .
	add hl,bc		;697d	09		.
	pop de			;697e	d1		.
	pop bc			;697f	c1		.
	ret			;6980	c9		.
sub_6981h:
	call 047d2h		;6981	cd d2 47	. . G
	call 0474bh		;6984	cd 4b 47	. K G
	call 047d2h		;6987	cd d2 47	. . G
	call sub_63eeh		;698a	cd ee 63	. . c
	call sub_6a98h		;698d	cd 98 6a	. . j
	call sub_6012h		;6990	cd 12 60	. . `
	ret			;6993	c9		.
sub_6994h:
	call 047d2h		;6994	cd d2 47	. . G
	call sub_63eeh		;6997	cd ee 63	. . c
	call 047d2h		;699a	cd d2 47	. . G
	ld bc,00007h		;699d	01 07 00	. . .
	call 00047h		;69a0	cd 47 00	. G .
	call 04c7ah		;69a3	cd 7a 4c	. z L
	ld b,0e8h		;69a6	06 e8		. .
	ld c,017h		;69a8	0e 17		. .
	call 00047h		;69aa	cd 47 00	. G .
	ld hl,01800h		;69ad	21 00 18	! . .
	ld de,01828h		;69b0	11 28 18	. ( .
	ld bc,0d840h		;69b3	01 40 d8	. @ .
	ld a,002h		;69b6	3e 02		> .
	call 04838h		;69b8	cd 38 48	. 8 H
	ld hl,l6a2ch		;69bb	21 2c 6a	! , j
	call sub_6a26h		;69be	cd 26 6a	. & j
	ld hl,l6a3fh		;69c1	21 3f 6a	! ? j
	call sub_6a26h		;69c4	cd 26 6a	. & j
	ld b,0e8h		;69c7	06 e8		. .
l69c9h:
	xor a			;69c9	af		.
	ld (0c914h),a		;69ca	32 14 c9	2 . .
	ld c,017h		;69cd	0e 17		. .
	push bc			;69cf	c5		.
	call 00047h		;69d0	cd 47 00	. G .
	pop bc			;69d3	c1		.
l69d4h:
	ei			;69d4	fb		.
	ld a,(0c914h)		;69d5	3a 14 c9	: . .
	or a			;69d8	b7		.
	jr z,l69d4h		;69d9	28 f9		( .
	inc b			;69db	04		.
	inc b			;69dc	04		.
	ld a,b			;69dd	78		x
	sub 001h		;69de	d6 01		. .
	jp m,l69c9h		;69e0	fa c9 69	. . i
	ld hl,l6a50h		;69e3	21 50 6a	! P j
	call 04c94h		;69e6	cd 94 4c	. . L
	ld hl,05840h		;69e9	21 40 58	! @ X
	ld de,05810h		;69ec	11 10 58	. . X
	ld bc,06040h		;69ef	01 40 60	. @ `
	ld a,002h		;69f2	3e 02		> .
	call 04838h		;69f4	cd 38 48	. 8 H
	ld hl,l6a59h		;69f7	21 59 6a	! Y j
	call sub_6a26h		;69fa	cd 26 6a	. & j
	ld hl,l6a68h		;69fd	21 68 6a	! h j
	ld de,03c28h		;6a00	11 28 3c	. ( <
	ld a,0f1h		;6a03	3e f1		> .
	call l6c6ah		;6a05	cd 6a 6c	. j l
	ld hl,l6a62h		;6a08	21 62 6a	! b j
	call sub_6a26h		;6a0b	cd 26 6a	. & j
	ld hl,l6a75h		;6a0e	21 75 6a	! u j
	ld de,04824h		;6a11	11 24 48	. $ H
	ld a,0f2h		;6a14	3e f2		> .
	call l6c6ah		;6a16	cd 6a 6c	. j l
	ld hl,l6a65h		;6a19	21 65 6a	! e j
	call sub_6a26h		;6a1c	cd 26 6a	. & j
	call sub_601eh		;6a1f	cd 1e 60	. . `
	call sub_6a84h		;6a22	cd 84 6a	. . j
	ret			;6a25	c9		.
sub_6a26h:
	call 04ce0h		;6a26	cd e0 4c	. . L
	jp 04cf5h		;6a29	c3 f5 4c	. . L
l6a2ch:
	nop			;6a2c	00		.
	nop			;6a2d	00		.
	ld h,(hl)		;6a2e	66		f
	ld (hl),077h		;6a2f	36 77		6 w
	ld b,a			;6a31	47		G
	ld h,(hl)		;6a32	66		f
	ld d,(hl)		;6a33	56		V
	ld (hl),a		;6a34	77		w
	ld h,a			;6a35	67		g
	ld (hl),a		;6a36	77		w
	ld (hl),a		;6a37	77		w
	ld (hl),a		;6a38	77		w
	add a,a			;6a39	87		.
	ld d,l			;6a3a	55		U
	sub l			;6a3b	95		.
	ld (hl),a		;6a3c	77		w
	rst 30h			;6a3d	f7		.
	rst 38h			;6a3e	ff		.
l6a3fh:
	nop			;6a3f	00		.
	nop			;6a40	00		.
	inc de			;6a41	13		.
	ld sp,04224h		;6a42	31 24 42	1 $ B
	dec (hl)		;6a45	35		5
	ld d,e			;6a46	53		S
	ld b,(hl)		;6a47	46		F
	ld h,h			;6a48	64		d
	ld d,a			;6a49	57		W
	ld (hl),l		;6a4a	75		u
	ld h,a			;6a4b	67		g
	add a,(hl)		;6a4c	86		.
	ld b,b			;6a4d	40		@
	sub b			;6a4e	90		.
	rst 38h			;6a4f	ff		.
l6a50h:
	ld (hl),a		;6a50	77		w
	and a			;6a51	a7		.
	ld (hl),a		;6a52	77		w
	or a			;6a53	b7		.
	ld (hl),a		;6a54	77		w
	rst 0			;6a55	c7		.
	ld (hl),a		;6a56	77		w
	rst 10h			;6a57	d7		.
	rst 38h			;6a58	ff		.
l6a59h:
	ld (hl),c		;6a59	71		q
	and d			;6a5a	a2		.
	ld (hl),d		;6a5b	72		r
	or h			;6a5c	b4		.
	ld (hl),d		;6a5d	72		r
	add a,074h		;6a5e	c6 74		. t
	rst 10h			;6a60	d7		.
	rst 38h			;6a61	ff		.
l6a62h:
	ld (hl),a		;6a62	77		w
	rla			;6a63	17		.
	rst 38h			;6a64	ff		.
l6a65h:
	ld (hl),a		;6a65	77		w
	daa			;6a66	27		'
	rst 38h			;6a67	ff		.
l6a68h:
	ld b,b			;6a68	40		@
	jr nz,$+77		;6a69	20 4b		  K
	ld c,a			;6a6b	4f		O
	ld c,(hl)		;6a6c	4e		N
	ld b,c			;6a6d	41		A
	ld c,l			;6a6e	4d		M
	ld c,c			;6a6f	49		I
	ld sp,03839h		;6a70	31 39 38	1 9 8
	add hl,sp		;6a73	39		9
	nop			;6a74	00		.
l6a75h:
	ld d,b			;6a75	50		P
	ld d,l			;6a76	55		U
	ld d,e			;6a77	53		S
	ld c,b			;6a78	48		H
	jr nz,$+85		;6a79	20 53		  S
	ld d,b			;6a7b	50		P
	ld b,c			;6a7c	41		A
	ld b,e			;6a7d	43		C
	ld b,l			;6a7e	45		E
	jr nz,l6acch		;6a7f	20 4b		  K
	ld b,l			;6a81	45		E
	ld e,c			;6a82	59		Y
	nop			;6a83	00		.
sub_6a84h:
	di			;6a84	f3		.
	ld a,0c3h		;6a85	3e c3		> .
	ld (0fd9ah),a		;6a87	32 9a fd	2 . .
	ld hl,(0410eh)		;6a8a	2a 0e 41	* . A
	ld (0fd9bh),hl		;6a8d	22 9b fd	" . .
	ei			;6a90	fb		.
	ret			;6a91	c9		.
sub_6a92h:
	di			;6a92	f3		.
	ld bc,00002h		;6a93	01 02 00	. . .
	jr l6a9ch		;6a96	18 04		. .
sub_6a98h:
	di			;6a98	f3		.
	ld bc,00004h		;6a99	01 04 00	. . .
l6a9ch:
	ld (0c945h),bc		;6a9c	ed 43 45 c9	. C E .
	ld a,0c3h		;6aa0	3e c3		> .
	ld (0fd9ah),a		;6aa2	32 9a fd	2 . .
	ld hl,(0410ch)		;6aa5	2a 0c 41	* . A
	ld (0fd9bh),hl		;6aa8	22 9b fd	" . .
	ei			;6aab	fb		.
	ret			;6aac	c9		.
sub_6aadh:
	ld bc,00606h		;6aad	01 06 06	. . .
	jp 04921h		;6ab0	c3 21 49	. ! I
sub_6ab3h:
	push de			;6ab3	d5		.
	push hl			;6ab4	e5		.
	ld bc,00804h		;6ab5	01 04 08	. . .
	call 04921h		;6ab8	cd 21 49	. ! I
	pop hl			;6abb	e1		.
	pop de			;6abc	d1		.
	ret			;6abd	c9		.
sub_6abeh:
	push de			;6abe	d5		.
	push hl			;6abf	e5		.
	call l6acch		;6ac0	cd cc 6a	. . j
	ld bc,00804h		;6ac3	01 04 08	. . .
	call 04921h		;6ac6	cd 21 49	. ! I
	pop hl			;6ac9	e1		.
	pop de			;6aca	d1		.
	ret			;6acb	c9		.
l6acch:
	push de			;6acc	d5		.
	ld de,0d700h		;6acd	11 00 d7	. . .
	ld bc,00020h		;6ad0	01 20 00	.   .
	ldir			;6ad3	ed b0		. .
	call sub_6addh		;6ad5	cd dd 6a	. . j
	pop de			;6ad8	d1		.
	ld hl,0d700h		;6ad9	21 00 d7	! . .
	ret			;6adc	c9		.
sub_6addh:
	ld hl,0d700h		;6add	21 00 d7	! . .
	ld b,020h		;6ae0	06 20		.  
l6ae2h:
	push bc			;6ae2	c5		.
	ld a,(hl)		;6ae3	7e		~
	ld b,a			;6ae4	47		G
	and 00fh		;6ae5	e6 0f		. .
	ld c,a			;6ae7	4f		O
	xor b			;6ae8	a8		.
	rrca			;6ae9	0f		.
	rrca			;6aea	0f		.
	rrca			;6aeb	0f		.
	rrca			;6aec	0f		.
	call sub_6b02h		;6aed	cd 02 6b	. . k
	ld b,a			;6af0	47		G
	ld a,c			;6af1	79		y
	call sub_6b02h		;6af2	cd 02 6b	. . k
	ld c,a			;6af5	4f		O
	ld a,b			;6af6	78		x
	add a,a			;6af7	87		.
	add a,a			;6af8	87		.
	add a,a			;6af9	87		.
	add a,a			;6afa	87		.
	or c			;6afb	b1		.
	ld (hl),a		;6afc	77		w
	inc hl			;6afd	23		#
	pop bc			;6afe	c1		.
	djnz l6ae2h		;6aff	10 e1		. .
	ret			;6b01	c9		.
sub_6b02h:
	cp 00eh			;6b02	fe 0e		. .
	jr nz,l6b0ch		;6b04	20 06		  .
	ld a,(0c91ch)		;6b06	3a 1c c9	: . .
	and 00fh		;6b09	e6 0f		. .
	ret			;6b0b	c9		.
l6b0ch:
	cp 00fh			;6b0c	fe 0f		. .
	ret nz			;6b0e	c0		.
	ld a,(0c91ch)		;6b0f	3a 1c c9	: . .
	rrca			;6b12	0f		.
	rrca			;6b13	0f		.
	rrca			;6b14	0f		.
	rrca			;6b15	0f		.
	and 00fh		;6b16	e6 0f		. .
	ret			;6b18	c9		.
sub_6b19h:
	ld l,a			;6b19	6f		o
	ld h,000h		;6b1a	26 00		& .
	call sub_6b2eh		;6b1c	cd 2e 6b	. . k
	call sub_6b2eh		;6b1f	cd 2e 6b	. . k
	add hl,hl		;6b22	29		)
	add hl,hl		;6b23	29		)
	ret			;6b24	c9		.
sub_6b25h:
	ld l,a			;6b25	6f		o
	ld h,000h		;6b26	26 00		& .
	add hl,hl		;6b28	29		)
	add hl,hl		;6b29	29		)
	add hl,hl		;6b2a	29		)
	add hl,hl		;6b2b	29		)
	add hl,hl		;6b2c	29		)
	ret			;6b2d	c9		.
sub_6b2eh:
	ld d,h			;6b2e	54		T
	ld e,l			;6b2f	5d		]
	add hl,hl		;6b30	29		)
	add hl,de		;6b31	19		.
	ret			;6b32	c9		.
l6b33h:
	ld a,0feh		;6b33	3e fe		> .
	ld (0c91ch),a		;6b35	32 1c c9	2 . .
	ld hl,0e000h		;6b38	21 00 e0	! . .
	ld bc,01000h		;6b3b	01 00 10	. . .
	ld a,0ffh		;6b3e	3e ff		> .
	call 046c5h		;6b40	cd c5 46	. . F
	ld hl,l6ca9h		;6b43	21 a9 6c	! . l
	ld de,0e000h		;6b46	11 00 e0	. . .
	call sub_6b6dh		;6b49	cd 6d 6b	. m k
	call sub_6b6dh		;6b4c	cd 6d 6b	. m k
	call sub_6b6dh		;6b4f	cd 6d 6b	. m k
	ld hl,0df90h		;6b52	21 90 df	! . .
	ld bc,0006fh		;6b55	01 6f 00	. o .
	call 04648h		;6b58	cd 48 46	. H F
	ld hl,0df90h		;6b5b	21 90 df	! . .
	ld bc,0006fh		;6b5e	01 6f 00	. o .
	ld a,0ffh		;6b61	3e ff		> .
	call 04649h		;6b63	cd 49 46	. I F
	ld hl,00000h		;6b66	21 00 00	! . .
	ld (0df9eh),hl		;6b69	22 9e df	" . .
	ret			;6b6c	c9		.
sub_6b6dh:
	ld b,020h		;6b6d	06 20		.  
l6b6fh:
	ld a,(hl)		;6b6f	7e		~
	call sub_6bc1h		;6b70	cd c1 6b	. . k
	inc de			;6b73	13		.
	inc de			;6b74	13		.
	inc de			;6b75	13		.
	inc de			;6b76	13		.
	inc hl			;6b77	23		#
	djnz l6b6fh		;6b78	10 f5		. .
	push hl			;6b7a	e5		.
	ld hl,00380h		;6b7b	21 80 03	! . .
	add hl,de		;6b7e	19		.
	ex de,hl		;6b7f	eb		.
	pop hl			;6b80	e1		.
	ret			;6b81	c9		.
l6b82h:
	push hl			;6b82	e5		.
	push de			;6b83	d5		.
	push bc			;6b84	c5		.
	push af			;6b85	f5		.
	push de			;6b86	d5		.
	call sub_6b19h		;6b87	cd 19 6b	. . k
	ld de,l70c9h		;6b8a	11 c9 70	. . p
	add hl,de		;6b8d	19		.
	pop de			;6b8e	d1		.
	call sub_6aadh		;6b8f	cd ad 6a	. . j
	pop af			;6b92	f1		.
	pop bc			;6b93	c1		.
	pop de			;6b94	d1		.
	pop hl			;6b95	e1		.
	ret			;6b96	c9		.
sub_6b97h:
	push hl			;6b97	e5		.
	push de			;6b98	d5		.
	push bc			;6b99	c5		.
	push af			;6b9a	f5		.
	push de			;6b9b	d5		.
	call sub_6b25h		;6b9c	cd 25 6b	. % k
	ld de,l7135h		;6b9f	11 35 71	. 5 q
	add hl,de		;6ba2	19		.
	pop de			;6ba3	d1		.
	call sub_6ab3h		;6ba4	cd b3 6a	. . j
	pop af			;6ba7	f1		.
	pop bc			;6ba8	c1		.
	pop de			;6ba9	d1		.
	pop hl			;6baa	e1		.
	ret			;6bab	c9		.
sub_6bach:
	push hl			;6bac	e5		.
	push de			;6bad	d5		.
	push bc			;6bae	c5		.
	push af			;6baf	f5		.
	push de			;6bb0	d5		.
	call sub_6b25h		;6bb1	cd 25 6b	. % k
	ld de,l7135h		;6bb4	11 35 71	. 5 q
	add hl,de		;6bb7	19		.
	pop de			;6bb8	d1		.
	call sub_6abeh		;6bb9	cd be 6a	. . j
	pop af			;6bbc	f1		.
	pop bc			;6bbd	c1		.
	pop de			;6bbe	d1		.
	pop hl			;6bbf	e1		.
	ret			;6bc0	c9		.
sub_6bc1h:
	push hl			;6bc1	e5		.
	push de			;6bc2	d5		.
	push bc			;6bc3	c5		.
	push af			;6bc4	f5		.
	push de			;6bc5	d5		.
	call sub_6b25h		;6bc6	cd 25 6b	. % k
	ld de,06d09h		;6bc9	11 09 6d	. . m
	add hl,de		;6bcc	19		.
	pop de			;6bcd	d1		.
	call sub_6ab3h		;6bce	cd b3 6a	. . j
	pop af			;6bd1	f1		.
	pop bc			;6bd2	c1		.
	pop de			;6bd3	d1		.
	pop hl			;6bd4	e1		.
	ret			;6bd5	c9		.
l6bd6h:
	call sub_6c12h		;6bd6	cd 12 6c	. . l
	call sub_6bddh		;6bd9	cd dd 6b	. . k
	ret			;6bdc	c9		.
sub_6bddh:
	ld a,(0cb08h)		;6bdd	3a 08 cb	: . .
	ld hl,0df9eh		;6be0	21 9e df	! . .
	cp (hl)			;6be3	be		.
	ret z			;6be4	c8		.
	jr nc,l6bf0h		;6be5	30 09		0 .
	dec (hl)		;6be7	35		5
	ld a,(hl)		;6be8	7e		~
	call sub_6c05h		;6be9	cd 05 6c	. . l
	xor a			;6bec	af		.
	jp l6b82h		;6bed	c3 82 6b	. . k
l6bf0h:
	ld a,(hl)		;6bf0	7e		~
	inc (hl)		;6bf1	34		4
	call sub_6bfdh		;6bf2	cd fd 6b	. . k
	push bc			;6bf5	c5		.
	call sub_6c05h		;6bf6	cd 05 6c	. . l
	pop af			;6bf9	f1		.
	jp l6b82h		;6bfa	c3 82 6b	. . k
sub_6bfdh:
	ld b,001h		;6bfd	06 01		. .
	cp 008h			;6bff	fe 08		. .
	ret c			;6c01	d8		.
	ld b,002h		;6c02	06 02		. .
	ret			;6c04	c9		.
sub_6c05h:
	ld l,a			;6c05	6f		o
	ld h,000h		;6c06	26 00		& .
	call sub_6b2eh		;6c08	cd 2e 6b	. . k
	add hl,hl		;6c0b	29		)
	ld de,0e21ch		;6c0c	11 1c e2	. . .
	add hl,de		;6c0f	19		.
	ex de,hl		;6c10	eb		.
	ret			;6c11	c9		.
sub_6c12h:
	ld de,0cb0fh		;6c12	11 0f cb	. . .
	ld hl,0df97h		;6c15	21 97 df	! . .
	ld b,001h		;6c18	06 01		. .
	exx			;6c1a	d9		.
	ld hl,0e70ch		;6c1b	21 0c e7	! . .
	exx			;6c1e	d9		.
	call sub_6c3fh		;6c1f	cd 3f 6c	. ? l
	ld de,0cb0dh		;6c22	11 0d cb	. . .
	ld hl,0df90h		;6c25	21 90 df	! . .
	ld b,003h		;6c28	06 03		. .
	exx			;6c2a	d9		.
	ld hl,0e734h		;6c2b	21 34 e7	! 4 .
	exx			;6c2e	d9		.
	call sub_6c3fh		;6c2f	cd 3f 6c	. ? l
	ld de,0c924h		;6c32	11 24 c9	. $ .
	ld hl,0dfa2h		;6c35	21 a2 df	! . .
	ld b,003h		;6c38	06 03		. .
	exx			;6c3a	d9		.
	ld hl,0e760h		;6c3b	21 60 e7	! ` .
	exx			;6c3e	d9		.
sub_6c3fh:
	ld a,(de)		;6c3f	1a		.
	cp (hl)			;6c40	be		.
	call nz,sub_6c4fh	;6c41	c4 4f 6c	. O l
	inc hl			;6c44	23		#
	dec de			;6c45	1b		.
	exx			;6c46	d9		.
	ld de,00008h		;6c47	11 08 00	. . .
	add hl,de		;6c4a	19		.
	exx			;6c4b	d9		.
	djnz sub_6c3fh		;6c4c	10 f1		. .
	ret			;6c4e	c9		.
sub_6c4fh:
	ld (hl),a		;6c4f	77		w
	exx			;6c50	d9		.
	push hl			;6c51	e5		.
	ex de,hl		;6c52	eb		.
	ld c,a			;6c53	4f		O
	and 00fh		;6c54	e6 0f		. .
	ld b,a			;6c56	47		G
	xor c			;6c57	a9		.
	rrca			;6c58	0f		.
	rrca			;6c59	0f		.
	rrca			;6c5a	0f		.
	rrca			;6c5b	0f		.
	call sub_6b97h		;6c5c	cd 97 6b	. . k
	ld a,b			;6c5f	78		x
	inc de			;6c60	13		.
	inc de			;6c61	13		.
	inc de			;6c62	13		.
	inc de			;6c63	13		.
	call sub_6b97h		;6c64	cd 97 6b	. . k
	pop hl			;6c67	e1		.
	exx			;6c68	d9		.
	ret			;6c69	c9		.
l6c6ah:
	xor 0f0h		;6c6a	ee f0		. .
	ld (0c91ch),a		;6c6c	32 1c c9	2 . .
l6c6fh:
	ld a,(hl)		;6c6f	7e		~
	or a			;6c70	b7		.
	ret z			;6c71	c8		.
	call sub_6c7fh		;6c72	cd 7f 6c	. . l
	call sub_6bach		;6c75	cd ac 6b	. . k
	inc de			;6c78	13		.
	inc de			;6c79	13		.
	inc de			;6c7a	13		.
	inc de			;6c7b	13		.
	inc hl			;6c7c	23		#
	jr l6c6fh		;6c7d	18 f0		. .
sub_6c7fh:
	call sub_6c90h		;6c7f	cd 90 6c	. . l
	jr nz,l6c86h		;6c82	20 02		  .
	ld a,c			;6c84	79		y
	ret			;6c85	c9		.
l6c86h:
	cp 041h			;6c86	fe 41		. A
	jr c,l6c8dh		;6c88	38 03		8 .
	sub 037h		;6c8a	d6 37		. 7
	ret			;6c8c	c9		.
l6c8dh:
	add a,0f4h		;6c8d	c6 f4		. .
	ret			;6c8f	c9		.
sub_6c90h:
	cp 040h			;6c90	fe 40		. @
	ld c,02eh		;6c92	0e 2e		. .
	ret z			;6c94	c8		.
	inc c			;6c95	0c		.
	cp 03ch			;6c96	fe 3c		. <
	ret z			;6c98	c8		.
	inc c			;6c99	0c		.
	cp 03eh			;6c9a	fe 3e		. >
	ret z			;6c9c	c8		.
	inc c			;6c9d	0c		.
	cp 02eh			;6c9e	fe 2e		. .
	ret z			;6ca0	c8		.
	inc c			;6ca1	0c		.
	cp 02dh			;6ca2	fe 2d		. -
	ret z			;6ca4	c8		.
	inc c			;6ca5	0c		.
	cp 020h			;6ca6	fe 20		.  
	ret			;6ca8	c9		.
l6ca9h:
	ld bc,00302h		;6ca9	01 02 03	. . .
	inc b			;6cac	04		.
	dec b			;6cad	05		.
	ld b,001h		;6cae	06 01		. .
	ld c,00fh		;6cb0	0e 0f		. .
	djnz $+16		;6cb2	10 0e		. .
	rrca			;6cb4	0f		.
	djnz $+16		;6cb5	10 0e		. .
	rrca			;6cb7	0f		.
	djnz $+16		;6cb8	10 0e		. .
	rrca			;6cba	0f		.
	djnz $+16		;6cbb	10 0e		. .
	rrca			;6cbd	0f		.
	djnz l6cceh		;6cbe	10 0e		. .
	rrca			;6cc0	0f		.
	djnz $+16		;6cc1	10 0e		. .
	rrca			;6cc3	0f		.
	djnz $+16		;6cc4	10 0e		. .
	rrca			;6cc6	0f		.
	djnz $+3		;6cc7	10 01		. .
	ld bc,00807h		;6cc9	01 07 08	. . .
	add hl,bc		;6ccc	09		.
	ld a,(bc)		;6ccd	0a		.
l6cceh:
	dec bc			;6cce	0b		.
	ld bc,01211h		;6ccf	01 11 12	. . .
	inc de			;6cd2	13		.
	ld de,01312h		;6cd3	11 12 13	. . .
	inc d			;6cd6	14		.
	dec d			;6cd7	15		.
	ld d,014h		;6cd8	16 14		. .
	dec d			;6cda	15		.
	ld d,014h		;6cdb	16 14		. .
	ld (de),a		;6cdd	12		.
	inc de			;6cde	13		.
	ld de,01612h		;6cdf	11 12 16	. . .
	inc d			;6ce2	14		.
	dec d			;6ce3	15		.
	ld d,014h		;6ce4	16 14		. .
	dec d			;6ce6	15		.
	ld d,001h		;6ce7	16 01		. .
	ld bc,0010ch		;6ce9	01 0c 01	. . .
	dec c			;6cec	0d		.
	dec c			;6ced	0d		.
	ld bc,01701h		;6cee	01 01 17	. . .
	jr l6d0ch		;6cf1	18 19		. .
	ld a,(de)		;6cf3	1a		.
	dec de			;6cf4	1b		.
	ld bc,00d0dh		;6cf5	01 0d 0d	. . .
	dec c			;6cf8	0d		.
	dec c			;6cf9	0d		.
	dec c			;6cfa	0d		.
	dec c			;6cfb	0d		.
	dec c			;6cfc	0d		.
	ld bc,01d1ch		;6cfd	01 1c 1d	. . .
	ld bc,00d0dh		;6d00	01 0d 0d	. . .
	dec c			;6d03	0d		.
	dec c			;6d04	0d		.
	dec c			;6d05	0d		.
	dec c			;6d06	0d		.
	dec c			;6d07	0d		.
	ld bc,00000h		;6d08	01 00 00	. . .
	nop			;6d0b	00		.
l6d0ch:
	nop			;6d0c	00		.
	nop			;6d0d	00		.
	nop			;6d0e	00		.
	nop			;6d0f	00		.
	nop			;6d10	00		.
	nop			;6d11	00		.
	nop			;6d12	00		.
	nop			;6d13	00		.
	nop			;6d14	00		.
	nop			;6d15	00		.
	nop			;6d16	00		.
	nop			;6d17	00		.
	nop			;6d18	00		.
	nop			;6d19	00		.
	nop			;6d1a	00		.
	nop			;6d1b	00		.
	nop			;6d1c	00		.
	nop			;6d1d	00		.
	nop			;6d1e	00		.
	nop			;6d1f	00		.
	nop			;6d20	00		.
	nop			;6d21	00		.
	nop			;6d22	00		.
	nop			;6d23	00		.
	nop			;6d24	00		.
	nop			;6d25	00		.
	nop			;6d26	00		.
	nop			;6d27	00		.
	nop			;6d28	00		.
	rst 38h			;6d29	ff		.
	rst 38h			;6d2a	ff		.
	rst 38h			;6d2b	ff		.
	rst 38h			;6d2c	ff		.
	rst 38h			;6d2d	ff		.
	rst 38h			;6d2e	ff		.
	rst 38h			;6d2f	ff		.
	rst 38h			;6d30	ff		.
	rst 38h			;6d31	ff		.
	rst 38h			;6d32	ff		.
	rst 38h			;6d33	ff		.
	rst 38h			;6d34	ff		.
	rst 38h			;6d35	ff		.
	rst 38h			;6d36	ff		.
	rst 38h			;6d37	ff		.
	rst 38h			;6d38	ff		.
	rst 38h			;6d39	ff		.
	rst 38h			;6d3a	ff		.
	rst 38h			;6d3b	ff		.
	rst 38h			;6d3c	ff		.
	rst 38h			;6d3d	ff		.
	rst 38h			;6d3e	ff		.
	rst 38h			;6d3f	ff		.
	rst 38h			;6d40	ff		.
	rst 38h			;6d41	ff		.
	rst 38h			;6d42	ff		.
	rst 38h			;6d43	ff		.
	rst 38h			;6d44	ff		.
	rst 38h			;6d45	ff		.
	rst 38h			;6d46	ff		.
	rst 38h			;6d47	ff		.
	rst 38h			;6d48	ff		.
	rst 38h			;6d49	ff		.
	rst 38h			;6d4a	ff		.
	rst 38h			;6d4b	ff		.
	rst 38h			;6d4c	ff		.
	rst 38h			;6d4d	ff		.
	rst 38h			;6d4e	ff		.
	rst 38h			;6d4f	ff		.
	rst 38h			;6d50	ff		.
	rst 38h			;6d51	ff		.
	rst 38h			;6d52	ff		.
	rst 38h			;6d53	ff		.
	rst 38h			;6d54	ff		.
	rst 38h			;6d55	ff		.
	rst 38h			;6d56	ff		.
	rst 38h			;6d57	ff		.
	rst 38h			;6d58	ff		.
	rst 38h			;6d59	ff		.
	rst 38h			;6d5a	ff		.
	rst 38h			;6d5b	ff		.
	rst 38h			;6d5c	ff		.
	rst 38h			;6d5d	ff		.
	rst 38h			;6d5e	ff		.
	cp 0eeh			;6d5f	fe ee		. .
	rst 38h			;6d61	ff		.
	rst 38h			;6d62	ff		.
	cp 0ffh			;6d63	fe ff		. .
	rst 38h			;6d65	ff		.
	rst 38h			;6d66	ff		.
	cp 0eeh			;6d67	fe ee		. .
	rst 38h			;6d69	ff		.
	rst 38h			;6d6a	ff		.
	rst 38h			;6d6b	ff		.
	rst 38h			;6d6c	ff		.
	rst 38h			;6d6d	ff		.
	rst 38h			;6d6e	ff		.
	rst 38h			;6d6f	ff		.
	rst 38h			;6d70	ff		.
	rst 38h			;6d71	ff		.
	rst 38h			;6d72	ff		.
	rst 38h			;6d73	ff		.
	rst 38h			;6d74	ff		.
	rst 38h			;6d75	ff		.
	rst 38h			;6d76	ff		.
	rst 38h			;6d77	ff		.
	rst 38h			;6d78	ff		.
	rst 38h			;6d79	ff		.
	rst 38h			;6d7a	ff		.
	rst 38h			;6d7b	ff		.
	rst 38h			;6d7c	ff		.
	xor 0efh		;6d7d	ee ef		. .
	cp 0eeh			;6d7f	fe ee		. .
	cp 0efh			;6d81	fe ef		. .
	xor 0ffh		;6d83	ee ff		. .
	xor 0efh		;6d85	ee ef		. .
	xor 0ffh		;6d87	ee ff		. .
	rst 38h			;6d89	ff		.
	rst 38h			;6d8a	ff		.
	rst 38h			;6d8b	ff		.
	rst 38h			;6d8c	ff		.
	rst 38h			;6d8d	ff		.
	rst 38h			;6d8e	ff		.
	rst 38h			;6d8f	ff		.
	rst 38h			;6d90	ff		.
	rst 38h			;6d91	ff		.
	rst 38h			;6d92	ff		.
	rst 38h			;6d93	ff		.
	rst 38h			;6d94	ff		.
	rst 38h			;6d95	ff		.
	rst 38h			;6d96	ff		.
	rst 38h			;6d97	ff		.
	rst 38h			;6d98	ff		.
	rst 38h			;6d99	ff		.
	rst 38h			;6d9a	ff		.
	rst 38h			;6d9b	ff		.
	rst 38h			;6d9c	ff		.
	xor 0feh		;6d9d	ee fe		. .
	rst 28h			;6d9f	ef		.
	rst 38h			;6da0	ff		.
	xor 0feh		;6da1	ee fe		. .
	rst 28h			;6da3	ef		.
	rst 28h			;6da4	ef		.
	xor 0feh		;6da5	ee fe		. .
	xor 0eeh		;6da7	ee ee		. .
	rst 38h			;6da9	ff		.
	rst 38h			;6daa	ff		.
	rst 38h			;6dab	ff		.
	rst 38h			;6dac	ff		.
	rst 38h			;6dad	ff		.
	rst 38h			;6dae	ff		.
	rst 38h			;6daf	ff		.
	rst 38h			;6db0	ff		.
	rst 38h			;6db1	ff		.
	rst 38h			;6db2	ff		.
	rst 38h			;6db3	ff		.
	rst 38h			;6db4	ff		.
	rst 38h			;6db5	ff		.
	rst 38h			;6db6	ff		.
	rst 38h			;6db7	ff		.
	rst 38h			;6db8	ff		.
	rst 38h			;6db9	ff		.
	rst 38h			;6dba	ff		.
	rst 38h			;6dbb	ff		.
	rst 38h			;6dbc	ff		.
	xor 0feh		;6dbd	ee fe		. .
	xor 0eeh		;6dbf	ee ee		. .
	xor 0feh		;6dc1	ee fe		. .
	rst 28h			;6dc3	ef		.
	rst 38h			;6dc4	ff		.
	xor 0feh		;6dc5	ee fe		. .
	xor 0eeh		;6dc7	ee ee		. .
	rst 38h			;6dc9	ff		.
	rst 38h			;6dca	ff		.
	rst 38h			;6dcb	ff		.
	rst 38h			;6dcc	ff		.
	rst 38h			;6dcd	ff		.
	rst 38h			;6dce	ff		.
	rst 38h			;6dcf	ff		.
	rst 38h			;6dd0	ff		.
	rst 38h			;6dd1	ff		.
	rst 38h			;6dd2	ff		.
	rst 38h			;6dd3	ff		.
	rst 38h			;6dd4	ff		.
	rst 38h			;6dd5	ff		.
	rst 38h			;6dd6	ff		.
	rst 38h			;6dd7	ff		.
	rst 38h			;6dd8	ff		.
	rst 38h			;6dd9	ff		.
	rst 38h			;6dda	ff		.
	rst 38h			;6ddb	ff		.
	rst 38h			;6ddc	ff		.
	rst 28h			;6ddd	ef		.
	xor 0eeh		;6dde	ee ee		. .
	rst 28h			;6de0	ef		.
	rst 38h			;6de1	ff		.
	rst 28h			;6de2	ef		.
	rst 38h			;6de3	ff		.
	xor 0efh		;6de4	ee ef		. .
	xor 0eeh		;6de6	ee ee		. .
	rst 28h			;6de8	ef		.
	rst 38h			;6de9	ff		.
	rst 38h			;6dea	ff		.
	cp 0efh			;6deb	fe ef		. .
	rst 38h			;6ded	ff		.
	rst 38h			;6dee	ff		.
	cp 0efh			;6def	fe ef		. .
	rst 38h			;6df1	ff		.
	rst 38h			;6df2	ff		.
	rst 38h			;6df3	ff		.
	rst 38h			;6df4	ff		.
	rst 38h			;6df5	ff		.
	rst 38h			;6df6	ff		.
	rst 38h			;6df7	ff		.
	rst 38h			;6df8	ff		.
	rst 38h			;6df9	ff		.
	rst 38h			;6dfa	ff		.
	rst 38h			;6dfb	ff		.
	rst 38h			;6dfc	ff		.
	rst 38h			;6dfd	ff		.
	cp 0dfh			;6dfe	fe df		. .
	rst 38h			;6e00	ff		.
	rst 38h			;6e01	ff		.
	cp 0dfh			;6e02	fe df		. .
	rst 38h			;6e04	ff		.
	rst 38h			;6e05	ff		.
	xor 0ddh		;6e06	ee dd		. .
	rst 38h			;6e08	ff		.
	rst 38h			;6e09	ff		.
	rst 38h			;6e0a	ff		.
	xor 0ffh		;6e0b	ee ff		. .
	rst 38h			;6e0d	ff		.
	rst 38h			;6e0e	ff		.
	xor 0eeh		;6e0f	ee ee		. .
	rst 38h			;6e11	ff		.
	rst 38h			;6e12	ff		.
	rst 38h			;6e13	ff		.
	rst 38h			;6e14	ff		.
	rst 38h			;6e15	ff		.
	rst 38h			;6e16	ff		.
	rst 38h			;6e17	ff		.
	rst 38h			;6e18	ff		.
	rst 38h			;6e19	ff		.
	rst 38h			;6e1a	ff		.
	rst 38h			;6e1b	ff		.
	rst 38h			;6e1c	ff		.
	rst 38h			;6e1d	ff		.
	rst 38h			;6e1e	ff		.
	rst 38h			;6e1f	ff		.
	rst 38h			;6e20	ff		.
	rst 38h			;6e21	ff		.
	rst 38h			;6e22	ff		.
	rst 38h			;6e23	ff		.
	rst 38h			;6e24	ff		.
	rst 38h			;6e25	ff		.
	rst 38h			;6e26	ff		.
	rst 38h			;6e27	ff		.
	rst 38h			;6e28	ff		.
	xor 0feh		;6e29	ee fe		. .
	xor 0feh		;6e2b	ee fe		. .
	xor 0feh		;6e2d	ee fe		. .
	rst 28h			;6e2f	ef		.
	rst 38h			;6e30	ff		.
	rst 38h			;6e31	ff		.
	rst 38h			;6e32	ff		.
	rst 38h			;6e33	ff		.
	rst 38h			;6e34	ff		.
	rst 38h			;6e35	ff		.
	rst 38h			;6e36	ff		.
	rst 38h			;6e37	ff		.
	rst 38h			;6e38	ff		.
	rst 38h			;6e39	ff		.
	rst 38h			;6e3a	ff		.
	rst 38h			;6e3b	ff		.
	rst 38h			;6e3c	ff		.
	rst 38h			;6e3d	ff		.
	rst 38h			;6e3e	ff		.
	rst 38h			;6e3f	ff		.
	rst 38h			;6e40	ff		.
	rst 38h			;6e41	ff		.
	rst 38h			;6e42	ff		.
	rst 38h			;6e43	ff		.
	rst 38h			;6e44	ff		.
	cp 0eeh			;6e45	fe ee		. .
	rst 28h			;6e47	ef		.
	rst 38h			;6e48	ff		.
	xor 0feh		;6e49	ee fe		. .
	rst 28h			;6e4b	ef		.
	rst 38h			;6e4c	ff		.
	xor 0feh		;6e4d	ee fe		. .
	xor 0eeh		;6e4f	ee ee		. .
	rst 38h			;6e51	ff		.
	rst 38h			;6e52	ff		.
	rst 38h			;6e53	ff		.
	rst 38h			;6e54	ff		.
	rst 38h			;6e55	ff		.
	rst 38h			;6e56	ff		.
	rst 38h			;6e57	ff		.
	rst 38h			;6e58	ff		.
	rst 38h			;6e59	ff		.
	rst 38h			;6e5a	ff		.
	rst 38h			;6e5b	ff		.
	rst 38h			;6e5c	ff		.
	rst 38h			;6e5d	ff		.
	rst 38h			;6e5e	ff		.
	rst 38h			;6e5f	ff		.
	rst 38h			;6e60	ff		.
	rst 38h			;6e61	ff		.
	rst 38h			;6e62	ff		.
	rst 38h			;6e63	ff		.
	rst 38h			;6e64	ff		.
	cp 0eeh			;6e65	fe ee		. .
	rst 28h			;6e67	ef		.
	rst 38h			;6e68	ff		.
	rst 38h			;6e69	ff		.
	xor 0ffh		;6e6a	ee ff		. .
	xor 0efh		;6e6c	ee ef		. .
	xor 0ffh		;6e6e	ee ff		. .
	xor 0ffh		;6e70	ee ff		. .
	rst 38h			;6e72	ff		.
	rst 38h			;6e73	ff		.
	rst 38h			;6e74	ff		.
	rst 38h			;6e75	ff		.
	rst 38h			;6e76	ff		.
	rst 38h			;6e77	ff		.
	rst 38h			;6e78	ff		.
	rst 38h			;6e79	ff		.
	rst 38h			;6e7a	ff		.
	rst 38h			;6e7b	ff		.
	rst 38h			;6e7c	ff		.
	rst 38h			;6e7d	ff		.
	rst 38h			;6e7e	ff		.
	rst 38h			;6e7f	ff		.
	rst 38h			;6e80	ff		.
	rst 38h			;6e81	ff		.
	rst 38h			;6e82	ff		.
	rst 38h			;6e83	ff		.
	rst 38h			;6e84	ff		.
	rst 38h			;6e85	ff		.
	rst 38h			;6e86	ff		.
	rst 38h			;6e87	ff		.
	rst 38h			;6e88	ff		.
	rst 38h			;6e89	ff		.
	xor 0ddh		;6e8a	ee dd		. .
	rst 38h			;6e8c	ff		.
	cp 0e8h			;6e8d	fe e8		. .
	adc a,l			;6e8f	8d		.
	rst 18h			;6e90	df		.
	cp 08dh			;6e91	fe 8d		. .
	ret c			;6e93	d8		.
	rst 18h			;6e94	df		.
	ret pe			;6e95	e8		.
	defb 0ddh,0ddh,08dh ;illegal sequence	;6e96	dd dd 8d	. . .
	adc a,l			;6e99	8d		.
	defb 0ddh,0ddh,0d8h ;illegal sequence	;6e9a	dd dd d8	. . .
	rst 38h			;6e9d	ff		.
	rst 38h			;6e9e	ff		.
	rst 38h			;6e9f	ff		.
	rst 38h			;6ea0	ff		.
	rst 38h			;6ea1	ff		.
	rst 38h			;6ea2	ff		.
	rst 38h			;6ea3	ff		.
	rst 38h			;6ea4	ff		.
	rst 38h			;6ea5	ff		.
	rst 38h			;6ea6	ff		.
	rst 38h			;6ea7	ff		.
	rst 38h			;6ea8	ff		.
	xor 0ffh		;6ea9	ee ff		. .
	xor 0ffh		;6eab	ee ff		. .
	xor 0ffh		;6ead	ee ff		. .
	xor 0ffh		;6eaf	ee ff		. .
	xor 0ffh		;6eb1	ee ff		. .
	xor 0ffh		;6eb3	ee ff		. .
	xor 0ffh		;6eb5	ee ff		. .
	xor 0ffh		;6eb7	ee ff		. .
	cp 0eeh			;6eb9	fe ee		. .
	rst 28h			;6ebb	ef		.
	rst 38h			;6ebc	ff		.
	rst 38h			;6ebd	ff		.
	rst 38h			;6ebe	ff		.
	rst 38h			;6ebf	ff		.
	rst 38h			;6ec0	ff		.
	rst 38h			;6ec1	ff		.
	rst 38h			;6ec2	ff		.
	rst 38h			;6ec3	ff		.
	rst 38h			;6ec4	ff		.
	rst 38h			;6ec5	ff		.
	rst 38h			;6ec6	ff		.
	rst 38h			;6ec7	ff		.
	rst 38h			;6ec8	ff		.
	rst 38h			;6ec9	ff		.
	rst 38h			;6eca	ff		.
	rst 38h			;6ecb	ff		.
	rst 38h			;6ecc	ff		.
	rst 38h			;6ecd	ff		.
	rst 38h			;6ece	ff		.
	rst 38h			;6ecf	ff		.
	rst 38h			;6ed0	ff		.
	rst 38h			;6ed1	ff		.
	rst 38h			;6ed2	ff		.
	rst 38h			;6ed3	ff		.
	rst 38h			;6ed4	ff		.
	rst 38h			;6ed5	ff		.
	rst 38h			;6ed6	ff		.
	rst 38h			;6ed7	ff		.
	rst 38h			;6ed8	ff		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;6ed9	fd dd dd	. . .
	defb 0ddh,0fdh,088h ;illegal sequence	;6edc	dd fd 88	. . .
	adc a,b			;6edf	88		.
	adc a,b			;6ee0	88		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;6ee1	fd dd dd	. . .
	defb 0ddh,0fdh,0ddh ;illegal sequence	;6ee4	dd fd dd	. . .
	defb 0ddh,0ddh,0ffh ;illegal sequence	;6ee7	dd dd ff	. . .
	rst 38h			;6eea	ff		.
	rst 38h			;6eeb	ff		.
	rst 38h			;6eec	ff		.
	rst 38h			;6eed	ff		.
	rst 38h			;6eee	ff		.
	rst 38h			;6eef	ff		.
	rst 38h			;6ef0	ff		.
	rst 38h			;6ef1	ff		.
	rst 38h			;6ef2	ff		.
	rst 38h			;6ef3	ff		.
	rst 38h			;6ef4	ff		.
	rst 38h			;6ef5	ff		.
	rst 38h			;6ef6	ff		.
	rst 38h			;6ef7	ff		.
	rst 38h			;6ef8	ff		.
	defb 0ddh,0dfh,0fdh ;illegal sequence	;6ef9	dd df fd	. . .
	defb 0ddh,088h,0dfh ;illegal sequence	;6efc	dd 88 df	. . .
	defb 0fdh,088h,0ddh ;illegal sequence	;6eff	fd 88 dd	. . .
	rst 18h			;6f02	df		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;6f03	fd dd dd	. . .
	rst 18h			;6f06	df		.
	defb 0fdh,0ddh,0ffh ;illegal sequence	;6f07	fd dd ff	. . .
	rst 38h			;6f0a	ff		.
	rst 38h			;6f0b	ff		.
	rst 38h			;6f0c	ff		.
	rst 38h			;6f0d	ff		.
	rst 38h			;6f0e	ff		.
	rst 38h			;6f0f	ff		.
	rst 38h			;6f10	ff		.
	rst 38h			;6f11	ff		.
	rst 38h			;6f12	ff		.
	rst 38h			;6f13	ff		.
	rst 38h			;6f14	ff		.
	rst 38h			;6f15	ff		.
	rst 38h			;6f16	ff		.
	rst 38h			;6f17	ff		.
	rst 38h			;6f18	ff		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6f19	dd dd dd	. . .
	rst 18h			;6f1c	df		.
	adc a,b			;6f1d	88		.
	adc a,b			;6f1e	88		.
	adc a,b			;6f1f	88		.
	rst 18h			;6f20	df		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6f21	dd dd dd	. . .
	rst 18h			;6f24	df		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6f25	dd dd dd	. . .
	rst 18h			;6f28	df		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;6f29	fd dd dd	. . .
	defb 0ddh,0fdh,0ddh ;illegal sequence	;6f2c	dd fd dd	. . .
	defb 0ddh,0ddh,0ffh ;illegal sequence	;6f2f	dd dd ff	. . .
	rst 38h			;6f32	ff		.
	rst 38h			;6f33	ff		.
	rst 38h			;6f34	ff		.
	rst 38h			;6f35	ff		.
	rst 38h			;6f36	ff		.
	rst 38h			;6f37	ff		.
	rst 38h			;6f38	ff		.
	rst 38h			;6f39	ff		.
	rst 38h			;6f3a	ff		.
	rst 38h			;6f3b	ff		.
	rst 38h			;6f3c	ff		.
	rst 38h			;6f3d	ff		.
	rst 38h			;6f3e	ff		.
	rst 38h			;6f3f	ff		.
	rst 38h			;6f40	ff		.
	rst 38h			;6f41	ff		.
	rst 38h			;6f42	ff		.
	rst 38h			;6f43	ff		.
	rst 38h			;6f44	ff		.
	rst 38h			;6f45	ff		.
	rst 38h			;6f46	ff		.
	rst 38h			;6f47	ff		.
	rst 38h			;6f48	ff		.
	defb 0ddh,0dfh,0fdh ;illegal sequence	;6f49	dd df fd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;6f4c	dd dd df	. . .
	defb 0fdh,0ddh,0ffh ;illegal sequence	;6f4f	fd dd ff	. . .
	rst 38h			;6f52	ff		.
	rst 38h			;6f53	ff		.
	rst 38h			;6f54	ff		.
	rst 38h			;6f55	ff		.
	rst 38h			;6f56	ff		.
	rst 38h			;6f57	ff		.
	rst 38h			;6f58	ff		.
	rst 38h			;6f59	ff		.
	rst 38h			;6f5a	ff		.
	rst 38h			;6f5b	ff		.
	rst 38h			;6f5c	ff		.
	rst 38h			;6f5d	ff		.
	rst 38h			;6f5e	ff		.
	rst 38h			;6f5f	ff		.
	rst 38h			;6f60	ff		.
	rst 38h			;6f61	ff		.
	rst 38h			;6f62	ff		.
	rst 38h			;6f63	ff		.
	rst 38h			;6f64	ff		.
	rst 38h			;6f65	ff		.
	rst 38h			;6f66	ff		.
	rst 38h			;6f67	ff		.
	rst 38h			;6f68	ff		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6f69	dd dd dd	. . .
	rst 18h			;6f6c	df		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6f6d	dd dd dd	. . .
	rst 18h			;6f70	df		.
	rst 38h			;6f71	ff		.
	rst 38h			;6f72	ff		.
	rst 38h			;6f73	ff		.
	rst 38h			;6f74	ff		.
	rst 38h			;6f75	ff		.
	rst 38h			;6f76	ff		.
	rst 38h			;6f77	ff		.
	rst 38h			;6f78	ff		.
	rst 38h			;6f79	ff		.
	rst 38h			;6f7a	ff		.
	rst 38h			;6f7b	ff		.
	rst 38h			;6f7c	ff		.
	rst 38h			;6f7d	ff		.
	rst 38h			;6f7e	ff		.
	rst 38h			;6f7f	ff		.
	rst 38h			;6f80	ff		.
	rst 38h			;6f81	ff		.
	rst 38h			;6f82	ff		.
	rst 38h			;6f83	ff		.
	rst 38h			;6f84	ff		.
	rst 38h			;6f85	ff		.
	rst 38h			;6f86	ff		.
	rst 38h			;6f87	ff		.
	rst 38h			;6f88	ff		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;6f89	fd dd dd	. . .
	defb 0ddh,0fdh,0ddh ;illegal sequence	;6f8c	dd fd dd	. . .
	defb 0ddh,0ddh,0ffh ;illegal sequence	;6f8f	dd dd ff	. . .
	rst 38h			;6f92	ff		.
	rst 38h			;6f93	ff		.
	rst 38h			;6f94	ff		.
	rst 38h			;6f95	ff		.
	rst 38h			;6f96	ff		.
	rst 38h			;6f97	ff		.
	rst 38h			;6f98	ff		.
	rst 38h			;6f99	ff		.
	rst 38h			;6f9a	ff		.
	rst 38h			;6f9b	ff		.
	rst 38h			;6f9c	ff		.
	rst 38h			;6f9d	ff		.
	rst 38h			;6f9e	ff		.
	rst 38h			;6f9f	ff		.
	rst 38h			;6fa0	ff		.
	rst 38h			;6fa1	ff		.
	rst 38h			;6fa2	ff		.
	rst 38h			;6fa3	ff		.
	rst 38h			;6fa4	ff		.
	cp 0eeh			;6fa5	fe ee		. .
	rst 28h			;6fa7	ef		.
	rst 38h			;6fa8	ff		.
	defb 0ddh,0dfh,0fdh ;illegal sequence	;6fa9	dd df fd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;6fac	dd dd df	. . .
	defb 0fdh,0ddh,0ffh ;illegal sequence	;6faf	fd dd ff	. . .
	rst 38h			;6fb2	ff		.
	rst 38h			;6fb3	ff		.
	rst 38h			;6fb4	ff		.
	rst 38h			;6fb5	ff		.
	rst 38h			;6fb6	ff		.
	rst 38h			;6fb7	ff		.
	rst 38h			;6fb8	ff		.
	rst 38h			;6fb9	ff		.
	rst 38h			;6fba	ff		.
	rst 38h			;6fbb	ff		.
	rst 38h			;6fbc	ff		.
	rst 38h			;6fbd	ff		.
	rst 38h			;6fbe	ff		.
	rst 38h			;6fbf	ff		.
	rst 38h			;6fc0	ff		.
	rst 38h			;6fc1	ff		.
	rst 38h			;6fc2	ff		.
	rst 38h			;6fc3	ff		.
	rst 38h			;6fc4	ff		.
	cp 0eeh			;6fc5	fe ee		. .
	rst 28h			;6fc7	ef		.
	rst 38h			;6fc8	ff		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6fc9	dd dd dd	. . .
	rst 18h			;6fcc	df		.
	defb 0ddh,0ddh,0ddh ;illegal sequence	;6fcd	dd dd dd	. . .
	rst 18h			;6fd0	df		.
	rst 38h			;6fd1	ff		.
	rst 38h			;6fd2	ff		.
	rst 38h			;6fd3	ff		.
	rst 38h			;6fd4	ff		.
	rst 38h			;6fd5	ff		.
	rst 38h			;6fd6	ff		.
	rst 38h			;6fd7	ff		.
	rst 38h			;6fd8	ff		.
	rst 38h			;6fd9	ff		.
	rst 38h			;6fda	ff		.
	rst 38h			;6fdb	ff		.
	rst 38h			;6fdc	ff		.
	rst 38h			;6fdd	ff		.
	rst 38h			;6fde	ff		.
	rst 38h			;6fdf	ff		.
	rst 38h			;6fe0	ff		.
	rst 38h			;6fe1	ff		.
	rst 38h			;6fe2	ff		.
	rst 38h			;6fe3	ff		.
	rst 38h			;6fe4	ff		.
	cp 0eeh			;6fe5	fe ee		. .
	rst 28h			;6fe7	ef		.
	rst 38h			;6fe8	ff		.
	rst 38h			;6fe9	ff		.
	rst 38h			;6fea	ff		.
	rst 38h			;6feb	ff		.
	jp m,0ffffh		;6fec	fa ff ff	. . .
	rst 38h			;6fef	ff		.
	xor d			;6ff0	aa		.
	rst 38h			;6ff1	ff		.
	rst 38h			;6ff2	ff		.
	rst 38h			;6ff3	ff		.
	xor d			;6ff4	aa		.
	rst 38h			;6ff5	ff		.
	rst 38h			;6ff6	ff		.
	rst 38h			;6ff7	ff		.
	rst 38h			;6ff8	ff		.
	rst 38h			;6ff9	ff		.
	rst 38h			;6ffa	ff		.
	rst 38h			;6ffb	ff		.
	xor d			;6ffc	aa		.
	rst 38h			;6ffd	ff		.
	rst 38h			;6ffe	ff		.
	rst 38h			;6fff	ff		.
l7000h:
	rst 38h			;7000	ff		.
	rst 38h			;7001	ff		.
	rst 38h			;7002	ff		.
	rst 38h			;7003	ff		.
	rst 38h			;7004	ff		.
	rst 38h			;7005	ff		.
	rst 38h			;7006	ff		.
	rst 38h			;7007	ff		.
	rst 38h			;7008	ff		.
	xor d			;7009	aa		.
	xor d			;700a	aa		.
	rst 38h			;700b	ff		.
	xor d			;700c	aa		.
	rst 38h			;700d	ff		.
	rst 38h			;700e	ff		.
	jp m,0aaafh		;700f	fa af aa	. . .
	xor d			;7012	aa		.
	jp m,0ffafh		;7013	fa af ff	. . .
	xor d			;7016	aa		.
	jp m,0aaafh		;7017	fa af aa	. . .
	xor d			;701a	aa		.
	jp m,0ffaah		;701b	fa aa ff	. . .
	rst 38h			;701e	ff		.
	rst 38h			;701f	ff		.
	rst 38h			;7020	ff		.
	rst 38h			;7021	ff		.
	rst 38h			;7022	ff		.
	rst 38h			;7023	ff		.
	rst 38h			;7024	ff		.
	rst 38h			;7025	ff		.
	rst 38h			;7026	ff		.
	rst 38h			;7027	ff		.
	rst 38h			;7028	ff		.
	xor d			;7029	aa		.
	xor a			;702a	af		.
	jp m,0ffaah		;702b	fa aa ff	. . .
	rst 38h			;702e	ff		.
	xor d			;702f	aa		.
	rst 38h			;7030	ff		.
	rst 38h			;7031	ff		.
	rst 38h			;7032	ff		.
	xor d			;7033	aa		.
	rst 38h			;7034	ff		.
	rst 38h			;7035	ff		.
	rst 38h			;7036	ff		.
	xor d			;7037	aa		.
	rst 38h			;7038	ff		.
	xor d			;7039	aa		.
	xor a			;703a	af		.
	xor d			;703b	aa		.
	xor d			;703c	aa		.
	rst 38h			;703d	ff		.
	rst 38h			;703e	ff		.
	rst 38h			;703f	ff		.
	rst 38h			;7040	ff		.
	rst 38h			;7041	ff		.
	rst 38h			;7042	ff		.
	rst 38h			;7043	ff		.
	rst 38h			;7044	ff		.
	rst 38h			;7045	ff		.
	rst 38h			;7046	ff		.
	rst 38h			;7047	ff		.
	rst 38h			;7048	ff		.
	xor d			;7049	aa		.
	jp m,0aaaah		;704a	fa aa aa	. . .
	xor d			;704d	aa		.
	jp m,0faffh		;704e	fa ff fa	. . .
	xor d			;7051	aa		.
	jp m,0aaaah		;7052	fa aa aa	. . .
	xor d			;7055	aa		.
	jp m,0faafh		;7056	fa af fa	. . .
	xor d			;7059	aa		.
	jp m,0faafh		;705a	fa af fa	. . .
	rst 38h			;705d	ff		.
	rst 38h			;705e	ff		.
	rst 38h			;705f	ff		.
	rst 38h			;7060	ff		.
	rst 38h			;7061	ff		.
	rst 38h			;7062	ff		.
	rst 38h			;7063	ff		.
	rst 38h			;7064	ff		.
	rst 38h			;7065	ff		.
	rst 38h			;7066	ff		.
	rst 38h			;7067	ff		.
	rst 38h			;7068	ff		.
	rst 38h			;7069	ff		.
	xor d			;706a	aa		.
	xor d			;706b	aa		.
	xor d			;706c	aa		.
	xor a			;706d	af		.
	xor d			;706e	aa		.
	rst 38h			;706f	ff		.
	rst 38h			;7070	ff		.
	rst 38h			;7071	ff		.
	xor d			;7072	aa		.
	xor d			;7073	aa		.
	xor d			;7074	aa		.
	xor a			;7075	af		.
	xor d			;7076	aa		.
	rst 38h			;7077	ff		.
	rst 38h			;7078	ff		.
	xor a			;7079	af		.
	xor d			;707a	aa		.
	xor d			;707b	aa		.
	xor d			;707c	aa		.
	rst 38h			;707d	ff		.
	rst 38h			;707e	ff		.
	rst 38h			;707f	ff		.
	rst 38h			;7080	ff		.
	rst 38h			;7081	ff		.
	rst 38h			;7082	ff		.
	rst 38h			;7083	ff		.
	rst 38h			;7084	ff		.
	rst 38h			;7085	ff		.
	rst 38h			;7086	ff		.
	rst 38h			;7087	ff		.
	rst 38h			;7088	ff		.
	rst 38h			;7089	ff		.
	rst 38h			;708a	ff		.
	rst 38h			;708b	ff		.
	xor d			;708c	aa		.
	rst 38h			;708d	ff		.
	rst 38h			;708e	ff		.
	rst 38h			;708f	ff		.
	xor d			;7090	aa		.
	rst 38h			;7091	ff		.
	rst 38h			;7092	ff		.
	rst 38h			;7093	ff		.
	xor d			;7094	aa		.
	rst 38h			;7095	ff		.
	rst 38h			;7096	ff		.
	rst 38h			;7097	ff		.
	xor d			;7098	aa		.
	rst 38h			;7099	ff		.
	rst 38h			;709a	ff		.
	rst 38h			;709b	ff		.
	xor d			;709c	aa		.
	rst 38h			;709d	ff		.
	rst 38h			;709e	ff		.
	rst 38h			;709f	ff		.
	rst 38h			;70a0	ff		.
	rst 38h			;70a1	ff		.
	rst 38h			;70a2	ff		.
	rst 38h			;70a3	ff		.
	rst 38h			;70a4	ff		.
	rst 38h			;70a5	ff		.
	rst 38h			;70a6	ff		.
	rst 38h			;70a7	ff		.
	rst 38h			;70a8	ff		.
	rst 38h			;70a9	ff		.
	xor d			;70aa	aa		.
	rst 38h			;70ab	ff		.
	xor d			;70ac	aa		.
	rst 38h			;70ad	ff		.
	xor d			;70ae	aa		.
	rst 38h			;70af	ff		.
	xor d			;70b0	aa		.
	xor d			;70b1	aa		.
	xor d			;70b2	aa		.
	rst 38h			;70b3	ff		.
	xor d			;70b4	aa		.
	rst 38h			;70b5	ff		.
	xor d			;70b6	aa		.
	rst 38h			;70b7	ff		.
	xor d			;70b8	aa		.
	rst 38h			;70b9	ff		.
	xor d			;70ba	aa		.
	rst 38h			;70bb	ff		.
	xor d			;70bc	aa		.
	rst 38h			;70bd	ff		.
	rst 38h			;70be	ff		.
	rst 38h			;70bf	ff		.
	rst 38h			;70c0	ff		.
	rst 38h			;70c1	ff		.
	rst 38h			;70c2	ff		.
	rst 38h			;70c3	ff		.
	rst 38h			;70c4	ff		.
	rst 38h			;70c5	ff		.
	rst 38h			;70c6	ff		.
	rst 38h			;70c7	ff		.
	rst 38h			;70c8	ff		.
l70c9h:
	defb 0fdh,0ddh,0ddh ;illegal sequence	;70c9	fd dd dd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;70cc	dd dd df	. . .
	defb 0fdh,088h,088h ;illegal sequence	;70cf	fd 88 88	. . .
	adc a,b			;70d2	88		.
	adc a,b			;70d3	88		.
	rst 18h			;70d4	df		.
	defb 0fdh,0ddh,0ddh ;illegal sequence	;70d5	fd dd dd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;70d8	dd dd df	. . .
	defb 0fdh,0ddh,0ddh ;illegal sequence	;70db	fd dd dd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;70de	dd dd df	. . .
	defb 0fdh,0ddh,0ddh ;illegal sequence	;70e1	fd dd dd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;70e4	dd dd df	. . .
	defb 0fdh,0ddh,0ddh ;illegal sequence	;70e7	fd dd dd	. . .
	defb 0ddh,0ddh,0dfh ;illegal sequence	;70ea	dd dd df	. . .
	or 066h			;70ed	f6 66		. f
	ld h,(hl)		;70ef	66		f
	ld h,(hl)		;70f0	66		f
	ld h,(hl)		;70f1	66		f
	ld l,a			;70f2	6f		o
	or 0aah			;70f3	f6 aa		. .
	xor d			;70f5	aa		.
	xor d			;70f6	aa		.
	xor d			;70f7	aa		.
	ld l,a			;70f8	6f		o
	or 066h			;70f9	f6 66		. f
	ld h,(hl)		;70fb	66		f
	ld h,(hl)		;70fc	66		f
	ld h,(hl)		;70fd	66		f
	ld l,a			;70fe	6f		o
	or 066h			;70ff	f6 66		. f
	ld h,(hl)		;7101	66		f
	ld h,(hl)		;7102	66		f
	ld h,(hl)		;7103	66		f
	ld l,a			;7104	6f		o
	or 066h			;7105	f6 66		. f
	ld h,(hl)		;7107	66		f
	ld h,(hl)		;7108	66		f
	ld h,(hl)		;7109	66		f
	ld l,a			;710a	6f		o
	or 066h			;710b	f6 66		. f
	ld h,(hl)		;710d	66		f
	ld h,(hl)		;710e	66		f
	ld h,(hl)		;710f	66		f
	ld l,a			;7110	6f		o
	jp m,0aaaah		;7111	fa aa aa	. . .
	xor d			;7114	aa		.
	xor d			;7115	aa		.
	xor a			;7116	af		.
	jp m,0eeeeh		;7117	fa ee ee	. . .
	xor 0eeh		;711a	ee ee		. .
	xor a			;711c	af		.
	jp m,0aaaah		;711d	fa aa aa	. . .
	xor d			;7120	aa		.
	xor d			;7121	aa		.
	xor a			;7122	af		.
	jp m,0aaaah		;7123	fa aa aa	. . .
	xor d			;7126	aa		.
	xor d			;7127	aa		.
	xor a			;7128	af		.
	jp m,0aaaah		;7129	fa aa aa	. . .
	xor d			;712c	aa		.
	xor d			;712d	aa		.
	xor a			;712e	af		.
	jp m,0aaaah		;712f	fa aa aa	. . .
	xor d			;7132	aa		.
	xor d			;7133	aa		.
	xor a			;7134	af		.
l7135h:
	rst 38h			;7135	ff		.
	rst 38h			;7136	ff		.
	rst 38h			;7137	ff		.
	rst 38h			;7138	ff		.
	cp 0eeh			;7139	fe ee		. .
	rst 28h			;713b	ef		.
	rst 38h			;713c	ff		.
	xor 0ffh		;713d	ee ff		. .
	xor 0ffh		;713f	ee ff		. .
	xor 0ffh		;7141	ee ff		. .
	xor 0ffh		;7143	ee ff		. .
	xor 0ffh		;7145	ee ff		. .
	xor 0ffh		;7147	ee ff		. .
	xor 0ffh		;7149	ee ff		. .
	xor 0ffh		;714b	ee ff		. .
	cp 0eeh			;714d	fe ee		. .
	rst 28h			;714f	ef		.
	rst 38h			;7150	ff		.
	rst 38h			;7151	ff		.
	rst 38h			;7152	ff		.
	rst 38h			;7153	ff		.
	rst 38h			;7154	ff		.
	rst 38h			;7155	ff		.
	rst 38h			;7156	ff		.
	rst 38h			;7157	ff		.
	rst 38h			;7158	ff		.
	rst 38h			;7159	ff		.
	xor 0ffh		;715a	ee ff		. .
	rst 38h			;715c	ff		.
	cp 0eeh			;715d	fe ee		. .
	rst 38h			;715f	ff		.
	rst 38h			;7160	ff		.
	rst 38h			;7161	ff		.
	xor 0ffh		;7162	ee ff		. .
	rst 38h			;7164	ff		.
	rst 38h			;7165	ff		.
	xor 0ffh		;7166	ee ff		. .
	rst 38h			;7168	ff		.
	rst 38h			;7169	ff		.
	xor 0ffh		;716a	ee ff		. .
	rst 38h			;716c	ff		.
	rst 38h			;716d	ff		.
	xor 0ffh		;716e	ee ff		. .
	rst 38h			;7170	ff		.
	rst 38h			;7171	ff		.
	rst 38h			;7172	ff		.
	rst 38h			;7173	ff		.
	rst 38h			;7174	ff		.
	rst 38h			;7175	ff		.
	rst 38h			;7176	ff		.
	rst 38h			;7177	ff		.
	rst 38h			;7178	ff		.
	xor 0eeh		;7179	ee ee		. .
	rst 28h			;717b	ef		.
	rst 38h			;717c	ff		.
	rst 38h			;717d	ff		.
	rst 38h			;717e	ff		.
	xor 0ffh		;717f	ee ff		. .
	rst 38h			;7181	ff		.
	cp 0efh			;7182	fe ef		. .
	rst 38h			;7184	ff		.
	cp 0efh			;7185	fe ef		. .
	rst 38h			;7187	ff		.
	rst 38h			;7188	ff		.
	xor 0ffh		;7189	ee ff		. .
	rst 38h			;718b	ff		.
	rst 38h			;718c	ff		.
	xor 0eeh		;718d	ee ee		. .
	xor 0ffh		;718f	ee ff		. .
	rst 38h			;7191	ff		.
	rst 38h			;7192	ff		.
	rst 38h			;7193	ff		.
	rst 38h			;7194	ff		.
	rst 38h			;7195	ff		.
	rst 38h			;7196	ff		.
	rst 38h			;7197	ff		.
	rst 38h			;7198	ff		.
	xor 0eeh		;7199	ee ee		. .
	rst 28h			;719b	ef		.
	rst 38h			;719c	ff		.
	rst 38h			;719d	ff		.
	rst 38h			;719e	ff		.
	xor 0ffh		;719f	ee ff		. .
	cp 0eeh			;71a1	fe ee		. .
	rst 28h			;71a3	ef		.
	rst 38h			;71a4	ff		.
	rst 38h			;71a5	ff		.
	rst 38h			;71a6	ff		.
	xor 0ffh		;71a7	ee ff		. .
	rst 38h			;71a9	ff		.
	rst 38h			;71aa	ff		.
	xor 0ffh		;71ab	ee ff		. .
	xor 0eeh		;71ad	ee ee		. .
	rst 28h			;71af	ef		.
	rst 38h			;71b0	ff		.
	rst 38h			;71b1	ff		.
	rst 38h			;71b2	ff		.
	rst 38h			;71b3	ff		.
	rst 38h			;71b4	ff		.
	rst 38h			;71b5	ff		.
	rst 38h			;71b6	ff		.
	rst 38h			;71b7	ff		.
	rst 38h			;71b8	ff		.
	rst 38h			;71b9	ff		.
	cp 0eeh			;71ba	fe ee		. .
	rst 38h			;71bc	ff		.
	rst 38h			;71bd	ff		.
	rst 28h			;71be	ef		.
	xor 0ffh		;71bf	ee ff		. .
	cp 0ffh			;71c1	fe ff		. .
	xor 0ffh		;71c3	ee ff		. .
	xor 0eeh		;71c5	ee ee		. .
	xor 0efh		;71c7	ee ef		. .
	rst 38h			;71c9	ff		.
	rst 38h			;71ca	ff		.
	xor 0ffh		;71cb	ee ff		. .
	rst 38h			;71cd	ff		.
	rst 38h			;71ce	ff		.
	xor 0ffh		;71cf	ee ff		. .
	rst 38h			;71d1	ff		.
	rst 38h			;71d2	ff		.
	rst 38h			;71d3	ff		.
	rst 38h			;71d4	ff		.
	rst 38h			;71d5	ff		.
	rst 38h			;71d6	ff		.
	rst 38h			;71d7	ff		.
	rst 38h			;71d8	ff		.
	xor 0eeh		;71d9	ee ee		. .
	xor 0ffh		;71db	ee ff		. .
	rst 28h			;71dd	ef		.
	rst 38h			;71de	ff		.
	rst 38h			;71df	ff		.
	rst 38h			;71e0	ff		.
	xor 0eeh		;71e1	ee ee		. .
	rst 28h			;71e3	ef		.
	rst 38h			;71e4	ff		.
	rst 38h			;71e5	ff		.
	rst 38h			;71e6	ff		.
	xor 0ffh		;71e7	ee ff		. .
	rst 38h			;71e9	ff		.
	rst 38h			;71ea	ff		.
	xor 0ffh		;71eb	ee ff		. .
	xor 0eeh		;71ed	ee ee		. .
	rst 28h			;71ef	ef		.
	rst 38h			;71f0	ff		.
	rst 38h			;71f1	ff		.
	rst 38h			;71f2	ff		.
	rst 38h			;71f3	ff		.
	rst 38h			;71f4	ff		.
	rst 38h			;71f5	ff		.
	rst 38h			;71f6	ff		.
	rst 38h			;71f7	ff		.
	rst 38h			;71f8	ff		.
	cp 0eeh			;71f9	fe ee		. .
	xor 0ffh		;71fb	ee ff		. .
	xor 0ffh		;71fd	ee ff		. .
	rst 38h			;71ff	ff		.
	rst 38h			;7200	ff		.
	xor 0eeh		;7201	ee ee		. .
	rst 28h			;7203	ef		.
	rst 38h			;7204	ff		.
	xor 0ffh		;7205	ee ff		. .
	xor 0ffh		;7207	ee ff		. .
	xor 0ffh		;7209	ee ff		. .
	xor 0ffh		;720b	ee ff		. .
	cp 0eeh			;720d	fe ee		. .
	rst 28h			;720f	ef		.
	rst 38h			;7210	ff		.
	rst 38h			;7211	ff		.
	rst 38h			;7212	ff		.
	rst 38h			;7213	ff		.
	rst 38h			;7214	ff		.
	rst 38h			;7215	ff		.
	rst 38h			;7216	ff		.
	rst 38h			;7217	ff		.
	rst 38h			;7218	ff		.
	xor 0eeh		;7219	ee ee		. .
	xor 0ffh		;721b	ee ff		. .
	rst 38h			;721d	ff		.
	rst 38h			;721e	ff		.
	xor 0ffh		;721f	ee ff		. .
	rst 38h			;7221	ff		.
	cp 0efh			;7222	fe ef		. .
	rst 38h			;7224	ff		.
	rst 38h			;7225	ff		.
	xor 0ffh		;7226	ee ff		. .
	rst 38h			;7228	ff		.
	cp 0efh			;7229	fe ef		. .
	rst 38h			;722b	ff		.
	rst 38h			;722c	ff		.
	cp 0efh			;722d	fe ef		. .
	rst 38h			;722f	ff		.
	rst 38h			;7230	ff		.
	rst 38h			;7231	ff		.
	rst 38h			;7232	ff		.
	rst 38h			;7233	ff		.
	rst 38h			;7234	ff		.
	rst 38h			;7235	ff		.
	rst 38h			;7236	ff		.
	rst 38h			;7237	ff		.
	rst 38h			;7238	ff		.
	cp 0eeh			;7239	fe ee		. .
	rst 28h			;723b	ef		.
	rst 38h			;723c	ff		.
	xor 0ffh		;723d	ee ff		. .
	xor 0ffh		;723f	ee ff		. .
	cp 0eeh			;7241	fe ee		. .
	rst 28h			;7243	ef		.
	rst 38h			;7244	ff		.
	xor 0ffh		;7245	ee ff		. .
	xor 0ffh		;7247	ee ff		. .
	xor 0ffh		;7249	ee ff		. .
	xor 0ffh		;724b	ee ff		. .
	cp 0eeh			;724d	fe ee		. .
	rst 28h			;724f	ef		.
	rst 38h			;7250	ff		.
	rst 38h			;7251	ff		.
	rst 38h			;7252	ff		.
	rst 38h			;7253	ff		.
	rst 38h			;7254	ff		.
	rst 38h			;7255	ff		.
	rst 38h			;7256	ff		.
	rst 38h			;7257	ff		.
	rst 38h			;7258	ff		.
	cp 0eeh			;7259	fe ee		. .
	rst 28h			;725b	ef		.
	rst 38h			;725c	ff		.
	xor 0ffh		;725d	ee ff		. .
	xor 0ffh		;725f	ee ff		. .
	xor 0ffh		;7261	ee ff		. .
	xor 0ffh		;7263	ee ff		. .
	cp 0eeh			;7265	fe ee		. .
	xor 0ffh		;7267	ee ff		. .
	rst 38h			;7269	ff		.
	rst 38h			;726a	ff		.
	xor 0ffh		;726b	ee ff		. .
	xor 0eeh		;726d	ee ee		. .
	rst 28h			;726f	ef		.
	rst 38h			;7270	ff		.
	rst 38h			;7271	ff		.
	rst 38h			;7272	ff		.
	rst 38h			;7273	ff		.
	rst 38h			;7274	ff		.
	rst 38h			;7275	ff		.
	rst 38h			;7276	ff		.
	rst 38h			;7277	ff		.
	rst 38h			;7278	ff		.
	rst 38h			;7279	ff		.
	xor 0efh		;727a	ee ef		. .
	rst 38h			;727c	ff		.
	cp 0efh			;727d	fe ef		. .
	xor 0ffh		;727f	ee ff		. .
	xor 0ffh		;7281	ee ff		. .
	cp 0efh			;7283	fe ef		. .
	xor 0eeh		;7285	ee ee		. .
	xor 0efh		;7287	ee ef		. .
	xor 0ffh		;7289	ee ff		. .
	cp 0efh			;728b	fe ef		. .
	rst 38h			;728d	ff		.
	rst 38h			;728e	ff		.
	rst 38h			;728f	ff		.
	rst 38h			;7290	ff		.
	rst 38h			;7291	ff		.
	rst 38h			;7292	ff		.
	rst 38h			;7293	ff		.
	rst 38h			;7294	ff		.
	rst 38h			;7295	ff		.
	rst 38h			;7296	ff		.
	rst 38h			;7297	ff		.
	rst 38h			;7298	ff		.
	xor 0eeh		;7299	ee ee		. .
	xor 0ffh		;729b	ee ff		. .
	xor 0ffh		;729d	ee ff		. .
	cp 0efh			;729f	fe ef		. .
	xor 0eeh		;72a1	ee ee		. .
	xor 0ffh		;72a3	ee ff		. .
	xor 0ffh		;72a5	ee ff		. .
	cp 0efh			;72a7	fe ef		. .
	xor 0eeh		;72a9	ee ee		. .
	xor 0ffh		;72ab	ee ff		. .
	rst 38h			;72ad	ff		.
	rst 38h			;72ae	ff		.
	rst 38h			;72af	ff		.
	rst 38h			;72b0	ff		.
	rst 38h			;72b1	ff		.
	rst 38h			;72b2	ff		.
	rst 38h			;72b3	ff		.
	rst 38h			;72b4	ff		.
	rst 38h			;72b5	ff		.
	rst 38h			;72b6	ff		.
	rst 38h			;72b7	ff		.
	rst 38h			;72b8	ff		.
	cp 0eeh			;72b9	fe ee		. .
	xor 0ffh		;72bb	ee ff		. .
	xor 0ffh		;72bd	ee ff		. .
	cp 0efh			;72bf	fe ef		. .
	xor 0ffh		;72c1	ee ff		. .
	rst 38h			;72c3	ff		.
	rst 38h			;72c4	ff		.
	xor 0ffh		;72c5	ee ff		. .
	cp 0efh			;72c7	fe ef		. .
	cp 0eeh			;72c9	fe ee		. .
	xor 0ffh		;72cb	ee ff		. .
	rst 38h			;72cd	ff		.
	rst 38h			;72ce	ff		.
	rst 38h			;72cf	ff		.
	rst 38h			;72d0	ff		.
	rst 38h			;72d1	ff		.
	rst 38h			;72d2	ff		.
	rst 38h			;72d3	ff		.
	rst 38h			;72d4	ff		.
	rst 38h			;72d5	ff		.
	rst 38h			;72d6	ff		.
	rst 38h			;72d7	ff		.
	rst 38h			;72d8	ff		.
	xor 0eeh		;72d9	ee ee		. .
	rst 28h			;72db	ef		.
	rst 38h			;72dc	ff		.
	xor 0ffh		;72dd	ee ff		. .
	xor 0ffh		;72df	ee ff		. .
	xor 0ffh		;72e1	ee ff		. .
	cp 0efh			;72e3	fe ef		. .
	xor 0ffh		;72e5	ee ff		. .
	xor 0ffh		;72e7	ee ff		. .
	xor 0eeh		;72e9	ee ee		. .
	rst 28h			;72eb	ef		.
	rst 38h			;72ec	ff		.
	rst 38h			;72ed	ff		.
	rst 38h			;72ee	ff		.
	rst 38h			;72ef	ff		.
	rst 38h			;72f0	ff		.
	rst 38h			;72f1	ff		.
	rst 38h			;72f2	ff		.
	rst 38h			;72f3	ff		.
	rst 38h			;72f4	ff		.
	rst 38h			;72f5	ff		.
	rst 38h			;72f6	ff		.
	rst 38h			;72f7	ff		.
	rst 38h			;72f8	ff		.
	xor 0eeh		;72f9	ee ee		. .
	xor 0efh		;72fb	ee ef		. .
	xor 0ffh		;72fd	ee ff		. .
	rst 38h			;72ff	ff		.
	rst 38h			;7300	ff		.
	xor 0eeh		;7301	ee ee		. .
	xor 0ffh		;7303	ee ff		. .
	xor 0ffh		;7305	ee ff		. .
	rst 38h			;7307	ff		.
	rst 38h			;7308	ff		.
	xor 0eeh		;7309	ee ee		. .
	xor 0efh		;730b	ee ef		. .
	rst 38h			;730d	ff		.
	rst 38h			;730e	ff		.
	rst 38h			;730f	ff		.
	rst 38h			;7310	ff		.
	rst 38h			;7311	ff		.
	rst 38h			;7312	ff		.
	rst 38h			;7313	ff		.
	rst 38h			;7314	ff		.
	rst 38h			;7315	ff		.
	rst 38h			;7316	ff		.
	rst 38h			;7317	ff		.
	rst 38h			;7318	ff		.
	xor 0eeh		;7319	ee ee		. .
	xor 0efh		;731b	ee ef		. .
	xor 0ffh		;731d	ee ff		. .
	rst 38h			;731f	ff		.
	rst 38h			;7320	ff		.
	xor 0eeh		;7321	ee ee		. .
	xor 0ffh		;7323	ee ff		. .
	xor 0ffh		;7325	ee ff		. .
	rst 38h			;7327	ff		.
	rst 38h			;7328	ff		.
	xor 0ffh		;7329	ee ff		. .
	rst 38h			;732b	ff		.
	rst 38h			;732c	ff		.
	rst 38h			;732d	ff		.
	rst 38h			;732e	ff		.
	rst 38h			;732f	ff		.
	rst 38h			;7330	ff		.
	rst 38h			;7331	ff		.
	rst 38h			;7332	ff		.
	rst 38h			;7333	ff		.
	rst 38h			;7334	ff		.
	rst 38h			;7335	ff		.
	rst 38h			;7336	ff		.
	rst 38h			;7337	ff		.
	rst 38h			;7338	ff		.
	cp 0eeh			;7339	fe ee		. .
	xor 0efh		;733b	ee ef		. .
	xor 0ffh		;733d	ee ff		. .
	rst 38h			;733f	ff		.
	rst 38h			;7340	ff		.
	xor 0feh		;7341	ee fe		. .
	xor 0efh		;7343	ee ef		. .
	xor 0ffh		;7345	ee ff		. .
	cp 0efh			;7347	fe ef		. .
	cp 0eeh			;7349	fe ee		. .
	xor 0efh		;734b	ee ef		. .
	rst 38h			;734d	ff		.
	rst 38h			;734e	ff		.
	rst 38h			;734f	ff		.
	rst 38h			;7350	ff		.
	rst 38h			;7351	ff		.
	rst 38h			;7352	ff		.
	rst 38h			;7353	ff		.
	rst 38h			;7354	ff		.
	rst 38h			;7355	ff		.
	rst 38h			;7356	ff		.
	rst 38h			;7357	ff		.
	rst 38h			;7358	ff		.
	xor 0ffh		;7359	ee ff		. .
	cp 0efh			;735b	fe ef		. .
	xor 0ffh		;735d	ee ff		. .
	cp 0efh			;735f	fe ef		. .
	xor 0eeh		;7361	ee ee		. .
	xor 0efh		;7363	ee ef		. .
	xor 0ffh		;7365	ee ff		. .
	cp 0efh			;7367	fe ef		. .
	xor 0ffh		;7369	ee ff		. .
	cp 0efh			;736b	fe ef		. .
	rst 38h			;736d	ff		.
	rst 38h			;736e	ff		.
	rst 38h			;736f	ff		.
	rst 38h			;7370	ff		.
	rst 38h			;7371	ff		.
	rst 38h			;7372	ff		.
	rst 38h			;7373	ff		.
	rst 38h			;7374	ff		.
	rst 38h			;7375	ff		.
	rst 38h			;7376	ff		.
	rst 38h			;7377	ff		.
	rst 38h			;7378	ff		.
	rst 38h			;7379	ff		.
	xor 0efh		;737a	ee ef		. .
	rst 38h			;737c	ff		.
	rst 38h			;737d	ff		.
	xor 0efh		;737e	ee ef		. .
	rst 38h			;7380	ff		.
	rst 38h			;7381	ff		.
	xor 0efh		;7382	ee ef		. .
	rst 38h			;7384	ff		.
	rst 38h			;7385	ff		.
	xor 0efh		;7386	ee ef		. .
	rst 38h			;7388	ff		.
	rst 38h			;7389	ff		.
	xor 0efh		;738a	ee ef		. .
	rst 38h			;738c	ff		.
	rst 38h			;738d	ff		.
	rst 38h			;738e	ff		.
	rst 38h			;738f	ff		.
	rst 38h			;7390	ff		.
	rst 38h			;7391	ff		.
	rst 38h			;7392	ff		.
	rst 38h			;7393	ff		.
	rst 38h			;7394	ff		.
	rst 38h			;7395	ff		.
	rst 38h			;7396	ff		.
	rst 38h			;7397	ff		.
	rst 38h			;7398	ff		.
	rst 38h			;7399	ff		.
	rst 38h			;739a	ff		.
	cp 0efh			;739b	fe ef		. .
	rst 38h			;739d	ff		.
	rst 38h			;739e	ff		.
	cp 0efh			;739f	fe ef		. .
	rst 38h			;73a1	ff		.
	rst 38h			;73a2	ff		.
	cp 0efh			;73a3	fe ef		. .
	xor 0ffh		;73a5	ee ff		. .
	cp 0efh			;73a7	fe ef		. .
	cp 0eeh			;73a9	fe ee		. .
	xor 0ffh		;73ab	ee ff		. .
	rst 38h			;73ad	ff		.
	rst 38h			;73ae	ff		.
	rst 38h			;73af	ff		.
	rst 38h			;73b0	ff		.
	rst 38h			;73b1	ff		.
	rst 38h			;73b2	ff		.
	rst 38h			;73b3	ff		.
	rst 38h			;73b4	ff		.
	rst 38h			;73b5	ff		.
	rst 38h			;73b6	ff		.
	rst 38h			;73b7	ff		.
	rst 38h			;73b8	ff		.
	xor 0ffh		;73b9	ee ff		. .
	cp 0efh			;73bb	fe ef		. .
	xor 0ffh		;73bd	ee ff		. .
	xor 0ffh		;73bf	ee ff		. .
	xor 0eeh		;73c1	ee ee		. .
	rst 28h			;73c3	ef		.
	rst 38h			;73c4	ff		.
	xor 0ffh		;73c5	ee ff		. .
	xor 0ffh		;73c7	ee ff		. .
	xor 0ffh		;73c9	ee ff		. .
	cp 0efh			;73cb	fe ef		. .
	rst 38h			;73cd	ff		.
	rst 38h			;73ce	ff		.
	rst 38h			;73cf	ff		.
	rst 38h			;73d0	ff		.
	rst 38h			;73d1	ff		.
	rst 38h			;73d2	ff		.
	rst 38h			;73d3	ff		.
	rst 38h			;73d4	ff		.
	rst 38h			;73d5	ff		.
	rst 38h			;73d6	ff		.
	rst 38h			;73d7	ff		.
	rst 38h			;73d8	ff		.
	xor 0ffh		;73d9	ee ff		. .
	rst 38h			;73db	ff		.
	rst 38h			;73dc	ff		.
	xor 0ffh		;73dd	ee ff		. .
	rst 38h			;73df	ff		.
	rst 38h			;73e0	ff		.
	xor 0ffh		;73e1	ee ff		. .
	rst 38h			;73e3	ff		.
	rst 38h			;73e4	ff		.
	xor 0ffh		;73e5	ee ff		. .
	rst 38h			;73e7	ff		.
	rst 38h			;73e8	ff		.
	xor 0eeh		;73e9	ee ee		. .
	xor 0efh		;73eb	ee ef		. .
	rst 38h			;73ed	ff		.
	rst 38h			;73ee	ff		.
	rst 38h			;73ef	ff		.
	rst 38h			;73f0	ff		.
	rst 38h			;73f1	ff		.
	rst 38h			;73f2	ff		.
	rst 38h			;73f3	ff		.
	rst 38h			;73f4	ff		.
	rst 38h			;73f5	ff		.
	rst 38h			;73f6	ff		.
	rst 38h			;73f7	ff		.
	rst 38h			;73f8	ff		.
	xor 0ffh		;73f9	ee ff		. .
	cp 0efh			;73fb	fe ef		. .
	xor 0efh		;73fd	ee ef		. .
	xor 0efh		;73ff	ee ef		. .
	xor 0eeh		;7401	ee ee		. .
	xor 0efh		;7403	ee ef		. .
	xor 0feh		;7405	ee fe		. .
	cp 0efh			;7407	fe ef		. .
	xor 0ffh		;7409	ee ff		. .
	cp 0efh			;740b	fe ef		. .
	rst 38h			;740d	ff		.
	rst 38h			;740e	ff		.
	rst 38h			;740f	ff		.
	rst 38h			;7410	ff		.
	rst 38h			;7411	ff		.
	rst 38h			;7412	ff		.
	rst 38h			;7413	ff		.
	rst 38h			;7414	ff		.
	rst 38h			;7415	ff		.
	rst 38h			;7416	ff		.
	rst 38h			;7417	ff		.
	rst 38h			;7418	ff		.
	xor 0efh		;7419	ee ef		. .
	cp 0efh			;741b	fe ef		. .
	xor 0eeh		;741d	ee ee		. .
	cp 0efh			;741f	fe ef		. .
	xor 0feh		;7421	ee fe		. .
	xor 0efh		;7423	ee ef		. .
	xor 0ffh		;7425	ee ff		. .
	xor 0efh		;7427	ee ef		. .
	xor 0ffh		;7429	ee ff		. .
	cp 0efh			;742b	fe ef		. .
	rst 38h			;742d	ff		.
	rst 38h			;742e	ff		.
	rst 38h			;742f	ff		.
	rst 38h			;7430	ff		.
	rst 38h			;7431	ff		.
	rst 38h			;7432	ff		.
	rst 38h			;7433	ff		.
	rst 38h			;7434	ff		.
	rst 38h			;7435	ff		.
	rst 38h			;7436	ff		.
	rst 38h			;7437	ff		.
	rst 38h			;7438	ff		.
	cp 0eeh			;7439	fe ee		. .
	xor 0ffh		;743b	ee ff		. .
	xor 0ffh		;743d	ee ff		. .
	cp 0efh			;743f	fe ef		. .
	xor 0ffh		;7441	ee ff		. .
	cp 0efh			;7443	fe ef		. .
	xor 0ffh		;7445	ee ff		. .
	cp 0efh			;7447	fe ef		. .
	cp 0eeh			;7449	fe ee		. .
	xor 0ffh		;744b	ee ff		. .
	rst 38h			;744d	ff		.
	rst 38h			;744e	ff		.
	rst 38h			;744f	ff		.
	rst 38h			;7450	ff		.
	rst 38h			;7451	ff		.
	rst 38h			;7452	ff		.
	rst 38h			;7453	ff		.
	rst 38h			;7454	ff		.
	rst 38h			;7455	ff		.
	rst 38h			;7456	ff		.
	rst 38h			;7457	ff		.
	rst 38h			;7458	ff		.
	xor 0eeh		;7459	ee ee		. .
	xor 0ffh		;745b	ee ff		. .
	xor 0ffh		;745d	ee ff		. .
	cp 0efh			;745f	fe ef		. .
	xor 0eeh		;7461	ee ee		. .
	xor 0ffh		;7463	ee ff		. .
	xor 0ffh		;7465	ee ff		. .
	rst 38h			;7467	ff		.
	rst 38h			;7468	ff		.
	xor 0ffh		;7469	ee ff		. .
	rst 38h			;746b	ff		.
	rst 38h			;746c	ff		.
	rst 38h			;746d	ff		.
	rst 38h			;746e	ff		.
	rst 38h			;746f	ff		.
	rst 38h			;7470	ff		.
	rst 38h			;7471	ff		.
	rst 38h			;7472	ff		.
	rst 38h			;7473	ff		.
	rst 38h			;7474	ff		.
	rst 38h			;7475	ff		.
	rst 38h			;7476	ff		.
	rst 38h			;7477	ff		.
	rst 38h			;7478	ff		.
	cp 0eeh			;7479	fe ee		. .
	xor 0ffh		;747b	ee ff		. .
	xor 0ffh		;747d	ee ff		. .
	cp 0efh			;747f	fe ef		. .
	xor 0ffh		;7481	ee ff		. .
	cp 0efh			;7483	fe ef		. .
	xor 0feh		;7485	ee fe		. .
	xor 0efh		;7487	ee ef		. .
	cp 0eeh			;7489	fe ee		. .
	xor 0ffh		;748b	ee ff		. .
	rst 38h			;748d	ff		.
	rst 38h			;748e	ff		.
	xor 0ffh		;748f	ee ff		. .
	rst 38h			;7491	ff		.
	rst 38h			;7492	ff		.
	rst 38h			;7493	ff		.
	rst 38h			;7494	ff		.
	rst 38h			;7495	ff		.
	rst 38h			;7496	ff		.
	rst 38h			;7497	ff		.
	rst 38h			;7498	ff		.
	xor 0eeh		;7499	ee ee		. .
	xor 0ffh		;749b	ee ff		. .
	xor 0ffh		;749d	ee ff		. .
	cp 0efh			;749f	fe ef		. .
	xor 0eeh		;74a1	ee ee		. .
	xor 0ffh		;74a3	ee ff		. .
	xor 0ffh		;74a5	ee ff		. .
	xor 0ffh		;74a7	ee ff		. .
	xor 0ffh		;74a9	ee ff		. .
	cp 0efh			;74ab	fe ef		. .
	rst 38h			;74ad	ff		.
	rst 38h			;74ae	ff		.
	rst 38h			;74af	ff		.
	rst 38h			;74b0	ff		.
	rst 38h			;74b1	ff		.
	rst 38h			;74b2	ff		.
	rst 38h			;74b3	ff		.
	rst 38h			;74b4	ff		.
	rst 38h			;74b5	ff		.
	rst 38h			;74b6	ff		.
	rst 38h			;74b7	ff		.
	rst 38h			;74b8	ff		.
	cp 0eeh			;74b9	fe ee		. .
	xor 0efh		;74bb	ee ef		. .
	xor 0ffh		;74bd	ee ff		. .
	rst 38h			;74bf	ff		.
	rst 38h			;74c0	ff		.
	cp 0eeh			;74c1	fe ee		. .
	xor 0ffh		;74c3	ee ff		. .
	rst 38h			;74c5	ff		.
	rst 38h			;74c6	ff		.
	cp 0efh			;74c7	fe ef		. .
	xor 0eeh		;74c9	ee ee		. .
	xor 0ffh		;74cb	ee ff		. .
	rst 38h			;74cd	ff		.
	rst 38h			;74ce	ff		.
	rst 38h			;74cf	ff		.
	rst 38h			;74d0	ff		.
	rst 38h			;74d1	ff		.
	rst 38h			;74d2	ff		.
	rst 38h			;74d3	ff		.
	rst 38h			;74d4	ff		.
	rst 38h			;74d5	ff		.
	rst 38h			;74d6	ff		.
	rst 38h			;74d7	ff		.
	rst 38h			;74d8	ff		.
	xor 0eeh		;74d9	ee ee		. .
	xor 0ffh		;74db	ee ff		. .
	rst 38h			;74dd	ff		.
	xor 0ffh		;74de	ee ff		. .
	rst 38h			;74e0	ff		.
	rst 38h			;74e1	ff		.
	xor 0ffh		;74e2	ee ff		. .
	rst 38h			;74e4	ff		.
	rst 38h			;74e5	ff		.
	xor 0ffh		;74e6	ee ff		. .
	rst 38h			;74e8	ff		.
	rst 38h			;74e9	ff		.
	xor 0ffh		;74ea	ee ff		. .
	rst 38h			;74ec	ff		.
	rst 38h			;74ed	ff		.
	rst 38h			;74ee	ff		.
	rst 38h			;74ef	ff		.
	rst 38h			;74f0	ff		.
	rst 38h			;74f1	ff		.
	rst 38h			;74f2	ff		.
	rst 38h			;74f3	ff		.
	rst 38h			;74f4	ff		.
	rst 38h			;74f5	ff		.
	rst 38h			;74f6	ff		.
	rst 38h			;74f7	ff		.
	rst 38h			;74f8	ff		.
	xor 0ffh		;74f9	ee ff		. .
	cp 0efh			;74fb	fe ef		. .
	xor 0ffh		;74fd	ee ff		. .
	cp 0efh			;74ff	fe ef		. .
	xor 0ffh		;7501	ee ff		. .
	cp 0efh			;7503	fe ef		. .
	xor 0ffh		;7505	ee ff		. .
	cp 0efh			;7507	fe ef		. .
	cp 0eeh			;7509	fe ee		. .
	xor 0ffh		;750b	ee ff		. .
	rst 38h			;750d	ff		.
	rst 38h			;750e	ff		.
	rst 38h			;750f	ff		.
	rst 38h			;7510	ff		.
	rst 38h			;7511	ff		.
	rst 38h			;7512	ff		.
	rst 38h			;7513	ff		.
	rst 38h			;7514	ff		.
	rst 38h			;7515	ff		.
	rst 38h			;7516	ff		.
	rst 38h			;7517	ff		.
	rst 38h			;7518	ff		.
	xor 0ffh		;7519	ee ff		. .
	cp 0efh			;751b	fe ef		. .
	xor 0ffh		;751d	ee ff		. .
	cp 0efh			;751f	fe ef		. .
	xor 0ffh		;7521	ee ff		. .
	cp 0efh			;7523	fe ef		. .
	cp 0efh			;7525	fe ef		. .
	xor 0ffh		;7527	ee ff		. .
	rst 38h			;7529	ff		.
	xor 0efh		;752a	ee ef		. .
	rst 38h			;752c	ff		.
	rst 38h			;752d	ff		.
	rst 38h			;752e	ff		.
	rst 38h			;752f	ff		.
	rst 38h			;7530	ff		.
	rst 38h			;7531	ff		.
	rst 38h			;7532	ff		.
	rst 38h			;7533	ff		.
	rst 38h			;7534	ff		.
	rst 38h			;7535	ff		.
	rst 38h			;7536	ff		.
	rst 38h			;7537	ff		.
	rst 38h			;7538	ff		.
	xor 0ffh		;7539	ee ff		. .
	cp 0efh			;753b	fe ef		. .
	xor 0feh		;753d	ee fe		. .
	cp 0efh			;753f	fe ef		. .
	xor 0eeh		;7541	ee ee		. .
	xor 0efh		;7543	ee ef		. .
	xor 0efh		;7545	ee ef		. .
	xor 0efh		;7547	ee ef		. .
	cp 0ffh			;7549	fe ff		. .
	cp 0ffh			;754b	fe ff		. .
	rst 38h			;754d	ff		.
	rst 38h			;754e	ff		.
	rst 38h			;754f	ff		.
	rst 38h			;7550	ff		.
	rst 38h			;7551	ff		.
	rst 38h			;7552	ff		.
	rst 38h			;7553	ff		.
	rst 38h			;7554	ff		.
	rst 38h			;7555	ff		.
	rst 38h			;7556	ff		.
	rst 38h			;7557	ff		.
	rst 38h			;7558	ff		.
	xor 0ffh		;7559	ee ff		. .
	cp 0efh			;755b	fe ef		. .
	cp 0efh			;755d	fe ef		. .
	xor 0ffh		;755f	ee ff		. .
	rst 38h			;7561	ff		.
	xor 0efh		;7562	ee ef		. .
	rst 38h			;7564	ff		.
	cp 0efh			;7565	fe ef		. .
	xor 0ffh		;7567	ee ff		. .
	xor 0ffh		;7569	ee ff		. .
	cp 0efh			;756b	fe ef		. .
	rst 38h			;756d	ff		.
	rst 38h			;756e	ff		.
	rst 38h			;756f	ff		.
	rst 38h			;7570	ff		.
	rst 38h			;7571	ff		.
	rst 38h			;7572	ff		.
	rst 38h			;7573	ff		.
	rst 38h			;7574	ff		.
	rst 38h			;7575	ff		.
	rst 38h			;7576	ff		.
	rst 38h			;7577	ff		.
	rst 38h			;7578	ff		.
	cp 0efh			;7579	fe ef		. .
	cp 0efh			;757b	fe ef		. .
	cp 0efh			;757d	fe ef		. .
	cp 0efh			;757f	fe ef		. .
	rst 38h			;7581	ff		.
	xor 0eeh		;7582	ee ee		. .
	rst 38h			;7584	ff		.
	rst 38h			;7585	ff		.
	cp 0efh			;7586	fe ef		. .
	rst 38h			;7588	ff		.
	rst 38h			;7589	ff		.
	cp 0efh			;758a	fe ef		. .
	rst 38h			;758c	ff		.
	rst 38h			;758d	ff		.
	rst 38h			;758e	ff		.
	rst 38h			;758f	ff		.
	rst 38h			;7590	ff		.
	rst 38h			;7591	ff		.
	rst 38h			;7592	ff		.
	rst 38h			;7593	ff		.
	rst 38h			;7594	ff		.
	rst 38h			;7595	ff		.
	rst 38h			;7596	ff		.
	rst 38h			;7597	ff		.
	rst 38h			;7598	ff		.
	cp 0eeh			;7599	fe ee		. .
	xor 0efh		;759b	ee ef		. .
	rst 38h			;759d	ff		.
	rst 38h			;759e	ff		.
	xor 0ffh		;759f	ee ff		. .
	rst 38h			;75a1	ff		.
	cp 0efh			;75a2	fe ef		. .
	rst 38h			;75a4	ff		.
	rst 38h			;75a5	ff		.
	xor 0ffh		;75a6	ee ff		. .
	rst 38h			;75a8	ff		.
	cp 0eeh			;75a9	fe ee		. .
	xor 0efh		;75ab	ee ef		. .
	rst 38h			;75ad	ff		.
	rst 38h			;75ae	ff		.
	rst 38h			;75af	ff		.
	rst 38h			;75b0	ff		.
	rst 38h			;75b1	ff		.
	rst 38h			;75b2	ff		.
	rst 38h			;75b3	ff		.
	rst 38h			;75b4	ff		.
	rst 38h			;75b5	ff		.
	rst 38h			;75b6	ff		.
	rst 38h			;75b7	ff		.
	rst 38h			;75b8	ff		.
	rst 38h			;75b9	ff		.
	xor 0eeh		;75ba	ee ee		. .
	rst 38h			;75bc	ff		.
	cp 0efh			;75bd	fe ef		. .
	cp 0efh			;75bf	fe ef		. .
	cp 0efh			;75c1	fe ef		. .
	cp 0efh			;75c3	fe ef		. .
	cp 0efh			;75c5	fe ef		. .
	cp 0efh			;75c7	fe ef		. .
	rst 38h			;75c9	ff		.
	xor 0eeh		;75ca	ee ee		. .
	rst 38h			;75cc	ff		.
	rst 38h			;75cd	ff		.
	rst 38h			;75ce	ff		.
	rst 38h			;75cf	ff		.
	rst 38h			;75d0	ff		.
	rst 38h			;75d1	ff		.
	rst 38h			;75d2	ff		.
	rst 38h			;75d3	ff		.
	rst 38h			;75d4	ff		.
	rst 38h			;75d5	ff		.
	rst 38h			;75d6	ff		.
	rst 38h			;75d7	ff		.
	rst 38h			;75d8	ff		.
	rst 38h			;75d9	ff		.
	cp 0efh			;75da	fe ef		. .
	rst 38h			;75dc	ff		.
	rst 38h			;75dd	ff		.
	xor 0efh		;75de	ee ef		. .
	rst 38h			;75e0	ff		.
	rst 38h			;75e1	ff		.
	cp 0efh			;75e2	fe ef		. .
	rst 38h			;75e4	ff		.
	rst 38h			;75e5	ff		.
	cp 0efh			;75e6	fe ef		. .
	rst 38h			;75e8	ff		.
	rst 38h			;75e9	ff		.
	xor 0eeh		;75ea	ee ee		. .
	rst 38h			;75ec	ff		.
	rst 38h			;75ed	ff		.
	rst 38h			;75ee	ff		.
	rst 38h			;75ef	ff		.
	rst 38h			;75f0	ff		.
	rst 38h			;75f1	ff		.
	rst 38h			;75f2	ff		.
	rst 38h			;75f3	ff		.
	rst 38h			;75f4	ff		.
	rst 38h			;75f5	ff		.
	rst 38h			;75f6	ff		.
	rst 38h			;75f7	ff		.
	rst 38h			;75f8	ff		.
	cp 0eeh			;75f9	fe ee		. .
	rst 28h			;75fb	ef		.
	rst 38h			;75fc	ff		.
	xor 0ffh		;75fd	ee ff		. .
	xor 0ffh		;75ff	ee ff		. .
	rst 38h			;7601	ff		.
	xor 0efh		;7602	ee ef		. .
	rst 38h			;7604	ff		.
	cp 0efh			;7605	fe ef		. .
	rst 38h			;7607	ff		.
	rst 38h			;7608	ff		.
	xor 0eeh		;7609	ee ee		. .
	xor 0ffh		;760b	ee ff		. .
	rst 38h			;760d	ff		.
	rst 38h			;760e	ff		.
	rst 38h			;760f	ff		.
	rst 38h			;7610	ff		.
	rst 38h			;7611	ff		.
	rst 38h			;7612	ff		.
	rst 38h			;7613	ff		.
	rst 38h			;7614	ff		.
	rst 38h			;7615	ff		.
	rst 38h			;7616	ff		.
	rst 38h			;7617	ff		.
	rst 38h			;7618	ff		.
	cp 0eeh			;7619	fe ee		. .
	rst 28h			;761b	ef		.
	rst 38h			;761c	ff		.
	xor 0ffh		;761d	ee ff		. .
	xor 0ffh		;761f	ee ff		. .
	rst 38h			;7621	ff		.
	xor 0efh		;7622	ee ef		. .
	rst 38h			;7624	ff		.
	xor 0ffh		;7625	ee ff		. .
	xor 0ffh		;7627	ee ff		. .
	cp 0eeh			;7629	fe ee		. .
	rst 28h			;762b	ef		.
	rst 38h			;762c	ff		.
	rst 38h			;762d	ff		.
	rst 38h			;762e	ff		.
	rst 38h			;762f	ff		.
	rst 38h			;7630	ff		.
	rst 38h			;7631	ff		.
	rst 38h			;7632	ff		.
	rst 38h			;7633	ff		.
	rst 38h			;7634	ff		.
	rst 38h			;7635	ff		.
	rst 38h			;7636	ff		.
	rst 38h			;7637	ff		.
	rst 38h			;7638	ff		.
	rst 38h			;7639	ff		.
	cp 0efh			;763a	fe ef		. .
	rst 38h			;763c	ff		.
	cp 0eeh			;763d	fe ee		. .
	rst 28h			;763f	ef		.
	rst 38h			;7640	ff		.
	xor 0feh		;7641	ee fe		. .
	rst 28h			;7643	ef		.
	rst 38h			;7644	ff		.
	xor 0eeh		;7645	ee ee		. .
	xor 0ffh		;7647	ee ff		. .
	rst 38h			;7649	ff		.
	cp 0efh			;764a	fe ef		. .
	rst 38h			;764c	ff		.
	rst 38h			;764d	ff		.
	rst 38h			;764e	ff		.
	rst 38h			;764f	ff		.
	rst 38h			;7650	ff		.
	rst 38h			;7651	ff		.
	rst 38h			;7652	ff		.
	rst 38h			;7653	ff		.
	rst 38h			;7654	ff		.
	rst 38h			;7655	ff		.
	rst 38h			;7656	ff		.
	rst 38h			;7657	ff		.
	rst 38h			;7658	ff		.
	xor 0eeh		;7659	ee ee		. .
	rst 28h			;765b	ef		.
	rst 38h			;765c	ff		.
	xor 0ffh		;765d	ee ff		. .
	rst 38h			;765f	ff		.
	rst 38h			;7660	ff		.
	xor 0eeh		;7661	ee ee		. .
	rst 28h			;7663	ef		.
	rst 38h			;7664	ff		.
	rst 38h			;7665	ff		.
	rst 38h			;7666	ff		.
	xor 0ffh		;7667	ee ff		. .
	xor 0eeh		;7669	ee ee		. .
	rst 28h			;766b	ef		.
	rst 38h			;766c	ff		.
	rst 38h			;766d	ff		.
	rst 38h			;766e	ff		.
	rst 38h			;766f	ff		.
	rst 38h			;7670	ff		.
	rst 38h			;7671	ff		.
	rst 38h			;7672	ff		.
	rst 38h			;7673	ff		.
	rst 38h			;7674	ff		.
	rst 38h			;7675	ff		.
	rst 38h			;7676	ff		.
	rst 38h			;7677	ff		.
	rst 38h			;7678	ff		.
	cp 0eeh			;7679	fe ee		. .
	rst 28h			;767b	ef		.
	rst 38h			;767c	ff		.
	xor 0ffh		;767d	ee ff		. .
	rst 38h			;767f	ff		.
	rst 38h			;7680	ff		.
	xor 0eeh		;7681	ee ee		. .
	rst 28h			;7683	ef		.
	rst 38h			;7684	ff		.
	xor 0ffh		;7685	ee ff		. .
	xor 0ffh		;7687	ee ff		. .
	cp 0eeh			;7689	fe ee		. .
	rst 28h			;768b	ef		.
	rst 38h			;768c	ff		.
	rst 38h			;768d	ff		.
	rst 38h			;768e	ff		.
	rst 38h			;768f	ff		.
	rst 38h			;7690	ff		.
	rst 38h			;7691	ff		.
	rst 38h			;7692	ff		.
	rst 38h			;7693	ff		.
	rst 38h			;7694	ff		.
	rst 38h			;7695	ff		.
	rst 38h			;7696	ff		.
	rst 38h			;7697	ff		.
	rst 38h			;7698	ff		.
	xor 0eeh		;7699	ee ee		. .
	xor 0ffh		;769b	ee ff		. .
	rst 38h			;769d	ff		.
	cp 0efh			;769e	fe ef		. .
	rst 38h			;76a0	ff		.
	rst 38h			;76a1	ff		.
	xor 0ffh		;76a2	ee ff		. .
	rst 38h			;76a4	ff		.
	cp 0efh			;76a5	fe ef		. .
	rst 38h			;76a7	ff		.
	rst 38h			;76a8	ff		.
	xor 0ffh		;76a9	ee ff		. .
	rst 38h			;76ab	ff		.
	rst 38h			;76ac	ff		.
	rst 38h			;76ad	ff		.
	rst 38h			;76ae	ff		.
	rst 38h			;76af	ff		.
	rst 38h			;76b0	ff		.
	rst 38h			;76b1	ff		.
	rst 38h			;76b2	ff		.
	rst 38h			;76b3	ff		.
	rst 38h			;76b4	ff		.
	rst 38h			;76b5	ff		.
	rst 38h			;76b6	ff		.
	rst 38h			;76b7	ff		.
	rst 38h			;76b8	ff		.
	cp 0eeh			;76b9	fe ee		. .
	rst 28h			;76bb	ef		.
	rst 38h			;76bc	ff		.
	xor 0ffh		;76bd	ee ff		. .
	xor 0ffh		;76bf	ee ff		. .
	cp 0eeh			;76c1	fe ee		. .
	rst 28h			;76c3	ef		.
	rst 38h			;76c4	ff		.
	xor 0ffh		;76c5	ee ff		. .
	xor 0ffh		;76c7	ee ff		. .
	cp 0eeh			;76c9	fe ee		. .
	rst 28h			;76cb	ef		.
	rst 38h			;76cc	ff		.
	rst 38h			;76cd	ff		.
	rst 38h			;76ce	ff		.
	rst 38h			;76cf	ff		.
	rst 38h			;76d0	ff		.
	rst 38h			;76d1	ff		.
	rst 38h			;76d2	ff		.
	rst 38h			;76d3	ff		.
	rst 38h			;76d4	ff		.
	rst 38h			;76d5	ff		.
	rst 38h			;76d6	ff		.
	rst 38h			;76d7	ff		.
	rst 38h			;76d8	ff		.
	cp 0eeh			;76d9	fe ee		. .
	rst 28h			;76db	ef		.
	rst 38h			;76dc	ff		.
	xor 0ffh		;76dd	ee ff		. .
	xor 0ffh		;76df	ee ff		. .
	cp 0eeh			;76e1	fe ee		. .
	xor 0ffh		;76e3	ee ff		. .
	rst 38h			;76e5	ff		.
	rst 38h			;76e6	ff		.
	xor 0ffh		;76e7	ee ff		. .
	cp 0eeh			;76e9	fe ee		. .
	rst 28h			;76eb	ef		.
	rst 38h			;76ec	ff		.
	rst 38h			;76ed	ff		.
	rst 38h			;76ee	ff		.
	rst 38h			;76ef	ff		.
	rst 38h			;76f0	ff		.
	rst 38h			;76f1	ff		.
	rst 38h			;76f2	ff		.
	rst 38h			;76f3	ff		.
	rst 38h			;76f4	ff		.
	rst 38h			;76f5	ff		.
	xor 0eeh		;76f6	ee ee		. .
	rst 38h			;76f8	ff		.
	cp 0ffh			;76f9	fe ff		. .
	rst 38h			;76fb	ff		.
	rst 28h			;76fc	ef		.
	rst 28h			;76fd	ef		.
	cp 0eeh			;76fe	fe ee		. .
	cp 0efh			;7700	fe ef		. .
	rst 28h			;7702	ef		.
	rst 38h			;7703	ff		.
	cp 0efh			;7704	fe ef		. .
	rst 28h			;7706	ef		.
	rst 38h			;7707	ff		.
	cp 0efh			;7708	fe ef		. .
	cp 0eeh			;770a	fe ee		. .
	cp 0feh			;770c	fe fe		. .
	rst 38h			;770e	ff		.
	rst 38h			;770f	ff		.
	rst 28h			;7710	ef		.
	rst 38h			;7711	ff		.
	xor 0eeh		;7712	ee ee		. .
	rst 38h			;7714	ff		.
	rst 38h			;7715	ff		.
	rst 38h			;7716	ff		.
	cp 0efh			;7717	fe ef		. .
	rst 38h			;7719	ff		.
	rst 38h			;771a	ff		.
	xor 0ffh		;771b	ee ff		. .
	rst 38h			;771d	ff		.
	cp 0efh			;771e	fe ef		. .
	rst 38h			;7720	ff		.
	rst 38h			;7721	ff		.
	cp 0efh			;7722	fe ef		. .
	rst 38h			;7724	ff		.
	rst 38h			;7725	ff		.
	cp 0efh			;7726	fe ef		. .
	rst 38h			;7728	ff		.
	rst 38h			;7729	ff		.
	rst 38h			;772a	ff		.
	xor 0ffh		;772b	ee ff		. .
	rst 38h			;772d	ff		.
	rst 38h			;772e	ff		.
	cp 0efh			;772f	fe ef		. .
	rst 38h			;7731	ff		.
	rst 38h			;7732	ff		.
	rst 38h			;7733	ff		.
	rst 38h			;7734	ff		.
	xor 0ffh		;7735	ee ff		. .
	rst 38h			;7737	ff		.
	rst 38h			;7738	ff		.
	cp 0efh			;7739	fe ef		. .
	rst 38h			;773b	ff		.
	rst 38h			;773c	ff		.
	rst 38h			;773d	ff		.
	xor 0ffh		;773e	ee ff		. .
	rst 38h			;7740	ff		.
	rst 38h			;7741	ff		.
	xor 0ffh		;7742	ee ff		. .
	rst 38h			;7744	ff		.
	rst 38h			;7745	ff		.
	xor 0ffh		;7746	ee ff		. .
	rst 38h			;7748	ff		.
	cp 0efh			;7749	fe ef		. .
	rst 38h			;774b	ff		.
	rst 38h			;774c	ff		.
	xor 0ffh		;774d	ee ff		. .
	rst 38h			;774f	ff		.
	rst 38h			;7750	ff		.
	rst 38h			;7751	ff		.
	rst 38h			;7752	ff		.
	rst 38h			;7753	ff		.
	rst 38h			;7754	ff		.
	rst 38h			;7755	ff		.
	rst 38h			;7756	ff		.
	rst 38h			;7757	ff		.
	rst 38h			;7758	ff		.
	rst 38h			;7759	ff		.
	rst 38h			;775a	ff		.
	rst 38h			;775b	ff		.
	rst 38h			;775c	ff		.
	rst 38h			;775d	ff		.
	rst 38h			;775e	ff		.
	rst 38h			;775f	ff		.
	rst 38h			;7760	ff		.
	rst 38h			;7761	ff		.
l7762h:
	rst 38h			;7762	ff		.
	rst 38h			;7763	ff		.
	rst 38h			;7764	ff		.
	rst 38h			;7765	ff		.
	xor 0ffh		;7766	ee ff		. .
	rst 38h			;7768	ff		.
	rst 38h			;7769	ff		.
	xor 0ffh		;776a	ee ff		. .
	rst 38h			;776c	ff		.
	rst 38h			;776d	ff		.
	rst 38h			;776e	ff		.
	rst 38h			;776f	ff		.
	rst 38h			;7770	ff		.
	rst 38h			;7771	ff		.
	rst 38h			;7772	ff		.
	rst 38h			;7773	ff		.
	rst 38h			;7774	ff		.
	rst 38h			;7775	ff		.
	rst 38h			;7776	ff		.
	rst 38h			;7777	ff		.
	rst 38h			;7778	ff		.
	rst 38h			;7779	ff		.
	rst 38h			;777a	ff		.
	rst 38h			;777b	ff		.
	rst 38h			;777c	ff		.
	rst 38h			;777d	ff		.
	rst 38h			;777e	ff		.
	rst 38h			;777f	ff		.
	rst 38h			;7780	ff		.
	cp 0eeh			;7781	fe ee		. .
	xor 0efh		;7783	ee ef		. .
	rst 38h			;7785	ff		.
	rst 38h			;7786	ff		.
	rst 38h			;7787	ff		.
	rst 38h			;7788	ff		.
	rst 38h			;7789	ff		.
	rst 38h			;778a	ff		.
	rst 38h			;778b	ff		.
	rst 38h			;778c	ff		.
	rst 38h			;778d	ff		.
	rst 38h			;778e	ff		.
	rst 38h			;778f	ff		.
	rst 38h			;7790	ff		.
	rst 38h			;7791	ff		.
	rst 38h			;7792	ff		.
	rst 38h			;7793	ff		.
	rst 38h			;7794	ff		.
	rst 38h			;7795	ff		.
	rst 38h			;7796	ff		.
	rst 38h			;7797	ff		.
	rst 38h			;7798	ff		.
	rst 38h			;7799	ff		.
	rst 38h			;779a	ff		.
	rst 38h			;779b	ff		.
	rst 38h			;779c	ff		.
	rst 38h			;779d	ff		.
	rst 38h			;779e	ff		.
	rst 38h			;779f	ff		.
	rst 38h			;77a0	ff		.
	rst 38h			;77a1	ff		.
	rst 38h			;77a2	ff		.
	rst 38h			;77a3	ff		.
	rst 38h			;77a4	ff		.
	rst 38h			;77a5	ff		.
	rst 38h			;77a6	ff		.
	rst 38h			;77a7	ff		.
	rst 38h			;77a8	ff		.
	rst 38h			;77a9	ff		.
	rst 38h			;77aa	ff		.
	rst 38h			;77ab	ff		.
	rst 38h			;77ac	ff		.
	rst 38h			;77ad	ff		.
	rst 38h			;77ae	ff		.
	rst 38h			;77af	ff		.
	rst 38h			;77b0	ff		.
	rst 38h			;77b1	ff		.
	rst 38h			;77b2	ff		.
	rst 38h			;77b3	ff		.
	rst 38h			;77b4	ff		.
sub_77b5h:
	call sub_6a84h		;77b5	cd 84 6a	. . j
	ld a,(0c91fh)		;77b8	3a 1f c9	: . .
	or a			;77bb	b7		.
	call z,sub_6a92h	;77bc	cc 92 6a	. . j
	ld a,055h		;77bf	3e 55		> U
	call 04aebh		;77c1	cd eb 4a	. . J
	ld hl,0ca00h		;77c4	21 00 ca	! . .
	ld bc,025ffh		;77c7	01 ff 25	. . %
	call 04648h		;77ca	cd 48 46	. H F
	call sub_784dh		;77cd	cd 4d 78	. M x
	xor a			;77d0	af		.
	ld hl,00000h		;77d1	21 00 00	! . .
	ld (0c917h),hl		;77d4	22 17 c9	" . .
	ld (0c947h),a		;77d7	32 47 c9	2 G .
	ld (0c92dh),a		;77da	32 2d c9	2 - .
	ld (0c92eh),a		;77dd	32 2e c9	2 . .
	ld (0c92fh),a		;77e0	32 2f c9	2 / .
	ld (0c91ah),a		;77e3	32 1a c9	2 . .
	call sub_7883h		;77e6	cd 83 78	. . x
	ld hl,00b80h		;77e9	21 80 0b	! . .
	ld (0cb07h),hl		;77ec	22 07 cb	" . .
	ret			;77ef	c9		.
sub_77f0h:
	ld a,(0c92dh)		;77f0	3a 2d c9	: - .
	dec a			;77f3	3d		=
	jp p,l782ah		;77f4	f2 2a 78	. * x
	call sub_789ch		;77f7	cd 9c 78	. . x
	ei			;77fa	fb		.
	call sub_6256h		;77fb	cd 56 62	. V b
	ld a,(0c91fh)		;77fe	3a 1f c9	: . .
	or a			;7801	b7		.
	jr nz,l784ah		;7802	20 46		  F
	ld hl,(0c91dh)		;7804	2a 1d c9	* . .
	inc hl			;7807	23		#
	inc hl			;7808	23		#
	inc hl			;7809	23		#
	inc hl			;780a	23		#
	inc hl			;780b	23		#
	call sub_78d4h		;780c	cd d4 78	. . x
	ld c,a			;780f	4f		O
	inc hl			;7810	23		#
	push bc			;7811	c5		.
	call sub_78d4h		;7812	cd d4 78	. . x
	pop bc			;7815	c1		.
	and c			;7816	a1		.
	ld c,a			;7817	4f		O
	inc hl			;7818	23		#
	push bc			;7819	c5		.
	call sub_78d4h		;781a	cd d4 78	. . x
	pop bc			;781d	c1		.
	and c			;781e	a1		.
	inc a			;781f	3c		<
	ei			;7820	fb		.
	ret nz			;7821	c0		.
	ld a,084h		;7822	3e 84		> .
	call 04af0h		;7824	cd f0 4a	. . J
	call 04d27h		;7827	cd 27 4d	. ' M
l782ah:
	ld a,(0c92dh)		;782a	3a 2d c9	: - .
	inc a			;782d	3c		<
	ld (0c92dh),a		;782e	32 2d c9	2 - .
	cp 00ah			;7831	fe 0a		. .
	ret nz			;7833	c0		.
	call sub_6a84h		;7834	cd 84 6a	. . j
	call 04c7ah		;7837	cd 7a 4c	. z L
	call 04b78h		;783a	cd 78 4b	. x K
	call sub_63eeh		;783d	cd ee 63	. . c
	call 0474bh		;7840	cd 4b 47	. K G
	ld a,055h		;7843	3e 55		> U
	call 04aebh		;7845	cd eb 4a	. . J
	xor a			;7848	af		.
	ret			;7849	c9		.
l784ah:
	or 001h			;784a	f6 01		. .
	ret			;784c	c9		.
sub_784dh:
	call sub_7863h		;784d	cd 63 78	. c x
	ld a,(hl)		;7850	7e		~
	inc hl			;7851	23		#
	ld (0ca10h),a		;7852	32 10 ca	2 . .
	ld a,(hl)		;7855	7e		~
	inc hl			;7856	23		#
	ld (0ca1eh),a		;7857	32 1e ca	2 . .
	ld e,(hl)		;785a	5e		^
	inc hl			;785b	23		#
	ld d,(hl)		;785c	56		V
	inc hl			;785d	23		#
	ld (0c91dh),de		;785e	ed 53 1d c9	. S . .
	ret			;7862	c9		.
sub_7863h:
	ld a,(0c919h)		;7863	3a 19 c9	: . .
	inc a			;7866	3c		<
	cp 003h			;7867	fe 03		. .
	jr c,l786ch		;7869	38 01		8 .
	xor a			;786b	af		.
l786ch:
	ld (0c919h),a		;786c	32 19 c9	2 . .
	add a,a			;786f	87		.
	add a,a			;7870	87		.
	ld hl,l7877h		;7871	21 77 78	! w x
	jp 04600h		;7874	c3 00 46	. . F
l7877h:
	inc bc			;7877	03		.
	nop			;7878	00		.
	or h			;7879	b4		.
	xor h			;787a	ac		.
	nop			;787b	00		.
	ld bc,0a000h		;787c	01 00 a0	. . .
	ld bc,0e402h		;787f	01 02 e4	. . .
	and (hl)		;7882	a6		.
sub_7883h:
	ld a,(0c91fh)		;7883	3a 1f c9	: . .
	dec a			;7886	3d		=
	jp z,l78feh		;7887	ca fe 78	. . x
	ld a,001h		;788a	3e 01		> .
	ld (0c91ah),a		;788c	32 1a c9	2 . .
	ld a,(0c91fh)		;788f	3a 1f c9	: . .
	cp 002h			;7892	fe 02		. .
	jr nz,sub_789ch		;7894	20 06		  .
	ld hl,04000h		;7896	21 00 40	! . @
	ld (0c91dh),hl		;7899	22 1d c9	" . .
sub_789ch:
	ld a,(0c91fh)		;789c	3a 1f c9	: . .
	dec a			;789f	3d		=
	jp z,l7905h		;78a0	ca 05 79	. . y
	ld a,(0c91ah)		;78a3	3a 1a c9	: . .
	dec a			;78a6	3d		=
	ld (0c91ah),a		;78a7	32 1a c9	2 . .
	jr nz,l78c7h		;78aa	20 1b		  .
	ld hl,(0c91dh)		;78ac	2a 1d c9	* . .
	call sub_78d4h		;78af	cd d4 78	. . x
	ld (0c91ah),a		;78b2	32 1a c9	2 . .
	inc hl			;78b5	23		#
	call sub_78d4h		;78b6	cd d4 78	. . x
	ld (0c92eh),a		;78b9	32 2e c9	2 . .
	inc hl			;78bc	23		#
	call sub_78d4h		;78bd	cd d4 78	. . x
	ld (0c92fh),a		;78c0	32 2f c9	2 / .
	inc hl			;78c3	23		#
	ld (0c91dh),hl		;78c4	22 1d c9	" . .
l78c7h:
	ld a,(0c92eh)		;78c7	3a 2e c9	: . .
	ld (0c908h),a		;78ca	32 08 c9	2 . .
	ld a,(0c92fh)		;78cd	3a 2f c9	: / .
	ld (0c907h),a		;78d0	32 07 c9	2 . .
	ret			;78d3	c9		.
sub_78d4h:
	ld a,(0c91fh)		;78d4	3a 1f c9	: . .
	cp 002h			;78d7	fe 02		. .
	jr z,l78e9h		;78d9	28 0e		( .
	ld a,01fh		;78db	3e 1f		> .
	call 04c23h		;78dd	cd 23 4c	. # L
	ld a,(hl)		;78e0	7e		~
	ex af,af'		;78e1	08		.
	ld a,003h		;78e2	3e 03		> .
	call 04c23h		;78e4	cd 23 4c	. # L
	ex af,af'		;78e7	08		.
	ret			;78e8	c9		.
l78e9h:
	ld a,088h		;78e9	3e 88		> .
	push de			;78eb	d5		.
	push bc			;78ec	c5		.
	call 0000ch		;78ed	cd 0c 00	. . .
	pop bc			;78f0	c1		.
	pop de			;78f1	d1		.
	ret			;78f2	c9		.
sub_78f3h:
	push de			;78f3	d5		.
	push bc			;78f4	c5		.
	ld e,a			;78f5	5f		_
	ld a,088h		;78f6	3e 88		> .
	call 00014h		;78f8	cd 14 00	. . .
	pop bc			;78fb	c1		.
	pop de			;78fc	d1		.
	ret			;78fd	c9		.
l78feh:
	ld hl,04000h		;78fe	21 00 40	! . @
	ld (0c91dh),hl		;7901	22 1d c9	" . .
	ret			;7904	c9		.
l7905h:
	ld a,(0c91ah)		;7905	3a 1a c9	: . .
	inc a			;7908	3c		<
	jr z,l7921h		;7909	28 16		( .
	ld (0c91ah),a		;790b	32 1a c9	2 . .
	ld a,(0c908h)		;790e	3a 08 c9	: . .
	ld hl,0c92eh		;7911	21 2e c9	! . .
	cp (hl)			;7914	be		.
	jr nz,l7921h		;7915	20 0a		  .
	ld a,(0c907h)		;7917	3a 07 c9	: . .
	ld hl,0c92fh		;791a	21 2f c9	! / .
	cp (hl)			;791d	be		.
	jr nz,l7921h		;791e	20 01		  .
	ret			;7920	c9		.
l7921h:
	ld hl,(0c91dh)		;7921	2a 1d c9	* . .
	ld a,(0c91ah)		;7924	3a 1a c9	: . .
	call sub_78f3h		;7927	cd f3 78	. . x
	inc hl			;792a	23		#
	ld a,(0c92eh)		;792b	3a 2e c9	: . .
	call sub_78f3h		;792e	cd f3 78	. . x
	inc hl			;7931	23		#
	ld a,(0c92fh)		;7932	3a 2f c9	: / .
	call sub_78f3h		;7935	cd f3 78	. . x
	inc hl			;7938	23		#
	ld (0c91dh),hl		;7939	22 1d c9	" . .
	ld a,(0c908h)		;793c	3a 08 c9	: . .
	ld (0c92eh),a		;793f	32 2e c9	2 . .
	ld a,(0c907h)		;7942	3a 07 c9	: . .
	ld (0c92fh),a		;7945	32 2f c9	2 / .
	xor a			;7948	af		.
	ld (0c91ah),a		;7949	32 1a c9	2 . .
	ret			;794c	c9		.
	rst 38h			;794d	ff		.
	rst 38h			;794e	ff		.
	rst 38h			;794f	ff		.
	rst 38h			;7950	ff		.
	rst 38h			;7951	ff		.
	rst 38h			;7952	ff		.
	rst 38h			;7953	ff		.
	rst 38h			;7954	ff		.
	rst 38h			;7955	ff		.
	rst 38h			;7956	ff		.
	rst 38h			;7957	ff		.
	rst 38h			;7958	ff		.
	rst 38h			;7959	ff		.
	rst 38h			;795a	ff		.
	rst 38h			;795b	ff		.
	rst 38h			;795c	ff		.
	rst 38h			;795d	ff		.
	rst 38h			;795e	ff		.
	rst 38h			;795f	ff		.
	rst 38h			;7960	ff		.
	rst 38h			;7961	ff		.
	rst 38h			;7962	ff		.
	rst 38h			;7963	ff		.
	rst 38h			;7964	ff		.
	rst 38h			;7965	ff		.
	rst 38h			;7966	ff		.
	rst 38h			;7967	ff		.
	rst 38h			;7968	ff		.
	rst 38h			;7969	ff		.
	rst 38h			;796a	ff		.
	rst 38h			;796b	ff		.
	rst 38h			;796c	ff		.
	rst 38h			;796d	ff		.
	rst 38h			;796e	ff		.
	rst 38h			;796f	ff		.
	rst 38h			;7970	ff		.
	rst 38h			;7971	ff		.
	rst 38h			;7972	ff		.
	rst 38h			;7973	ff		.
	rst 38h			;7974	ff		.
	rst 38h			;7975	ff		.
	rst 38h			;7976	ff		.
	rst 38h			;7977	ff		.
	rst 38h			;7978	ff		.
	rst 38h			;7979	ff		.
	rst 38h			;797a	ff		.
	rst 38h			;797b	ff		.
	rst 38h			;797c	ff		.
	rst 38h			;797d	ff		.
	rst 38h			;797e	ff		.
	rst 38h			;797f	ff		.
	rst 38h			;7980	ff		.
	rst 38h			;7981	ff		.
	rst 38h			;7982	ff		.
	rst 38h			;7983	ff		.
	rst 38h			;7984	ff		.
	rst 38h			;7985	ff		.
	rst 38h			;7986	ff		.
	rst 38h			;7987	ff		.
	rst 38h			;7988	ff		.
	rst 38h			;7989	ff		.
	rst 38h			;798a	ff		.
	rst 38h			;798b	ff		.
	rst 38h			;798c	ff		.
	rst 38h			;798d	ff		.
	rst 38h			;798e	ff		.
	rst 38h			;798f	ff		.
	rst 38h			;7990	ff		.
	rst 38h			;7991	ff		.
	rst 38h			;7992	ff		.
	rst 38h			;7993	ff		.
	rst 38h			;7994	ff		.
	rst 38h			;7995	ff		.
	rst 38h			;7996	ff		.
	rst 38h			;7997	ff		.
	rst 38h			;7998	ff		.
	rst 38h			;7999	ff		.
	rst 38h			;799a	ff		.
	rst 38h			;799b	ff		.
	rst 38h			;799c	ff		.
	rst 38h			;799d	ff		.
	rst 38h			;799e	ff		.
	rst 38h			;799f	ff		.
	rst 38h			;79a0	ff		.
	rst 38h			;79a1	ff		.
	rst 38h			;79a2	ff		.
	rst 38h			;79a3	ff		.
	rst 38h			;79a4	ff		.
	rst 38h			;79a5	ff		.
	rst 38h			;79a6	ff		.
	rst 38h			;79a7	ff		.
	rst 38h			;79a8	ff		.
	rst 38h			;79a9	ff		.
	rst 38h			;79aa	ff		.
	rst 38h			;79ab	ff		.
	rst 38h			;79ac	ff		.
	rst 38h			;79ad	ff		.
	rst 38h			;79ae	ff		.
	rst 38h			;79af	ff		.
	rst 38h			;79b0	ff		.
	rst 38h			;79b1	ff		.
	rst 38h			;79b2	ff		.
	rst 38h			;79b3	ff		.
	rst 38h			;79b4	ff		.
	rst 38h			;79b5	ff		.
	rst 38h			;79b6	ff		.
	rst 38h			;79b7	ff		.
	rst 38h			;79b8	ff		.
	rst 38h			;79b9	ff		.
	rst 38h			;79ba	ff		.
	rst 38h			;79bb	ff		.
	rst 38h			;79bc	ff		.
	rst 38h			;79bd	ff		.
	rst 38h			;79be	ff		.
	rst 38h			;79bf	ff		.
	rst 38h			;79c0	ff		.
	rst 38h			;79c1	ff		.
	rst 38h			;79c2	ff		.
	rst 38h			;79c3	ff		.
	rst 38h			;79c4	ff		.
	rst 38h			;79c5	ff		.
	rst 38h			;79c6	ff		.
	rst 38h			;79c7	ff		.
	rst 38h			;79c8	ff		.
	rst 38h			;79c9	ff		.
	rst 38h			;79ca	ff		.
	rst 38h			;79cb	ff		.
	rst 38h			;79cc	ff		.
	rst 38h			;79cd	ff		.
	rst 38h			;79ce	ff		.
	rst 38h			;79cf	ff		.
	rst 38h			;79d0	ff		.
	rst 38h			;79d1	ff		.
	rst 38h			;79d2	ff		.
	rst 38h			;79d3	ff		.
	rst 38h			;79d4	ff		.
	rst 38h			;79d5	ff		.
	rst 38h			;79d6	ff		.
	rst 38h			;79d7	ff		.
	rst 38h			;79d8	ff		.
	rst 38h			;79d9	ff		.
	rst 38h			;79da	ff		.
	rst 38h			;79db	ff		.
	rst 38h			;79dc	ff		.
	rst 38h			;79dd	ff		.
	rst 38h			;79de	ff		.
	rst 38h			;79df	ff		.
	rst 38h			;79e0	ff		.
	rst 38h			;79e1	ff		.
	rst 38h			;79e2	ff		.
	rst 38h			;79e3	ff		.
	rst 38h			;79e4	ff		.
	rst 38h			;79e5	ff		.
	rst 38h			;79e6	ff		.
	rst 38h			;79e7	ff		.
	rst 38h			;79e8	ff		.
	rst 38h			;79e9	ff		.
	rst 38h			;79ea	ff		.
	rst 38h			;79eb	ff		.
	rst 38h			;79ec	ff		.
	rst 38h			;79ed	ff		.
	rst 38h			;79ee	ff		.
	rst 38h			;79ef	ff		.
	rst 38h			;79f0	ff		.
	rst 38h			;79f1	ff		.
	rst 38h			;79f2	ff		.
	rst 38h			;79f3	ff		.
	rst 38h			;79f4	ff		.
	rst 38h			;79f5	ff		.
	rst 38h			;79f6	ff		.
	rst 38h			;79f7	ff		.
	rst 38h			;79f8	ff		.
	rst 38h			;79f9	ff		.
	rst 38h			;79fa	ff		.
	rst 38h			;79fb	ff		.
	rst 38h			;79fc	ff		.
	rst 38h			;79fd	ff		.
	rst 38h			;79fe	ff		.
	rst 38h			;79ff	ff		.
	rst 38h			;7a00	ff		.
	rst 38h			;7a01	ff		.
	rst 38h			;7a02	ff		.
	rst 38h			;7a03	ff		.
	rst 38h			;7a04	ff		.
	rst 38h			;7a05	ff		.
	rst 38h			;7a06	ff		.
	rst 38h			;7a07	ff		.
	rst 38h			;7a08	ff		.
	rst 38h			;7a09	ff		.
	rst 38h			;7a0a	ff		.
	rst 38h			;7a0b	ff		.
	rst 38h			;7a0c	ff		.
	rst 38h			;7a0d	ff		.
	rst 38h			;7a0e	ff		.
	rst 38h			;7a0f	ff		.
	rst 38h			;7a10	ff		.
	rst 38h			;7a11	ff		.
	rst 38h			;7a12	ff		.
	rst 38h			;7a13	ff		.
	rst 38h			;7a14	ff		.
	rst 38h			;7a15	ff		.
	rst 38h			;7a16	ff		.
	rst 38h			;7a17	ff		.
	rst 38h			;7a18	ff		.
	rst 38h			;7a19	ff		.
	rst 38h			;7a1a	ff		.
	rst 38h			;7a1b	ff		.
	rst 38h			;7a1c	ff		.
	rst 38h			;7a1d	ff		.
	rst 38h			;7a1e	ff		.
	rst 38h			;7a1f	ff		.
	rst 38h			;7a20	ff		.
	rst 38h			;7a21	ff		.
	rst 38h			;7a22	ff		.
	rst 38h			;7a23	ff		.
	rst 38h			;7a24	ff		.
	rst 38h			;7a25	ff		.
	rst 38h			;7a26	ff		.
	rst 38h			;7a27	ff		.
	rst 38h			;7a28	ff		.
	rst 38h			;7a29	ff		.
	rst 38h			;7a2a	ff		.
	rst 38h			;7a2b	ff		.
	rst 38h			;7a2c	ff		.
	rst 38h			;7a2d	ff		.
	rst 38h			;7a2e	ff		.
	rst 38h			;7a2f	ff		.
	rst 38h			;7a30	ff		.
	rst 38h			;7a31	ff		.
	rst 38h			;7a32	ff		.
	rst 38h			;7a33	ff		.
	rst 38h			;7a34	ff		.
	rst 38h			;7a35	ff		.
	rst 38h			;7a36	ff		.
	rst 38h			;7a37	ff		.
	rst 38h			;7a38	ff		.
	rst 38h			;7a39	ff		.
	rst 38h			;7a3a	ff		.
	rst 38h			;7a3b	ff		.
	rst 38h			;7a3c	ff		.
	rst 38h			;7a3d	ff		.
	rst 38h			;7a3e	ff		.
	rst 38h			;7a3f	ff		.
	rst 38h			;7a40	ff		.
	rst 38h			;7a41	ff		.
	rst 38h			;7a42	ff		.
	rst 38h			;7a43	ff		.
	rst 38h			;7a44	ff		.
	rst 38h			;7a45	ff		.
	rst 38h			;7a46	ff		.
	rst 38h			;7a47	ff		.
	rst 38h			;7a48	ff		.
	rst 38h			;7a49	ff		.
	rst 38h			;7a4a	ff		.
	rst 38h			;7a4b	ff		.
	rst 38h			;7a4c	ff		.
	rst 38h			;7a4d	ff		.
	rst 38h			;7a4e	ff		.
	rst 38h			;7a4f	ff		.
	rst 38h			;7a50	ff		.
	rst 38h			;7a51	ff		.
	rst 38h			;7a52	ff		.
	rst 38h			;7a53	ff		.
	rst 38h			;7a54	ff		.
	rst 38h			;7a55	ff		.
	rst 38h			;7a56	ff		.
	rst 38h			;7a57	ff		.
	rst 38h			;7a58	ff		.
	rst 38h			;7a59	ff		.
	rst 38h			;7a5a	ff		.
	rst 38h			;7a5b	ff		.
	rst 38h			;7a5c	ff		.
	rst 38h			;7a5d	ff		.
	rst 38h			;7a5e	ff		.
	rst 38h			;7a5f	ff		.
	rst 38h			;7a60	ff		.
	rst 38h			;7a61	ff		.
	rst 38h			;7a62	ff		.
	rst 38h			;7a63	ff		.
	rst 38h			;7a64	ff		.
	rst 38h			;7a65	ff		.
	rst 38h			;7a66	ff		.
	rst 38h			;7a67	ff		.
	rst 38h			;7a68	ff		.
	rst 38h			;7a69	ff		.
	rst 38h			;7a6a	ff		.
	rst 38h			;7a6b	ff		.
	rst 38h			;7a6c	ff		.
	rst 38h			;7a6d	ff		.
	rst 38h			;7a6e	ff		.
	rst 38h			;7a6f	ff		.
	rst 38h			;7a70	ff		.
	rst 38h			;7a71	ff		.
	rst 38h			;7a72	ff		.
	rst 38h			;7a73	ff		.
	rst 38h			;7a74	ff		.
	rst 38h			;7a75	ff		.
	rst 38h			;7a76	ff		.
	rst 38h			;7a77	ff		.
	rst 38h			;7a78	ff		.
	rst 38h			;7a79	ff		.
	rst 38h			;7a7a	ff		.
	rst 38h			;7a7b	ff		.
	rst 38h			;7a7c	ff		.
	rst 38h			;7a7d	ff		.
	rst 38h			;7a7e	ff		.
	rst 38h			;7a7f	ff		.
	rst 38h			;7a80	ff		.
	rst 38h			;7a81	ff		.
	rst 38h			;7a82	ff		.
	rst 38h			;7a83	ff		.
	rst 38h			;7a84	ff		.
	rst 38h			;7a85	ff		.
	rst 38h			;7a86	ff		.
	rst 38h			;7a87	ff		.
	rst 38h			;7a88	ff		.
	rst 38h			;7a89	ff		.
	rst 38h			;7a8a	ff		.
	rst 38h			;7a8b	ff		.
	rst 38h			;7a8c	ff		.
	rst 38h			;7a8d	ff		.
	rst 38h			;7a8e	ff		.
	rst 38h			;7a8f	ff		.
	rst 38h			;7a90	ff		.
	rst 38h			;7a91	ff		.
	rst 38h			;7a92	ff		.
	rst 38h			;7a93	ff		.
	rst 38h			;7a94	ff		.
	rst 38h			;7a95	ff		.
	rst 38h			;7a96	ff		.
	rst 38h			;7a97	ff		.
	rst 38h			;7a98	ff		.
	rst 38h			;7a99	ff		.
	rst 38h			;7a9a	ff		.
	rst 38h			;7a9b	ff		.
	rst 38h			;7a9c	ff		.
	rst 38h			;7a9d	ff		.
	rst 38h			;7a9e	ff		.
	rst 38h			;7a9f	ff		.
	rst 38h			;7aa0	ff		.
	rst 38h			;7aa1	ff		.
	rst 38h			;7aa2	ff		.
	rst 38h			;7aa3	ff		.
	rst 38h			;7aa4	ff		.
	rst 38h			;7aa5	ff		.
	rst 38h			;7aa6	ff		.
	rst 38h			;7aa7	ff		.
	rst 38h			;7aa8	ff		.
	rst 38h			;7aa9	ff		.
	rst 38h			;7aaa	ff		.
	rst 38h			;7aab	ff		.
	rst 38h			;7aac	ff		.
	rst 38h			;7aad	ff		.
	rst 38h			;7aae	ff		.
	rst 38h			;7aaf	ff		.
	rst 38h			;7ab0	ff		.
	rst 38h			;7ab1	ff		.
	rst 38h			;7ab2	ff		.
	rst 38h			;7ab3	ff		.
	rst 38h			;7ab4	ff		.
	rst 38h			;7ab5	ff		.
	rst 38h			;7ab6	ff		.
	rst 38h			;7ab7	ff		.
	rst 38h			;7ab8	ff		.
	rst 38h			;7ab9	ff		.
	rst 38h			;7aba	ff		.
	rst 38h			;7abb	ff		.
	rst 38h			;7abc	ff		.
	rst 38h			;7abd	ff		.
	rst 38h			;7abe	ff		.
	rst 38h			;7abf	ff		.
	rst 38h			;7ac0	ff		.
	rst 38h			;7ac1	ff		.
	rst 38h			;7ac2	ff		.
	rst 38h			;7ac3	ff		.
	rst 38h			;7ac4	ff		.
	rst 38h			;7ac5	ff		.
	rst 38h			;7ac6	ff		.
	rst 38h			;7ac7	ff		.
	rst 38h			;7ac8	ff		.
	rst 38h			;7ac9	ff		.
	rst 38h			;7aca	ff		.
	rst 38h			;7acb	ff		.
	rst 38h			;7acc	ff		.
	rst 38h			;7acd	ff		.
	rst 38h			;7ace	ff		.
	rst 38h			;7acf	ff		.
	rst 38h			;7ad0	ff		.
	rst 38h			;7ad1	ff		.
	rst 38h			;7ad2	ff		.
	rst 38h			;7ad3	ff		.
	rst 38h			;7ad4	ff		.
	rst 38h			;7ad5	ff		.
	rst 38h			;7ad6	ff		.
	rst 38h			;7ad7	ff		.
	rst 38h			;7ad8	ff		.
	rst 38h			;7ad9	ff		.
	rst 38h			;7ada	ff		.
	rst 38h			;7adb	ff		.
	rst 38h			;7adc	ff		.
	rst 38h			;7add	ff		.
	rst 38h			;7ade	ff		.
	rst 38h			;7adf	ff		.
	rst 38h			;7ae0	ff		.
	rst 38h			;7ae1	ff		.
	rst 38h			;7ae2	ff		.
	rst 38h			;7ae3	ff		.
	rst 38h			;7ae4	ff		.
	rst 38h			;7ae5	ff		.
	rst 38h			;7ae6	ff		.
	rst 38h			;7ae7	ff		.
	rst 38h			;7ae8	ff		.
	rst 38h			;7ae9	ff		.
	rst 38h			;7aea	ff		.
	rst 38h			;7aeb	ff		.
	rst 38h			;7aec	ff		.
	rst 38h			;7aed	ff		.
	rst 38h			;7aee	ff		.
	rst 38h			;7aef	ff		.
	rst 38h			;7af0	ff		.
	rst 38h			;7af1	ff		.
	rst 38h			;7af2	ff		.
	rst 38h			;7af3	ff		.
	rst 38h			;7af4	ff		.
	rst 38h			;7af5	ff		.
	rst 38h			;7af6	ff		.
	rst 38h			;7af7	ff		.
	rst 38h			;7af8	ff		.
	rst 38h			;7af9	ff		.
	rst 38h			;7afa	ff		.
	rst 38h			;7afb	ff		.
	rst 38h			;7afc	ff		.
	rst 38h			;7afd	ff		.
	rst 38h			;7afe	ff		.
	rst 38h			;7aff	ff		.
	rst 38h			;7b00	ff		.
	rst 38h			;7b01	ff		.
	rst 38h			;7b02	ff		.
	rst 38h			;7b03	ff		.
	rst 38h			;7b04	ff		.
	rst 38h			;7b05	ff		.
	rst 38h			;7b06	ff		.
	rst 38h			;7b07	ff		.
	rst 38h			;7b08	ff		.
	rst 38h			;7b09	ff		.
	rst 38h			;7b0a	ff		.
	rst 38h			;7b0b	ff		.
	rst 38h			;7b0c	ff		.
	rst 38h			;7b0d	ff		.
	rst 38h			;7b0e	ff		.
	rst 38h			;7b0f	ff		.
	rst 38h			;7b10	ff		.
	rst 38h			;7b11	ff		.
	rst 38h			;7b12	ff		.
	rst 38h			;7b13	ff		.
	rst 38h			;7b14	ff		.
	rst 38h			;7b15	ff		.
	rst 38h			;7b16	ff		.
	rst 38h			;7b17	ff		.
	rst 38h			;7b18	ff		.
	rst 38h			;7b19	ff		.
	rst 38h			;7b1a	ff		.
	rst 38h			;7b1b	ff		.
	rst 38h			;7b1c	ff		.
	rst 38h			;7b1d	ff		.
	rst 38h			;7b1e	ff		.
	rst 38h			;7b1f	ff		.
	rst 38h			;7b20	ff		.
	rst 38h			;7b21	ff		.
	rst 38h			;7b22	ff		.
	rst 38h			;7b23	ff		.
	rst 38h			;7b24	ff		.
	rst 38h			;7b25	ff		.
	rst 38h			;7b26	ff		.
	rst 38h			;7b27	ff		.
	rst 38h			;7b28	ff		.
	rst 38h			;7b29	ff		.
	rst 38h			;7b2a	ff		.
	rst 38h			;7b2b	ff		.
	rst 38h			;7b2c	ff		.
	rst 38h			;7b2d	ff		.
	rst 38h			;7b2e	ff		.
	rst 38h			;7b2f	ff		.
	rst 38h			;7b30	ff		.
	rst 38h			;7b31	ff		.
	rst 38h			;7b32	ff		.
	rst 38h			;7b33	ff		.
	rst 38h			;7b34	ff		.
	rst 38h			;7b35	ff		.
	rst 38h			;7b36	ff		.
	rst 38h			;7b37	ff		.
	rst 38h			;7b38	ff		.
	rst 38h			;7b39	ff		.
	rst 38h			;7b3a	ff		.
	rst 38h			;7b3b	ff		.
	rst 38h			;7b3c	ff		.
	rst 38h			;7b3d	ff		.
	rst 38h			;7b3e	ff		.
	rst 38h			;7b3f	ff		.
	rst 38h			;7b40	ff		.
	rst 38h			;7b41	ff		.
	rst 38h			;7b42	ff		.
	rst 38h			;7b43	ff		.
	rst 38h			;7b44	ff		.
	rst 38h			;7b45	ff		.
	rst 38h			;7b46	ff		.
	rst 38h			;7b47	ff		.
	rst 38h			;7b48	ff		.
	rst 38h			;7b49	ff		.
	rst 38h			;7b4a	ff		.
	rst 38h			;7b4b	ff		.
	rst 38h			;7b4c	ff		.
	rst 38h			;7b4d	ff		.
	rst 38h			;7b4e	ff		.
	rst 38h			;7b4f	ff		.
	rst 38h			;7b50	ff		.
	rst 38h			;7b51	ff		.
	rst 38h			;7b52	ff		.
	rst 38h			;7b53	ff		.
	rst 38h			;7b54	ff		.
	rst 38h			;7b55	ff		.
	rst 38h			;7b56	ff		.
	rst 38h			;7b57	ff		.
	rst 38h			;7b58	ff		.
	rst 38h			;7b59	ff		.
	rst 38h			;7b5a	ff		.
	rst 38h			;7b5b	ff		.
	rst 38h			;7b5c	ff		.
	rst 38h			;7b5d	ff		.
	rst 38h			;7b5e	ff		.
	rst 38h			;7b5f	ff		.
	rst 38h			;7b60	ff		.
	rst 38h			;7b61	ff		.
	rst 38h			;7b62	ff		.
	rst 38h			;7b63	ff		.
	rst 38h			;7b64	ff		.
	rst 38h			;7b65	ff		.
	rst 38h			;7b66	ff		.
	rst 38h			;7b67	ff		.
	rst 38h			;7b68	ff		.
	rst 38h			;7b69	ff		.
	rst 38h			;7b6a	ff		.
	rst 38h			;7b6b	ff		.
	rst 38h			;7b6c	ff		.
	rst 38h			;7b6d	ff		.
	rst 38h			;7b6e	ff		.
	rst 38h			;7b6f	ff		.
	rst 38h			;7b70	ff		.
	rst 38h			;7b71	ff		.
	rst 38h			;7b72	ff		.
	rst 38h			;7b73	ff		.
	rst 38h			;7b74	ff		.
	rst 38h			;7b75	ff		.
	rst 38h			;7b76	ff		.
	rst 38h			;7b77	ff		.
	rst 38h			;7b78	ff		.
	rst 38h			;7b79	ff		.
	rst 38h			;7b7a	ff		.
	rst 38h			;7b7b	ff		.
	rst 38h			;7b7c	ff		.
	rst 38h			;7b7d	ff		.
	rst 38h			;7b7e	ff		.
	rst 38h			;7b7f	ff		.
	rst 38h			;7b80	ff		.
	rst 38h			;7b81	ff		.
	rst 38h			;7b82	ff		.
	rst 38h			;7b83	ff		.
	rst 38h			;7b84	ff		.
	rst 38h			;7b85	ff		.
	rst 38h			;7b86	ff		.
	rst 38h			;7b87	ff		.
	rst 38h			;7b88	ff		.
	rst 38h			;7b89	ff		.
	rst 38h			;7b8a	ff		.
	rst 38h			;7b8b	ff		.
	rst 38h			;7b8c	ff		.
	rst 38h			;7b8d	ff		.
	rst 38h			;7b8e	ff		.
	rst 38h			;7b8f	ff		.
	rst 38h			;7b90	ff		.
	rst 38h			;7b91	ff		.
	rst 38h			;7b92	ff		.
	rst 38h			;7b93	ff		.
	rst 38h			;7b94	ff		.
	rst 38h			;7b95	ff		.
	rst 38h			;7b96	ff		.
	rst 38h			;7b97	ff		.
	rst 38h			;7b98	ff		.
	rst 38h			;7b99	ff		.
	rst 38h			;7b9a	ff		.
	rst 38h			;7b9b	ff		.
	rst 38h			;7b9c	ff		.
	rst 38h			;7b9d	ff		.
	rst 38h			;7b9e	ff		.
	rst 38h			;7b9f	ff		.
	rst 38h			;7ba0	ff		.
	rst 38h			;7ba1	ff		.
	rst 38h			;7ba2	ff		.
	rst 38h			;7ba3	ff		.
	rst 38h			;7ba4	ff		.
	rst 38h			;7ba5	ff		.
	rst 38h			;7ba6	ff		.
	rst 38h			;7ba7	ff		.
	rst 38h			;7ba8	ff		.
	rst 38h			;7ba9	ff		.
	rst 38h			;7baa	ff		.
	rst 38h			;7bab	ff		.
	rst 38h			;7bac	ff		.
	rst 38h			;7bad	ff		.
	rst 38h			;7bae	ff		.
	rst 38h			;7baf	ff		.
	rst 38h			;7bb0	ff		.
	rst 38h			;7bb1	ff		.
	rst 38h			;7bb2	ff		.
	rst 38h			;7bb3	ff		.
	rst 38h			;7bb4	ff		.
	rst 38h			;7bb5	ff		.
	rst 38h			;7bb6	ff		.
	rst 38h			;7bb7	ff		.
	rst 38h			;7bb8	ff		.
	rst 38h			;7bb9	ff		.
	rst 38h			;7bba	ff		.
	rst 38h			;7bbb	ff		.
	rst 38h			;7bbc	ff		.
	rst 38h			;7bbd	ff		.
	rst 38h			;7bbe	ff		.
	rst 38h			;7bbf	ff		.
	rst 38h			;7bc0	ff		.
	rst 38h			;7bc1	ff		.
	rst 38h			;7bc2	ff		.
	rst 38h			;7bc3	ff		.
	rst 38h			;7bc4	ff		.
	rst 38h			;7bc5	ff		.
	rst 38h			;7bc6	ff		.
	rst 38h			;7bc7	ff		.
	rst 38h			;7bc8	ff		.
	rst 38h			;7bc9	ff		.
	rst 38h			;7bca	ff		.
	rst 38h			;7bcb	ff		.
	rst 38h			;7bcc	ff		.
	rst 38h			;7bcd	ff		.
	rst 38h			;7bce	ff		.
	rst 38h			;7bcf	ff		.
	rst 38h			;7bd0	ff		.
	rst 38h			;7bd1	ff		.
	rst 38h			;7bd2	ff		.
	rst 38h			;7bd3	ff		.
	rst 38h			;7bd4	ff		.
	rst 38h			;7bd5	ff		.
	rst 38h			;7bd6	ff		.
	rst 38h			;7bd7	ff		.
	rst 38h			;7bd8	ff		.
	rst 38h			;7bd9	ff		.
	rst 38h			;7bda	ff		.
	rst 38h			;7bdb	ff		.
	rst 38h			;7bdc	ff		.
	rst 38h			;7bdd	ff		.
	rst 38h			;7bde	ff		.
	rst 38h			;7bdf	ff		.
	rst 38h			;7be0	ff		.
	rst 38h			;7be1	ff		.
	rst 38h			;7be2	ff		.
	rst 38h			;7be3	ff		.
	rst 38h			;7be4	ff		.
	rst 38h			;7be5	ff		.
	rst 38h			;7be6	ff		.
	rst 38h			;7be7	ff		.
	rst 38h			;7be8	ff		.
	rst 38h			;7be9	ff		.
	rst 38h			;7bea	ff		.
	rst 38h			;7beb	ff		.
	rst 38h			;7bec	ff		.
	rst 38h			;7bed	ff		.
	rst 38h			;7bee	ff		.
	rst 38h			;7bef	ff		.
	rst 38h			;7bf0	ff		.
	rst 38h			;7bf1	ff		.
	rst 38h			;7bf2	ff		.
	rst 38h			;7bf3	ff		.
	rst 38h			;7bf4	ff		.
	rst 38h			;7bf5	ff		.
	rst 38h			;7bf6	ff		.
	rst 38h			;7bf7	ff		.
	rst 38h			;7bf8	ff		.
	rst 38h			;7bf9	ff		.
	rst 38h			;7bfa	ff		.
	rst 38h			;7bfb	ff		.
	rst 38h			;7bfc	ff		.
	rst 38h			;7bfd	ff		.
	rst 38h			;7bfe	ff		.
	rst 38h			;7bff	ff		.
	rst 38h			;7c00	ff		.
	rst 38h			;7c01	ff		.
	rst 38h			;7c02	ff		.
	rst 38h			;7c03	ff		.
	rst 38h			;7c04	ff		.
	rst 38h			;7c05	ff		.
	rst 38h			;7c06	ff		.
	rst 38h			;7c07	ff		.
	rst 38h			;7c08	ff		.
	rst 38h			;7c09	ff		.
	rst 38h			;7c0a	ff		.
	rst 38h			;7c0b	ff		.
	rst 38h			;7c0c	ff		.
	rst 38h			;7c0d	ff		.
	rst 38h			;7c0e	ff		.
	rst 38h			;7c0f	ff		.
	rst 38h			;7c10	ff		.
	rst 38h			;7c11	ff		.
	rst 38h			;7c12	ff		.
	rst 38h			;7c13	ff		.
	rst 38h			;7c14	ff		.
	rst 38h			;7c15	ff		.
	rst 38h			;7c16	ff		.
	rst 38h			;7c17	ff		.
	rst 38h			;7c18	ff		.
	rst 38h			;7c19	ff		.
	rst 38h			;7c1a	ff		.
	rst 38h			;7c1b	ff		.
	rst 38h			;7c1c	ff		.
	rst 38h			;7c1d	ff		.
	rst 38h			;7c1e	ff		.
	rst 38h			;7c1f	ff		.
	rst 38h			;7c20	ff		.
	rst 38h			;7c21	ff		.
	rst 38h			;7c22	ff		.
	rst 38h			;7c23	ff		.
	rst 38h			;7c24	ff		.
	rst 38h			;7c25	ff		.
	rst 38h			;7c26	ff		.
	rst 38h			;7c27	ff		.
	rst 38h			;7c28	ff		.
	rst 38h			;7c29	ff		.
	rst 38h			;7c2a	ff		.
	rst 38h			;7c2b	ff		.
	rst 38h			;7c2c	ff		.
	rst 38h			;7c2d	ff		.
	rst 38h			;7c2e	ff		.
	rst 38h			;7c2f	ff		.
	rst 38h			;7c30	ff		.
	rst 38h			;7c31	ff		.
	rst 38h			;7c32	ff		.
	rst 38h			;7c33	ff		.
	rst 38h			;7c34	ff		.
	rst 38h			;7c35	ff		.
	rst 38h			;7c36	ff		.
	rst 38h			;7c37	ff		.
	rst 38h			;7c38	ff		.
	rst 38h			;7c39	ff		.
	rst 38h			;7c3a	ff		.
	rst 38h			;7c3b	ff		.
	rst 38h			;7c3c	ff		.
	rst 38h			;7c3d	ff		.
	rst 38h			;7c3e	ff		.
	rst 38h			;7c3f	ff		.
	rst 38h			;7c40	ff		.
	rst 38h			;7c41	ff		.
	rst 38h			;7c42	ff		.
	rst 38h			;7c43	ff		.
	rst 38h			;7c44	ff		.
	rst 38h			;7c45	ff		.
	rst 38h			;7c46	ff		.
	rst 38h			;7c47	ff		.
	rst 38h			;7c48	ff		.
	rst 38h			;7c49	ff		.
	rst 38h			;7c4a	ff		.
	rst 38h			;7c4b	ff		.
	rst 38h			;7c4c	ff		.
	rst 38h			;7c4d	ff		.
	rst 38h			;7c4e	ff		.
	rst 38h			;7c4f	ff		.
	rst 38h			;7c50	ff		.
	rst 38h			;7c51	ff		.
	rst 38h			;7c52	ff		.
	rst 38h			;7c53	ff		.
	rst 38h			;7c54	ff		.
	rst 38h			;7c55	ff		.
	rst 38h			;7c56	ff		.
	rst 38h			;7c57	ff		.
	rst 38h			;7c58	ff		.
	rst 38h			;7c59	ff		.
	rst 38h			;7c5a	ff		.
	rst 38h			;7c5b	ff		.
	rst 38h			;7c5c	ff		.
	rst 38h			;7c5d	ff		.
	rst 38h			;7c5e	ff		.
	rst 38h			;7c5f	ff		.
	rst 38h			;7c60	ff		.
	rst 38h			;7c61	ff		.
	rst 38h			;7c62	ff		.
	rst 38h			;7c63	ff		.
	rst 38h			;7c64	ff		.
	rst 38h			;7c65	ff		.
	rst 38h			;7c66	ff		.
	rst 38h			;7c67	ff		.
	rst 38h			;7c68	ff		.
	rst 38h			;7c69	ff		.
	rst 38h			;7c6a	ff		.
	rst 38h			;7c6b	ff		.
	rst 38h			;7c6c	ff		.
	rst 38h			;7c6d	ff		.
	rst 38h			;7c6e	ff		.
	rst 38h			;7c6f	ff		.
	rst 38h			;7c70	ff		.
	rst 38h			;7c71	ff		.
	rst 38h			;7c72	ff		.
	rst 38h			;7c73	ff		.
	rst 38h			;7c74	ff		.
	rst 38h			;7c75	ff		.
	rst 38h			;7c76	ff		.
	rst 38h			;7c77	ff		.
	rst 38h			;7c78	ff		.
	rst 38h			;7c79	ff		.
	rst 38h			;7c7a	ff		.
	rst 38h			;7c7b	ff		.
	rst 38h			;7c7c	ff		.
	rst 38h			;7c7d	ff		.
	rst 38h			;7c7e	ff		.
	rst 38h			;7c7f	ff		.
	rst 38h			;7c80	ff		.
	rst 38h			;7c81	ff		.
	rst 38h			;7c82	ff		.
	rst 38h			;7c83	ff		.
	rst 38h			;7c84	ff		.
	rst 38h			;7c85	ff		.
	rst 38h			;7c86	ff		.
	rst 38h			;7c87	ff		.
	rst 38h			;7c88	ff		.
	rst 38h			;7c89	ff		.
	rst 38h			;7c8a	ff		.
	rst 38h			;7c8b	ff		.
	rst 38h			;7c8c	ff		.
	rst 38h			;7c8d	ff		.
	rst 38h			;7c8e	ff		.
	rst 38h			;7c8f	ff		.
	rst 38h			;7c90	ff		.
	rst 38h			;7c91	ff		.
	rst 38h			;7c92	ff		.
	rst 38h			;7c93	ff		.
	rst 38h			;7c94	ff		.
	rst 38h			;7c95	ff		.
	rst 38h			;7c96	ff		.
	rst 38h			;7c97	ff		.
	rst 38h			;7c98	ff		.
	rst 38h			;7c99	ff		.
	rst 38h			;7c9a	ff		.
	rst 38h			;7c9b	ff		.
	rst 38h			;7c9c	ff		.
	rst 38h			;7c9d	ff		.
	rst 38h			;7c9e	ff		.
	rst 38h			;7c9f	ff		.
	rst 38h			;7ca0	ff		.
	rst 38h			;7ca1	ff		.
	rst 38h			;7ca2	ff		.
	rst 38h			;7ca3	ff		.
	rst 38h			;7ca4	ff		.
	rst 38h			;7ca5	ff		.
	rst 38h			;7ca6	ff		.
	rst 38h			;7ca7	ff		.
	rst 38h			;7ca8	ff		.
	rst 38h			;7ca9	ff		.
	rst 38h			;7caa	ff		.
	rst 38h			;7cab	ff		.
	rst 38h			;7cac	ff		.
	rst 38h			;7cad	ff		.
	rst 38h			;7cae	ff		.
	rst 38h			;7caf	ff		.
	rst 38h			;7cb0	ff		.
	rst 38h			;7cb1	ff		.
	rst 38h			;7cb2	ff		.
	rst 38h			;7cb3	ff		.
	rst 38h			;7cb4	ff		.
	rst 38h			;7cb5	ff		.
	rst 38h			;7cb6	ff		.
	rst 38h			;7cb7	ff		.
	rst 38h			;7cb8	ff		.
	rst 38h			;7cb9	ff		.
	rst 38h			;7cba	ff		.
	rst 38h			;7cbb	ff		.
	rst 38h			;7cbc	ff		.
	rst 38h			;7cbd	ff		.
	rst 38h			;7cbe	ff		.
	rst 38h			;7cbf	ff		.
	rst 38h			;7cc0	ff		.
	rst 38h			;7cc1	ff		.
	rst 38h			;7cc2	ff		.
	rst 38h			;7cc3	ff		.
	rst 38h			;7cc4	ff		.
	rst 38h			;7cc5	ff		.
	rst 38h			;7cc6	ff		.
	rst 38h			;7cc7	ff		.
	rst 38h			;7cc8	ff		.
	rst 38h			;7cc9	ff		.
	rst 38h			;7cca	ff		.
	rst 38h			;7ccb	ff		.
	rst 38h			;7ccc	ff		.
	rst 38h			;7ccd	ff		.
	rst 38h			;7cce	ff		.
	rst 38h			;7ccf	ff		.
	rst 38h			;7cd0	ff		.
	rst 38h			;7cd1	ff		.
	rst 38h			;7cd2	ff		.
	rst 38h			;7cd3	ff		.
	rst 38h			;7cd4	ff		.
	rst 38h			;7cd5	ff		.
	rst 38h			;7cd6	ff		.
	rst 38h			;7cd7	ff		.
	rst 38h			;7cd8	ff		.
	rst 38h			;7cd9	ff		.
	rst 38h			;7cda	ff		.
	rst 38h			;7cdb	ff		.
	rst 38h			;7cdc	ff		.
	rst 38h			;7cdd	ff		.
	rst 38h			;7cde	ff		.
	rst 38h			;7cdf	ff		.
	rst 38h			;7ce0	ff		.
	rst 38h			;7ce1	ff		.
	rst 38h			;7ce2	ff		.
	rst 38h			;7ce3	ff		.
	rst 38h			;7ce4	ff		.
	rst 38h			;7ce5	ff		.
	rst 38h			;7ce6	ff		.
	rst 38h			;7ce7	ff		.
	rst 38h			;7ce8	ff		.
	rst 38h			;7ce9	ff		.
	rst 38h			;7cea	ff		.
	rst 38h			;7ceb	ff		.
	rst 38h			;7cec	ff		.
	rst 38h			;7ced	ff		.
	rst 38h			;7cee	ff		.
	rst 38h			;7cef	ff		.
	rst 38h			;7cf0	ff		.
	rst 38h			;7cf1	ff		.
	rst 38h			;7cf2	ff		.
	rst 38h			;7cf3	ff		.
	rst 38h			;7cf4	ff		.
	rst 38h			;7cf5	ff		.
	rst 38h			;7cf6	ff		.
	rst 38h			;7cf7	ff		.
	rst 38h			;7cf8	ff		.
	rst 38h			;7cf9	ff		.
	rst 38h			;7cfa	ff		.
	rst 38h			;7cfb	ff		.
	rst 38h			;7cfc	ff		.
	rst 38h			;7cfd	ff		.
	rst 38h			;7cfe	ff		.
	rst 38h			;7cff	ff		.
	rst 38h			;7d00	ff		.
	rst 38h			;7d01	ff		.
	rst 38h			;7d02	ff		.
	rst 38h			;7d03	ff		.
	rst 38h			;7d04	ff		.
	rst 38h			;7d05	ff		.
	rst 38h			;7d06	ff		.
	rst 38h			;7d07	ff		.
	rst 38h			;7d08	ff		.
	rst 38h			;7d09	ff		.
	rst 38h			;7d0a	ff		.
	rst 38h			;7d0b	ff		.
	rst 38h			;7d0c	ff		.
	rst 38h			;7d0d	ff		.
	rst 38h			;7d0e	ff		.
	rst 38h			;7d0f	ff		.
	rst 38h			;7d10	ff		.
	rst 38h			;7d11	ff		.
	rst 38h			;7d12	ff		.
	rst 38h			;7d13	ff		.
	rst 38h			;7d14	ff		.
	rst 38h			;7d15	ff		.
	rst 38h			;7d16	ff		.
	rst 38h			;7d17	ff		.
	rst 38h			;7d18	ff		.
	rst 38h			;7d19	ff		.
	rst 38h			;7d1a	ff		.
	rst 38h			;7d1b	ff		.
	rst 38h			;7d1c	ff		.
	rst 38h			;7d1d	ff		.
	rst 38h			;7d1e	ff		.
	rst 38h			;7d1f	ff		.
	rst 38h			;7d20	ff		.
	rst 38h			;7d21	ff		.
	rst 38h			;7d22	ff		.
	rst 38h			;7d23	ff		.
	rst 38h			;7d24	ff		.
	rst 38h			;7d25	ff		.
	rst 38h			;7d26	ff		.
	rst 38h			;7d27	ff		.
	rst 38h			;7d28	ff		.
	rst 38h			;7d29	ff		.
	rst 38h			;7d2a	ff		.
	rst 38h			;7d2b	ff		.
	rst 38h			;7d2c	ff		.
	rst 38h			;7d2d	ff		.
	rst 38h			;7d2e	ff		.
	rst 38h			;7d2f	ff		.
	rst 38h			;7d30	ff		.
	rst 38h			;7d31	ff		.
	rst 38h			;7d32	ff		.
	rst 38h			;7d33	ff		.
	rst 38h			;7d34	ff		.
	rst 38h			;7d35	ff		.
	rst 38h			;7d36	ff		.
	rst 38h			;7d37	ff		.
	rst 38h			;7d38	ff		.
	rst 38h			;7d39	ff		.
	rst 38h			;7d3a	ff		.
	rst 38h			;7d3b	ff		.
	rst 38h			;7d3c	ff		.
	rst 38h			;7d3d	ff		.
	rst 38h			;7d3e	ff		.
	rst 38h			;7d3f	ff		.
	rst 38h			;7d40	ff		.
	rst 38h			;7d41	ff		.
	rst 38h			;7d42	ff		.
	rst 38h			;7d43	ff		.
	rst 38h			;7d44	ff		.
	rst 38h			;7d45	ff		.
	rst 38h			;7d46	ff		.
	rst 38h			;7d47	ff		.
	rst 38h			;7d48	ff		.
	rst 38h			;7d49	ff		.
	rst 38h			;7d4a	ff		.
	rst 38h			;7d4b	ff		.
	rst 38h			;7d4c	ff		.
	rst 38h			;7d4d	ff		.
	rst 38h			;7d4e	ff		.
	rst 38h			;7d4f	ff		.
	rst 38h			;7d50	ff		.
	rst 38h			;7d51	ff		.
	rst 38h			;7d52	ff		.
	rst 38h			;7d53	ff		.
	rst 38h			;7d54	ff		.
	rst 38h			;7d55	ff		.
	rst 38h			;7d56	ff		.
	rst 38h			;7d57	ff		.
	rst 38h			;7d58	ff		.
	rst 38h			;7d59	ff		.
	rst 38h			;7d5a	ff		.
	rst 38h			;7d5b	ff		.
	rst 38h			;7d5c	ff		.
	rst 38h			;7d5d	ff		.
	rst 38h			;7d5e	ff		.
	rst 38h			;7d5f	ff		.
	rst 38h			;7d60	ff		.
	rst 38h			;7d61	ff		.
	rst 38h			;7d62	ff		.
	rst 38h			;7d63	ff		.
	rst 38h			;7d64	ff		.
	rst 38h			;7d65	ff		.
	rst 38h			;7d66	ff		.
	rst 38h			;7d67	ff		.
	rst 38h			;7d68	ff		.
	rst 38h			;7d69	ff		.
	rst 38h			;7d6a	ff		.
	rst 38h			;7d6b	ff		.
	rst 38h			;7d6c	ff		.
	rst 38h			;7d6d	ff		.
	rst 38h			;7d6e	ff		.
	rst 38h			;7d6f	ff		.
	rst 38h			;7d70	ff		.
	rst 38h			;7d71	ff		.
	rst 38h			;7d72	ff		.
	rst 38h			;7d73	ff		.
	rst 38h			;7d74	ff		.
	rst 38h			;7d75	ff		.
	rst 38h			;7d76	ff		.
	rst 38h			;7d77	ff		.
	rst 38h			;7d78	ff		.
	rst 38h			;7d79	ff		.
	rst 38h			;7d7a	ff		.
	rst 38h			;7d7b	ff		.
	rst 38h			;7d7c	ff		.
	rst 38h			;7d7d	ff		.
	rst 38h			;7d7e	ff		.
	rst 38h			;7d7f	ff		.
	rst 38h			;7d80	ff		.
	rst 38h			;7d81	ff		.
	rst 38h			;7d82	ff		.
	rst 38h			;7d83	ff		.
	rst 38h			;7d84	ff		.
	rst 38h			;7d85	ff		.
	rst 38h			;7d86	ff		.
	rst 38h			;7d87	ff		.
	rst 38h			;7d88	ff		.
	rst 38h			;7d89	ff		.
	rst 38h			;7d8a	ff		.
	rst 38h			;7d8b	ff		.
	rst 38h			;7d8c	ff		.
	rst 38h			;7d8d	ff		.
	rst 38h			;7d8e	ff		.
	rst 38h			;7d8f	ff		.
	rst 38h			;7d90	ff		.
	rst 38h			;7d91	ff		.
	rst 38h			;7d92	ff		.
	rst 38h			;7d93	ff		.
	rst 38h			;7d94	ff		.
	rst 38h			;7d95	ff		.
	rst 38h			;7d96	ff		.
	rst 38h			;7d97	ff		.
	rst 38h			;7d98	ff		.
	rst 38h			;7d99	ff		.
	rst 38h			;7d9a	ff		.
	rst 38h			;7d9b	ff		.
	rst 38h			;7d9c	ff		.
	rst 38h			;7d9d	ff		.
	rst 38h			;7d9e	ff		.
	rst 38h			;7d9f	ff		.
	rst 38h			;7da0	ff		.
	rst 38h			;7da1	ff		.
	rst 38h			;7da2	ff		.
	rst 38h			;7da3	ff		.
	rst 38h			;7da4	ff		.
	rst 38h			;7da5	ff		.
	rst 38h			;7da6	ff		.
	rst 38h			;7da7	ff		.
	rst 38h			;7da8	ff		.
	rst 38h			;7da9	ff		.
	rst 38h			;7daa	ff		.
	rst 38h			;7dab	ff		.
	rst 38h			;7dac	ff		.
	rst 38h			;7dad	ff		.
	rst 38h			;7dae	ff		.
	rst 38h			;7daf	ff		.
	rst 38h			;7db0	ff		.
	rst 38h			;7db1	ff		.
	rst 38h			;7db2	ff		.
	rst 38h			;7db3	ff		.
	rst 38h			;7db4	ff		.
	rst 38h			;7db5	ff		.
	rst 38h			;7db6	ff		.
	rst 38h			;7db7	ff		.
	rst 38h			;7db8	ff		.
	rst 38h			;7db9	ff		.
	rst 38h			;7dba	ff		.
	rst 38h			;7dbb	ff		.
	rst 38h			;7dbc	ff		.
	rst 38h			;7dbd	ff		.
	rst 38h			;7dbe	ff		.
	rst 38h			;7dbf	ff		.
	rst 38h			;7dc0	ff		.
	rst 38h			;7dc1	ff		.
	rst 38h			;7dc2	ff		.
	rst 38h			;7dc3	ff		.
	rst 38h			;7dc4	ff		.
	rst 38h			;7dc5	ff		.
	rst 38h			;7dc6	ff		.
	rst 38h			;7dc7	ff		.
	rst 38h			;7dc8	ff		.
	rst 38h			;7dc9	ff		.
	rst 38h			;7dca	ff		.
	rst 38h			;7dcb	ff		.
	rst 38h			;7dcc	ff		.
	rst 38h			;7dcd	ff		.
	rst 38h			;7dce	ff		.
	rst 38h			;7dcf	ff		.
	rst 38h			;7dd0	ff		.
	rst 38h			;7dd1	ff		.
	rst 38h			;7dd2	ff		.
	rst 38h			;7dd3	ff		.
	rst 38h			;7dd4	ff		.
	rst 38h			;7dd5	ff		.
	rst 38h			;7dd6	ff		.
	rst 38h			;7dd7	ff		.
	rst 38h			;7dd8	ff		.
	rst 38h			;7dd9	ff		.
	rst 38h			;7dda	ff		.
	rst 38h			;7ddb	ff		.
	rst 38h			;7ddc	ff		.
	rst 38h			;7ddd	ff		.
	rst 38h			;7dde	ff		.
	rst 38h			;7ddf	ff		.
	rst 38h			;7de0	ff		.
	rst 38h			;7de1	ff		.
	rst 38h			;7de2	ff		.
	rst 38h			;7de3	ff		.
	rst 38h			;7de4	ff		.
	rst 38h			;7de5	ff		.
	rst 38h			;7de6	ff		.
	rst 38h			;7de7	ff		.
	rst 38h			;7de8	ff		.
	rst 38h			;7de9	ff		.
	rst 38h			;7dea	ff		.
	rst 38h			;7deb	ff		.
	rst 38h			;7dec	ff		.
	rst 38h			;7ded	ff		.
	rst 38h			;7dee	ff		.
	rst 38h			;7def	ff		.
	rst 38h			;7df0	ff		.
	rst 38h			;7df1	ff		.
	rst 38h			;7df2	ff		.
	rst 38h			;7df3	ff		.
	rst 38h			;7df4	ff		.
	rst 38h			;7df5	ff		.
	rst 38h			;7df6	ff		.
	rst 38h			;7df7	ff		.
	rst 38h			;7df8	ff		.
	rst 38h			;7df9	ff		.
	rst 38h			;7dfa	ff		.
	rst 38h			;7dfb	ff		.
	rst 38h			;7dfc	ff		.
	rst 38h			;7dfd	ff		.
	rst 38h			;7dfe	ff		.
	rst 38h			;7dff	ff		.
	rst 38h			;7e00	ff		.
	rst 38h			;7e01	ff		.
	rst 38h			;7e02	ff		.
	rst 38h			;7e03	ff		.
	rst 38h			;7e04	ff		.
	rst 38h			;7e05	ff		.
	rst 38h			;7e06	ff		.
	rst 38h			;7e07	ff		.
	rst 38h			;7e08	ff		.
	rst 38h			;7e09	ff		.
	rst 38h			;7e0a	ff		.
	rst 38h			;7e0b	ff		.
	rst 38h			;7e0c	ff		.
	rst 38h			;7e0d	ff		.
	rst 38h			;7e0e	ff		.
	rst 38h			;7e0f	ff		.
	rst 38h			;7e10	ff		.
	rst 38h			;7e11	ff		.
	rst 38h			;7e12	ff		.
	rst 38h			;7e13	ff		.
	rst 38h			;7e14	ff		.
	rst 38h			;7e15	ff		.
	rst 38h			;7e16	ff		.
	rst 38h			;7e17	ff		.
	rst 38h			;7e18	ff		.
	rst 38h			;7e19	ff		.
	rst 38h			;7e1a	ff		.
	rst 38h			;7e1b	ff		.
	rst 38h			;7e1c	ff		.
	rst 38h			;7e1d	ff		.
	rst 38h			;7e1e	ff		.
	rst 38h			;7e1f	ff		.
	rst 38h			;7e20	ff		.
	rst 38h			;7e21	ff		.
	rst 38h			;7e22	ff		.
	rst 38h			;7e23	ff		.
	rst 38h			;7e24	ff		.
	rst 38h			;7e25	ff		.
	rst 38h			;7e26	ff		.
	rst 38h			;7e27	ff		.
	rst 38h			;7e28	ff		.
	rst 38h			;7e29	ff		.
	rst 38h			;7e2a	ff		.
	rst 38h			;7e2b	ff		.
	rst 38h			;7e2c	ff		.
	rst 38h			;7e2d	ff		.
	rst 38h			;7e2e	ff		.
	rst 38h			;7e2f	ff		.
	rst 38h			;7e30	ff		.
	rst 38h			;7e31	ff		.
	rst 38h			;7e32	ff		.
	rst 38h			;7e33	ff		.
	rst 38h			;7e34	ff		.
	rst 38h			;7e35	ff		.
	rst 38h			;7e36	ff		.
	rst 38h			;7e37	ff		.
	rst 38h			;7e38	ff		.
	rst 38h			;7e39	ff		.
	rst 38h			;7e3a	ff		.
	rst 38h			;7e3b	ff		.
	rst 38h			;7e3c	ff		.
	rst 38h			;7e3d	ff		.
	rst 38h			;7e3e	ff		.
	rst 38h			;7e3f	ff		.
	rst 38h			;7e40	ff		.
	rst 38h			;7e41	ff		.
	rst 38h			;7e42	ff		.
	rst 38h			;7e43	ff		.
	rst 38h			;7e44	ff		.
	rst 38h			;7e45	ff		.
	rst 38h			;7e46	ff		.
	rst 38h			;7e47	ff		.
	rst 38h			;7e48	ff		.
	rst 38h			;7e49	ff		.
	rst 38h			;7e4a	ff		.
	rst 38h			;7e4b	ff		.
	rst 38h			;7e4c	ff		.
	rst 38h			;7e4d	ff		.
	rst 38h			;7e4e	ff		.
	rst 38h			;7e4f	ff		.
	rst 38h			;7e50	ff		.
	rst 38h			;7e51	ff		.
	rst 38h			;7e52	ff		.
	rst 38h			;7e53	ff		.
	rst 38h			;7e54	ff		.
	rst 38h			;7e55	ff		.
	rst 38h			;7e56	ff		.
	rst 38h			;7e57	ff		.
	rst 38h			;7e58	ff		.
	rst 38h			;7e59	ff		.
	rst 38h			;7e5a	ff		.
	rst 38h			;7e5b	ff		.
	rst 38h			;7e5c	ff		.
	rst 38h			;7e5d	ff		.
	rst 38h			;7e5e	ff		.
	rst 38h			;7e5f	ff		.
	rst 38h			;7e60	ff		.
	rst 38h			;7e61	ff		.
	rst 38h			;7e62	ff		.
	rst 38h			;7e63	ff		.
	rst 38h			;7e64	ff		.
	rst 38h			;7e65	ff		.
	rst 38h			;7e66	ff		.
	rst 38h			;7e67	ff		.
	rst 38h			;7e68	ff		.
	rst 38h			;7e69	ff		.
	rst 38h			;7e6a	ff		.
	rst 38h			;7e6b	ff		.
	rst 38h			;7e6c	ff		.
	rst 38h			;7e6d	ff		.
	rst 38h			;7e6e	ff		.
	rst 38h			;7e6f	ff		.
	rst 38h			;7e70	ff		.
	rst 38h			;7e71	ff		.
	rst 38h			;7e72	ff		.
	rst 38h			;7e73	ff		.
	rst 38h			;7e74	ff		.
	rst 38h			;7e75	ff		.
	rst 38h			;7e76	ff		.
	rst 38h			;7e77	ff		.
	rst 38h			;7e78	ff		.
	rst 38h			;7e79	ff		.
	rst 38h			;7e7a	ff		.
	rst 38h			;7e7b	ff		.
	rst 38h			;7e7c	ff		.
	rst 38h			;7e7d	ff		.
	rst 38h			;7e7e	ff		.
	rst 38h			;7e7f	ff		.
	rst 38h			;7e80	ff		.
	rst 38h			;7e81	ff		.
	rst 38h			;7e82	ff		.
	rst 38h			;7e83	ff		.
	rst 38h			;7e84	ff		.
	rst 38h			;7e85	ff		.
	rst 38h			;7e86	ff		.
	rst 38h			;7e87	ff		.
	rst 38h			;7e88	ff		.
	rst 38h			;7e89	ff		.
	rst 38h			;7e8a	ff		.
	rst 38h			;7e8b	ff		.
	rst 38h			;7e8c	ff		.
	rst 38h			;7e8d	ff		.
	rst 38h			;7e8e	ff		.
	rst 38h			;7e8f	ff		.
	rst 38h			;7e90	ff		.
	rst 38h			;7e91	ff		.
	rst 38h			;7e92	ff		.
	rst 38h			;7e93	ff		.
	rst 38h			;7e94	ff		.
	rst 38h			;7e95	ff		.
	rst 38h			;7e96	ff		.
	rst 38h			;7e97	ff		.
	rst 38h			;7e98	ff		.
	rst 38h			;7e99	ff		.
	rst 38h			;7e9a	ff		.
	rst 38h			;7e9b	ff		.
	rst 38h			;7e9c	ff		.
	rst 38h			;7e9d	ff		.
	rst 38h			;7e9e	ff		.
	rst 38h			;7e9f	ff		.
	rst 38h			;7ea0	ff		.
	rst 38h			;7ea1	ff		.
	rst 38h			;7ea2	ff		.
	rst 38h			;7ea3	ff		.
	rst 38h			;7ea4	ff		.
	rst 38h			;7ea5	ff		.
	rst 38h			;7ea6	ff		.
	rst 38h			;7ea7	ff		.
	rst 38h			;7ea8	ff		.
	rst 38h			;7ea9	ff		.
	rst 38h			;7eaa	ff		.
	rst 38h			;7eab	ff		.
	rst 38h			;7eac	ff		.
	rst 38h			;7ead	ff		.
	rst 38h			;7eae	ff		.
	rst 38h			;7eaf	ff		.
	rst 38h			;7eb0	ff		.
	rst 38h			;7eb1	ff		.
	rst 38h			;7eb2	ff		.
	rst 38h			;7eb3	ff		.
	rst 38h			;7eb4	ff		.
	rst 38h			;7eb5	ff		.
	rst 38h			;7eb6	ff		.
	rst 38h			;7eb7	ff		.
	rst 38h			;7eb8	ff		.
	rst 38h			;7eb9	ff		.
	rst 38h			;7eba	ff		.
	rst 38h			;7ebb	ff		.
	rst 38h			;7ebc	ff		.
	rst 38h			;7ebd	ff		.
	rst 38h			;7ebe	ff		.
	rst 38h			;7ebf	ff		.
	rst 38h			;7ec0	ff		.
	rst 38h			;7ec1	ff		.
	rst 38h			;7ec2	ff		.
	rst 38h			;7ec3	ff		.
	rst 38h			;7ec4	ff		.
	rst 38h			;7ec5	ff		.
	rst 38h			;7ec6	ff		.
	rst 38h			;7ec7	ff		.
	rst 38h			;7ec8	ff		.
	rst 38h			;7ec9	ff		.
	rst 38h			;7eca	ff		.
	rst 38h			;7ecb	ff		.
	rst 38h			;7ecc	ff		.
	rst 38h			;7ecd	ff		.
	rst 38h			;7ece	ff		.
	rst 38h			;7ecf	ff		.
	rst 38h			;7ed0	ff		.
	rst 38h			;7ed1	ff		.
	rst 38h			;7ed2	ff		.
	rst 38h			;7ed3	ff		.
	rst 38h			;7ed4	ff		.
	rst 38h			;7ed5	ff		.
	rst 38h			;7ed6	ff		.
	rst 38h			;7ed7	ff		.
	rst 38h			;7ed8	ff		.
	rst 38h			;7ed9	ff		.
	rst 38h			;7eda	ff		.
	rst 38h			;7edb	ff		.
	rst 38h			;7edc	ff		.
	rst 38h			;7edd	ff		.
	rst 38h			;7ede	ff		.
	rst 38h			;7edf	ff		.
	rst 38h			;7ee0	ff		.
	rst 38h			;7ee1	ff		.
	rst 38h			;7ee2	ff		.
	rst 38h			;7ee3	ff		.
	rst 38h			;7ee4	ff		.
	rst 38h			;7ee5	ff		.
	rst 38h			;7ee6	ff		.
	rst 38h			;7ee7	ff		.
	rst 38h			;7ee8	ff		.
	rst 38h			;7ee9	ff		.
	rst 38h			;7eea	ff		.
	rst 38h			;7eeb	ff		.
	rst 38h			;7eec	ff		.
	rst 38h			;7eed	ff		.
	rst 38h			;7eee	ff		.
	rst 38h			;7eef	ff		.
	rst 38h			;7ef0	ff		.
	rst 38h			;7ef1	ff		.
	rst 38h			;7ef2	ff		.
	rst 38h			;7ef3	ff		.
	rst 38h			;7ef4	ff		.
	rst 38h			;7ef5	ff		.
	rst 38h			;7ef6	ff		.
	rst 38h			;7ef7	ff		.
	rst 38h			;7ef8	ff		.
	rst 38h			;7ef9	ff		.
	rst 38h			;7efa	ff		.
	rst 38h			;7efb	ff		.
	rst 38h			;7efc	ff		.
	rst 38h			;7efd	ff		.
	rst 38h			;7efe	ff		.
	rst 38h			;7eff	ff		.
	rst 38h			;7f00	ff		.
	rst 38h			;7f01	ff		.
	rst 38h			;7f02	ff		.
	rst 38h			;7f03	ff		.
	rst 38h			;7f04	ff		.
	rst 38h			;7f05	ff		.
	rst 38h			;7f06	ff		.
	rst 38h			;7f07	ff		.
	rst 38h			;7f08	ff		.
	rst 38h			;7f09	ff		.
	rst 38h			;7f0a	ff		.
	rst 38h			;7f0b	ff		.
	rst 38h			;7f0c	ff		.
	rst 38h			;7f0d	ff		.
	rst 38h			;7f0e	ff		.
	rst 38h			;7f0f	ff		.
	rst 38h			;7f10	ff		.
	rst 38h			;7f11	ff		.
	rst 38h			;7f12	ff		.
	rst 38h			;7f13	ff		.
	rst 38h			;7f14	ff		.
	rst 38h			;7f15	ff		.
	rst 38h			;7f16	ff		.
	rst 38h			;7f17	ff		.
	rst 38h			;7f18	ff		.
	rst 38h			;7f19	ff		.
	rst 38h			;7f1a	ff		.
	rst 38h			;7f1b	ff		.
	rst 38h			;7f1c	ff		.
	rst 38h			;7f1d	ff		.
	rst 38h			;7f1e	ff		.
	rst 38h			;7f1f	ff		.
	rst 38h			;7f20	ff		.
	rst 38h			;7f21	ff		.
	rst 38h			;7f22	ff		.
	rst 38h			;7f23	ff		.
	rst 38h			;7f24	ff		.
	rst 38h			;7f25	ff		.
	rst 38h			;7f26	ff		.
	rst 38h			;7f27	ff		.
	rst 38h			;7f28	ff		.
	rst 38h			;7f29	ff		.
	rst 38h			;7f2a	ff		.
	rst 38h			;7f2b	ff		.
	rst 38h			;7f2c	ff		.
	rst 38h			;7f2d	ff		.
	rst 38h			;7f2e	ff		.
	rst 38h			;7f2f	ff		.
	rst 38h			;7f30	ff		.
	rst 38h			;7f31	ff		.
	rst 38h			;7f32	ff		.
	rst 38h			;7f33	ff		.
	rst 38h			;7f34	ff		.
	rst 38h			;7f35	ff		.
	rst 38h			;7f36	ff		.
	rst 38h			;7f37	ff		.
	rst 38h			;7f38	ff		.
	rst 38h			;7f39	ff		.
	rst 38h			;7f3a	ff		.
	rst 38h			;7f3b	ff		.
	rst 38h			;7f3c	ff		.
	rst 38h			;7f3d	ff		.
	rst 38h			;7f3e	ff		.
	rst 38h			;7f3f	ff		.
	rst 38h			;7f40	ff		.
	rst 38h			;7f41	ff		.
	rst 38h			;7f42	ff		.
	rst 38h			;7f43	ff		.
	rst 38h			;7f44	ff		.
	rst 38h			;7f45	ff		.
	rst 38h			;7f46	ff		.
	rst 38h			;7f47	ff		.
	rst 38h			;7f48	ff		.
	rst 38h			;7f49	ff		.
	rst 38h			;7f4a	ff		.
	rst 38h			;7f4b	ff		.
	rst 38h			;7f4c	ff		.
	rst 38h			;7f4d	ff		.
	rst 38h			;7f4e	ff		.
	rst 38h			;7f4f	ff		.
	rst 38h			;7f50	ff		.
	rst 38h			;7f51	ff		.
	rst 38h			;7f52	ff		.
	rst 38h			;7f53	ff		.
	rst 38h			;7f54	ff		.
	rst 38h			;7f55	ff		.
	rst 38h			;7f56	ff		.
	rst 38h			;7f57	ff		.
	rst 38h			;7f58	ff		.
	rst 38h			;7f59	ff		.
	rst 38h			;7f5a	ff		.
	rst 38h			;7f5b	ff		.
	rst 38h			;7f5c	ff		.
	rst 38h			;7f5d	ff		.
	rst 38h			;7f5e	ff		.
	rst 38h			;7f5f	ff		.
	rst 38h			;7f60	ff		.
	rst 38h			;7f61	ff		.
	rst 38h			;7f62	ff		.
	rst 38h			;7f63	ff		.
	rst 38h			;7f64	ff		.
	rst 38h			;7f65	ff		.
	rst 38h			;7f66	ff		.
	rst 38h			;7f67	ff		.
	rst 38h			;7f68	ff		.
	rst 38h			;7f69	ff		.
	rst 38h			;7f6a	ff		.
	rst 38h			;7f6b	ff		.
	rst 38h			;7f6c	ff		.
	rst 38h			;7f6d	ff		.
	rst 38h			;7f6e	ff		.
	rst 38h			;7f6f	ff		.
	rst 38h			;7f70	ff		.
	rst 38h			;7f71	ff		.
	rst 38h			;7f72	ff		.
	rst 38h			;7f73	ff		.
	rst 38h			;7f74	ff		.
	rst 38h			;7f75	ff		.
	rst 38h			;7f76	ff		.
	rst 38h			;7f77	ff		.
	rst 38h			;7f78	ff		.
	rst 38h			;7f79	ff		.
	rst 38h			;7f7a	ff		.
	rst 38h			;7f7b	ff		.
	rst 38h			;7f7c	ff		.
	rst 38h			;7f7d	ff		.
	rst 38h			;7f7e	ff		.
	rst 38h			;7f7f	ff		.
	rst 38h			;7f80	ff		.
	rst 38h			;7f81	ff		.
	rst 38h			;7f82	ff		.
	rst 38h			;7f83	ff		.
	rst 38h			;7f84	ff		.
	rst 38h			;7f85	ff		.
	rst 38h			;7f86	ff		.
	rst 38h			;7f87	ff		.
	rst 38h			;7f88	ff		.
	rst 38h			;7f89	ff		.
	rst 38h			;7f8a	ff		.
	rst 38h			;7f8b	ff		.
	rst 38h			;7f8c	ff		.
	rst 38h			;7f8d	ff		.
	rst 38h			;7f8e	ff		.
	rst 38h			;7f8f	ff		.
	rst 38h			;7f90	ff		.
	rst 38h			;7f91	ff		.
	rst 38h			;7f92	ff		.
	rst 38h			;7f93	ff		.
	rst 38h			;7f94	ff		.
	rst 38h			;7f95	ff		.
	rst 38h			;7f96	ff		.
	rst 38h			;7f97	ff		.
	rst 38h			;7f98	ff		.
	rst 38h			;7f99	ff		.
	rst 38h			;7f9a	ff		.
	rst 38h			;7f9b	ff		.
	rst 38h			;7f9c	ff		.
	rst 38h			;7f9d	ff		.
	rst 38h			;7f9e	ff		.
	rst 38h			;7f9f	ff		.
	rst 38h			;7fa0	ff		.
	rst 38h			;7fa1	ff		.
	rst 38h			;7fa2	ff		.
	rst 38h			;7fa3	ff		.
	rst 38h			;7fa4	ff		.
	rst 38h			;7fa5	ff		.
	rst 38h			;7fa6	ff		.
	rst 38h			;7fa7	ff		.
	rst 38h			;7fa8	ff		.
	rst 38h			;7fa9	ff		.
	rst 38h			;7faa	ff		.
	rst 38h			;7fab	ff		.
	rst 38h			;7fac	ff		.
	rst 38h			;7fad	ff		.
	rst 38h			;7fae	ff		.
	rst 38h			;7faf	ff		.
	rst 38h			;7fb0	ff		.
	rst 38h			;7fb1	ff		.
	rst 38h			;7fb2	ff		.
	rst 38h			;7fb3	ff		.
	rst 38h			;7fb4	ff		.
	rst 38h			;7fb5	ff		.
	rst 38h			;7fb6	ff		.
	rst 38h			;7fb7	ff		.
	rst 38h			;7fb8	ff		.
	rst 38h			;7fb9	ff		.
	rst 38h			;7fba	ff		.
	rst 38h			;7fbb	ff		.
	rst 38h			;7fbc	ff		.
	rst 38h			;7fbd	ff		.
	rst 38h			;7fbe	ff		.
	rst 38h			;7fbf	ff		.
	rst 38h			;7fc0	ff		.
	rst 38h			;7fc1	ff		.
	rst 38h			;7fc2	ff		.
	rst 38h			;7fc3	ff		.
	rst 38h			;7fc4	ff		.
	rst 38h			;7fc5	ff		.
	rst 38h			;7fc6	ff		.
	rst 38h			;7fc7	ff		.
	rst 38h			;7fc8	ff		.
	rst 38h			;7fc9	ff		.
	rst 38h			;7fca	ff		.
	rst 38h			;7fcb	ff		.
	rst 38h			;7fcc	ff		.
	rst 38h			;7fcd	ff		.
	rst 38h			;7fce	ff		.
	rst 38h			;7fcf	ff		.
	rst 38h			;7fd0	ff		.
	rst 38h			;7fd1	ff		.
	rst 38h			;7fd2	ff		.
	rst 38h			;7fd3	ff		.
	rst 38h			;7fd4	ff		.
	rst 38h			;7fd5	ff		.
	rst 38h			;7fd6	ff		.
	rst 38h			;7fd7	ff		.
	rst 38h			;7fd8	ff		.
	rst 38h			;7fd9	ff		.
	rst 38h			;7fda	ff		.
	rst 38h			;7fdb	ff		.
	rst 38h			;7fdc	ff		.
	rst 38h			;7fdd	ff		.
	rst 38h			;7fde	ff		.
	rst 38h			;7fdf	ff		.
	rst 38h			;7fe0	ff		.
	rst 38h			;7fe1	ff		.
	rst 38h			;7fe2	ff		.
	rst 38h			;7fe3	ff		.
	rst 38h			;7fe4	ff		.
	rst 38h			;7fe5	ff		.
	rst 38h			;7fe6	ff		.
	rst 38h			;7fe7	ff		.
	rst 38h			;7fe8	ff		.
	rst 38h			;7fe9	ff		.
	rst 38h			;7fea	ff		.
	rst 38h			;7feb	ff		.
	rst 38h			;7fec	ff		.
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
