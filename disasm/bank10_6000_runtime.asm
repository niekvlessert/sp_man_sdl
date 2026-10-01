; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x6000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank10_6000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank10.bin

	org 06000h

	push af			;6000	f5		.
	call 08032h		;6001	cd 32 80	. 2 .
	pop af			;6004	f1		.
	ld hl,08189h		;6005	21 89 81	! . .
	call 0468eh		;6008	cd 8e 46	. . F
	call 08046h		;600b	cd 46 80	. F .
	ret			;600e	c9		.
	call 08032h		;600f	cd 32 80	. 2 .
	ld a,(0ca10h)		;6012	3a 10 ca	: . .
	ld hl,08177h		;6015	21 77 81	! w .
	call 0468eh		;6018	cd 8e 46	. . F
	call 08046h		;601b	cd 46 80	. F .
	ret			;601e	c9		.
	call 08029h		;601f	cd 29 80	. ) .
	call 0803bh		;6022	cd 3b 80	. ; .
	call 08371h		;6025	cd 71 83	. q .
	ret			;6028	c9		.
	ld hl,0de00h		;6029	21 00 de	! . .
	ld bc,000ffh		;602c	01 ff 00	. . .
	jp 08226h		;602f	c3 26 82	. & .
	ld hl,0de00h		;6032	21 00 de	! . .
	ld bc,000cdh		;6035	01 cd 00	. . .
	jp 08226h		;6038	c3 26 82	. & .
	push af			;603b	f5		.
	ld hl,083fdh		;603c	21 fd 83	! . .
	call 08046h		;603f	cd 46 80	. F .
	pop af			;6042	f1		.
	call 0815fh		;6043	cd 5f 81	. _ .
	push hl			;6046	e5		.
	ld hl,0d700h		;6047	21 00 d7	! . .
	ld bc,000ffh		;604a	01 ff 00	. . .
	call 08226h		;604d	cd 26 82	. & .
	pop ix			;6050	dd e1		. .
	ld a,(ix+000h)		;6052	dd 7e 00	. ~ .
	inc a			;6055	3c		<
	call nz,08069h		;6056	c4 69 80	. i .
l6059h:
	inc ix			;6059	dd 23		. #
	call 0818fh		;605b	cd 8f 81	. . .
	call 081c2h		;605e	cd c2 81	. . .
	jr c,l6059h		;6061	38 f6		8 .
	inc ix			;6063	dd 23		. #
	call 08209h		;6065	cd 09 82	. . .
	ret			;6068	c9		.
	push ix			;6069	dd e5		. .
	pop hl			;606b	e1		.
	call 04ce0h		;606c	cd e0 4c	. . L
	push hl			;606f	e5		.
	pop ix			;6070	dd e1		. .
	ret			;6072	c9		.
	ld a,(00007h)		;6073	3a 07 00	: . .
	ld c,a			;6076	4f		O
	ld de,00000h		;6077	11 00 00	. . .
	ld a,0ffh		;607a	3e ff		> .
l607ch:
	out (c),a		;607c	ed 79		. y
	dec e			;607e	1d		.
	jr nz,l607ch		;607f	20 fb		  .
	dec d			;6081	15		.
	jr nz,l607ch		;6082	20 f8		  .
	ret			;6084	c9		.
	xor a			;6085	af		.
	ld b,000h		;6086	06 00		. .
l6088h:
	out (c),a		;6088	ed 79		. y
	inc a			;608a	3c		<
	djnz l6088h		;608b	10 fb		. .
	ret			;608d	c9		.
	ld a,008h		;608e	3e 08		> .
	call 08157h		;6090	cd 57 81	. W .
	bit 5,a			;6093	cb 6f		. o
	jr z,l60afh		;6095	28 18		( .
	bit 6,a			;6097	cb 77		. w
	jr z,l60a6h		;6099	28 0b		( .
	call 080d6h		;609b	cd d6 80	. . .
	ret z			;609e	c8		.
	call 080ech		;609f	cd ec 80	. . .
	call 080f8h		;60a2	cd f8 80	. . .
	ret			;60a5	c9		.
l60a6h:
	ld a,(0c0b2h)		;60a6	3a b2 c0	: . .
	dec a			;60a9	3d		=
	and 003h		;60aa	e6 03		. .
	ret z			;60ac	c8		.
	jr l60b6h		;60ad	18 07		. .
l60afh:
	ld a,(0c0b2h)		;60af	3a b2 c0	: . .
	and 003h		;60b2	e6 03		. .
	ret z			;60b4	c8		.
	inc a			;60b5	3c		<
l60b6h:
	set 7,a			;60b6	cb ff		. .
	ld (0c0b2h),a		;60b8	32 b2 c0	2 . .
	and 003h		;60bb	e6 03		. .
	rrca			;60bd	0f		.
	rrca			;60be	0f		.
	push ix			;60bf	dd e5		. .
	push bc			;60c1	c5		.
	push af			;60c2	f5		.
	ld b,a			;60c3	47		G
	ld c,017h		;60c4	0e 17		. .
	call 00047h		;60c6	cd 47 00	. G .
	pop af			;60c9	f1		.
	pop bc			;60ca	c1		.
	pop ix			;60cb	dd e1		. .
l60cdh:
	ld a,008h		;60cd	3e 08		> .
	call 08157h		;60cf	cd 57 81	. W .
	inc a			;60d2	3c		<
	ret z			;60d3	c8		.
	jr l60cdh		;60d4	18 f7		. .
	ld a,002h		;60d6	3e 02		> .
	call 08157h		;60d8	cd 57 81	. W .
	push af			;60db	f5		.
	ld a,003h		;60dc	3e 03		> .
	call 08157h		;60de	cd 57 81	. W .
	pop bc			;60e1	c1		.
	rl b			;60e2	cb 10		. .
	rla			;60e4	17		.
	rl b			;60e5	cb 10		. .
	rla			;60e7	17		.
	cpl			;60e8	2f		/
	and 07fh		;60e9	e6 7f		. .
	ret			;60eb	c9		.
	ld c,0ffh		;60ec	0e ff		. .
l60eeh:
	rrca			;60ee	0f		.
	inc c			;60ef	0c		.
	jr nc,l60eeh		;60f0	30 fc		0 .
	ld a,c			;60f2	79		y
	ret			;60f3	c9		.
	ld (0c0b5h),a		;60f4	32 b5 c0	2 . .
	ret			;60f7	c9		.
	ld (0c0b4h),a		;60f8	32 b4 c0	2 . .
	call 04e82h		;60fb	cd 82 4e	. . N
	push ix			;60fe	dd e5		. .
	and 001h		;6100	e6 01		. .
	push hl			;6102	e5		.
	push af			;6103	f5		.
	ld de,02000h		;6104	11 00 20	. .  
	add hl,de		;6107	19		.
	push bc			;6108	c5		.
	ld b,006h		;6109	06 06		. .
l610bh:
	sra a			;610b	cb 2f		. /
	rr h			;610d	cb 1c		. .
	rr l			;610f	cb 1d		. .
	djnz l610bh		;6111	10 f8		. .
	pop bc			;6113	c1		.
	ld a,000h		;6114	3e 00		> .
	or h			;6116	b4		.
	ld h,a			;6117	67		g
	ld a,07fh		;6118	3e 7f		> .
	or l			;611a	b5		.
	ld l,a			;611b	6f		o
	or h			;611c	b4		.
	push bc			;611d	c5		.
	push af			;611e	f5		.
	ld b,h			;611f	44		D
	ld c,00ah		;6120	0e 0a		. .
	call 00047h		;6122	cd 47 00	. G .
	pop af			;6125	f1		.
	pop bc			;6126	c1		.
	push bc			;6127	c5		.
	push af			;6128	f5		.
	ld b,l			;6129	45		E
	ld c,003h		;612a	0e 03		. .
	call 00047h		;612c	cd 47 00	. G .
	pop af			;612f	f1		.
	pop bc			;6130	c1		.
	pop af			;6131	f1		.
	pop hl			;6132	e1		.
	push bc			;6133	c5		.
	ld b,003h		;6134	06 03		. .
l6136h:
	sra a			;6136	cb 2f		. /
	rr h			;6138	cb 1c		. .
	rr l			;613a	cb 1d		. .
	djnz l6136h		;613c	10 f8		. .
	pop bc			;613e	c1		.
	ld a,h			;613f	7c		|
	or 003h			;6140	f6 03		. .
	push bc			;6142	c5		.
	push af			;6143	f5		.
	ld b,a			;6144	47		G
	ld c,004h		;6145	0e 04		. .
	call 00047h		;6147	cd 47 00	. G .
	pop af			;614a	f1		.
	pop bc			;614b	c1		.
	pop ix			;614c	dd e1		. .
	ret			;614e	c9		.
	ld a,007h		;614f	3e 07		> .
	call 08157h		;6151	cd 57 81	. W .
	bit 3,a			;6154	cb 5f		. _
	ret			;6156	c9		.
	push ix			;6157	dd e5		. .
	call 00141h		;6159	cd 41 01	. A .
	pop ix			;615c	dd e1		. .
	ret			;615e	c9		.
	ld hl,08165h		;615f	21 65 81	! e .
	jp 0468eh		;6162	c3 8e 46	. . F
	ld b,(hl)		;6165	46		F
	add a,h			;6166	84		.
	ld a,a			;6167	7f		.
	add a,(hl)		;6168	86		.
	ld d,087h		;6169	16 87		. .
	ret nc			;616b	d0		.
	adc a,b			;616c	88		.
	cp d			;616d	ba		.
	adc a,c			;616e	89		.
	xor (hl)		;616f	ae		.
	adc a,e			;6170	8b		.
	ld h,h			;6171	64		d
	adc a,(hl)		;6172	8e		.
	ld d,(hl)		;6173	56		V
	sub c			;6174	91		.
	add a,d			;6175	82		.
	sub c			;6176	91		.
	ld c,c			;6177	49		I
	add a,(hl)		;6178	86		.
	add hl,bc		;6179	09		.
	add a,a			;617a	87		.
	or h			;617b	b4		.
	adc a,b			;617c	88		.
	sbc a,e			;617d	9b		.
	adc a,c			;617e	89		.
	sub d			;617f	92		.
	adc a,e			;6180	8b		.
	add hl,hl		;6181	29		)
	adc a,(hl)		;6182	8e		.
	ld c,h			;6183	4c		L
	sub c			;6184	91		.
	ld (hl),d		;6185	72		r
	sub c			;6186	91		.
	add a,d			;6187	82		.
	sub c			;6188	91		.
	ld d,(hl)		;6189	56		V
	add a,(hl)		;618a	86		.
	ld b,l			;618b	45		E
	adc a,(hl)		;618c	8e		.
	ld h,(hl)		;618d	66		f
	add a,(hl)		;618e	86		.
	ld hl,0d710h		;618f	21 10 d7	! . .
	ld bc,000efh		;6192	01 ef 00	. . .
	call 08226h		;6195	cd 26 82	. & .
l6198h:
	ld a,(ix+000h)		;6198	dd 7e 00	. ~ .
	inc a			;619b	3c		<
	inc ix			;619c	dd 23		. #
	ret z			;619e	c8		.
	dec a			;619f	3d		=
	jr z,l61b7h		;61a0	28 15		( .
	dec a			;61a2	3d		=
	call 081bah		;61a3	cd ba 81	. . .
	ld l,a			;61a6	6f		o
	ld h,000h		;61a7	26 00		& .
	ld de,0d710h		;61a9	11 10 d7	. . .
	add hl,de		;61ac	19		.
l61adh:
	ld a,(hl)		;61ad	7e		~
	or a			;61ae	b7		.
	inc hl			;61af	23		#
	jr nz,l61adh		;61b0	20 fb		  .
	dec hl			;61b2	2b		+
	inc c			;61b3	0c		.
	ld (hl),c		;61b4	71		q
	jr l6198h		;61b5	18 e1		. .
l61b7h:
	inc c			;61b7	0c		.
	jr l6198h		;61b8	18 de		. .
	add a,a			;61ba	87		.
	add a,a			;61bb	87		.
	ld b,a			;61bc	47		G
	add a,a			;61bd	87		.
	add a,a			;61be	87		.
	add a,a			;61bf	87		.
	sub b			;61c0	90		.
	ret			;61c1	c9		.
l61c2h:
	ld a,(ix+000h)		;61c2	dd 7e 00	. ~ .
	inc a			;61c5	3c		<
	or a			;61c6	b7		.
	ret z			;61c7	c8		.
	cp 0ffh			;61c8	fe ff		. .
	scf			;61ca	37		7
	ret z			;61cb	c8		.
	ld l,(ix+003h)		;61cc	dd 6e 03	. n .
	ld h,(ix+004h)		;61cf	dd 66 04	. f .
	ld a,(ix+007h)		;61d2	dd 7e 07	. ~ .
	call 0827bh		;61d5	cd 7b 82	. { .
	ld a,(ix+000h)		;61d8	dd 7e 00	. ~ .
	call 082e8h		;61db	cd e8 82	. . .
	ld d,(ix+002h)		;61de	dd 56 02	. V .
	ld a,(ix+001h)		;61e1	dd 7e 01	. ~ .
	call 08233h		;61e4	cd 33 82	. 3 .
	ld a,(ix+007h)		;61e7	dd 7e 07	. ~ .
	ld l,(ix+005h)		;61ea	dd 6e 05	. n .
	ld h,(ix+006h)		;61ed	dd 66 06	. f .
	call 0827bh		;61f0	cd 7b 82	. { .
	ld a,(ix+000h)		;61f3	dd 7e 00	. ~ .
	call 082fch		;61f6	cd fc 82	. . .
	ld d,(ix+002h)		;61f9	dd 56 02	. V .
	ld a,(ix+001h)		;61fc	dd 7e 01	. ~ .
	call 0822eh		;61ff	cd 2e 82	. . .
	ld bc,00008h		;6202	01 08 00	. . .
	add ix,bc		;6205	dd 09		. .
	jr l61c2h		;6207	18 b9		. .
l6209h:
	ld h,0deh		;6209	26 de		& .
	ld l,(ix+001h)		;620b	dd 6e 01	. n .
	ld a,(ix+002h)		;620e	dd 7e 02	. ~ .
	sub l			;6211	95		.
	inc a			;6212	3c		<
	ld b,a			;6213	47		G
	ld a,(ix+000h)		;6214	dd 7e 00	. ~ .
	cp 0ffh			;6217	fe ff		. .
	ret z			;6219	c8		.
l621ah:
	ld (hl),a		;621a	77		w
	inc hl			;621b	23		#
	djnz l621ah		;621c	10 fc		. .
	inc ix			;621e	dd 23		. #
	inc ix			;6220	dd 23		. #
	inc ix			;6222	dd 23		. #
	jr l6209h		;6224	18 e3		. .
	ld (hl),000h		;6226	36 00		6 .
	ld d,h			;6228	54		T
	ld e,l			;6229	5d		]
	inc de			;622a	13		.
	ldir			;622b	ed b0		. .
	ret			;622d	c9		.
	push af			;622e	f5		.
	ld a,020h		;622f	3e 20		>  
	jr l6235h		;6231	18 02		. .
	push af			;6233	f5		.
	xor a			;6234	af		.
l6235h:
	ld (0c93eh),a		;6235	32 3e c9	2 > .
	pop af			;6238	f1		.
	ld bc,00800h		;6239	01 00 08	. . .
l623ch:
	add a,a			;623c	87		.
	push af			;623d	f5		.
	push bc			;623e	c5		.
	push de			;623f	d5		.
	call c,0824ah		;6240	dc 4a 82	. J .
	pop de			;6243	d1		.
	pop bc			;6244	c1		.
	pop af			;6245	f1		.
	inc c			;6246	0c		.
	djnz l623ch		;6247	10 f3		. .
	ret			;6249	c9		.
	ld a,c			;624a	79		y
	call 081bah		;624b	cd ba 81	. . .
	ld c,a			;624e	4f		O
	ld b,000h		;624f	06 00		. .
	ld hl,0d710h		;6251	21 10 d7	! . .
	add hl,bc		;6254	09		.
l6255h:
	ld a,(hl)		;6255	7e		~
	inc hl			;6256	23		#
	or a			;6257	b7		.
	ret z			;6258	c8		.
	dec a			;6259	3d		=
	push hl			;625a	e5		.
	push de			;625b	d5		.
	call 08263h		;625c	cd 63 82	. c .
	pop de			;625f	d1		.
	pop hl			;6260	e1		.
	jr l6255h		;6261	18 f2		. .
	ld l,d			;6263	6a		j
	ld h,000h		;6264	26 00		& .
	add hl,hl		;6266	29		)
	add hl,hl		;6267	29		)
	add hl,hl		;6268	29		)
	push hl			;6269	e5		.
	call 04e8ah		;626a	cd 8a 4e	. . N
	pop de			;626d	d1		.
	add hl,de		;626e	19		.
	ex de,hl		;626f	eb		.
	ld hl,0d800h		;6270	21 00 d8	! . .
	ld bc,(0d700h)		;6273	ed 4b 00 d7	. K . .
	call 046adh		;6277	cd ad 46	. . F
	ret			;627a	c9		.
	ld de,0d800h		;627b	11 00 d8	. . .
	call 082bah		;627e	cd ba 82	. . .
	call 08290h		;6281	cd 90 82	. . .
	ld h,d			;6284	62		b
	ld l,e			;6285	6b		k
	or a			;6286	b7		.
	ld bc,0d800h		;6287	01 00 d8	. . .
	sbc hl,bc		;628a	ed 42		. B
	ld (0d700h),hl		;628c	22 00 d7	" . .
	ret			;628f	c9		.
l6290h:
	ld a,(hl)		;6290	7e		~
	inc l			;6291	2c		,
	call z,082d2h		;6292	cc d2 82	. . .
	or a			;6295	b7		.
	ret z			;6296	c8		.
	ld b,a			;6297	47		G
	and 07fh		;6298	e6 7f		. .
	cp b			;629a	b8		.
	jr z,l62afh		;629b	28 12		( .
	or a			;629d	b7		.
	jr z,l6290h		;629e	28 f0		( .
	ld c,a			;62a0	4f		O
	ld b,000h		;62a1	06 00		. .
l62a3h:
	ld a,(hl)		;62a3	7e		~
	ld (de),a		;62a4	12		.
	inc de			;62a5	13		.
	inc l			;62a6	2c		,
	call z,082d2h		;62a7	cc d2 82	. . .
	dec c			;62aa	0d		.
	jr nz,l62a3h		;62ab	20 f6		  .
	jr l6290h		;62ad	18 e1		. .
l62afh:
	ld a,(hl)		;62af	7e		~
	inc l			;62b0	2c		,
	call z,082d2h		;62b1	cc d2 82	. . .
l62b4h:
	ld (de),a		;62b4	12		.
	inc de			;62b5	13		.
	djnz l62b4h		;62b6	10 fc		. .
	jr l6290h		;62b8	18 d6		. .
	push af			;62ba	f5		.
	ld a,h			;62bb	7c		|
	and 0e0h		;62bc	e6 e0		. .
	rlca			;62be	07		.
	rlca			;62bf	07		.
	rlca			;62c0	07		.
	add a,00ch		;62c1	c6 0c		. .
	pop bc			;62c3	c1		.
	add a,b			;62c4	80		.
	ld (0d703h),a		;62c5	32 03 d7	2 . .
	call 04c23h		;62c8	cd 23 4c	. # L
	ld a,h			;62cb	7c		|
	and 01fh		;62cc	e6 1f		. .
	add a,0a0h		;62ce	c6 a0		. .
	ld h,a			;62d0	67		g
	ret			;62d1	c9		.
	push af			;62d2	f5		.
	inc h			;62d3	24		$
	ld a,h			;62d4	7c		|
	cp 0c0h			;62d5	fe c0		. .
	jr c,l62e6h		;62d7	38 0d		8 .
	sub 020h		;62d9	d6 20		.  
	ld h,a			;62db	67		g
	ld a,(0d703h)		;62dc	3a 03 d7	: . .
	inc a			;62df	3c		<
	ld (0d703h),a		;62e0	32 03 d7	2 . .
	call 04c23h		;62e3	cd 23 4c	. # L
l62e6h:
	pop af			;62e6	f1		.
	ret			;62e7	c9		.
	push de			;62e8	d5		.
	push af			;62e9	f5		.
	ex de,hl		;62ea	eb		.
	bit 0,a			;62eb	cb 47		. G
	call nz,08307h		;62ed	c4 07 83	. . .
	pop af			;62f0	f1		.
	pop de			;62f1	d1		.
	push de			;62f2	d5		.
	push af			;62f3	f5		.
	bit 1,a			;62f4	cb 4f		. O
	call nz,08341h		;62f6	c4 41 83	. A .
	pop af			;62f9	f1		.
	pop de			;62fa	d1		.
	ret			;62fb	c9		.
	push de			;62fc	d5		.
	push af			;62fd	f5		.
	ex de,hl		;62fe	eb		.
	bit 0,a			;62ff	cb 47		. G
	call nz,08307h		;6301	c4 07 83	. . .
	pop af			;6304	f1		.
	pop de			;6305	d1		.
	ret			;6306	c9		.
	ld bc,(0d700h)		;6307	ed 4b 00 d7	. K . .
	srl b			;630b	cb 38		. 8
	rr c			;630d	cb 19		. .
	srl b			;630f	cb 38		. 8
	rr c			;6311	cb 19		. .
	srl b			;6313	cb 38		. 8
	rr c			;6315	cb 19		. .
	ld a,b			;6317	78		x
	or c			;6318	b1		.
l6319h:
	jr z,l6319h		;6319	28 fe		( .
	ld hl,0d800h		;631b	21 00 d8	! . .
	ld de,0d807h		;631e	11 07 d8	. . .
l6321h:
	push de			;6321	d5		.
	push bc			;6322	c5		.
	call 08334h		;6323	cd 34 83	. 4 .
	pop bc			;6326	c1		.
	pop de			;6327	d1		.
	inc de			;6328	13		.
	ld hl,00007h		;6329	21 07 00	! . .
	add hl,de		;632c	19		.
	ex de,hl		;632d	eb		.
	dec bc			;632e	0b		.
	ld a,b			;632f	78		x
	or c			;6330	b1		.
	jr nz,l6321h		;6331	20 ee		  .
	ret			;6333	c9		.
	ld b,004h		;6334	06 04		. .
l6336h:
	ld c,(hl)		;6336	4e		N
	ld a,(de)		;6337	1a		.
	ex de,hl		;6338	eb		.
	ld (hl),c		;6339	71		q
	ld (de),a		;633a	12		.
	ex de,hl		;633b	eb		.
	inc hl			;633c	23		#
	dec de			;633d	1b		.
	djnz l6336h		;633e	10 f6		. .
	ret			;6340	c9		.
	ld de,(0d700h)		;6341	ed 5b 00 d7	. [ . .
	ld hl,0d800h		;6345	21 00 d8	! . .
l6348h:
	ld a,(hl)		;6348	7e		~
	rr a			;6349	cb 1f		. .
	rl c			;634b	cb 11		. .
	rr a			;634d	cb 1f		. .
	rl c			;634f	cb 11		. .
	rr a			;6351	cb 1f		. .
	rl c			;6353	cb 11		. .
	rr a			;6355	cb 1f		. .
	rl c			;6357	cb 11		. .
	rr a			;6359	cb 1f		. .
	rl c			;635b	cb 11		. .
	rr a			;635d	cb 1f		. .
	rl c			;635f	cb 11		. .
	rr a			;6361	cb 1f		. .
	rl c			;6363	cb 11		. .
	rr a			;6365	cb 1f		. .
	rl c			;6367	cb 11		. .
	ld (hl),c		;6369	71		q
	inc hl			;636a	23		#
	dec de			;636b	1b		.
	ld a,d			;636c	7a		z
	or e			;636d	b3		.
	jr nz,l6348h		;636e	20 d8		  .
	ret			;6370	c9		.
	ld a,(0ca10h)		;6371	3a 10 ca	: . .
	cp 007h			;6374	fe 07		. .
l6376h:
	ret z			;6376	c8		.
	ld hl,0df00h		;6377	21 00 df	! . .
	ld bc,0007fh		;637a	01 7f 00	. . .
	call 04648h		;637d	cd 48 46	. H F
	ld hl,092b8h		;6380	21 b8 92	! . .
	call 08389h		;6383	cd 89 83	. . .
	call 083b6h		;6386	cd b6 83	. . .
	push hl			;6389	e5		.
	pop ix			;638a	dd e1		. .
l638ch:
	ld a,(ix+000h)		;638c	dd 7e 00	. ~ .
	or a			;638f	b7		.
	ret z			;6390	c8		.
	ld h,(ix+003h)		;6391	dd 66 03	. f .
	ld l,(ix+002h)		;6394	dd 6e 02	. n .
	ld a,(ix+004h)		;6397	dd 7e 04	. ~ .
	call 0827bh		;639a	cd 7b 82	. { .
	ld a,(ix+000h)		;639d	dd 7e 00	. ~ .
	ld l,(ix+001h)		;63a0	dd 6e 01	. n .
	call 083d5h		;63a3	cd d5 83	. . .
	ld a,(ix+001h)		;63a6	dd 7e 01	. ~ .
	ld l,(ix+005h)		;63a9	dd 6e 05	. n .
	ld h,0dfh		;63ac	26 df		& .
	ld (hl),a		;63ae	77		w
	ld bc,00006h		;63af	01 06 00	. . .
	add ix,bc		;63b2	dd 09		. .
	jr l638ch		;63b4	18 d6		. .
	ld a,(0ca10h)		;63b6	3a 10 ca	: . .
	ld hl,083c0h		;63b9	21 c0 83	! . .
	call 0468eh		;63bc	cd 8e 46	. . F
	ret			;63bf	c9		.
	rst 10h			;63c0	d7		.
	sub d			;63c1	92		.
	ld h,093h		;63c2	26 93		& .
	ld a,e			;63c4	7b		{
	sub e			;63c5	93		.
	cp b			;63c6	b8		.
	sub e			;63c7	93		.
	ex (sp),hl		;63c8	e3		.
	sub e			;63c9	93		.
	ld c,094h		;63ca	0e 94		. .
	ccf			;63cc	3f		?
	sub h			;63cd	94		.
	ld a,h			;63ce	7c		|
	sub h			;63cf	94		.
	ld a,l			;63d0	7d		}
	sub h			;63d1	94		.
	call nc,00083h		;63d2	d4 83 00	. . .
	ld de,0c800h		;63d5	11 00 c8	. . .
	ld h,000h		;63d8	26 00		& .
	add hl,hl		;63da	29		)
	add hl,hl		;63db	29		)
	add hl,hl		;63dc	29		)
	add hl,de		;63dd	19		.
	ld b,003h		;63de	06 03		. .
l63e0h:
	rrca			;63e0	0f		.
	push hl			;63e1	e5		.
	push af			;63e2	f5		.
	push bc			;63e3	c5		.
	call c,083f1h		;63e4	dc f1 83	. . .
	pop bc			;63e7	c1		.
	pop af			;63e8	f1		.
	pop hl			;63e9	e1		.
	ld de,00800h		;63ea	11 00 08	. . .
	add hl,de		;63ed	19		.
	djnz l63e0h		;63ee	10 f0		. .
	ret			;63f0	c9		.
	ex de,hl		;63f1	eb		.
	ld hl,0d800h		;63f2	21 00 d8	! . .
	ld bc,(0d700h)		;63f5	ed 4b 00 d7	. K . .
	call 046ach		;63f9	cd ac 46	. . F
	ret			;63fc	c9		.
	ld (hl),b		;63fd	70		p
	ld h,b			;63fe	60		`
	rla			;63ff	17		.
	ld (hl),c		;6400	71		q
	ld b,l			;6401	45		E
	add a,h			;6402	84		.
	ld (hl),b		;6403	70		p
	and a			;6404	a7		.
	inc sp			;6405	33		3
	out (077h),a		;6406	d3 77		. w
	rst 20h			;6408	e7		.
	nop			;6409	00		.
	ret p			;640a	f0		.
	rst 38h			;640b	ff		.
	ld bc,00101h		;640c	01 01 01	. . .
	ld bc,00101h		;640f	01 01 01	. . .
	ld bc,00101h		;6412	01 01 01	. . .
	ld bc,00101h		;6415	01 01 01	. . .
	ld bc,00101h		;6418	01 01 01	. . .
	ld bc,00101h		;641b	01 01 01	. . .
	ld bc,00101h		;641e	01 01 01	. . .
	ld bc,00101h		;6421	01 01 01	. . .
	ld bc,00101h		;6424	01 01 01	. . .
	ld bc,000ffh		;6427	01 ff 00	. . .
	add a,b			;642a	80		.
	nop			;642b	00		.
	ccf			;642c	3f		?
	ld b,b			;642d	40		@
	ccf			;642e	3f		?
	ld b,b			;642f	40		@
	nop			;6430	00		.
	nop			;6431	00		.
	add a,b			;6432	80		.
	adc a,048h		;6433	ce 48		. H
	ld b,b			;6435	40		@
	dec hl			;6436	2b		+
	ld b,c			;6437	41		A
	nop			;6438	00		.
	nop			;6439	00		.
	add a,b			;643a	80		.
	ex de,hl		;643b	eb		.
	dec d			;643c	15		.
	ld c,d			;643d	4a		J
	sub a			;643e	97		.
	ld c,c			;643f	49		I
	inc b			;6440	04		.
	rst 38h			;6441	ff		.
	inc h			;6442	24		$
	adc a,0e9h		;6443	ce e9		. .
	rst 38h			;6445	ff		.
	ld (bc),a		;6446	02		.
	nop			;6447	00		.
	inc b			;6448	04		.
	djnz $+24		;6449	10 16		. .
	ld hl,03227h		;644b	21 27 32	! ' 2
	nop			;644e	00		.
	ld b,b			;644f	40		@
	ld (00052h),hl		;6450	22 52 00	" R .
	sub b			;6453	90		.
	ld b,a			;6454	47		G
	or (hl)			;6455	b6		.
	ld h,0c3h		;6456	26 c3		& .
	rst 38h			;6458	ff		.
	nop			;6459	00		.
	nop			;645a	00		.
	nop			;645b	00		.
	nop			;645c	00		.
	dec b			;645d	05		.
	inc b			;645e	04		.
	ex af,af'		;645f	08		.
	ld bc,00506h		;6460	01 06 05	. . .
	inc b			;6463	04		.
	ex af,af'		;6464	08		.
	rlca			;6465	07		.
	ld b,005h		;6466	06 05		. .
	inc b			;6468	04		.
	rlca			;6469	07		.
	rlca			;646a	07		.
	ld b,005h		;646b	06 05		. .
	inc bc			;646d	03		.
	inc bc			;646e	03		.
	ld (bc),a		;646f	02		.
	ld bc,00000h		;6470	01 00 00	. . .
	nop			;6473	00		.
	nop			;6474	00		.
	rst 38h			;6475	ff		.
	nop			;6476	00		.
	rst 38h			;6477	ff		.
	nop			;6478	00		.
	or e			;6479	b3		.
	ld b,e			;647a	43		C
	or (hl)			;647b	b6		.
	ld b,e			;647c	43		C
	nop			;647d	00		.
	nop			;647e	00		.
	rst 38h			;647f	ff		.
	add a,0b9h		;6480	c6 b9		. .
	ld b,e			;6482	43		C
	call c,00043h		;6483	dc 43 00	. C .
	nop			;6486	00		.
	add a,b			;6487	80		.
	cp c			;6488	b9		.
	rst 18h			;6489	df		.
	ld b,e			;648a	43		C
	ld b,b			;648b	40		@
	ld b,h			;648c	44		D
	nop			;648d	00		.
l648eh:
	nop			;648e	00		.
	pop af			;648f	f1		.
	ld sp,04e3eh		;6490	31 3e 4e	1 > N
	ld c,d			;6493	4a		J
	ld c,(hl)		;6494	4e		N
l6495h:
	nop			;6495	00		.
	nop			;6496	00		.
	add a,b			;6497	80		.
	ld c,h			;6498	4c		L
	ld e,d			;6499	5a		Z
	ld c,(hl)		;649a	4e		N
	defb 0fdh,04fh,000h ;illegal sequence	;649b	fd 4f 00	. O .
	nop			;649e	00		.
	add a,b			;649f	80		.
	adc a,l			;64a0	8d		.
	jr c,$+83		;64a1	38 51		8 Q
	ld sp,00052h		;64a3	31 52 00	1 R .
	nop			;64a6	00		.
	add a,b			;64a7	80		.
	or c			;64a8	b1		.
	push hl			;64a9	e5		.
	ld d,d			;64aa	52		R
	jr l6500h		;64ab	18 53		. S
	nop			;64ad	00		.
	nop			;64ae	00		.
	defb 0fdh,001h,059h ;illegal sequence	;64af	fd 01 59	. . Y
	ld d,e			;64b2	53		S
	jp nc,00054h		;64b3	d2 54 00	. T .
	nop			;64b6	00		.
	ld h,c			;64b7	61		a
	inc sp			;64b8	33		3
	ld (hl),056h		;64b9	36 56		6 V
	jp pe,00056h		;64bb	ea 56 00	. V .
	nop			;64be	00		.
	ld a,c			;64bf	79		y
	ld c,a			;64c0	4f		O
	ld (hl),l		;64c1	75		u
	ld d,a			;64c2	57		W
	sbc a,058h		;64c3	de 58		. X
	nop			;64c5	00		.
	nop			;64c6	00		.
	ld a,l			;64c7	7d		}
	add a,(hl)		;64c8	86		.
	ex af,af'		;64c9	08		.
	ld e,d			;64ca	5a		Z
	ret c			;64cb	d8		.
	ld e,e			;64cc	5b		[
	nop			;64cd	00		.
	nop			;64ce	00		.
	jr nz,l648eh		;64cf	20 bd		  .
	ld e,a			;64d1	5f		_
	ld e,l			;64d2	5d		]
	ld (hl),b		;64d3	70		p
	ld e,l			;64d4	5d		]
	nop			;64d5	00		.
	nop			;64d6	00		.
	inc e			;64d7	1c		.
	ld (05d83h),a		;64d8	32 83 5d	2 . ]
	ccf			;64db	3f		?
	ld e,(hl)		;64dc	5e		^
	nop			;64dd	00		.
	nop			;64de	00		.
	inc e			;64df	1c		.
	add a,(hl)		;64e0	86		.
	call 0db5eh		;64e1	cd 5e db	. ^ .
	ld e,(hl)		;64e4	5e		^
	nop			;64e5	00		.
	nop			;64e6	00		.
	jr $-67			;64e7	18 bb		. .
	jp po,0f95eh		;64e9	e2 5e f9	. ^ .
	ld e,(hl)		;64ec	5e		^
	nop			;64ed	00		.
	nop			;64ee	00		.
	inc e			;64ef	1c		.
	ret nz			;64f0	c0		.
	rrca			;64f1	0f		.
	ld e,a			;64f2	5f		_
sub_64f3h:
	jr l6554h		;64f3	18 5f		. _
	nop			;64f5	00		.
	nop			;64f6	00		.
	ex af,af'		;64f7	08		.
	ld sp,05f21h		;64f8	31 21 5f	1 ! _
	jr z,l655ch		;64fb	28 5f		( _
	nop			;64fd	00		.
	nop			;64fe	00		.
	ex af,af'		;64ff	08		.
l6500h:
	ld l,e			;6500	6b		k
	dec l			;6501	2d		-
	ld e,a			;6502	5f		_
	add hl,sp		;6503	39		9
	ld e,a			;6504	5f		_
	nop			;6505	00		.
	nop			;6506	00		.
	ex af,af'		;6507	08		.
	ld a,d			;6508	7a		z
	ld c,d			;6509	4a		J
	ld e,a			;650a	5f		_
	ld d,h			;650b	54		T
	ld e,a			;650c	5f		_
	nop			;650d	00		.
	nop			;650e	00		.
	ex af,af'		;650f	08		.
	add a,d			;6510	82		.
	ld e,c			;6511	59		Y
	ld e,a			;6512	5f		_
	ld h,e			;6513	63		c
	ld e,a			;6514	5f		_
	nop			;6515	00		.
	nop			;6516	00		.
	ex af,af'		;6517	08		.
	xor d			;6518	aa		.
	ld l,l			;6519	6d		m
	ld e,a			;651a	5f		_
	ld a,a			;651b	7f		.
	ld e,a			;651c	5f		_
	nop			;651d	00		.
	nop			;651e	00		.
	ex af,af'		;651f	08		.
	cp c			;6520	b9		.
	sub b			;6521	90		.
	ld e,a			;6522	5f		_
	sbc a,a			;6523	9f		.
	ld e,a			;6524	5f		_
	nop			;6525	00		.
	nop			;6526	00		.
	inc b			;6527	04		.
	ld sp,05fabh		;6528	31 ab 5f	1 . _
	or h			;652b	b4		.
	ld e,a			;652c	5f		_
	nop			;652d	00		.
	nop			;652e	00		.
	inc b			;652f	04		.
	ld c,a			;6530	4f		O
	or a			;6531	b7		.
	ld e,a			;6532	5f		_
	ld e,b			;6533	58		X
	ld h,c			;6534	61		a
	nop			;6535	00		.
	nop			;6536	00		.
	inc b			;6537	04		.
	and (hl)		;6538	a6		.
	cp (hl)			;6539	be		.
	ld h,d			;653a	62		b
	defb 0ddh,062h ;ld ixh,d	;653b	dd 62		. b
	nop			;653d	00		.
	nop			;653e	00		.
	inc b			;653f	04		.
	or h			;6540	b4		.
	push af			;6541	f5		.
	ld h,d			;6542	62		b
	scf			;6543	37		7
	ld h,e			;6544	63		c
	nop			;6545	00		.
	nop			;6546	00		.
	ld (bc),a		;6547	02		.
	ld bc,l6376h		;6548	01 76 63	. v c
	dec b			;654b	05		.
	ld h,h			;654c	64		d
	nop			;654d	00		.
	nop			;654e	00		.
	ld (bc),a		;654f	02		.
	inc de			;6550	13		.
	halt			;6551	76		v
	ld h,e			;6552	63		c
	dec b			;6553	05		.
l6554h:
	ld h,h			;6554	64		d
	nop			;6555	00		.
	nop			;6556	00		.
	ld (bc),a		;6557	02		.
	ld sp,l6495h		;6558	31 95 64	1 . d
	and d			;655b	a2		.
l655ch:
	ld h,h			;655c	64		d
	nop			;655d	00		.
	nop			;655e	00		.
	ld (bc),a		;655f	02		.
	ld c,e			;6560	4b		K
	and a			;6561	a7		.
	ld h,h			;6562	64		d
	or e			;6563	b3		.
	ld h,h			;6564	64		d
	nop			;6565	00		.
	nop			;6566	00		.
	ld (bc),a		;6567	02		.
	ld h,b			;6568	60		`
	cp (hl)			;6569	be		.
	ld h,h			;656a	64		d
	adc a,l			;656b	8d		.
	ld h,l			;656c	65		e
	nop			;656d	00		.
	nop			;656e	00		.
	ld (bc),a		;656f	02		.
	adc a,l			;6570	8d		.
	ld a,b			;6571	78		x
	ld h,(hl)		;6572	66		f
	jp m,00066h		;6573	fa 66 00	. f .
	nop			;6576	00		.
	ld (bc),a		;6577	02		.
l6578h:
	xor h			;6578	ac		.
	ld a,h			;6579	7c		|
	ld h,a			;657a	67		g
	dec c			;657b	0d		.
	ld l,b			;657c	68		h
	nop			;657d	00		.
	nop			;657e	00		.
	ld bc,08a32h		;657f	01 32 8a	. 2 .
	ld l,b			;6582	68		h
	ex (sp),hl		;6583	e3		.
	ld l,b			;6584	68		h
	nop			;6585	00		.
	nop			;6586	00		.
	rst 38h			;6587	ff		.
	adc a,048h		;6588	ce 48		. H
	ld b,b			;658a	40		@
	in a,(042h)		;658b	db 42		. B
	nop			;658d	00		.
	nop			;658e	00		.
	rst 38h			;658f	ff		.
	ex de,hl		;6590	eb		.
	dec d			;6591	15		.
	ld c,d			;6592	4a		J
	sub 049h		;6593	d6 49		. I
	inc b			;6595	04		.
	cp 005h			;6596	fe 05		. .
	dec b			;6598	05		.
	dec b			;6599	05		.
	inc b			;659a	04		.
	nop			;659b	00		.
	nop			;659c	00		.
	nop			;659d	00		.
	nop			;659e	00		.
	nop			;659f	00		.
	nop			;65a0	00		.
	nop			;65a1	00		.
	nop			;65a2	00		.
	nop			;65a3	00		.
	nop			;65a4	00		.
	nop			;65a5	00		.
	nop			;65a6	00		.
	nop			;65a7	00		.
	nop			;65a8	00		.
	nop			;65a9	00		.
	nop			;65aa	00		.
	nop			;65ab	00		.
	nop			;65ac	00		.
	nop			;65ad	00		.
	nop			;65ae	00		.
	ld bc,00302h		;65af	01 02 03	. . .
	nop			;65b2	00		.
	rst 38h			;65b3	ff		.
	nop			;65b4	00		.
	ret po			;65b5	e0		.
	ld bc,07b10h		;65b6	01 10 7b	. . {
	jr nc,l6637h		;65b9	30 7c		0 |
	inc b			;65bb	04		.
	nop			;65bc	00		.
	ret nz			;65bd	c0		.
	inc l			;65be	2c		,
	cp 07ch			;65bf	fe 7c		. |
	ld e,l			;65c1	5d		]
	ld a,l			;65c2	7d		}
	inc b			;65c3	04		.
	nop			;65c4	00		.
	ret nz			;65c5	c0		.
	sub b			;65c6	90		.
	xor (hl)		;65c7	ae		.
l65c8h:
	ld a,l			;65c8	7d		}
	defb 0ddh,07dh ;ld a,ixl	;65c9	dd 7d		. }
	inc b			;65cb	04		.
	nop			;65cc	00		.
l65cdh:
	add a,b			;65cd	80		.
	add hl,sp		;65ce	39		9
	jp m,02f7dh		;65cf	fa 7d 2f	. } /
	ld a,(hl)		;65d2	7e		~
	inc b			;65d3	04		.
	nop			;65d4	00		.
	add a,b			;65d5	80		.
	sbc a,b			;65d6	98		.
	ld c,(hl)		;65d7	4e		N
	ld a,(hl)		;65d8	7e		~
	ld (hl),c		;65d9	71		q
	ld a,(hl)		;65da	7e		~
	inc b			;65db	04		.
	nop			;65dc	00		.
	ld b,b			;65dd	40		@
	add hl,sp		;65de	39		9
	ld a,(hl)		;65df	7e		~
	ld a,(hl)		;65e0	7e		~
	ex (sp),hl		;65e1	e3		.
	add a,b			;65e2	80		.
	inc b			;65e3	04		.
	nop			;65e4	00		.
	ld b,b			;65e5	40		@
	sbc a,b			;65e6	98		.
	jp p,0c981h		;65e7	f2 81 c9	. . .
	add a,d			;65ea	82		.
	inc b			;65eb	04		.
	nop			;65ec	00		.
	jr nz,$+46		;65ed	20 2c		  ,
	dec sp			;65ef	3b		;
	add a,e			;65f0	83		.
	and l			;65f1	a5		.
	add a,l			;65f2	85		.
	inc b			;65f3	04		.
	nop			;65f4	00		.
	jr nz,l6578h		;65f5	20 81		  .
	inc sp			;65f7	33		3
	add a,a			;65f8	87		.
	ld h,(hl)		;65f9	66		f
	adc a,c			;65fa	89		.
	inc b			;65fb	04		.
	nop			;65fc	00		.
	jr l65ffh		;65fd	18 00		. .
l65ffh:
	or e			;65ff	b3		.
	ld b,e			;6600	43		C
	or (hl)			;6601	b6		.
	ld b,e			;6602	43		C
	nop			;6603	00		.
	nop			;6604	00		.
	jr l65cdh		;6605	18 c6		. .
	cp c			;6607	b9		.
	ld b,e			;6608	43		C
	call c,00043h		;6609	dc 43 00	. C .
	nop			;660c	00		.
	djnz l65c8h		;660d	10 b9		. .
	rst 18h			;660f	df		.
	ld b,e			;6610	43		C
	ld b,b			;6611	40		@
	ld b,h			;6612	44		D
	nop			;6613	00		.
	nop			;6614	00		.
	jr l6618h		;6615	18 01		. .
	add a,h			;6617	84		.
l6618h:
	ld b,h			;6618	44		D
	call z,00044h		;6619	cc 44 00	. D .
	nop			;661c	00		.
	djnz $+18		;661d	10 10		. .
	cp 044h			;661f	fe 44		. D
	xor h			;6621	ac		.
	ld b,l			;6622	45		E
	nop			;6623	00		.
	nop			;6624	00		.
	ex af,af'		;6625	08		.
	djnz l6633h		;6626	10 0b		. .
	ld b,(hl)		;6628	46		F
	inc (hl)		;6629	34		4
	ld c,d			;662a	4a		J
	nop			;662b	00		.
	nop			;662c	00		.
	ret m			;662d	f8		.
	adc a,048h		;662e	ce 48		. H
	ld b,b			;6630	40		@
	in a,(042h)		;6631	db 42		. B
l6633h:
	nop			;6633	00		.
	nop			;6634	00		.
	ret m			;6635	f8		.
	ex de,hl		;6636	eb		.
l6637h:
	dec d			;6637	15		.
	ld c,d			;6638	4a		J
	sub 049h		;6639	d6 49		. I
	inc b			;663b	04		.
	nop			;663c	00		.
	ld b,b			;663d	40		@
	ret nz			;663e	c0		.
	nop			;663f	00		.
	ld b,b			;6640	40		@
	ld e,040h		;6641	1e 40		. @
	nop			;6643	00		.
	rst 38h			;6644	ff		.
	inc bc			;6645	03		.
	cp l			;6646	bd		.
	push bc			;6647	c5		.
	rst 38h			;6648	ff		.
	rst 38h			;6649	ff		.
	rst 38h			;664a	ff		.
	rst 38h			;664b	ff		.
	ld b,a			;664c	47		G
	ld bc,00210h		;664d	01 10 02	. . .
	ld de,0031eh		;6650	11 1e 03	. . .
	rra			;6653	1f		.
	adc a,l			;6654	8d		.
	rst 38h			;6655	ff		.
	rst 38h			;6656	ff		.
	rst 38h			;6657	ff		.
	rst 38h			;6658	ff		.
	inc bc			;6659	03		.
	dec c			;665a	0d		.
	adc a,a			;665b	8f		.
	inc bc			;665c	03		.
	and (hl)		;665d	a6		.
	or c			;665e	b1		.
	ld b,a			;665f	47		G
	or (hl)			;6660	b6		.
	cp e			;6661	bb		.
	inc bc			;6662	03		.
	cp h			;6663	bc		.
	call 0ffffh		;6664	cd ff ff	. . .
	rst 38h			;6667	ff		.
	rst 38h			;6668	ff		.
	ld b,a			;6669	47		G
	ld bc,04710h		;666a	01 10 47	. . G
	ld d,030h		;666d	16 30		. 0
	ld (bc),a		;666f	02		.
	ld de,00211h		;6670	11 11 02	. . .
	jr l668dh		;6673	18 18		. .
	inc bc			;6675	03		.
	inc sp			;6676	33		3
	adc a,h			;6677	8c		.
	ld (bc),a		;6678	02		.
	adc a,l			;6679	8d		.
	xor e			;667a	ab		.
	inc bc			;667b	03		.
	cp l			;667c	bd		.
	push bc			;667d	c5		.
	rst 38h			;667e	ff		.
	jr nz,$+3		;667f	20 01		  .
	ld sp,04212h		;6681	31 12 42	1 . B
	inc hl			;6684	23		#
	inc b			;6685	04		.
	ld sp,04306h		;6686	31 06 43	1 . C
	rlca			;6689	07		.
	ld d,l			;668a	55		U
	nop			;668b	00		.
	sub b			;668c	90		.
l668dh:
	ld d,(hl)		;668d	56		V
	or (hl)			;668e	b6		.
	inc de			;668f	13		.
	jp 001ffh		;6690	c3 ff 01	. . .
	ld bc,00101h		;6693	01 01 01	. . .
	ld (bc),a		;6696	02		.
	ld (bc),a		;6697	02		.
	inc bc			;6698	03		.
	inc bc			;6699	03		.
	rst 38h			;669a	ff		.
	nop			;669b	00		.
	add a,b			;669c	80		.
	ld bc,04000h		;669d	01 00 40	. . @
	add a,d			;66a0	82		.
	ld b,b			;66a1	40		@
	inc b			;66a2	04		.
	nop			;66a3	00		.
	add a,b			;66a4	80		.
	ld de,040f0h		;66a5	11 f0 40	. . @
	ld h,042h		;66a8	26 42		& B
	inc b			;66aa	04		.
	nop			;66ab	00		.
	add a,b			;66ac	80		.
	ld c,e			;66ad	4b		K
l66aeh:
	sub (hl)		;66ae	96		.
	ld b,e			;66af	43		C
	xor h			;66b0	ac		.
	ld b,l			;66b1	45		E
	inc b			;66b2	04		.
	nop			;66b3	00		.
	add a,b			;66b4	80		.
	xor b			;66b5	a8		.
	ld e,b			;66b6	58		X
	ld b,a			;66b7	47		G
	ld (hl),l		;66b8	75		u
	ld c,b			;66b9	48		H
	inc b			;66ba	04		.
	nop			;66bb	00		.
	ld b,b			;66bc	40		@
	ld bc,0b0f1h		;66bd	01 f1 b0	. . .
	sub l			;66c0	95		.
	or d			;66c1	b2		.
	nop			;66c2	00		.
	ld bc,00120h		;66c3	01 20 01	.   .
	pop af			;66c6	f1		.
	or b			;66c7	b0		.
	sub l			;66c8	95		.
	or d			;66c9	b2		.
	nop			;66ca	00		.
	nop			;66cb	00		.
	ld b,b			;66cc	40		@
	ld d,b			;66cd	50		P
	call nz,0d4b3h		;66ce	c4 b3 d4	. . .
	or (hl)			;66d1	b6		.
	nop			;66d2	00		.
	ld bc,05020h		;66d3	01 20 50	.   P
	call nz,0d4b3h		;66d6	c4 b3 d4	. . .
	or (hl)			;66d9	b6		.
	nop			;66da	00		.
	nop			;66db	00		.
	ld h,b			;66dc	60		`
	call nz,0b94eh		;66dd	c4 4e b9	. N .
	add a,(hl)		;66e0	86		.
	cp c			;66e1	b9		.
	nop			;66e2	00		.
	nop			;66e3	00		.
	ld b,b			;66e4	40		@
	res 1,c			;66e5	cb 89		. .
	cp c			;66e7	b9		.
	and e			;66e8	a3		.
	cp c			;66e9	b9		.
	nop			;66ea	00		.
	ld bc,0cb20h		;66eb	01 20 cb	.   .
	adc a,c			;66ee	89		.
	cp c			;66ef	b9		.
	and e			;66f0	a3		.
	cp c			;66f1	b9		.
	nop			;66f2	00		.
	nop			;66f3	00		.
	jr nz,l66aeh		;66f4	20 b8		  .
	or (hl)			;66f6	b6		.
	cp c			;66f7	b9		.
	ret pe			;66f8	e8		.
	cp c			;66f9	b9		.
	nop			;66fa	00		.
	rst 38h			;66fb	ff		.
	ld b,a			;66fc	47		G
	ld bc,00310h		;66fd	01 10 03	. . .
	ld de,0474ah		;6700	11 4a 47	. J G
	xor h			;6703	ac		.
	cp a			;6704	bf		.
	inc bc			;6705	03		.
	ret nz			;6706	c0		.
	call 0ffffh		;6707	cd ff ff	. . .
	rst 38h			;670a	ff		.
	rst 38h			;670b	ff		.
	inc bc			;670c	03		.
	ld d,b			;670d	50		P
	cp l			;670e	bd		.
	ld b,a			;670f	47		G
	set 1,l			;6710	cb cd		. .
	ld (bc),a		;6712	02		.
	call nz,0ffcah		;6713	c4 ca ff	. . .
	nop			;6716	00		.
	nop			;6717	00		.
	jr nc,$+19		;6718	30 11		0 .
	ld h,c			;671a	61		a
	inc h			;671b	24		$
	ld (hl),h		;671c	74		t
	ld (hl),074h		;671d	36 74		6 t
	ld b,h			;671f	44		D
	ld (l7252h),hl		;6720	22 52 72	" R r
	sub d			;6723	92		.
	ld b,(hl)		;6724	46		F
	or (hl)			;6725	b6		.
	inc d			;6726	14		.
	jp 001ffh		;6727	c3 ff 01	. . .
	ld bc,00202h		;672a	01 02 02	. . .
	inc bc			;672d	03		.
	inc b			;672e	04		.
	dec b			;672f	05		.
	ld b,0ffh		;6730	06 ff		. .
	nop			;6732	00		.
	rst 38h			;6733	ff		.
	nop			;6734	00		.
	ld b,l			;6735	45		E
	ld b,b			;6736	40		@
	ld b,d			;6737	42		B
	ld b,b			;6738	40		@
	nop			;6739	00		.
	nop			;673a	00		.
	add a,b			;673b	80		.
	ld bc,06918h		;673c	01 18 69	. . i
	ld c,h			;673f	4c		L
	ld l,c			;6740	69		i
	nop			;6741	00		.
	nop			;6742	00		.
	add a,b			;6743	80		.
	ld l,(hl)		;6744	6e		n
	ld h,h			;6745	64		d
	ld l,c			;6746	69		i
	add hl,hl		;6747	29		)
	ld l,e			;6748	6b		k
	nop			;6749	00		.
	nop			;674a	00		.
	ld b,b			;674b	40		@
	ld bc,l6bf9h		;674c	01 f9 6b	. . k
	add hl,hl		;674f	29		)
	ld l,h			;6750	6c		l
	nop			;6751	00		.
	nop			;6752	00		.
	ld b,b			;6753	40		@
	ld l,c			;6754	69		i
	ld b,b			;6755	40		@
	ld l,h			;6756	6c		l
	ld hl,(0006eh)		;6757	2a 6e 00	* n .
	nop			;675a	00		.
	ret nz			;675b	c0		.
	add hl,bc		;675c	09		.
	jr nz,l67ceh		;675d	20 6f		  o
	ret pe			;675f	e8		.
	ld (hl),c		;6760	71		q
	nop			;6761	00		.
	nop			;6762	00		.
	ret nz			;6763	c0		.
	and a			;6764	a7		.
	dec c			;6765	0d		.
	ld (hl),h		;6766	74		t
	ld b,l			;6767	45		E
	ld (hl),h		;6768	74		t
	nop			;6769	00		.
	nop			;676a	00		.
	add a,b			;676b	80		.
	xor a			;676c	af		.
	ld a,h			;676d	7c		|
	ld (hl),h		;676e	74		t
	adc a,074h		;676f	ce 74		. t
	nop			;6771	00		.
	ld bc,0af40h		;6772	01 40 af	. @ .
	ld a,h			;6775	7c		|
	ld (hl),h		;6776	74		t
	adc a,074h		;6777	ce 74		. t
	nop			;6779	00		.
	nop			;677a	00		.
	ret nz			;677b	c0		.
	cp c			;677c	b9		.
	inc e			;677d	1c		.
	ld (hl),l		;677e	75		u
	ld l,075h		;677f	2e 75		. u
	nop			;6781	00		.
	nop			;6782	00		.
	add a,b			;6783	80		.
	cp h			;6784	bc		.
	ld c,b			;6785	48		H
l6786h:
	ld (hl),l		;6786	75		u
	xor h			;6787	ac		.
	ld (hl),l		;6788	75		u
	nop			;6789	00		.
	ld bc,0bc40h		;678a	01 40 bc	. @ .
	ld c,b			;678d	48		H
	ld (hl),l		;678e	75		u
	xor h			;678f	ac		.
	ld (hl),l		;6790	75		u
	nop			;6791	00		.
	nop			;6792	00		.
	ret nz			;6793	c0		.
	jp z,l7613h		;6794	ca 13 76	. . v
	inc (hl)		;6797	34		4
	halt			;6798	76		v
	nop			;6799	00		.
	nop			;679a	00		.
	ret nz			;679b	c0		.
	ld e,b			;679c	58		X
	cp c			;679d	b9		.
	ld b,e			;679e	43		C
	call c,00043h		;679f	dc 43 00	. C .
	nop			;67a2	00		.
	jr nz,$+3		;67a3	20 01		  .
	call z,01a9eh		;67a5	cc 9e 1a	. . .
	sbc a,a			;67a8	9f		.
	nop			;67a9	00		.
	nop			;67aa	00		.
	jr nc,l67bdh		;67ab	30 10		0 .
	ccf			;67ad	3f		?
	sbc a,a			;67ae	9f		.
	ld e,h			;67af	5c		\
	sbc a,a			;67b0	9f		.
	nop			;67b1	00		.
	nop			;67b2	00		.
	jr nz,l67fdh		;67b3	20 48		  H
	ld l,l			;67b5	6d		m
	sbc a,a			;67b6	9f		.
	inc e			;67b7	1c		.
	and c			;67b8	a1		.
	nop			;67b9	00		.
	nop			;67ba	00		.
l67bbh:
	jr nc,$-109		;67bb	30 91		0 .
l67bdh:
	adc a,h			;67bd	8c		.
	and d			;67be	a2		.
	rst 28h			;67bf	ef		.
	and d			;67c0	a2		.
	nop			;67c1	00		.
l67c2h:
	nop			;67c2	00		.
	jr nc,l6786h		;67c3	30 c1		0 .
	ld d,h			;67c5	54		T
	and e			;67c6	a3		.
l67c7h:
	ld a,e			;67c7	7b		{
	and e			;67c8	a3		.
	nop			;67c9	00		.
	nop			;67ca	00		.
	jr nc,$-54		;67cb	30 c8		0 .
	and h			;67cd	a4		.
l67ceh:
	and e			;67ce	a3		.
	or (hl)			;67cf	b6		.
	and e			;67d0	a3		.
	nop			;67d1	00		.
	nop			;67d2	00		.
	djnz l67d6h		;67d3	10 01		. .
	ret z			;67d5	c8		.
l67d6h:
	and e			;67d6	a3		.
	ld (de),a		;67d7	12		.
	and h			;67d8	a4		.
	nop			;67d9	00		.
	nop			;67da	00		.
	djnz l67eah		;67db	10 0d		. .
	ld b,a			;67dd	47		G
	and h			;67de	a4		.
	ld d,e			;67df	53		S
	and h			;67e0	a4		.
	nop			;67e1	00		.
	nop			;67e2	00		.
	djnz l6815h		;67e3	10 30		. 0
	ld h,e			;67e5	63		c
	and h			;67e6	a4		.
	pop bc			;67e7	c1		.
	and (hl)		;67e8	a6		.
	nop			;67e9	00		.
l67eah:
	nop			;67ea	00		.
	jr $-85			;67eb	18 a9		. .
	rst 30h			;67ed	f7		.
	xor b			;67ee	a8		.
	adc a,h			;67ef	8c		.
	xor c			;67f0	a9		.
	nop			;67f1	00		.
	nop			;67f2	00		.
	jr l67bbh		;67f3	18 c6		. .
	ld a,(de)		;67f5	1a		.
	xor d			;67f6	aa		.
	ld h,0aah		;67f7	26 aa		& .
	nop			;67f9	00		.
	nop			;67fa	00		.
	jr l67c7h		;67fb	18 ca		. .
l67fdh:
	inc (hl)		;67fd	34		4
	xor d			;67fe	aa		.
	ld d,(hl)		;67ff	56		V
	xor d			;6800	aa		.
	nop			;6801	00		.
	nop			;6802	00		.
	ex af,af'		;6803	08		.
	ld bc,0aa77h		;6804	01 77 aa	. w .
	ind			;6807	ed aa		. .
	nop			;6809	00		.
	nop			;680a	00		.
	ex af,af'		;680b	08		.
	jr nz,l6846h		;680c	20 38		  8
	xor e			;680e	ab		.
	xor a			;680f	af		.
	xor e			;6810	ab		.
	nop			;6811	00		.
	inc bc			;6812	03		.
	ex af,af'		;6813	08		.
	dec sp			;6814	3b		;
l6815h:
	jr c,l67c2h		;6815	38 ab		8 .
	xor a			;6817	af		.
	xor e			;6818	ab		.
	nop			;6819	00		.
	nop			;681a	00		.
	ex af,af'		;681b	08		.
	ld a,(0ac48h)		;681c	3a 48 ac	: H .
	ld c,l			;681f	4d		M
	xor h			;6820	ac		.
	nop			;6821	00		.
	nop			;6822	00		.
	ex af,af'		;6823	08		.
	ld d,l			;6824	55		U
	ld d,e			;6825	53		S
	xor h			;6826	ac		.
	xor e			;6827	ab		.
	xor h			;6828	ac		.
	nop			;6829	00		.
	nop			;682a	00		.
	ex af,af'		;682b	08		.
	ld h,l			;682c	65		e
	dec d			;682d	15		.
	xor l			;682e	ad		.
	add hl,sp		;682f	39		9
	xor l			;6830	ad		.
	nop			;6831	00		.
	ld (bc),a		;6832	02		.
	ex af,af'		;6833	08		.
	ld l,h			;6834	6c		l
	dec d			;6835	15		.
	xor l			;6836	ad		.
	add hl,sp		;6837	39		9
	xor l			;6838	ad		.
	nop			;6839	00		.
	nop			;683a	00		.
	ex af,af'		;683b	08		.
	ld (hl),e		;683c	73		s
	ld l,l			;683d	6d		m
	xor l			;683e	ad		.
	ret p			;683f	f0		.
	xor (hl)		;6840	ae		.
	nop			;6841	00		.
	nop			;6842	00		.
	ex af,af'		;6843	08		.
	cp h			;6844	bc		.
	ccf			;6845	3f		?
l6846h:
	or b			;6846	b0		.
	adc a,h			;6847	8c		.
	or b			;6848	b0		.
	nop			;6849	00		.
	nop			;684a	00		.
	ex af,af'		;684b	08		.
	ret z			;684c	c8		.
	ret nc			;684d	d0		.
	or b			;684e	b0		.
	pop hl			;684f	e1		.
	or b			;6850	b0		.
	nop			;6851	00		.
	rst 38h			;6852	ff		.
	inc bc			;6853	03		.
	add hl,bc		;6854	09		.
	dec bc			;6855	0b		.
	ld b,a			;6856	47		G
	ld e,023h		;6857	1e 23		. #
	inc bc			;6859	03		.
	inc h			;685a	24		$
	inc h			;685b	24		$
	ld b,a			;685c	47		G
	dec h			;685d	25		%
	dec h			;685e	25		%
	ld (bc),a		;685f	02		.
	ld h,027h		;6860	26 27		& '
	inc bc			;6862	03		.
	jr z,l688fh		;6863	28 2a		( *
	ld b,a			;6865	47		G
	dec hl			;6866	2b		+
	inc l			;6867	2c		,
	inc bc			;6868	03		.
	dec l			;6869	2d		-
	dec l			;686a	2d		-
	ld (bc),a		;686b	02		.
	ld l,030h		;686c	2e 30		. 0
	inc bc			;686e	03		.
	ld sp,04731h		;686f	31 31 47	1 1 G
	ld (00332h),a		;6872	32 32 03	2 2 .
	inc sp			;6875	33		3
	inc sp			;6876	33		3
	ld (bc),a		;6877	02		.
	inc (hl)		;6878	34		4
	inc (hl)		;6879	34		4
	inc bc			;687a	03		.
	dec (hl)		;687b	35		5
	scf			;687c	37		7
	ld (bc),a		;687d	02		.
	jr c,l68c1h		;687e	38 41		8 A
	inc bc			;6880	03		.
	ld b,d			;6881	42		B
	ld b,e			;6882	43		C
	ld (bc),a		;6883	02		.
	ld b,h			;6884	44		D
	ld b,a			;6885	47		G
	inc bc			;6886	03		.
	ld c,b			;6887	48		H
l6888h:
	ld c,d			;6888	4a		J
	ld b,a			;6889	47		G
	ld d,(hl)		;688a	56		V
	ld d,a			;688b	57		W
	ld b,a			;688c	47		G
	ld h,b			;688d	60		`
	ld l,b			;688e	68		h
l688fh:
	inc bc			;688f	03		.
	ld l,c			;6890	69		i
l6891h:
	and (hl)		;6891	a6		.
	dec de			;6892	1b		.
	and a			;6893	a7		.
	xor (hl)		;6894	ae		.
	ld b,a			;6895	47		G
	xor a			;6896	af		.
	cp b			;6897	b8		.
	inc bc			;6898	03		.
	cp c			;6899	b9		.
	cp e			;689a	bb		.
	ld (bc),a		;689b	02		.
	cp h			;689c	bc		.
	cp h			;689d	bc		.
	ld b,a			;689e	47		G
	cp l			;689f	bd		.
	cp (hl)			;68a0	be		.
	ld (bc),a		;68a1	02		.
	cp a			;68a2	bf		.
	cp a			;68a3	bf		.
	ld b,a			;68a4	47		G
	ret nz			;68a5	c0		.
	pop bc			;68a6	c1		.
	inc bc			;68a7	03		.
	jp nz,00bc3h		;68a8	c2 c3 0b	. . .
	jp z,003cbh		;68ab	ca cb 03	. . .
	call z,000cdh		;68ae	cc cd 00	. . .
	jp z,0ffcbh		;68b1	ca cb ff	. . .
	nop			;68b4	00		.
	nop			;68b5	00		.
	ld (bc),a		;68b6	02		.
	ld (de),a		;68b7	12		.
	inc bc			;68b8	03		.
	inc hl			;68b9	23		#
	inc b			;68ba	04		.
	inc (hl)		;68bb	34		4
	dec b			;68bc	05		.
	ld b,l			;68bd	45		E
	ld d,d			;68be	52		R
	ld d,h			;68bf	54		T
	ld b,b			;68c0	40		@
l68c1h:
	sub b			;68c1	90		.
	ld b,c			;68c2	41		A
	or e			;68c3	b3		.
	jr nc,l6888h		;68c4	30 c2		0 .
	rst 38h			;68c6	ff		.
	rst 38h			;68c7	ff		.
	rst 38h			;68c8	ff		.
	inc bc			;68c9	03		.
	jr nc,l6891h		;68ca	30 c5		0 .
	ld b,a			;68cc	47		G
	add a,0cdh		;68cd	c6 cd		. .
	rst 38h			;68cf	ff		.
	ld (bc),a		;68d0	02		.
	nop			;68d1	00		.
	inc de			;68d2	13		.
	ld de,02224h		;68d3	11 24 22	. $ "
	ld b,b			;68d6	40		@
	jr nc,l694ch		;68d7	30 73		0 s
	ld b,e			;68d9	43		C
	ld (hl),b		;68da	70		p
	ld d,l			;68db	55		U
	ld (05692h),hl		;68dc	22 92 56	" . V
	or (hl)			;68df	b6		.
	inc de			;68e0	13		.
	jp 001ffh		;68e1	c3 ff 01	. . .
	ld bc,00101h		;68e4	01 01 01	. . .
	ld (bc),a		;68e7	02		.
	ld (bc),a		;68e8	02		.
	inc bc			;68e9	03		.
	inc bc			;68ea	03		.
	rst 38h			;68eb	ff		.
	nop			;68ec	00		.
	add a,b			;68ed	80		.
	ld bc,l7647h		;68ee	01 47 76	. G v
	inc l			;68f1	2c		,
	ld a,b			;68f2	78		x
	nop			;68f3	00		.
	nop			;68f4	00		.
	add a,b			;68f5	80		.
	ld d,d			;68f6	52		R
	halt			;68f7	76		v
	ld a,c			;68f8	79		y
	ret z			;68f9	c8		.
	ld a,c			;68fa	79		y
	nop			;68fb	00		.
	nop			;68fc	00		.
	add a,b			;68fd	80		.
	ld e,h			;68fe	5c		\
	dec b			;68ff	05		.
	ld a,d			;6900	7a		z
	and e			;6901	a3		.
	ld a,h			;6902	7c		|
	nop			;6903	00		.
	nop			;6904	00		.
	ld b,b			;6905	40		@
	ld bc,0955fh		;6906	01 5f 95	. _ .
	jp (hl)			;6909	e9		.
	sub l			;690a	95		.
	inc b			;690b	04		.
	ld bc,00120h		;690c	01 20 01	.   .
	ld e,a			;690f	5f		_
	sub l			;6910	95		.
	jp (hl)			;6911	e9		.
	sub l			;6912	95		.
	inc b			;6913	04		.
	nop			;6914	00		.
	ld b,b			;6915	40		@
	ld d,b			;6916	50		P
	ld (hl),097h		;6917	36 97		6 .
	rst 30h			;6919	f7		.
	sbc a,c			;691a	99		.
	inc b			;691b	04		.
	ld bc,05020h		;691c	01 20 50	.   P
	ld (hl),097h		;691f	36 97		6 .
	rst 30h			;6921	f7		.
	sbc a,c			;6922	99		.
	inc b			;6923	04		.
	nop			;6924	00		.
	ld b,b			;6925	40		@
	rla			;6926	17		.
	dec (hl)		;6927	35		5
	sub (hl)		;6928	96		.
	and 096h		;6929	e6 96		. .
	inc b			;692b	04		.
	ld bc,01720h		;692c	01 20 17	.   .
	dec (hl)		;692f	35		5
	sub (hl)		;6930	96		.
	and 096h		;6931	e6 96		. .
	inc b			;6933	04		.
	nop			;6934	00		.
	ld h,b			;6935	60		`
	or d			;6936	b2		.
	ld e,d			;6937	5a		Z
	sbc a,h			;6938	9c		.
	ld l,h			;6939	6c		l
	sbc a,h			;693a	9c		.
	inc b			;693b	04		.
	nop			;693c	00		.
	ld b,b			;693d	40		@
	rst 0			;693e	c7		.
	ld (hl),a		;693f	77		w
	sbc a,h			;6940	9c		.
	and c			;6941	a1		.
	sbc a,h			;6942	9c		.
	inc b			;6943	04		.
	ld bc,0c720h		;6944	01 20 c7	.   .
	ld (hl),a		;6947	77		w
	sbc a,h			;6948	9c		.
	and c			;6949	a1		.
	sbc a,h			;694a	9c		.
	inc b			;694b	04		.
l694ch:
	nop			;694c	00		.
	ld h,b			;694d	60		`
	call z,09ccbh		;694e	cc cb 9c	. . .
	defb 0ddh,09ch ;sbc a,ixh	;6951	dd 9c		. .
	inc b			;6953	04		.
	rst 38h			;6954	ff		.
	ld b,a			;6955	47		G
	ld d,d			;6956	52		R
	ld e,e			;6957	5b		[
	inc bc			;6958	03		.
	ld e,h			;6959	5c		\
	sbc a,e			;695a	9b		.
	ld b,a			;695b	47		G
	ld l,(hl)		;695c	6e		n
	ld l,(hl)		;695d	6e		n
	ld (bc),a		;695e	02		.
	sub d			;695f	92		.
	sub e			;6960	93		.
	ld (bc),a		;6961	02		.
	sbc a,b			;6962	98		.
	sbc a,c			;6963	99		.
	inc bc			;6964	03		.
	and e			;6965	a3		.
	or d			;6966	b2		.
	inc bc			;6967	03		.
	cp d			;6968	ba		.
	jp nz,0c503h		;6969	c2 03 c5	. . .
	add a,003h		;696c	c6 03		. .
	ret z			;696e	c8		.
	call 0af02h		;696f	cd 02 af	. . .
	or b			;6972	b0		.
	ld (bc),a		;6973	02		.
	cp e			;6974	bb		.
	cp h			;6975	bc		.
	add a,e			;6976	83		.
	ld (hl),d		;6977	72		r
	ld (hl),d		;6978	72		r
	add a,e			;6979	83		.
	add a,b			;697a	80		.
	add a,b			;697b	80		.
	add a,e			;697c	83		.
	adc a,h			;697d	8c		.
	adc a,l			;697e	8d		.
	add a,e			;697f	83		.
	sub h			;6980	94		.
	sub h			;6981	94		.
	add a,e			;6982	83		.
	and h			;6983	a4		.
	and h			;6984	a4		.
	ld (bc),a		;6985	02		.
	and a			;6986	a7		.
	xor b			;6987	a8		.
	add a,e			;6988	83		.
	xor h			;6989	ac		.
	xor h			;698a	ac		.
	add a,e			;698b	83		.
	xor (hl)		;698c	ae		.
	xor (hl)		;698d	ae		.
	add a,e			;698e	83		.
	ret nz			;698f	c0		.
	ret nz			;6990	c0		.
	ld b,a			;6991	47		G
	and l			;6992	a5		.
	and (hl)		;6993	a6		.
	ld b,a			;6994	47		G
	call z,047cch		;6995	cc cc 47	. . G
	cp (hl)			;6998	be		.
	cp (hl)			;6999	be		.
	rst 38h			;699a	ff		.
	nop			;699b	00		.
	nop			;699c	00		.
	ld bc,00212h		;699d	01 12 02	. . .
	inc hl			;69a0	23		#
l69a1h:
	inc bc			;69a1	03		.
	inc (hl)		;69a2	34		4
	inc b			;69a3	04		.
	ld b,l			;69a4	45		E
	ld h,b			;69a5	60		`
	ld d,h			;69a6	54		T
	ld b,b			;69a7	40		@
	sub d			;69a8	92		.
	ld d,b			;69a9	50		P
	or e			;69aa	b3		.
	inc b			;69ab	04		.
	ret nz			;69ac	c0		.
	rst 38h			;69ad	ff		.
	rst 38h			;69ae	ff		.
	rst 38h			;69af	ff		.
	inc bc			;69b0	03		.
	ld d,b			;69b1	50		P
	ld h,d			;69b2	62		b
	ld (bc),a		;69b3	02		.
	ld h,e			;69b4	63		c
	or d			;69b5	b2		.
	ld b,a			;69b6	47		G
	rst 0			;69b7	c7		.
	call 022ffh		;69b8	cd ff 22	. . "
	ld (bc),a		;69bb	02		.
	djnz l69ceh		;69bc	10 10		. .
	jr nc,l69e0h		;69be	30 20		0  
	ld d,b			;69c0	50		P
	jr nc,l69c8h		;69c1	30 05		0 .
	ld b,b			;69c3	40		@
	scf			;69c4	37		7
	ld d,l			;69c5	55		U
	ld (hl),b		;69c6	70		p
	sub b			;69c7	90		.
l69c8h:
	ld d,(hl)		;69c8	56		V
	or (hl)			;69c9	b6		.
	inc de			;69ca	13		.
	jp 001ffh		;69cb	c3 ff 01	. . .
l69ceh:
	ld bc,00101h		;69ce	01 01 01	. . .
	inc b			;69d1	04		.
	inc b			;69d2	04		.
	inc b			;69d3	04		.
	inc b			;69d4	04		.
	inc bc			;69d5	03		.
	inc bc			;69d6	03		.
	inc bc			;69d7	03		.
	inc bc			;69d8	03		.
	ld (bc),a		;69d9	02		.
	ld (bc),a		;69da	02		.
	ld (bc),a		;69db	02		.
	ld (bc),a		;69dc	02		.
	dec b			;69dd	05		.
	dec b			;69de	05		.
	dec b			;69df	05		.
l69e0h:
	dec b			;69e0	05		.
	rst 38h			;69e1	ff		.
	nop			;69e2	00		.
	ret p			;69e3	f0		.
	ld bc,07ee0h		;69e4	01 e0 7e	. . ~
	rst 30h			;69e7	f7		.
	ld a,(hl)		;69e8	7e		~
	nop			;69e9	00		.
	ld (bc),a		;69ea	02		.
	ret p			;69eb	f0		.
	inc b			;69ec	04		.
	ret po			;69ed	e0		.
	ld a,(hl)		;69ee	7e		~
	rst 30h			;69ef	f7		.
	ld a,(hl)		;69f0	7e		~
	nop			;69f1	00		.
	ld bc,007f0h		;69f2	01 f0 07	. . .
	ret po			;69f5	e0		.
	ld a,(hl)		;69f6	7e		~
	rst 30h			;69f7	f7		.
	ld a,(hl)		;69f8	7e		~
	nop			;69f9	00		.
	inc bc			;69fa	03		.
	ret p			;69fb	f0		.
	ld a,(bc)		;69fc	0a		.
	ret po			;69fd	e0		.
	ld a,(hl)		;69fe	7e		~
	rst 30h			;69ff	f7		.
	ld a,(hl)		;6a00	7e		~
	nop			;6a01	00		.
	nop			;6a02	00		.
	ret p			;6a03	f0		.
	dec c			;6a04	0d		.
	inc c			;6a05	0c		.
	ld a,a			;6a06	7f		.
	ld (hl),07fh		;6a07	36 7f		6 .
	nop			;6a09	00		.
	ld bc,013f0h		;6a0a	01 f0 13	. . .
	inc c			;6a0d	0c		.
	ld a,a			;6a0e	7f		.
	ld (hl),07fh		;6a0f	36 7f		6 .
	nop			;6a11	00		.
	nop			;6a12	00		.
	ret p			;6a13	f0		.
	add hl,de		;6a14	19		.
	ld e,e			;6a15	5b		[
	ld a,a			;6a16	7f		.
	and (hl)		;6a17	a6		.
	ld a,a			;6a18	7f		.
	nop			;6a19	00		.
l6a1ah:
	nop			;6a1a	00		.
	ret p			;6a1b	f0		.
	cp b			;6a1c	b8		.
	rst 30h			;6a1d	f7		.
	ld a,a			;6a1e	7f		.
	djnz l69a1h		;6a1f	10 80		. .
	nop			;6a21	00		.
l6a22h:
	nop			;6a22	00		.
	ret p			;6a23	f0		.
	call z,08041h		;6a24	cc 41 80	. A .
	ld b,(hl)		;6a27	46		F
	add a,b			;6a28	80		.
	nop			;6a29	00		.
	nop			;6a2a	00		.
	ret p			;6a2b	f0		.
	sub h			;6a2c	94		.
	ld c,c			;6a2d	49		I
	add a,b			;6a2e	80		.
	adc a,c			;6a2f	89		.
	add a,b			;6a30	80		.
	nop			;6a31	00		.
	ld (bc),a		;6a32	02		.
	ret p			;6a33	f0		.
	sbc a,l			;6a34	9d		.
	ld c,c			;6a35	49		I
	add a,b			;6a36	80		.
	adc a,c			;6a37	89		.
	add a,b			;6a38	80		.
	nop			;6a39	00		.
	ld bc,0a6f0h		;6a3a	01 f0 a6	. . .
	ld c,c			;6a3d	49		I
	add a,b			;6a3e	80		.
	adc a,c			;6a3f	89		.
	add a,b			;6a40	80		.
	nop			;6a41	00		.
	ld bc,0a6f0h		;6a42	01 f0 a6	. . .
	ld c,c			;6a45	49		I
	add a,b			;6a46	80		.
	adc a,c			;6a47	89		.
	add a,b			;6a48	80		.
	nop			;6a49	00		.
	inc bc			;6a4a	03		.
	ret p			;6a4b	f0		.
	xor a			;6a4c	af		.
	ld c,c			;6a4d	49		I
	add a,b			;6a4e	80		.
	adc a,c			;6a4f	89		.
	add a,b			;6a50	80		.
	nop			;6a51	00		.
	nop			;6a52	00		.
l6a53h:
	ret p			;6a53	f0		.
	add a,b			;6a54	80		.
	out (080h),a		;6a55	d3 80		. .
	ret po			;6a57	e0		.
	add a,b			;6a58	80		.
	nop			;6a59	00		.
	ld (bc),a		;6a5a	02		.
	ret p			;6a5b	f0		.
	add a,e			;6a5c	83		.
	out (080h),a		;6a5d	d3 80		. .
	ret po			;6a5f	e0		.
	add a,b			;6a60	80		.
	nop			;6a61	00		.
	nop			;6a62	00		.
	add a,b			;6a63	80		.
	cp (hl)			;6a64	be		.
	pop af			;6a65	f1		.
	add a,b			;6a66	80		.
	ret m			;6a67	f8		.
	add a,b			;6a68	80		.
	nop			;6a69	00		.
	ld bc,0c580h		;6a6a	01 80 c5	. . .
	pop af			;6a6d	f1		.
	add a,b			;6a6e	80		.
	ret m			;6a6f	f8		.
	add a,b			;6a70	80		.
	nop			;6a71	00		.
	nop			;6a72	00		.
l6a73h:
	ld b,b			;6a73	40		@
	cp (hl)			;6a74	be		.
	rst 38h			;6a75	ff		.
	add a,b			;6a76	80		.
	inc b			;6a77	04		.
	add a,c			;6a78	81		.
	nop			;6a79	00		.
	ld bc,0c540h		;6a7a	01 40 c5	. @ .
	rst 38h			;6a7d	ff		.
	add a,b			;6a7e	80		.
	inc b			;6a7f	04		.
	add a,c			;6a80	81		.
	nop			;6a81	00		.
	nop			;6a82	00		.
l6a83h:
	jr nz,$-64		;6a83	20 be		  .
	dec bc			;6a85	0b		.
	add a,c			;6a86	81		.
	ld (de),a		;6a87	12		.
	add a,c			;6a88	81		.
	nop			;6a89	00		.
	ld bc,0c520h		;6a8a	01 20 c5	.   .
	dec bc			;6a8d	0b		.
	add a,c			;6a8e	81		.
	ld (de),a		;6a8f	12		.
	add a,c			;6a90	81		.
	nop			;6a91	00		.
	nop			;6a92	00		.
	djnz l6a53h		;6a93	10 be		. .
	add hl,de		;6a95	19		.
	add a,c			;6a96	81		.
	jr nz,l6a1ah		;6a97	20 81		  .
	nop			;6a99	00		.
	ld bc,0c510h		;6a9a	01 10 c5	. . .
	add hl,de		;6a9d	19		.
	add a,c			;6a9e	81		.
	jr nz,l6a22h		;6a9f	20 81		  .
	nop			;6aa1	00		.
	nop			;6aa2	00		.
	ret p			;6aa3	f0		.
	adc a,048h		;6aa4	ce 48		. H
	ld b,b			;6aa6	40		@
	inc bc			;6aa7	03		.
	ld b,d			;6aa8	42		B
	nop			;6aa9	00		.
	nop			;6aaa	00		.
	ex af,af'		;6aab	08		.
	ld bc,0ba12h		;6aac	01 12 ba	. . .
	jr z,$-68		;6aaf	28 ba		( .
	nop			;6ab1	00		.
	ld (bc),a		;6ab2	02		.
	ex af,af'		;6ab3	08		.
	inc b			;6ab4	04		.
	ld (de),a		;6ab5	12		.
	cp d			;6ab6	ba		.
	jr z,l6a73h		;6ab7	28 ba		( .
	nop			;6ab9	00		.
	ld bc,00708h		;6aba	01 08 07	. . .
	ld (de),a		;6abd	12		.
	cp d			;6abe	ba		.
	jr z,$-68		;6abf	28 ba		( .
	nop			;6ac1	00		.
	inc bc			;6ac2	03		.
	ex af,af'		;6ac3	08		.
	ld a,(bc)		;6ac4	0a		.
	ld (de),a		;6ac5	12		.
	cp d			;6ac6	ba		.
	jr z,l6a83h		;6ac7	28 ba		( .
	nop			;6ac9	00		.
	nop			;6aca	00		.
	ex af,af'		;6acb	08		.
	dec c			;6acc	0d		.
	ld (047bah),a		;6acd	32 ba 47	2 . G
	cp d			;6ad0	ba		.
	nop			;6ad1	00		.
	ld bc,01308h		;6ad2	01 08 13	. . .
	ld (047bah),a		;6ad5	32 ba 47	2 . G
	cp d			;6ad8	ba		.
	nop			;6ad9	00		.
	nop			;6ada	00		.
	ex af,af'		;6adb	08		.
	dec h			;6adc	25		%
	ld d,d			;6add	52		R
	cp d			;6ade	ba		.
	ld d,l			;6adf	55		U
	cp d			;6ae0	ba		.
	nop			;6ae1	00		.
	nop			;6ae2	00		.
	ex af,af'		;6ae3	08		.
	ld l,b			;6ae4	68		h
	ld e,b			;6ae5	58		X
	cp d			;6ae6	ba		.
	and l			;6ae7	a5		.
	cp d			;6ae8	ba		.
	nop			;6ae9	00		.
	ld (bc),a		;6aea	02		.
	ex af,af'		;6aeb	08		.
	ld (hl),d		;6aec	72		r
	ld e,b			;6aed	58		X
	cp d			;6aee	ba		.
	and l			;6aef	a5		.
	cp d			;6af0	ba		.
	nop			;6af1	00		.
	nop			;6af2	00		.
	ex af,af'		;6af3	08		.
	xor h			;6af4	ac		.
	call p,01abah		;6af5	f4 ba 1a	. . .
	cp e			;6af8	bb		.
	nop			;6af9	00		.
	nop			;6afa	00		.
	ex af,af'		;6afb	08		.
	cp h			;6afc	bc		.
	ld e,l			;6afd	5d		]
	cp e			;6afe	bb		.
	ld l,c			;6aff	69		i
	cp e			;6b00	bb		.
	nop			;6b01	00		.
	ld bc,0bf08h		;6b02	01 08 bf	. . .
	ld e,l			;6b05	5d		]
	cp e			;6b06	bb		.
	ld l,c			;6b07	69		i
	cp e			;6b08	bb		.
	nop			;6b09	00		.
	nop			;6b0a	00		.
	ex af,af'		;6b0b	08		.
	ld h,083h		;6b0c	26 83		& .
	cp e			;6b0e	bb		.
	or a			;6b0f	b7		.
	cp e			;6b10	bb		.
	nop			;6b11	00		.
	ld bc,02d08h		;6b12	01 08 2d	. . -
	add a,e			;6b15	83		.
	cp e			;6b16	bb		.
	or a			;6b17	b7		.
	cp e			;6b18	bb		.
	nop			;6b19	00		.
	ld (bc),a		;6b1a	02		.
	ex af,af'		;6b1b	08		.
	inc (hl)		;6b1c	34		4
	add a,e			;6b1d	83		.
	cp e			;6b1e	bb		.
	or a			;6b1f	b7		.
	cp e			;6b20	bb		.
	nop			;6b21	00		.
	inc bc			;6b22	03		.
	ex af,af'		;6b23	08		.
	dec sp			;6b24	3b		;
	add a,e			;6b25	83		.
	cp e			;6b26	bb		.
	or a			;6b27	b7		.
	cp e			;6b28	bb		.
	nop			;6b29	00		.
	nop			;6b2a	00		.
	ex af,af'		;6b2b	08		.
	ld b,d			;6b2c	42		B
	ret pe			;6b2d	e8		.
	cp e			;6b2e	bb		.
	di			;6b2f	f3		.
	cp e			;6b30	bb		.
	nop			;6b31	00		.
	ld bc,04408h		;6b32	01 08 44	. . D
	ret pe			;6b35	e8		.
	cp e			;6b36	bb		.
	di			;6b37	f3		.
	cp e			;6b38	bb		.
	nop			;6b39	00		.
	nop			;6b3a	00		.
	ex af,af'		;6b3b	08		.
	ld a,h			;6b3c	7c		|
	ld (bc),a		;6b3d	02		.
	cp h			;6b3e	bc		.
	ld a,(000bch)		;6b3f	3a bc 00	: . .
	ld bc,08408h		;6b42	01 08 84	. . .
	ld (bc),a		;6b45	02		.
	cp h			;6b46	bc		.
	ld a,(000bch)		;6b47	3a bc 00	: . .
	ld (bc),a		;6b4a	02		.
	ex af,af'		;6b4b	08		.
	adc a,h			;6b4c	8c		.
	ld (bc),a		;6b4d	02		.
	cp h			;6b4e	bc		.
	ld a,(000bch)		;6b4f	3a bc 00	: . .
	inc bc			;6b52	03		.
	ex af,af'		;6b53	08		.
	sub h			;6b54	94		.
	ld (bc),a		;6b55	02		.
	cp h			;6b56	bc		.
	ld a,(000bch)		;6b57	3a bc 00	: . .
	nop			;6b5a	00		.
	ex af,af'		;6b5b	08		.
	sbc a,h			;6b5c	9c		.
	ld a,c			;6b5d	79		y
	cp h			;6b5e	bc		.
	xor a			;6b5f	af		.
	cp h			;6b60	bc		.
	nop			;6b61	00		.
	ld (bc),a		;6b62	02		.
	ex af,af'		;6b63	08		.
	and h			;6b64	a4		.
	ld a,c			;6b65	79		y
	cp h			;6b66	bc		.
	xor a			;6b67	af		.
	cp h			;6b68	bc		.
	nop			;6b69	00		.
	nop			;6b6a	00		.
	ex af,af'		;6b6b	08		.
	jp nz,0bcebh		;6b6c	c2 eb bc	. . .
	inc e			;6b6f	1c		.
	cp l			;6b70	bd		.
	nop			;6b71	00		.
	ld (bc),a		;6b72	02		.
	ex af,af'		;6b73	08		.
	ret z			;6b74	c8		.
	ex de,hl		;6b75	eb		.
	cp h			;6b76	bc		.
	inc e			;6b77	1c		.
	cp l			;6b78	bd		.
	nop			;6b79	00		.
	nop			;6b7a	00		.
	ex af,af'		;6b7b	08		.
	ld h,b			;6b7c	60		`
	ld c,e			;6b7d	4b		K
	cp l			;6b7e	bd		.
	ld d,l			;6b7f	55		U
	cp l			;6b80	bd		.
	nop			;6b81	00		.
	ld (bc),a		;6b82	02		.
	ex af,af'		;6b83	08		.
	ld h,d			;6b84	62		b
	ld c,e			;6b85	4b		K
	cp l			;6b86	bd		.
	ld d,l			;6b87	55		U
	cp l			;6b88	bd		.
	nop			;6b89	00		.
	rst 38h			;6b8a	ff		.
	inc bc			;6b8b	03		.
	ld h,b			;6b8c	60		`
	xor e			;6b8d	ab		.
	inc bc			;6b8e	03		.
	xor h			;6b8f	ac		.
	call 000ffh		;6b90	cd ff 00	. . .
	nop			;6b93	00		.
	ld h,(hl)		;6b94	66		f
	ld d,010h		;6b95	16 10		. .
	ld hl,03220h		;6b97	21 20 32	!   2
	ld sp,04243h		;6b9a	31 43 42	1 C B
	ld d,h			;6b9d	54		T
	nop			;6b9e	00		.
	sub b			;6b9f	90		.
	ld b,b			;6ba0	40		@
	or b			;6ba1	b0		.
	ld h,b			;6ba2	60		`
	ret nz			;6ba3	c0		.
	rst 38h			;6ba4	ff		.
	rst 38h			;6ba5	ff		.
	rst 38h			;6ba6	ff		.
	ld (bc),a		;6ba7	02		.
	ld h,b			;6ba8	60		`
	xor e			;6ba9	ab		.
	ld b,a			;6baa	47		G
	xor h			;6bab	ac		.
	call 003ffh		;6bac	cd ff 03	. . .
	nop			;6baf	00		.
	jr nc,$+20		;6bb0	30 12		0 .
	ld d,c			;6bb2	51		Q
	inc h			;6bb3	24		$
	ld (hl),e		;6bb4	73		s
	ld (hl),024h		;6bb5	36 24		6 $
	ld b,b			;6bb7	40		@
	ld b,l			;6bb8	45		E
	ld d,b			;6bb9	50		P
	nop			;6bba	00		.
	sub b			;6bbb	90		.
	ld d,(hl)		;6bbc	56		V
	or (hl)			;6bbd	b6		.
	inc de			;6bbe	13		.
	jp 001ffh		;6bbf	c3 ff 01	. . .
	ld bc,00101h		;6bc2	01 01 01	. . .
	inc bc			;6bc5	03		.
	inc bc			;6bc6	03		.
	ld (bc),a		;6bc7	02		.
	ld (bc),a		;6bc8	02		.
	ld bc,00101h		;6bc9	01 01 01	. . .
	inc b			;6bcc	04		.
	ld bc,00401h		;6bcd	01 01 04	. . .
	inc b			;6bd0	04		.
	ld bc,00404h		;6bd1	01 04 04	. . .
	dec b			;6bd4	05		.
	inc b			;6bd5	04		.
	inc b			;6bd6	04		.
	dec b			;6bd7	05		.
	ld b,001h		;6bd8	06 01		. .
	ld bc,00101h		;6bda	01 01 01	. . .
	rst 38h			;6bdd	ff		.
	nop			;6bde	00		.
	ret po			;6bdf	e0		.
	ld bc,08127h		;6be0	01 27 81	. ' .
	ld d,d			;6be3	52		R
	add a,c			;6be4	81		.
	nop			;6be5	00		.
	nop			;6be6	00		.
	ret po			;6be7	e0		.
	cp (hl)			;6be8	be		.
	add a,h			;6be9	84		.
	add a,c			;6bea	81		.
	and (hl)		;6beb	a6		.
	add a,c			;6bec	81		.
	nop			;6bed	00		.
	ld (bc),a		;6bee	02		.
	ret po			;6bef	e0		.
	jp nz,08184h		;6bf0	c2 84 81	. . .
	and (hl)		;6bf3	a6		.
	add a,c			;6bf4	81		.
	nop			;6bf5	00		.
	ld bc,0c6e0h		;6bf6	01 e0 c6	. . .
l6bf9h:
	add a,h			;6bf9	84		.
	add a,c			;6bfa	81		.
	and (hl)		;6bfb	a6		.
	add a,c			;6bfc	81		.
	nop			;6bfd	00		.
	inc bc			;6bfe	03		.
	ret po			;6bff	e0		.
	jp z,08184h		;6c00	ca 84 81	. . .
	and (hl)		;6c03	a6		.
	add a,c			;6c04	81		.
	nop			;6c05	00		.
	nop			;6c06	00		.
	ret po			;6c07	e0		.
	ex af,af'		;6c08	08		.
	ret z			;6c09	c8		.
	add a,c			;6c0a	81		.
	and b			;6c0b	a0		.
	add a,d			;6c0c	82		.
	nop			;6c0d	00		.
	ld (bc),a		;6c0e	02		.
	ret po			;6c0f	e0		.
	inc h			;6c10	24		$
	ret z			;6c11	c8		.
	add a,c			;6c12	81		.
	and b			;6c13	a0		.
l6c14h:
	add a,d			;6c14	82		.
	nop			;6c15	00		.
	nop			;6c16	00		.
	ret po			;6c17	e0		.
	ld b,b			;6c18	40		@
	inc h			;6c19	24		$
	add a,e			;6c1a	83		.
	sub c			;6c1b	91		.
	add a,l			;6c1c	85		.
	nop			;6c1d	00		.
	nop			;6c1e	00		.
	ret po			;6c1f	e0		.
	sbc a,h			;6c20	9c		.
	add a,d			;6c21	82		.
	add a,a			;6c22	87		.
	nop			;6c23	00		.
	adc a,b			;6c24	88		.
	nop			;6c25	00		.
	ld (bc),a		;6c26	02		.
	ret po			;6c27	e0		.
	xor l			;6c28	ad		.
	add a,d			;6c29	82		.
	add a,a			;6c2a	87		.
	nop			;6c2b	00		.
	adc a,b			;6c2c	88		.
	nop			;6c2d	00		.
	nop			;6c2e	00		.
	ld b,b			;6c2f	40		@
	dec b			;6c30	05		.
	ld b,(hl)		;6c31	46		F
	adc a,b			;6c32	88		.
	ld h,b			;6c33	60		`
	adc a,b			;6c34	88		.
	nop			;6c35	00		.
	ld (bc),a		;6c36	02		.
	ld b,b			;6c37	40		@
	inc de			;6c38	13		.
	ld b,(hl)		;6c39	46		F
	adc a,b			;6c3a	88		.
	ld h,b			;6c3b	60		`
	adc a,b			;6c3c	88		.
	nop			;6c3d	00		.
	nop			;6c3e	00		.
	ld b,b			;6c3f	40		@
	inc c			;6c40	0c		.
	halt			;6c41	76		v
	adc a,b			;6c42	88		.
	add a,b			;6c43	80		.
	adc a,b			;6c44	88		.
	nop			;6c45	00		.
	nop			;6c46	00		.
	ld b,b			;6c47	40		@
	dec de			;6c48	1b		.
	adc a,d			;6c49	8a		.
	adc a,b			;6c4a	88		.
	sub h			;6c4b	94		.
	adc a,b			;6c4c	88		.
	nop			;6c4d	00		.
	nop			;6c4e	00		.
	ld b,b			;6c4f	40		@
	ld (0889eh),hl		;6c50	22 9e 88	" . .
	xor b			;6c53	a8		.
	adc a,b			;6c54	88		.
	nop			;6c55	00		.
	ld (bc),a		;6c56	02		.
	ld b,b			;6c57	40		@
	scf			;6c58	37		7
	sbc a,(hl)		;6c59	9e		.
	adc a,b			;6c5a	88		.
	xor b			;6c5b	a8		.
	adc a,b			;6c5c	88		.
	nop			;6c5d	00		.
	nop			;6c5e	00		.
	ld b,b			;6c5f	40		@
	jr z,l6c14h		;6c60	28 b2		( .
	adc a,b			;6c62	88		.
	call nc,00088h		;6c63	d4 88 00	. . .
	nop			;6c66	00		.
	ld b,b			;6c67	40		@
	cpl			;6c68	2f		/
	or 088h			;6c69	f6 88		. .
	rst 38h			;6c6b	ff		.
	adc a,b			;6c6c	88		.
	nop			;6c6d	00		.
	ld (bc),a		;6c6e	02		.
	ld b,b			;6c6f	40		@
	ld a,0f6h		;6c70	3e f6		> .
	adc a,b			;6c72	88		.
	rst 38h			;6c73	ff		.
	adc a,b			;6c74	88		.
	nop			;6c75	00		.
	nop			;6c76	00		.
	ld b,b			;6c77	40		@
	jr nc,l6c83h		;6c78	30 09		0 .
	adc a,c			;6c7a	89		.
	inc de			;6c7b	13		.
	adc a,c			;6c7c	89		.
	nop			;6c7d	00		.
	ld (bc),a		;6c7e	02		.
	ld b,b			;6c7f	40		@
	ld sp,08909h		;6c80	31 09 89	1 . .
l6c83h:
	inc de			;6c83	13		.
	adc a,c			;6c84	89		.
	nop			;6c85	00		.
	nop			;6c86	00		.
	ld b,b			;6c87	40		@
	ld b,b			;6c88	40		@
	dec e			;6c89	1d		.
	adc a,c			;6c8a	89		.
	ld c,h			;6c8b	4c		L
	adc a,c			;6c8c	89		.
	nop			;6c8d	00		.
	ld (bc),a		;6c8e	02		.
	ld b,b			;6c8f	40		@
	ld b,(hl)		;6c90	46		F
	dec e			;6c91	1d		.
	adc a,c			;6c92	89		.
	ld c,h			;6c93	4c		L
	adc a,c			;6c94	89		.
	nop			;6c95	00		.
	nop			;6c96	00		.
	ld b,b			;6c97	40		@
	ld c,l			;6c98	4d		M
	ld a,d			;6c99	7a		z
	adc a,c			;6c9a	89		.
	add a,h			;6c9b	84		.
	adc a,c			;6c9c	89		.
	nop			;6c9d	00		.
	ld (bc),a		;6c9e	02		.
	ld b,b			;6c9f	40		@
	ld l,a			;6ca0	6f		o
	ld a,d			;6ca1	7a		z
	adc a,c			;6ca2	89		.
	add a,h			;6ca3	84		.
	adc a,c			;6ca4	89		.
	nop			;6ca5	00		.
	nop			;6ca6	00		.
	ld b,b			;6ca7	40		@
	ld d,h			;6ca8	54		T
	adc a,(hl)		;6ca9	8e		.
	adc a,c			;6caa	89		.
	sbc a,l			;6cab	9d		.
	adc a,c			;6cac	89		.
	nop			;6cad	00		.
	ld (bc),a		;6cae	02		.
	ld b,b			;6caf	40		@
	ld l,h			;6cb0	6c		l
	adc a,(hl)		;6cb1	8e		.
	adc a,c			;6cb2	89		.
	sbc a,l			;6cb3	9d		.
	adc a,c			;6cb4	89		.
	nop			;6cb5	00		.
	nop			;6cb6	00		.
	ld b,b			;6cb7	40		@
	ld e,a			;6cb8	5f		_
	xor l			;6cb9	ad		.
	adc a,c			;6cba	89		.
	rst 0			;6cbb	c7		.
	adc a,c			;6cbc	89		.
	nop			;6cbd	00		.
	nop			;6cbe	00		.
	ld b,b			;6cbf	40		@
	sbc a,a			;6cc0	9f		.
	defb 0ddh,089h,0e7h ;illegal sequence	;6cc1	dd 89 e7	. . .
	adc a,c			;6cc4	89		.
	nop			;6cc5	00		.
	nop			;6cc6	00		.
	ld b,b			;6cc7	40		@
	and e			;6cc8	a3		.
	rst 28h			;6cc9	ef		.
	adc a,c			;6cca	89		.
	daa			;6ccb	27		'
	adc a,d			;6ccc	8a		.
	nop			;6ccd	00		.
	nop			;6cce	00		.
	ld b,b			;6ccf	40		@
	xor h			;6cd0	ac		.
	ld e,a			;6cd1	5f		_
	adc a,d			;6cd2	8a		.
	ld a,c			;6cd3	79		y
	adc a,d			;6cd4	8a		.
	nop			;6cd5	00		.
	nop			;6cd6	00		.
	ld b,b			;6cd7	40		@
	or b			;6cd8	b0		.
	sub e			;6cd9	93		.
	adc a,d			;6cda	8a		.
	sbc a,l			;6cdb	9d		.
	adc a,d			;6cdc	8a		.
	nop			;6cdd	00		.
	nop			;6cde	00		.
	ld b,b			;6cdf	40		@
	or h			;6ce0	b4		.
	and a			;6ce1	a7		.
	adc a,d			;6ce2	8a		.
	in a,(08ah)		;6ce3	db 8a		. .
	nop			;6ce5	00		.
	nop			;6ce6	00		.
	ld b,b			;6ce7	40		@
	cp l			;6ce8	bd		.
	add hl,bc		;6ce9	09		.
	adc a,e			;6cea	8b		.
	inc de			;6ceb	13		.
	adc a,e			;6cec	8b		.
	nop			;6ced	00		.
	nop			;6cee	00		.
	ld b,b			;6cef	40		@
	sbc a,h			;6cf0	9c		.
	dec e			;6cf1	1d		.
	adc a,e			;6cf2	8b		.
	add hl,hl		;6cf3	29		)
	adc a,e			;6cf4	8b		.
	nop			;6cf5	00		.
	ld bc,00520h		;6cf6	01 20 05	.   .
	ld b,(hl)		;6cf9	46		F
	adc a,b			;6cfa	88		.
	ld h,b			;6cfb	60		`
	adc a,b			;6cfc	88		.
	nop			;6cfd	00		.
	inc bc			;6cfe	03		.
	jr nz,l6d14h		;6cff	20 13		  .
	ld b,(hl)		;6d01	46		F
	adc a,b			;6d02	88		.
	ld h,b			;6d03	60		`
	adc a,b			;6d04	88		.
	nop			;6d05	00		.
	ld bc,00c20h		;6d06	01 20 0c	.   .
	halt			;6d09	76		v
	adc a,b			;6d0a	88		.
	add a,b			;6d0b	80		.
	adc a,b			;6d0c	88		.
	nop			;6d0d	00		.
	ld bc,01b20h		;6d0e	01 20 1b	.   .
	adc a,d			;6d11	8a		.
	adc a,b			;6d12	88		.
	sub h			;6d13	94		.
l6d14h:
	adc a,b			;6d14	88		.
	nop			;6d15	00		.
	ld bc,02220h		;6d16	01 20 22	.   "
	sbc a,(hl)		;6d19	9e		.
	adc a,b			;6d1a	88		.
	xor b			;6d1b	a8		.
	adc a,b			;6d1c	88		.
	nop			;6d1d	00		.
	inc bc			;6d1e	03		.
	jr nz,$+57		;6d1f	20 37		  7
	sbc a,(hl)		;6d21	9e		.
	adc a,b			;6d22	88		.
	xor b			;6d23	a8		.
	adc a,b			;6d24	88		.
	nop			;6d25	00		.
	ld bc,02820h		;6d26	01 20 28	.   (
	or d			;6d29	b2		.
	adc a,b			;6d2a	88		.
	call nc,00088h		;6d2b	d4 88 00	. . .
	ld bc,02f20h		;6d2e	01 20 2f	.   /
	or 088h			;6d31	f6 88		. .
	rst 38h			;6d33	ff		.
	adc a,b			;6d34	88		.
	nop			;6d35	00		.
	inc bc			;6d36	03		.
	jr nz,l6d77h		;6d37	20 3e		  >
	or 088h			;6d39	f6 88		. .
	rst 38h			;6d3b	ff		.
	adc a,b			;6d3c	88		.
	nop			;6d3d	00		.
	ld bc,03020h		;6d3e	01 20 30	.   0
	add hl,bc		;6d41	09		.
	adc a,c			;6d42	89		.
	inc de			;6d43	13		.
	adc a,c			;6d44	89		.
	nop			;6d45	00		.
	inc bc			;6d46	03		.
	jr nz,l6d7ah		;6d47	20 31		  1
	add hl,bc		;6d49	09		.
	adc a,c			;6d4a	89		.
	inc de			;6d4b	13		.
	adc a,c			;6d4c	89		.
	nop			;6d4d	00		.
	ld bc,04020h		;6d4e	01 20 40	.   @
	dec e			;6d51	1d		.
	adc a,c			;6d52	89		.
	ld c,h			;6d53	4c		L
	adc a,c			;6d54	89		.
	nop			;6d55	00		.
	inc bc			;6d56	03		.
	jr nz,$+72		;6d57	20 46		  F
	dec e			;6d59	1d		.
	adc a,c			;6d5a	89		.
	ld c,h			;6d5b	4c		L
	adc a,c			;6d5c	89		.
	nop			;6d5d	00		.
	ld bc,04d20h		;6d5e	01 20 4d	.   M
	ld a,d			;6d61	7a		z
	adc a,c			;6d62	89		.
	add a,h			;6d63	84		.
	adc a,c			;6d64	89		.
	nop			;6d65	00		.
	inc bc			;6d66	03		.
	jr nz,l6dd8h		;6d67	20 6f		  o
	ld a,d			;6d69	7a		z
	adc a,c			;6d6a	89		.
	add a,h			;6d6b	84		.
	adc a,c			;6d6c	89		.
	nop			;6d6d	00		.
	ld bc,05420h		;6d6e	01 20 54	.   T
	adc a,(hl)		;6d71	8e		.
	adc a,c			;6d72	89		.
	sbc a,l			;6d73	9d		.
	adc a,c			;6d74	89		.
	nop			;6d75	00		.
	inc bc			;6d76	03		.
l6d77h:
	jr nz,l6de5h		;6d77	20 6c		  l
	adc a,(hl)		;6d79	8e		.
l6d7ah:
	adc a,c			;6d7a	89		.
	sbc a,l			;6d7b	9d		.
	adc a,c			;6d7c	89		.
	nop			;6d7d	00		.
	ld bc,05f20h		;6d7e	01 20 5f	.   _
	xor l			;6d81	ad		.
	adc a,c			;6d82	89		.
	rst 0			;6d83	c7		.
	adc a,c			;6d84	89		.
	nop			;6d85	00		.
	ld bc,09f20h		;6d86	01 20 9f	.   .
	defb 0ddh,089h,0e7h ;illegal sequence	;6d89	dd 89 e7	. . .
	adc a,c			;6d8c	89		.
	nop			;6d8d	00		.
	ld bc,0a320h		;6d8e	01 20 a3	.   .
	rst 28h			;6d91	ef		.
	adc a,c			;6d92	89		.
	daa			;6d93	27		'
	adc a,d			;6d94	8a		.
	nop			;6d95	00		.
	ld bc,0ac20h		;6d96	01 20 ac	.   .
	ld e,a			;6d99	5f		_
	adc a,d			;6d9a	8a		.
	ld a,c			;6d9b	79		y
	adc a,d			;6d9c	8a		.
	nop			;6d9d	00		.
	ld bc,0b020h		;6d9e	01 20 b0	.   .
	sub e			;6da1	93		.
	adc a,d			;6da2	8a		.
	sbc a,l			;6da3	9d		.
	adc a,d			;6da4	8a		.
	nop			;6da5	00		.
	ld bc,0b420h		;6da6	01 20 b4	.   .
	and a			;6da9	a7		.
	adc a,d			;6daa	8a		.
	in a,(08ah)		;6dab	db 8a		. .
	nop			;6dad	00		.
	ld bc,0bd20h		;6dae	01 20 bd	.   .
	add hl,bc		;6db1	09		.
	adc a,e			;6db2	8b		.
	inc de			;6db3	13		.
	adc a,e			;6db4	8b		.
	nop			;6db5	00		.
	ld bc,09c20h		;6db6	01 20 9c	.   .
	dec e			;6db9	1d		.
	adc a,e			;6dba	8b		.
	add hl,hl		;6dbb	29		)
	adc a,e			;6dbc	8b		.
	nop			;6dbd	00		.
	nop			;6dbe	00		.
	djnz $-71		;6dbf	10 b7		. .
	ccf			;6dc1	3f		?
	adc a,e			;6dc2	8b		.
	rst 8			;6dc3	cf		.
	adc a,e			;6dc4	8b		.
	inc b			;6dc5	04		.
	nop			;6dc6	00		.
	ex af,af'		;6dc7	08		.
	ld bc,08c2dh		;6dc8	01 2d 8c	. - .
	ld e,h			;6dcb	5c		\
	adc a,h			;6dcc	8c		.
	inc b			;6dcd	04		.
	nop			;6dce	00		.
	ex af,af'		;6dcf	08		.
	ld a,(bc)		;6dd0	0a		.
	and d			;6dd1	a2		.
	adc a,h			;6dd2	8c		.
	ld c,(hl)		;6dd3	4e		N
	adc a,l			;6dd4	8d		.
	inc b			;6dd5	04		.
	ld (bc),a		;6dd6	02		.
	ex af,af'		;6dd7	08		.
l6dd8h:
	inc h			;6dd8	24		$
	and d			;6dd9	a2		.
	adc a,h			;6dda	8c		.
	ld c,(hl)		;6ddb	4e		N
	adc a,l			;6ddc	8d		.
	inc b			;6ddd	04		.
	nop			;6dde	00		.
	inc c			;6ddf	0c		.
	sub a			;6de0	97		.
	ld (bc),a		;6de1	02		.
	adc a,(hl)		;6de2	8e		.
	ld sp,hl		;6de3	f9		.
	adc a,(hl)		;6de4	8e		.
l6de5h:
	inc b			;6de5	04		.
	nop			;6de6	00		.
	ex af,af'		;6de7	08		.
	or a			;6de8	b7		.
	ret m			;6de9	f8		.
	adc a,a			;6dea	8f		.
	dec h			;6deb	25		%
	sub b			;6dec	90		.
	inc b			;6ded	04		.
	ld (bc),a		;6dee	02		.
	ex af,af'		;6def	08		.
	cp (hl)			;6df0	be		.
	ret m			;6df1	f8		.
	adc a,a			;6df2	8f		.
	dec h			;6df3	25		%
	sub b			;6df4	90		.
	inc b			;6df5	04		.
	nop			;6df6	00		.
	ex af,af'		;6df7	08		.
	push bc			;6df8	c5		.
	ld b,e			;6df9	43		C
	sub b			;6dfa	90		.
l6dfbh:
	adc a,c			;6dfb	89		.
	sub b			;6dfc	90		.
	inc b			;6dfd	04		.
	nop			;6dfe	00		.
	inc b			;6dff	04		.
	ld bc,090aeh		;6e00	01 ae 90	. . .
	pop bc			;6e03	c1		.
	sub c			;6e04	91		.
	inc b			;6e05	04		.
	ld (bc),a		;6e06	02		.
	inc b			;6e07	04		.
	ld hl,(090aeh)		;6e08	2a ae 90	* . .
	pop bc			;6e0b	c1		.
	sub c			;6e0c	91		.
	inc b			;6e0d	04		.
	nop			;6e0e	00		.
	inc b			;6e0f	04		.
	ld d,e			;6e10	53		S
	ld a,e			;6e11	7b		{
	sub d			;6e12	92		.
	defb 0fdh,093h,004h ;illegal sequence	;6e13	fd 93 04	. . .
	nop			;6e16	00		.
	inc b			;6e17	04		.
	or a			;6e18	b7		.
	ld b,b			;6e19	40		@
	sub l			;6e1a	95		.
	ld d,d			;6e1b	52		R
	sub l			;6e1c	95		.
	inc b			;6e1d	04		.
	rst 38h			;6e1e	ff		.
	ld b,a			;6e1f	47		G
	ld bc,04704h		;6e20	01 04 47	. . G
	cp (hl)			;6e23	be		.
	call 00503h		;6e24	cd 03 05	. . .
	ld (hl),b		;6e27	70		p
	rst 38h			;6e28	ff		.
	nop			;6e29	00		.
	nop			;6e2a	00		.
	dec d			;6e2b	15		.
	ld (de),a		;6e2c	12		.
	ld (hl),024h		;6e2d	36 24		6 $
	ld d,a			;6e2f	57		W
	ld (hl),002h		;6e30	36 02		6 .
	ld b,b			;6e32	40		@
	inc de			;6e33	13		.
	ld d,b			;6e34	50		P
	inc b			;6e35	04		.
	sub c			;6e36	91		.
	ld (hl),b		;6e37	70		p
	or c			;6e38	b1		.
	jr nc,l6dfbh		;6e39	30 c0		0 .
	rst 38h			;6e3b	ff		.
	rst 38h			;6e3c	ff		.
	rst 38h			;6e3d	ff		.
	inc bc			;6e3e	03		.
	ld bc,047b6h		;6e3f	01 b6 47	. . G
	call z,0ffcdh		;6e42	cc cd ff	. . .
	rst 38h			;6e45	ff		.
	rst 38h			;6e46	ff		.
	rst 38h			;6e47	ff		.
	ld b,a			;6e48	47		G
	ld bc,04704h		;6e49	01 04 47	. . G
	cp (hl)			;6e4c	be		.
	call 00503h		;6e4d	cd 03 05	. . .
	ld (hl),b		;6e50	70		p
	ld (bc),a		;6e51	02		.
	jr z,l6e7fh		;6e52	28 2b		( +
	ld (bc),a		;6e54	02		.
	ld b,b			;6e55	40		@
	ld c,e			;6e56	4b		K
	ld b,a			;6e57	47		G
	and e			;6e58	a3		.
	xor c			;6e59	a9		.
	inc bc			;6e5a	03		.
	xor h			;6e5b	ac		.
	xor (hl)		;6e5c	ae		.
	inc bc			;6e5d	03		.
	and b			;6e5e	a0		.
	and b			;6e5f	a0		.
	ld b,a			;6e60	47		G
	cp l			;6e61	bd		.
	cp l			;6e62	bd		.
	rst 38h			;6e63	ff		.
	jr nc,l6e66h		;6e64	30 00		0 .
l6e66h:
	ld b,b			;6e66	40		@
	djnz l6eb9h		;6e67	10 50		. P
	jr nz,l6e7dh		;6e69	20 12		  .
	ld (04424h),a		;6e6b	32 24 44	2 $ D
	inc (hl)		;6e6e	34		4
	ld d,(hl)		;6e6f	56		V
	ld h,h			;6e70	64		d
	sub a			;6e71	97		.
	ld b,a			;6e72	47		G
	or (hl)			;6e73	b6		.
	ld h,0c3h		;6e74	26 c3		& .
	rst 38h			;6e76	ff		.
	ld bc,00302h		;6e77	01 02 03	. . .
	inc b			;6e7a	04		.
	inc b			;6e7b	04		.
	dec b			;6e7c	05		.
l6e7dh:
	ld b,006h		;6e7d	06 06		. .
l6e7fh:
	rlca			;6e7f	07		.
	rlca			;6e80	07		.
	rlca			;6e81	07		.
	rlca			;6e82	07		.
	rst 38h			;6e83	ff		.
	nop			;6e84	00		.
	ret po			;6e85	e0		.
	ld bc,08b35h		;6e86	01 35 8b	. 5 .
	sub l			;6e89	95		.
	adc a,e			;6e8a	8b		.
	nop			;6e8b	00		.
	ld bc,00d80h		;6e8c	01 80 0d	. . .
	di			;6e8f	f3		.
	adc a,e			;6e90	8b		.
	sub (hl)		;6e91	96		.
	adc a,h			;6e92	8c		.
	nop			;6e93	00		.
	nop			;6e94	00		.
	ld (hl),b		;6e95	70		p
	dec c			;6e96	0d		.
	di			;6e97	f3		.
	adc a,e			;6e98	8b		.
	sub (hl)		;6e99	96		.
	adc a,h			;6e9a	8c		.
	nop			;6e9b	00		.
	ld bc,02480h		;6e9c	01 80 24	. . $
	ld a,(0808dh)		;6e9f	3a 8d 80	: . .
	adc a,l			;6ea2	8d		.
	nop			;6ea3	00		.
	inc bc			;6ea4	03		.
	add a,b			;6ea5	80		.
	ld l,03ah		;6ea6	2e 3a		. :
	adc a,l			;6ea8	8d		.
	add a,b			;6ea9	80		.
	adc a,l			;6eaa	8d		.
	nop			;6eab	00		.
	nop			;6eac	00		.
	ld h,b			;6ead	60		`
	inc h			;6eae	24		$
	ld a,(0808dh)		;6eaf	3a 8d 80	: . .
	adc a,l			;6eb2	8d		.
	nop			;6eb3	00		.
	ld (bc),a		;6eb4	02		.
	ld h,b			;6eb5	60		`
	ld l,03ah		;6eb6	2e 3a		. :
	adc a,l			;6eb8	8d		.
l6eb9h:
	add a,b			;6eb9	80		.
	adc a,l			;6eba	8d		.
	nop			;6ebb	00		.
	ld bc,04480h		;6ebc	01 80 44	. . D
	push bc			;6ebf	c5		.
	adc a,l			;6ec0	8d		.
	rst 20h			;6ec1	e7		.
	adc a,l			;6ec2	8d		.
	nop			;6ec3	00		.
	nop			;6ec4	00		.
	ld h,h			;6ec5	64		d
	jp z,08dc5h		;6ec6	ca c5 8d	. . .
	rst 20h			;6ec9	e7		.
	adc a,l			;6eca	8d		.
	nop			;6ecb	00		.
	nop			;6ecc	00		.
	call m,00858h		;6ecd	fc 58 08	. X .
	adc a,(hl)		;6ed0	8e		.
	ld (hl),08eh		;6ed1	36 8e		6 .
	nop			;6ed3	00		.
	ld (bc),a		;6ed4	02		.
	call m,0085eh		;6ed5	fc 5e 08	. ^ .
	adc a,(hl)		;6ed8	8e		.
	ld (hl),08eh		;6ed9	36 8e		6 .
	nop			;6edb	00		.
	ld bc,064fch		;6edc	01 fc 64	. . d
	ex af,af'		;6edf	08		.
	adc a,(hl)		;6ee0	8e		.
	ld (hl),08eh		;6ee1	36 8e		6 .
	nop			;6ee3	00		.
l6ee4h:
	inc bc			;6ee4	03		.
	call m,0086ah		;6ee5	fc 6a 08	. j .
	adc a,(hl)		;6ee8	8e		.
	ld (hl),08eh		;6ee9	36 8e		6 .
	nop			;6eeb	00		.
	nop			;6eec	00		.
	call m,05970h		;6eed	fc 70 59	. p Y
	adc a,(hl)		;6ef0	8e		.
	xor 08eh		;6ef1	ee 8e		. .
	nop			;6ef3	00		.
	nop			;6ef4	00		.
	sub b			;6ef5	90		.
l6ef6h:
	sub b			;6ef6	90		.
	ld d,c			;6ef7	51		Q
	adc a,a			;6ef8	8f		.
	xor a			;6ef9	af		.
	adc a,a			;6efa	8f		.
	nop			;6efb	00		.
	nop			;6efc	00		.
	add a,b			;6efd	80		.
l6efeh:
	cp h			;6efe	bc		.
	ret m			;6eff	f8		.
	adc a,a			;6f00	8f		.
	dec d			;6f01	15		.
	sub b			;6f02	90		.
	nop			;6f03	00		.
	ld bc,03890h		;6f04	01 90 38	. . 8
	daa			;6f07	27		'
	sub b			;6f08	90		.
	ld a,l			;6f09	7d		}
	sub b			;6f0a	90		.
	nop			;6f0b	00		.
	nop			;6f0c	00		.
	jr nz,l6f47h		;6f0d	20 38		  8
	daa			;6f0f	27		'
	sub b			;6f10	90		.
	ld a,l			;6f11	7d		}
	sub b			;6f12	90		.
	nop			;6f13	00		.
	nop			;6f14	00		.
	ld b,b			;6f15	40		@
	jr c,l6ef6h		;6f16	38 de		8 .
	sub b			;6f18	90		.
	ld e,d			;6f19	5a		Z
	sub c			;6f1a	91		.
	nop			;6f1b	00		.
	ld (bc),a		;6f1c	02		.
	ld b,b			;6f1d	40		@
	ld c,b			;6f1e	48		H
	sbc a,090h		;6f1f	de 90		. .
	ld e,d			;6f21	5a		Z
l6f22h:
	sub c			;6f22	91		.
	nop			;6f23	00		.
	nop			;6f24	00		.
	ret c			;6f25	d8		.
	add a,e			;6f26	83		.
	jp nz,01c91h		;6f27	c2 91 1c	. . .
	sub d			;6f2a	92		.
	nop			;6f2b	00		.
	nop			;6f2c	00		.
	ld b,b			;6f2d	40		@
	adc a,(hl)		;6f2e	8e		.
	ld l,e			;6f2f	6b		k
	sub d			;6f30	92		.
	rlca			;6f31	07		.
	sub e			;6f32	93		.
	nop			;6f33	00		.
	ld (bc),a		;6f34	02		.
	ld b,b			;6f35	40		@
	and d			;6f36	a2		.
	ld l,e			;6f37	6b		k
	sub d			;6f38	92		.
	rlca			;6f39	07		.
	sub e			;6f3a	93		.
	nop			;6f3b	00		.
	nop			;6f3c	00		.
	ld b,b			;6f3d	40		@
	cp d			;6f3e	ba		.
	ld c,(hl)		;6f3f	4e		N
	sub e			;6f40	93		.
	sub l			;6f41	95		.
	sub e			;6f42	93		.
	nop			;6f43	00		.
	nop			;6f44	00		.
	ld h,b			;6f45	60		`
	or (hl)			;6f46	b6		.
l6f47h:
	ret c			;6f47	d8		.
	sub e			;6f48	93		.
	rst 30h			;6f49	f7		.
l6f4ah:
	sub e			;6f4a	93		.
	nop			;6f4b	00		.
	nop			;6f4c	00		.
	inc h			;6f4d	24		$
	ld b,a			;6f4e	47		G
	ld d,094h		;6f4f	16 94		. .
	ld (hl),a		;6f51	77		w
	sub h			;6f52	94		.
	nop			;6f53	00		.
	nop			;6f54	00		.
l6f55h:
	inc h			;6f55	24		$
	sub b			;6f56	90		.
	call z,0fa94h		;6f57	cc 94 fa	. . .
	sub h			;6f5a	94		.
	nop			;6f5b	00		.
	ld bc,05680h		;6f5c	01 80 56	. . V
	jr z,l6ef6h		;6f5f	28 95		( .
	ld a,(00095h)		;6f61	3a 95 00	: . .
	nop			;6f64	00		.
	jr nz,l6fbdh		;6f65	20 56		  V
	jr z,l6efeh		;6f67	28 95		( .
	ld a,(00095h)		;6f69	3a 95 00	: . .
	ld bc,0a080h		;6f6c	01 80 a0	. . .
	ld c,h			;6f6f	4c		L
	sub l			;6f70	95		.
	adc a,e			;6f71	8b		.
	sub l			;6f72	95		.
	nop			;6f73	00		.
	nop			;6f74	00		.
	jr nz,$-94		;6f75	20 a0		  .
	ld c,h			;6f77	4c		L
	sub l			;6f78	95		.
	adc a,e			;6f79	8b		.
	sub l			;6f7a	95		.
	nop			;6f7b	00		.
	ld bc,0c380h		;6f7c	01 80 c3	. . .
	cp c			;6f7f	b9		.
	sub l			;6f80	95		.
	di			;6f81	f3		.
	sub l			;6f82	95		.
	nop			;6f83	00		.
	nop			;6f84	00		.
	jr nz,l6f4ah		;6f85	20 c3		  .
	cp c			;6f87	b9		.
	sub l			;6f88	95		.
	di			;6f89	f3		.
	sub l			;6f8a	95		.
	nop			;6f8b	00		.
	nop			;6f8c	00		.
	djnz l6f94h		;6f8d	10 05		. .
	daa			;6f8f	27		'
	sub (hl)		;6f90	96		.
	ld h,c			;6f91	61		a
	sub (hl)		;6f92	96		.
	nop			;6f93	00		.
l6f94h:
	ld (bc),a		;6f94	02		.
	djnz l6fa3h		;6f95	10 0c		. .
	daa			;6f97	27		'
	sub (hl)		;6f98	96		.
	ld h,c			;6f99	61		a
	sub (hl)		;6f9a	96		.
	nop			;6f9b	00		.
	nop			;6f9c	00		.
	djnz l6f22h		;6f9d	10 83		. .
	sub b			;6f9f	90		.
	sub (hl)		;6fa0	96		.
	cp l			;6fa1	bd		.
	sub (hl)		;6fa2	96		.
l6fa3h:
	nop			;6fa3	00		.
	nop			;6fa4	00		.
	djnz l6f47h		;6fa5	10 a0		. .
	jp z,0f896h		;6fa7	ca 96 f8	. . .
	sub (hl)		;6faa	96		.
	nop			;6fab	00		.
	ld (bc),a		;6fac	02		.
	djnz l6f55h		;6fad	10 a6		. .
	jp z,0f896h		;6faf	ca 96 f8	. . .
	sub (hl)		;6fb2	96		.
	nop			;6fb3	00		.
	nop			;6fb4	00		.
	ex af,af'		;6fb5	08		.
	ld bc,09716h		;6fb6	01 16 97	. . .
	ld l,d			;6fb9	6a		j
	sbc a,b			;6fba	98		.
	nop			;6fbb	00		.
	ld (bc),a		;6fbc	02		.
l6fbdh:
	ex af,af'		;6fbd	08		.
	inc l			;6fbe	2c		,
	ld d,097h		;6fbf	16 97		. .
	ld l,d			;6fc1	6a		j
	sbc a,b			;6fc2	98		.
	nop			;6fc3	00		.
	nop			;6fc4	00		.
	ex af,af'		;6fc5	08		.
	sbc a,a			;6fc6	9f		.
	ld l,b			;6fc7	68		h
	sbc a,c			;6fc8	99		.
	cp e			;6fc9	bb		.
	sbc a,c			;6fca	99		.
	nop			;6fcb	00		.
	nop			;6fcc	00		.
	ex af,af'		;6fcd	08		.
	xor h			;6fce	ac		.
	rst 20h			;6fcf	e7		.
	sbc a,c			;6fd0	99		.
	add hl,hl		;6fd1	29		)
	sbc a,d			;6fd2	9a		.
	nop			;6fd3	00		.
	ld (bc),a		;6fd4	02		.
	ex af,af'		;6fd5	08		.
	or h			;6fd6	b4		.
	rst 20h			;6fd7	e7		.
	sbc a,c			;6fd8	99		.
	add hl,hl		;6fd9	29		)
	sbc a,d			;6fda	9a		.
	nop			;6fdb	00		.
	nop			;6fdc	00		.
	ex af,af'		;6fdd	08		.
	cp h			;6fde	bc		.
	ld e,h			;6fdf	5c		\
	sbc a,d			;6fe0	9a		.
	call po,0009ah		;6fe1	e4 9a 00	. . .
	nop			;6fe4	00		.
	inc b			;6fe5	04		.
	ld bc,09b5dh		;6fe6	01 5d 9b	. ] .
	ld (hl),l		;6fe9	75		u
	sbc a,h			;6fea	9c		.
	nop			;6feb	00		.
	ld (bc),a		;6fec	02		.
	inc b			;6fed	04		.
	inc h			;6fee	24		$
	ld e,l			;6fef	5d		]
	sbc a,e			;6ff0	9b		.
	ld (hl),l		;6ff1	75		u
	sbc a,h			;6ff2	9c		.
	nop			;6ff3	00		.
	nop			;6ff4	00		.
	inc b			;6ff5	04		.
	sbc a,c			;6ff6	99		.
	ld (de),a		;6ff7	12		.
	sbc a,l			;6ff8	9d		.
	ld l,09dh		;6ff9	2e 9d		. .
	nop			;6ffb	00		.
	nop			;6ffc	00		.
	inc b			;6ffd	04		.
	xor l			;6ffe	ad		.
	ld h,a			;6fff	67		g
	sbc a,l			;7000	9d		.
	ld b,a			;7001	47		G
	sbc a,(hl)		;7002	9e		.
	nop			;7003	00		.
	nop			;7004	00		.
	ld (bc),a		;7005	02		.
	ld bc,09cedh		;7006	01 ed 9c	. . .
	ld (hl),c		;7009	71		q
	sbc a,l			;700a	9d		.
	inc b			;700b	04		.
	nop			;700c	00		.
	ld (bc),a		;700d	02		.
	ld a,(de)		;700e	1a		.
	sbc a,e			;700f	9b		.
	sbc a,l			;7010	9d		.
	ld (hl),d		;7011	72		r
	sbc a,a			;7012	9f		.
	inc b			;7013	04		.
	nop			;7014	00		.
	ld (bc),a		;7015	02		.
	ld d,a			;7016	57		W
	ld e,c			;7017	59		Y
	and b			;7018	a0		.
	and l			;7019	a5		.
	and b			;701a	a0		.
	inc b			;701b	04		.
l701ch:
	nop			;701c	00		.
	ld (bc),a		;701d	02		.
	sra b			;701e	cb 28		. (
	ld a,c			;7020	79		y
	inc sp			;7021	33		3
	ld a,c			;7022	79		y
	inc b			;7023	04		.
	nop			;7024	00		.
	ld (bc),a		;7025	02		.
	srl a			;7026	cb 3f		. ?
	ld b,b			;7028	40		@
	inc a			;7029	3c		<
	ld b,b			;702a	40		@
	nop			;702b	00		.
	cp 000h			;702c	fe 00		. .
	nop			;702e	00		.
	nop			;702f	00		.
	nop			;7030	00		.
	nop			;7031	00		.
	nop			;7032	00		.
	nop			;7033	00		.
	nop			;7034	00		.
	nop			;7035	00		.
	nop			;7036	00		.
	nop			;7037	00		.
	nop			;7038	00		.
	dec b			;7039	05		.
	ld b,007h		;703a	06 07		. .
	ex af,af'		;703c	08		.
	rst 38h			;703d	ff		.
	nop			;703e	00		.
	ex af,af'		;703f	08		.
	ld bc,l6ee4h		;7040	01 e4 6e	. . n
	dec a			;7043	3d		=
	ld l,a			;7044	6f		o
	inc b			;7045	04		.
	nop			;7046	00		.
	ex af,af'		;7047	08		.
	jr nz,l70c0h		;7048	20 76		  v
	ld l,a			;704a	6f		o
	or 06fh			;704b	f6 6f		. o
	inc b			;704d	04		.
	nop			;704e	00		.
	inc b			;704f	04		.
	ld bc,l7070h		;7050	01 70 70	. p p
	ret			;7053	c9		.
	ld (hl),b		;7054	70		p
	inc b			;7055	04		.
	nop			;7056	00		.
	inc b			;7057	04		.
	ld c,002h		;7058	0e 02		. .
	ld (hl),c		;705a	71		q
	rra			;705b	1f		.
	ld (hl),c		;705c	71		q
	inc b			;705d	04		.
	nop			;705e	00		.
	inc b			;705f	04		.
	inc de			;7060	13		.
	ld (hl),071h		;7061	36 71		6 q
	ld (hl),a		;7063	77		w
	ld (hl),c		;7064	71		q
	inc b			;7065	04		.
	nop			;7066	00		.
	inc b			;7067	04		.
	jr nz,l701ch		;7068	20 b2		  .
	ld (hl),c		;706a	71		q
	ld e,h			;706b	5c		\
	ld (hl),h		;706c	74		t
	inc b			;706d	04		.
	nop			;706e	00		.
	inc b			;706f	04		.
l7070h:
	add a,h			;7070	84		.
	xor l			;7071	ad		.
	halt			;7072	76		v
	rst 20h			;7073	e7		.
	halt			;7074	76		v
	inc b			;7075	04		.
	nop			;7076	00		.
	inc b			;7077	04		.
	adc a,e			;7078	8b		.
	ld a,(de)		;7079	1a		.
	ld (hl),a		;707a	77		w
	ld c,a			;707b	4f		O
	ld (hl),a		;707c	77		w
	inc b			;707d	04		.
	nop			;707e	00		.
	inc b			;707f	04		.
	sub d			;7080	92		.
	add a,e			;7081	83		.
	ld (hl),a		;7082	77		w
	xor a			;7083	af		.
	ld (hl),a		;7084	77		w
	inc b			;7085	04		.
	nop			;7086	00		.
	inc b			;7087	04		.
	sbc a,d			;7088	9a		.
	jp nc,00c77h		;7089	d2 77 0c	. w .
	ld a,b			;708c	78		x
	inc b			;708d	04		.
	nop			;708e	00		.
	ld b,0a5h		;708f	06 a5		. .
	ld b,(hl)		;7091	46		F
	ld a,b			;7092	78		x
	ld l,(hl)		;7093	6e		n
	ld a,b			;7094	78		x
	inc b			;7095	04		.
	nop			;7096	00		.
	inc b			;7097	04		.
	xor (hl)		;7098	ae		.
	add a,l			;7099	85		.
	ld a,b			;709a	78		x
	jp nz,00478h		;709b	c2 78 04	. x .
	nop			;709e	00		.
	ld b,0c8h		;709f	06 c8		. .
	ld e,079h		;70a1	1e 79		. y
	dec h			;70a3	25		%
	ld a,c			;70a4	79		y
	inc b			;70a5	04		.
	nop			;70a6	00		.
	inc b			;70a7	04		.
	sra b			;70a8	cb 28		. (
	ld a,c			;70aa	79		y
	inc sp			;70ab	33		3
	ld a,c			;70ac	79		y
	inc b			;70ad	04		.
	ld bc,0cb02h		;70ae	01 02 cb	. . .
	jr z,l712ch		;70b1	28 79		( y
	inc sp			;70b3	33		3
	ld a,c			;70b4	79		y
	inc b			;70b5	04		.
	ld bc,00102h		;70b6	01 02 01	. . .
	ld (hl),b		;70b9	70		p
	ld (hl),b		;70ba	70		p
	ret			;70bb	c9		.
	ld (hl),b		;70bc	70		p
	inc b			;70bd	04		.
	nop			;70be	00		.
	ld (bc),a		;70bf	02		.
l70c0h:
	ld c,03ah		;70c0	0e 3a		. :
	ld a,c			;70c2	79		y
	ld d,l			;70c3	55		U
	ld a,c			;70c4	79		y
	inc b			;70c5	04		.
	ld bc,01302h		;70c6	01 02 13	. . .
	ld (hl),071h		;70c9	36 71		6 q
	ld (hl),a		;70cb	77		w
	ld (hl),c		;70cc	71		q
	inc b			;70cd	04		.
	ld bc,02002h		;70ce	01 02 20	. .  
	or d			;70d1	b2		.
	ld (hl),c		;70d2	71		q
	ld e,h			;70d3	5c		\
	ld (hl),h		;70d4	74		t
	inc b			;70d5	04		.
	nop			;70d6	00		.
	ld (bc),a		;70d7	02		.
	add a,h			;70d8	84		.
	ld l,d			;70d9	6a		j
	ld a,c			;70da	79		y
	and h			;70db	a4		.
	ld a,c			;70dc	79		y
	inc b			;70dd	04		.
	ld bc,08b02h		;70de	01 02 8b	. . .
	ld a,(de)		;70e1	1a		.
	ld (hl),a		;70e2	77		w
	ld c,a			;70e3	4f		O
	ld (hl),a		;70e4	77		w
	inc b			;70e5	04		.
	nop			;70e6	00		.
	ld (bc),a		;70e7	02		.
	sub d			;70e8	92		.
	call 00379h		;70e9	cd 79 03	. y .
	ld a,d			;70ec	7a		z
	inc b			;70ed	04		.
	ld bc,09a02h		;70ee	01 02 9a	. . .
	jp nc,00c77h		;70f1	d2 77 0c	. w .
	ld a,b			;70f4	78		x
	inc b			;70f5	04		.
	nop			;70f6	00		.
	ld (bc),a		;70f7	02		.
	xor (hl)		;70f8	ae		.
	ld l,07ah		;70f9	2e 7a		. z
	ld l,b			;70fb	68		h
	ld a,d			;70fc	7a		z
	inc b			;70fd	04		.
	ld bc,00101h		;70fe	01 01 01	. . .
	call po,03d6eh		;7101	e4 6e 3d	. n =
	ld l,a			;7104	6f		o
	inc b			;7105	04		.
	ld bc,02001h		;7106	01 01 20	. .  
	halt			;7109	76		v
	ld l,a			;710a	6f		o
	or 06fh			;710b	f6 6f		. o
	inc b			;710d	04		.
	nop			;710e	00		.
	inc b			;710f	04		.
	ret nz			;7110	c0		.
	pop bc			;7111	c1		.
	ld a,d			;7112	7a		z
	jp nc,0047ah		;7113	d2 7a 04	. z .
	ld bc,0c002h		;7116	01 02 c0	. . .
	pop bc			;7119	c1		.
	ld a,d			;711a	7a		z
	jp nc,0047ah		;711b	d2 7a 04	. z .
	nop			;711e	00		.
	inc b			;711f	04		.
	jp nz,07addh		;7120	c2 dd 7a	. . z
	or 07ah			;7123	f6 7a		. z
	inc b			;7125	04		.
	ld (bc),a		;7126	02		.
	inc b			;7127	04		.
	push bc			;7128	c5		.
	defb 0ddh,07ah,0f6h ;illegal sequence	;7129	dd 7a f6	. z .
l712ch:
	ld a,d			;712c	7a		z
	inc b			;712d	04		.
	ld bc,0c202h		;712e	01 02 c2	. . .
	defb 0ddh,07ah,0f6h ;illegal sequence	;7131	dd 7a f6	. z .
	ld a,d			;7134	7a		z
	inc b			;7135	04		.
	inc bc			;7136	03		.
	ld (bc),a		;7137	02		.
	push bc			;7138	c5		.
	defb 0ddh,07ah,0f6h ;illegal sequence	;7139	dd 7a f6	. z .
	ld a,d			;713c	7a		z
	inc b			;713d	04		.
	rst 38h			;713e	ff		.
	inc bc			;713f	03		.
	ld bc,00257h		;7140	01 57 02	. W .
	jp 047c5h		;7143	c3 c5 47	. . G
	add a,0c9h		;7146	c6 c9		. .
	inc bc			;7148	03		.
	jp z,0ffcdh		;7149	ca cd ff	. . .
	rst 38h			;714c	ff		.
	rst 38h			;714d	ff		.
	rst 38h			;714e	ff		.
	ld (bc),a		;714f	02		.
	ld bc,00257h		;7150	01 57 02	. W .
	xor h			;7153	ac		.
	call 000ffh		;7154	cd ff 00	. . .
	nop			;7157	00		.
	inc bc			;7158	03		.
	djnz l716fh		;7159	10 14		. .
	ld hl,03225h		;715b	21 25 32	! % 2
	ld (hl),043h		;715e	36 43		6 C
	ld b,a			;7160	47		G
	ld d,l			;7161	55		U
	ld (05692h),hl		;7162	22 92 56	" . V
	or (hl)			;7165	b6		.
	inc d			;7166	14		.
	call nz,0ffffh		;7167	c4 ff ff	. . .
	rst 38h			;716a	ff		.
	inc bc			;716b	03		.
	ld a,(de)		;716c	1a		.
	ld d,(hl)		;716d	56		V
	inc bc			;716e	03		.
l716fh:
	set 1,l			;716f	cb cd		. .
	rst 38h			;7171	ff		.
	rst 38h			;7172	ff		.
	rst 38h			;7173	ff		.
	rst 38h			;7174	ff		.
	inc bc			;7175	03		.
	jr nz,l71f7h		;7176	20 7f		  .
	ld (bc),a		;7178	02		.
	add a,b			;7179	80		.
	cp a			;717a	bf		.
	ld b,a			;717b	47		G
	ret nz			;717c	c0		.
	rst 0			;717d	c7		.
	ld b,a			;717e	47		G
	set 1,l			;717f	cb cd		. .
	rst 38h			;7181	ff		.
	ld bc,00201h		;7182	01 01 02	. . .
	ld (de),a		;7185	12		.
	inc bc			;7186	03		.
	inc hl			;7187	23		#
	jr nz,$+51		;7188	20 31		  1
	jr nc,l71ceh		;718a	30 42		0 B
	ld b,b			;718c	40		@
	ld d,e			;718d	53		S
	ld d,b			;718e	50		P
	sub h			;718f	94		.
	jr nc,$-78		;7190	30 b0		0 .
	ld d,b			;7192	50		P
	ret nz			;7193	c0		.
	rst 38h			;7194	ff		.
	ld bc,00302h		;7195	01 02 03	. . .
	rlca			;7198	07		.
	ld bc,00302h		;7199	01 02 03	. . .
	rlca			;719c	07		.
	ld bc,00302h		;719d	01 02 03	. . .
	rlca			;71a0	07		.
	ld bc,00302h		;71a1	01 02 03	. . .
	rlca			;71a4	07		.
	rst 38h			;71a5	ff		.
	nop			;71a6	00		.
	jr nz,l71b9h		;71a7	20 10		  .
	ld c,e			;71a9	4b		K
	and c			;71aa	a1		.
	adc a,c			;71ab	89		.
	and c			;71ac	a1		.
	inc b			;71ad	04		.
	ld bc,01080h		;71ae	01 80 10	. . .
	ld c,e			;71b1	4b		K
	and c			;71b2	a1		.
	adc a,c			;71b3	89		.
l71b4h:
	and c			;71b4	a1		.
	inc b			;71b5	04		.
	nop			;71b6	00		.
	ld h,b			;71b7	60		`
	dec de			;71b8	1b		.
l71b9h:
	jp z,0d9a1h		;71b9	ca a1 d9	. . .
	and c			;71bc	a1		.
	inc b			;71bd	04		.
	ld bc,01b80h		;71be	01 80 1b	. . .
	jp z,0d9a1h		;71c1	ca a1 d9	. . .
	and c			;71c4	a1		.
	inc b			;71c5	04		.
	nop			;71c6	00		.
	jr nz,l71e9h		;71c7	20 20		   
	ex de,hl		;71c9	eb		.
	and c			;71ca	a1		.
	ld b,l			;71cb	45		E
	and l			;71cc	a5		.
	inc b			;71cd	04		.
l71ceh:
	ld bc,02080h		;71ce	01 80 20	. .  
	ex de,hl		;71d1	eb		.
	and c			;71d2	a1		.
	ld b,l			;71d3	45		E
	and l			;71d4	a5		.
	inc b			;71d5	04		.
	nop			;71d6	00		.
	ld h,b			;71d7	60		`
	sbc a,l			;71d8	9d		.
	rst 0			;71d9	c7		.
	xor b			;71da	a8		.
	ret c			;71db	d8		.
	xor b			;71dc	a8		.
	inc b			;71dd	04		.
	ld bc,09d80h		;71de	01 80 9d	. . .
	rst 0			;71e1	c7		.
	xor b			;71e2	a8		.
	ret c			;71e3	d8		.
	xor b			;71e4	a8		.
	inc b			;71e5	04		.
	nop			;71e6	00		.
	ret po			;71e7	e0		.
	sbc a,c			;71e8	99		.
l71e9h:
	and (hl)		;71e9	a6		.
	xor b			;71ea	a8		.
	cp b			;71eb	b8		.
	xor b			;71ec	a8		.
	inc b			;71ed	04		.
	ld bc,09be0h		;71ee	01 e0 9b	. . .
	and (hl)		;71f1	a6		.
	xor b			;71f2	a8		.
	cp b			;71f3	b8		.
	xor b			;71f4	a8		.
	inc b			;71f5	04		.
	nop			;71f6	00		.
l71f7h:
	ld h,b			;71f7	60		`
	sub a			;71f8	97		.
	add a,l			;71f9	85		.
	xor b			;71fa	a8		.
	sub a			;71fb	97		.
	xor b			;71fc	a8		.
	inc b			;71fd	04		.
	ld bc,09780h		;71fe	01 80 97	. . .
	add a,l			;7201	85		.
	xor b			;7202	a8		.
	sub a			;7203	97		.
	xor b			;7204	a8		.
	inc b			;7205	04		.
	nop			;7206	00		.
	and b			;7207	a0		.
	and b			;7208	a0		.
l7209h:
	jp pe,036a8h		;7209	ea a8 36	. . 6
	xor c			;720c	a9		.
	inc b			;720d	04		.
	ld bc,0a040h		;720e	01 40 a0	. @ .
	jp pe,036a8h		;7211	ea a8 36	. . 6
	xor c			;7214	a9		.
	inc b			;7215	04		.
	nop			;7216	00		.
	ld h,b			;7217	60		`
	or b			;7218	b0		.
	add a,b			;7219	80		.
	xor c			;721a	a9		.
	sbc a,b			;721b	98		.
	xor c			;721c	a9		.
	inc b			;721d	04		.
	nop			;721e	00		.
	and b			;721f	a0		.
	or e			;7220	b3		.
	or b			;7221	b0		.
	xor c			;7222	a9		.
	rst 0			;7223	c7		.
l7224h:
	xor c			;7224	a9		.
	inc b			;7225	04		.
	nop			;7226	00		.
	ld b,b			;7227	40		@
	jr nz,l7209h		;7228	20 df		  .
	xor c			;722a	a9		.
	ld l,d			;722b	6a		j
	xor d			;722c	aa		.
	inc b			;722d	04		.
	ld bc,04040h		;722e	01 40 40	. @ @
	rst 18h			;7231	df		.
	xor c			;7232	a9		.
	ld l,d			;7233	6a		j
	xor d			;7234	aa		.
	inc b			;7235	04		.
	nop			;7236	00		.
	ld b,b			;7237	40		@
	ld h,b			;7238	60		`
	ld sp,hl		;7239	f9		.
	xor d			;723a	aa		.
	sbc a,b			;723b	98		.
	xor e			;723c	ab		.
	inc b			;723d	04		.
	ld bc,08040h		;723e	01 40 80	. @ .
	ld sp,hl		;7241	f9		.
	xor d			;7242	aa		.
	sbc a,b			;7243	98		.
	xor e			;7244	ab		.
	inc b			;7245	04		.
	nop			;7246	00		.
	ret po			;7247	e0		.
	xor e			;7248	ab		.
	ld b,l			;7249	45		E
	xor h			;724a	ac		.
	ld l,a			;724b	6f		o
	xor h			;724c	ac		.
	inc b			;724d	04		.
	nop			;724e	00		.
	ld b,b			;724f	40		@
	cp a			;7250	bf		.
	sub h			;7251	94		.
l7252h:
	xor h			;7252	ac		.
	ld sp,hl		;7253	f9		.
	xor h			;7254	ac		.
	inc b			;7255	04		.
	nop			;7256	00		.
	add a,b			;7257	80		.
	cp c			;7258	b9		.
	ld l,d			;7259	6a		j
	xor l			;725a	ad		.
	and c			;725b	a1		.
	xor l			;725c	ad		.
	inc b			;725d	04		.
	nop			;725e	00		.
	ld b,b			;725f	40		@
	cp e			;7260	bb		.
	exx			;7261	d9		.
	xor l			;7262	ad		.
	ret m			;7263	f8		.
	xor l			;7264	ad		.
	inc b			;7265	04		.
	nop			;7266	00		.
	jr nz,l7224h		;7267	20 bb		  .
	add hl,de		;7269	19		.
	xor (hl)		;726a	ae		.
	ld a,0aeh		;726b	3e ae		> .
	inc b			;726d	04		.
	cp 001h			;726e	fe 01		. .
	ld bc,00001h		;7270	01 01 00	. . .
	ld (bc),a		;7273	02		.
	ld (bc),a		;7274	02		.
	ld (bc),a		;7275	02		.
	nop			;7276	00		.
	inc bc			;7277	03		.
	inc bc			;7278	03		.
	inc bc			;7279	03		.
l727ah:
	nop			;727a	00		.
	inc b			;727b	04		.
	inc b			;727c	04		.
	inc b			;727d	04		.
	nop			;727e	00		.
	rst 38h			;727f	ff		.
	nop			;7280	00		.
	and b			;7281	a0		.
	ld bc,0a0c4h		;7282	01 c4 a0	. . .
	sbc a,0a0h		;7285	de a0		. .
	inc b			;7287	04		.
	inc bc			;7288	03		.
	ld d,b			;7289	50		P
	ld bc,0a0c4h		;728a	01 c4 a0	. . .
	sbc a,0a0h		;728d	de a0		. .
	inc b			;728f	04		.
	nop			;7290	00		.
	jr nc,l7297h		;7291	30 04		0 .
	push af			;7293	f5		.
	and b			;7294	a0		.
	rlca			;7295	07		.
	and c			;7296	a1		.
l7297h:
	inc b			;7297	04		.
	inc bc			;7298	03		.
	ret nz			;7299	c0		.
	inc b			;729a	04		.
	push af			;729b	f5		.
	and b			;729c	a0		.
	rlca			;729d	07		.
	and c			;729e	a1		.
	inc b			;729f	04		.
	nop			;72a0	00		.
	ld d,b			;72a1	50		P
	ld b,019h		;72a2	06 19		. .
	and c			;72a4	a1		.
	inc sp			;72a5	33		3
	and c			;72a6	a1		.
	inc b			;72a7	04		.
	inc bc			;72a8	03		.
	and b			;72a9	a0		.
	ld b,019h		;72aa	06 19		. .
	and c			;72ac	a1		.
	inc sp			;72ad	33		3
	and c			;72ae	a1		.
	inc b			;72af	04		.
	rst 38h			;72b0	ff		.
	inc bc			;72b1	03		.
	jr nz,l727ah		;72b2	20 c6		  .
	ld b,a			;72b4	47		G
	rst 0			;72b5	c7		.
	set 7,a			;72b6	cb ff		. .
	rlca			;72b8	07		.
	nop			;72b9	00		.
	xor d			;72ba	aa		.
	ld c,d			;72bb	4a		J
	inc b			;72bc	04		.
	dec c			;72bd	0d		.
	rlca			;72be	07		.
	inc a			;72bf	3c		<
	jp z,0044bh		;72c0	ca 4b 04	. K .
	dec c			;72c3	0d		.
	rlca			;72c4	07		.
	call m,0501fh		;72c5	fc 1f 50	. . P
	inc b			;72c8	04		.
	ld h,b			;72c9	60		`
	rlca			;72ca	07		.
	call z,04fe6h		;72cb	cc e6 4f	. . O
	inc b			;72ce	04		.
	ld h,a			;72cf	67		g
	rlca			;72d0	07		.
	call c,0504bh		;72d1	dc 4b 50	. K P
	inc b			;72d4	04		.
	ld h,d			;72d5	62		b
	nop			;72d6	00		.
	inc bc			;72d7	03		.
	ld c,h			;72d8	4c		L
	pop hl			;72d9	e1		.
	ld c,e			;72da	4b		K
	inc b			;72db	04		.
	ld (de),a		;72dc	12		.
	inc bc			;72dd	03		.
	ld c,h			;72de	4c		L
	pop hl			;72df	e1		.
	ld c,e			;72e0	4b		K
	inc b			;72e1	04		.
	ld l,b			;72e2	68		h
	inc bc			;72e3	03		.
	ld d,h			;72e4	54		T
	inc de			;72e5	13		.
	ld c,l			;72e6	4d		M
	inc b			;72e7	04		.
	jr l72edh		;72e8	18 03		. .
	ld e,h			;72ea	5c		\
	sub c			;72eb	91		.
	ld c,l			;72ec	4d		M
l72edh:
	inc b			;72ed	04		.
	dec d			;72ee	15		.
	inc bc			;72ef	03		.
	ld l,h			;72f0	6c		l
	ld h,h			;72f1	64		d
	ld c,h			;72f2	4c		L
	inc b			;72f3	04		.
	ld de,08401h		;72f4	11 01 84	. . .
	add a,(hl)		;72f7	86		.
	ld d,c			;72f8	51		Q
	inc b			;72f9	04		.
	ld e,002h		;72fa	1e 02		. .
	add a,h			;72fc	84		.
	ld sp,00451h		;72fd	31 51 04	1 Q .
	ld d,l			;7300	55		U
	inc bc			;7301	03		.
	and b			;7302	a0		.
	rlca			;7303	07		.
	ld d,d			;7304	52		R
	inc b			;7305	04		.
	rra			;7306	1f		.
	inc bc			;7307	03		.
	ret z			;7308	c8		.
	jr nc,l735bh		;7309	30 50		0 P
	inc b			;730b	04		.
	ld (hl),b		;730c	70		p
	inc bc			;730d	03		.
	ld h,h			;730e	64		d
	ld c,a			;730f	4f		O
	ld c,l			;7310	4d		M
	inc b			;7311	04		.
	djnz l7317h		;7312	10 03		. .
	sub h			;7314	94		.
	ld (hl),e		;7315	73		s
	ld d,c			;7316	51		Q
l7317h:
	inc b			;7317	04		.
	ld h,c			;7318	61		a
	inc b			;7319	04		.
	ld d,b			;731a	50		P
	sbc a,l			;731b	9d		.
	ld l,h			;731c	6c		l
	inc b			;731d	04		.
	ld h,h			;731e	64		d
	inc b			;731f	04		.
	sbc a,b			;7320	98		.
	and 052h		;7321	e6 52		. R
	inc b			;7323	04		.
	ld b,b			;7324	40		@
	nop			;7325	00		.
	rlca			;7326	07		.
	ret c			;7327	d8		.
	in a,(04fh)		;7328	db 4f		. O
	inc b			;732a	04		.
	ld h,a			;732b	67		g
	inc bc			;732c	03		.
	call z,04d13h		;732d	cc 13 4d	. . M
	inc b			;7330	04		.
	jr $+5			;7331	18 03		. .
	ld c,h			;7333	4c		L
	ld (00456h),a		;7334	32 56 04	2 V .
	djnz l733ch		;7337	10 03		. .
	ld h,h			;7339	64		d
	ld (hl),h		;733a	74		t
	ld d,(hl)		;733b	56		V
l733ch:
	inc b			;733c	04		.
	daa			;733d	27		'
	inc bc			;733e	03		.
	ld e,h			;733f	5c		\
	dec d			;7340	15		.
	ld c,(hl)		;7341	4e		N
	inc b			;7342	04		.
	ld d,001h		;7343	16 01		. .
	adc a,h			;7345	8c		.
	sbc a,b			;7346	98		.
	ld c,(hl)		;7347	4e		N
	inc b			;7348	04		.
	add hl,de		;7349	19		.
	inc bc			;734a	03		.
	ld d,h			;734b	54		T
	out (04dh),a		;734c	d3 4d		. M
	inc b			;734e	04		.
	inc de			;734f	13		.
	ld bc,02384h		;7350	01 84 23	. . #
	ld c,h			;7353	4c		L
	inc b			;7354	04		.
	ld (de),a		;7355	12		.
	ld bc,l71b4h		;7356	01 b4 71	. . q
	ld d,l			;7359	55		U
	inc b			;735a	04		.
l735bh:
	inc l			;735b	2c		,
	ld (bc),a		;735c	02		.
	cp h			;735d	bc		.
	xor 053h		;735e	ee 53		. S
	inc b			;7360	04		.
	ld sp,0a402h		;7361	31 02 a4	1 . .
	xor h			;7364	ac		.
	ld d,e			;7365	53		S
	inc b			;7366	04		.
	cpl			;7367	2f		/
	ld (bc),a		;7368	02		.
	xor h			;7369	ac		.
	jp (hl)			;736a	e9		.
	ld d,l			;736b	55		U
	inc b			;736c	04		.
	ld hl,(08402h)		;736d	2a 02 84	* . .
	ld (hl),b		;7370	70		p
	ld d,h			;7371	54		T
	inc b			;7372	04		.
	dec l			;7373	2d		-
	inc b			;7374	04		.
	add a,b			;7375	80		.
	call pe,0046dh		;7376	ec 6d 04	. m .
	dec sp			;7379	3b		;
	nop			;737a	00		.
	ld bc,013ach		;737b	01 ac 13	. . .
	ld c,l			;737e	4d		M
	inc b			;737f	04		.
	jr l7383h		;7380	18 01		. .
	ld c,h			;7382	4c		L
l7383h:
	out (04dh),a		;7383	d3 4d		. M
	inc b			;7385	04		.
	inc de			;7386	13		.
	ld bc,l7554h		;7387	01 54 75	. T u
	ld e,b			;738a	58		X
	inc b			;738b	04		.
	dec e			;738c	1d		.
	ld bc,0f75ch		;738d	01 5c f7	. \ .
	ld d,a			;7390	57		W
	inc b			;7391	04		.
	inc sp			;7392	33		3
	ld bc,l748ch		;7393	01 8c 74	. . t
	ld d,a			;7396	57		W
	inc b			;7397	04		.
	dec (hl)		;7398	35		5
	ld bc,0b7b4h		;7399	01 b4 b7	. . .
	ld e,b			;739c	58		X
	inc b			;739d	04		.
	ld (hl),l		;739e	75		u
	ld bc,030c0h		;739f	01 c0 30	. . 0
	ld d,b			;73a2	50		P
	inc b			;73a3	04		.
	ld (hl),b		;73a4	70		p
	ld bc,0d9b8h		;73a5	01 b8 d9	. . .
	ld e,b			;73a8	58		X
	inc b			;73a9	04		.
	ld b,l			;73aa	45		E
	ld bc,01a9ch		;73ab	01 9c 1a	. . .
	ld e,c			;73ae	59		Y
	inc b			;73af	04		.
	dec h			;73b0	25		%
	ld bc,l746ch		;73b1	01 6c 74	. l t
	ld d,(hl)		;73b4	56		V
	inc b			;73b5	04		.
	daa			;73b6	27		'
	nop			;73b7	00		.
	ld bc,056bch		;73b8	01 bc 56	. . V
	ld c,(hl)		;73bb	4e		N
	inc b			;73bc	04		.
	rla			;73bd	17		.
	ld bc,0704ch		;73be	01 4c 70	. L p
	ld d,h			;73c1	54		T
	inc b			;73c2	04		.
	dec l			;73c3	2d		-
	ld bc,0985ch		;73c4	01 5c 98	. \ .
	ld c,(hl)		;73c7	4e		N
	inc b			;73c8	04		.
	add hl,de		;73c9	19		.
	ld bc,03d84h		;73ca	01 84 3d	. . =
	ld e,d			;73cd	5a		Z
	inc b			;73ce	04		.
	scf			;73cf	37		7
	ld bc,09da4h		;73d0	01 a4 9d	. . .
	ld e,c			;73d3	59		Y
	inc b			;73d4	04		.
	ld l,(hl)		;73d5	6e		n
	ld bc,0c094h		;73d6	01 94 c0	. . .
	ld e,d			;73d9	5a		Z
	inc b			;73da	04		.
	ld l,a			;73db	6f		o
	ld b,0c4h		;73dc	06 c4		. .
	ld b,d			;73de	42		B
	ld e,e			;73df	5b		[
	inc b			;73e0	04		.
	ld e,b			;73e1	58		X
	nop			;73e2	00		.
	ld bc,034ach		;73e3	01 ac 34	. . 4
	ld e,a			;73e6	5f		_
	inc b			;73e7	04		.
	jr l73ebh		;73e8	18 01		. .
	ld c,h			;73ea	4c		L
l73ebh:
	call p,0045eh		;73eb	f4 5e 04	. ^ .
	inc de			;73ee	13		.
	ld bc,0f054h		;73ef	01 54 f0	. T .
	ld e,l			;73f2	5d		]
	inc b			;73f3	04		.
	ld hl,l7401h		;73f4	21 01 74	! . t
	ld (hl),h		;73f7	74		t
	ld d,(hl)		;73f8	56		V
	inc b			;73f9	04		.
	daa			;73fa	27		'
	ld bc,0399ch		;73fb	01 9c 39	. . 9
	ld h,b			;73fe	60		`
	inc b			;73ff	04		.
	ld c,c			;7400	49		I
l7401h:
	ld bc,030b4h		;7401	01 b4 30	. . 0
	ld d,b			;7404	50		P
	inc b			;7405	04		.
	ld (hl),b		;7406	70		p
	ld (bc),a		;7407	02		.
	ld l,b			;7408	68		h
	ld l,a			;7409	6f		o
	ld e,e			;740a	5b		[
	inc b			;740b	04		.
	ld e,h			;740c	5c		\
	nop			;740d	00		.
	ld bc,03f84h		;740e	01 84 3f	. . ?
	ld h,c			;7411	61		a
	inc b			;7412	04		.
	ld c,b			;7413	48		H
	ld bc,0bc54h		;7414	01 54 bc	. T .
	ld h,b			;7417	60		`
	inc b			;7418	04		.
	ld c,d			;7419	4a		J
	ld bc,0ae7ch		;741a	01 7c ae	. | .
	ld l,c			;741d	69		i
	inc b			;741e	04		.
	ld c,l			;741f	4d		M
	ld bc,0f764h		;7420	01 64 f7	. d .
	ld e,a			;7423	5f		_
	inc b			;7424	04		.
	ld b,h			;7425	44		D
	ld bc,0566ch		;7426	01 6c 56	. l V
	ld c,(hl)		;7429	4e		N
	inc b			;742a	04		.
	rla			;742b	17		.
	ld bc,0ac4ch		;742c	01 4c ac	. L .
	ld d,e			;742f	53		S
	inc b			;7430	04		.
	cpl			;7431	2f		/
	ld bc,030d4h		;7432	01 d4 30	. . 0
	ld d,b			;7435	50		P
	inc b			;7436	04		.
	ld (hl),b		;7437	70		p
	ld (bc),a		;7438	02		.
	ld c,h			;7439	4c		L
	ld h,c			;743a	61		a
	ld h,c			;743b	61		a
	inc b			;743c	04		.
	ld a,h			;743d	7c		|
	nop			;743e	00		.
	ld bc,01554h		;743f	01 54 15	. T .
	ld c,(hl)		;7442	4e		N
	inc b			;7443	04		.
	ld d,001h		;7444	16 01		. .
	ld c,h			;7446	4c		L
	xor (hl)		;7447	ae		.
	ld l,c			;7448	69		i
	inc b			;7449	04		.
	ld c,l			;744a	4d		M
	ld bc,0355ch		;744b	01 5c 35	. \ 5
	ld h,l			;744e	65		e
	inc b			;744f	04		.
	ld a,(de)		;7450	1a		.
	inc b			;7451	04		.
	call nc,sub_64f3h	;7452	d4 f3 64	. . d
	inc b			;7455	04		.
	dec de			;7456	1b		.
	inc b			;7457	04		.
	ld c,h			;7458	4c		L
	ld l,069h		;7459	2e 69		. i
	inc b			;745b	04		.
	ld (hl),h		;745c	74		t
	inc b			;745d	04		.
	ld d,h			;745e	54		T
	ret p			;745f	f0		.
	ld l,c			;7460	69		i
	inc b			;7461	04		.
	ld d,b			;7462	50		P
	inc b			;7463	04		.
	ld (hl),h		;7464	74		t
	call pe,0046dh		;7465	ec 6d 04	. m .
	ld a,b			;7468	78		x
	inc b			;7469	04		.
	adc a,h			;746a	8c		.
	halt			;746b	76		v
l746ch:
	ld e,a			;746c	5f		_
	inc b			;746d	04		.
	ld b,d			;746e	42		B
	inc b			;746f	04		.
	and b			;7470	a0		.
	pop bc			;7471	c1		.
	ld l,d			;7472	6a		j
	inc b			;7473	04		.
	inc hl			;7474	23		#
	inc b			;7475	04		.
	xor b			;7476	a8		.
	ld a,a			;7477	7f		.
	ld l,d			;7478	6a		j
	inc b			;7479	04		.
	ld b,e			;747a	43		C
	nop			;747b	00		.
	nop			;747c	00		.
	ld bc,0b150h		;747d	01 50 b1	. P .
	ld l,e			;7480	6b		k
	inc b			;7481	04		.
	ld c,h			;7482	4c		L
	ld bc,0b150h		;7483	01 50 b1	. P .
	ld l,e			;7486	6b		k
	inc b			;7487	04		.
	ld c,(hl)		;7488	4e		N
	ld bc,01894h		;7489	01 94 18	. . .
l748ch:
	ld l,e			;748c	6b		k
	inc b			;748d	04		.
	ld e,(hl)		;748e	5e		^
	ld bc,01894h		;748f	01 94 18	. . .
	ld l,e			;7492	6b		k
	inc b			;7493	04		.
	ld h,(hl)		;7494	66		f
	nop			;7495	00		.
	rst 38h			;7496	ff		.
	rst 38h			;7497	ff		.
	rst 38h			;7498	ff		.
	rst 38h			;7499	ff		.
	rst 38h			;749a	ff		.
	rst 38h			;749b	ff		.
	rst 38h			;749c	ff		.
	rst 38h			;749d	ff		.
	rst 38h			;749e	ff		.
	rst 38h			;749f	ff		.
	rst 38h			;74a0	ff		.
	rst 38h			;74a1	ff		.
	rst 38h			;74a2	ff		.
	rst 38h			;74a3	ff		.
	rst 38h			;74a4	ff		.
	rst 38h			;74a5	ff		.
	rst 38h			;74a6	ff		.
	rst 38h			;74a7	ff		.
	rst 38h			;74a8	ff		.
	rst 38h			;74a9	ff		.
	rst 38h			;74aa	ff		.
	rst 38h			;74ab	ff		.
	rst 38h			;74ac	ff		.
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
	rst 38h			;74b9	ff		.
	rst 38h			;74ba	ff		.
	rst 38h			;74bb	ff		.
	rst 38h			;74bc	ff		.
	rst 38h			;74bd	ff		.
	rst 38h			;74be	ff		.
	rst 38h			;74bf	ff		.
	rst 38h			;74c0	ff		.
	rst 38h			;74c1	ff		.
	rst 38h			;74c2	ff		.
	rst 38h			;74c3	ff		.
	rst 38h			;74c4	ff		.
	rst 38h			;74c5	ff		.
	rst 38h			;74c6	ff		.
	rst 38h			;74c7	ff		.
	rst 38h			;74c8	ff		.
	rst 38h			;74c9	ff		.
	rst 38h			;74ca	ff		.
	rst 38h			;74cb	ff		.
	rst 38h			;74cc	ff		.
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
	rst 38h			;74d9	ff		.
	rst 38h			;74da	ff		.
	rst 38h			;74db	ff		.
	rst 38h			;74dc	ff		.
	rst 38h			;74dd	ff		.
	rst 38h			;74de	ff		.
	rst 38h			;74df	ff		.
	rst 38h			;74e0	ff		.
	rst 38h			;74e1	ff		.
	rst 38h			;74e2	ff		.
	rst 38h			;74e3	ff		.
	rst 38h			;74e4	ff		.
	rst 38h			;74e5	ff		.
	rst 38h			;74e6	ff		.
	rst 38h			;74e7	ff		.
	rst 38h			;74e8	ff		.
	rst 38h			;74e9	ff		.
	rst 38h			;74ea	ff		.
	rst 38h			;74eb	ff		.
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
	rst 38h			;74f9	ff		.
	rst 38h			;74fa	ff		.
	rst 38h			;74fb	ff		.
	rst 38h			;74fc	ff		.
	rst 38h			;74fd	ff		.
	rst 38h			;74fe	ff		.
	rst 38h			;74ff	ff		.
	inc b			;7500	04		.
	inc bc			;7501	03		.
	dec b			;7502	05		.
	inc bc			;7503	03		.
	ld b,003h		;7504	06 03		. .
	rlca			;7506	07		.
	inc bc			;7507	03		.
	inc b			;7508	04		.
	inc bc			;7509	03		.
	ex af,af'		;750a	08		.
	inc bc			;750b	03		.
	add hl,bc		;750c	09		.
	inc bc			;750d	03		.
	ld a,(bc)		;750e	0a		.
	inc bc			;750f	03		.
	ret pe			;7510	e8		.
	ld bc,001e9h		;7511	01 e9 01	. . .
	jp pe,0ff01h		;7514	ea 01 ff	. . .
	inc b			;7517	04		.
	rst 38h			;7518	ff		.
	inc b			;7519	04		.
	rst 38h			;751a	ff		.
	inc b			;751b	04		.
	rst 38h			;751c	ff		.
	inc b			;751d	04		.
	rst 38h			;751e	ff		.
	inc b			;751f	04		.
	rst 38h			;7520	ff		.
	inc b			;7521	04		.
	rst 38h			;7522	ff		.
	inc b			;7523	04		.
	rst 38h			;7524	ff		.
	inc b			;7525	04		.
	rst 38h			;7526	ff		.
	inc b			;7527	04		.
	rst 38h			;7528	ff		.
	inc b			;7529	04		.
	rst 38h			;752a	ff		.
	inc b			;752b	04		.
	rst 38h			;752c	ff		.
	inc b			;752d	04		.
	rst 38h			;752e	ff		.
	inc b			;752f	04		.
	rst 38h			;7530	ff		.
	inc b			;7531	04		.
	rst 38h			;7532	ff		.
	inc b			;7533	04		.
	rst 38h			;7534	ff		.
	inc b			;7535	04		.
	rst 38h			;7536	ff		.
	inc b			;7537	04		.
	sub d			;7538	92		.
	ld (bc),a		;7539	02		.
	sub e			;753a	93		.
	ld (bc),a		;753b	02		.
	sub h			;753c	94		.
	ld (bc),a		;753d	02		.
	rst 38h			;753e	ff		.
	inc b			;753f	04		.
	dec bc			;7540	0b		.
	inc bc			;7541	03		.
	inc c			;7542	0c		.
	inc bc			;7543	03		.
	nop			;7544	00		.
	nop			;7545	00		.
	ld bc,00200h		;7546	01 00 02	. . .
	nop			;7549	00		.
	inc bc			;754a	03		.
	nop			;754b	00		.
	inc b			;754c	04		.
	nop			;754d	00		.
	dec b			;754e	05		.
	nop			;754f	00		.
	ld b,000h		;7550	06 00		. .
	rlca			;7552	07		.
	nop			;7553	00		.
l7554h:
	ex af,af'		;7554	08		.
	nop			;7555	00		.
	add hl,bc		;7556	09		.
	nop			;7557	00		.
	ld a,(bc)		;7558	0a		.
	nop			;7559	00		.
	dec bc			;755a	0b		.
	nop			;755b	00		.
	inc c			;755c	0c		.
	nop			;755d	00		.
	dec c			;755e	0d		.
	nop			;755f	00		.
	ld c,000h		;7560	0e 00		. .
	rrca			;7562	0f		.
	nop			;7563	00		.
	djnz l7566h		;7564	10 00		. .
l7566h:
	ld de,01200h		;7566	11 00 12	. . .
	nop			;7569	00		.
	inc de			;756a	13		.
	nop			;756b	00		.
	add a,e			;756c	83		.
	ld (bc),a		;756d	02		.
	add a,h			;756e	84		.
	ld (bc),a		;756f	02		.
	add a,l			;7570	85		.
	ld (bc),a		;7571	02		.
	add a,(hl)		;7572	86		.
	ld (bc),a		;7573	02		.
	add a,a			;7574	87		.
	ld (bc),a		;7575	02		.
	rst 38h			;7576	ff		.
	inc b			;7577	04		.
	sub l			;7578	95		.
	ld (bc),a		;7579	02		.
	sub (hl)		;757a	96		.
	ld (bc),a		;757b	02		.
	sub a			;757c	97		.
	ld (bc),a		;757d	02		.
	rst 38h			;757e	ff		.
	inc b			;757f	04		.
	dec c			;7580	0d		.
	inc bc			;7581	03		.
	ld c,003h		;7582	0e 03		. .
	inc d			;7584	14		.
	nop			;7585	00		.
	dec d			;7586	15		.
	nop			;7587	00		.
	ld d,000h		;7588	16 00		. .
	rla			;758a	17		.
	nop			;758b	00		.
	jr l758eh		;758c	18 00		. .
l758eh:
	add hl,de		;758e	19		.
	nop			;758f	00		.
	ld a,(de)		;7590	1a		.
	nop			;7591	00		.
	dec de			;7592	1b		.
	nop			;7593	00		.
	inc e			;7594	1c		.
	nop			;7595	00		.
	dec e			;7596	1d		.
	nop			;7597	00		.
	ld e,000h		;7598	1e 00		. .
	rra			;759a	1f		.
	nop			;759b	00		.
	jr nz,l759eh		;759c	20 00		  .
l759eh:
	ld hl,02200h		;759e	21 00 22	! . "
	nop			;75a1	00		.
	inc hl			;75a2	23		#
	nop			;75a3	00		.
	inc h			;75a4	24		$
	nop			;75a5	00		.
	dec h			;75a6	25		%
	nop			;75a7	00		.
	ld h,000h		;75a8	26 00		& .
	daa			;75aa	27		'
	nop			;75ab	00		.
	adc a,b			;75ac	88		.
	ld (bc),a		;75ad	02		.
	adc a,c			;75ae	89		.
	ld (bc),a		;75af	02		.
	adc a,d			;75b0	8a		.
	ld (bc),a		;75b1	02		.
	adc a,e			;75b2	8b		.
	ld (bc),a		;75b3	02		.
	adc a,h			;75b4	8c		.
	ld (bc),a		;75b5	02		.
	rst 38h			;75b6	ff		.
	inc b			;75b7	04		.
	sbc a,b			;75b8	98		.
	ld (bc),a		;75b9	02		.
	sbc a,c			;75ba	99		.
	ld (bc),a		;75bb	02		.
	sbc a,d			;75bc	9a		.
	ld (bc),a		;75bd	02		.
	rst 38h			;75be	ff		.
	inc b			;75bf	04		.
	or b			;75c0	b0		.
	inc b			;75c1	04		.
	or c			;75c2	b1		.
	inc b			;75c3	04		.
	jr z,l75c6h		;75c4	28 00		( .
l75c6h:
	add hl,hl		;75c6	29		)
	nop			;75c7	00		.
	ld hl,(02b00h)		;75c8	2a 00 2b	* . +
	nop			;75cb	00		.
	inc l			;75cc	2c		,
	nop			;75cd	00		.
	dec l			;75ce	2d		-
	nop			;75cf	00		.
	ld l,000h		;75d0	2e 00		. .
	cpl			;75d2	2f		/
	nop			;75d3	00		.
	jr nc,l75d6h		;75d4	30 00		0 .
l75d6h:
	ld sp,03200h		;75d6	31 00 32	1 . 2
	nop			;75d9	00		.
	inc sp			;75da	33		3
	nop			;75db	00		.
	inc (hl)		;75dc	34		4
	nop			;75dd	00		.
	dec (hl)		;75de	35		5
	nop			;75df	00		.
	ld (hl),000h		;75e0	36 00		6 .
	scf			;75e2	37		7
	nop			;75e3	00		.
	jr c,l75e6h		;75e4	38 00		8 .
l75e6h:
	add hl,sp		;75e6	39		9
	nop			;75e7	00		.
	ld a,(03b00h)		;75e8	3a 00 3b	: . ;
	nop			;75eb	00		.
	adc a,l			;75ec	8d		.
	ld (bc),a		;75ed	02		.
	adc a,(hl)		;75ee	8e		.
	ld (bc),a		;75ef	02		.
	adc a,a			;75f0	8f		.
	ld (bc),a		;75f1	02		.
	sub b			;75f2	90		.
	ld (bc),a		;75f3	02		.
	sub c			;75f4	91		.
	ld (bc),a		;75f5	02		.
	rst 38h			;75f6	ff		.
	inc b			;75f7	04		.
	rrca			;75f8	0f		.
	inc bc			;75f9	03		.
	sbc a,e			;75fa	9b		.
	ld (bc),a		;75fb	02		.
	sbc a,h			;75fc	9c		.
	ld (bc),a		;75fd	02		.
	rst 38h			;75fe	ff		.
	inc b			;75ff	04		.
	or (hl)			;7600	b6		.
	inc b			;7601	04		.
	or a			;7602	b7		.
	inc b			;7603	04		.
	inc a			;7604	3c		<
	nop			;7605	00		.
	dec a			;7606	3d		=
	nop			;7607	00		.
	ld a,000h		;7608	3e 00		> .
	ccf			;760a	3f		?
	nop			;760b	00		.
	ld b,b			;760c	40		@
	nop			;760d	00		.
	ld b,c			;760e	41		A
	nop			;760f	00		.
	ld b,d			;7610	42		B
	nop			;7611	00		.
	ld b,e			;7612	43		C
l7613h:
	nop			;7613	00		.
	ld b,h			;7614	44		D
	nop			;7615	00		.
	ld b,l			;7616	45		E
	nop			;7617	00		.
	ld b,(hl)		;7618	46		F
	nop			;7619	00		.
	ld b,a			;761a	47		G
	nop			;761b	00		.
	ld a,000h		;761c	3e 00		> .
	ld c,b			;761e	48		H
	nop			;761f	00		.
	ld c,c			;7620	49		I
	nop			;7621	00		.
	ld c,d			;7622	4a		J
	nop			;7623	00		.
	ld c,e			;7624	4b		K
	nop			;7625	00		.
	ld c,h			;7626	4c		L
	nop			;7627	00		.
	ld c,l			;7628	4d		M
	nop			;7629	00		.
	ld c,(hl)		;762a	4e		N
	nop			;762b	00		.
	rrca			;762c	0f		.
	inc bc			;762d	03		.
	sbc a,l			;762e	9d		.
	ld (bc),a		;762f	02		.
	sbc a,(hl)		;7630	9e		.
	ld (bc),a		;7631	02		.
	sbc a,a			;7632	9f		.
	ld (bc),a		;7633	02		.
	and b			;7634	a0		.
	ld (bc),a		;7635	02		.
	and c			;7636	a1		.
	ld (bc),a		;7637	02		.
	and d			;7638	a2		.
	ld (bc),a		;7639	02		.
	and e			;763a	a3		.
	ld (bc),a		;763b	02		.
	and h			;763c	a4		.
	ld (bc),a		;763d	02		.
	rrca			;763e	0f		.
	inc bc			;763f	03		.
	or d			;7640	b2		.
	inc b			;7641	04		.
	or e			;7642	b3		.
	inc b			;7643	04		.
	ld c,a			;7644	4f		O
	nop			;7645	00		.
	ld d,b			;7646	50		P
l7647h:
	nop			;7647	00		.
	ld d,c			;7648	51		Q
	nop			;7649	00		.
	ld d,d			;764a	52		R
	nop			;764b	00		.
	ld d,e			;764c	53		S
	nop			;764d	00		.
	ld d,h			;764e	54		T
	nop			;764f	00		.
	ld d,l			;7650	55		U
	nop			;7651	00		.
	ld d,(hl)		;7652	56		V
	nop			;7653	00		.
	ld d,a			;7654	57		W
	nop			;7655	00		.
	ld e,b			;7656	58		X
	nop			;7657	00		.
	ld e,c			;7658	59		Y
	nop			;7659	00		.
	ld e,d			;765a	5a		Z
	nop			;765b	00		.
	ld e,e			;765c	5b		[
	nop			;765d	00		.
	ld e,h			;765e	5c		\
	nop			;765f	00		.
	ld e,l			;7660	5d		]
	nop			;7661	00		.
	ld e,(hl)		;7662	5e		^
	nop			;7663	00		.
	ld e,a			;7664	5f		_
	nop			;7665	00		.
	ld h,b			;7666	60		`
	nop			;7667	00		.
	ld h,c			;7668	61		a
	nop			;7669	00		.
	ld h,d			;766a	62		b
	nop			;766b	00		.
	rrca			;766c	0f		.
	inc bc			;766d	03		.
	and l			;766e	a5		.
	ld (bc),a		;766f	02		.
	and (hl)		;7670	a6		.
	ld (bc),a		;7671	02		.
	and a			;7672	a7		.
	ld (bc),a		;7673	02		.
	xor b			;7674	a8		.
	ld (bc),a		;7675	02		.
	xor c			;7676	a9		.
	ld (bc),a		;7677	02		.
	xor d			;7678	aa		.
	ld (bc),a		;7679	02		.
	xor e			;767a	ab		.
	ld (bc),a		;767b	02		.
	xor h			;767c	ac		.
	ld (bc),a		;767d	02		.
	rrca			;767e	0f		.
	inc bc			;767f	03		.
	cp b			;7680	b8		.
	inc b			;7681	04		.
	cp c			;7682	b9		.
	inc b			;7683	04		.
	ld h,e			;7684	63		c
	nop			;7685	00		.
	ld h,h			;7686	64		d
	nop			;7687	00		.
	ld h,l			;7688	65		e
	nop			;7689	00		.
	ld h,(hl)		;768a	66		f
	nop			;768b	00		.
	ld h,a			;768c	67		g
	nop			;768d	00		.
	ld l,b			;768e	68		h
	nop			;768f	00		.
	ld l,c			;7690	69		i
	nop			;7691	00		.
	ld l,d			;7692	6a		j
	nop			;7693	00		.
	ld l,e			;7694	6b		k
	nop			;7695	00		.
	ld l,h			;7696	6c		l
	nop			;7697	00		.
	ld l,l			;7698	6d		m
	nop			;7699	00		.
	ld l,(hl)		;769a	6e		n
	nop			;769b	00		.
	ld l,a			;769c	6f		o
	nop			;769d	00		.
	ld (hl),b		;769e	70		p
	nop			;769f	00		.
	ld a,000h		;76a0	3e 00		> .
	ld (hl),c		;76a2	71		q
	nop			;76a3	00		.
	ld (hl),d		;76a4	72		r
	nop			;76a5	00		.
	ld (hl),e		;76a6	73		s
	nop			;76a7	00		.
	ld (hl),h		;76a8	74		t
	nop			;76a9	00		.
	ld (hl),l		;76aa	75		u
	nop			;76ab	00		.
	rrca			;76ac	0f		.
	inc bc			;76ad	03		.
	xor l			;76ae	ad		.
	ld (bc),a		;76af	02		.
	xor (hl)		;76b0	ae		.
	ld (bc),a		;76b1	02		.
	xor a			;76b2	af		.
	ld (bc),a		;76b3	02		.
	or b			;76b4	b0		.
	ld (bc),a		;76b5	02		.
	or c			;76b6	b1		.
	ld (bc),a		;76b7	02		.
	or d			;76b8	b2		.
	ld (bc),a		;76b9	02		.
	or e			;76ba	b3		.
	ld (bc),a		;76bb	02		.
	or h			;76bc	b4		.
	ld (bc),a		;76bd	02		.
	rrca			;76be	0f		.
	inc bc			;76bf	03		.
	or h			;76c0	b4		.
	inc b			;76c1	04		.
	or l			;76c2	b5		.
	inc b			;76c3	04		.
	halt			;76c4	76		v
	nop			;76c5	00		.
	ld (hl),a		;76c6	77		w
	nop			;76c7	00		.
	ld a,b			;76c8	78		x
	nop			;76c9	00		.
	ld a,c			;76ca	79		y
	nop			;76cb	00		.
	ld a,d			;76cc	7a		z
	nop			;76cd	00		.
	ld a,e			;76ce	7b		{
	nop			;76cf	00		.
	ld a,h			;76d0	7c		|
	nop			;76d1	00		.
	ld a,l			;76d2	7d		}
	nop			;76d3	00		.
	ld a,(hl)		;76d4	7e		~
	nop			;76d5	00		.
	ld a,a			;76d6	7f		.
	nop			;76d7	00		.
	add a,b			;76d8	80		.
	nop			;76d9	00		.
	add a,c			;76da	81		.
	nop			;76db	00		.
	add a,d			;76dc	82		.
	nop			;76dd	00		.
	add a,e			;76de	83		.
	nop			;76df	00		.
	ld a,000h		;76e0	3e 00		> .
	ld a,000h		;76e2	3e 00		> .
	add a,h			;76e4	84		.
	nop			;76e5	00		.
	add a,l			;76e6	85		.
	nop			;76e7	00		.
	add a,(hl)		;76e8	86		.
	nop			;76e9	00		.
	add a,a			;76ea	87		.
	nop			;76eb	00		.
	rrca			;76ec	0f		.
	inc bc			;76ed	03		.
	or l			;76ee	b5		.
	ld (bc),a		;76ef	02		.
	or (hl)			;76f0	b6		.
	ld (bc),a		;76f1	02		.
	or a			;76f2	b7		.
	ld (bc),a		;76f3	02		.
	cp b			;76f4	b8		.
	ld (bc),a		;76f5	02		.
	cp c			;76f6	b9		.
	ld (bc),a		;76f7	02		.
	cp d			;76f8	ba		.
	ld (bc),a		;76f9	02		.
	cp e			;76fa	bb		.
	ld (bc),a		;76fb	02		.
	cp h			;76fc	bc		.
	ld (bc),a		;76fd	02		.
	cp l			;76fe	bd		.
	ld (bc),a		;76ff	02		.
	cp d			;7700	ba		.
	inc b			;7701	04		.
	cp e			;7702	bb		.
	inc b			;7703	04		.
	adc a,b			;7704	88		.
	nop			;7705	00		.
	adc a,c			;7706	89		.
	nop			;7707	00		.
	adc a,d			;7708	8a		.
	nop			;7709	00		.
	adc a,e			;770a	8b		.
	nop			;770b	00		.
	adc a,h			;770c	8c		.
	nop			;770d	00		.
	adc a,l			;770e	8d		.
	nop			;770f	00		.
	adc a,(hl)		;7710	8e		.
	nop			;7711	00		.
	adc a,a			;7712	8f		.
	nop			;7713	00		.
	sub b			;7714	90		.
	nop			;7715	00		.
	sub c			;7716	91		.
	nop			;7717	00		.
	sub d			;7718	92		.
	nop			;7719	00		.
	sub e			;771a	93		.
	nop			;771b	00		.
	sub h			;771c	94		.
	nop			;771d	00		.
	sub l			;771e	95		.
	nop			;771f	00		.
	ld a,000h		;7720	3e 00		> .
	sub (hl)		;7722	96		.
	nop			;7723	00		.
	sub a			;7724	97		.
	nop			;7725	00		.
	sbc a,b			;7726	98		.
	nop			;7727	00		.
	ld a,000h		;7728	3e 00		> .
	sbc a,c			;772a	99		.
	nop			;772b	00		.
	rrca			;772c	0f		.
	inc bc			;772d	03		.
	cp (hl)			;772e	be		.
	ld (bc),a		;772f	02		.
	cp a			;7730	bf		.
	ld (bc),a		;7731	02		.
	ret nz			;7732	c0		.
	ld (bc),a		;7733	02		.
	pop bc			;7734	c1		.
	ld (bc),a		;7735	02		.
	jp nz,0c302h		;7736	c2 02 c3	. . .
	ld (bc),a		;7739	02		.
	call nz,0c502h		;773a	c4 02 c5	. . .
	ld (bc),a		;773d	02		.
	add a,002h		;773e	c6 02		. .
	cp h			;7740	bc		.
	inc b			;7741	04		.
	cp l			;7742	bd		.
	inc b			;7743	04		.
	sbc a,d			;7744	9a		.
	nop			;7745	00		.
	sbc a,e			;7746	9b		.
	nop			;7747	00		.
	sbc a,h			;7748	9c		.
	nop			;7749	00		.
	sbc a,l			;774a	9d		.
	nop			;774b	00		.
	sbc a,(hl)		;774c	9e		.
	nop			;774d	00		.
	sbc a,a			;774e	9f		.
	nop			;774f	00		.
	and b			;7750	a0		.
	nop			;7751	00		.
	and c			;7752	a1		.
	nop			;7753	00		.
	and d			;7754	a2		.
	nop			;7755	00		.
	and e			;7756	a3		.
	nop			;7757	00		.
	and h			;7758	a4		.
	nop			;7759	00		.
	and l			;775a	a5		.
	nop			;775b	00		.
	and (hl)		;775c	a6		.
	nop			;775d	00		.
	and a			;775e	a7		.
	nop			;775f	00		.
	ld a,000h		;7760	3e 00		> .
	ld a,000h		;7762	3e 00		> .
	xor b			;7764	a8		.
	nop			;7765	00		.
	xor c			;7766	a9		.
	nop			;7767	00		.
	xor d			;7768	aa		.
	nop			;7769	00		.
	xor e			;776a	ab		.
	nop			;776b	00		.
	rrca			;776c	0f		.
	inc bc			;776d	03		.
	rst 0			;776e	c7		.
	ld (bc),a		;776f	02		.
	ret z			;7770	c8		.
	ld (bc),a		;7771	02		.
	ret			;7772	c9		.
	ld (bc),a		;7773	02		.
	jp z,0cb02h		;7774	ca 02 cb	. . .
	ld (bc),a		;7777	02		.
	call z,0cd02h		;7778	cc 02 cd	. . .
	ld (bc),a		;777b	02		.
	adc a,002h		;777c	ce 02		. .
	rrca			;777e	0f		.
	inc bc			;777f	03		.
	cp (hl)			;7780	be		.
	inc b			;7781	04		.
	cp a			;7782	bf		.
	inc b			;7783	04		.
	xor e			;7784	ab		.
	nop			;7785	00		.
	xor h			;7786	ac		.
	nop			;7787	00		.
	xor l			;7788	ad		.
	nop			;7789	00		.
	xor (hl)		;778a	ae		.
	nop			;778b	00		.
	xor a			;778c	af		.
	nop			;778d	00		.
	or b			;778e	b0		.
	nop			;778f	00		.
	or c			;7790	b1		.
	nop			;7791	00		.
	or d			;7792	b2		.
	nop			;7793	00		.
	or e			;7794	b3		.
	nop			;7795	00		.
	or h			;7796	b4		.
	nop			;7797	00		.
	or l			;7798	b5		.
	nop			;7799	00		.
	or (hl)			;779a	b6		.
	nop			;779b	00		.
	or a			;779c	b7		.
	nop			;779d	00		.
	cp b			;779e	b8		.
	nop			;779f	00		.
	ld a,000h		;77a0	3e 00		> .
	cp c			;77a2	b9		.
	nop			;77a3	00		.
	cp d			;77a4	ba		.
	nop			;77a5	00		.
	cp e			;77a6	bb		.
	nop			;77a7	00		.
	cp h			;77a8	bc		.
	nop			;77a9	00		.
	ld a,000h		;77aa	3e 00		> .
	rrca			;77ac	0f		.
	inc bc			;77ad	03		.
	rst 8			;77ae	cf		.
	ld (bc),a		;77af	02		.
	ret nc			;77b0	d0		.
	ld (bc),a		;77b1	02		.
	pop de			;77b2	d1		.
	ld (bc),a		;77b3	02		.
	jp nc,0d302h		;77b4	d2 02 d3	. . .
	ld (bc),a		;77b7	02		.
	call nc,0d502h		;77b8	d4 02 d5	. . .
	ld (bc),a		;77bb	02		.
	rrca			;77bc	0f		.
	inc bc			;77bd	03		.
	rrca			;77be	0f		.
	inc bc			;77bf	03		.
	ex de,hl		;77c0	eb		.
	ld bc,001efh		;77c1	01 ef 01	. . .
	ld a,000h		;77c4	3e 00		> .
	cp l			;77c6	bd		.
	nop			;77c7	00		.
	cp (hl)			;77c8	be		.
	nop			;77c9	00		.
	cp a			;77ca	bf		.
	nop			;77cb	00		.
	ret nz			;77cc	c0		.
	nop			;77cd	00		.
	pop bc			;77ce	c1		.
	nop			;77cf	00		.
	jp nz,0c300h		;77d0	c2 00 c3	. . .
	nop			;77d3	00		.
	call nz,0c500h		;77d4	c4 00 c5	. . .
	nop			;77d7	00		.
	add a,000h		;77d8	c6 00		. .
	rst 0			;77da	c7		.
	nop			;77db	00		.
	ret z			;77dc	c8		.
	nop			;77dd	00		.
	ld a,000h		;77de	3e 00		> .
	ld a,000h		;77e0	3e 00		> .
	ret			;77e2	c9		.
	nop			;77e3	00		.
	jp z,0cb00h		;77e4	ca 00 cb	. . .
	nop			;77e7	00		.
	call z,0cd00h		;77e8	cc 00 cd	. . .
	nop			;77eb	00		.
	sub 002h		;77ec	d6 02		. .
	rst 10h			;77ee	d7		.
	ld (bc),a		;77ef	02		.
	ret c			;77f0	d8		.
	ld (bc),a		;77f1	02		.
	exx			;77f2	d9		.
	ld (bc),a		;77f3	02		.
	jp c,0db02h		;77f4	da 02 db	. . .
	ld (bc),a		;77f7	02		.
	rrca			;77f8	0f		.
	inc bc			;77f9	03		.
	rrca			;77fa	0f		.
	inc bc			;77fb	03		.
	rrca			;77fc	0f		.
	inc bc			;77fd	03		.
	rrca			;77fe	0f		.
	inc bc			;77ff	03		.
	call pe,0f001h		;7800	ec 01 f0	. . .
	ld bc,000ceh		;7803	01 ce 00	. . .
	rst 8			;7806	cf		.
	nop			;7807	00		.
	ret nc			;7808	d0		.
	nop			;7809	00		.
	pop de			;780a	d1		.
	nop			;780b	00		.
	jp nc,0d300h		;780c	d2 00 d3	. . .
	nop			;780f	00		.
	call nc,0d500h		;7810	d4 00 d5	. . .
	nop			;7813	00		.
	sub 000h		;7814	d6 00		. .
	rst 10h			;7816	d7		.
	nop			;7817	00		.
	ret c			;7818	d8		.
	nop			;7819	00		.
	exx			;781a	d9		.
	nop			;781b	00		.
	ld a,000h		;781c	3e 00		> .
	ld a,000h		;781e	3e 00		> .
	ld a,000h		;7820	3e 00		> .
	jp c,0db00h		;7822	da 00 db	. . .
	nop			;7825	00		.
	call c,0dd00h		;7826	dc 00 dd	. . .
	nop			;7829	00		.
	sbc a,000h		;782a	de 00		. .
	rrca			;782c	0f		.
	inc bc			;782d	03		.
	call c,0dd02h		;782e	dc 02 dd	. . .
	ld (bc),a		;7831	02		.
	sbc a,002h		;7832	de 02		. .
	rrca			;7834	0f		.
	inc bc			;7835	03		.
	rrca			;7836	0f		.
	inc bc			;7837	03		.
	rrca			;7838	0f		.
	inc bc			;7839	03		.
	rrca			;783a	0f		.
	inc bc			;783b	03		.
	rrca			;783c	0f		.
	inc bc			;783d	03		.
	rrca			;783e	0f		.
	inc bc			;783f	03		.
	defb 0edh ;next byte illegal after ed	;7840	ed		.
	ld bc,004ffh		;7841	01 ff 04	. . .
	rlc c			;7844	cb 01		. .
	rlc c			;7846	cb 01		. .
	add a,001h		;7848	c6 01		. .
	rlc c			;784a	cb 01		. .
	add a,001h		;784c	c6 01		. .
	rlc c			;784e	cb 01		. .
	ret			;7850	c9		.
	ld bc,001c6h		;7851	01 c6 01	. . .
	rlc c			;7854	cb 01		. .
	rlc c			;7856	cb 01		. .
	add a,001h		;7858	c6 01		. .
	rst 0			;785a	c7		.
	ld bc,001cbh		;785b	01 cb 01	. . .
	ret			;785e	c9		.
	ld bc,001c6h		;785f	01 c6 01	. . .
	ret			;7862	c9		.
	ld bc,001c6h		;7863	01 c6 01	. . .
	rst 0			;7866	c7		.
	ld bc,001c8h		;7867	01 c8 01	. . .
	ret			;786a	c9		.
	ld bc,000dfh		;786b	01 df 00	. . .
	ret po			;786e	e0		.
	nop			;786f	00		.
	pop hl			;7870	e1		.
	nop			;7871	00		.
	jp po,0e300h		;7872	e2 00 e3	. . .
	nop			;7875	00		.
	call po,0e500h		;7876	e4 00 e5	. . .
	nop			;7879	00		.
	cp a			;787a	bf		.
	ld bc,001c0h		;787b	01 c0 01	. . .
	ld (de),a		;787e	12		.
	ld (bc),a		;787f	02		.
	xor 001h		;7880	ee 01		. .
	xor l			;7882	ad		.
	inc b			;7883	04		.
	rlc c			;7884	cb 01		. .
	ret			;7886	c9		.
	ld bc,001c5h		;7887	01 c5 01	. . .
	rlc c			;788a	cb 01		. .
	ret z			;788c	c8		.
	ld bc,001cbh		;788d	01 cb 01	. . .
	rst 0			;7890	c7		.
	ld bc,001cbh		;7891	01 cb 01	. . .
	rlc c			;7894	cb 01		. .
	rlc c			;7896	cb 01		. .
	rlc c			;7898	cb 01		. .
	ret z			;789a	c8		.
	ld bc,001c4h		;789b	01 c4 01	. . .
	rlc c			;789e	cb 01		. .
	rst 0			;78a0	c7		.
	ld bc,001c8h		;78a1	01 c8 01	. . .
	ret z			;78a4	c8		.
	ld bc,001cbh		;78a5	01 cb 01	. . .
	push bc			;78a8	c5		.
	ld bc,001cah		;78a9	01 ca 01	. . .
	ret p			;78ac	f0		.
	nop			;78ad	00		.
	pop af			;78ae	f1		.
	nop			;78af	00		.
	jp p,0f300h		;78b0	f2 00 f3	. . .
	nop			;78b3	00		.
	call p,0f500h		;78b4	f4 00 f5	. . .
	nop			;78b7	00		.
	or 000h			;78b8	f6 00		. .
	pop bc			;78ba	c1		.
	ld bc,00213h		;78bb	01 13 02	. . .
	inc d			;78be	14		.
	ld (bc),a		;78bf	02		.
	pop af			;78c0	f1		.
	ld bc,004ffh		;78c1	01 ff 04	. . .
	rlc c			;78c4	cb 01		. .
	rlc c			;78c6	cb 01		. .
	rlc c			;78c8	cb 01		. .
	add a,001h		;78ca	c6 01		. .
	rlc c			;78cc	cb 01		. .
	add a,001h		;78ce	c6 01		. .
	rlc c			;78d0	cb 01		. .
	rlc c			;78d2	cb 01		. .
	ret			;78d4	c9		.
	ld bc,001cbh		;78d5	01 cb 01	. . .
	rst 0			;78d8	c7		.
	ld bc,001c9h		;78d9	01 c9 01	. . .
	rlc c			;78dc	cb 01		. .
	rlc c			;78de	cb 01		. .
	rlc c			;78e0	cb 01		. .
	add a,001h		;78e2	c6 01		. .
	rlc c			;78e4	cb 01		. .
	rlc c			;78e6	cb 01		. .
	rlc c			;78e8	cb 01		. .
	rlc c			;78ea	cb 01		. .
	inc b			;78ec	04		.
	ld bc,00105h		;78ed	01 05 01	. . .
	ld b,001h		;78f0	06 01		. .
	rlca			;78f2	07		.
	ld bc,00108h		;78f3	01 08 01	. . .
	add hl,bc		;78f6	09		.
	ld bc,0010ah		;78f7	01 0a 01	. . .
	ld d,002h		;78fa	16 02		. .
	rla			;78fc	17		.
	ld (bc),a		;78fd	02		.
	jr $+4			;78fe	18 02		. .
	jp p,0ff01h		;7900	f2 01 ff	. . .
	inc b			;7903	04		.
	rlc c			;7904	cb 01		. .
	ret z			;7906	c8		.
	ld bc,001cbh		;7907	01 cb 01	. . .
	add a,001h		;790a	c6 01		. .
	rlc c			;790c	cb 01		. .
	call nz,0c701h		;790e	c4 01 c7	. . .
	ld bc,001cbh		;7911	01 cb 01	. . .
	ret z			;7914	c8		.
	ld bc,001c6h		;7915	01 c6 01	. . .
	rlc c			;7918	cb 01		. .
	rst 0			;791a	c7		.
	ld bc,001c6h		;791b	01 c6 01	. . .
	rlc c			;791e	cb 01		. .
	add a,001h		;7920	c6 01		. .
	rlc c			;7922	cb 01		. .
	rlc c			;7924	cb 01		. .
	rlc c			;7926	cb 01		. .
	call nz,0cb01h		;7928	c4 01 cb	. . .
	ld bc,00118h		;792b	01 18 01	. . .
	add hl,de		;792e	19		.
	ld bc,0011ah		;792f	01 1a 01	. . .
	dec de			;7932	1b		.
	ld bc,0011ch		;7933	01 1c 01	. . .
	dec e			;7936	1d		.
	ld bc,00219h		;7937	01 19 02	. . .
	ld a,(de)		;793a	1a		.
	ld (bc),a		;793b	02		.
	dec de			;793c	1b		.
	ld (bc),a		;793d	02		.
	inc e			;793e	1c		.
	ld (bc),a		;793f	02		.
	rst 38h			;7940	ff		.
	inc b			;7941	04		.
	rst 38h			;7942	ff		.
	inc b			;7943	04		.
	rlc c			;7944	cb 01		. .
	add a,001h		;7946	c6 01		. .
	ret			;7948	c9		.
	ld bc,001cbh		;7949	01 cb 01	. . .
	ret			;794c	c9		.
	ld bc,001c7h		;794d	01 c7 01	. . .
	rlc c			;7950	cb 01		. .
	ret			;7952	c9		.
	ld bc,001c6h		;7953	01 c6 01	. . .
	call nz,0c701h		;7956	c4 01 c7	. . .
	ld bc,001cbh		;7959	01 cb 01	. . .
	rlc c			;795c	cb 01		. .
	ret			;795e	c9		.
	ld bc,001c9h		;795f	01 c9 01	. . .
	add a,001h		;7962	c6 01		. .
	rst 0			;7964	c7		.
	ld bc,001c6h		;7965	01 c6 01	. . .
	rlc c			;7968	cb 01		. .
	ret z			;796a	c8		.
	ld bc,0012bh		;796b	01 2b 01	. + .
	inc l			;796e	2c		,
	ld bc,0012dh		;796f	01 2d 01	. - .
	ld l,001h		;7972	2e 01		. .
	cpl			;7974	2f		/
	ld bc,00130h		;7975	01 30 01	. 0 .
	dec e			;7978	1d		.
	ld (bc),a		;7979	02		.
	ld e,002h		;797a	1e 02		. .
	rra			;797c	1f		.
	ld (bc),a		;797d	02		.
	rrca			;797e	0f		.
	inc bc			;797f	03		.
	rst 38h			;7980	ff		.
	inc b			;7981	04		.
	rst 38h			;7982	ff		.
	inc b			;7983	04		.
	rlc c			;7984	cb 01		. .
	call nz,0cb01h		;7986	c4 01 cb	. . .
	ld bc,001c6h		;7989	01 c6 01	. . .
	rst 0			;798c	c7		.
	ld bc,001cbh		;798d	01 cb 01	. . .
	rst 0			;7990	c7		.
	ld bc,001c6h		;7991	01 c6 01	. . .
	rlc c			;7994	cb 01		. .
	rlc c			;7996	cb 01		. .
	rst 0			;7998	c7		.
	ld bc,001cbh		;7999	01 cb 01	. . .
	add a,001h		;799c	c6 01		. .
	rlc c			;799e	cb 01		. .
	push bc			;79a0	c5		.
	ld bc,001cbh		;79a1	01 cb 01	. . .
	rst 0			;79a4	c7		.
	ld bc,001c8h		;79a5	01 c8 01	. . .
	rst 0			;79a8	c7		.
	ld bc,001cbh		;79a9	01 cb 01	. . .
	ccf			;79ac	3f		?
	ld bc,00140h		;79ad	01 40 01	. @ .
	ld b,c			;79b0	41		A
	ld bc,00142h		;79b1	01 42 01	. B .
	ld b,e			;79b4	43		C
	ld bc,00144h		;79b5	01 44 01	. D .
	jr nz,$+4		;79b8	20 02		  .
	ld hl,01c02h		;79ba	21 02 1c	! . .
	ld (bc),a		;79bd	02		.
	rrca			;79be	0f		.
	inc bc			;79bf	03		.
	rst 38h			;79c0	ff		.
	inc b			;79c1	04		.
	rst 38h			;79c2	ff		.
	inc b			;79c3	04		.
	ret z			;79c4	c8		.
	ld bc,001cbh		;79c5	01 cb 01	. . .
	rlc c			;79c8	cb 01		. .
	push bc			;79ca	c5		.
	ld bc,001c7h		;79cb	01 c7 01	. . .
	rlc c			;79ce	cb 01		. .
	rlc c			;79d0	cb 01		. .
	rlc c			;79d2	cb 01		. .
	rst 0			;79d4	c7		.
	ld bc,001cbh		;79d5	01 cb 01	. . .
	rlc c			;79d8	cb 01		. .
	rlc c			;79da	cb 01		. .
	rlc c			;79dc	cb 01		. .
	rlc c			;79de	cb 01		. .
	rlc c			;79e0	cb 01		. .
	add a,001h		;79e2	c6 01		. .
	rlc c			;79e4	cb 01		. .
	jp z,0cb01h		;79e6	ca 01 cb	. . .
	ld bc,001c6h		;79e9	01 c6 01	. . .
	ld d,d			;79ec	52		R
	ld bc,00153h		;79ed	01 53 01	. S .
	ld d,h			;79f0	54		T
	ld bc,00155h		;79f1	01 55 01	. U .
	ld d,(hl)		;79f4	56		V
	ld bc,00157h		;79f5	01 57 01	. W .
	ld (02302h),hl		;79f8	22 02 23	" . #
	ld (bc),a		;79fb	02		.
	rrca			;79fc	0f		.
	inc bc			;79fd	03		.
	rrca			;79fe	0f		.
	inc bc			;79ff	03		.
	rst 38h			;7a00	ff		.
	inc b			;7a01	04		.
	rst 38h			;7a02	ff		.
	inc b			;7a03	04		.
	rlc c			;7a04	cb 01		. .
	add a,001h		;7a06	c6 01		. .
	rst 0			;7a08	c7		.
	ld bc,001cbh		;7a09	01 cb 01	. . .
	rlc c			;7a0c	cb 01		. .
	add a,001h		;7a0e	c6 01		. .
	rlc c			;7a10	cb 01		. .
	rlc c			;7a12	cb 01		. .
	rlc c			;7a14	cb 01		. .
	ret z			;7a16	c8		.
	ld bc,001c6h		;7a17	01 c6 01	. . .
	rlc c			;7a1a	cb 01		. .
	rlc c			;7a1c	cb 01		. .
	rst 0			;7a1e	c7		.
	ld bc,001c7h		;7a1f	01 c7 01	. . .
	rlc c			;7a22	cb 01		. .
	rlc c			;7a24	cb 01		. .
	rlc c			;7a26	cb 01		. .
	rlc c			;7a28	cb 01		. .
	rlc c			;7a2a	cb 01		. .
	ld h,d			;7a2c	62		b
	ld bc,0015bh		;7a2d	01 5b 01	. [ .
	ld h,e			;7a30	63		c
	ld bc,00164h		;7a31	01 64 01	. d .
	ld h,l			;7a34	65		e
	ld bc,00224h		;7a35	01 24 02	. $ .
	dec h			;7a38	25		%
	ld (bc),a		;7a39	02		.
	rrca			;7a3a	0f		.
	inc bc			;7a3b	03		.
	rrca			;7a3c	0f		.
	inc bc			;7a3d	03		.
	rrca			;7a3e	0f		.
	inc bc			;7a3f	03		.
	rst 38h			;7a40	ff		.
	inc b			;7a41	04		.
	rst 38h			;7a42	ff		.
	inc b			;7a43	04		.
	rlc c			;7a44	cb 01		. .
	rst 0			;7a46	c7		.
	ld bc,001cbh		;7a47	01 cb 01	. . .
	rlc c			;7a4a	cb 01		. .
	rlc c			;7a4c	cb 01		. .
	rlc c			;7a4e	cb 01		. .
	rlc c			;7a50	cb 01		. .
	add a,001h		;7a52	c6 01		. .
	rlc c			;7a54	cb 01		. .
	add a,001h		;7a56	c6 01		. .
	rlc c			;7a58	cb 01		. .
	rlc c			;7a5a	cb 01		. .
	rst 0			;7a5c	c7		.
	ld bc,001cbh		;7a5d	01 cb 01	. . .
	rlc c			;7a60	cb 01		. .
	rlc c			;7a62	cb 01		. .
	rlc c			;7a64	cb 01		. .
	add a,001h		;7a66	c6 01		. .
	jp z,0cb01h		;7a68	ca 01 cb	. . .
	ld bc,0017eh		;7a6b	01 7e 01	. ~ .
	ld h,002h		;7a6e	26 02		& .
	daa			;7a70	27		'
	ld (bc),a		;7a71	02		.
	jr z,l7a76h		;7a72	28 02		( .
	add hl,hl		;7a74	29		)
	ld (bc),a		;7a75	02		.
l7a76h:
	ld hl,(00f02h)		;7a76	2a 02 0f	* . .
	inc bc			;7a79	03		.
	rrca			;7a7a	0f		.
	inc bc			;7a7b	03		.
	rrca			;7a7c	0f		.
	inc bc			;7a7d	03		.
	rrca			;7a7e	0f		.
	inc bc			;7a7f	03		.
	rst 38h			;7a80	ff		.
	inc b			;7a81	04		.
	rst 38h			;7a82	ff		.
	inc b			;7a83	04		.
	ret z			;7a84	c8		.
	ld bc,001cbh		;7a85	01 cb 01	. . .
	ret z			;7a88	c8		.
	ld bc,001c7h		;7a89	01 c7 01	. . .
	ret z			;7a8c	c8		.
	ld bc,001c4h		;7a8d	01 c4 01	. . .
	add a,001h		;7a90	c6 01		. .
	rst 0			;7a92	c7		.
	ld bc,001cbh		;7a93	01 cb 01	. . .
	rlc c			;7a96	cb 01		. .
	rlc c			;7a98	cb 01		. .
	ret z			;7a9a	c8		.
	ld bc,001c6h		;7a9b	01 c6 01	. . .
	rlc c			;7a9e	cb 01		. .
	rlc c			;7aa0	cb 01		. .
	rlc c			;7aa2	cb 01		. .
	ret z			;7aa4	c8		.
	ld bc,001cbh		;7aa5	01 cb 01	. . .
	add a,001h		;7aa8	c6 01		. .
	rlc c			;7aaa	cb 01		. .
	dec hl			;7aac	2b		+
	ld (bc),a		;7aad	02		.
	inc l			;7aae	2c		,
	ld (bc),a		;7aaf	02		.
	dec l			;7ab0	2d		-
	ld (bc),a		;7ab1	02		.
	ld l,002h		;7ab2	2e 02		. .
	cpl			;7ab4	2f		/
	ld (bc),a		;7ab5	02		.
	rrca			;7ab6	0f		.
	inc bc			;7ab7	03		.
	rrca			;7ab8	0f		.
	inc bc			;7ab9	03		.
	rrca			;7aba	0f		.
	inc bc			;7abb	03		.
	rrca			;7abc	0f		.
	inc bc			;7abd	03		.
	rrca			;7abe	0f		.
	inc bc			;7abf	03		.
	rst 38h			;7ac0	ff		.
	inc b			;7ac1	04		.
	rst 38h			;7ac2	ff		.
	inc b			;7ac3	04		.
	jp z,0c601h		;7ac4	ca 01 c6	. . .
	ld bc,001cbh		;7ac7	01 cb 01	. . .
	rlc c			;7aca	cb 01		. .
	add a,001h		;7acc	c6 01		. .
	add a,001h		;7ace	c6 01		. .
	rst 0			;7ad0	c7		.
	ld bc,001c6h		;7ad1	01 c6 01	. . .
	rlc c			;7ad4	cb 01		. .
	rlc c			;7ad6	cb 01		. .
	jp z,0c401h		;7ad8	ca 01 c4	. . .
	ld bc,001cbh		;7adb	01 cb 01	. . .
	rst 0			;7ade	c7		.
	ld bc,001c7h		;7adf	01 c7 01	. . .
	add a,001h		;7ae2	c6 01		. .
	ret			;7ae4	c9		.
	ld bc,001cbh		;7ae5	01 cb 01	. . .
	ret z			;7ae8	c8		.
	ld bc,001c7h		;7ae9	01 c7 01	. . .
	jr nc,$+4		;7aec	30 02		0 .
	ld sp,03202h		;7aee	31 02 32	1 . 2
	ld (bc),a		;7af1	02		.
	inc sp			;7af2	33		3
	ld (bc),a		;7af3	02		.
	rrca			;7af4	0f		.
	inc bc			;7af5	03		.
	rrca			;7af6	0f		.
	inc bc			;7af7	03		.
	rrca			;7af8	0f		.
	inc bc			;7af9	03		.
	rrca			;7afa	0f		.
	inc bc			;7afb	03		.
	rrca			;7afc	0f		.
	inc bc			;7afd	03		.
	rrca			;7afe	0f		.
	inc bc			;7aff	03		.
	rst 38h			;7b00	ff		.
	inc b			;7b01	04		.
	rst 38h			;7b02	ff		.
	inc b			;7b03	04		.
	add a,001h		;7b04	c6 01		. .
	rlc c			;7b06	cb 01		. .
	call nz,0cb01h		;7b08	c4 01 cb	. . .
	ld bc,001c9h		;7b0b	01 c9 01	. . .
	jp z,0c801h		;7b0e	ca 01 c8	. . .
	ld bc,001c5h		;7b11	01 c5 01	. . .
	rlc c			;7b14	cb 01		. .
	rst 0			;7b16	c7		.
	ld bc,001c6h		;7b17	01 c6 01	. . .
	ret z			;7b1a	c8		.
	ld bc,001cah		;7b1b	01 ca 01	. . .
	rlc c			;7b1e	cb 01		. .
	rlc c			;7b20	cb 01		. .
	push bc			;7b22	c5		.
	ld bc,001cbh		;7b23	01 cb 01	. . .
	ret z			;7b26	c8		.
	ld bc,001cbh		;7b27	01 cb 01	. . .
	rst 0			;7b2a	c7		.
	ld bc,00234h		;7b2b	01 34 02	. 4 .
	dec (hl)		;7b2e	35		5
	ld (bc),a		;7b2f	02		.
	ld (hl),002h		;7b30	36 02		6 .
	rrca			;7b32	0f		.
	inc bc			;7b33	03		.
	rrca			;7b34	0f		.
	inc bc			;7b35	03		.
	rrca			;7b36	0f		.
	inc bc			;7b37	03		.
	rrca			;7b38	0f		.
	inc bc			;7b39	03		.
	rrca			;7b3a	0f		.
	inc bc			;7b3b	03		.
	rrca			;7b3c	0f		.
	inc bc			;7b3d	03		.
	rrca			;7b3e	0f		.
	inc bc			;7b3f	03		.
	rst 38h			;7b40	ff		.
	inc b			;7b41	04		.
	call z,0cd01h		;7b42	cc 01 cd	. . .
	ld bc,001cch		;7b45	01 cc 01	. . .
	call 0cc01h		;7b48	cd 01 cc	. . .
	ld bc,001cdh		;7b4b	01 cd 01	. . .
	call z,0cd01h		;7b4e	cc 01 cd	. . .
	ld bc,001d4h		;7b51	01 d4 01	. . .
	push de			;7b54	d5		.
	ld bc,001d6h		;7b55	01 d6 01	. . .
	rst 10h			;7b58	d7		.
	ld bc,001cch		;7b59	01 cc 01	. . .
	call 0cc01h		;7b5c	cd 01 cc	. . .
	ld bc,001cdh		;7b5f	01 cd 01	. . .
	call z,0cd01h		;7b62	cc 01 cd	. . .
	ld bc,001cch		;7b65	01 cc 01	. . .
	call 0df01h		;7b68	cd 01 df	. . .
	ld (bc),a		;7b6b	02		.
	ret po			;7b6c	e0		.
	ld (bc),a		;7b6d	02		.
	pop hl			;7b6e	e1		.
	ld (bc),a		;7b6f	02		.
	jp po,0e302h		;7b70	e2 02 e3	. . .
	ld (bc),a		;7b73	02		.
	rst 38h			;7b74	ff		.
	inc b			;7b75	04		.
	rst 38h			;7b76	ff		.
	inc b			;7b77	04		.
	rst 38h			;7b78	ff		.
	inc b			;7b79	04		.
	rst 38h			;7b7a	ff		.
	inc b			;7b7b	04		.
	rst 38h			;7b7c	ff		.
	inc b			;7b7d	04		.
	rst 38h			;7b7e	ff		.
	inc b			;7b7f	04		.
	rst 38h			;7b80	ff		.
	inc b			;7b81	04		.
	adc a,001h		;7b82	ce 01		. .
	rst 8			;7b84	cf		.
	ld bc,001ceh		;7b85	01 ce 01	. . .
	rst 8			;7b88	cf		.
	ld bc,001ceh		;7b89	01 ce 01	. . .
	rst 8			;7b8c	cf		.
	ld bc,001ceh		;7b8d	01 ce 01	. . .
	rst 8			;7b90	cf		.
	ld bc,001d4h		;7b91	01 d4 01	. . .
	push de			;7b94	d5		.
	ld bc,001d6h		;7b95	01 d6 01	. . .
	rst 10h			;7b98	d7		.
	ld bc,001ceh		;7b99	01 ce 01	. . .
	rst 8			;7b9c	cf		.
	ld bc,001ceh		;7b9d	01 ce 01	. . .
	rst 8			;7ba0	cf		.
	ld bc,001ceh		;7ba1	01 ce 01	. . .
	rst 8			;7ba4	cf		.
	ld bc,001ceh		;7ba5	01 ce 01	. . .
	rst 8			;7ba8	cf		.
	ld bc,002e4h		;7ba9	01 e4 02	. . .
	push hl			;7bac	e5		.
	ld (bc),a		;7bad	02		.
	and 002h		;7bae	e6 02		. .
	rst 20h			;7bb0	e7		.
	ld (bc),a		;7bb1	02		.
	ret pe			;7bb2	e8		.
	ld (bc),a		;7bb3	02		.
	cp 002h			;7bb4	fe 02		. .
	rst 38h			;7bb6	ff		.
	ld (bc),a		;7bb7	02		.
	nop			;7bb8	00		.
	inc bc			;7bb9	03		.
	scf			;7bba	37		7
	ld (bc),a		;7bbb	02		.
	jr c,l7bc0h		;7bbc	38 02		8 .
	rst 38h			;7bbe	ff		.
	inc b			;7bbf	04		.
l7bc0h:
	rst 38h			;7bc0	ff		.
	inc b			;7bc1	04		.
	ret nc			;7bc2	d0		.
	ld bc,001d0h		;7bc3	01 d0 01	. . .
	ret nc			;7bc6	d0		.
	ld bc,001d0h		;7bc7	01 d0 01	. . .
	ret nc			;7bca	d0		.
	ld bc,001d0h		;7bcb	01 d0 01	. . .
	ret nc			;7bce	d0		.
	ld bc,001d0h		;7bcf	01 d0 01	. . .
	call nc,0d501h		;7bd2	d4 01 d5	. . .
	ld bc,001d6h		;7bd5	01 d6 01	. . .
	rst 10h			;7bd8	d7		.
	ld bc,001d0h		;7bd9	01 d0 01	. . .
	ret nc			;7bdc	d0		.
	ld bc,001d0h		;7bdd	01 d0 01	. . .
	ret nc			;7be0	d0		.
	ld bc,001d0h		;7be1	01 d0 01	. . .
	ret nc			;7be4	d0		.
	ld bc,001d0h		;7be5	01 d0 01	. . .
	ret nc			;7be8	d0		.
	ld bc,0030fh		;7be9	01 0f 03	. . .
	rrca			;7bec	0f		.
	inc bc			;7bed	03		.
	jp (hl)			;7bee	e9		.
	ld (bc),a		;7bef	02		.
	jp pe,00f02h		;7bf0	ea 02 0f	. . .
	inc bc			;7bf3	03		.
	ld bc,00203h		;7bf4	01 03 02	. . .
	inc bc			;7bf7	03		.
	inc bc			;7bf8	03		.
	inc bc			;7bf9	03		.
	add hl,sp		;7bfa	39		9
	ld (bc),a		;7bfb	02		.
	ld a,(03b02h)		;7bfc	3a 02 3b	: . ;
	ld (bc),a		;7bff	02		.
	rst 38h			;7c00	ff		.
	inc b			;7c01	04		.
	pop de			;7c02	d1		.
	ld bc,001d2h		;7c03	01 d2 01	. . .
	pop de			;7c06	d1		.
	ld bc,001d2h		;7c07	01 d2 01	. . .
	pop de			;7c0a	d1		.
	ld bc,001d2h		;7c0b	01 d2 01	. . .
	pop de			;7c0e	d1		.
	ld bc,001d2h		;7c0f	01 d2 01	. . .
	call nc,0d501h		;7c12	d4 01 d5	. . .
	ld bc,001d6h		;7c15	01 d6 01	. . .
	rst 10h			;7c18	d7		.
	ld bc,001d1h		;7c19	01 d1 01	. . .
	jp nc,0d101h		;7c1c	d2 01 d1	. . .
	ld bc,001d2h		;7c1f	01 d2 01	. . .
	pop de			;7c22	d1		.
	ld bc,001d2h		;7c23	01 d2 01	. . .
	pop de			;7c26	d1		.
	ld bc,001d2h		;7c27	01 d2 01	. . .
	ex de,hl		;7c2a	eb		.
	ld (bc),a		;7c2b	02		.
	call pe,0ed02h		;7c2c	ec 02 ed	. . .
	ld (bc),a		;7c2f	02		.
	xor 002h		;7c30	ee 02		. .
	rst 28h			;7c32	ef		.
	ld (bc),a		;7c33	02		.
	ret p			;7c34	f0		.
	ld (bc),a		;7c35	02		.
	pop af			;7c36	f1		.
	ld (bc),a		;7c37	02		.
	jp p,00f02h		;7c38	f2 02 0f	. . .
	inc bc			;7c3b	03		.
	inc a			;7c3c	3c		<
	ld (bc),a		;7c3d	02		.
	dec a			;7c3e	3d		=
	ld (bc),a		;7c3f	02		.
	rst 38h			;7c40	ff		.
	inc b			;7c41	04		.
	call z,0cd01h		;7c42	cc 01 cd	. . .
	ld bc,001cch		;7c45	01 cc 01	. . .
	call 0cc01h		;7c48	cd 01 cc	. . .
	ld bc,001cdh		;7c4b	01 cd 01	. . .
	call z,0cd01h		;7c4e	cc 01 cd	. . .
	ld bc,001d4h		;7c51	01 d4 01	. . .
	push de			;7c54	d5		.
	ld bc,001d6h		;7c55	01 d6 01	. . .
	rst 10h			;7c58	d7		.
	ld bc,001cch		;7c59	01 cc 01	. . .
	call 0cc01h		;7c5c	cd 01 cc	. . .
	ld bc,001cdh		;7c5f	01 cd 01	. . .
	call z,0cd01h		;7c62	cc 01 cd	. . .
	ld bc,001cch		;7c65	01 cc 01	. . .
	call 0f301h		;7c68	cd 01 f3	. . .
	ld (bc),a		;7c6b	02		.
	call p,0f502h		;7c6c	f4 02 f5	. . .
	ld (bc),a		;7c6f	02		.
	or 002h			;7c70	f6 02		. .
	rst 30h			;7c72	f7		.
	ld (bc),a		;7c73	02		.
	ret m			;7c74	f8		.
	ld (bc),a		;7c75	02		.
	ld sp,hl		;7c76	f9		.
	ld (bc),a		;7c77	02		.
	jp m,03e02h		;7c78	fa 02 3e	. . >
	ld (bc),a		;7c7b	02		.
	ccf			;7c7c	3f		?
	ld (bc),a		;7c7d	02		.
	ld b,b			;7c7e	40		@
	ld (bc),a		;7c7f	02		.
	rst 38h			;7c80	ff		.
	inc b			;7c81	04		.
	adc a,001h		;7c82	ce 01		. .
	rst 8			;7c84	cf		.
	ld bc,001ceh		;7c85	01 ce 01	. . .
	rst 8			;7c88	cf		.
	ld bc,001ceh		;7c89	01 ce 01	. . .
	rst 8			;7c8c	cf		.
	ld bc,001ceh		;7c8d	01 ce 01	. . .
	rst 8			;7c90	cf		.
	ld bc,001d4h		;7c91	01 d4 01	. . .
	push de			;7c94	d5		.
	ld bc,001d6h		;7c95	01 d6 01	. . .
	rst 10h			;7c98	d7		.
	ld bc,001ceh		;7c99	01 ce 01	. . .
	rst 8			;7c9c	cf		.
	ld bc,001ceh		;7c9d	01 ce 01	. . .
	rst 8			;7ca0	cf		.
	ld bc,001ceh		;7ca1	01 ce 01	. . .
	rst 8			;7ca4	cf		.
	ld bc,001ceh		;7ca5	01 ce 01	. . .
	rst 8			;7ca8	cf		.
	ld bc,0030fh		;7ca9	01 0f 03	. . .
	rrca			;7cac	0f		.
	inc bc			;7cad	03		.
	rrca			;7cae	0f		.
	inc bc			;7caf	03		.
	rrca			;7cb0	0f		.
	inc bc			;7cb1	03		.
	call m,0fb02h		;7cb2	fc 02 fb	. . .
	ld (bc),a		;7cb5	02		.
	defb 0fdh,002h,00fh ;illegal sequence	;7cb6	fd 02 0f	. . .
	inc bc			;7cb9	03		.
	ld b,c			;7cba	41		A
	ld (bc),a		;7cbb	02		.
	ld b,d			;7cbc	42		B
	ld (bc),a		;7cbd	02		.
	ld b,e			;7cbe	43		C
	ld (bc),a		;7cbf	02		.
	rst 38h			;7cc0	ff		.
	inc b			;7cc1	04		.
	out (001h),a		;7cc2	d3 01		. .
	out (001h),a		;7cc4	d3 01		. .
	out (001h),a		;7cc6	d3 01		. .
	out (001h),a		;7cc8	d3 01		. .
	out (001h),a		;7cca	d3 01		. .
	out (001h),a		;7ccc	d3 01		. .
	out (001h),a		;7cce	d3 01		. .
	out (001h),a		;7cd0	d3 01		. .
	call nc,0d501h		;7cd2	d4 01 d5	. . .
	ld bc,001d6h		;7cd5	01 d6 01	. . .
	rst 10h			;7cd8	d7		.
	ld bc,001d3h		;7cd9	01 d3 01	. . .
	out (001h),a		;7cdc	d3 01		. .
	out (001h),a		;7cde	d3 01		. .
	out (001h),a		;7ce0	d3 01		. .
	out (001h),a		;7ce2	d3 01		. .
	out (001h),a		;7ce4	d3 01		. .
	out (001h),a		;7ce6	d3 01		. .
	out (001h),a		;7ce8	d3 01		. .
	rst 38h			;7cea	ff		.
	inc b			;7ceb	04		.
	rst 38h			;7cec	ff		.
	inc b			;7ced	04		.
	rst 38h			;7cee	ff		.
	inc b			;7cef	04		.
	rst 38h			;7cf0	ff		.
	inc b			;7cf1	04		.
	rst 38h			;7cf2	ff		.
	inc b			;7cf3	04		.
	rst 38h			;7cf4	ff		.
	inc b			;7cf5	04		.
	rst 38h			;7cf6	ff		.
	inc b			;7cf7	04		.
	rst 38h			;7cf8	ff		.
	inc b			;7cf9	04		.
	rst 38h			;7cfa	ff		.
	inc b			;7cfb	04		.
	rst 38h			;7cfc	ff		.
	inc b			;7cfd	04		.
	rst 38h			;7cfe	ff		.
	inc b			;7cff	04		.
	rst 38h			;7d00	ff		.
	inc b			;7d01	04		.
	rst 38h			;7d02	ff		.
	inc b			;7d03	04		.
	rst 38h			;7d04	ff		.
	inc b			;7d05	04		.
	rst 38h			;7d06	ff		.
	inc b			;7d07	04		.
	rst 38h			;7d08	ff		.
	inc b			;7d09	04		.
	rst 38h			;7d0a	ff		.
	inc b			;7d0b	04		.
	rst 38h			;7d0c	ff		.
	inc b			;7d0d	04		.
	rst 38h			;7d0e	ff		.
	inc b			;7d0f	04		.
	rst 38h			;7d10	ff		.
	inc b			;7d11	04		.
	rst 38h			;7d12	ff		.
	inc b			;7d13	04		.
	rst 38h			;7d14	ff		.
	inc b			;7d15	04		.
	rst 38h			;7d16	ff		.
	inc b			;7d17	04		.
	rst 38h			;7d18	ff		.
	inc b			;7d19	04		.
	rst 38h			;7d1a	ff		.
	inc b			;7d1b	04		.
	rst 38h			;7d1c	ff		.
	inc b			;7d1d	04		.
	rst 38h			;7d1e	ff		.
	inc b			;7d1f	04		.
	rst 38h			;7d20	ff		.
	inc b			;7d21	04		.
	rst 38h			;7d22	ff		.
	inc b			;7d23	04		.
	rst 38h			;7d24	ff		.
	inc b			;7d25	04		.
	rst 38h			;7d26	ff		.
	inc b			;7d27	04		.
	rst 38h			;7d28	ff		.
	inc b			;7d29	04		.
	di			;7d2a	f3		.
	ld bc,001f4h		;7d2b	01 f4 01	. . .
	push af			;7d2e	f5		.
	ld bc,001f6h		;7d2f	01 f6 01	. . .
	rst 30h			;7d32	f7		.
	ld bc,001f8h		;7d33	01 f8 01	. . .
	rst 38h			;7d36	ff		.
	inc b			;7d37	04		.
	inc bc			;7d38	03		.
	ld (bc),a		;7d39	02		.
	inc b			;7d3a	04		.
	ld (bc),a		;7d3b	02		.
	rst 38h			;7d3c	ff		.
	inc b			;7d3d	04		.
	dec b			;7d3e	05		.
	ld (bc),a		;7d3f	02		.
	rst 38h			;7d40	ff		.
	inc b			;7d41	04		.
	rst 18h			;7d42	df		.
	nop			;7d43	00		.
	ret po			;7d44	e0		.
	nop			;7d45	00		.
	pop hl			;7d46	e1		.
	nop			;7d47	00		.
	jp po,0e300h		;7d48	e2 00 e3	. . .
	nop			;7d4b	00		.
	call po,0e500h		;7d4c	e4 00 e5	. . .
	nop			;7d4f	00		.
	and 000h		;7d50	e6 00		. .
	rst 20h			;7d52	e7		.
	nop			;7d53	00		.
	ret pe			;7d54	e8		.
	nop			;7d55	00		.
	jp (hl)			;7d56	e9		.
	nop			;7d57	00		.
	and 000h		;7d58	e6 00		. .
	rst 20h			;7d5a	e7		.
	nop			;7d5b	00		.
	jp pe,0eb00h		;7d5c	ea 00 eb	. . .
	nop			;7d5f	00		.
	jp (hl)			;7d60	e9		.
	nop			;7d61	00		.
	call pe,0ed00h		;7d62	ec 00 ed	. . .
	nop			;7d65	00		.
	xor 000h		;7d66	ee 00		. .
	rst 28h			;7d68	ef		.
	nop			;7d69	00		.
	ld sp,hl		;7d6a	f9		.
	ld bc,001fah		;7d6b	01 fa 01	. . .
	inc c			;7d6e	0c		.
	ld (bc),a		;7d6f	02		.
	ei			;7d70	fb		.
	ld bc,001fch		;7d71	01 fc 01	. . .
	inc c			;7d74	0c		.
	ld (bc),a		;7d75	02		.
	rst 38h			;7d76	ff		.
	inc b			;7d77	04		.
	ld b,002h		;7d78	06 02		. .
	rst 38h			;7d7a	ff		.
	inc b			;7d7b	04		.
	rlca			;7d7c	07		.
	ld (bc),a		;7d7d	02		.
	ex af,af'		;7d7e	08		.
	ld (bc),a		;7d7f	02		.
	rst 38h			;7d80	ff		.
	inc b			;7d81	04		.
	ret p			;7d82	f0		.
	nop			;7d83	00		.
	pop af			;7d84	f1		.
	nop			;7d85	00		.
	jp p,0f300h		;7d86	f2 00 f3	. . .
	nop			;7d89	00		.
	call p,0f500h		;7d8a	f4 00 f5	. . .
	nop			;7d8d	00		.
	or 000h			;7d8e	f6 00		. .
	rst 30h			;7d90	f7		.
	nop			;7d91	00		.
	ret m			;7d92	f8		.
	nop			;7d93	00		.
	ld sp,hl		;7d94	f9		.
	nop			;7d95	00		.
	jp m,0fb00h		;7d96	fa 00 fb	. . .
	nop			;7d99	00		.
	call m,0fd00h		;7d9a	fc 00 fd	. . .
	nop			;7d9d	00		.
	cp 000h			;7d9e	fe 00		. .
	rst 38h			;7da0	ff		.
	nop			;7da1	00		.
	nop			;7da2	00		.
	ld bc,00101h		;7da3	01 01 01	. . .
	ld (bc),a		;7da6	02		.
	ld bc,00103h		;7da7	01 03 01	. . .
	defb 0fdh,001h,0feh ;illegal sequence	;7daa	fd 01 fe	. . .
	ld bc,001ffh		;7dad	01 ff 01	. . .
	nop			;7db0	00		.
	ld (bc),a		;7db1	02		.
	rst 38h			;7db2	ff		.
	inc b			;7db3	04		.
	rst 38h			;7db4	ff		.
	ld bc,004ffh		;7db5	01 ff 04	. . .
	add hl,bc		;7db8	09		.
	ld (bc),a		;7db9	02		.
	ld a,(bc)		;7dba	0a		.
	ld (bc),a		;7dbb	02		.
	dec bc			;7dbc	0b		.
	ld (bc),a		;7dbd	02		.
	rst 38h			;7dbe	ff		.
	inc b			;7dbf	04		.
	rst 38h			;7dc0	ff		.
	inc b			;7dc1	04		.
	inc b			;7dc2	04		.
	ld bc,00105h		;7dc3	01 05 01	. . .
	ld b,001h		;7dc6	06 01		. .
	rlca			;7dc8	07		.
	ld bc,00108h		;7dc9	01 08 01	. . .
	add hl,bc		;7dcc	09		.
	ld bc,0010ah		;7dcd	01 0a 01	. . .
	dec bc			;7dd0	0b		.
	ld bc,0010ch		;7dd1	01 0c 01	. . .
	dec c			;7dd4	0d		.
	ld bc,0010eh		;7dd5	01 0e 01	. . .
	rrca			;7dd8	0f		.
	ld bc,00110h		;7dd9	01 10 01	. . .
	ld de,01201h		;7ddc	11 01 12	. . .
	ld bc,00113h		;7ddf	01 13 01	. . .
	inc d			;7de2	14		.
	ld bc,00115h		;7de3	01 15 01	. . .
	ld d,001h		;7de6	16 01		. .
	rla			;7de8	17		.
	ld bc,00201h		;7de9	01 01 02	. . .
	ld (bc),a		;7dec	02		.
	ld (bc),a		;7ded	02		.
	rst 38h			;7dee	ff		.
	inc b			;7def	04		.
	rst 38h			;7df0	ff		.
	inc b			;7df1	04		.
	rst 38h			;7df2	ff		.
	inc b			;7df3	04		.
	rst 38h			;7df4	ff		.
	inc b			;7df5	04		.
	rst 38h			;7df6	ff		.
	inc b			;7df7	04		.
	dec c			;7df8	0d		.
	ld (bc),a		;7df9	02		.
	ld b,002h		;7dfa	06 02		. .
	ld c,002h		;7dfc	0e 02		. .
	rrca			;7dfe	0f		.
	ld (bc),a		;7dff	02		.
	rst 38h			;7e00	ff		.
	inc b			;7e01	04		.
	jr l7e05h		;7e02	18 01		. .
	add hl,de		;7e04	19		.
l7e05h:
	ld bc,0011ah		;7e05	01 1a 01	. . .
	dec de			;7e08	1b		.
	ld bc,0011ch		;7e09	01 1c 01	. . .
	dec e			;7e0c	1d		.
	ld bc,0011eh		;7e0d	01 1e 01	. . .
	rra			;7e10	1f		.
	ld bc,0011fh		;7e11	01 1f 01	. . .
	jr nz,$+3		;7e14	20 01		  .
	ld hl,02201h		;7e16	21 01 22	! . "
	ld bc,00123h		;7e19	01 23 01	. # .
	inc h			;7e1c	24		$
	ld bc,00125h		;7e1d	01 25 01	. % .
	ld h,001h		;7e20	26 01		& .
	daa			;7e22	27		'
	ld bc,00128h		;7e23	01 28 01	. ( .
	add hl,hl		;7e26	29		)
	ld bc,0012ah		;7e27	01 2a 01	. * .
	rst 38h			;7e2a	ff		.
	inc b			;7e2b	04		.
	rst 38h			;7e2c	ff		.
	inc b			;7e2d	04		.
	rst 38h			;7e2e	ff		.
	inc b			;7e2f	04		.
	rst 38h			;7e30	ff		.
	inc b			;7e31	04		.
	rst 38h			;7e32	ff		.
	inc b			;7e33	04		.
	rst 38h			;7e34	ff		.
	inc b			;7e35	04		.
	rst 38h			;7e36	ff		.
	inc b			;7e37	04		.
	rst 38h			;7e38	ff		.
	inc b			;7e39	04		.
	rst 38h			;7e3a	ff		.
	inc b			;7e3b	04		.
	djnz $+4		;7e3c	10 02		. .
	ld de,0ff02h		;7e3e	11 02 ff	. . .
	inc b			;7e41	04		.
	dec hl			;7e42	2b		+
	ld bc,0012ch		;7e43	01 2c 01	. , .
	dec l			;7e46	2d		-
	ld bc,0012eh		;7e47	01 2e 01	. . .
	cpl			;7e4a	2f		/
	ld bc,00130h		;7e4b	01 30 01	. 0 .
	ld sp,03201h		;7e4e	31 01 32	1 . 2
	ld bc,00133h		;7e51	01 33 01	. 3 .
	inc (hl)		;7e54	34		4
	ld bc,00135h		;7e55	01 35 01	. 5 .
	ld (hl),001h		;7e58	36 01		6 .
	scf			;7e5a	37		7
	ld bc,00138h		;7e5b	01 38 01	. 8 .
	add hl,sp		;7e5e	39		9
	ld bc,0013ah		;7e5f	01 3a 01	. : .
	dec sp			;7e62	3b		;
	ld bc,0013ch		;7e63	01 3c 01	. < .
	dec a			;7e66	3d		=
	ld bc,0013eh		;7e67	01 3e 01	. > .
	rst 38h			;7e6a	ff		.
	inc b			;7e6b	04		.
	rst 38h			;7e6c	ff		.
	inc b			;7e6d	04		.
	rst 38h			;7e6e	ff		.
	inc b			;7e6f	04		.
	rst 38h			;7e70	ff		.
	inc b			;7e71	04		.
	rst 38h			;7e72	ff		.
	inc b			;7e73	04		.
	rst 38h			;7e74	ff		.
	inc b			;7e75	04		.
	rst 38h			;7e76	ff		.
	inc b			;7e77	04		.
	rst 38h			;7e78	ff		.
	inc b			;7e79	04		.
	rst 38h			;7e7a	ff		.
	inc b			;7e7b	04		.
	rst 38h			;7e7c	ff		.
	inc b			;7e7d	04		.
	rst 38h			;7e7e	ff		.
	inc b			;7e7f	04		.
	rst 38h			;7e80	ff		.
	inc b			;7e81	04		.
	ccf			;7e82	3f		?
	ld bc,00140h		;7e83	01 40 01	. @ .
	ld b,c			;7e86	41		A
	ld bc,00142h		;7e87	01 42 01	. B .
	ld b,e			;7e8a	43		C
	ld bc,00144h		;7e8b	01 44 01	. D .
	ld b,l			;7e8e	45		E
	ld bc,00146h		;7e8f	01 46 01	. F .
	ld b,a			;7e92	47		G
	ld bc,00148h		;7e93	01 48 01	. H .
	ld c,c			;7e96	49		I
	ld bc,0014ah		;7e97	01 4a 01	. J .
	ld c,e			;7e9a	4b		K
	ld bc,0014ch		;7e9b	01 4c 01	. L .
	ld c,l			;7e9e	4d		M
	ld bc,0014eh		;7e9f	01 4e 01	. N .
	ld c,a			;7ea2	4f		O
	ld bc,00150h		;7ea3	01 50 01	. P .
	ld d,b			;7ea6	50		P
	ld bc,00149h		;7ea7	01 49 01	. I .
	rst 38h			;7eaa	ff		.
	inc b			;7eab	04		.
	rst 38h			;7eac	ff		.
	inc b			;7ead	04		.
	rst 38h			;7eae	ff		.
	inc b			;7eaf	04		.
	rst 38h			;7eb0	ff		.
	inc b			;7eb1	04		.
	rst 38h			;7eb2	ff		.
	inc b			;7eb3	04		.
	rst 38h			;7eb4	ff		.
	inc b			;7eb5	04		.
	rst 38h			;7eb6	ff		.
	inc b			;7eb7	04		.
	rst 38h			;7eb8	ff		.
	inc b			;7eb9	04		.
	rst 38h			;7eba	ff		.
	inc b			;7ebb	04		.
	rst 38h			;7ebc	ff		.
	inc b			;7ebd	04		.
	rst 38h			;7ebe	ff		.
	inc b			;7ebf	04		.
	rst 38h			;7ec0	ff		.
	inc b			;7ec1	04		.
	ld d,d			;7ec2	52		R
	ld bc,00153h		;7ec3	01 53 01	. S .
	ld d,h			;7ec6	54		T
	ld bc,00155h		;7ec7	01 55 01	. U .
	ld d,(hl)		;7eca	56		V
	ld bc,00157h		;7ecb	01 57 01	. W .
	ld e,b			;7ece	58		X
	ld bc,00159h		;7ecf	01 59 01	. Y .
	ld e,d			;7ed2	5a		Z
	ld bc,0015bh		;7ed3	01 5b 01	. [ .
	ld e,e			;7ed6	5b		[
	ld bc,0015bh		;7ed7	01 5b 01	. [ .
	ld e,h			;7eda	5c		\
	ld bc,0015dh		;7edb	01 5d 01	. ] .
	ld e,(hl)		;7ede	5e		^
	ld bc,0015fh		;7edf	01 5f 01	. _ .
	ld h,b			;7ee2	60		`
	ld bc,00161h		;7ee3	01 61 01	. a .
	ld e,e			;7ee6	5b		[
	ld bc,0015bh		;7ee7	01 5b 01	. [ .
	rst 38h			;7eea	ff		.
	inc b			;7eeb	04		.
	rst 38h			;7eec	ff		.
	inc b			;7eed	04		.
	rst 38h			;7eee	ff		.
	inc b			;7eef	04		.
	rst 38h			;7ef0	ff		.
	inc b			;7ef1	04		.
	rst 38h			;7ef2	ff		.
	inc b			;7ef3	04		.
	rst 38h			;7ef4	ff		.
	inc b			;7ef5	04		.
	rst 38h			;7ef6	ff		.
	inc b			;7ef7	04		.
	rst 38h			;7ef8	ff		.
	inc b			;7ef9	04		.
	rst 38h			;7efa	ff		.
	inc b			;7efb	04		.
	rst 38h			;7efc	ff		.
	inc b			;7efd	04		.
	rst 38h			;7efe	ff		.
	inc b			;7eff	04		.
	rst 38h			;7f00	ff		.
	inc b			;7f01	04		.
	ld h,d			;7f02	62		b
	ld bc,0015bh		;7f03	01 5b 01	. [ .
	ld h,e			;7f06	63		c
	ld bc,00164h		;7f07	01 64 01	. d .
	ld h,l			;7f0a	65		e
	ld bc,00166h		;7f0b	01 66 01	. f .
	ld h,a			;7f0e	67		g
	ld bc,00168h		;7f0f	01 68 01	. h .
	ld l,c			;7f12	69		i
	ld bc,0016ah		;7f13	01 6a 01	. j .
	ld l,e			;7f16	6b		k
	ld bc,0016ch		;7f17	01 6c 01	. l .
	ld l,l			;7f1a	6d		m
	ld bc,0016eh		;7f1b	01 6e 01	. n .
	ld l,a			;7f1e	6f		o
	ld bc,00170h		;7f1f	01 70 01	. p .
	ld (hl),c		;7f22	71		q
	ld bc,00172h		;7f23	01 72 01	. r .
	ld (hl),e		;7f26	73		s
	ld bc,00174h		;7f27	01 74 01	. t .
	rst 38h			;7f2a	ff		.
	inc b			;7f2b	04		.
	rst 38h			;7f2c	ff		.
	inc b			;7f2d	04		.
	rst 38h			;7f2e	ff		.
	inc b			;7f2f	04		.
	rst 38h			;7f30	ff		.
	inc b			;7f31	04		.
	rst 38h			;7f32	ff		.
	inc b			;7f33	04		.
	rst 38h			;7f34	ff		.
	inc b			;7f35	04		.
	rst 38h			;7f36	ff		.
	inc b			;7f37	04		.
	rst 38h			;7f38	ff		.
	inc b			;7f39	04		.
	rst 38h			;7f3a	ff		.
	inc b			;7f3b	04		.
	rst 38h			;7f3c	ff		.
	inc b			;7f3d	04		.
	rst 38h			;7f3e	ff		.
	inc b			;7f3f	04		.
	rst 38h			;7f40	ff		.
	inc b			;7f41	04		.
	ld (hl),l		;7f42	75		u
	ld bc,00176h		;7f43	01 76 01	. v .
	ld (hl),a		;7f46	77		w
	ld bc,00178h		;7f47	01 78 01	. x .
	ld a,c			;7f4a	79		y
	ld bc,0017ah		;7f4b	01 7a 01	. z .
	ld a,e			;7f4e	7b		{
	ld bc,0017ch		;7f4f	01 7c 01	. | .
	ld a,l			;7f52	7d		}
	ld bc,0017eh		;7f53	01 7e 01	. ~ .
	ld a,a			;7f56	7f		.
	ld bc,00180h		;7f57	01 80 01	. . .
	add a,c			;7f5a	81		.
	ld bc,00182h		;7f5b	01 82 01	. . .
	add a,e			;7f5e	83		.
	ld bc,00179h		;7f5f	01 79 01	. y .
	add a,h			;7f62	84		.
	ld bc,00185h		;7f63	01 85 01	. . .
	add a,(hl)		;7f66	86		.
	ld bc,00187h		;7f67	01 87 01	. . .
	rst 38h			;7f6a	ff		.
	inc b			;7f6b	04		.
	rst 38h			;7f6c	ff		.
	inc b			;7f6d	04		.
	rst 38h			;7f6e	ff		.
	inc b			;7f6f	04		.
	rst 38h			;7f70	ff		.
	inc b			;7f71	04		.
	rst 38h			;7f72	ff		.
	inc b			;7f73	04		.
	rst 38h			;7f74	ff		.
	inc b			;7f75	04		.
	rst 38h			;7f76	ff		.
	inc b			;7f77	04		.
	rst 38h			;7f78	ff		.
	inc b			;7f79	04		.
	rst 38h			;7f7a	ff		.
	inc b			;7f7b	04		.
	rst 38h			;7f7c	ff		.
	inc b			;7f7d	04		.
	rst 38h			;7f7e	ff		.
	inc b			;7f7f	04		.
	rst 38h			;7f80	ff		.
	inc b			;7f81	04		.
	adc a,b			;7f82	88		.
	ld bc,00189h		;7f83	01 89 01	. . .
	adc a,e			;7f86	8b		.
	ld bc,0018ah		;7f87	01 8a 01	. . .
	adc a,h			;7f8a	8c		.
	ld bc,0018dh		;7f8b	01 8d 01	. . .
	adc a,(hl)		;7f8e	8e		.
	ld bc,0018fh		;7f8f	01 8f 01	. . .
	sub b			;7f92	90		.
	ld bc,00191h		;7f93	01 91 01	. . .
	sub d			;7f96	92		.
	ld bc,00193h		;7f97	01 93 01	. . .
	sub h			;7f9a	94		.
	ld bc,00195h		;7f9b	01 95 01	. . .
	sub (hl)		;7f9e	96		.
	ld bc,00197h		;7f9f	01 97 01	. . .
	sbc a,b			;7fa2	98		.
	ld bc,00199h		;7fa3	01 99 01	. . .
	adc a,a			;7fa6	8f		.
	ld bc,0019ah		;7fa7	01 9a 01	. . .
	rst 38h			;7faa	ff		.
	inc b			;7fab	04		.
	rst 38h			;7fac	ff		.
	inc b			;7fad	04		.
	rst 38h			;7fae	ff		.
	inc b			;7faf	04		.
	rst 38h			;7fb0	ff		.
	inc b			;7fb1	04		.
	rst 38h			;7fb2	ff		.
	inc b			;7fb3	04		.
	rst 38h			;7fb4	ff		.
	inc b			;7fb5	04		.
	rst 38h			;7fb6	ff		.
	inc b			;7fb7	04		.
	rst 38h			;7fb8	ff		.
	inc b			;7fb9	04		.
	rst 38h			;7fba	ff		.
	inc b			;7fbb	04		.
	rst 38h			;7fbc	ff		.
	inc b			;7fbd	04		.
	rst 38h			;7fbe	ff		.
	inc b			;7fbf	04		.
	rst 38h			;7fc0	ff		.
	inc b			;7fc1	04		.
	sbc a,e			;7fc2	9b		.
	ld bc,0019ch		;7fc3	01 9c 01	. . .
	sbc a,l			;7fc6	9d		.
	ld bc,0019eh		;7fc7	01 9e 01	. . .
	sbc a,a			;7fca	9f		.
	ld bc,001a0h		;7fcb	01 a0 01	. . .
	and c			;7fce	a1		.
	ld bc,001a2h		;7fcf	01 a2 01	. . .
	and e			;7fd2	a3		.
	ld bc,001a4h		;7fd3	01 a4 01	. . .
	and l			;7fd6	a5		.
	ld bc,001a6h		;7fd7	01 a6 01	. . .
	and a			;7fda	a7		.
	ld bc,001a8h		;7fdb	01 a8 01	. . .
	xor c			;7fde	a9		.
	ld bc,001aah		;7fdf	01 aa 01	. . .
	xor e			;7fe2	ab		.
	ld bc,001ach		;7fe3	01 ac 01	. . .
	xor l			;7fe6	ad		.
	ld bc,001aeh		;7fe7	01 ae 01	. . .
	rst 38h			;7fea	ff		.
	inc b			;7feb	04		.
	rst 38h			;7fec	ff		.
	inc b			;7fed	04		.
	rst 38h			;7fee	ff		.
	inc b			;7fef	04		.
	rst 38h			;7ff0	ff		.
	inc b			;7ff1	04		.
	rst 38h			;7ff2	ff		.
	inc b			;7ff3	04		.
	rst 38h			;7ff4	ff		.
	inc b			;7ff5	04		.
	rst 38h			;7ff6	ff		.
	inc b			;7ff7	04		.
	rst 38h			;7ff8	ff		.
	inc b			;7ff9	04		.
	rst 38h			;7ffa	ff		.
	inc b			;7ffb	04		.
	rst 38h			;7ffc	ff		.
	inc b			;7ffd	04		.
	rst 38h			;7ffe	ff		.
	inc b			;7fff	04		.
