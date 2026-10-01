; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank03_A000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank03.bin

	org 0a000h

	inc bc			;a000	03		.
	jr nc,la018h		;a001	30 15		0 .
	ld c,l			;a003	4d		M
	dec b			;a004	05		.
	inc b			;a005	04		.
	jr nc,la01dh		;a006	30 15		0 .
	ld c,l			;a008	4d		M
	dec b			;a009	05		.
	ld a,(bc)		;a00a	0a		.
	jr nc,la026h		;a00b	30 19		0 .
	ld c,d			;a00d	4a		J
	dec b			;a00e	05		.
	ld b,030h		;a00f	06 30		. 0
	dec de			;a011	1b		.
	ld c,d			;a012	4a		J
	dec b			;a013	05		.
	djnz la046h		;a014	10 30		. 0
	dec e			;a016	1d		.
	ld c,d			;a017	4a		J
la018h:
	dec b			;a018	05		.
	ld c,030h		;a019	0e 30		. 0
	jr nz,la067h		;a01b	20 4a		  J
la01dh:
	dec b			;a01d	05		.
	inc bc			;a01e	03		.
	jr nc,$+35		;a01f	30 21		0 !
	ld c,d			;a021	4a		J
	dec b			;a022	05		.
	ex af,af'		;a023	08		.
	jr nc,$+36		;a024	30 22		0 "
la026h:
	ld c,d			;a026	4a		J
	dec b			;a027	05		.
	inc bc			;a028	03		.
	jr nc,la04fh		;a029	30 24		0 $
	ld c,d			;a02b	4a		J
	dec b			;a02c	05		.
	ld (de),a		;a02d	12		.
	jr nc,la056h		;a02e	30 26		0 &
	ld c,d			;a030	4a		J
	dec b			;a031	05		.
	ld (de),a		;a032	12		.
	jr nc,la05bh		;a033	30 26		0 &
	ld c,d			;a035	4a		J
	dec b			;a036	05		.
	inc bc			;a037	03		.
	jr nc,la062h		;a038	30 28		0 (
	ld c,d			;a03a	4a		J
	dec b			;a03b	05		.
	inc bc			;a03c	03		.
	jr nc,la067h		;a03d	30 28		0 (
	ld c,l			;a03f	4d		M
	dec b			;a040	05		.
	ld c,030h		;a041	0e 30		. 0
	jr z,$+79		;a043	28 4d		( M
	dec b			;a045	05		.
la046h:
	add hl,bc		;a046	09		.
	jr nc,$+42		;a047	30 28		0 (
	ld c,l			;a049	4d		M
	dec b			;a04a	05		.
	inc b			;a04b	04		.
	jr nc,la07eh		;a04c	30 30		0 0
	ld c,d			;a04e	4a		J
la04fh:
	dec b			;a04f	05		.
	inc bc			;a050	03		.
	or b			;a051	b0		.
	jr nc,la09eh		;a052	30 4a		0 J
	dec b			;a054	05		.
	ld (de),a		;a055	12		.
la056h:
	jr nc,la08ah		;a056	30 32		0 2
	xor d			;a058	aa		.
	dec b			;a059	05		.
	ex af,af'		;a05a	08		.
la05bh:
	or b			;a05b	b0		.
	ld (0054ah),a		;a05c	32 4a 05	2 J .
	inc c			;a05f	0c		.
	jr nc,$+54		;a060	30 34		0 4
la062h:
	ld c,d			;a062	4a		J
	dec b			;a063	05		.
	inc bc			;a064	03		.
	jr nc,la09dh		;a065	30 36		0 6
la067h:
	ld c,d			;a067	4a		J
	dec b			;a068	05		.
	inc bc			;a069	03		.
	jr nc,la0a4h		;a06a	30 38		0 8
	ld c,d			;a06c	4a		J
	dec b			;a06d	05		.
	inc bc			;a06e	03		.
	or b			;a06f	b0		.
	jr c,la0bch		;a070	38 4a		8 J
	dec b			;a072	05		.
	ld (de),a		;a073	12		.
la074h:
	jr nc,la0b1h		;a074	30 3b		0 ;
	ld c,l			;a076	4d		M
	dec b			;a077	05		.
	ex af,af'		;a078	08		.
	jr nc,la0b6h		;a079	30 3b		0 ;
	ld c,l			;a07b	4d		M
	dec b			;a07c	05		.
	dec c			;a07d	0d		.
la07eh:
	jr nc,la0c0h		;a07e	30 40		0 @
	ld d,c			;a080	51		Q
	adc a,(hl)		;a081	8e		.
	ld b,009h		;a082	06 09		. .
	rra			;a084	1f		.
	inc bc			;a085	03		.
	ld (bc),a		;a086	02		.
	ex af,af'		;a087	08		.
	inc b			;a088	04		.
	ld b,h			;a089	44		D
la08ah:
	ld (de),a		;a08a	12		.
	djnz la0bdh		;a08b	10 30		. 0
	ld b,b			;a08d	40		@
	ld c,d			;a08e	4a		J
la08fh:
	dec b			;a08f	05		.
	inc bc			;a090	03		.
	jr nc,$+74		;a091	30 48		0 H
	ld c,d			;a093	4a		J
	dec b			;a094	05		.
	djnz la0c7h		;a095	10 30		. 0
	ld c,b			;a097	48		H
	ld c,d			;a098	4a		J
	dec b			;a099	05		.
	inc bc			;a09a	03		.
	jr nc,la0e5h		;a09b	30 48		0 H
la09dh:
	ld c,d			;a09d	4a		J
la09eh:
	dec b			;a09e	05		.
	ld (de),a		;a09f	12		.
	jr nc,la0f0h		;a0a0	30 4e		0 N
	ld c,d			;a0a2	4a		J
	dec b			;a0a3	05		.
la0a4h:
	ld (de),a		;a0a4	12		.
	jr nc,la0f7h		;a0a5	30 50		0 P
la0a7h:
	ld c,l			;a0a7	4d		M
	dec b			;a0a8	05		.
	inc b			;a0a9	04		.
	jr nc,la0fch		;a0aa	30 50		0 P
	ld c,l			;a0ac	4d		M
	dec b			;a0ad	05		.
	ld a,(bc)		;a0ae	0a		.
	jr nc,$+87		;a0af	30 55		0 U
la0b1h:
	ld c,d			;a0b1	4a		J
la0b2h:
	dec b			;a0b2	05		.
	ld b,030h		;a0b3	06 30		. 0
	ld d,(hl)		;a0b5	56		V
la0b6h:
	ld c,d			;a0b6	4a		J
	dec b			;a0b7	05		.
la0b8h:
	add hl,bc		;a0b8	09		.
	jr nc,$+96		;a0b9	30 5e		0 ^
	ld c,d			;a0bb	4a		J
la0bch:
	dec b			;a0bc	05		.
la0bdh:
	inc bc			;a0bd	03		.
	jr nc,la11eh		;a0be	30 5e		0 ^
la0c0h:
	jp z,00905h		;a0c0	ca 05 09	. . .
la0c3h:
	jr nc,$+98		;a0c3	30 60		0 `
	ld c,l			;a0c5	4d		M
	dec b			;a0c6	05		.
la0c7h:
	ex af,af'		;a0c7	08		.
	jr nc,la12ah		;a0c8	30 60		0 `
la0cah:
	ld d,c			;a0ca	51		Q
	adc a,(hl)		;a0cb	8e		.
	ld b,010h		;a0cc	06 10		. .
	nop			;a0ce	00		.
	inc bc			;a0cf	03		.
	ld (bc),a		;a0d0	02		.
	ex af,af'		;a0d1	08		.
	inc b			;a0d2	04		.
	ld b,h			;a0d3	44		D
	ld b,010h		;a0d4	06 10		. .
	jr nc,la148h		;a0d6	30 70		0 p
	ld d,c			;a0d8	51		Q
	adc a,(hl)		;a0d9	8e		.
	ld b,00dh		;a0da	06 0d		. .
	rra			;a0dc	1f		.
	inc bc			;a0dd	03		.
	ld (bc),a		;a0de	02		.
	ex af,af'		;a0df	08		.
la0e0h:
	inc b			;a0e0	04		.
	ld b,h			;a0e1	44		D
	ld (de),a		;a0e2	12		.
	djnz la115h		;a0e3	10 30		. 0
la0e5h:
	ld (hl),b		;a0e5	70		p
	ld d,c			;a0e6	51		Q
	adc a,(hl)		;a0e7	8e		.
	ld b,00dh		;a0e8	06 0d		. .
	rra			;a0ea	1f		.
	inc bc			;a0eb	03		.
	ld (bc),a		;a0ec	02		.
	ex af,af'		;a0ed	08		.
	inc b			;a0ee	04		.
	ld b,h			;a0ef	44		D
la0f0h:
	ld b,00ah		;a0f0	06 0a		. .
	jr nc,la074h		;a0f2	30 80		0 .
	ld e,a			;a0f4	5f		_
la0f5h:
	ld b,001h		;a0f5	06 01		. .
la0f7h:
	inc b			;a0f7	04		.
	jr nc,$-126		;a0f8	30 80		0 .
	ld c,005h		;a0fa	0e 05		. .
la0fch:
	inc bc			;a0fc	03		.
	jr nc,la08fh		;a0fd	30 90		0 .
	ld c,005h		;a0ff	0e 05		. .
	dec c			;a101	0d		.
	jr nc,la0a7h		;a102	30 a3		0 .
	ld (hl),e		;a104	73		s
	ld b,00ah		;a105	06 0a		. .
la107h:
	rra			;a107	1f		.
	jr nc,la0b2h		;a108	30 a8		0 .
	ld (hl),e		;a10a	73		s
	ld b,090h		;a10b	06 90		. .
	rra			;a10d	1f		.
	jr nc,la0b8h		;a10e	30 a8		0 .
	ld c,005h		;a110	0e 05		. .
	inc bc			;a112	03		.
	jr nc,la0c3h		;a113	30 ae		0 .
la115h:
	rla			;a115	17		.
	dec b			;a116	05		.
	inc c			;a117	0c		.
	jr nc,la0cah		;a118	30 b0		0 .
	ld d,c			;a11a	51		Q
	adc a,(hl)		;a11b	8e		.
	ld b,009h		;a11c	06 09		. .
la11eh:
	rra			;a11e	1f		.
	inc bc			;a11f	03		.
	ld (bc),a		;a120	02		.
	ex af,af'		;a121	08		.
	inc b			;a122	04		.
	ld b,h			;a123	44		D
la124h:
	ld b,009h		;a124	06 09		. .
	jr nc,la0e0h		;a126	30 b8		0 .
	ld c,005h		;a128	0e 05		. .
la12ah:
	dec c			;a12a	0d		.
	jr nc,la0f5h		;a12b	30 c8		0 .
	ld d,c			;a12d	51		Q
	adc a,(hl)		;a12e	8e		.
	ld b,006h		;a12f	06 06		. .
	rra			;a131	1f		.
	inc bc			;a132	03		.
	ld (bc),a		;a133	02		.
	ex af,af'		;a134	08		.
	inc b			;a135	04		.
	ld b,h			;a136	44		D
la137h:
	ld b,008h		;a137	06 08		. .
	jr nc,la107h		;a139	30 cc		0 .
	ld c,l			;a13b	4d		M
	dec b			;a13c	05		.
la13dh:
	ld b,030h		;a13d	06 30		. 0
	rst 8			;a13f	cf		.
	ld c,l			;a140	4d		M
	dec b			;a141	05		.
	ld (bc),a		;a142	02		.
	jr nc,$-47		;a143	30 cf		0 .
	ld c,l			;a145	4d		M
	dec b			;a146	05		.
	ld a,(bc)		;a147	0a		.
la148h:
	jr nc,la11eh		;a148	30 d4		0 .
	ld (hl),e		;a14a	73		s
	ld b,083h		;a14b	06 83		. .
	rra			;a14d	1f		.
	jr nc,la124h		;a14e	30 d4		0 .
	ld (hl),e		;a150	73		s
	ld b,00ch		;a151	06 0c		. .
	rra			;a153	1f		.
	jr nc,la137h		;a154	30 e1		0 .
	ld (hl),e		;a156	73		s
	ld b,08bh		;a157	06 8b		. .
	rra			;a159	1f		.
	jr nc,la13dh		;a15a	30 e1		0 .
	ld (hl),e		;a15c	73		s
	ld b,005h		;a15d	06 05		. .
	rra			;a15f	1f		.
	jr nc,$-28		;a160	30 e2		0 .
	ld d,c			;a162	51		Q
	adc a,(hl)		;a163	8e		.
	ld b,006h		;a164	06 06		. .
	rra			;a166	1f		.
	inc bc			;a167	03		.
	ld (bc),a		;a168	02		.
	ex af,af'		;a169	08		.
	inc b			;a16a	04		.
	ld b,h			;a16b	44		D
	djnz la182h		;a16c	10 14		. .
la16eh:
	jr nc,$-28		;a16e	30 e2		0 .
	ld d,c			;a170	51		Q
	adc a,(hl)		;a171	8e		.
	ld b,012h		;a172	06 12		. .
	rra			;a174	1f		.
	inc bc			;a175	03		.
la176h:
	ld (bc),a		;a176	02		.
	ex af,af'		;a177	08		.
	inc b			;a178	04		.
	ld b,h			;a179	44		D
	ld b,014h		;a17a	06 14		. .
	jr nc,$-27		;a17c	30 e3		0 .
la17eh:
	ld (hl),e		;a17e	73		s
	ld b,005h		;a17f	06 05		. .
	rra			;a181	1f		.
la182h:
	jr nc,la16eh		;a182	30 ea		0 .
	rla			;a184	17		.
	dec b			;a185	05		.
	ex af,af'		;a186	08		.
	jr nc,la176h		;a187	30 ed		0 .
	ld c,005h		;a189	0e 05		. .
	inc bc			;a18b	03		.
	jr nc,la17eh		;a18c	30 f0		0 .
	ld d,c			;a18e	51		Q
	adc a,(hl)		;a18f	8e		.
	ld b,000h		;a190	06 00		. .
	ld a,(de)		;a192	1a		.
	inc bc			;a193	03		.
	ld (bc),a		;a194	02		.
	ex af,af'		;a195	08		.
	inc b			;a196	04		.
	ld b,h			;a197	44		D
	ld de,03008h		;a198	11 08 30	. . 0
	ret m			;a19b	f8		.
	ld d,c			;a19c	51		Q
	adc a,(hl)		;a19d	8e		.
	ld b,013h		;a19e	06 13		. .
	rra			;a1a0	1f		.
	inc bc			;a1a1	03		.
	ld (bc),a		;a1a2	02		.
	ex af,af'		;a1a3	08		.
	inc b			;a1a4	04		.
	ld b,h			;a1a5	44		D
	ld de,03008h		;a1a6	11 08 30	. . 0
	ret m			;a1a9	f8		.
	ld d,c			;a1aa	51		Q
	adc a,(hl)		;a1ab	8e		.
	ld b,010h		;a1ac	06 10		. .
	nop			;a1ae	00		.
	inc bc			;a1af	03		.
	ld (bc),a		;a1b0	02		.
	ex af,af'		;a1b1	08		.
	inc b			;a1b2	04		.
	ld b,h			;a1b3	44		D
la1b4h:
	ld b,00eh		;a1b4	06 0e		. .
	jr nc,la1b4h		;a1b6	30 fc		0 .
	ld (hl),e		;a1b8	73		s
	ld b,00ah		;a1b9	06 0a		. .
	rra			;a1bb	1f		.
	jr nc,$-2		;a1bc	30 fc		0 .
	ld (hl),e		;a1be	73		s
	ld b,090h		;a1bf	06 90		. .
	rra			;a1c1	1f		.
la1c2h:
	jr nc,la1c2h		;a1c2	30 fe		0 .
	ld c,005h		;a1c4	0e 05		. .
	inc bc			;a1c6	03		.
	ld sp,01702h		;a1c7	31 02 17	1 . .
	dec b			;a1ca	05		.
	dec c			;a1cb	0d		.
	ld sp,00e05h		;a1cc	31 05 0e	1 . .
	dec b			;a1cf	05		.
	dec c			;a1d0	0d		.
	ld sp,05110h		;a1d1	31 10 51	1 . Q
	adc a,(hl)		;a1d4	8e		.
	ld b,000h		;a1d5	06 00		. .
	ld (de),a		;a1d7	12		.
	inc bc			;a1d8	03		.
	ld (bc),a		;a1d9	02		.
	ex af,af'		;a1da	08		.
	inc b			;a1db	04		.
	ld b,h			;a1dc	44		D
	inc c			;a1dd	0c		.
	ld a,(bc)		;a1de	0a		.
	ld sp,07312h		;a1df	31 12 73	1 . s
	ld b,083h		;a1e2	06 83		. .
	rra			;a1e4	1f		.
	ld sp,07314h		;a1e5	31 14 73	1 . s
	ld b,083h		;a1e8	06 83		. .
	rra			;a1ea	1f		.
	ld sp,00e16h		;a1eb	31 16 0e	1 . .
	dec b			;a1ee	05		.
	inc bc			;a1ef	03		.
	ld sp,07318h		;a1f0	31 18 73	1 . s
	ld b,00eh		;a1f3	06 0e		. .
	rra			;a1f5	1f		.
	ld sp,0731ah		;a1f6	31 1a 73	1 . s
	ld b,00eh		;a1f9	06 0e		. .
	rra			;a1fb	1f		.
	ld sp,04a24h		;a1fc	31 24 4a	1 $ J
	dec b			;a1ff	05		.
	inc bc			;a200	03		.
	ld sp,04a2ch		;a201	31 2c 4a	1 , J
	dec b			;a204	05		.
	ex af,af'		;a205	08		.
	ld sp,05f30h		;a206	31 30 5f	1 0 _
	ld b,001h		;a209	06 01		. .
	nop			;a20b	00		.
	ld sp,04a31h		;a20c	31 31 4a	1 1 J
	dec b			;a20f	05		.
	inc bc			;a210	03		.
	ld sp,04a35h		;a211	31 35 4a	1 5 J
	dec b			;a214	05		.
	inc bc			;a215	03		.
	ld sp,05140h		;a216	31 40 51	1 @ Q
	adc a,(hl)		;a219	8e		.
	ld b,01ah		;a21a	06 1a		. .
	rra			;a21c	1f		.
	inc bc			;a21d	03		.
	ld (bc),a		;a21e	02		.
	ex af,af'		;a21f	08		.
	inc b			;a220	04		.
	ld b,h			;a221	44		D
	ld (de),a		;a222	12		.
	djnz $+51		;a223	10 31		. 1
	ld c,b			;a225	48		H
	ld d,c			;a226	51		Q
	adc a,(hl)		;a227	8e		.
	ld b,012h		;a228	06 12		. .
	rra			;a22a	1f		.
	inc bc			;a22b	03		.
	ld (bc),a		;a22c	02		.
	ex af,af'		;a22d	08		.
	inc b			;a22e	04		.
	ld b,h			;a22f	44		D
	ld (de),a		;a230	12		.
	djnz la273h		;a231	10 40		. @
	add hl,bc		;a233	09		.
	ld c,b			;a234	48		H
	adc a,c			;a235	89		.
	inc bc			;a236	03		.
	jr $-125		;a237	18 81		. .
	ld (bc),a		;a239	02		.
	ld c,b			;a23a	48		H
	ld b,b			;a23b	40		@
	ld a,(bc)		;a23c	0a		.
	ld c,b			;a23d	48		H
	adc a,c			;a23e	89		.
	inc bc			;a23f	03		.
	dec bc			;a240	0b		.
	ld (bc),a		;a241	02		.
	ld (bc),a		;a242	02		.
	ld c,b			;a243	48		H
	ld d,b			;a244	50		P
	jr nz,la2a6h		;a245	20 5f		  _
	dec b			;a247	05		.
	inc bc			;a248	03		.
	ld d,b			;a249	50		P
	jr z,la2abh		;a24a	28 5f		( _
	ld b,001h		;a24c	06 01		. .
	inc bc			;a24e	03		.
	ld d,b			;a24f	50		P
	add hl,hl		;a250	29		)
	ld a,e			;a251	7b		{
	dec b			;a252	05		.
	rst 38h			;a253	ff		.
	ld d,b			;a254	50		P
	ld hl,(0887ch)		;a255	2a 7c 88	* | .
	ld (bc),a		;a258	02		.
	nop			;a259	00		.
	ld (bc),a		;a25a	02		.
	ld a,h			;a25b	7c		|
	ld d,b			;a25c	50		P
	ld hl,(0887ch)		;a25d	2a 7c 88	* | .
	ld (bc),a		;a260	02		.
	ld bc,07c02h		;a261	01 02 7c	. . |
	nop			;a264	00		.
	nop			;a265	00		.
	nop			;a266	00		.
	djnz la28bh		;a267	10 22		. "
	ld c,l			;a269	4d		M
	dec b			;a26a	05		.
	ex af,af'		;a26b	08		.
	djnz la29ch		;a26c	10 2e		. .
	ld c,a			;a26e	4f		O
	adc a,c			;a26f	89		.
	inc bc			;a270	03		.
	add a,d			;a271	82		.
	rra			;a272	1f		.
la273h:
	ld (bc),a		;a273	02		.
	ld d,010h		;a274	16 10		. .
	ld l,04fh		;a276	2e 4f		. O
	adc a,c			;a278	89		.
	inc bc			;a279	03		.
	djnz $+33		;a27a	10 1f		. .
la27ch:
	ld (bc),a		;a27c	02		.
	ld d,010h		;a27d	16 10		. .
	jr c,la2d5h		;a27f	38 54		8 T
	adc a,d			;a281	8a		.
	inc b			;a282	04		.
	add a,b			;a283	80		.
	inc de			;a284	13		.
	nop			;a285	00		.
la286h:
	ld (bc),a		;a286	02		.
	ld a,(de)		;a287	1a		.
	djnz la2c2h		;a288	10 38		. 8
	ld d,h			;a28a	54		T
la28bh:
	adc a,d			;a28b	8a		.
	inc b			;a28c	04		.
	add a,b			;a28d	80		.
	ld b,011h		;a28e	06 11		. .
la290h:
	ld (bc),a		;a290	02		.
	ld a,(de)		;a291	1a		.
	djnz la2cch		;a292	10 38		. 8
	ld d,h			;a294	54		T
	adc a,d			;a295	8a		.
	inc b			;a296	04		.
	dec d			;a297	15		.
	inc hl			;a298	23		#
	ld bc,01a02h		;a299	01 02 1a	. . .
la29ch:
	djnz la2e6h		;a29c	10 48		. H
	ld d,h			;a29e	54		T
	adc a,d			;a29f	8a		.
	inc b			;a2a0	04		.
	add a,b			;a2a1	80		.
	inc de			;a2a2	13		.
	inc bc			;a2a3	03		.
	ld (bc),a		;a2a4	02		.
	ld a,(de)		;a2a5	1a		.
la2a6h:
	djnz la2fch		;a2a6	10 54		. T
	ld d,h			;a2a8	54		T
	adc a,d			;a2a9	8a		.
	inc b			;a2aa	04		.
la2abh:
	dec d			;a2ab	15		.
	inc de			;a2ac	13		.
	inc de			;a2ad	13		.
la2aeh:
	ld (bc),a		;a2ae	02		.
	ld a,(de)		;a2af	1a		.
	djnz la30eh		;a2b0	10 5c		. \
	ld d,h			;a2b2	54		T
	adc a,d			;a2b3	8a		.
	inc b			;a2b4	04		.
	add a,b			;a2b5	80		.
	inc de			;a2b6	13		.
	inc b			;a2b7	04		.
la2b8h:
	ld (bc),a		;a2b8	02		.
	ld a,(de)		;a2b9	1a		.
	djnz la318h		;a2ba	10 5c		. \
	ld d,h			;a2bc	54		T
	adc a,d			;a2bd	8a		.
	inc b			;a2be	04		.
	add a,b			;a2bf	80		.
	inc hl			;a2c0	23		#
	inc de			;a2c1	13		.
la2c2h:
	ld (bc),a		;a2c2	02		.
	ld a,(de)		;a2c3	1a		.
	djnz la322h		;a2c4	10 5c		. \
	ld d,h			;a2c6	54		T
	adc a,d			;a2c7	8a		.
	inc b			;a2c8	04		.
	add a,b			;a2c9	80		.
	inc hl			;a2ca	23		#
	dec d			;a2cb	15		.
la2cch:
	ld (bc),a		;a2cc	02		.
	ld a,(de)		;a2cd	1a		.
	djnz la340h		;a2ce	10 70		. p
	ld d,h			;a2d0	54		T
	adc a,d			;a2d1	8a		.
	inc b			;a2d2	04		.
	dec d			;a2d3	15		.
	inc b			;a2d4	04		.
la2d5h:
	djnz $+4		;a2d5	10 02		. .
	ld a,(de)		;a2d7	1a		.
	djnz la34ah		;a2d8	10 70		. p
	ld d,h			;a2da	54		T
	adc a,d			;a2db	8a		.
la2dch:
	inc b			;a2dc	04		.
	dec d			;a2dd	15		.
	inc h			;a2de	24		$
	inc d			;a2df	14		.
	ld (bc),a		;a2e0	02		.
	ld a,(de)		;a2e1	1a		.
	djnz la35ch		;a2e2	10 78		. x
	ld d,h			;a2e4	54		T
	adc a,d			;a2e5	8a		.
la2e6h:
	inc b			;a2e6	04		.
	dec d			;a2e7	15		.
	inc b			;a2e8	04		.
	rlca			;a2e9	07		.
	ld (bc),a		;a2ea	02		.
	ld a,(de)		;a2eb	1a		.
	djnz la366h		;a2ec	10 78		. x
	ld d,h			;a2ee	54		T
	adc a,d			;a2ef	8a		.
	inc b			;a2f0	04		.
	dec d			;a2f1	15		.
	inc (hl)		;a2f2	34		4
	ld d,002h		;a2f3	16 02		. .
	ld a,(de)		;a2f5	1a		.
	djnz la27ch		;a2f6	10 84		. .
la2f8h:
	ld d,h			;a2f8	54		T
	adc a,d			;a2f9	8a		.
	inc b			;a2fa	04		.
	dec d			;a2fb	15		.
la2fch:
	inc bc			;a2fc	03		.
	ex af,af'		;a2fd	08		.
	ld (bc),a		;a2fe	02		.
	ld a,(de)		;a2ff	1a		.
	djnz la286h		;a300	10 84		. .
la302h:
	ld d,h			;a302	54		T
	adc a,d			;a303	8a		.
	inc b			;a304	04		.
	dec d			;a305	15		.
	inc de			;a306	13		.
	add hl,bc		;a307	09		.
	ld (bc),a		;a308	02		.
	ld a,(de)		;a309	1a		.
	djnz la290h		;a30a	10 84		. .
la30ch:
	ld d,h			;a30c	54		T
	adc a,d			;a30d	8a		.
la30eh:
	inc b			;a30e	04		.
	dec d			;a30f	15		.
	inc sp			;a310	33		3
	rla			;a311	17		.
	ld (bc),a		;a312	02		.
	ld a,(de)		;a313	1a		.
	djnz la2aeh		;a314	10 98		. .
	ld d,h			;a316	54		T
	adc a,d			;a317	8a		.
la318h:
	inc b			;a318	04		.
	add a,b			;a319	80		.
	inc bc			;a31a	03		.
	dec bc			;a31b	0b		.
	ld (bc),a		;a31c	02		.
	ld a,(de)		;a31d	1a		.
	djnz la2b8h		;a31e	10 98		. .
	ld d,h			;a320	54		T
	adc a,d			;a321	8a		.
la322h:
	inc b			;a322	04		.
	add a,b			;a323	80		.
	inc h			;a324	24		$
	ld de,01a02h		;a325	11 02 1a	. . .
	djnz la2c2h		;a328	10 98		. .
	ld d,h			;a32a	54		T
	adc a,d			;a32b	8a		.
	inc b			;a32c	04		.
	dec d			;a32d	15		.
	inc de			;a32e	13		.
	inc c			;a32f	0c		.
	ld (bc),a		;a330	02		.
	ld a,(de)		;a331	1a		.
	djnz la2dch		;a332	10 a8		. .
	ld d,h			;a334	54		T
	adc a,d			;a335	8a		.
	inc b			;a336	04		.
	add a,b			;a337	80		.
	inc de			;a338	13		.
	dec c			;a339	0d		.
	ld (bc),a		;a33a	02		.
	ld a,(de)		;a33b	1a		.
	djnz la2e6h		;a33c	10 a8		. .
la33eh:
	ld d,h			;a33e	54		T
	adc a,d			;a33f	8a		.
la340h:
	inc b			;a340	04		.
	dec d			;a341	15		.
	inc de			;a342	13		.
	ld c,002h		;a343	0e 02		. .
	ld a,(de)		;a345	1a		.
	djnz la2f8h		;a346	10 b0		. .
	ld d,h			;a348	54		T
	adc a,d			;a349	8a		.
la34ah:
	inc b			;a34a	04		.
	add a,b			;a34b	80		.
	inc de			;a34c	13		.
	rrca			;a34d	0f		.
	ld (bc),a		;a34e	02		.
	ld a,(de)		;a34f	1a		.
	djnz la302h		;a350	10 b0		. .
	ld d,h			;a352	54		T
	adc a,d			;a353	8a		.
	inc b			;a354	04		.
	dec d			;a355	15		.
	ld h,012h		;a356	26 12		& .
	ld (bc),a		;a358	02		.
	ld a,(de)		;a359	1a		.
	djnz la30ch		;a35a	10 b0		. .
la35ch:
	ld d,h			;a35c	54		T
	adc a,d			;a35d	8a		.
	inc b			;a35e	04		.
	dec d			;a35f	15		.
	inc (hl)		;a360	34		4
	ld (de),a		;a361	12		.
	ld (bc),a		;a362	02		.
la363h:
	ld a,(de)		;a363	1a		.
	djnz la33eh		;a364	10 d8		. .
la366h:
	ld e,a			;a366	5f		_
	dec b			;a367	05		.
	inc bc			;a368	03		.
	djnz la363h		;a369	10 f8		. .
	ld b,e			;a36b	43		C
	dec b			;a36c	05		.
	ex af,af'		;a36d	08		.
	nop			;a36e	00		.
	djnz $+28		;a36f	10 1a		. .
la371h:
	ld d,b			;a371	50		P
	ld b,006h		;a372	06 06		. .
	rra			;a374	1f		.
	djnz $+34		;a375	10 20		.  
	dec de			;a377	1b		.
	dec b			;a378	05		.
	rst 38h			;a379	ff		.
	djnz la3a0h		;a37a	10 24		. $
	ld b,d			;a37c	42		B
	dec b			;a37d	05		.
	sub d			;a37e	92		.
	djnz la3abh		;a37f	10 2a		. *
	ld d,b			;a381	50		P
la382h:
	ld b,096h		;a382	06 96		. .
	rra			;a384	1f		.
	djnz $+51		;a385	10 31		. 1
	ld b,d			;a387	42		B
	dec b			;a388	05		.
	ld (bc),a		;a389	02		.
	djnz $+54		;a38a	10 34		. 4
	ld d,b			;a38c	50		P
	ld b,000h		;a38d	06 00		. .
	rra			;a38f	1f		.
	djnz $+66		;a390	10 40		. @
	ld e,a			;a392	5f		_
	ld b,001h		;a393	06 01		. .
	dec b			;a395	05		.
	djnz la3dch		;a396	10 44		. D
la398h:
	ld b,d			;a398	42		B
	dec b			;a399	05		.
	adc a,b			;a39a	88		.
	djnz $+72		;a39b	10 46		. F
la39dh:
	ld d,b			;a39d	50		P
	ld b,096h		;a39e	06 96		. .
la3a0h:
	ld e,010h		;a3a0	1e 10		. .
	ld c,h			;a3a2	4c		L
	ld b,(hl)		;a3a3	46		F
	dec b			;a3a4	05		.
	ld (bc),a		;a3a5	02		.
	djnz la3fah		;a3a6	10 52		. R
	ld d,b			;a3a8	50		P
	ld b,096h		;a3a9	06 96		. .
la3abh:
	jr $+18			;a3ab	18 10		. .
	ld d,h			;a3ad	54		T
	ld d,b			;a3ae	50		P
	ld b,000h		;a3af	06 00		. .
	sbc a,(hl)		;a3b1	9e		.
	djnz la40ah		;a3b2	10 56		. V
	ld b,(hl)		;a3b4	46		F
	dec b			;a3b5	05		.
	inc c			;a3b6	0c		.
	djnz la419h		;a3b7	10 60		. `
	ld b,(hl)		;a3b9	46		F
	dec b			;a3ba	05		.
	ld (bc),a		;a3bb	02		.
	djnz la420h		;a3bc	10 62		. b
	ld d,b			;a3be	50		P
	ld b,000h		;a3bf	06 00		. .
	jr la3d3h		;a3c1	18 10		. .
	ld h,a			;a3c3	67		g
	ld b,d			;a3c4	42		B
	dec b			;a3c5	05		.
	ld (de),a		;a3c6	12		.
	djnz la434h		;a3c7	10 6b		. k
	ld b,(hl)		;a3c9	46		F
	dec b			;a3ca	05		.
	inc b			;a3cb	04		.
	djnz la43ah		;a3cc	10 6c		. l
	ld d,b			;a3ce	50		P
	ld b,096h		;a3cf	06 96		. .
	jr $+18			;a3d1	18 10		. .
la3d3h:
	ld l,(hl)		;a3d3	6e		n
	ld d,b			;a3d4	50		P
	ld b,000h		;a3d5	06 00		. .
	ld e,010h		;a3d7	1e 10		. .
	ld (hl),d		;a3d9	72		r
la3dah:
	ld b,(hl)		;a3da	46		F
	dec b			;a3db	05		.
la3dch:
	ld c,010h		;a3dc	0e 10		. .
	halt			;a3de	76		v
	ld d,b			;a3df	50		P
	ld b,096h		;a3e0	06 96		. .
	ld e,010h		;a3e2	1e 10		. .
	ld a,b			;a3e4	78		x
	ld b,(hl)		;a3e5	46		F
	dec b			;a3e6	05		.
	ld (bc),a		;a3e7	02		.
	djnz la468h		;a3e8	10 7e		. ~
	ld b,(hl)		;a3ea	46		F
	dec b			;a3eb	05		.
	add hl,bc		;a3ec	09		.
la3edh:
	djnz la371h		;a3ed	10 82		. .
	ld d,b			;a3ef	50		P
	ld b,000h		;a3f0	06 00		. .
	ld e,010h		;a3f2	1e 10		. .
	add a,h			;a3f4	84		.
	ld b,(hl)		;a3f5	46		F
	dec b			;a3f6	05		.
	inc b			;a3f7	04		.
	djnz la382h		;a3f8	10 88		. .
la3fah:
	ld d,b			;a3fa	50		P
	ld b,096h		;a3fb	06 96		. .
	djnz la40fh		;a3fd	10 10		. .
	adc a,b			;a3ff	88		.
	ld b,(hl)		;a400	46		F
	dec b			;a401	05		.
	ld (bc),a		;a402	02		.
	djnz $-114		;a403	10 8c		. .
	ld b,(hl)		;a405	46		F
	dec b			;a406	05		.
	dec bc			;a407	0b		.
	djnz la398h		;a408	10 8e		. .
la40ah:
	ld b,(hl)		;a40a	46		F
	dec b			;a40b	05		.
	ld (bc),a		;a40c	02		.
	djnz la39dh		;a40d	10 8e		. .
la40fh:
	ld d,b			;a40f	50		P
	ld b,096h		;a410	06 96		. .
	jr $+18			;a412	18 10		. .
	sub b			;a414	90		.
	ld d,b			;a415	50		P
	ld b,096h		;a416	06 96		. .
	sbc a,(hl)		;a418	9e		.
la419h:
	djnz la3abh		;a419	10 90		. .
	ld b,(hl)		;a41b	46		F
	dec b			;a41c	05		.
	djnz la42fh		;a41d	10 10		. .
	sub h			;a41f	94		.
la420h:
	ld b,(hl)		;a420	46		F
	dec b			;a421	05		.
	ex af,af'		;a422	08		.
	djnz $-102		;a423	10 98		. .
	ld b,(hl)		;a425	46		F
	dec b			;a426	05		.
	djnz $+18		;a427	10 10		. .
	sbc a,d			;a429	9a		.
	ld b,(hl)		;a42a	46		F
	dec b			;a42b	05		.
	ld (bc),a		;a42c	02		.
	djnz $-96		;a42d	10 9e		. .
la42fh:
	ld d,b			;a42f	50		P
	ld b,000h		;a430	06 00		. .
	jr $+18			;a432	18 10		. .
la434h:
	sbc a,l			;a434	9d		.
	ld b,(hl)		;a435	46		F
	dec b			;a436	05		.
	inc b			;a437	04		.
	djnz la3dah		;a438	10 a0		. .
la43ah:
	ld e,a			;a43a	5f		_
	ld b,001h		;a43b	06 01		. .
	nop			;a43d	00		.
	djnz la3edh		;a43e	10 ad		. .
	ld e,a			;a440	5f		_
	dec b			;a441	05		.
	inc bc			;a442	03		.
	jr nz,la445h		;a443	20 00		  .
la445h:
	ld a,b			;a445	78		x
	dec b			;a446	05		.
	djnz la449h		;a447	10 00		. .
la449h:
	nop			;a449	00		.
	nop			;a44a	00		.
	djnz la466h		;a44b	10 19		. .
	ld e,d			;a44d	5a		Z
	dec b			;a44e	05		.
	add a,d			;a44f	82		.
	djnz la46bh		;a450	10 19		. .
	ld e,d			;a452	5a		Z
	dec b			;a453	05		.
	dec d			;a454	15		.
	djnz la477h		;a455	10 20		.  
	ld c,(hl)		;a457	4e		N
	dec b			;a458	05		.
	djnz la46bh		;a459	10 10		. .
	inc h			;a45b	24		$
	ld c,(hl)		;a45c	4e		N
	dec b			;a45d	05		.
	ex af,af'		;a45e	08		.
	djnz $+39		;a45f	10 25		. %
	ld c,(hl)		;a461	4e		N
	dec b			;a462	05		.
	inc b			;a463	04		.
	djnz la48eh		;a464	10 28		. (
la466h:
	ld c,(hl)		;a466	4e		N
	dec b			;a467	05		.
la468h:
	ld a,(bc)		;a468	0a		.
	djnz la495h		;a469	10 2a		. *
la46bh:
	ld c,(hl)		;a46b	4e		N
	dec b			;a46c	05		.
	ld d,010h		;a46d	16 10		. .
	ld l,04eh		;a46f	2e 4e		. N
	dec b			;a471	05		.
	ld a,(bc)		;a472	0a		.
	djnz la4a4h		;a473	10 2f		. /
	ld c,(hl)		;a475	4e		N
	dec b			;a476	05		.
la477h:
	ex af,af'		;a477	08		.
	djnz la4b0h		;a478	10 36		. 6
	ld a,c			;a47a	79		y
	dec b			;a47b	05		.
	ex af,af'		;a47c	08		.
	djnz la4beh		;a47d	10 3f		. ?
	ld d,c			;a47f	51		Q
	adc a,(hl)		;a480	8e		.
	ex af,af'		;a481	08		.
	ld bc,0031fh		;a482	01 1f 03	. . .
	ld bc,00320h		;a485	01 20 03	.   .
	ld b,b			;a488	40		@
	ld (bc),a		;a489	02		.
	ld c,h			;a48a	4c		L
	nop			;a48b	00		.
	nop			;a48c	00		.
	nop			;a48d	00		.
la48eh:
	rst 38h			;a48e	ff		.
	rst 38h			;a48f	ff		.
	rst 38h			;a490	ff		.
	rst 38h			;a491	ff		.
	rst 38h			;a492	ff		.
	rst 38h			;a493	ff		.
	rst 38h			;a494	ff		.
la495h:
	rst 38h			;a495	ff		.
	rst 38h			;a496	ff		.
	rst 38h			;a497	ff		.
	rst 38h			;a498	ff		.
	rst 38h			;a499	ff		.
	rst 38h			;a49a	ff		.
	rst 38h			;a49b	ff		.
	rst 38h			;a49c	ff		.
	rst 38h			;a49d	ff		.
	rst 38h			;a49e	ff		.
	rst 38h			;a49f	ff		.
	rst 38h			;a4a0	ff		.
	rst 38h			;a4a1	ff		.
	rst 38h			;a4a2	ff		.
	rst 38h			;a4a3	ff		.
la4a4h:
	rst 38h			;a4a4	ff		.
	rst 38h			;a4a5	ff		.
	rst 38h			;a4a6	ff		.
	rst 38h			;a4a7	ff		.
	rst 38h			;a4a8	ff		.
	rst 38h			;a4a9	ff		.
	rst 38h			;a4aa	ff		.
	rst 38h			;a4ab	ff		.
	rst 38h			;a4ac	ff		.
	rst 38h			;a4ad	ff		.
	rst 38h			;a4ae	ff		.
	rst 38h			;a4af	ff		.
la4b0h:
	rst 38h			;a4b0	ff		.
	rst 38h			;a4b1	ff		.
	rst 38h			;a4b2	ff		.
	rst 38h			;a4b3	ff		.
	rst 38h			;a4b4	ff		.
	rst 38h			;a4b5	ff		.
	rst 38h			;a4b6	ff		.
	rst 38h			;a4b7	ff		.
	rst 38h			;a4b8	ff		.
	rst 38h			;a4b9	ff		.
	rst 38h			;a4ba	ff		.
	rst 38h			;a4bb	ff		.
	rst 38h			;a4bc	ff		.
	rst 38h			;a4bd	ff		.
la4beh:
	rst 38h			;a4be	ff		.
	rst 38h			;a4bf	ff		.
	rst 38h			;a4c0	ff		.
	rst 38h			;a4c1	ff		.
	rst 38h			;a4c2	ff		.
	rst 38h			;a4c3	ff		.
	rst 38h			;a4c4	ff		.
	rst 38h			;a4c5	ff		.
	rst 38h			;a4c6	ff		.
	rst 38h			;a4c7	ff		.
	rst 38h			;a4c8	ff		.
	rst 38h			;a4c9	ff		.
	rst 38h			;a4ca	ff		.
	rst 38h			;a4cb	ff		.
	rst 38h			;a4cc	ff		.
	rst 38h			;a4cd	ff		.
	rst 38h			;a4ce	ff		.
	rst 38h			;a4cf	ff		.
	rst 38h			;a4d0	ff		.
	rst 38h			;a4d1	ff		.
	rst 38h			;a4d2	ff		.
	rst 38h			;a4d3	ff		.
	rst 38h			;a4d4	ff		.
	rst 38h			;a4d5	ff		.
	rst 38h			;a4d6	ff		.
	rst 38h			;a4d7	ff		.
	rst 38h			;a4d8	ff		.
	rst 38h			;a4d9	ff		.
	rst 38h			;a4da	ff		.
	rst 38h			;a4db	ff		.
	rst 38h			;a4dc	ff		.
	rst 38h			;a4dd	ff		.
	rst 38h			;a4de	ff		.
	rst 38h			;a4df	ff		.
	rst 38h			;a4e0	ff		.
	rst 38h			;a4e1	ff		.
	rst 38h			;a4e2	ff		.
	rst 38h			;a4e3	ff		.
	rst 38h			;a4e4	ff		.
	rst 38h			;a4e5	ff		.
	rst 38h			;a4e6	ff		.
	rst 38h			;a4e7	ff		.
	rst 38h			;a4e8	ff		.
	rst 38h			;a4e9	ff		.
	rst 38h			;a4ea	ff		.
	rst 38h			;a4eb	ff		.
	rst 38h			;a4ec	ff		.
	rst 38h			;a4ed	ff		.
	rst 38h			;a4ee	ff		.
	rst 38h			;a4ef	ff		.
	rst 38h			;a4f0	ff		.
	rst 38h			;a4f1	ff		.
	rst 38h			;a4f2	ff		.
	rst 38h			;a4f3	ff		.
	rst 38h			;a4f4	ff		.
	rst 38h			;a4f5	ff		.
	rst 38h			;a4f6	ff		.
	rst 38h			;a4f7	ff		.
	rst 38h			;a4f8	ff		.
	rst 38h			;a4f9	ff		.
	rst 38h			;a4fa	ff		.
	rst 38h			;a4fb	ff		.
	rst 38h			;a4fc	ff		.
	rst 38h			;a4fd	ff		.
	rst 38h			;a4fe	ff		.
	rst 38h			;a4ff	ff		.
	rst 38h			;a500	ff		.
	rst 38h			;a501	ff		.
	rst 38h			;a502	ff		.
	rst 38h			;a503	ff		.
	rst 38h			;a504	ff		.
	rst 38h			;a505	ff		.
	rst 38h			;a506	ff		.
	rst 38h			;a507	ff		.
	rst 38h			;a508	ff		.
	rst 38h			;a509	ff		.
	rst 38h			;a50a	ff		.
	rst 38h			;a50b	ff		.
	rst 38h			;a50c	ff		.
	rst 38h			;a50d	ff		.
	rst 38h			;a50e	ff		.
	rst 38h			;a50f	ff		.
	rst 38h			;a510	ff		.
	rst 38h			;a511	ff		.
	rst 38h			;a512	ff		.
	rst 38h			;a513	ff		.
	rst 38h			;a514	ff		.
	rst 38h			;a515	ff		.
	rst 38h			;a516	ff		.
	rst 38h			;a517	ff		.
	rst 38h			;a518	ff		.
	rst 38h			;a519	ff		.
	rst 38h			;a51a	ff		.
	rst 38h			;a51b	ff		.
	rst 38h			;a51c	ff		.
	rst 38h			;a51d	ff		.
	rst 38h			;a51e	ff		.
	rst 38h			;a51f	ff		.
	rst 38h			;a520	ff		.
	rst 38h			;a521	ff		.
	rst 38h			;a522	ff		.
	rst 38h			;a523	ff		.
	rst 38h			;a524	ff		.
	rst 38h			;a525	ff		.
	rst 38h			;a526	ff		.
	rst 38h			;a527	ff		.
	rst 38h			;a528	ff		.
	rst 38h			;a529	ff		.
	rst 38h			;a52a	ff		.
	rst 38h			;a52b	ff		.
	rst 38h			;a52c	ff		.
	rst 38h			;a52d	ff		.
	rst 38h			;a52e	ff		.
	rst 38h			;a52f	ff		.
	rst 38h			;a530	ff		.
	rst 38h			;a531	ff		.
	rst 38h			;a532	ff		.
	rst 38h			;a533	ff		.
	rst 38h			;a534	ff		.
	rst 38h			;a535	ff		.
	rst 38h			;a536	ff		.
	rst 38h			;a537	ff		.
	rst 38h			;a538	ff		.
	rst 38h			;a539	ff		.
	rst 38h			;a53a	ff		.
	rst 38h			;a53b	ff		.
	rst 38h			;a53c	ff		.
	rst 38h			;a53d	ff		.
	rst 38h			;a53e	ff		.
	rst 38h			;a53f	ff		.
	rst 38h			;a540	ff		.
	rst 38h			;a541	ff		.
	rst 38h			;a542	ff		.
	rst 38h			;a543	ff		.
	rst 38h			;a544	ff		.
	rst 38h			;a545	ff		.
	rst 38h			;a546	ff		.
	rst 38h			;a547	ff		.
	rst 38h			;a548	ff		.
	rst 38h			;a549	ff		.
	rst 38h			;a54a	ff		.
	rst 38h			;a54b	ff		.
	rst 38h			;a54c	ff		.
	rst 38h			;a54d	ff		.
	rst 38h			;a54e	ff		.
	rst 38h			;a54f	ff		.
	rst 38h			;a550	ff		.
	rst 38h			;a551	ff		.
	rst 38h			;a552	ff		.
	rst 38h			;a553	ff		.
	rst 38h			;a554	ff		.
	rst 38h			;a555	ff		.
	rst 38h			;a556	ff		.
	rst 38h			;a557	ff		.
	rst 38h			;a558	ff		.
	rst 38h			;a559	ff		.
	rst 38h			;a55a	ff		.
	rst 38h			;a55b	ff		.
	rst 38h			;a55c	ff		.
	rst 38h			;a55d	ff		.
	rst 38h			;a55e	ff		.
	rst 38h			;a55f	ff		.
	rst 38h			;a560	ff		.
	rst 38h			;a561	ff		.
	rst 38h			;a562	ff		.
	rst 38h			;a563	ff		.
	rst 38h			;a564	ff		.
	rst 38h			;a565	ff		.
	rst 38h			;a566	ff		.
	rst 38h			;a567	ff		.
	rst 38h			;a568	ff		.
	rst 38h			;a569	ff		.
	rst 38h			;a56a	ff		.
	rst 38h			;a56b	ff		.
	rst 38h			;a56c	ff		.
	rst 38h			;a56d	ff		.
	rst 38h			;a56e	ff		.
	rst 38h			;a56f	ff		.
	rst 38h			;a570	ff		.
	rst 38h			;a571	ff		.
	rst 38h			;a572	ff		.
	rst 38h			;a573	ff		.
	rst 38h			;a574	ff		.
	rst 38h			;a575	ff		.
	rst 38h			;a576	ff		.
	rst 38h			;a577	ff		.
	rst 38h			;a578	ff		.
	rst 38h			;a579	ff		.
	rst 38h			;a57a	ff		.
	rst 38h			;a57b	ff		.
	rst 38h			;a57c	ff		.
	rst 38h			;a57d	ff		.
	rst 38h			;a57e	ff		.
	rst 38h			;a57f	ff		.
	rst 38h			;a580	ff		.
	rst 38h			;a581	ff		.
	rst 38h			;a582	ff		.
	rst 38h			;a583	ff		.
	rst 38h			;a584	ff		.
	rst 38h			;a585	ff		.
	rst 38h			;a586	ff		.
	rst 38h			;a587	ff		.
	rst 38h			;a588	ff		.
	rst 38h			;a589	ff		.
	rst 38h			;a58a	ff		.
	rst 38h			;a58b	ff		.
	rst 38h			;a58c	ff		.
	rst 38h			;a58d	ff		.
	rst 38h			;a58e	ff		.
	rst 38h			;a58f	ff		.
	rst 38h			;a590	ff		.
	rst 38h			;a591	ff		.
	rst 38h			;a592	ff		.
	rst 38h			;a593	ff		.
	rst 38h			;a594	ff		.
	rst 38h			;a595	ff		.
	rst 38h			;a596	ff		.
	rst 38h			;a597	ff		.
	rst 38h			;a598	ff		.
	rst 38h			;a599	ff		.
	rst 38h			;a59a	ff		.
	rst 38h			;a59b	ff		.
	rst 38h			;a59c	ff		.
	rst 38h			;a59d	ff		.
	rst 38h			;a59e	ff		.
	rst 38h			;a59f	ff		.
	rst 38h			;a5a0	ff		.
	rst 38h			;a5a1	ff		.
	rst 38h			;a5a2	ff		.
	rst 38h			;a5a3	ff		.
	rst 38h			;a5a4	ff		.
	rst 38h			;a5a5	ff		.
	rst 38h			;a5a6	ff		.
	rst 38h			;a5a7	ff		.
	rst 38h			;a5a8	ff		.
	rst 38h			;a5a9	ff		.
	rst 38h			;a5aa	ff		.
	rst 38h			;a5ab	ff		.
	rst 38h			;a5ac	ff		.
	rst 38h			;a5ad	ff		.
	rst 38h			;a5ae	ff		.
	rst 38h			;a5af	ff		.
	rst 38h			;a5b0	ff		.
	rst 38h			;a5b1	ff		.
	rst 38h			;a5b2	ff		.
	rst 38h			;a5b3	ff		.
	rst 38h			;a5b4	ff		.
	rst 38h			;a5b5	ff		.
	rst 38h			;a5b6	ff		.
	rst 38h			;a5b7	ff		.
	rst 38h			;a5b8	ff		.
	rst 38h			;a5b9	ff		.
	rst 38h			;a5ba	ff		.
	rst 38h			;a5bb	ff		.
	rst 38h			;a5bc	ff		.
	rst 38h			;a5bd	ff		.
	rst 38h			;a5be	ff		.
	rst 38h			;a5bf	ff		.
	rst 38h			;a5c0	ff		.
	rst 38h			;a5c1	ff		.
	rst 38h			;a5c2	ff		.
	rst 38h			;a5c3	ff		.
	rst 38h			;a5c4	ff		.
	rst 38h			;a5c5	ff		.
	rst 38h			;a5c6	ff		.
	rst 38h			;a5c7	ff		.
	rst 38h			;a5c8	ff		.
	rst 38h			;a5c9	ff		.
	rst 38h			;a5ca	ff		.
	rst 38h			;a5cb	ff		.
	rst 38h			;a5cc	ff		.
	rst 38h			;a5cd	ff		.
	rst 38h			;a5ce	ff		.
	rst 38h			;a5cf	ff		.
	rst 38h			;a5d0	ff		.
	rst 38h			;a5d1	ff		.
	rst 38h			;a5d2	ff		.
	rst 38h			;a5d3	ff		.
	rst 38h			;a5d4	ff		.
	rst 38h			;a5d5	ff		.
	rst 38h			;a5d6	ff		.
	rst 38h			;a5d7	ff		.
	rst 38h			;a5d8	ff		.
	rst 38h			;a5d9	ff		.
	rst 38h			;a5da	ff		.
	rst 38h			;a5db	ff		.
	rst 38h			;a5dc	ff		.
	rst 38h			;a5dd	ff		.
	rst 38h			;a5de	ff		.
	rst 38h			;a5df	ff		.
	rst 38h			;a5e0	ff		.
	rst 38h			;a5e1	ff		.
	rst 38h			;a5e2	ff		.
	rst 38h			;a5e3	ff		.
	rst 38h			;a5e4	ff		.
	rst 38h			;a5e5	ff		.
	rst 38h			;a5e6	ff		.
	rst 38h			;a5e7	ff		.
	rst 38h			;a5e8	ff		.
	rst 38h			;a5e9	ff		.
	rst 38h			;a5ea	ff		.
	rst 38h			;a5eb	ff		.
	rst 38h			;a5ec	ff		.
	rst 38h			;a5ed	ff		.
	rst 38h			;a5ee	ff		.
	rst 38h			;a5ef	ff		.
	rst 38h			;a5f0	ff		.
	rst 38h			;a5f1	ff		.
	rst 38h			;a5f2	ff		.
	rst 38h			;a5f3	ff		.
	rst 38h			;a5f4	ff		.
	rst 38h			;a5f5	ff		.
	rst 38h			;a5f6	ff		.
	rst 38h			;a5f7	ff		.
	rst 38h			;a5f8	ff		.
	rst 38h			;a5f9	ff		.
	rst 38h			;a5fa	ff		.
	rst 38h			;a5fb	ff		.
	rst 38h			;a5fc	ff		.
	rst 38h			;a5fd	ff		.
	rst 38h			;a5fe	ff		.
	rst 38h			;a5ff	ff		.
	call 0474bh		;a600	cd 4b 47	. K G
	ld a,000h		;a603	3e 00		> .
	ld h,000h		;a605	26 00		& .
	ld l,h			;a607	6c		l
	ld b,h			;a608	44		D
	ld c,080h		;a609	0e 80		. .
	ld d,002h		;a60b	16 02		. .
	call 047fch		;a60d	cd fc 47	. . G
	call 047d2h		;a610	cd d2 47	. . G
	ld ix,0b40ah		;a613	dd 21 0a b4	. ! . .
	call sub_ae15h		;a617	cd 15 ae	. . .
	call 04b95h		;a61a	cd 95 4b	. . K
	ld a,015h		;a61d	3e 15		> .
	ld hl,05a02h		;a61f	21 02 5a	! . Z
	ld de,lb9a3h		;a622	11 a3 b9	. . .
	call sub_a68fh		;a625	cd 8f a6	. . .
	jr la67fh		;a628	18 55		. U
	ld ix,lb37eh		;a62a	dd 21 7e b3	. ! ~ .
	call sub_ae15h		;a62e	cd 15 ae	. . .
	call 04b95h		;a631	cd 95 4b	. . K
	ld a,015h		;a634	3e 15		> .
	ld hl,05000h		;a636	21 00 50	! . P
	ld de,lba7bh		;a639	11 7b ba	. { .
	call sub_a68fh		;a63c	cd 8f a6	. . .
	call la67fh		;a63f	cd 7f a6	. . .
	call 047d2h		;a642	cd d2 47	. . G
	call sub_bdc8h		;a645	cd c8 bd	. . .
	ld bc,00017h		;a648	01 17 00	. . .
	call 00047h		;a64b	cd 47 00	. G .
	jp 0473eh		;a64e	c3 3e 47	. > G
	ld ix,lb260h		;a651	dd 21 60 b2	. ! ` .
	call sub_ae15h		;a655	cd 15 ae	. . .
	jp 04b95h		;a658	c3 95 4b	. . K
	ld a,00ah		;a65b	3e 0a		> .
	ld hl,05500h		;a65d	21 00 55	! . U
	ld de,lb520h		;a660	11 20 b5	.   .
	call sub_a68fh		;a663	cd 8f a6	. . .
	call 047d2h		;a666	cd d2 47	. . G
	call la67fh		;a669	cd 7f a6	. . .
	call sub_bdc3h		;a66c	cd c3 bd	. . .
	call 047d2h		;a66f	cd d2 47	. . G
	call 0473eh		;a672	cd 3e 47	. > G
	xor a			;a675	af		.
	ld h,a			;a676	67		g
	ld l,a			;a677	6f		o
	ld b,a			;a678	47		G
	ld c,a			;a679	4f		O
	ld d,001h		;a67a	16 01		. .
	jp 047fch		;a67c	c3 fc 47	. . G
la67fh:
	call 04b95h		;a67f	cd 95 4b	. . K
	call 047d2h		;a682	cd d2 47	. . G
	xor a			;a685	af		.
	ld h,a			;a686	67		g
	ld l,a			;a687	6f		o
	ld b,a			;a688	47		G
	ld c,0c0h		;a689	0e c0		. .
	ld d,a			;a68b	57		W
	jp 047fch		;a68c	c3 fc 47	. . G
sub_a68fh:
	push de			;a68f	d5		.
	push af			;a690	f5		.
	push hl			;a691	e5		.
	call sub_a6aeh		;a692	cd ae a6	. . .
	pop hl			;a695	e1		.
	pop af			;a696	f1		.
	call sub_aea6h		;a697	cd a6 ae	. . .
	pop hl			;a69a	e1		.
	call sub_a713h		;a69b	cd 13 a7	. . .
	ret			;a69e	c9		.
	call 04a7ah		;a69f	cd 7a 4a	. z J
	call 04a58h		;a6a2	cd 58 4a	. X J
	call sub_a749h		;a6a5	cd 49 a7	. I .
	push af			;a6a8	f5		.
	call 04b95h		;a6a9	cd 95 4b	. . K
	pop af			;a6ac	f1		.
	ret			;a6ad	c9		.
sub_a6aeh:
	call 047d2h		;a6ae	cd d2 47	. . G
	ld hl,la6bdh		;a6b1	21 bd a6	! . .
	ld b,008h		;a6b4	06 08		. .
	call 04a1fh		;a6b6	cd 1f 4a	. . J
	call 04760h		;a6b9	cd 60 47	. ` G
	ret			;a6bc	c9		.
la6bdh:
	nop			;a6bd	00		.
	ld b,001h		;a6be	06 01		. .
	ld (01f02h),hl		;a6c0	22 02 1f	" . .
	dec b			;a6c3	05		.
	rst 28h			;a6c4	ef		.
	ld b,01fh		;a6c5	06 1f		. .
	ex af,af'		;a6c7	08		.
	ld a,(bc)		;a6c8	0a		.
	add hl,bc		;a6c9	09		.
	nop			;a6ca	00		.
	dec bc			;a6cb	0b		.
	ld bc,08016h		;a6cc	01 16 80	. . .
	ld a,(bc)		;a6cf	0a		.
	adc a,b			;a6d0	88		.
	nop			;a6d1	00		.
	sub a			;a6d2	97		.
	nop			;a6d3	00		.
	sub d			;a6d4	92		.
	jr nz,$-124		;a6d5	20 82		  .
	ld a,(0c908h)		;a6d7	3a 08 c9	: . .
	ld c,a			;a6da	4f		O
	bit 0,c			;a6db	cb 41		. A
	ld a,0ffh		;a6dd	3e ff		> .
	jr nz,la706h		;a6df	20 25		  %
	bit 1,c			;a6e1	cb 49		. I
	ld a,001h		;a6e3	3e 01		> .
	jr nz,la706h		;a6e5	20 1f		  .
	ld a,(0c907h)		;a6e7	3a 07 c9	: . .
	ld c,a			;a6ea	4f		O
	bit 2,c			;a6eb	cb 51		. Q
	ld a,020h		;a6ed	3e 20		>  
	jr nz,la6f6h		;a6ef	20 05		  .
	bit 3,c			;a6f1	cb 59		. Y
	ld a,0e0h		;a6f3	3e e0		> .
	ret z			;a6f5	c8		.
la6f6h:
	ld hl,0e008h		;a6f6	21 08 e0	! . .
	add a,(hl)		;a6f9	86		.
	ld (hl),a		;a6fa	77		w
	and 060h		;a6fb	e6 60		. `
	or 01fh			;a6fd	f6 1f		. .
	ld b,a			;a6ff	47		G
	ld c,002h		;a700	0e 02		. .
	call 00047h		;a702	cd 47 00	. G .
	ret			;a705	c9		.
la706h:
	ld hl,0e009h		;a706	21 09 e0	! . .
	add a,(hl)		;a709	86		.
	ld (hl),a		;a70a	77		w
	ld b,a			;a70b	47		G
	ld c,017h		;a70c	0e 17		. .
	call 00047h		;a70e	cd 47 00	. G .
	ei			;a711	fb		.
	ret			;a712	c9		.
sub_a713h:
	push hl			;a713	e5		.
	ld hl,0e000h		;a714	21 00 e0	! . .
	ld bc,006ffh		;a717	01 ff 06	. . .
	call 04648h		;a71a	cd 48 46	. H F
	ld ix,0e100h		;a71d	dd 21 00 e1	. ! . .
	pop hl			;a721	e1		.
	ld (ix+002h),l		;a722	dd 75 02	. u .
	ld (ix+003h),h		;a725	dd 74 03	. t .
	ld (ix+00eh),00ah	;a728	dd 36 0e 0a	. 6 . .
	ld (ix+00fh),028h	;a72c	dd 36 0f 28	. 6 . (
	ld (ix+012h),014h	;a730	dd 36 12 14	. 6 . .
	ld (ix+013h),00ch	;a734	dd 36 13 0c	. 6 . .
	ld (ix+014h),006h	;a738	dd 36 14 06	. 6 . .
	ld (ix+015h),006h	;a73c	dd 36 15 06	. 6 . .
	set 0,(ix+00dh)		;a740	dd cb 0d c6	. . . .
	set 5,(ix+00dh)		;a744	dd cb 0d ee	. . . .
	ret			;a748	c9		.
sub_a749h:
	call sub_a754h		;a749	cd 54 a7	. T .
	call sub_a767h		;a74c	cd 67 a7	. g .
	ld a,(0e0ffh)		;a74f	3a ff e0	: . .
	or a			;a752	b7		.
	ret			;a753	c9		.
sub_a754h:
	ld ix,0e100h		;a754	dd 21 00 e1	. ! . .
	ld b,030h		;a758	06 30		. 0
la75ah:
	push bc			;a75a	c5		.
	call sub_a78eh		;a75b	cd 8e a7	. . .
	ld bc,00020h		;a75e	01 20 00	.   .
	add ix,bc		;a761	dd 09		. .
	pop bc			;a763	c1		.
	djnz la75ah		;a764	10 f4		. .
	ret			;a766	c9		.
sub_a767h:
	ld b,010h		;a767	06 10		. .
la769h:
	push bc			;a769	c5		.
	call sub_a771h		;a76a	cd 71 a7	. q .
	pop bc			;a76d	c1		.
	djnz la769h		;a76e	10 f9		. .
	ret			;a770	c9		.
sub_a771h:
	ld c,b			;a771	48		H
	dec c			;a772	0d		.
	ld ix,0e100h		;a773	dd 21 00 e1	. ! . .
	ld b,030h		;a777	06 30		. 0
la779h:
	push bc			;a779	c5		.
	ld a,(ix+00ch)		;a77a	dd 7e 0c	. ~ .
	cp c			;a77d	b9		.
	push ix			;a77e	dd e5		. .
	call z,sub_abb8h	;a780	cc b8 ab	. . .
	pop ix			;a783	dd e1		. .
	ld bc,00020h		;a785	01 20 00	.   .
	add ix,bc		;a788	dd 09		. .
	pop bc			;a78a	c1		.
	djnz la779h		;a78b	10 ec		. .
	ret			;a78d	c9		.
sub_a78eh:
	call sub_a818h		;a78e	cd 18 a8	. . .
	call sub_a795h		;a791	cd 95 a7	. . .
	ret			;a794	c9		.
sub_a795h:
	ld h,(ix+005h)		;a795	dd 66 05	. f .
	ld l,(ix+004h)		;a798	dd 6e 04	. n .
	ld d,(ix+009h)		;a79b	dd 56 09	. V .
	ld e,(ix+008h)		;a79e	dd 5e 08	. ^ .
	add hl,de		;a7a1	19		.
	ld (ix+005h),h		;a7a2	dd 74 05	. t .
	ld (ix+004h),l		;a7a5	dd 75 04	. u .
	ld a,(ix+00dh)		;a7a8	dd 7e 0d	. ~ .
	and 00ah		;a7ab	e6 0a		. .
	jr z,la7d6h		;a7ad	28 27		( '
	bit 6,(ix+005h)		;a7af	dd cb 05 76	. . . v
	jr z,la7c9h		;a7b3	28 14		( .
	ld h,(ix+005h)		;a7b5	dd 66 05	. f .
	ld l,(ix+004h)		;a7b8	dd 6e 04	. n .
	ld d,(ix+016h)		;a7bb	dd 56 16	. V .
	ld e,000h		;a7be	1e 00		. .
	add hl,de		;a7c0	19		.
	ld (ix+005h),h		;a7c1	dd 74 05	. t .
	ld (ix+004h),l		;a7c4	dd 75 04	. u .
	jr la7d6h		;a7c7	18 0d		. .
la7c9h:
	ld a,(ix+005h)		;a7c9	dd 7e 05	. ~ .
	sub (ix+016h)		;a7cc	dd 96 16	. . .
	jr c,la7d6h		;a7cf	38 05		8 .
	ld (ix+005h),a		;a7d1	dd 77 05	. w .
	jr la7c9h		;a7d4	18 f3		. .
la7d6h:
	ld h,(ix+007h)		;a7d6	dd 66 07	. f .
	ld l,(ix+006h)		;a7d9	dd 6e 06	. n .
	ld d,(ix+00bh)		;a7dc	dd 56 0b	. V .
	ld e,(ix+00ah)		;a7df	dd 5e 0a	. ^ .
	add hl,de		;a7e2	19		.
	ld (ix+007h),h		;a7e3	dd 74 07	. t .
	ld (ix+006h),l		;a7e6	dd 75 06	. u .
	ld a,(ix+00dh)		;a7e9	dd 7e 0d	. ~ .
	and 012h		;a7ec	e6 12		. .
	jr z,la817h		;a7ee	28 27		( '
	bit 6,(ix+007h)		;a7f0	dd cb 07 76	. . . v
	jr z,la80ah		;a7f4	28 14		( .
	ld h,(ix+007h)		;a7f6	dd 66 07	. f .
	ld l,(ix+006h)		;a7f9	dd 6e 06	. n .
	ld d,(ix+017h)		;a7fc	dd 56 17	. V .
	ld e,000h		;a7ff	1e 00		. .
	add hl,de		;a801	19		.
	ld (ix+007h),h		;a802	dd 74 07	. t .
	ld (ix+006h),l		;a805	dd 75 06	. u .
	jr la817h		;a808	18 0d		. .
la80ah:
	ld a,(ix+007h)		;a80a	dd 7e 07	. ~ .
	sub (ix+017h)		;a80d	dd 96 17	. . .
	jr c,la817h		;a810	38 05		8 .
	ld (ix+007h),a		;a812	dd 77 07	. w .
	jr la80ah		;a815	18 f3		. .
la817h:
	ret			;a817	c9		.
sub_a818h:
	ld a,(ix+001h)		;a818	dd 7e 01	. ~ .
	or a			;a81b	b7		.
	jr z,la823h		;a81c	28 05		( .
	dec a			;a81e	3d		=
	ld (ix+001h),a		;a81f	dd 77 01	. w .
	ret nz			;a822	c0		.
la823h:
	ld l,(ix+002h)		;a823	dd 6e 02	. n .
	ld h,(ix+003h)		;a826	dd 66 03	. f .
	ld a,h			;a829	7c		|
	or l			;a82a	b5		.
	ret z			;a82b	c8		.
	ld a,(hl)		;a82c	7e		~
	cp 011h			;a82d	fe 11		. .
	jp nc,04ae0h		;a82f	d2 e0 4a	. . J
	call 0461ah		;a832	cd 1a 46	. . F
	ld l,d			;a835	6a		j
	xor b			;a836	a8		.
	jp nc,025a8h		;a837	d2 a8 25	. . %
	xor c			;a83a	a9		.
	ld c,d			;a83b	4a		J
	xor c			;a83c	a9		.
	ld l,d			;a83d	6a		j
	xor c			;a83e	a9		.
	sub e			;a83f	93		.
	xor c			;a840	a9		.
	cp e			;a841	bb		.
	xor c			;a842	a9		.
	rst 28h			;a843	ef		.
	xor c			;a844	a9		.
	ld c,0aah		;a845	0e aa		. .
	inc sp			;a847	33		3
	xor d			;a848	aa		.
	ld e,e			;a849	5b		[
	xor d			;a84a	aa		.
	ld a,l			;a84b	7d		}
	xor d			;a84c	aa		.
	xor (hl)		;a84d	ae		.
	xor d			;a84e	aa		.
	push de			;a84f	d5		.
	xor d			;a850	aa		.
	di			;a851	f3		.
	xor d			;a852	aa		.
	add hl,de		;a853	19		.
	xor e			;a854	ab		.
	dec sp			;a855	3b		;
	xor e			;a856	ab		.
sub_a857h:
	ld l,(ix+002h)		;a857	dd 6e 02	. n .
	ld h,(ix+003h)		;a85a	dd 66 03	. f .
	ret			;a85d	c9		.
sub_a85eh:
	ld (ix+002h),l		;a85e	dd 75 02	. u .
	ld (ix+003h),h		;a861	dd 74 03	. t .
	ret			;a864	c9		.
	pop hl			;a865	e1		.
	call sub_a877h		;a866	cd 77 a8	. w .
	jp (hl)			;a869	e9		.
	call sub_a857h		;a86a	cd 57 a8	. W .
	inc hl			;a86d	23		#
	call sub_a877h		;a86e	cd 77 a8	. w .
	call sub_a85eh		;a871	cd 5e a8	. ^ .
	jp la823h		;a874	c3 23 a8	. # .
sub_a877h:
	ld a,(hl)		;a877	7e		~
	inc hl			;a878	23		#
	ld c,(hl)		;a879	4e		N
	inc hl			;a87a	23		#
	ld b,(hl)		;a87b	46		F
	inc hl			;a87c	23		#
	ld d,(hl)		;a87d	56		V
	inc hl			;a87e	23		#
	ld e,(hl)		;a87f	5e		^
	inc hl			;a880	23		#
	ex af,af'		;a881	08		.
	ld a,(hl)		;a882	7e		~
	inc hl			;a883	23		#
	push hl			;a884	e5		.
	push ix			;a885	dd e5		. .
	call sub_a88eh		;a887	cd 8e a8	. . .
	pop ix			;a88a	dd e1		. .
	pop hl			;a88c	e1		.
	ret			;a88d	c9		.
sub_a88eh:
	ld l,a			;a88e	6f		o
	ex af,af'		;a88f	08		.
	push hl			;a890	e5		.
	push de			;a891	d5		.
	push bc			;a892	c5		.
	push ix			;a893	dd e5		. .
	call sub_ab61h		;a895	cd 61 ab	. a .
	jp c,04699h		;a898	da 99 46	. . F
	pop iy			;a89b	fd e1		. .
	pop bc			;a89d	c1		.
	pop de			;a89e	d1		.
	pop hl			;a89f	e1		.
	ld (ix+002h),c		;a8a0	dd 71 02	. q .
	ld (ix+003h),b		;a8a3	dd 70 03	. p .
	ld (ix+00ch),l		;a8a6	dd 75 0c	. u .
	ld a,e			;a8a9	7b		{
	push de			;a8aa	d5		.
	call sub_aba6h		;a8ab	cd a6 ab	. . .
	ld d,(iy+007h)		;a8ae	fd 56 07	. V .
	ld e,(iy+006h)		;a8b1	fd 5e 06	. ^ .
	add hl,de		;a8b4	19		.
	ld (ix+007h),h		;a8b5	dd 74 07	. t .
	ld (ix+006h),l		;a8b8	dd 75 06	. u .
sub_a8bbh:
	pop af			;a8bb	f1		.
	call sub_aba6h		;a8bc	cd a6 ab	. . .
	ld d,(iy+005h)		;a8bf	fd 56 05	. V .
	ld e,(iy+004h)		;a8c2	fd 5e 04	. ^ .
	add hl,de		;a8c5	19		.
	ld (ix+005h),h		;a8c6	dd 74 05	. t .
	ld (ix+004h),l		;a8c9	dd 75 04	. u .
	ret			;a8cc	c9		.
	pop hl			;a8cd	e1		.
	call sub_a8ddh		;a8ce	cd dd a8	. . .
	jp (hl)			;a8d1	e9		.
	call sub_a857h		;a8d2	cd 57 a8	. W .
	inc hl			;a8d5	23		#
	call sub_a8ddh		;a8d6	cd dd a8	. . .
	call sub_a85eh		;a8d9	cd 5e a8	. ^ .
	ret			;a8dc	c9		.
sub_a8ddh:
	ld c,(hl)		;a8dd	4e		N
	inc hl			;a8de	23		#
	ld b,(hl)		;a8df	46		F
	inc hl			;a8e0	23		#
	ld d,(hl)		;a8e1	56		V
	inc hl			;a8e2	23		#
	ld e,(hl)		;a8e3	5e		^
	inc hl			;a8e4	23		#
	push hl			;a8e5	e5		.
	push ix			;a8e6	dd e5		. .
	call sub_a8efh		;a8e8	cd ef a8	. . .
	pop ix			;a8eb	dd e1		. .
	pop hl			;a8ed	e1		.
	ret			;a8ee	c9		.
sub_a8efh:
	ld h,b			;a8ef	60		`
	ld l,c			;a8f0	69		i
	push de			;a8f1	d5		.
	call sub_a917h		;a8f2	cd 17 a9	. . .
	ex de,hl		;a8f5	eb		.
	pop de			;a8f6	d1		.
	ld (ix+00eh),h		;a8f7	dd 74 0e	. t .
	ld a,b			;a8fa	78		x
	sub h			;a8fb	94		.
	inc a			;a8fc	3c		<
	ld (ix+012h),a		;a8fd	dd 77 12	. w .
	ld a,c			;a900	79		y
	sub l			;a901	95		.
	inc a			;a902	3c		<
	ld (ix+013h),a		;a903	dd 77 13	. w .
	ld a,l			;a906	7d		}
	add a,040h		;a907	c6 40		. @
	ld (ix+00fh),a		;a909	dd 77 0f	. w .
	ld (ix+010h),d		;a90c	dd 72 10	. r .
	ld (ix+011h),e		;a90f	dd 73 11	. s .
	set 0,(ix+00dh)		;a912	dd cb 0d c6	. . . .
	ret			;a916	c9		.
sub_a917h:
	ld d,(hl)		;a917	56		V
	inc hl			;a918	23		#
	ld e,(hl)		;a919	5e		^
	inc hl			;a91a	23		#
	ld b,(hl)		;a91b	46		F
	inc hl			;a91c	23		#
	ld c,(hl)		;a91d	4e		N
	inc hl			;a91e	23		#
	ret			;a91f	c9		.
	pop hl			;a920	e1		.
	call sub_a932h		;a921	cd 32 a9	. 2 .
	jp (hl)			;a924	e9		.
	call sub_a857h		;a925	cd 57 a8	. W .
	inc hl			;a928	23		#
	call sub_a932h		;a929	cd 32 a9	. 2 .
	call sub_a85eh		;a92c	cd 5e a8	. ^ .
	jp la823h		;a92f	c3 23 a8	. # .
sub_a932h:
	ld a,(hl)		;a932	7e		~
	inc hl			;a933	23		#
	push hl			;a934	e5		.
	push ix			;a935	dd e5		. .
	call sub_a93eh		;a937	cd 3e a9	. > .
	pop ix			;a93a	dd e1		. .
	pop hl			;a93c	e1		.
	ret			;a93d	c9		.
sub_a93eh:
	or (ix+00dh)		;a93e	dd b6 0d	. . .
	ld (ix+00dh),a		;a941	dd 77 0d	. w .
	ret			;a944	c9		.
	pop hl			;a945	e1		.
	call sub_a955h		;a946	cd 55 a9	. U .
	jp (hl)			;a949	e9		.
	call sub_a857h		;a94a	cd 57 a8	. W .
	inc hl			;a94d	23		#
	call sub_a955h		;a94e	cd 55 a9	. U .
	call sub_a85eh		;a951	cd 5e a8	. ^ .
	ret			;a954	c9		.
sub_a955h:
	ld a,(hl)		;a955	7e		~
	inc hl			;a956	23		#
	push hl			;a957	e5		.
	push ix			;a958	dd e5		. .
	call sub_a961h		;a95a	cd 61 a9	. a .
	pop ix			;a95d	dd e1		. .
	pop hl			;a95f	e1		.
	ret			;a960	c9		.
sub_a961h:
	ld (ix+001h),a		;a961	dd 77 01	. w .
	ret			;a964	c9		.
	pop hl			;a965	e1		.
	call sub_a976h		;a966	cd 76 a9	. v .
	jp (hl)			;a969	e9		.
	call sub_a857h		;a96a	cd 57 a8	. W .
	inc hl			;a96d	23		#
	call sub_a976h		;a96e	cd 76 a9	. v .
	ret c			;a971	d8		.
	call sub_a85eh		;a972	cd 5e a8	. ^ .
	ret			;a975	c9		.
sub_a976h:
	ld a,(hl)		;a976	7e		~
	inc hl			;a977	23		#
	push hl			;a978	e5		.
	push ix			;a979	dd e5		. .
	call sub_a982h		;a97b	cd 82 a9	. . .
	pop ix			;a97e	dd e1		. .
	pop hl			;a980	e1		.
	ret			;a981	c9		.
sub_a982h:
	ld hl,0e0f0h		;a982	21 f0 e0	! . .
	ld e,a			;a985	5f		_
	ld d,000h		;a986	16 00		. .
	add hl,de		;a988	19		.
	ld a,(hl)		;a989	7e		~
	or a			;a98a	b7		.
	ret nz			;a98b	c0		.
	scf			;a98c	37		7
	ret			;a98d	c9		.
	pop hl			;a98e	e1		.
	call sub_a9a0h		;a98f	cd a0 a9	. . .
	jp (hl)			;a992	e9		.
	call sub_a857h		;a993	cd 57 a8	. W .
	inc hl			;a996	23		#
	call sub_a9a0h		;a997	cd a0 a9	. . .
	call sub_a85eh		;a99a	cd 5e a8	. ^ .
	jp la823h		;a99d	c3 23 a8	. # .
sub_a9a0h:
	ld a,(hl)		;a9a0	7e		~
	inc hl			;a9a1	23		#
	push hl			;a9a2	e5		.
	push ix			;a9a3	dd e5		. .
	call sub_a9ach		;a9a5	cd ac a9	. . .
	pop ix			;a9a8	dd e1		. .
	pop hl			;a9aa	e1		.
	ret			;a9ab	c9		.
sub_a9ach:
	ld hl,0e0f0h		;a9ac	21 f0 e0	! . .
	ld e,a			;a9af	5f		_
	ld d,000h		;a9b0	16 00		. .
	add hl,de		;a9b2	19		.
	ld (hl),001h		;a9b3	36 01		6 .
	ret			;a9b5	c9		.
	pop hl			;a9b6	e1		.
	call sub_a9c8h		;a9b7	cd c8 a9	. . .
	jp (hl)			;a9ba	e9		.
	call sub_a857h		;a9bb	cd 57 a8	. W .
	inc hl			;a9be	23		#
	call sub_a9c8h		;a9bf	cd c8 a9	. . .
	call sub_a85eh		;a9c2	cd 5e a8	. ^ .
	jp la823h		;a9c5	c3 23 a8	. # .
sub_a9c8h:
	push hl			;a9c8	e5		.
	push ix			;a9c9	dd e5		. .
	call sub_a9d2h		;a9cb	cd d2 a9	. . .
	pop ix			;a9ce	dd e1		. .
	pop hl			;a9d0	e1		.
	ret			;a9d1	c9		.
sub_a9d2h:
	xor a			;a9d2	af		.
	ld hl,02820h		;a9d3	21 20 28	!   (
	ld bc,0d090h		;a9d6	01 90 d0	. . .
	ld d,a			;a9d9	57		W
	call 047fch		;a9da	cd fc 47	. . G
	call sub_ab9dh		;a9dd	cd 9d ab	. . .
	ld hl,0e0f0h		;a9e0	21 f0 e0	! . .
	ld bc,0000fh		;a9e3	01 0f 00	. . .
	call 04648h		;a9e6	cd 48 46	. H F
	ret			;a9e9	c9		.
	pop hl			;a9ea	e1		.
	call sub_a9fdh		;a9eb	cd fd a9	. . .
	jp (hl)			;a9ee	e9		.
	call sub_a857h		;a9ef	cd 57 a8	. W .
	inc hl			;a9f2	23		#
	call sub_a9fdh		;a9f3	cd fd a9	. . .
	ret c			;a9f6	d8		.
	call sub_a85eh		;a9f7	cd 5e a8	. ^ .
	jp la823h		;a9fa	c3 23 a8	. # .
sub_a9fdh:
	push hl			;a9fd	e5		.
	push ix			;a9fe	dd e5		. .
	call sub_aa07h		;aa00	cd 07 aa	. . .
	pop ix			;aa03	dd e1		. .
	pop hl			;aa05	e1		.
	ret			;aa06	c9		.
sub_aa07h:
	scf			;aa07	37		7
	ret			;aa08	c9		.
	pop hl			;aa09	e1		.
	call sub_aa1bh		;aa0a	cd 1b aa	. . .
	jp (hl)			;aa0d	e9		.
	call sub_a857h		;aa0e	cd 57 a8	. W .
	inc hl			;aa11	23		#
	call sub_aa1bh		;aa12	cd 1b aa	. . .
	call sub_a85eh		;aa15	cd 5e a8	. ^ .
	jp la823h		;aa18	c3 23 a8	. # .
sub_aa1bh:
	ld e,(hl)		;aa1b	5e		^
	inc hl			;aa1c	23		#
	ld d,(hl)		;aa1d	56		V
	inc hl			;aa1e	23		#
	push hl			;aa1f	e5		.
	push ix			;aa20	dd e5		. .
	call sub_aa29h		;aa22	cd 29 aa	. ) .
	pop ix			;aa25	dd e1		. .
	pop hl			;aa27	e1		.
	ret			;aa28	c9		.
sub_aa29h:
	ex de,hl		;aa29	eb		.
	call 04c94h		;aa2a	cd 94 4c	. . L
	ret			;aa2d	c9		.
	pop hl			;aa2e	e1		.
	call sub_aa40h		;aa2f	cd 40 aa	. @ .
	jp (hl)			;aa32	e9		.
	call sub_a857h		;aa33	cd 57 a8	. W .
	inc hl			;aa36	23		#
	call sub_aa40h		;aa37	cd 40 aa	. @ .
	call sub_a85eh		;aa3a	cd 5e a8	. ^ .
	jp la823h		;aa3d	c3 23 a8	. # .
sub_aa40h:
	ld e,(hl)		;aa40	5e		^
	inc hl			;aa41	23		#
	ld d,(hl)		;aa42	56		V
	inc hl			;aa43	23		#
	push hl			;aa44	e5		.
	push ix			;aa45	dd e5		. .
	call sub_aa4eh		;aa47	cd 4e aa	. N .
	pop ix			;aa4a	dd e1		. .
	pop hl			;aa4c	e1		.
	ret			;aa4d	c9		.
sub_aa4eh:
	ex de,hl		;aa4e	eb		.
	call 04ce0h		;aa4f	cd e0 4c	. . L
	call 04cf5h		;aa52	cd f5 4c	. . L
	ret			;aa55	c9		.
	pop hl			;aa56	e1		.
	call sub_aa68h		;aa57	cd 68 aa	. h .
	jp (hl)			;aa5a	e9		.
	call sub_a857h		;aa5b	cd 57 a8	. W .
	inc hl			;aa5e	23		#
	call sub_aa68h		;aa5f	cd 68 aa	. h .
	call sub_a85eh		;aa62	cd 5e a8	. ^ .
	jp la823h		;aa65	c3 23 a8	. # .
sub_aa68h:
	ld e,(hl)		;aa68	5e		^
	inc hl			;aa69	23		#
	ld d,(hl)		;aa6a	56		V
	inc hl			;aa6b	23		#
	push hl			;aa6c	e5		.
	push ix			;aa6d	dd e5		. .
	call sub_aa76h		;aa6f	cd 76 aa	. v .
	pop ix			;aa72	dd e1		. .
	pop hl			;aa74	e1		.
	ret			;aa75	c9		.
sub_aa76h:
	ex de,hl		;aa76	eb		.
	jp (hl)			;aa77	e9		.
	pop hl			;aa78	e1		.
	call sub_aa88h		;aa79	cd 88 aa	. . .
	jp (hl)			;aa7c	e9		.
	call sub_a857h		;aa7d	cd 57 a8	. W .
	inc hl			;aa80	23		#
	call sub_aa88h		;aa81	cd 88 aa	. . .
	call sub_a85eh		;aa84	cd 5e a8	. ^ .
	ret			;aa87	c9		.
sub_aa88h:
	ld d,(hl)		;aa88	56		V
	inc hl			;aa89	23		#
	ld e,(hl)		;aa8a	5e		^
	inc hl			;aa8b	23		#
	push hl			;aa8c	e5		.
	push ix			;aa8d	dd e5		. .
	call sub_aa96h		;aa8f	cd 96 aa	. . .
	pop ix			;aa92	dd e1		. .
	pop hl			;aa94	e1		.
	ret			;aa95	c9		.
sub_aa96h:
	ld a,d			;aa96	7a		z
	rlca			;aa97	07		.
	sbc a,a			;aa98	9f		.
	ld (ix+008h),d		;aa99	dd 72 08	. r .
	ld (ix+009h),a		;aa9c	dd 77 09	. w .
	ld a,e			;aa9f	7b		{
	rlca			;aaa0	07		.
	sbc a,a			;aaa1	9f		.
	ld (ix+00ah),e		;aaa2	dd 73 0a	. s .
	ld (ix+00bh),a		;aaa5	dd 77 0b	. w .
	ret			;aaa8	c9		.
	pop hl			;aaa9	e1		.
	call sub_aabbh		;aaaa	cd bb aa	. . .
	jp (hl)			;aaad	e9		.
	call sub_a857h		;aaae	cd 57 a8	. W .
	inc hl			;aab1	23		#
	call sub_aabbh		;aab2	cd bb aa	. . .
	call sub_a85eh		;aab5	cd 5e a8	. ^ .
	jp la823h		;aab8	c3 23 a8	. # .
sub_aabbh:
	ld d,(hl)		;aabb	56		V
	inc hl			;aabc	23		#
	ld e,(hl)		;aabd	5e		^
	inc hl			;aabe	23		#
	push hl			;aabf	e5		.
	push ix			;aac0	dd e5		. .
	call sub_aac9h		;aac2	cd c9 aa	. . .
	pop ix			;aac5	dd e1		. .
	pop hl			;aac7	e1		.
	ret			;aac8	c9		.
sub_aac9h:
	ld (ix+014h),d		;aac9	dd 72 14	. r .
	ld (ix+015h),e		;aacc	dd 73 15	. s .
	ret			;aacf	c9		.
	pop hl			;aad0	e1		.
	call sub_aae2h		;aad1	cd e2 aa	. . .
	jp (hl)			;aad4	e9		.
	call sub_a857h		;aad5	cd 57 a8	. W .
	inc hl			;aad8	23		#
	call sub_aae2h		;aad9	cd e2 aa	. . .
	call sub_a85eh		;aadc	cd 5e a8	. ^ .
	jp la823h		;aadf	c3 23 a8	. # .
sub_aae2h:
	ld e,(hl)		;aae2	5e		^
	inc hl			;aae3	23		#
	ld d,(hl)		;aae4	56		V
	inc hl			;aae5	23		#
	ex de,hl		;aae6	eb		.
	ld (ix+002h),l		;aae7	dd 75 02	. u .
	ld (ix+003h),h		;aaea	dd 74 03	. t .
	ret			;aaed	c9		.
	pop hl			;aaee	e1		.
	call sub_aaffh		;aaef	cd ff aa	. . .
	jp (hl)			;aaf2	e9		.
	call sub_a857h		;aaf3	cd 57 a8	. W .
	inc hl			;aaf6	23		#
	call sub_aaffh		;aaf7	cd ff aa	. . .
	ret c			;aafa	d8		.
	call sub_a85eh		;aafb	cd 5e a8	. ^ .
	ret			;aafe	c9		.
sub_aaffh:
	push hl			;aaff	e5		.
	push ix			;ab00	dd e5		. .
	call sub_ab09h		;ab02	cd 09 ab	. . .
	pop ix			;ab05	dd e1		. .
	pop hl			;ab07	e1		.
	ret			;ab08	c9		.
sub_ab09h:
	push ix			;ab09	dd e5		. .
	pop hl			;ab0b	e1		.
	ld bc,0001fh		;ab0c	01 1f 00	. . .
	call 04648h		;ab0f	cd 48 46	. H F
	scf			;ab12	37		7
	ret			;ab13	c9		.
	pop hl			;ab14	e1		.
	call sub_ab26h		;ab15	cd 26 ab	. & .
	jp (hl)			;ab18	e9		.
	call sub_a857h		;ab19	cd 57 a8	. W .
	inc hl			;ab1c	23		#
	call sub_ab26h		;ab1d	cd 26 ab	. & .
	call sub_a85eh		;ab20	cd 5e a8	. ^ .
	jp la823h		;ab23	c3 23 a8	. # .
sub_ab26h:
	ld a,(hl)		;ab26	7e		~
	inc hl			;ab27	23		#
	push hl			;ab28	e5		.
	push ix			;ab29	dd e5		. .
	call sub_ab32h		;ab2b	cd 32 ab	. 2 .
	pop ix			;ab2e	dd e1		. .
	pop hl			;ab30	e1		.
	ret			;ab31	c9		.
sub_ab32h:
	call 04af5h		;ab32	cd f5 4a	. . J
	ret			;ab35	c9		.
	pop hl			;ab36	e1		.
	call sub_ab48h		;ab37	cd 48 ab	. H .
	jp (hl)			;ab3a	e9		.
	call sub_a857h		;ab3b	cd 57 a8	. W .
	inc hl			;ab3e	23		#
	call sub_ab48h		;ab3f	cd 48 ab	. H .
	call sub_a85eh		;ab42	cd 5e a8	. ^ .
	jp la823h		;ab45	c3 23 a8	. # .
sub_ab48h:
	ld e,(hl)		;ab48	5e		^
	inc hl			;ab49	23		#
	ld d,(hl)		;ab4a	56		V
	inc hl			;ab4b	23		#
	push hl			;ab4c	e5		.
	push ix			;ab4d	dd e5		. .
	call sub_ab56h		;ab4f	cd 56 ab	. V .
	pop ix			;ab52	dd e1		. .
	pop hl			;ab54	e1		.
	ret			;ab55	c9		.
sub_ab56h:
	ld a,e			;ab56	7b		{
	and 0f0h		;ab57	e6 f0		. .
	rrca			;ab59	0f		.
	rrca			;ab5a	0f		.
	rrca			;ab5b	0f		.
	rrca			;ab5c	0f		.
	call 04776h		;ab5d	cd 76 47	. v G
	ret			;ab60	c9		.
sub_ab61h:
	call sub_ab83h		;ab61	cd 83 ab	. . .
	ret c			;ab64	d8		.
	push hl			;ab65	e5		.
	pop ix			;ab66	dd e1		. .
	ld bc,0001fh		;ab68	01 1f 00	. . .
	call 04648h		;ab6b	cd 48 46	. H F
	ld (ix+000h),001h	;ab6e	dd 36 00 01	. 6 . .
	ld (ix+015h),028h	;ab72	dd 36 15 28	. 6 . (
	ld (ix+014h),00ah	;ab76	dd 36 14 0a	. 6 . .
	ld (ix+016h),014h	;ab7a	dd 36 16 14	. 6 . .
	ld (ix+017h),00ch	;ab7e	dd 36 17 0c	. 6 . .
	ret			;ab82	c9		.
sub_ab83h:
	cp 030h			;ab83	fe 30		. 0
	ccf			;ab85	3f		?
	ret c			;ab86	d8		.
	ld l,a			;ab87	6f		o
	ld h,000h		;ab88	26 00		& .
	ld de,0e100h		;ab8a	11 00 e1	. . .
	add hl,hl		;ab8d	29		)
	add hl,hl		;ab8e	29		)
	add hl,hl		;ab8f	29		)
	add hl,hl		;ab90	29		)
	add hl,hl		;ab91	29		)
	add hl,de		;ab92	19		.
	ret			;ab93	c9		.
	ld hl,0e100h		;ab94	21 00 e1	! . .
	ld bc,005ffh		;ab97	01 ff 05	. . .
	jp 04648h		;ab9a	c3 48 46	. H F
sub_ab9dh:
	ld hl,0e120h		;ab9d	21 20 e1	!   .
	ld bc,005dfh		;aba0	01 df 05	. . .
	jp 04648h		;aba3	c3 48 46	. H F
sub_aba6h:
	ld l,a			;aba6	6f		o
	rlca			;aba7	07		.
	sbc a,a			;aba8	9f		.
	ld h,a			;aba9	67		g
	add hl,hl		;abaa	29		)
	add hl,hl		;abab	29		)
	add hl,hl		;abac	29		)
	add hl,hl		;abad	29		)
	add hl,hl		;abae	29		)
	ret			;abaf	c9		.
sub_abb0h:
	xor a			;abb0	af		.
	add hl,hl		;abb1	29		)
	adc a,a			;abb2	8f		.
	add hl,hl		;abb3	29		)
	adc a,a			;abb4	8f		.
	add hl,hl		;abb5	29		)
	adc a,a			;abb6	8f		.
	ret			;abb7	c9		.
sub_abb8h:
	bit 0,(ix+00dh)		;abb8	dd cb 0d 46	. . . F
	ret z			;abbc	c8		.
	ld a,(ix+012h)		;abbd	dd 7e 12	. ~ .
	and (ix+013h)		;abc0	dd a6 13	. . .
	inc a			;abc3	3c		<
	ret z			;abc4	c8		.
	ld a,(ix+00dh)		;abc5	dd 7e 0d	. ~ .
	bit 1,(ix+00dh)		;abc8	dd cb 0d 4e	. . . N
	jp nz,lacadh		;abcc	c2 ad ac	. . .
	bit 3,(ix+00dh)		;abcf	dd cb 0d 5e	. . . ^
	jp nz,lac6eh		;abd3	c2 6e ac	. n .
	bit 4,(ix+00dh)		;abd6	dd cb 0d 66	. . . f
	jp nz,lac2fh		;abda	c2 2f ac	. / .
sub_abddh:
	ld a,(ix+005h)		;abdd	dd 7e 05	. ~ .
	add a,(ix+014h)		;abe0	dd 86 14	. . .
	ld d,a			;abe3	57		W
	ld e,(ix+004h)		;abe4	dd 5e 04	. ^ .
	ld a,(ix+010h)		;abe7	dd 7e 10	. ~ .
	call sub_aba6h		;abea	cd a6 ab	. . .
	add hl,de		;abed	19		.
	call sub_abb0h		;abee	cd b0 ab	. . .
	push hl			;abf1	e5		.
	ld a,(ix+007h)		;abf2	dd 7e 07	. ~ .
	add a,(ix+015h)		;abf5	dd 86 15	. . .
	ld d,a			;abf8	57		W
	ld e,(ix+006h)		;abf9	dd 5e 06	. ^ .
	ld a,(ix+011h)		;abfc	dd 7e 11	. ~ .
	call sub_aba6h		;abff	cd a6 ab	. . .
	add hl,de		;ac02	19		.
	call sub_abb0h		;ac03	cd b0 ab	. . .
	pop de			;ac06	d1		.
	ld e,h			;ac07	5c		\
	push de			;ac08	d5		.
	push af			;ac09	f5		.
	ld h,(ix+00eh)		;ac0a	dd 66 0e	. f .
	ld l,(ix+00fh)		;ac0d	dd 6e 0f	. n .
	pop af			;ac10	f1		.
	pop de			;ac11	d1		.
	ld b,(ix+012h)		;ac12	dd 46 12	. F .
	ld c,(ix+013h)		;ac15	dd 4e 13	. N .
	bit 5,(ix+00dh)		;ac18	dd cb 0d 6e	. . . n
	jr z,lac23h		;ac1c	28 05		( .
	set 6,a			;ac1e	cb f7		. .
	jp lad86h		;ac20	c3 86 ad	. . .
lac23h:
	bit 2,(ix+00dh)		;ac23	dd cb 0d 56	. . . V
	jp nz,lad86h		;ac27	c2 86 ad	. . .
	set 7,a			;ac2a	cb ff		. .
	jp lad86h		;ac2c	c3 86 ad	. . .
lac2fh:
	push ix			;ac2f	dd e5		. .
	pop iy			;ac31	fd e1		. .
	call sub_ad76h		;ac33	cd 76 ad	. v .
	ld a,(iy+017h)		;ac36	fd 7e 17	. ~ .
	sub (iy+007h)		;ac39	fd 96 07	. . .
	inc a			;ac3c	3c		<
	inc a			;ac3d	3c		<
	ld (ix+013h),a		;ac3e	dd 77 13	. w .
	call sub_abddh		;ac41	cd dd ab	. . .
	call sub_ad76h		;ac44	cd 76 ad	. v .
	ld a,(iy+007h)		;ac47	fd 7e 07	. ~ .
	inc a			;ac4a	3c		<
	ld (ix+013h),a		;ac4b	dd 77 13	. w .
	ld a,(iy+00fh)		;ac4e	fd 7e 0f	. ~ .
	add a,(iy+013h)		;ac51	fd 86 13	. . .
	sub (iy+007h)		;ac54	fd 96 07	. . .
	dec a			;ac57	3d		=
	ld (ix+00fh),a		;ac58	dd 77 0f	. w .
	ld l,(iy+006h)		;ac5b	fd 6e 06	. n .
	ld h,0ffh		;ac5e	26 ff		& .
	ld (ix+007h),h		;ac60	dd 74 07	. t .
	ld (ix+006h),l		;ac63	dd 75 06	. u .
	call sub_abddh		;ac66	cd dd ab	. . .
	push iy			;ac69	fd e5		. .
	pop ix			;ac6b	dd e1		. .
	ret			;ac6d	c9		.
lac6eh:
	push ix			;ac6e	dd e5		. .
	pop iy			;ac70	fd e1		. .
	call sub_ad76h		;ac72	cd 76 ad	. v .
	ld a,(iy+016h)		;ac75	fd 7e 16	. ~ .
	sub (iy+005h)		;ac78	fd 96 05	. . .
	inc a			;ac7b	3c		<
	inc a			;ac7c	3c		<
	ld (ix+012h),a		;ac7d	dd 77 12	. w .
	call sub_abddh		;ac80	cd dd ab	. . .
	call sub_ad76h		;ac83	cd 76 ad	. v .
	ld a,(iy+005h)		;ac86	fd 7e 05	. ~ .
	inc a			;ac89	3c		<
	ld (ix+012h),a		;ac8a	dd 77 12	. w .
	ld a,(iy+00eh)		;ac8d	fd 7e 0e	. ~ .
	add a,(iy+012h)		;ac90	fd 86 12	. . .
	sub (iy+005h)		;ac93	fd 96 05	. . .
	dec a			;ac96	3d		=
	ld (ix+00eh),a		;ac97	dd 77 0e	. w .
	ld l,(iy+004h)		;ac9a	fd 6e 04	. n .
	ld h,0ffh		;ac9d	26 ff		& .
	ld (ix+005h),h		;ac9f	dd 74 05	. t .
	ld (ix+004h),l		;aca2	dd 75 04	. u .
	call sub_abddh		;aca5	cd dd ab	. . .
	push iy			;aca8	fd e5		. .
	pop ix			;acaa	dd e1		. .
	ret			;acac	c9		.
lacadh:
	push ix			;acad	dd e5		. .
	pop iy			;acaf	fd e1		. .
	call sub_ad76h		;acb1	cd 76 ad	. v .
	ld a,(iy+016h)		;acb4	fd 7e 16	. ~ .
	sub (iy+005h)		;acb7	fd 96 05	. . .
	inc a			;acba	3c		<
	inc a			;acbb	3c		<
	ld (ix+012h),a		;acbc	dd 77 12	. w .
	ld a,(iy+017h)		;acbf	fd 7e 17	. ~ .
	sub (iy+007h)		;acc2	fd 96 07	. . .
	inc a			;acc5	3c		<
	inc a			;acc6	3c		<
	ld (ix+013h),a		;acc7	dd 77 13	. w .
	call sub_abddh		;acca	cd dd ab	. . .
	call sub_ad76h		;accd	cd 76 ad	. v .
	ld a,(iy+016h)		;acd0	fd 7e 16	. ~ .
	sub (iy+005h)		;acd3	fd 96 05	. . .
	inc a			;acd6	3c		<
	inc a			;acd7	3c		<
	ld (ix+012h),a		;acd8	dd 77 12	. w .
	ld a,(iy+007h)		;acdb	fd 7e 07	. ~ .
	inc a			;acde	3c		<
	ld (ix+013h),a		;acdf	dd 77 13	. w .
	ld a,(iy+00fh)		;ace2	fd 7e 0f	. ~ .
	add a,(iy+013h)		;ace5	fd 86 13	. . .
	sub (iy+007h)		;ace8	fd 96 07	. . .
	dec a			;aceb	3d		=
	ld (ix+00fh),a		;acec	dd 77 0f	. w .
	ld l,(iy+006h)		;acef	fd 6e 06	. n .
	ld h,0ffh		;acf2	26 ff		& .
	ld (ix+007h),h		;acf4	dd 74 07	. t .
	ld (ix+006h),l		;acf7	dd 75 06	. u .
	call sub_abddh		;acfa	cd dd ab	. . .
	call sub_ad76h		;acfd	cd 76 ad	. v .
	ld a,(iy+005h)		;ad00	fd 7e 05	. ~ .
	inc a			;ad03	3c		<
	ld (ix+012h),a		;ad04	dd 77 12	. w .
	ld a,(iy+00eh)		;ad07	fd 7e 0e	. ~ .
	add a,(iy+012h)		;ad0a	fd 86 12	. . .
	sub (iy+005h)		;ad0d	fd 96 05	. . .
	dec a			;ad10	3d		=
	ld (ix+00eh),a		;ad11	dd 77 0e	. w .
	ld l,(iy+004h)		;ad14	fd 6e 04	. n .
	ld h,0ffh		;ad17	26 ff		& .
	ld (ix+005h),h		;ad19	dd 74 05	. t .
	ld (ix+004h),l		;ad1c	dd 75 04	. u .
	ld a,(iy+017h)		;ad1f	fd 7e 17	. ~ .
	sub (iy+007h)		;ad22	fd 96 07	. . .
	inc a			;ad25	3c		<
	inc a			;ad26	3c		<
	ld (ix+013h),a		;ad27	dd 77 13	. w .
	call sub_abddh		;ad2a	cd dd ab	. . .
	call sub_ad76h		;ad2d	cd 76 ad	. v .
	ld a,(iy+005h)		;ad30	fd 7e 05	. ~ .
	inc a			;ad33	3c		<
	ld (ix+012h),a		;ad34	dd 77 12	. w .
	ld a,(iy+00eh)		;ad37	fd 7e 0e	. ~ .
	add a,(iy+012h)		;ad3a	fd 86 12	. . .
	sub (iy+005h)		;ad3d	fd 96 05	. . .
	dec a			;ad40	3d		=
	ld (ix+00eh),a		;ad41	dd 77 0e	. w .
	ld l,(iy+004h)		;ad44	fd 6e 04	. n .
	ld h,0ffh		;ad47	26 ff		& .
	ld (ix+005h),h		;ad49	dd 74 05	. t .
	ld (ix+004h),l		;ad4c	dd 75 04	. u .
	ld a,(iy+007h)		;ad4f	fd 7e 07	. ~ .
	inc a			;ad52	3c		<
	ld (ix+013h),a		;ad53	dd 77 13	. w .
	ld a,(iy+00fh)		;ad56	fd 7e 0f	. ~ .
	add a,(iy+013h)		;ad59	fd 86 13	. . .
	sub (iy+007h)		;ad5c	fd 96 07	. . .
	dec a			;ad5f	3d		=
	ld (ix+00fh),a		;ad60	dd 77 0f	. w .
	ld l,(iy+006h)		;ad63	fd 6e 06	. n .
	ld h,0ffh		;ad66	26 ff		& .
	ld (ix+007h),h		;ad68	dd 74 07	. t .
	ld (ix+006h),l		;ad6b	dd 75 06	. u .
	call sub_abddh		;ad6e	cd dd ab	. . .
	push iy			;ad71	fd e5		. .
	pop ix			;ad73	dd e1		. .
	ret			;ad75	c9		.
sub_ad76h:
	push iy			;ad76	fd e5		. .
	pop hl			;ad78	e1		.
	ld ix,0e0c0h		;ad79	dd 21 c0 e0	. ! . .
	ld de,0e0c0h		;ad7d	11 c0 e0	. . .
	ld bc,00020h		;ad80	01 20 00	.   .
	ldir			;ad83	ed b0		. .
	ret			;ad85	c9		.
lad86h:
	push de			;ad86	d5		.
	push af			;ad87	f5		.
	ld a,b			;ad88	78		x
	add a,a			;ad89	87		.
	add a,a			;ad8a	87		.
	add a,a			;ad8b	87		.
	ld b,a			;ad8c	47		G
	ld a,c			;ad8d	79		y
	add a,a			;ad8e	87		.
	add a,a			;ad8f	87		.
	add a,a			;ad90	87		.
	ld c,a			;ad91	4f		O
	ld a,l			;ad92	7d		}
	ld d,a			;ad93	57		W
	add a,a			;ad94	87		.
	add a,a			;ad95	87		.
	add a,a			;ad96	87		.
	ld l,a			;ad97	6f		o
	ld a,d			;ad98	7a		z
	and 060h		;ad99	e6 60		. `
	add a,a			;ad9b	87		.
	push af			;ad9c	f5		.
	ld a,h			;ad9d	7c		|
	add a,a			;ad9e	87		.
	add a,a			;ad9f	87		.
	add a,a			;ada0	87		.
	ld h,a			;ada1	67		g
	pop af			;ada2	f1		.
	pop de			;ada3	d1		.
	bit 6,d			;ada4	cb 72		. r
	jr nz,ladbeh		;ada6	20 16		  .
	rlc d			;ada8	cb 02		. .
	rlc d			;adaa	cb 02		. .
	rlc d			;adac	cb 02		. .
	rlc d			;adae	cb 02		. .
	or d			;adb0	b2		.
	pop de			;adb1	d1		.
	push ix			;adb2	dd e5		. .
	push iy			;adb4	fd e5		. .
	call 0487ch		;adb6	cd 7c 48	. | H
	pop iy			;adb9	fd e1		. .
	pop ix			;adbb	dd e1		. .
	ret			;adbd	c9		.
ladbeh:
	or d			;adbe	b2		.
	rlca			;adbf	07		.
	rlca			;adc0	07		.
	and 00fh		;adc1	e6 0f		. .
	pop de			;adc3	d1		.
	push ix			;adc4	dd e5		. .
	push iy			;adc6	fd e5		. .
	call 04838h		;adc8	cd 38 48	. 8 H
	pop iy			;adcb	fd e1		. .
	pop ix			;adcd	dd e1		. .
	ret			;adcf	c9		.
sub_add0h:
	ld a,(ix+003h)		;add0	dd 7e 03	. ~ .
	and 007h		;add3	e6 07		. .
	ld h,a			;add5	67		g
	ld a,(ix+004h)		;add6	dd 7e 04	. ~ .
	ld d,a			;add9	57		W
	and 01fh		;adda	e6 1f		. .
	ld e,a			;addc	5f		_
	xor d			;addd	aa		.
	ld d,000h		;adde	16 00		. .
	ld l,a			;ade0	6f		o
	add hl,hl		;ade1	29		)
	add hl,hl		;ade2	29		)
	add hl,hl		;ade3	29		)
	add hl,de		;ade4	19		.
	add hl,hl		;ade5	29		)
	add hl,hl		;ade6	29		)
	ld de,06000h		;ade7	11 00 60	. . `
	add hl,de		;adea	19		.
	ex de,hl		;adeb	eb		.
	ld h,(ix+002h)		;adec	dd 66 02	. f .
	ld l,(ix+001h)		;adef	dd 6e 01	. n .
	ld a,(ix+000h)		;adf2	dd 7e 00	. ~ .
	and 01fh		;adf5	e6 1f		. .
	call sub_ae07h		;adf7	cd 07 ae	. . .
	ld a,c			;adfa	79		y
	call 04c0eh		;adfb	cd 0e 4c	. . L
	ld a,(ix+005h)		;adfe	dd 7e 05	. ~ .
	sub (ix+004h)		;ae01	dd 96 04	. . .
	inc a			;ae04	3c		<
	ld b,a			;ae05	47		G
	ret			;ae06	c9		.
sub_ae07h:
	ld c,a			;ae07	4f		O
	ld a,h			;ae08	7c		|
	add a,020h		;ae09	c6 20		.  
	ld h,a			;ae0b	67		g
lae0ch:
	cp 080h			;ae0c	fe 80		. .
	ret c			;ae0e	d8		.
	sub 020h		;ae0f	d6 20		.  
	ld h,a			;ae11	67		g
	inc c			;ae12	0c		.
	jr lae0ch		;ae13	18 f7		. .
sub_ae15h:
	call 047d2h		;ae15	cd d2 47	. . G
lae18h:
	ld a,(ix+000h)		;ae18	dd 7e 00	. ~ .
	or a			;ae1b	b7		.
	ret z			;ae1c	c8		.
	call sub_ae27h		;ae1d	cd 27 ae	. ' .
	ld de,00006h		;ae20	11 06 00	. . .
	add ix,de		;ae23	dd 19		. .
	jr lae18h		;ae25	18 f1		. .
sub_ae27h:
	ld a,(ix+000h)		;ae27	dd 7e 00	. ~ .
	and 007h		;ae2a	e6 07		. .
	ret z			;ae2c	c8		.
	dec a			;ae2d	3d		=
	dec a			;ae2e	3d		=
	jr z,lae4fh		;ae2f	28 1e		( .
	dec a			;ae31	3d		=
	jp z,lae66h		;ae32	ca 66 ae	. f .
	jp p,lae7dh		;ae35	f2 7d ae	. } .
	ld b,001h		;ae38	06 01		. .
	call sub_ae8ch		;ae3a	cd 8c ae	. . .
	ld de,00002h		;ae3d	11 02 00	. . .
	add ix,de		;ae40	dd 19		. .
	call sub_add0h		;ae42	cd d0 ad	. . .
	bit 7,(ix+000h)		;ae45	dd cb 00 7e	. . . ~
	jp nz,laf24h		;ae49	c2 24 af	. $ .
	jp laf0eh		;ae4c	c3 0e af	. . .
lae4fh:
	ld b,002h		;ae4f	06 02		. .
	call sub_ae8ch		;ae51	cd 8c ae	. . .
	ld de,00003h		;ae54	11 03 00	. . .
	add ix,de		;ae57	dd 19		. .
	call sub_add0h		;ae59	cd d0 ad	. . .
	bit 7,(ix+000h)		;ae5c	dd cb 00 7e	. . . ~
	jp nz,laf7dh		;ae60	c2 7d af	. } .
	jp laf67h		;ae63	c3 67 af	. g .
lae66h:
	ld b,004h		;ae66	06 04		. .
	call sub_ae8ch		;ae68	cd 8c ae	. . .
	ld de,00005h		;ae6b	11 05 00	. . .
	add ix,de		;ae6e	dd 19		. .
	call sub_add0h		;ae70	cd d0 ad	. . .
	bit 7,(ix+000h)		;ae73	dd cb 00 7e	. . . ~
	jp nz,lafdeh		;ae77	c2 de af	. . .
	jp lafc8h		;ae7a	c3 c8 af	. . .
lae7dh:
	inc ix			;ae7d	dd 23		. #
	call sub_add0h		;ae7f	cd d0 ad	. . .
	bit 7,(ix+000h)		;ae82	dd cb 00 7e	. . . ~
	jp nz,lb058h		;ae86	c2 58 b0	. X .
	jp 0493dh		;ae89	c3 3d 49	. = I
sub_ae8ch:
	push ix			;ae8c	dd e5		. .
	pop hl			;ae8e	e1		.
	inc hl			;ae8f	23		#
	ld de,0ca00h		;ae90	11 00 ca	. . .
lae93h:
	ld a,(hl)		;ae93	7e		~
	ld c,a			;ae94	4f		O
	rrca			;ae95	0f		.
	rrca			;ae96	0f		.
	rrca			;ae97	0f		.
	rrca			;ae98	0f		.
	and 00fh		;ae99	e6 0f		. .
	ld (de),a		;ae9b	12		.
	inc hl			;ae9c	23		#
	inc de			;ae9d	13		.
	ld a,c			;ae9e	79		y
	and 00fh		;ae9f	e6 0f		. .
	ld (de),a		;aea1	12		.
	inc de			;aea2	13		.
	djnz lae93h		;aea3	10 ee		. .
	ret			;aea5	c9		.
sub_aea6h:
	call 04c0eh		;aea6	cd 0e 4c	. . L
	ld de,02000h		;aea9	11 00 20	. .  
	add hl,de		;aeac	19		.
	ld de,00040h		;aead	11 40 00	. @ .
laeb0h:
	ld c,(hl)		;aeb0	4e		N
	inc hl			;aeb1	23		#
	ld b,(hl)		;aeb2	46		F
	inc hl			;aeb3	23		#
	ld a,b			;aeb4	78		x
	and c			;aeb5	a1		.
	inc a			;aeb6	3c		<
	ret z			;aeb7	c8		.
	inc a			;aeb8	3c		<
	jr z,laec2h		;aeb9	28 07		( .
	push hl			;aebb	e5		.
	push de			;aebc	d5		.
	call sub_aeceh		;aebd	cd ce ae	. . .
	pop de			;aec0	d1		.
	pop hl			;aec1	e1		.
laec2h:
	ld a,d			;aec2	7a		z
	inc a			;aec3	3c		<
	ld d,a			;aec4	57		W
	cp 020h			;aec5	fe 20		.  
	jr nz,laeb0h		;aec7	20 e7		  .
	ld d,000h		;aec9	16 00		. .
	inc e			;aecb	1c		.
	jr laeb0h		;aecc	18 e2		. .
sub_aeceh:
	push de			;aece	d5		.
	call sub_aed7h		;aecf	cd d7 ae	. . .
	pop de			;aed2	d1		.
	call sub_aef0h		;aed3	cd f0 ae	. . .
	ret			;aed6	c9		.
sub_aed7h:
	ld a,c			;aed7	79		y
	ld h,a			;aed8	67		g
	and 0e0h		;aed9	e6 e0		. .
	rr b			;aedb	cb 18		. .
	rra			;aedd	1f		.
	rr b			;aede	cb 18		. .
	rra			;aee0	1f		.
	rr b			;aee1	cb 18		. .
	rra			;aee3	1f		.
	rrca			;aee4	0f		.
	rrca			;aee5	0f		.
	and 03fh		;aee6	e6 3f		. ?
	add a,018h		;aee8	c6 18		. .
	ld l,a			;aeea	6f		o
	ld a,h			;aeeb	7c		|
	and 01fh		;aeec	e6 1f		. .
	ld h,a			;aeee	67		g
	ret			;aeef	c9		.
sub_aef0h:
	push hl			;aef0	e5		.
	ld a,e			;aef1	7b		{
	ld h,a			;aef2	67		g
	add a,a			;aef3	87		.
	add a,a			;aef4	87		.
	add a,a			;aef5	87		.
	ld e,a			;aef6	5f		_
	ld a,h			;aef7	7c		|
	and 060h		;aef8	e6 60		. `
	rlca			;aefa	07		.
	rlca			;aefb	07		.
	rlca			;aefc	07		.
	res 7,a			;aefd	cb bf		. .
	push af			;aeff	f5		.
	ld a,d			;af00	7a		z
	add a,a			;af01	87		.
	add a,a			;af02	87		.
	add a,a			;af03	87		.
	ld d,a			;af04	57		W
	pop af			;af05	f1		.
	pop hl			;af06	e1		.
	ld bc,00101h		;af07	01 01 01	. . .
	call lad86h		;af0a	cd 86 ad	. . .
	ret			;af0d	c9		.
laf0eh:
	push bc			;af0e	c5		.
	push de			;af0f	d5		.
	exx			;af10	d9		.
	ld hl,0cb00h		;af11	21 00 cb	! . .
	exx			;af14	d9		.
laf15h:
	push bc			;af15	c5		.
	call sub_af3ah		;af16	cd 3a af	. : .
	pop bc			;af19	c1		.
	djnz laf15h		;af1a	10 f9		. .
	pop de			;af1c	d1		.
	pop bc			;af1d	c1		.
	ld hl,0cb00h		;af1e	21 00 cb	! . .
	jp 0493dh		;af21	c3 3d 49	. = I
laf24h:
	push bc			;af24	c5		.
	push de			;af25	d5		.
	exx			;af26	d9		.
	ld hl,0cb00h		;af27	21 00 cb	! . .
	exx			;af2a	d9		.
laf2bh:
	push bc			;af2b	c5		.
	call sub_af3ah		;af2c	cd 3a af	. : .
	pop bc			;af2f	c1		.
	djnz laf2bh		;af30	10 f9		. .
	pop de			;af32	d1		.
	pop bc			;af33	c1		.
	ld hl,0cb00h		;af34	21 00 cb	! . .
	jp lb058h		;af37	c3 58 b0	. X .
sub_af3ah:
	ld b,008h		;af3a	06 08		. .
laf3ch:
	ld e,(hl)		;af3c	5e		^
	inc hl			;af3d	23		#
	push bc			;af3e	c5		.
	call sub_af46h		;af3f	cd 46 af	. F .
	pop bc			;af42	c1		.
	djnz laf3ch		;af43	10 f7		. .
	ret			;af45	c9		.
sub_af46h:
	ld b,004h		;af46	06 04		. .
laf48h:
	xor a			;af48	af		.
	rl e			;af49	cb 13		. .
	rla			;af4b	17		.
	exx			;af4c	d9		.
	ld e,a			;af4d	5f		_
	ld d,0cah		;af4e	16 ca		. .
	ld a,(de)		;af50	1a		.
	add a,a			;af51	87		.
	add a,a			;af52	87		.
	add a,a			;af53	87		.
	add a,a			;af54	87		.
	ld c,a			;af55	4f		O
	exx			;af56	d9		.
	xor a			;af57	af		.
	rl e			;af58	cb 13		. .
	rla			;af5a	17		.
	exx			;af5b	d9		.
	ld e,a			;af5c	5f		_
	ld d,0cah		;af5d	16 ca		. .
	ld a,(de)		;af5f	1a		.
	or c			;af60	b1		.
	ld (hl),a		;af61	77		w
	inc hl			;af62	23		#
	exx			;af63	d9		.
	djnz laf48h		;af64	10 e2		. .
	ret			;af66	c9		.
laf67h:
	push bc			;af67	c5		.
	push de			;af68	d5		.
	exx			;af69	d9		.
	ld hl,0cb00h		;af6a	21 00 cb	! . .
	exx			;af6d	d9		.
laf6eh:
	push bc			;af6e	c5		.
	call sub_af93h		;af6f	cd 93 af	. . .
	pop bc			;af72	c1		.
	djnz laf6eh		;af73	10 f9		. .
	pop de			;af75	d1		.
	pop bc			;af76	c1		.
	ld hl,0cb00h		;af77	21 00 cb	! . .
	jp 0493dh		;af7a	c3 3d 49	. = I
laf7dh:
	push bc			;af7d	c5		.
	push de			;af7e	d5		.
	exx			;af7f	d9		.
	ld hl,0cb00h		;af80	21 00 cb	! . .
	exx			;af83	d9		.
laf84h:
	push bc			;af84	c5		.
	call sub_af93h		;af85	cd 93 af	. . .
	pop bc			;af88	c1		.
	djnz laf84h		;af89	10 f9		. .
	pop de			;af8b	d1		.
	pop bc			;af8c	c1		.
	ld hl,0cb00h		;af8d	21 00 cb	! . .
	jp lb058h		;af90	c3 58 b0	. X .
sub_af93h:
	ld b,008h		;af93	06 08		. .
laf95h:
	push bc			;af95	c5		.
	call sub_af9dh		;af96	cd 9d af	. . .
	pop bc			;af99	c1		.
	djnz laf95h		;af9a	10 f9		. .
	ret			;af9c	c9		.
sub_af9dh:
	ld b,004h		;af9d	06 04		. .
	ld e,(hl)		;af9f	5e		^
	inc hl			;afa0	23		#
	ld d,(hl)		;afa1	56		V
	inc hl			;afa2	23		#
lafa3h:
	xor a			;afa3	af		.
	rl d			;afa4	cb 12		. .
	rla			;afa6	17		.
	rl e			;afa7	cb 13		. .
	rla			;afa9	17		.
	exx			;afaa	d9		.
	ld e,a			;afab	5f		_
	ld d,0cah		;afac	16 ca		. .
	ld a,(de)		;afae	1a		.
	add a,a			;afaf	87		.
	add a,a			;afb0	87		.
	add a,a			;afb1	87		.
	add a,a			;afb2	87		.
	ld c,a			;afb3	4f		O
	exx			;afb4	d9		.
	xor a			;afb5	af		.
	rl d			;afb6	cb 12		. .
	rla			;afb8	17		.
	rl e			;afb9	cb 13		. .
	rla			;afbb	17		.
	exx			;afbc	d9		.
	ld e,a			;afbd	5f		_
	ld d,0cah		;afbe	16 ca		. .
	ld a,(de)		;afc0	1a		.
	or c			;afc1	b1		.
	ld (hl),a		;afc2	77		w
	inc hl			;afc3	23		#
	exx			;afc4	d9		.
	djnz lafa3h		;afc5	10 dc		. .
	ret			;afc7	c9		.
lafc8h:
	push bc			;afc8	c5		.
	push de			;afc9	d5		.
	exx			;afca	d9		.
	ld hl,0cb00h		;afcb	21 00 cb	! . .
	exx			;afce	d9		.
lafcfh:
	push bc			;afcf	c5		.
	call sub_aff4h		;afd0	cd f4 af	. . .
	pop bc			;afd3	c1		.
	djnz lafcfh		;afd4	10 f9		. .
	pop de			;afd6	d1		.
	pop bc			;afd7	c1		.
	ld hl,0cb00h		;afd8	21 00 cb	! . .
	jp 0493dh		;afdb	c3 3d 49	. = I
lafdeh:
	push bc			;afde	c5		.
	push de			;afdf	d5		.
	exx			;afe0	d9		.
	ld hl,0cb00h		;afe1	21 00 cb	! . .
	exx			;afe4	d9		.
lafe5h:
	push bc			;afe5	c5		.
	call sub_aff4h		;afe6	cd f4 af	. . .
	pop bc			;afe9	c1		.
	djnz lafe5h		;afea	10 f9		. .
	pop de			;afec	d1		.
	pop bc			;afed	c1		.
	ld hl,0cb00h		;afee	21 00 cb	! . .
	jp lb058h		;aff1	c3 58 b0	. X .
sub_aff4h:
	ld b,008h		;aff4	06 08		. .
laff6h:
	push bc			;aff6	c5		.
	call sub_affeh		;aff7	cd fe af	. . .
	pop bc			;affa	c1		.
	djnz laff6h		;affb	10 f9		. .
	ret			;affd	c9		.
sub_affeh:
	ld b,004h		;affe	06 04		. .
	ld e,(hl)		;b000	5e		^
	inc hl			;b001	23		#
	ld d,(hl)		;b002	56		V
	inc hl			;b003	23		#
	ld c,(hl)		;b004	4e		N
	inc hl			;b005	23		#
lb006h:
	xor a			;b006	af		.
	rl c			;b007	cb 11		. .
	rla			;b009	17		.
	rl d			;b00a	cb 12		. .
	rla			;b00c	17		.
	rl e			;b00d	cb 13		. .
	rla			;b00f	17		.
	exx			;b010	d9		.
	ld e,a			;b011	5f		_
	ld d,0cah		;b012	16 ca		. .
	ld a,(de)		;b014	1a		.
	add a,a			;b015	87		.
	add a,a			;b016	87		.
	add a,a			;b017	87		.
	add a,a			;b018	87		.
	ld c,a			;b019	4f		O
	exx			;b01a	d9		.
	xor a			;b01b	af		.
	rl c			;b01c	cb 11		. .
	rla			;b01e	17		.
	rl d			;b01f	cb 12		. .
	rla			;b021	17		.
	rl e			;b022	cb 13		. .
	rla			;b024	17		.
	exx			;b025	d9		.
	ld e,a			;b026	5f		_
	ld d,0cah		;b027	16 ca		. .
	ld a,(de)		;b029	1a		.
	or c			;b02a	b1		.
	ld (hl),a		;b02b	77		w
	inc hl			;b02c	23		#
	exx			;b02d	d9		.
	djnz lb006h		;b02e	10 d6		. .
	ret			;b030	c9		.
sub_b031h:
	push de			;b031	d5		.
	ld a,(00007h)		;b032	3a 07 00	: . .
	ld c,a			;b035	4f		O
	ld b,008h		;b036	06 08		. .
lb038h:
	push bc			;b038	c5		.
	ex de,hl		;b039	eb		.
	xor a			;b03a	af		.
	call 046f0h		;b03b	cd f0 46	. . F
	ex de,hl		;b03e	eb		.
	ld b,004h		;b03f	06 04		. .
lb041h:
	ld a,(hl)		;b041	7e		~
	dec hl			;b042	2b		+
	rrca			;b043	0f		.
	rrca			;b044	0f		.
	rrca			;b045	0f		.
	rrca			;b046	0f		.
	out (c),a		;b047	ed 79		. y
	djnz lb041h		;b049	10 f6		. .
	ld c,008h		;b04b	0e 08		. .
	add hl,bc		;b04d	09		.
	ex de,hl		;b04e	eb		.
	ld c,080h		;b04f	0e 80		. .
	add hl,bc		;b051	09		.
	ex de,hl		;b052	eb		.
	pop bc			;b053	c1		.
	djnz lb038h		;b054	10 e2		. .
	pop de			;b056	d1		.
	ret			;b057	c9		.
lb058h:
	inc hl			;b058	23		#
	inc hl			;b059	23		#
	inc hl			;b05a	23		#
lb05bh:
	push bc			;b05b	c5		.
	call sub_b031h		;b05c	cd 31 b0	. 1 .
	ld a,004h		;b05f	3e 04		> .
	add a,e			;b061	83		.
	cp 080h			;b062	fe 80		. .
	jr nz,lb06bh		;b064	20 05		  .
	ld a,004h		;b066	3e 04		> .
	add a,d			;b068	82		.
	ld d,a			;b069	57		W
	xor a			;b06a	af		.
lb06bh:
	ld e,a			;b06b	5f		_
	pop bc			;b06c	c1		.
	djnz lb05bh		;b06d	10 ec		. .
	ret			;b06f	c9		.
lb070h:
	rst 38h			;b070	ff		.
	rst 38h			;b071	ff		.
	rst 38h			;b072	ff		.
	rst 38h			;b073	ff		.
	nop			;b074	00		.
	nop			;b075	00		.
	nop			;b076	00		.
	nop			;b077	00		.
lb078h:
	ld bc,00100h		;b078	01 00 01	. . .
	nop			;b07b	00		.
lb07ch:
	ld (bc),a		;b07c	02		.
	nop			;b07d	00		.
	ld (bc),a		;b07e	02		.
	nop			;b07f	00		.
	inc bc			;b080	03		.
	nop			;b081	00		.
	inc bc			;b082	03		.
	nop			;b083	00		.
	inc b			;b084	04		.
	nop			;b085	00		.
	inc b			;b086	04		.
	nop			;b087	00		.
lb088h:
	dec b			;b088	05		.
	nop			;b089	00		.
	dec b			;b08a	05		.
	nop			;b08b	00		.
lb08ch:
	ld b,000h		;b08c	06 00		. .
	ld b,000h		;b08e	06 00		. .
	rlca			;b090	07		.
	nop			;b091	00		.
	rlca			;b092	07		.
	nop			;b093	00		.
lb094h:
	ex af,af'		;b094	08		.
	nop			;b095	00		.
	ex af,af'		;b096	08		.
	nop			;b097	00		.
lb098h:
	add hl,bc		;b098	09		.
	nop			;b099	00		.
	add hl,bc		;b09a	09		.
	nop			;b09b	00		.
lb09ch:
	ld a,(bc)		;b09c	0a		.
	nop			;b09d	00		.
	ld a,(bc)		;b09e	0a		.
	nop			;b09f	00		.
	nop			;b0a0	00		.
	ld bc,00201h		;b0a1	01 01 02	. . .
lb0a4h:
	nop			;b0a4	00		.
	inc bc			;b0a5	03		.
	ld bc,00004h		;b0a6	01 04 00	. . .
	dec b			;b0a9	05		.
	ld bc,00006h		;b0aa	01 06 00	. . .
	rlca			;b0ad	07		.
	ld bc,00008h		;b0ae	01 08 00	. . .
	add hl,bc		;b0b1	09		.
	ld bc,0000ah		;b0b2	01 0a 00	. . .
	dec bc			;b0b5	0b		.
	nop			;b0b6	00		.
	inc c			;b0b7	0c		.
lb0b8h:
	ld bc,0010bh		;b0b8	01 0b 01	. . .
	inc c			;b0bb	0c		.
lb0bch:
	nop			;b0bc	00		.
	dec c			;b0bd	0d		.
	ld bc,0000eh		;b0be	01 0e 00	. . .
	rrca			;b0c1	0f		.
	nop			;b0c2	00		.
	djnz lb0dah		;b0c3	10 15		. .
	dec h			;b0c5	25		%
	rra			;b0c6	1f		.
	ccf			;b0c7	3f		?
	dec d			;b0c8	15		.
	jr nz,lb0eah		;b0c9	20 1f		  .
	add hl,hl		;b0cb	29		)
lb0cch:
	ld d,004h		;b0cc	16 04		. .
	rra			;b0ce	1f		.
	inc c			;b0cf	0c		.
lb0d0h:
	ld d,001h		;b0d0	16 01		. .
	ld a,(de)		;b0d2	1a		.
	inc bc			;b0d3	03		.
	inc e			;b0d4	1c		.
	nop			;b0d5	00		.
	ld e,003h		;b0d6	1e 03		. .
lb0d8h:
	dec d			;b0d8	15		.
	add hl,de		;b0d9	19		.
lb0dah:
	add hl,de		;b0da	19		.
	dec de			;b0db	1b		.
	dec d			;b0dc	15		.
	inc e			;b0dd	1c		.
	inc e			;b0de	1c		.
	ld e,01ah		;b0df	1e 1a		. .
	ld a,(de)		;b0e1	1a		.
	inc e			;b0e2	1c		.
	dec de			;b0e3	1b		.
	dec e			;b0e4	1d		.
	inc e			;b0e5	1c		.
	rra			;b0e6	1f		.
	ld e,01dh		;b0e7	1e 1d		. .
	ld a,(de)		;b0e9	1a		.
lb0eah:
	ld e,01bh		;b0ea	1e 1b		. .
lb0ech:
	rra			;b0ec	1f		.
	dec de			;b0ed	1b		.
	rra			;b0ee	1f		.
	dec de			;b0ef	1b		.
lb0f0h:
	ld (bc),a		;b0f0	02		.
	ld bc,00c15h		;b0f1	01 15 0c	. . .
lb0f4h:
	ld (bc),a		;b0f4	02		.
	dec c			;b0f5	0d		.
	dec d			;b0f6	15		.
	jr lb10fh		;b0f7	18 16		. .
	dec c			;b0f9	0d		.
	rra			;b0fa	1f		.
	jr lb0feh		;b0fb	18 01		. .
	add hl,de		;b0fd	19		.
lb0feh:
	ld a,(bc)		;b0fe	0a		.
	rra			;b0ff	1f		.
lb100h:
	ld bc,01421h		;b100	01 21 14	. ! .
	inc l			;b103	2c		,
lb104h:
	ld c,021h		;b104	0e 21		. !
	inc d			;b106	14		.
	inc l			;b107	2c		,
lb108h:
	rlca			;b108	07		.
	ld hl,02c14h		;b109	21 14 2c	! . ,
lb10ch:
	nop			;b10c	00		.
	dec l			;b10d	2d		-
	inc de			;b10e	13		.
lb10fh:
	scf			;b10f	37		7
lb110h:
	dec bc			;b110	0b		.
	add hl,de		;b111	19		.
	inc d			;b112	14		.
	rra			;b113	1f		.
lb114h:
	nop			;b114	00		.
	jr c,lb11bh		;b115	38 04		8 .
	dec sp			;b117	3b		;
lb118h:
	dec b			;b118	05		.
	jr c,lb120h		;b119	38 05		8 .
lb11bh:
	jr c,lb122h		;b11b	38 05		8 .
	add hl,sp		;b11d	39		9
	dec b			;b11e	05		.
	add hl,sp		;b11f	39		9
lb120h:
	ld b,038h		;b120	06 38		. 8
lb122h:
	ld b,038h		;b122	06 38		. 8
lb124h:
	ld b,039h		;b124	06 39		. 9
	ld b,039h		;b126	06 39		. 9
lb128h:
	nop			;b128	00		.
	inc a			;b129	3c		<
	nop			;b12a	00		.
	inc a			;b12b	3c		<
lb12ch:
	rlca			;b12c	07		.
	jr c,$+9		;b12d	38 07		8 .
	add hl,sp		;b12f	39		9
lb130h:
	nop			;b130	00		.
	dec a			;b131	3d		=
	nop			;b132	00		.
	ccf			;b133	3f		?
lb134h:
	ld bc,0013ch		;b134	01 3c 01	. < .
	ccf			;b137	3f		?
lb138h:
	ld (bc),a		;b138	02		.
	inc a			;b139	3c		<
	inc b			;b13a	04		.
	ccf			;b13b	3f		?
lb13ch:
	ex af,af'		;b13c	08		.
	add hl,sp		;b13d	39		9
	ld a,(bc)		;b13e	0a		.
	dec sp			;b13f	3b		;
	dec b			;b140	05		.
	ld a,(03b07h)		;b141	3a 07 3b	: . ;
lb144h:
	dec b			;b144	05		.
	inc a			;b145	3c		<
	rlca			;b146	07		.
	ld a,018h		;b147	3e 18		> .
	ld (02218h),hl		;b149	22 18 22	" . "
lb14ch:
	rla			;b14c	17		.
	ld (02217h),hl		;b14d	22 17 22	" . "
lb150h:
	add hl,de		;b150	19		.
	ld hl,02119h		;b151	21 19 21	! . !
lb154h:
	add hl,de		;b154	19		.
	jr nz,lb170h		;b155	20 19		  .
	jr nz,lb171h		;b157	20 18		  .
	jr nz,$+26		;b159	20 18		  .
	ld hl,0201ah		;b15b	21 1a 20	! .  
	ld a,(de)		;b15e	1a		.
	ld hl,02017h		;b15f	21 17 20	! .  
	rla			;b162	17		.
	ld hl,02016h		;b163	21 16 20	! .  
	ld d,021h		;b166	16 21		. !
	dec d			;b168	15		.
	jr nz,$+23		;b169	20 15		  .
	ld hl,02216h		;b16b	21 16 22	! . "
	ld d,023h		;b16e	16 23		. #
lb170h:
	dec d			;b170	15		.
lb171h:
	ld (02315h),hl		;b171	22 15 23	" . #
	dec e			;b174	1d		.
	jr nz,lb194h		;b175	20 1d		  .
	jr nz,$+30		;b177	20 1c		  .
	ld (0231ch),hl		;b179	22 1c 23	" . #
	inc e			;b17c	1c		.
	jr nz,lb19bh		;b17d	20 1c		  .
	ld hl,0221dh		;b17f	21 1d 22	! . "
	dec e			;b182	1d		.
	inc hl			;b183	23		#
	ld e,021h		;b184	1e 21		. !
	ld e,022h		;b186	1e 22		. "
	rra			;b188	1f		.
	jr nz,lb1aah		;b189	20 1f		  .
	ld hl,0231eh		;b18b	21 1e 23	! . #
	rra			;b18e	1f		.
	inc h			;b18f	24		$
	rra			;b190	1f		.
	inc hl			;b191	23		#
	rra			;b192	1f		.
	inc h			;b193	24		$
lb194h:
	ld bc,01401h		;b194	01 01 14	. . .
	inc c			;b197	0c		.
lb198h:
	ld bc,0140dh		;b198	01 0d 14	. . .
lb19bh:
	jr $+24			;b19b	18 16		. .
	djnz $+33		;b19d	10 1f		. .
	dec de			;b19f	1b		.
lb1a0h:
	dec d			;b1a0	15		.
	nop			;b1a1	00		.
	inc e			;b1a2	1c		.
	rlca			;b1a3	07		.
lb1a4h:
	inc e			;b1a4	1c		.
	ex af,af'		;b1a5	08		.
	rra			;b1a6	1f		.
	dec bc			;b1a7	0b		.
	dec e			;b1a8	1d		.
	dec b			;b1a9	05		.
lb1aah:
	rra			;b1aa	1f		.
	rlca			;b1ab	07		.
	dec e			;b1ac	1d		.
	inc bc			;b1ad	03		.
	ld e,004h		;b1ae	1e 04		. .
	dec e			;b1b0	1d		.
	ld bc,0021eh		;b1b1	01 1e 02	. . .
	dec e			;b1b4	1d		.
	ld bc,0011dh		;b1b5	01 1d 01	. . .
	rra			;b1b8	1f		.
	ld bc,0011eh		;b1b9	01 1e 01	. . .
	rra			;b1bc	1f		.
	ld bc,0011fh		;b1bd	01 1f 01	. . .
lb1c0h:
	dec d			;b1c0	15		.
	ex af,af'		;b1c1	08		.
	add hl,de		;b1c2	19		.
	rrca			;b1c3	0f		.
lb1c4h:
	nop			;b1c4	00		.
	add hl,de		;b1c5	19		.
	ld b,01fh		;b1c6	06 1f		. .
lb1c8h:
	rlca			;b1c8	07		.
	add hl,de		;b1c9	19		.
	dec c			;b1ca	0d		.
	rra			;b1cb	1f		.
lb1cch:
	ld c,019h		;b1cc	0e 19		. .
	ld de,0121ch		;b1ce	11 1c 12	. . .
	add hl,de		;b1d1	19		.
	dec d			;b1d2	15		.
	inc e			;b1d3	1c		.
lb1d4h:
	ld c,01dh		;b1d4	0e 1d		. .
	rrca			;b1d6	0f		.
	ld e,010h		;b1d7	1e 10		. .
	dec e			;b1d9	1d		.
	djnz $+32		;b1da	10 1e		. .
	ld de,0131dh		;b1dc	11 1d 13	. . .
	ld e,018h		;b1df	1e 18		. .
	inc e			;b1e1	1c		.
	dec de			;b1e2	1b		.
	inc hl			;b1e3	23		#
lb1e4h:
	inc e			;b1e4	1c		.
	inc e			;b1e5	1c		.
	rra			;b1e6	1f		.
	inc hl			;b1e7	23		#
lb1e8h:
	inc d			;b1e8	14		.
	rra			;b1e9	1f		.
	rla			;b1ea	17		.
	ld h,010h		;b1eb	26 10		& .
	rra			;b1ed	1f		.
	inc de			;b1ee	13		.
	ld h,00ch		;b1ef	26 0c		& .
	jr nz,$+17		;b1f1	20 0f		  .
	daa			;b1f3	27		'
lb1f4h:
	inc b			;b1f4	04		.
	jr nz,$+13		;b1f5	20 0b		  .
	daa			;b1f7	27		'
lb1f8h:
	nop			;b1f8	00		.
	jr z,lb1ffh		;b1f9	28 04		( .
	jr z,lb1fdh		;b1fb	28 00		( .
lb1fdh:
	add hl,hl		;b1fd	29		)
	ex af,af'		;b1fe	08		.
lb1ffh:
	add hl,hl		;b1ff	29		)
lb200h:
	nop			;b200	00		.
	ld hl,(02a07h)		;b201	2a 07 2a	* . *
lb204h:
	nop			;b204	00		.
	dec hl			;b205	2b		+
	add hl,bc		;b206	09		.
	dec hl			;b207	2b		+
lb208h:
	nop			;b208	00		.
	inc l			;b209	2c		,
	ld a,(bc)		;b20a	0a		.
	inc l			;b20b	2c		,
lb20ch:
	nop			;b20c	00		.
	dec l			;b20d	2d		-
	add hl,bc		;b20e	09		.
	dec l			;b20f	2d		-
lb210h:
	nop			;b210	00		.
	ld l,00ah		;b211	2e 0a		. .
	ld l,000h		;b213	2e 00		. .
	cpl			;b215	2f		/
	rlca			;b216	07		.
	cpl			;b217	2f		/
lb218h:
	nop			;b218	00		.
	jr nc,lb221h		;b219	30 06		0 .
	jr nc,lb21dh		;b21b	30 00		0 .
lb21dh:
	ld sp,03107h		;b21d	31 07 31	1 . 1
lb220h:
	nop			;b220	00		.
lb221h:
	ld (03207h),a		;b221	32 07 32	2 . 2
lb224h:
	nop			;b224	00		.
	inc sp			;b225	33		3
	ld b,033h		;b226	06 33		. 3
lb228h:
	nop			;b228	00		.
	inc (hl)		;b229	34		4
	add hl,bc		;b22a	09		.
	inc (hl)		;b22b	34		4
lb22ch:
	nop			;b22c	00		.
	dec (hl)		;b22d	35		5
	ld b,035h		;b22e	06 35		. 5
lb230h:
	nop			;b230	00		.
	ld (hl),007h		;b231	36 07		6 .
	ld (hl),000h		;b233	36 00		6 .
	scf			;b235	37		7
	rrca			;b236	0f		.
	scf			;b237	37		7
lb238h:
	nop			;b238	00		.
	jr c,$+10		;b239	38 08		8 .
	jr c,lb23dh		;b23b	38 00		8 .
lb23dh:
	add hl,sp		;b23d	39		9
	rlca			;b23e	07		.
	add hl,sp		;b23f	39		9
lb240h:
	nop			;b240	00		.
	ld a,(03a08h)		;b241	3a 08 3a	: . :
lb244h:
	nop			;b244	00		.
	dec sp			;b245	3b		;
	ld bc,0003bh		;b246	01 3b 00	. ; .
	inc a			;b249	3c		<
	dec b			;b24a	05		.
	inc a			;b24b	3c		<
	nop			;b24c	00		.
	dec a			;b24d	3d		=
	inc c			;b24e	0c		.
	dec a			;b24f	3d		=
	ex af,af'		;b250	08		.
	jr c,lb267h		;b251	38 14		8 .
	jr c,lb255h		;b253	38 00		8 .
lb255h:
	jr nz,lb266h		;b255	20 0f		  .
	jr nz,$+10		;b257	20 08		  .
	inc a			;b259	3c		<
	ld de,0053ch		;b25a	11 3c 05	. < .
	ccf			;b25d	3f		?
	inc d			;b25e	14		.
	ccf			;b25f	3f		?
lb260h:
	ld bc,00a0eh		;b260	01 0e 0a	. . .
	ld hl,(0048ch)		;b263	2a 8c 04	* . .
lb266h:
	xor l			;b266	ad		.
lb267h:
	xor l			;b267	ad		.
	ld bc,00a0eh		;b268	01 0e 0a	. . .
	jp nz,001bch		;b26b	c2 bc 01	. . .
	ret pe			;b26e	e8		.
	jp p,02302h		;b26f	f2 02 23	. . #
	ld b,l			;b272	45		E
	ld a,(bc)		;b273	0a		.
	ld (de),a		;b274	12		.
	ld (hl),a		;b275	77		w
	nop			;b276	00		.
	nop			;b277	00		.
	ld a,a			;b278	7f		.
	ld (bc),a		;b279	02		.
	inc hl			;b27a	23		#
	ld b,l			;b27b	45		E
	ld a,(bc)		;b27c	0a		.
	ld (bc),a		;b27d	02		.
	ld h,l			;b27e	65		e
	ld bc,0c300h		;b27f	01 00 c3	. . .
	ld (bc),a		;b282	02		.
	inc hl			;b283	23		#
	ld b,l			;b284	45		E
	ld a,(bc)		;b285	0a		.
	ld (de),a		;b286	12		.
	ld a,a			;b287	7f		.
	nop			;b288	00		.
	add a,b			;b289	80		.
	rst 38h			;b28a	ff		.
	ld (bc),a		;b28b	02		.
	ld l,b			;b28c	68		h
	rst 28h			;b28d	ef		.
	ld a,(bc)		;b28e	0a		.
	ld (de),a		;b28f	12		.
	add a,a			;b290	87		.
	ld bc,0cbc4h		;b291	01 c4 cb	. . .
	ld (bc),a		;b294	02		.
	ld h,a			;b295	67		g
	ret p			;b296	f0		.
	ld a,(bc)		;b297	0a		.
	sub d			;b298	92		.
	add a,a			;b299	87		.
	ld bc,0d7cch		;b29a	01 cc d7	. . .
	ld (bc),a		;b29d	02		.
	ld a,(bc)		;b29e	0a		.
	ret po			;b29f	e0		.
	ld a,(bc)		;b2a0	0a		.
	ld b,d			;b2a1	42		B
	cp h			;b2a2	bc		.
	inc b			;b2a3	04		.
	ret c			;b2a4	d8		.
	rst 18h			;b2a5	df		.
	ld (bc),a		;b2a6	02		.
	dec bc			;b2a7	0b		.
	call 0520ah		;b2a8	cd 0a 52	. . R
	adc a,b			;b2ab	88		.
	ld bc,0fff3h		;b2ac	01 f3 ff	. . .
	ld (bc),a		;b2af	02		.
	dec bc			;b2b0	0b		.
	call 0420ah		;b2b1	cd 0a 42	. . B
	ld (hl),c		;b2b4	71		q
	ld (bc),a		;b2b5	02		.
	nop			;b2b6	00		.
	ld de,00902h		;b2b7	11 02 09	. . .
	xor a			;b2ba	af		.
	ld a,(bc)		;b2bb	0a		.
	and d			;b2bc	a2		.
	adc a,d			;b2bd	8a		.
	inc bc			;b2be	03		.
	push de			;b2bf	d5		.
	ret pe			;b2c0	e8		.
	ld (bc),a		;b2c1	02		.
	add hl,bc		;b2c2	09		.
	xor a			;b2c3	af		.
	adc a,d			;b2c4	8a		.
	and d			;b2c5	a2		.
	adc a,d			;b2c6	8a		.
	inc bc			;b2c7	03		.
	jp (hl)			;b2c8	e9		.
	call m,00103h		;b2c9	fc 03 01	. . .
	inc hl			;b2cc	23		#
	ld b,l			;b2cd	45		E
	nop			;b2ce	00		.
	ld a,(bc)		;b2cf	0a		.
	ld h,d			;b2d0	62		b
	ld (hl),d		;b2d1	72		r
	ld (bc),a		;b2d2	02		.
	ld (de),a		;b2d3	12		.
	ld (hl),003h		;b2d4	36 03		6 .
	ld b,078h		;b2d6	06 78		. x
	rst 28h			;b2d8	ef		.
	nop			;b2d9	00		.
	ld a,(bc)		;b2da	0a		.
	jp c,00275h		;b2db	da 75 02	. u .
	scf			;b2de	37		7
	ld b,e			;b2df	43		C
	inc bc			;b2e0	03		.
	ld bc,0deach		;b2e1	01 ac de	. . .
	ret p			;b2e4	f0		.
	ld a,(bc)		;b2e5	0a		.
	jp pe,004b9h		;b2e6	ea b9 04	. . .
	ret nz			;b2e9	c0		.
	ret c			;b2ea	d8		.
	inc bc			;b2eb	03		.
	ld b,078h		;b2ec	06 78		. x
	sbc a,(hl)		;b2ee	9e		.
	ret p			;b2ef	f0		.
	ld a,(bc)		;b2f0	0a		.
	ld (00389h),hl		;b2f1	22 89 03	" . .
	nop			;b2f4	00		.
	inc bc			;b2f5	03		.
	inc bc			;b2f6	03		.
	dec bc			;b2f7	0b		.
	call 000efh		;b2f8	cd ef 00	. . .
	ld a,(bc)		;b2fb	0a		.
	add a,d			;b2fc	82		.
	adc a,c			;b2fd	89		.
	inc bc			;b2fe	03		.
	inc b			;b2ff	04		.
	inc d			;b300	14		.
	inc bc			;b301	03		.
	ld b,078h		;b302	06 78		. x
	rst 28h			;b304	ef		.
	nop			;b305	00		.
	ld a,(bc)		;b306	0a		.
	jp po,0038bh		;b307	e2 8b 03	. . .
	defb 0fdh,0ffh,003h ;illegal sequence	;b30a	fd ff 03	. . .
	ld b,078h		;b30d	06 78		. x
	rst 28h			;b30f	ef		.
	nop			;b310	00		.
	adc a,d			;b311	8a		.
	jp po,0048bh		;b312	e2 8b 04	. . .
	ld d,l			;b315	55		U
	ld d,a			;b316	57		W
	inc bc			;b317	03		.
	dec bc			;b318	0b		.
	call 000e0h		;b319	cd e0 00	. . .
	ld a,(bc)		;b31c	0a		.
	ld (0048ch),a		;b31d	32 8c 04	2 . .
	or b			;b320	b0		.
	or l			;b321	b5		.
	inc bc			;b322	03		.
	dec bc			;b323	0b		.
	call 000f0h		;b324	cd f0 00	. . .
	ld a,(bc)		;b327	0a		.
	jp nz,0048ch		;b328	c2 8c 04	. . .
	cp h			;b32b	bc		.
	cp a			;b32c	bf		.
	inc bc			;b32d	03		.
	dec bc			;b32e	0b		.
	call 000e0h		;b32f	cd e0 00	. . .
	ld a,(bc)		;b332	0a		.
	and d			;b333	a2		.
	or b			;b334	b0		.
	inc b			;b335	04		.
	or (hl)			;b336	b6		.
	cp e			;b337	bb		.
	inc bc			;b338	03		.
	ld (hl),078h		;b339	36 78		6 x
	sbc a,(hl)		;b33b	9e		.
	ret p			;b33c	f0		.
	ld a,(bc)		;b33d	0a		.
	ld (003b1h),a		;b33e	32 b1 03	2 . .
	cp e			;b341	bb		.
	call nc,00203h		;b342	d4 03 02	. . .
	ld h,a			;b345	67		g
	adc a,c			;b346	89		.
	rst 28h			;b347	ef		.
	ld a,(bc)		;b348	0a		.
	and d			;b349	a2		.
	or e			;b34a	b3		.
	inc b			;b34b	04		.
	nop			;b34c	00		.
	ld hl,(00203h)		;b34d	2a 03 02	* . .
	ld h,a			;b350	67		g
	adc a,c			;b351	89		.
	rst 28h			;b352	ef		.
	adc a,d			;b353	8a		.
	and d			;b354	a2		.
	or e			;b355	b3		.
	inc b			;b356	04		.
	ld e,b			;b357	58		X
	add a,d			;b358	82		.
	inc bc			;b359	03		.
	ld b,078h		;b35a	06 78		. x
	rst 28h			;b35c	ef		.
	nop			;b35d	00		.
	ld a,(bc)		;b35e	0a		.
	xor d			;b35f	aa		.
	or a			;b360	b7		.
	inc b			;b361	04		.
	dec a			;b362	3d		=
	ld d,h			;b363	54		T
	inc bc			;b364	03		.
	ld b,078h		;b365	06 78		. x
	rst 28h			;b367	ef		.
	nop			;b368	00		.
	adc a,d			;b369	8a		.
	xor d			;b36a	aa		.
	or a			;b36b	b7		.
	inc b			;b36c	04		.
	sub l			;b36d	95		.
	xor h			;b36e	ac		.
	inc b			;b36f	04		.
	ld a,(bc)		;b370	0a		.
	ld (0028dh),hl		;b371	22 8d 02	" . .
	add a,e			;b374	83		.
	rst 38h			;b375	ff		.
	inc b			;b376	04		.
	ld a,(bc)		;b377	0a		.
	jp nz,0039ch		;b378	c2 9c 03	. . .
	dec d			;b37b	15		.
	or e			;b37c	b3		.
	nop			;b37d	00		.
lb37eh:
	ld bc,0150fh		;b37e	01 0f 15	. . .
	ld l,h			;b381	6c		l
	ld l,d			;b382	6a		j
	nop			;b383	00		.
	adc a,c			;b384	89		.
	adc a,l			;b385	8d		.
	ld (bc),a		;b386	02		.
	ld (bc),a		;b387	02		.
	ccf			;b388	3f		?
	dec d			;b389	15		.
	call po,00068h		;b38a	e4 68 00	. h .
	ld (hl),h		;b38d	74		t
	add a,c			;b38e	81		.
	ld (bc),a		;b38f	02		.
	dec c			;b390	0d		.
	rst 28h			;b391	ef		.
	dec d			;b392	15		.
	sub h			;b393	94		.
	ld l,d			;b394	6a		j
	nop			;b395	00		.
	adc a,(hl)		;b396	8e		.
	sub l			;b397	95		.
	ld (bc),a		;b398	02		.
	inc b			;b399	04		.
	cp a			;b39a	bf		.
	dec d			;b39b	15		.
	inc d			;b39c	14		.
	ld l,e			;b39d	6b		k
	nop			;b39e	00		.
	sub (hl)		;b39f	96		.
	and c			;b3a0	a1		.
	ld (bc),a		;b3a1	02		.
	ld l,b			;b3a2	68		h
	rst 28h			;b3a3	ef		.
	ld a,(bc)		;b3a4	0a		.
	ld (de),a		;b3a5	12		.
	add a,a			;b3a6	87		.
	nop			;b3a7	00		.
	di			;b3a8	f3		.
	jp m,02302h		;b3a9	fa 02 23	. . #
	ld b,l			;b3ac	45		E
	ld a,(bc)		;b3ad	0a		.
	ld (de),a		;b3ae	12		.
	ld a,a			;b3af	7f		.
	ld bc,07f00h		;b3b0	01 00 7f	. . .
	ld (bc),a		;b3b3	02		.
	inc hl			;b3b4	23		#
	ld b,l			;b3b5	45		E
	ld a,(bc)		;b3b6	0a		.
	ld (bc),a		;b3b7	02		.
	ld h,l			;b3b8	65		e
	ld (bc),a		;b3b9	02		.
	nop			;b3ba	00		.
	jp 00103h		;b3bb	c3 03 01	. . .
	inc hl			;b3be	23		#
	ld b,l			;b3bf	45		E
	nop			;b3c0	00		.
	ld a,(bc)		;b3c1	0a		.
	ld h,d			;b3c2	62		b
	ld (hl),d		;b3c3	72		r
	nop			;b3c4	00		.
	adc a,0f2h		;b3c5	ce f2		. .
	inc bc			;b3c7	03		.
	ld bc,0cd7ah		;b3c8	01 7a cd	. z .
	rst 28h			;b3cb	ef		.
	dec d			;b3cc	15		.
	inc b			;b3cd	04		.
	ld e,(hl)		;b3ce	5e		^
	nop			;b3cf	00		.
	nop			;b3d0	00		.
	add hl,sp		;b3d1	39		9
	inc bc			;b3d2	03		.
	ld b,078h		;b3d3	06 78		. x
	cp l			;b3d5	bd		.
	rst 28h			;b3d6	ef		.
	dec d			;b3d7	15		.
	ld (hl),h		;b3d8	74		t
	ld h,e			;b3d9	63		c
	nop			;b3da	00		.
	ld a,(00352h)		;b3db	3a 52 03	: R .
	ld bc,0cd9ah		;b3de	01 9a cd	. . .
	rst 28h			;b3e1	ef		.
	dec d			;b3e2	15		.
	call z,00065h		;b3e3	cc 65 00	. e .
	ld d,e			;b3e6	53		S
	ld h,e			;b3e7	63		c
	inc bc			;b3e8	03		.
	ld b,078h		;b3e9	06 78		. x
	cp l			;b3eb	bd		.
	rst 28h			;b3ec	ef		.
	dec d			;b3ed	15		.
	ld h,h			;b3ee	64		d
	ld h,a			;b3ef	67		g
	nop			;b3f0	00		.
	ld h,h			;b3f1	64		d
	ld (hl),e		;b3f2	73		s
	inc bc			;b3f3	03		.
	ld (bc),a		;b3f4	02		.
	ld (hl),08eh		;b3f5	36 8e		6 .
	ret p			;b3f7	f0		.
	dec d			;b3f8	15		.
	call nz,00069h		;b3f9	c4 69 00	. i .
	add a,d			;b3fc	82		.
	adc a,b			;b3fd	88		.
	inc bc			;b3fe	03		.
	ld (bc),a		;b3ff	02		.
	inc (hl)		;b400	34		4
	cp h			;b401	bc		.
	rst 28h			;b402	ef		.
	dec d			;b403	15		.
	call nc,0006bh		;b404	d4 6b 00	. k .
	and d			;b407	a2		.
	call 00100h		;b408	cd 00 01	. . .
	add hl,bc		;b40b	09		.
	dec d			;b40c	15		.
	call p,0006fh		;b40d	f4 6f 00	. o .
	ld bc,00209h		;b410	01 09 02	. . .
	ld a,(bc)		;b413	0a		.
	cp h			;b414	bc		.
	dec d			;b415	15		.
	inc a			;b416	3c		<
	ld (hl),b		;b417	70		p
	nop			;b418	00		.
	ld a,(bc)		;b419	0a		.
	inc c			;b41a	0c		.
	ld (bc),a		;b41b	02		.
	dec b			;b41c	05		.
	ld a,c			;b41d	79		y
	dec d			;b41e	15		.
	ld l,h			;b41f	6c		l
	ld (hl),b		;b420	70		p
	nop			;b421	00		.
	dec c			;b422	0d		.
	ld c,002h		;b423	0e 02		. .
	inc bc			;b425	03		.
	ld c,c			;b426	49		I
	dec d			;b427	15		.
	adc a,h			;b428	8c		.
	ld (hl),b		;b429	70		p
	nop			;b42a	00		.
	rrca			;b42b	0f		.
	ld (de),a		;b42c	12		.
	ld (bc),a		;b42d	02		.
	dec bc			;b42e	0b		.
	call 0cc15h		;b42f	cd 15 cc	. . .
	ld (hl),b		;b432	70		p
	nop			;b433	00		.
	inc de			;b434	13		.
	dec hl			;b435	2b		+
	inc bc			;b436	03		.
	ld a,(bc)		;b437	0a		.
	cp h			;b438	bc		.
	sbc a,0ffh		;b439	de ff		. .
	dec d			;b43b	15		.
	ld e,h			;b43c	5c		\
	ld (hl),d		;b43d	72		r
	nop			;b43e	00		.
	inc l			;b43f	2c		,
	ld (00303h),a		;b440	32 03 03	2 . .
	ld b,l			;b443	45		E
	ld h,a			;b444	67		g
	adc a,c			;b445	89		.
	dec d			;b446	15		.
	inc b			;b447	04		.
	ld (hl),e		;b448	73		s
	nop			;b449	00		.
	inc sp			;b44a	33		3
	ld d,l			;b44b	55		U
	inc bc			;b44c	03		.
	inc b			;b44d	04		.
	ld d,(hl)		;b44e	56		V
	ld a,b			;b44f	78		x
	sbc a,a			;b450	9f		.
	dec d			;b451	15		.
	ld c,h			;b452	4c		L
	halt			;b453	76		v
	nop			;b454	00		.
	ld d,(hl)		;b455	56		V
	ld h,l			;b456	65		e
	inc bc			;b457	03		.
	inc bc			;b458	03		.
	ld d,(hl)		;b459	56		V
	ld a,b			;b45a	78		x
	sbc a,a			;b45b	9f		.
	dec d			;b45c	15		.
	call z,00077h		;b45d	cc 77 00	. w .
	ld h,(hl)		;b460	66		f
	ld l,l			;b461	6d		m
	inc bc			;b462	03		.
	inc bc			;b463	03		.
	ld b,l			;b464	45		E
	ld a,b			;b465	78		x
	sbc a,a			;b466	9f		.
	dec d			;b467	15		.
	adc a,h			;b468	8c		.
	ld a,b			;b469	78		x
	nop			;b46a	00		.
	ld l,(hl)		;b46b	6e		n
	sub c			;b46c	91		.
	inc bc			;b46d	03		.
	inc (hl)		;b46e	34		4
	ld d,(hl)		;b46f	56		V
	ld a,b			;b470	78		x
	sbc a,a			;b471	9f		.
	dec d			;b472	15		.
	call pe,0007bh		;b473	ec 7b 00	. { .
	sub d			;b476	92		.
	sbc a,a			;b477	9f		.
	inc b			;b478	04		.
	dec d			;b479	15		.
	inc a			;b47a	3c		<
	ld a,l			;b47b	7d		}
	nop			;b47c	00		.
	and b			;b47d	a0		.
	or c			;b47e	b1		.
	nop			;b47f	00		.
	nop			;b480	00		.
	ret nc			;b481	d0		.
	ld (hl),a		;b482	77		w
	rst 10h			;b483	d7		.
	ld b,h			;b484	44		D
	inc d			;b485	14		.
	jr nc,$+35		;b486	30 21		0 !
	ld b,c			;b488	41		A
	ld (04452h),a		;b489	32 52 44	2 R D
	ld h,e			;b48c	63		c
	ld d,l			;b48d	55		U
	ld bc,00262h		;b48e	01 62 02	. b .
	ld (hl),e		;b491	73		s
	inc b			;b492	04		.
	add a,l			;b493	85		.
	inc bc			;b494	03		.
	sub b			;b495	90		.
	rlca			;b496	07		.
	and b			;b497	a0		.
	ld d,b			;b498	50		P
	or b			;b499	b0		.
	ld (hl),b		;b49a	70		p
	call nz,0d770h		;b49b	c4 70 d7	. p .
	ld (hl),a		;b49e	77		w
	rst 20h			;b49f	e7		.
	nop			;b4a0	00		.
	ret p			;b4a1	f0		.
	rst 38h			;b4a2	ff		.
	djnz lb4b5h		;b4a3	10 10		. .
	jr nc,$+35		;b4a5	30 21		0 !
	ld b,c			;b4a7	41		A
	ld (04452h),a		;b4a8	32 52 44	2 R D
	ld h,e			;b4ab	63		c
	ld d,l			;b4ac	55		U
	rst 38h			;b4ad	ff		.
	ld (de),a		;b4ae	12		.
	ld h,c			;b4af	61		a
	inc hl			;b4b0	23		#
	ld (hl),d		;b4b1	72		r
	inc (hl)		;b4b2	34		4
	add a,e			;b4b3	83		.
	ld (hl),b		;b4b4	70		p
lb4b5h:
	sub b			;b4b5	90		.
	rlca			;b4b6	07		.
	and b			;b4b7	a0		.
	rst 38h			;b4b8	ff		.
	ld h,l			;b4b9	65		e
	dec d			;b4ba	15		.
	jr nc,lb4deh		;b4bb	30 21		0 !
	ld b,c			;b4bd	41		A
	ld (04452h),a		;b4be	32 52 44	2 R D
	ld h,e			;b4c1	63		c
	ld d,l			;b4c2	55		U
	ld (bc),a		;b4c3	02		.
	ld h,c			;b4c4	61		a
	dec d			;b4c5	15		.
	ld (hl),h		;b4c6	74		t
	ld (00282h),a		;b4c7	32 82 02	2 . .
	sub b			;b4ca	90		.
	ld b,0a0h		;b4cb	06 a0		. .
	ld (hl),a		;b4cd	77		w
	rst 20h			;b4ce	e7		.
	rst 38h			;b4cf	ff		.
	ld (00212h),hl		;b4d0	22 12 02	" . .
	ld h,c			;b4d3	61		a
	inc de			;b4d4	13		.
	ld (hl),d		;b4d5	72		r
	inc h			;b4d6	24		$
	add a,e			;b4d7	83		.
	ld (hl),b		;b4d8	70		p
	sub b			;b4d9	90		.
	rlca			;b4da	07		.
	and b			;b4db	a0		.
	rst 38h			;b4dc	ff		.
	inc bc			;b4dd	03		.
lb4deh:
	ld de,02000h		;b4de	11 00 20	. .  
	ld bc,00230h		;b4e1	01 30 02	. 0 .
	ld b,b			;b4e4	40		@
	inc bc			;b4e5	03		.
	ld d,c			;b4e6	51		Q
	nop			;b4e7	00		.
	ld h,b			;b4e8	60		`
	ld (bc),a		;b4e9	02		.
	ld (hl),b		;b4ea	70		p
	ld bc,00180h		;b4eb	01 80 01	. . .
	sub b			;b4ee	90		.
	ld (bc),a		;b4ef	02		.
	and b			;b4f0	a0		.
	inc d			;b4f1	14		.
	jp po,033ffh		;b4f2	e2 ff 33	. . 3
	inc de			;b4f5	13		.
	ld bc,00322h		;b4f6	01 22 03	. " .
	inc (hl)		;b4f9	34		4
	jr nc,lb53ch		;b4fa	30 40		0 @
	ld d,l			;b4fc	55		U
	ld (hl),l		;b4fd	75		u
	ld (hl),b		;b4fe	70		p
	or b			;b4ff	b0		.
	rst 38h			;b500	ff		.
	nop			;b501	00		.
	djnz lb504h		;b502	10 00		. .
lb504h:
	jr nz,lb506h		;b504	20 00		  .
lb506h:
	jr nc,lb508h		;b506	30 00		0 .
lb508h:
	ld b,b			;b508	40		@
	nop			;b509	00		.
	ld d,b			;b50a	50		P
	nop			;b50b	00		.
	ld h,b			;b50c	60		`
	nop			;b50d	00		.
	ld (hl),b		;b50e	70		p
	nop			;b50f	00		.
	add a,b			;b510	80		.
	nop			;b511	00		.
	sub b			;b512	90		.
	nop			;b513	00		.
	and b			;b514	a0		.
	nop			;b515	00		.
	or b			;b516	b0		.
	nop			;b517	00		.
	ret nz			;b518	c0		.
	nop			;b519	00		.
	ret nc			;b51a	d0		.
	nop			;b51b	00		.
	ret po			;b51c	e0		.
	nop			;b51d	00		.
	ret p			;b51e	f0		.
	rst 38h			;b51f	ff		.
lb520h:
	ex af,af'		;b520	08		.
	add a,b			;b521	80		.
	or h			;b522	b4		.
	ex af,af'		;b523	08		.
	sbc a,b			;b524	98		.
	or h			;b525	b4		.
	ex af,af'		;b526	08		.
	and e			;b527	a3		.
	or h			;b528	b4		.
	ex af,af'		;b529	08		.
	xor (hl)		;b52a	ae		.
	or h			;b52b	b4		.
	rrca			;b52c	0f		.
	ld c,d			;b52d	4a		J
	nop			;b52e	00		.
lb52fh:
	dec h			;b52f	25		%
	ld d,0b7h		;b530	16 b7		. .
	nop			;b532	00		.
	nop			;b533	00		.
	nop			;b534	00		.
	nop			;b535	00		.
	ld bc,lb586h		;b536	01 86 b5	. . .
	nop			;b539	00		.
	nop			;b53a	00		.
	rlca			;b53b	07		.
lb53ch:
	nop			;b53c	00		.
	inc b			;b53d	04		.
	ld c,c			;b53e	49		I
	or (hl)			;b53f	b6		.
	ret z			;b540	c8		.
	ex af,af'		;b541	08		.
	inc bc			;b542	03		.
	nop			;b543	00		.
	inc bc			;b544	03		.
	ex af,af'		;b545	08		.
	or (hl)			;b546	b6		.
	or b			;b547	b0		.
	jr nz,lb54fh		;b548	20 05		  .
	nop			;b54a	00		.
	inc d			;b54b	14		.
	sbc a,d			;b54c	9a		.
	or (hl)			;b54d	b6		.
	ld b,b			;b54e	40		@
lb54fh:
	ld a,(bc)		;b54f	0a		.
	ld bc,01500h		;b550	01 00 15	. . .
	and e			;b553	a3		.
	or (hl)			;b554	b6		.
	ex af,af'		;b555	08		.
	ld b,d			;b556	42		B
	ld bc,01403h		;b557	01 03 14	. . .
	nop			;b55a	00		.
	ld e,08eh		;b55b	1e 8e		. .
	or l			;b55d	b5		.
	or b			;b55e	b0		.
	nop			;b55f	00		.
lb560h:
	ld b,000h		;b560	06 00		. .
	ld (bc),a		;b562	02		.
	defb 0fdh,0b5h ;or iyl	;b563	fd b5		. .
	ret nz			;b565	c0		.
	ld a,002h		;b566	3e 02		> .
	nop			;b568	00		.
	ld d,0aeh		;b569	16 ae		. .
	or (hl)			;b56b	b6		.
	ret pe			;b56c	e8		.
	dec l			;b56d	2d		-
	ld bc,09603h		;b56e	01 03 96	. . .
	inc bc			;b571	03		.
	ld c,b			;b572	48		H
	nop			;b573	00		.
	jr z,lb52fh		;b574	28 b9		( .
	or (hl)			;b576	b6		.
	nop			;b577	00		.
	nop			;b578	00		.
	dec b			;b579	05		.
	dec b			;b57a	05		.
	nop			;b57b	00		.
	inc bc			;b57c	03		.
	rlca			;b57d	07		.
	dec b			;b57e	05		.
	ld bc,02003h		;b57f	01 03 20	. .  
	ld b,00dh		;b582	06 0d		. .
	scf			;b584	37		7
	or a			;b585	b7		.
lb586h:
	ld bc,lb0f4h		;b586	01 f4 b0	. . .
	nop			;b589	00		.
	nop			;b58a	00		.
	ld (bc),a		;b58b	02		.
	inc b			;b58c	04		.
	rlca			;b58d	07		.
	ld bc,0b0f8h		;b58e	01 f8 b0	. . .
	ld bc,00b00h		;b591	01 00 0b	. . .
	jr nz,lb596h		;b594	20 00		  .
lb596h:
	inc bc			;b596	03		.
	ld c,(hl)		;b597	4e		N
	nop			;b598	00		.
	rra			;b599	1f		.
	and b			;b59a	a0		.
	or l			;b59b	b5		.
	ret			;b59c	c9		.
	nop			;b59d	00		.
	ld b,007h		;b59e	06 07		. .
	ld bc,lb104h		;b5a0	01 04 b1	. . .
	ld (bc),a		;b5a3	02		.
	nop			;b5a4	00		.
	dec bc			;b5a5	0b		.
	jr nz,lb5a8h		;b5a6	20 00		  .
lb5a8h:
	inc bc			;b5a8	03		.
	ld (hl),000h		;b5a9	36 00		6 .
	jr nz,lb560h		;b5ab	20 b3		  .
	or l			;b5ad	b5		.
	call z,00600h		;b5ae	cc 00 06	. . .
	ld c,007h		;b5b1	0e 07		. .
	ld bc,lb108h		;b5b3	01 08 b1	. . .
	nop			;b5b6	00		.
	nop			;b5b7	00		.
	nop			;b5b8	00		.
	rra			;b5b9	1f		.
	xor 0b5h		;b5ba	ee b5		. .
	nop			;b5bc	00		.
	nop			;b5bd	00		.
	nop			;b5be	00		.
	dec bc			;b5bf	0b		.
	jr nz,lb5c2h		;b5c0	20 00		  .
lb5c2h:
	inc bc			;b5c2	03		.
	inc d			;b5c3	14		.
	nop			;b5c4	00		.
	ld bc,0b5eeh		;b5c5	01 ee b5	. . .
	nop			;b5c8	00		.
	nop			;b5c9	00		.
	nop			;b5ca	00		.
	inc bc			;b5cb	03		.
	ld (02100h),hl		;b5cc	22 00 21	" . !
	sub 0b5h		;b5cf	d6 b5		. .
	jp nc,00600h		;b5d1	d2 00 06	. . .
	ld c,007h		;b5d4	0e 07		. .
	ld bc,lb100h		;b5d6	01 00 b1	. . .
	nop			;b5d9	00		.
	nop			;b5da	00		.
	dec bc			;b5db	0b		.
	jr nz,lb5deh		;b5dc	20 00		  .
lb5deh:
	inc bc			;b5de	03		.
	ld l,000h		;b5df	2e 00		. .
	ld e,0eeh		;b5e1	1e ee		. .
	or l			;b5e3	b5		.
	nop			;b5e4	00		.
	nop			;b5e5	00		.
	nop			;b5e6	00		.
	nop			;b5e7	00		.
	ld (lb5f0h),hl		;b5e8	22 f0 b5	" . .
	nop			;b5eb	00		.
	nop			;b5ec	00		.
	ld b,00eh		;b5ed	06 0e		. .
	rlca			;b5ef	07		.
lb5f0h:
	ld bc,lb100h		;b5f0	01 00 b1	. . .
	nop			;b5f3	00		.
	nop			;b5f4	00		.
	ld (bc),a		;b5f5	02		.
	inc b			;b5f6	04		.
	ld (bc),a		;b5f7	02		.
	ex af,af'		;b5f8	08		.
	dec bc			;b5f9	0b		.
	jr nz,lb5fch		;b5fa	20 00		  .
lb5fch:
	rlca			;b5fc	07		.
	dec bc			;b5fd	0b		.
	ret p			;b5fe	f0		.
	nop			;b5ff	00		.
	inc bc			;b600	03		.
	ld e,001h		;b601	1e 01		. .
	call c,000b0h		;b603	dc b0 00	. . .
	nop			;b606	00		.
	rlca			;b607	07		.
	ld bc,0b0e0h		;b608	01 e0 b0	. . .
	nop			;b60b	00		.
	nop			;b60c	00		.
	dec bc			;b60d	0b		.
	ret p			;b60e	f0		.
	nop			;b60f	00		.
	inc b			;b610	04		.
	ld bc,00b03h		;b611	01 03 0b	. . .
	nop			;b614	00		.
	dec bc			;b615	0b		.
	or 0b6h			;b616	f6 b6		. .
	ex af,af'		;b618	08		.
	nop			;b619	00		.
	inc b			;b61a	04		.
	inc bc			;b61b	03		.
	dec b			;b61c	05		.
	nop			;b61d	00		.
	inc c			;b61e	0c		.
	ld b,0b7h		;b61f	06 b7		. .
	ld (de),a		;b621	12		.
	ld a,(bc)		;b622	0a		.
	inc b			;b623	04		.
	inc bc			;b624	03		.
	ld bc,00d00h		;b625	01 00 0d	. . .
	pop hl			;b628	e1		.
	or (hl)			;b629	b6		.
	ld a,(bc)		;b62a	0a		.
	dec b			;b62b	05		.
	inc b			;b62c	04		.
	inc bc			;b62d	03		.
	ld (bc),a		;b62e	02		.
	nop			;b62f	00		.
	ld c,0f6h		;b630	0e f6		. .
	or (hl)			;b632	b6		.
	inc b			;b633	04		.
	rlca			;b634	07		.
	inc b			;b635	04		.
	inc bc			;b636	03		.
	inc b			;b637	04		.
	nop			;b638	00		.
	rla			;b639	17		.
lb63ah:
	pop hl			;b63a	e1		.
	or (hl)			;b63b	b6		.
	ld (de),a		;b63c	12		.
	ex af,af'		;b63d	08		.
	inc b			;b63e	04		.
	inc bc			;b63f	03		.
	ld (bc),a		;b640	02		.
	nop			;b641	00		.
	jr lb63ah		;b642	18 f6		. .
	or (hl)			;b644	b6		.
	inc d			;b645	14		.
	dec b			;b646	05		.
	inc b			;b647	04		.
	rlca			;b648	07		.
	ld bc,lb0d8h		;b649	01 d8 b0	. . .
	nop			;b64c	00		.
	nop			;b64d	00		.
	dec bc			;b64e	0b		.
	ret p			;b64f	f0		.
	nop			;b650	00		.
	inc b			;b651	04		.
	ld bc,00500h		;b652	01 00 05	. . .
	pop hl			;b655	e1		.
	or (hl)			;b656	b6		.
	ex af,af'		;b657	08		.
	nop			;b658	00		.
	ld (bc),a		;b659	02		.
	inc bc			;b65a	03		.
	inc b			;b65b	04		.
	nop			;b65c	00		.
	ld b,0f6h		;b65d	06 f6		. .
	or (hl)			;b65f	b6		.
	jr lb672h		;b660	18 10		. .
	inc b			;b662	04		.
	inc bc			;b663	03		.
	ld bc,00700h		;b664	01 00 07	. . .
	ld b,0b7h		;b667	06 b7		. .
	jr lb66fh		;b669	18 04		. .
	ld (bc),a		;b66b	02		.
	inc bc			;b66c	03		.
	inc b			;b66d	04		.
	nop			;b66e	00		.
lb66fh:
	ex af,af'		;b66f	08		.
	or 0b6h			;b670	f6 b6		. .
lb672h:
	ex af,af'		;b672	08		.
	inc b			;b673	04		.
	ld (bc),a		;b674	02		.
	inc bc			;b675	03		.
	inc bc			;b676	03		.
	nop			;b677	00		.
	add hl,bc		;b678	09		.
	pop hl			;b679	e1		.
	or (hl)			;b67a	b6		.
	nop			;b67b	00		.
	nop			;b67c	00		.
	ld (bc),a		;b67d	02		.
	inc bc			;b67e	03		.
	ld bc,00a00h		;b67f	01 00 0a	. . .
	or 0b6h			;b682	f6 b6		. .
	jr nz,lb68eh		;b684	20 08		  .
	inc b			;b686	04		.
	inc bc			;b687	03		.
	rlca			;b688	07		.
	nop			;b689	00		.
	add hl,de		;b68a	19		.
	pop hl			;b68b	e1		.
	or (hl)			;b68c	b6		.
	ld (de),a		;b68d	12		.
lb68eh:
	ld (de),a		;b68e	12		.
	inc b			;b68f	04		.
	inc bc			;b690	03		.
	ld (bc),a		;b691	02		.
	nop			;b692	00		.
	ld a,(de)		;b693	1a		.
	or 0b6h			;b694	f6 b6		. .
	nop			;b696	00		.
	nop			;b697	00		.
	inc b			;b698	04		.
	rlca			;b699	07		.
	ld bc,lb0ech		;b69a	01 ec b0	. . .
	nop			;b69d	00		.
	nop			;b69e	00		.
	dec bc			;b69f	0b		.
	djnz lb6a2h		;b6a0	10 00		. .
lb6a2h:
	rlca			;b6a2	07		.
	ld bc,0b0e8h		;b6a3	01 e8 b0	. . .
	nop			;b6a6	00		.
	nop			;b6a7	00		.
	dec bc			;b6a8	0b		.
	ld b,b			;b6a9	40		@
	nop			;b6aa	00		.
	inc bc			;b6ab	03		.
	ld d,b			;b6ac	50		P
lb6adh:
	ld c,001h		;b6ad	0e 01		. .
	call po,000b0h		;b6af	e4 b0 00	. . .
	nop			;b6b2	00		.
	dec bc			;b6b3	0b		.
	jr c,lb6b6h		;b6b4	38 00		8 .
lb6b6h:
	inc bc			;b6b6	03		.
	ld a,b			;b6b7	78		x
	ld c,004h		;b6b8	0e 04		. .
	nop			;b6ba	00		.
	nop			;b6bb	00		.
lb6bch:
	dec de			;b6bc	1b		.
	call z,06cb6h		;b6bd	cc b6 6c	. . l
	ld a,(de)		;b6c0	1a		.
	dec b			;b6c1	05		.
	inc bc			;b6c2	03		.
	inc bc			;b6c3	03		.
	nop			;b6c4	00		.
	inc e			;b6c5	1c		.
	call z,030b6h		;b6c6	cc b6 30	. . 0
	djnz lb6d0h		;b6c9	10 05		. .
	ld c,001h		;b6cb	0e 01		. .
	or h			;b6cd	b4		.
	or b			;b6ce	b0		.
	nop			;b6cf	00		.
lb6d0h:
	nop			;b6d0	00		.
	ld bc,lb0b8h		;b6d1	01 b8 b0	. . .
	nop			;b6d4	00		.
	nop			;b6d5	00		.
	ld bc,lb0bch		;b6d6	01 bc b0	. . .
	nop			;b6d9	00		.
	nop			;b6da	00		.
	ld bc,0b0c0h		;b6db	01 c0 b0	. . .
	nop			;b6de	00		.
	nop			;b6df	00		.
	ld c,001h		;b6e0	0e 01		. .
	and b			;b6e2	a0		.
	or b			;b6e3	b0		.
	nop			;b6e4	00		.
	nop			;b6e5	00		.
	ld bc,lb0a4h		;b6e6	01 a4 b0	. . .
	nop			;b6e9	00		.
	nop			;b6ea	00		.
	ld bc,0b0a8h		;b6eb	01 a8 b0	. . .
	nop			;b6ee	00		.
	nop			;b6ef	00		.
	ld bc,0b0ach		;b6f0	01 ac b0	. . .
	nop			;b6f3	00		.
	nop			;b6f4	00		.
	ld c,001h		;b6f5	0e 01		. .
	ld (hl),h		;b6f7	74		t
	or b			;b6f8	b0		.
	nop			;b6f9	00		.
	nop			;b6fa	00		.
	ld bc,lb078h		;b6fb	01 78 b0	. x .
	nop			;b6fe	00		.
	nop			;b6ff	00		.
	ld bc,lb07ch		;b700	01 7c b0	. | .
	nop			;b703	00		.
	nop			;b704	00		.
	ld c,001h		;b705	0e 01		. .
	add a,h			;b707	84		.
	or b			;b708	b0		.
	nop			;b709	00		.
	nop			;b70a	00		.
	ld bc,lb088h		;b70b	01 88 b0	. . .
	nop			;b70e	00		.
	nop			;b70f	00		.
	ld bc,lb08ch		;b710	01 8c b0	. . .
	nop			;b713	00		.
	nop			;b714	00		.
	ld c,010h		;b715	0e 10		. .
	sub b			;b717	90		.
	ld (hl),b		;b718	70		p
	inc bc			;b719	03		.
	ld (bc),a		;b71a	02		.
	djnz lb6adh		;b71b	10 90		. .
	ld d,b			;b71d	50		P
	inc bc			;b71e	03		.
	ld bc,09010h		;b71f	01 10 90	. . .
	jr nc,lb727h		;b722	30 03		0 .
	ld bc,09010h		;b724	01 10 90	. . .
lb727h:
	djnz lb72ch		;b727	10 03		. .
	ld (bc),a		;b729	02		.
	djnz lb6bch		;b72a	10 90		. .
lb72ch:
	jr nc,lb731h		;b72c	30 03		0 .
	ld bc,09010h		;b72e	01 10 90	. . .
lb731h:
	ld d,b			;b731	50		P
	inc bc			;b732	03		.
	ld bc,0160dh		;b733	01 0d 16	. . .
	or a			;b736	b7		.
	ex af,af'		;b737	08		.
	sbc a,b			;b738	98		.
	or h			;b739	b4		.
	ex af,af'		;b73a	08		.
	and e			;b73b	a3		.
	or h			;b73c	b4		.
	ex af,af'		;b73d	08		.
	xor (hl)		;b73e	ae		.
	or h			;b73f	b4		.
	nop			;b740	00		.
	dec h			;b741	25		%
	ld d,0b7h		;b742	16 b7		. .
	nop			;b744	00		.
	nop			;b745	00		.
	nop			;b746	00		.
	nop			;b747	00		.
	ld bc,lb779h		;b748	01 79 b7	. y .
	nop			;b74b	00		.
	nop			;b74c	00		.
	rrca			;b74d	0f		.
	nop			;b74e	00		.
	ld (bc),a		;b74f	02		.
	add a,(hl)		;b750	86		.
	or a			;b751	b7		.
	jr nc,lb764h		;b752	30 10		0 .
	add hl,bc		;b754	09		.
	nop			;b755	00		.
	inc bc			;b756	03		.
	sbc a,a			;b757	9f		.
	or a			;b758	b7		.
	ex af,af'		;b759	08		.
	jr lb766h		;b75a	18 0a		. .
	nop			;b75c	00		.
	inc b			;b75d	04		.
	or (hl)			;b75e	b6		.
	or a			;b75f	b7		.
	add a,b			;b760	80		.
	jr lb76eh		;b761	18 0b		. .
	inc bc			;b763	03		.
lb764h:
	jr nc,$+7		;b764	30 05		0 .
lb766h:
	nop			;b766	00		.
	inc bc			;b767	03		.
	ex af,af'		;b768	08		.
	dec b			;b769	05		.
	ld bc,00903h		;b76a	01 03 09	. . .
	dec b			;b76d	05		.
lb76eh:
	ld (bc),a		;b76e	02		.
	inc bc			;b76f	03		.
	dec de			;b770	1b		.
	dec b			;b771	05		.
	inc bc			;b772	03		.
	inc bc			;b773	03		.
	ld hl,00d06h		;b774	21 06 0d	! . .
	ld a,b			;b777	78		x
	cp b			;b778	b8		.
lb779h:
	ld bc,lb0f0h		;b779	01 f0 b0	. . .
	nop			;b77c	00		.
	nop			;b77d	00		.
	ld (bc),a		;b77e	02		.
	inc b			;b77f	04		.
	ld (bc),a		;b780	02		.
	ex af,af'		;b781	08		.
	dec bc			;b782	0b		.
	jr nz,lb785h		;b783	20 00		  .
lb785h:
	rlca			;b785	07		.
	ld bc,lb0cch		;b786	01 cc b0	. . .
	nop			;b789	00		.
	nop			;b78a	00		.
	dec bc			;b78b	0b		.
	ret m			;b78c	f8		.
	nop			;b78d	00		.
lb78eh:
	inc b			;b78e	04		.
	ld (bc),a		;b78f	02		.
	inc bc			;b790	03		.
	rlca			;b791	07		.
	nop			;b792	00		.
	ld b,0cdh		;b793	06 cd		. .
	or a			;b795	b7		.
	nop			;b796	00		.
	nop			;b797	00		.
	add hl,bc		;b798	09		.
	inc b			;b799	04		.
	inc bc			;b79a	03		.
	dec bc			;b79b	0b		.
	ret po			;b79c	e0		.
	jr nz,lb7a6h		;b79d	20 07		  .
	ld bc,lb0d0h		;b79f	01 d0 b0	. . .
	nop			;b7a2	00		.
	nop			;b7a3	00		.
	dec bc			;b7a4	0b		.
	nop			;b7a5	00		.
lb7a6h:
	nop			;b7a6	00		.
	nop			;b7a7	00		.
	rrca			;b7a8	0f		.
	ld b,0b8h		;b7a9	06 b8		. .
	nop			;b7ab	00		.
	nop			;b7ac	00		.
	add hl,bc		;b7ad	09		.
	inc b			;b7ae	04		.
	nop			;b7af	00		.
	dec bc			;b7b0	0b		.
	ret po			;b7b1	e0		.
	ld b,b			;b7b2	40		@
	inc bc			;b7b3	03		.
	inc hl			;b7b4	23		#
	ld c,001h		;b7b5	0e 01		. .
	call nc,000b0h		;b7b7	d4 b0 00	. . .
	nop			;b7ba	00		.
	dec bc			;b7bb	0b		.
	nop			;b7bc	00		.
	nop			;b7bd	00		.
	nop			;b7be	00		.
	djnz lb78eh		;b7bf	10 cd		. .
	or a			;b7c1	b7		.
	nop			;b7c2	00		.
	nop			;b7c3	00		.
	add hl,bc		;b7c4	09		.
	inc b			;b7c5	04		.
	ld bc,0400bh		;b7c6	01 0b 40	. . @
	jr nz,lb7ceh		;b7c9	20 03		  .
	ld e,00eh		;b7cb	1e 0e		. .
	nop			;b7cd	00		.
lb7ceh:
	inc de			;b7ce	13		.
	pop hl			;b7cf	e1		.
	or (hl)			;b7d0	b6		.
	ex af,af'		;b7d1	08		.
	nop			;b7d2	00		.
	add hl,bc		;b7d3	09		.
	inc bc			;b7d4	03		.
	inc b			;b7d5	04		.
	nop			;b7d6	00		.
	inc d			;b7d7	14		.
	pop hl			;b7d8	e1		.
	or (hl)			;b7d9	b6		.
	jr lb7ech		;b7da	18 10		. .
	dec bc			;b7dc	0b		.
	inc bc			;b7dd	03		.
	ld bc,01500h		;b7de	01 00 15	. . .
	pop hl			;b7e1	e1		.
	or (hl)			;b7e2	b6		.
	jr lb7e9h		;b7e3	18 04		. .
	add hl,bc		;b7e5	09		.
	inc bc			;b7e6	03		.
	ld (bc),a		;b7e7	02		.
	nop			;b7e8	00		.
lb7e9h:
	ld d,0e1h		;b7e9	16 e1		. .
	or (hl)			;b7eb	b6		.
lb7ech:
	ex af,af'		;b7ec	08		.
	inc b			;b7ed	04		.
	add hl,bc		;b7ee	09		.
	inc bc			;b7ef	03		.
	ld bc,01700h		;b7f0	01 00 17	. . .
	pop hl			;b7f3	e1		.
	or (hl)			;b7f4	b6		.
	nop			;b7f5	00		.
	nop			;b7f6	00		.
	dec b			;b7f7	05		.
	inc bc			;b7f8	03		.
	ld bc,01800h		;b7f9	01 00 18	. . .
	pop hl			;b7fc	e1		.
	or (hl)			;b7fd	b6		.
	jr nz,lb808h		;b7fe	20 08		  .
	dec b			;b800	05		.
	inc bc			;b801	03		.
	ld bc,0cd0dh		;b802	01 0d cd	. . .
	or a			;b805	b7		.
	nop			;b806	00		.
	add hl,de		;b807	19		.
lb808h:
	pop hl			;b808	e1		.
	or (hl)			;b809	b6		.
	ex af,af'		;b80a	08		.
	nop			;b80b	00		.
	add hl,bc		;b80c	09		.
	inc bc			;b80d	03		.
	inc b			;b80e	04		.
	nop			;b80f	00		.
	ld a,(de)		;b810	1a		.
	pop hl			;b811	e1		.
	or (hl)			;b812	b6		.
	jr lb825h		;b813	18 10		. .
	dec bc			;b815	0b		.
	inc bc			;b816	03		.
	ld bc,01b00h		;b817	01 00 1b	. . .
	pop hl			;b81a	e1		.
	or (hl)			;b81b	b6		.
	jr lb822h		;b81c	18 04		. .
	add hl,bc		;b81e	09		.
	inc bc			;b81f	03		.
	ld (bc),a		;b820	02		.
	nop			;b821	00		.
lb822h:
	inc e			;b822	1c		.
	pop hl			;b823	e1		.
	or (hl)			;b824	b6		.
lb825h:
	ex af,af'		;b825	08		.
	inc b			;b826	04		.
	add hl,bc		;b827	09		.
	inc bc			;b828	03		.
	ld bc,01d00h		;b829	01 00 1d	. . .
	pop hl			;b82c	e1		.
	or (hl)			;b82d	b6		.
	nop			;b82e	00		.
	nop			;b82f	00		.
	dec b			;b830	05		.
	inc bc			;b831	03		.
	ld bc,01e00h		;b832	01 00 1e	. . .
	pop hl			;b835	e1		.
	or (hl)			;b836	b6		.
	jr nz,lb841h		;b837	20 08		  .
	dec b			;b839	05		.
	inc bc			;b83a	03		.
	ld bc,0060dh		;b83b	01 0d 06	. . .
	cp b			;b83e	b8		.
	nop			;b83f	00		.
	inc de			;b840	13		.
lb841h:
	pop hl			;b841	e1		.
	or (hl)			;b842	b6		.
	ex af,af'		;b843	08		.
	nop			;b844	00		.
	add hl,bc		;b845	09		.
	inc bc			;b846	03		.
	inc b			;b847	04		.
	nop			;b848	00		.
	inc d			;b849	14		.
	pop hl			;b84a	e1		.
	or (hl)			;b84b	b6		.
	jr lb85eh		;b84c	18 10		. .
	dec bc			;b84e	0b		.
	inc bc			;b84f	03		.
	ld bc,01500h		;b850	01 00 15	. . .
	pop hl			;b853	e1		.
	or (hl)			;b854	b6		.
	jr lb85bh		;b855	18 04		. .
	add hl,bc		;b857	09		.
	inc bc			;b858	03		.
	ld (bc),a		;b859	02		.
	nop			;b85a	00		.
lb85bh:
	ld d,0e1h		;b85b	16 e1		. .
	or (hl)			;b85d	b6		.
lb85eh:
	ex af,af'		;b85e	08		.
	inc b			;b85f	04		.
	add hl,bc		;b860	09		.
	inc bc			;b861	03		.
	ld bc,01700h		;b862	01 00 17	. . .
	pop hl			;b865	e1		.
	or (hl)			;b866	b6		.
	nop			;b867	00		.
	nop			;b868	00		.
	dec b			;b869	05		.
	inc bc			;b86a	03		.
	ld bc,01800h		;b86b	01 00 18	. . .
	pop hl			;b86e	e1		.
	or (hl)			;b86f	b6		.
	jr nz,lb87ah		;b870	20 08		  .
	dec b			;b872	05		.
	inc bc			;b873	03		.
	ld bc,03f0dh		;b874	01 0d 3f	. . ?
	cp b			;b877	b8		.
	ex af,af'		;b878	08		.
	sbc a,b			;b879	98		.
lb87ah:
	or h			;b87a	b4		.
	ex af,af'		;b87b	08		.
	and e			;b87c	a3		.
	or h			;b87d	b4		.
	ex af,af'		;b87e	08		.
	defb 0ddh,0b4h ;or ixh	;b87f	dd b4		. .
	rrca			;b881	0f		.
	ld c,(hl)		;b882	4e		N
	nop			;b883	00		.
	rrca			;b884	0f		.
	call p,000b8h		;b885	f4 b8 00	. . .
	nop			;b888	00		.
	rrca			;b889	0f		.
	nop			;b88a	00		.
	ld de,0b8fah		;b88b	11 fa b8	. . .
	nop			;b88e	00		.
	nop			;b88f	00		.
	rrca			;b890	0f		.
	nop			;b891	00		.
	inc b			;b892	04		.
	ld d,0b9h		;b893	16 b9		. .
	nop			;b895	00		.
	ex af,af'		;b896	08		.
	ex af,af'		;b897	08		.
	nop			;b898	00		.
	ld b,01ch		;b899	06 1c		. .
	cp c			;b89b	b9		.
	ld a,b			;b89c	78		x
	ld b,b			;b89d	40		@
	rlca			;b89e	07		.
	inc bc			;b89f	03		.
	ld (de),a		;b8a0	12		.
	rrca			;b8a1	0f		.
	ld c,a			;b8a2	4f		O
	dec b			;b8a3	05		.
	ld bc,00303h		;b8a4	01 03 03	. . .
	nop			;b8a7	00		.
	dec b			;b8a8	05		.
	jr c,$-69		;b8a9	38 b9		8 .
	nop			;b8ab	00		.
	ret m			;b8ac	f8		.
	rrca			;b8ad	0f		.
lb8aeh:
	nop			;b8ae	00		.
	ld (de),a		;b8af	12		.
	ld (hl),e		;b8b0	73		s
	cp c			;b8b1	b9		.
	nop			;b8b2	00		.
	ret m			;b8b3	f8		.
	rrca			;b8b4	0f		.
	inc bc			;b8b5	03		.
	inc c			;b8b6	0c		.
	nop			;b8b7	00		.
	ld bc,lb8e7h		;b8b8	01 e7 b8	. . .
	nop			;b8bb	00		.
	nop			;b8bc	00		.
	rrca			;b8bd	0f		.
	nop			;b8be	00		.
	ld (bc),a		;b8bf	02		.
	nop			;b8c0	00		.
	cp c			;b8c1	b9		.
	nop			;b8c2	00		.
	nop			;b8c3	00		.
	ld c,000h		;b8c4	0e 00		. .
	inc bc			;b8c6	03		.
	dec bc			;b8c7	0b		.
	cp c			;b8c8	b9		.
	ld d,b			;b8c9	50		P
	nop			;b8ca	00		.
	ld c,003h		;b8cb	0e 03		. .
	ld bc,00005h		;b8cd	01 05 00	. . .
	inc bc			;b8d0	03		.
	ld bc,0500fh		;b8d1	01 0f 50	. . P
	add hl,bc		;b8d4	09		.
	cp c			;b8d5	b9		.
	or h			;b8d6	b4		.
	inc bc			;b8d7	03		.
	dec l			;b8d8	2d		-
	ld b,00dh		;b8d9	06 0d		. .
	and e			;b8db	a3		.
	cp c			;b8dc	b9		.
	inc c			;b8dd	0c		.
	ld bc,00161h		;b8de	01 61 01	. a .
	inc c			;b8e1	0c		.
	or c			;b8e2	b1		.
	nop			;b8e3	00		.
	nop			;b8e4	00		.
	ld c,007h		;b8e5	0e 07		. .
lb8e7h:
	ld bc,lb0f4h		;b8e7	01 f4 b0	. . .
	nop			;b8ea	00		.
	nop			;b8eb	00		.
	ld (bc),a		;b8ec	02		.
	inc b			;b8ed	04		.
	ld (bc),a		;b8ee	02		.
	djnz $+13		;b8ef	10 0b		. .
	nop			;b8f1	00		.
	ret po			;b8f2	e0		.
	rlca			;b8f3	07		.
	ld bc,0b0fch		;b8f4	01 fc b0	. . .
	nop			;b8f7	00		.
	nop			;b8f8	00		.
	ld c,001h		;b8f9	0e 01		. .
	djnz lb8aeh		;b8fb	10 b1		. .
	ld d,b			;b8fd	50		P
	nop			;b8fe	00		.
	ld c,001h		;b8ff	0e 01		. .
	call m,000b0h		;b901	fc b0 00	. . .
	nop			;b904	00		.
	inc b			;b905	04		.
	nop			;b906	00		.
	dec bc			;b907	0b		.
	ret po			;b908	e0		.
	nop			;b909	00		.
	rlca			;b90a	07		.
	ld bc,lb110h		;b90b	01 10 b1	. . .
	nop			;b90e	00		.
	nop			;b90f	00		.
	inc b			;b910	04		.
	nop			;b911	00		.
	dec bc			;b912	0b		.
	jr nc,lb915h		;b913	30 00		0 .
lb915h:
	rlca			;b915	07		.
	ld bc,lb10ch		;b916	01 0c b1	. . .
	nop			;b919	00		.
	nop			;b91a	00		.
	rlca			;b91b	07		.
	ld bc,lb114h		;b91c	01 14 b1	. . .
	nop			;b91f	00		.
	nop			;b920	00		.
	inc b			;b921	04		.
	ld bc,01401h		;b922	01 01 14	. . .
	or c			;b925	b1		.
	nop			;b926	00		.
	ld bc,01401h		;b927	01 01 14	. . .
	or c			;b92a	b1		.
	nop			;b92b	00		.
	rst 38h			;b92c	ff		.
	ld bc,lb114h		;b92d	01 14 b1	. . .
	nop			;b930	00		.
	defb 0fdh,001h,014h ;illegal sequence	;b931	fd 01 14	. . .
	or c			;b934	b1		.
	nop			;b935	00		.
	nop			;b936	00		.
	rlca			;b937	07		.
	inc c			;b938	0c		.
	nop			;b939	00		.
	ld l,l			;b93a	6d		m
	ld bc,lb150h		;b93b	01 50 b1	. P .
	jr nz,$+58		;b93e	20 38		  8
	ld bc,lb154h		;b940	01 54 b1	. T .
	jr $+58			;b943	18 38		. 8
	ld bc,0b158h		;b945	01 58 b1	. X .
	jr lb97ah		;b948	18 30		. 0
	ld bc,0b15ch		;b94a	01 5c b1	. \ .
	djnz lb97fh		;b94d	10 30		. 0
	ld bc,0b160h		;b94f	01 60 b1	. ` .
	djnz lb984h		;b952	10 30		. 0
	ld bc,0b164h		;b954	01 64 b1	. d .
	ex af,af'		;b957	08		.
	jr z,lb95bh		;b958	28 01		( .
	ld l,b			;b95a	68		h
lb95bh:
	or c			;b95b	b1		.
	nop			;b95c	00		.
	jr nz,lb960h		;b95d	20 01		  .
	ld c,b			;b95f	48		H
lb960h:
	or c			;b960	b1		.
	jr lb9a3h		;b961	18 40		. @
	ld bc,lb14ch		;b963	01 4c b1	. L .
	djnz lb9a8h		;b966	10 40		. @
	ld bc,0b16ch		;b968	01 6c b1	. l .
	ex af,af'		;b96b	08		.
	jr c,lb96fh		;b96c	38 01		8 .
	ld (hl),b		;b96e	70		p
lb96fh:
	or c			;b96f	b1		.
	nop			;b970	00		.
	jr c,lb981h		;b971	38 0e		8 .
	inc c			;b973	0c		.
	nop			;b974	00		.
	ld l,l			;b975	6d		m
	inc bc			;b976	03		.
	ld bc,07401h		;b977	01 01 74	. . t
lb97ah:
	or c			;b97a	b1		.
	add a,b			;b97b	80		.
	jr c,lb97fh		;b97c	38 01		8 .
	ld a,b			;b97e	78		x
lb97fh:
	or c			;b97f	b1		.
	add a,b			;b980	80		.
lb981h:
	jr nc,lb984h		;b981	30 01		0 .
	ld a,h			;b983	7c		|
lb984h:
	or c			;b984	b1		.
	adc a,b			;b985	88		.
	jr nc,lb989h		;b986	30 01		0 .
	add a,b			;b988	80		.
lb989h:
	or c			;b989	b1		.
	adc a,b			;b98a	88		.
	jr nc,lb98eh		;b98b	30 01		0 .
	add a,h			;b98d	84		.
lb98eh:
	or c			;b98e	b1		.
	sub b			;b98f	90		.
	jr z,lb993h		;b990	28 01		( .
	adc a,b			;b992	88		.
lb993h:
	or c			;b993	b1		.
	sbc a,b			;b994	98		.
	jr nz,$+5		;b995	20 03		  .
	inc bc			;b997	03		.
	ld bc,0b18ch		;b998	01 8c b1	. . .
	sub b			;b99b	90		.
	jr c,lb99fh		;b99c	38 01		8 .
	sub b			;b99e	90		.
lb99fh:
	or c			;b99f	b1		.
	sbc a,b			;b9a0	98		.
	jr c,lb9b1h		;b9a1	38 0e		8 .
lb9a3h:
	ex af,af'		;b9a3	08		.
	sbc a,b			;b9a4	98		.
	or h			;b9a5	b4		.
	ex af,af'		;b9a6	08		.
	and e			;b9a7	a3		.
lb9a8h:
	or h			;b9a8	b4		.
	ex af,af'		;b9a9	08		.
	ret nc			;b9aa	d0		.
	or h			;b9ab	b4		.
	nop			;b9ac	00		.
	dec h			;b9ad	25		%
	ld d,0b7h		;b9ae	16 b7		. .
	nop			;b9b0	00		.
lb9b1h:
	nop			;b9b1	00		.
	nop			;b9b2	00		.
	nop			;b9b3	00		.
	ld bc,lb9d7h		;b9b4	01 d7 b9	. . .
	nop			;b9b7	00		.
	nop			;b9b8	00		.
	rlca			;b9b9	07		.
	nop			;b9ba	00		.
	ld (bc),a		;b9bb	02		.
	call po,020b9h		;b9bc	e4 b9 20	. .  
	adc a,b			;b9bf	88		.
	inc b			;b9c0	04		.
	inc bc			;b9c1	03		.
	inc bc			;b9c2	03		.
	dec b			;b9c3	05		.
	nop			;b9c4	00		.
	nop			;b9c5	00		.
	inc bc			;b9c6	03		.
	rst 28h			;b9c7	ef		.
	cp c			;b9c8	b9		.
	nop			;b9c9	00		.
	nop			;b9ca	00		.
	ld (bc),a		;b9cb	02		.
	dec b			;b9cc	05		.
	ld bc,06003h		;b9cd	01 03 60	. . `
	dec b			;b9d0	05		.
	rrca			;b9d1	0f		.
	inc bc			;b9d2	03		.
	ld a,(bc)		;b9d3	0a		.
	dec c			;b9d4	0d		.
	jr nz,$-73		;b9d5	20 b5		  .
lb9d7h:
	ld bc,lb0f0h		;b9d7	01 f0 b0	. . .
	nop			;b9da	00		.
	nop			;b9db	00		.
	ld (bc),a		;b9dc	02		.
	inc b			;b9dd	04		.
	ld (bc),a		;b9de	02		.
	djnz lb9ech		;b9df	10 0b		. .
	nop			;b9e1	00		.
	jr nz,lb9ebh		;b9e2	20 07		  .
	ld bc,0b0c4h		;b9e4	01 c4 b0	. . .
	nop			;b9e7	00		.
	nop			;b9e8	00		.
	dec bc			;b9e9	0b		.
	and b			;b9ea	a0		.
lb9ebh:
	ld b,b			;b9eb	40		@
lb9ech:
	inc bc			;b9ec	03		.
	ld e,00eh		;b9ed	1e 0e		. .
	ld bc,lb094h		;b9ef	01 94 b0	. . .
	ld b,l			;b9f2	45		E
	dec hl			;b9f3	2b		+
	ld bc,lb09ch		;b9f4	01 9c b0	. . .
	ld b,l			;b9f7	45		E
	dec hl			;b9f8	2b		+
	ld bc,lb070h		;b9f9	01 70 b0	. p .
	ld b,l			;b9fc	45		E
	dec hl			;b9fd	2b		+
	inc bc			;b9fe	03		.
	dec b			;b9ff	05		.
	ld bc,lb128h		;ba00	01 28 b1	. ( .
	ld b,l			;ba03	45		E
lba04h:
	dec hl			;ba04	2b		+
	ld bc,lb12ch		;ba05	01 2c b1	. , .
	ld b,a			;ba08	47		G
	daa			;ba09	27		'
	ld bc,lb130h		;ba0a	01 30 b1	. 0 .
	ld c,b			;ba0d	48		H
	inc h			;ba0e	24		$
	ld bc,lb134h		;ba0f	01 34 b1	. 4 .
	ld c,c			;ba12	49		I
	inc hl			;ba13	23		#
	ld bc,lb138h		;ba14	01 38 b1	. 8 .
	ccf			;ba17	3f		?
	dec h			;ba18	25		%
	dec bc			;ba19	0b		.
	ret po			;ba1a	e0		.
	jr nz,lba20h		;ba1b	20 03		  .
	ld d,00bh		;ba1d	16 0b		. .
	ld d,b			;ba1f	50		P
lba20h:
	ret po			;ba20	e0		.
	inc bc			;ba21	03		.
	inc de			;ba22	13		.
	ld bc,lb13ch		;ba23	01 3c b1	. < .
	ld b,e			;ba26	43		C
	ld (04001h),hl		;ba27	22 01 40	" . @
	or c			;ba2a	b1		.
	ld b,d			;ba2b	42		B
	inc h			;ba2c	24		$
	ld bc,lb144h		;ba2d	01 44 b1	. D .
	ld b,d			;ba30	42		B
	ld (04401h),hl		;ba31	22 01 44	" . D
	or c			;ba34	b1		.
	ld a,01eh		;ba35	3e 1e		> .
	ld bc,lb118h		;ba37	01 18 b1	. . .
	ld a,(0011dh)		;ba3a	3a 1d 01	: . .
	jr $-77			;ba3d	18 b1		. .
	jr nc,lba5fh		;ba3f	30 1e		0 .
	ld bc,lb11bh+1		;ba41	01 1c b1	. . .
	ld hl,(00120h)		;ba44	2a 20 01	*   .
	inc e			;ba47	1c		.
	or c			;ba48	b1		.
	inc h			;ba49	24		$
	inc h			;ba4a	24		$
	ld bc,lb120h		;ba4b	01 20 b1	.   .
	ld hl,0012ah		;ba4e	21 2a 01	! * .
	jr nz,lba04h		;ba51	20 b1		  .
	jr nz,lba87h		;ba53	20 32		  2
	ld bc,lb120h		;ba55	01 20 b1	.   .
	inc h			;ba58	24		$
	dec (hl)		;ba59	35		5
	ld bc,lb124h		;ba5a	01 24 b1	. $ .
	ld h,037h		;ba5d	26 37		& 7
lba5fh:
	ld bc,lb124h		;ba5f	01 24 b1	. $ .
	add hl,hl		;ba62	29		)
	jr c,lba66h		;ba63	38 01		8 .
	ld (hl),b		;ba65	70		p
lba66h:
	or b			;ba66	b0		.
	add hl,hl		;ba67	29		)
	jr c,$+5		;ba68	38 03		8 .
	inc bc			;ba6a	03		.
	ld bc,lb094h		;ba6b	01 94 b0	. . .
	daa			;ba6e	27		'
	inc (hl)		;ba6f	34		4
	ld bc,lb098h		;ba70	01 98 b0	. . .
	dec h			;ba73	25		%
	dec (hl)		;ba74	35		5
	ld bc,lb09ch		;ba75	01 9c b0	. . .
	inc hl			;ba78	23		#
	ld (hl),00eh		;ba79	36 0e		6 .
lba7bh:
	ex af,af'		;ba7b	08		.
	ld bc,000b5h		;ba7c	01 b5 00	. . .
	ld bc,lbab3h		;ba7f	01 b3 ba	. . .
	nop			;ba82	00		.
	nop			;ba83	00		.
	rlca			;ba84	07		.
	nop			;ba85	00		.
	ld (bc),a		;ba86	02		.
lba87h:
	cp (hl)			;ba87	be		.
	cp d			;ba88	ba		.
	ld c,b			;ba89	48		H
	ld c,002h		;ba8a	0e 02		. .
	nop			;ba8c	00		.
	inc bc			;ba8d	03		.
	jp c,030bah		;ba8e	da ba 30	. . 0
	dec d			;ba91	15		.
	dec b			;ba92	05		.
	inc bc			;ba93	03		.
	dec b			;ba94	05		.
	add hl,bc		;ba95	09		.
	add a,h			;ba96	84		.
	or h			;ba97	b4		.
	rrca			;ba98	0f		.
	ld d,e			;ba99	53		S
	inc bc			;ba9a	03		.
	ld (bc),a		;ba9b	02		.
	dec b			;ba9c	05		.
	ld bc,00803h		;ba9d	01 03 08	. . .
	rrca			;baa0	0f		.
	ld c,c			;baa1	49		I
	inc bc			;baa2	03		.
	ld d,b			;baa3	50		P
	nop			;baa4	00		.
	inc bc			;baa5	03		.
	cp b			;baa6	b8		.
	or (hl)			;baa7	b6		.
	nop			;baa8	00		.
	nop			;baa9	00		.
	nop			;baaa	00		.
	inc bc			;baab	03		.
	ld h,h			;baac	64		d
	inc bc			;baad	03		.
	ld (de),a		;baae	12		.
	ld b,00dh		;baaf	06 0d		. .
	ld a,(bc)		;bab1	0a		.
	cp e			;bab2	bb		.
lbab3h:
	ld bc,lb194h		;bab3	01 94 b1	. . .
	nop			;bab6	00		.
	nop			;bab7	00		.
	ld (bc),a		;bab8	02		.
	ex af,af'		;bab9	08		.
	dec bc			;baba	0b		.
	ret nc			;babb	d0		.
	nop			;babc	00		.
	rlca			;babd	07		.
	ld bc,lb1c0h		;babe	01 c0 b1	. . .
	nop			;bac1	00		.
	nop			;bac2	00		.
	dec bc			;bac3	0b		.
	nop			;bac4	00		.
	ret p			;bac5	f0		.
	inc bc			;bac6	03		.
	ex af,af'		;bac7	08		.
	dec bc			;bac8	0b		.
	nop			;bac9	00		.
	nop			;baca	00		.
	inc bc			;bacb	03		.
	ld (bc),a		;bacc	02		.
	dec bc			;bacd	0b		.
	nop			;bace	00		.
	djnz lbad4h		;bacf	10 03		. .
	ex af,af'		;bad1	08		.
	dec bc			;bad2	0b		.
	nop			;bad3	00		.
lbad4h:
	nop			;bad4	00		.
	inc bc			;bad5	03		.
	inc bc			;bad6	03		.
	dec c			;bad7	0d		.
	cp (hl)			;bad8	be		.
	cp d			;bad9	ba		.
	ld bc,0b1e0h		;bada	01 e0 b1	. . .
	nop			;badd	00		.
	nop			;bade	00		.
	inc b			;badf	04		.
	ld bc,0f00bh		;bae0	01 0b f0	. . .
	nop			;bae3	00		.
	inc bc			;bae4	03		.
	inc bc			;bae5	03		.
	ld bc,lb1e4h		;bae6	01 e4 b1	. . .
	nop			;bae9	00		.
	nop			;baea	00		.
	ld bc,lb1f4h		;baeb	01 f4 b1	. . .
	ret m			;baee	f8		.
	nop			;baef	00		.
	ld bc,lb1e4h		;baf0	01 e4 b1	. . .
	nop			;baf3	00		.
	nop			;baf4	00		.
	dec bc			;baf5	0b		.
	ret po			;baf6	e0		.
	nop			;baf7	00		.
	ld bc,lb1e8h		;baf8	01 e8 b1	. . .
	nop			;bafb	00		.
	nop			;bafc	00		.
	ld bc,0b1ech		;bafd	01 ec b1	. . .
	nop			;bb00	00		.
	nop			;bb01	00		.
	ld bc,0b1f0h		;bb02	01 f0 b1	. . .
	nop			;bb05	00		.
	nop			;bb06	00		.
	dec c			;bb07	0d		.
	ret m			;bb08	f8		.
	cp d			;bb09	ba		.
	ex af,af'		;bb0a	08		.
	sbc a,b			;bb0b	98		.
	or h			;bb0c	b4		.
	ex af,af'		;bb0d	08		.
	xor (hl)		;bb0e	ae		.
	or h			;bb0f	b4		.
	ex af,af'		;bb10	08		.
	call p,000b4h		;bb11	f4 b4 00	. . .
	ld bc,lbb94h		;bb14	01 94 bb	. . .
	nop			;bb17	00		.
	nop			;bb18	00		.
	rlca			;bb19	07		.
	inc bc			;bb1a	03		.
	dec b			;bb1b	05		.
	nop			;bb1c	00		.
	rrca			;bb1d	0f		.
	ld d,0bch		;bb1e	16 bc		. .
	nop			;bb20	00		.
	nop			;bb21	00		.
	nop			;bb22	00		.
	inc bc			;bb23	03		.
	call c,0dc03h		;bb24	dc 03 dc	. . .
	inc bc			;bb27	03		.
	ld d,a			;bb28	57		W
	nop			;bb29	00		.
	ld (bc),a		;bb2a	02		.
	and c			;bb2b	a1		.
	cp e			;bb2c	bb		.
	inc h			;bb2d	24		$
	ld l,b			;bb2e	68		h
	ld bc,02203h		;bb2f	01 03 22	. . "
	dec b			;bb32	05		.
	ld bc,01303h		;bb33	01 03 13	. . .
	nop			;bb36	00		.
	ld a,(bc)		;bb37	0a		.
	cp h			;bb38	bc		.
	cp e			;bb39	bb		.
	and b			;bb3a	a0		.
	jr z,lbb43h		;bb3b	28 06		( .
	inc bc			;bb3d	03		.
	add a,d			;bb3e	82		.
	nop			;bb3f	00		.
	inc bc			;bb40	03		.
	ret			;bb41	c9		.
	cp e			;bb42	bb		.
lbb43h:
	ret po			;bb43	e0		.
	jr lbb4bh		;bb44	18 05		. .
	nop			;bb46	00		.
	inc b			;bb47	04		.
	jp nc,0d8bbh		;bb48	d2 bb d8	. . .
lbb4bh:
	ld b,b			;bb4b	40		@
	dec b			;bb4c	05		.
	inc bc			;bb4d	03		.
	dec l			;bb4e	2d		-
	nop			;bb4f	00		.
	dec b			;bb50	05		.
	in a,(0bbh)		;bb51	db bb		. .
	ret m			;bb53	f8		.
	ld b,001h		;bb54	06 01		. .
	nop			;bb56	00		.
	ld b,004h		;bb57	06 04		. .
	cp h			;bb59	bc		.
	ret nc			;bb5a	d0		.
	add hl,sp		;bb5b	39		9
	ld (bc),a		;bb5c	02		.
	inc bc			;bb5d	03		.
	ld e,000h		;bb5e	1e 00		. .
	rlca			;bb60	07		.
	dec c			;bb61	0d		.
	cp h			;bb62	bc		.
	ret nc			;bb63	d0		.
	dec c			;bb64	0d		.
	inc bc			;bb65	03		.
	inc bc			;bb66	03		.
	ld l,(hl)		;bb67	6e		n
	nop			;bb68	00		.
	ex af,af'		;bb69	08		.
	call po,sub_a8bbh	;bb6a	e4 bb a8	. . .
	dec e			;bb6d	1d		.
	inc b			;bb6e	04		.
	inc bc			;bb6f	03		.
	call z,01d00h		;bb70	cc 00 1d	. . .
	call nc,000bch		;bb73	d4 bc 00	. . .
	nop			;bb76	00		.
	ld bc,01903h		;bb77	01 03 19	. . .
	nop			;bb7a	00		.
	ex af,af'		;bb7b	08		.
	cp b			;bb7c	b8		.
	or (hl)			;bb7d	b6		.
	nop			;bb7e	00		.
	nop			;bb7f	00		.
	nop			;bb80	00		.
	inc bc			;bb81	03		.
	jr z,lbb93h		;bb82	28 0f		( .
	add a,h			;bb84	84		.
	inc bc			;bb85	03		.
	dec l			;bb86	2d		-
	ex af,af'		;bb87	08		.
	ld bc,003b5h		;bb88	01 b5 03	. . .
	ld (de),a		;bb8b	12		.
	dec b			;bb8c	05		.
	rrca			;bb8d	0f		.
	inc bc			;bb8e	03		.
	jr z,lbb97h		;bb8f	28 06		( .
	dec c			;bb91	0d		.
	ld a,e			;bb92	7b		{
lbb93h:
	cp d			;bb93	ba		.
lbb94h:
	ld bc,lb198h		;bb94	01 98 b1	. . .
lbb97h:
	nop			;bb97	00		.
lbb98h:
	nop			;bb98	00		.
	ld (bc),a		;bb99	02		.
	inc b			;bb9a	04		.
	ld (bc),a		;bb9b	02		.
	ex af,af'		;bb9c	08		.
	dec bc			;bb9d	0b		.
	jr nz,lbba0h		;bb9e	20 00		  .
lbba0h:
	rlca			;bba0	07		.
	ld bc,lb1a0h		;bba1	01 a0 b1	. . .
	nop			;bba4	00		.
	nop			;bba5	00		.
	dec bc			;bba6	0b		.
	nop			;bba7	00		.
	ret nz			;bba8	c0		.
	inc b			;bba9	04		.
	ld bc,0100bh		;bbaa	01 0b 10	. . .
	ret nz			;bbad	c0		.
	inc bc			;bbae	03		.
	ld a,(bc)		;bbaf	0a		.
	dec bc			;bbb0	0b		.
	jr nz,$-46		;bbb1	20 d0		  .
	inc bc			;bbb3	03		.
	ld a,(bc)		;bbb4	0a		.
	dec bc			;bbb5	0b		.
	jr nz,lbb98h		;bbb6	20 e0		  .
	inc bc			;bbb8	03		.
	scf			;bbb9	37		7
	ld c,007h		;bbba	0e 07		. .
	ld bc,lb1a4h		;bbbc	01 a4 b1	. . .
	nop			;bbbf	00		.
	nop			;bbc0	00		.
	dec bc			;bbc1	0b		.
	ret pe			;bbc2	e8		.
	nop			;bbc3	00		.
	inc bc			;bbc4	03		.
	ret z			;bbc5	c8		.
	inc bc			;bbc6	03		.
	ld h,h			;bbc7	64		d
	ld c,001h		;bbc8	0e 01		. .
	call c,000b1h		;bbca	dc b1 00	. . .
	nop			;bbcd	00		.
	dec bc			;bbce	0b		.
	ld c,b			;bbcf	48		H
	nop			;bbd0	00		.
	rlca			;bbd1	07		.
	ld bc,0b1d8h		;bbd2	01 d8 b1	. . .
	nop			;bbd5	00		.
	nop			;bbd6	00		.
	dec bc			;bbd7	0b		.
	ld d,b			;bbd8	50		P
	nop			;bbd9	00		.
	rlca			;bbda	07		.
	ld bc,lb1d4h		;bbdb	01 d4 b1	. . .
	nop			;bbde	00		.
	nop			;bbdf	00		.
	dec bc			;bbe0	0b		.
	jr c,lbbe3h		;bbe1	38 00		8 .
lbbe3h:
	rlca			;bbe3	07		.
	ld bc,lb1c8h		;bbe4	01 c8 b1	. . .
	nop			;bbe7	00		.
	nop			;bbe8	00		.
	dec bc			;bbe9	0b		.
	jr z,lbbech		;bbea	28 00		( .
lbbech:
	inc bc			;bbec	03		.
	ld h,b			;bbed	60		`
	nop			;bbee	00		.
	ld e,090h		;bbef	1e 90		. .
	cp l			;bbf1	bd		.
	nop			;bbf2	00		.
	nop			;bbf3	00		.
	nop			;bbf4	00		.
	ld bc,lb1c4h		;bbf5	01 c4 b1	. . .
	nop			;bbf8	00		.
	nop			;bbf9	00		.
	ld bc,lb1c8h		;bbfa	01 c8 b1	. . .
	nop			;bbfd	00		.
	nop			;bbfe	00		.
	inc bc			;bbff	03		.
	inc b			;bc00	04		.
	dec c			;bc01	0d		.
	push af			;bc02	f5		.
	cp e			;bc03	bb		.
	ld bc,lb1cch		;bc04	01 cc b1	. . .
	nop			;bc07	00		.
	nop			;bc08	00		.
	dec bc			;bc09	0b		.
	jr c,lbc0ch		;bc0a	38 00		8 .
lbc0ch:
	rlca			;bc0c	07		.
	ld bc,0b1d0h		;bc0d	01 d0 b1	. . .
	nop			;bc10	00		.
	nop			;bc11	00		.
	dec bc			;bc12	0b		.
	ld d,b			;bc13	50		P
	nop			;bc14	00		.
	rlca			;bc15	07		.
	nop			;bc16	00		.
	djnz $-28		;bc17	10 e2		. .
	cp h			;bc19	bc		.
	dec sp			;bc1a	3b		;
	ld h,b			;bc1b	60		`
	ld bc,02803h		;bc1c	01 03 28	. . (
	nop			;bc1f	00		.
	ld de,lbceah		;bc20	11 ea bc	. . .
	dec hl			;bc23	2b		+
	ld h,b			;bc24	60		`
	ld bc,01903h		;bc25	01 03 19	. . .
	nop			;bc28	00		.
	ld (de),a		;bc29	12		.
	jp p,030bch		;bc2a	f2 bc 30	. . 0
	ld h,b			;bc2d	60		`
	ld bc,00f03h		;bc2e	01 03 0f	. . .
	nop			;bc31	00		.
	inc de			;bc32	13		.
	jp m,028bch		;bc33	fa bc 28	. . (
	ld h,b			;bc36	60		`
	ld bc,02503h		;bc37	01 03 25	. . %
	nop			;bc3a	00		.
	inc d			;bc3b	14		.
	ld (bc),a		;bc3c	02		.
	cp l			;bc3d	bd		.
	inc h			;bc3e	24		$
	ld h,b			;bc3f	60		`
	ld bc,01903h		;bc40	01 03 19	. . .
	nop			;bc43	00		.
	dec d			;bc44	15		.
	ld a,(bc)		;bc45	0a		.
	cp l			;bc46	bd		.
	jr z,lbca9h		;bc47	28 60		( `
	ld bc,00f03h		;bc49	01 03 0f	. . .
	nop			;bc4c	00		.
	ld d,012h		;bc4d	16 12		. .
	cp l			;bc4f	bd		.
	inc h			;bc50	24		$
	ld h,b			;bc51	60		`
	ld bc,00f03h		;bc52	01 03 0f	. . .
	nop			;bc55	00		.
	rla			;bc56	17		.
	ld a,(de)		;bc57	1a		.
	cp l			;bc58	bd		.
	jr nc,lbcbbh		;bc59	30 60		0 `
	ld bc,02303h		;bc5b	01 03 23	. . #
	nop			;bc5e	00		.
	jr lbc83h		;bc5f	18 22		. "
	cp l			;bc61	bd		.
	inc (hl)		;bc62	34		4
	ld h,b			;bc63	60		`
	ld bc,01903h		;bc64	01 03 19	. . .
	nop			;bc67	00		.
	add hl,de		;bc68	19		.
	ld hl,(030bdh)		;bc69	2a bd 30	* . 0
	ld h,b			;bc6c	60		`
	ld bc,01703h		;bc6d	01 03 17	. . .
	nop			;bc70	00		.
	ld a,(de)		;bc71	1a		.
	ld (030bdh),a		;bc72	32 bd 30	2 . 0
	ld h,b			;bc75	60		`
	ld bc,00d03h		;bc76	01 03 0d	. . .
	nop			;bc79	00		.
	dec de			;bc7a	1b		.
	ld a,(034bdh)		;bc7b	3a bd 34	: . 4
	ld h,b			;bc7e	60		`
	ld bc,02503h		;bc7f	01 03 25	. . %
	nop			;bc82	00		.
lbc83h:
	ld de,lbd42h		;bc83	11 42 bd	. B .
	jr z,lbce8h		;bc86	28 60		( `
	ld bc,01903h		;bc88	01 03 19	. . .
	nop			;bc8b	00		.
	ld (de),a		;bc8c	12		.
	ld c,d			;bc8d	4a		J
	cp l			;bc8e	bd		.
	inc (hl)		;bc8f	34		4
	ld h,b			;bc90	60		`
	ld bc,00f03h		;bc91	01 03 0f	. . .
	nop			;bc94	00		.
	inc de			;bc95	13		.
	ld d,d			;bc96	52		R
	cp l			;bc97	bd		.
	jr nc,lbcfah		;bc98	30 60		0 `
	ld bc,03003h		;bc9a	01 03 30	. . 0
	nop			;bc9d	00		.
	inc d			;bc9e	14		.
	ld e,d			;bc9f	5a		Z
	cp l			;bca0	bd		.
	djnz $+98		;bca1	10 60		. `
	ld bc,01903h		;bca3	01 03 19	. . .
	nop			;bca6	00		.
	dec d			;bca7	15		.
	ld h,d			;bca8	62		b
lbca9h:
	cp l			;bca9	bd		.
	dec hl			;bcaa	2b		+
	ld h,b			;bcab	60		`
	ld bc,01403h		;bcac	01 03 14	. . .
	nop			;bcaf	00		.
	ld d,06ah		;bcb0	16 6a		. j
	cp l			;bcb2	bd		.
	jr nc,lbd15h		;bcb3	30 60		0 `
	ld bc,03203h		;bcb5	01 03 32	. . 2
	nop			;bcb8	00		.
	rla			;bcb9	17		.
	ld (hl),d		;bcba	72		r
lbcbbh:
	cp l			;bcbb	bd		.
	dec hl			;bcbc	2b		+
	ld h,b			;bcbd	60		`
	ld bc,00e03h		;bcbe	01 03 0e	. . .
	nop			;bcc1	00		.
	jr lbd3eh		;bcc2	18 7a		. z
	cp l			;bcc4	bd		.
	ld c,b			;bcc5	48		H
	ld h,b			;bcc6	60		`
	ld bc,00e03h		;bcc7	01 03 0e	. . .
	nop			;bcca	00		.
	add hl,de		;bccb	19		.
	add a,d			;bccc	82		.
	cp l			;bccd	bd		.
	jr c,lbd30h		;bcce	38 60		8 `
	ld bc,06203h		;bcd0	01 03 62	. . b
	ld c,001h		;bcd3	0e 01		. .
	ld c,h			;bcd5	4c		L
	or d			;bcd6	b2		.
	dec de			;bcd7	1b		.
	ld h,b			;bcd8	60		`
	dec bc			;bcd9	0b		.
	nop			;bcda	00		.
	ret po			;bcdb	e0		.
	inc bc			;bcdc	03		.
	ld (0000bh),a		;bcdd	32 0b 00	2 . .
	nop			;bce0	00		.
	rlca			;bce1	07		.
	ld bc,lb1f8h		;bce2	01 f8 b1	. . .
	nop			;bce5	00		.
	nop			;bce6	00		.
	dec c			;bce7	0d		.
lbce8h:
	adc a,d			;bce8	8a		.
	cp l			;bce9	bd		.
lbceah:
	ld bc,0b1fch		;bcea	01 fc b1	. . .
	nop			;bced	00		.
	nop			;bcee	00		.
	dec c			;bcef	0d		.
	adc a,d			;bcf0	8a		.
	cp l			;bcf1	bd		.
	ld bc,lb200h		;bcf2	01 00 b2	. . .
	nop			;bcf5	00		.
	nop			;bcf6	00		.
	dec c			;bcf7	0d		.
	adc a,d			;bcf8	8a		.
	cp l			;bcf9	bd		.
lbcfah:
	ld bc,lb204h		;bcfa	01 04 b2	. . .
	nop			;bcfd	00		.
	nop			;bcfe	00		.
	dec c			;bcff	0d		.
	adc a,d			;bd00	8a		.
	cp l			;bd01	bd		.
	ld bc,lb208h		;bd02	01 08 b2	. . .
	nop			;bd05	00		.
	nop			;bd06	00		.
	dec c			;bd07	0d		.
	adc a,d			;bd08	8a		.
	cp l			;bd09	bd		.
	ld bc,lb20ch		;bd0a	01 0c b2	. . .
	nop			;bd0d	00		.
	nop			;bd0e	00		.
	dec c			;bd0f	0d		.
	adc a,d			;bd10	8a		.
	cp l			;bd11	bd		.
	ld bc,lb210h		;bd12	01 10 b2	. . .
lbd15h:
	nop			;bd15	00		.
	nop			;bd16	00		.
	dec c			;bd17	0d		.
	adc a,d			;bd18	8a		.
	cp l			;bd19	bd		.
	ld bc,0b214h		;bd1a	01 14 b2	. . .
	nop			;bd1d	00		.
	nop			;bd1e	00		.
	dec c			;bd1f	0d		.
	adc a,d			;bd20	8a		.
	cp l			;bd21	bd		.
	ld bc,lb218h		;bd22	01 18 b2	. . .
	nop			;bd25	00		.
	nop			;bd26	00		.
	dec c			;bd27	0d		.
	adc a,d			;bd28	8a		.
	cp l			;bd29	bd		.
	ld bc,0b21ch		;bd2a	01 1c b2	. . .
	nop			;bd2d	00		.
	nop			;bd2e	00		.
	dec c			;bd2f	0d		.
lbd30h:
	adc a,d			;bd30	8a		.
	cp l			;bd31	bd		.
	ld bc,lb220h		;bd32	01 20 b2	.   .
	nop			;bd35	00		.
	nop			;bd36	00		.
	dec c			;bd37	0d		.
	adc a,d			;bd38	8a		.
	cp l			;bd39	bd		.
	ld bc,lb224h		;bd3a	01 24 b2	. $ .
	nop			;bd3d	00		.
lbd3eh:
	nop			;bd3e	00		.
	dec c			;bd3f	0d		.
	adc a,d			;bd40	8a		.
	cp l			;bd41	bd		.
lbd42h:
	ld bc,lb228h		;bd42	01 28 b2	. ( .
	nop			;bd45	00		.
	nop			;bd46	00		.
	dec c			;bd47	0d		.
	adc a,d			;bd48	8a		.
	cp l			;bd49	bd		.
	ld bc,lb22ch		;bd4a	01 2c b2	. , .
lbd4dh:
	nop			;bd4d	00		.
	nop			;bd4e	00		.
	dec c			;bd4f	0d		.
	adc a,d			;bd50	8a		.
	cp l			;bd51	bd		.
	ld bc,lb230h		;bd52	01 30 b2	. 0 .
lbd55h:
	nop			;bd55	00		.
	nop			;bd56	00		.
	dec c			;bd57	0d		.
	adc a,d			;bd58	8a		.
	cp l			;bd59	bd		.
	ld bc,0b234h		;bd5a	01 34 b2	. 4 .
lbd5dh:
	nop			;bd5d	00		.
	nop			;bd5e	00		.
	dec c			;bd5f	0d		.
	adc a,d			;bd60	8a		.
	cp l			;bd61	bd		.
	ld bc,lb238h		;bd62	01 38 b2	. 8 .
lbd65h:
	nop			;bd65	00		.
	nop			;bd66	00		.
	dec c			;bd67	0d		.
	adc a,d			;bd68	8a		.
	cp l			;bd69	bd		.
	ld bc,0b23ch		;bd6a	01 3c b2	. < .
lbd6dh:
	nop			;bd6d	00		.
	nop			;bd6e	00		.
	dec c			;bd6f	0d		.
	adc a,d			;bd70	8a		.
	cp l			;bd71	bd		.
	ld bc,lb240h		;bd72	01 40 b2	. @ .
	nop			;bd75	00		.
	nop			;bd76	00		.
	dec c			;bd77	0d		.
	adc a,d			;bd78	8a		.
	cp l			;bd79	bd		.
	ld bc,lb244h		;bd7a	01 44 b2	. D .
	nop			;bd7d	00		.
	nop			;bd7e	00		.
	dec c			;bd7f	0d		.
	adc a,d			;bd80	8a		.
	cp l			;bd81	bd		.
	ld bc,0b248h		;bd82	01 48 b2	. H .
	nop			;bd85	00		.
	nop			;bd86	00		.
	dec c			;bd87	0d		.
	adc a,d			;bd88	8a		.
	cp l			;bd89	bd		.
	dec bc			;bd8a	0b		.
	nop			;bd8b	00		.
	ret po			;bd8c	e0		.
	inc bc			;bd8d	03		.
	ld l,b			;bd8e	68		h
	ld c,010h		;bd8f	0e 10		. .
	call nz,01070h		;bd91	c4 70 10	. p .
	or b			;bd94	b0		.
	ld (hl),b		;bd95	70		p
	inc bc			;bd96	03		.
	inc bc			;bd97	03		.
	djnz lbd5dh		;bd98	10 c3		. .
	ld h,b			;bd9a	60		`
	djnz lbd4dh		;bd9b	10 b0		. .
	ld d,b			;bd9d	50		P
	inc bc			;bd9e	03		.
	ld bc,0c210h		;bd9f	01 10 c2	. . .
	ld d,b			;bda2	50		P
	djnz lbd55h		;bda3	10 b0		. .
	jr nc,lbdaah		;bda5	30 03		0 .
	ld bc,0c110h		;bda7	01 10 c1	. . .
lbdaah:
	ld b,b			;bdaa	40		@
	djnz lbd5dh		;bdab	10 b0		. .
	djnz lbdb2h		;bdad	10 03		. .
	ld bc,0c210h		;bdaf	01 10 c2	. . .
lbdb2h:
	ld d,b			;bdb2	50		P
	djnz lbd65h		;bdb3	10 b0		. .
	jr nc,lbdbah		;bdb5	30 03		0 .
	ld bc,0c310h		;bdb7	01 10 c3	. . .
lbdbah:
	ld h,b			;bdba	60		`
	djnz lbd6dh		;bdbb	10 b0		. .
	ld d,b			;bdbd	50		P
	inc bc			;bdbe	03		.
	ld bc,0900dh		;bdbf	01 0d 90	. . .
	cp l			;bdc2	bd		.
sub_bdc3h:
	ld hl,lbee9h		;bdc3	21 e9 be	! . .
	jr lbdcbh		;bdc6	18 03		. .
sub_bdc8h:
	ld hl,lbde7h		;bdc8	21 e7 bd	! . .
lbdcbh:
	ld a,001h		;bdcb	3e 01		> .
	ld (0c91bh),a		;bdcd	32 1b c9	2 . .
	call sub_bdd8h		;bdd0	cd d8 bd	. . .
	xor a			;bdd3	af		.
	ld (0c91bh),a		;bdd4	32 1b c9	2 . .
	ret			;bdd7	c9		.
sub_bdd8h:
	ld e,(hl)		;bdd8	5e		^
	inc hl			;bdd9	23		#
	ld d,(hl)		;bdda	56		V
	inc hl			;bddb	23		#
	ld a,d			;bddc	7a		z
	or e			;bddd	b3		.
	ret z			;bdde	c8		.
	ld a,0feh		;bddf	3e fe		> .
	call 06009h		;bde1	cd 09 60	. . `
	inc hl			;bde4	23		#
	jr sub_bdd8h		;bde5	18 f1		. .
lbde7h:
	nop			;bde7	00		.
	and b			;bde8	a0		.
	ld d,e			;bde9	53		S
	ld d,h			;bdea	54		T
	ld b,c			;bdeb	41		A
	ld b,(hl)		;bdec	46		F
	ld b,(hl)		;bded	46		F
	nop			;bdee	00		.
	nop			;bdef	00		.
	and h			;bdf0	a4		.
	dec l			;bdf1	2d		-
	ld d,b			;bdf2	50		P
	ld d,d			;bdf3	52		R
	ld c,a			;bdf4	4f		O
	ld b,a			;bdf5	47		G
	ld d,d			;bdf6	52		R
	ld b,c			;bdf7	41		A
	ld c,l			;bdf8	4d		M
	dec l			;bdf9	2d		-
	nop			;bdfa	00		.
	nop			;bdfb	00		.
	xor b			;bdfc	a8		.
	ld d,h			;bdfd	54		T
	ld l,041h		;bdfe	2e 41		. A
	ld b,h			;be00	44		D
	ld b,c			;be01	41		A
	ld b,e			;be02	43		C
	ld c,b			;be03	48		H
	ld c,c			;be04	49		I
	nop			;be05	00		.
	nop			;be06	00		.
	xor h			;be07	ac		.
	ld d,d			;be08	52		R
	ld l,053h		;be09	2e 53		. S
	ld b,c			;be0b	41		A
	ld b,a			;be0c	47		G
	ld c,c			;be0d	49		I
	ld d,e			;be0e	53		S
	ld b,c			;be0f	41		A
	ld c,e			;be10	4b		K
	ld b,c			;be11	41		A
	nop			;be12	00		.
	nop			;be13	00		.
	or b			;be14	b0		.
	dec l			;be15	2d		-
	ld b,e			;be16	43		C
	ld c,b			;be17	48		H
	ld b,c			;be18	41		A
	ld d,d			;be19	52		R
	ld b,c			;be1a	41		A
	ld b,e			;be1b	43		C
	ld d,h			;be1c	54		T
	ld b,l			;be1d	45		E
	ld d,d			;be1e	52		R
	dec l			;be1f	2d		-
	nop			;be20	00		.
	nop			;be21	00		.
	or h			;be22	b4		.
	ld c,b			;be23	48		H
	ld l,04dh		;be24	2e 4d		. M
	ld b,c			;be26	41		A
	ld c,e			;be27	4b		K
	ld c,c			;be28	49		I
	ld d,h			;be29	54		T
	ld b,c			;be2a	41		A
	ld c,(hl)		;be2b	4e		N
	ld c,c			;be2c	49		I
	nop			;be2d	00		.
	nop			;be2e	00		.
	cp b			;be2f	b8		.
	ld d,h			;be30	54		T
	ld l,04bh		;be31	2e 4b		. K
	ld c,c			;be33	49		I
	ld c,(hl)		;be34	4e		N
	ld c,a			;be35	4f		O
	ld d,e			;be36	53		S
	ld c,b			;be37	48		H
	ld c,c			;be38	49		I
	ld d,h			;be39	54		T
	ld b,c			;be3a	41		A
	nop			;be3b	00		.
	nop			;be3c	00		.
	cp h			;be3d	bc		.
	ld d,h			;be3e	54		T
	ld l,045h		;be3f	2e 45		. E
	ld b,a			;be41	47		G
	ld d,l			;be42	55		U
	ld b,e			;be43	43		C
	ld c,b			;be44	48		H
	ld c,c			;be45	49		I
	nop			;be46	00		.
	nop			;be47	00		.
	ret nz			;be48	c0		.
	dec l			;be49	2d		-
	ld d,e			;be4a	53		S
	ld c,a			;be4b	4f		O
	ld d,l			;be4c	55		U
	ld c,(hl)		;be4d	4e		N
	ld b,h			;be4e	44		D
	dec l			;be4f	2d		-
	nop			;be50	00		.
	nop			;be51	00		.
	call nz,02e54h		;be52	c4 54 2e	. T .
	ld d,e			;be55	53		S
	ld b,l			;be56	45		E
	ld c,e			;be57	4b		K
	ld c,c			;be58	49		I
	ld d,h			;be59	54		T
	ld c,a			;be5a	4f		O
	nop			;be5b	00		.
	nop			;be5c	00		.
	ret z			;be5d	c8		.
	ld c,e			;be5e	4b		K
	ld l,055h		;be5f	2e 55		. U
	ld b,l			;be61	45		E
	ld c,b			;be62	48		H
	ld b,c			;be63	41		A
	ld d,d			;be64	52		R
	ld b,c			;be65	41		A
	nop			;be66	00		.
	nop			;be67	00		.
	call z,02e59h		;be68	cc 59 2e	. Y .
	ld c,l			;be6b	4d		M
	ld b,c			;be6c	41		A
	ld c,(hl)		;be6d	4e		N
	ld c,(hl)		;be6e	4e		N
	ld c,a			;be6f	4f		O
	nop			;be70	00		.
	nop			;be71	00		.
	ret nc			;be72	d0		.
	dec l			;be73	2d		-
	ld d,b			;be74	50		P
	ld b,h			;be75	44		D
	jr nz,$+85		;be76	20 53		  S
	ld d,h			;be78	54		T
	ld b,c			;be79	41		A
	ld b,(hl)		;be7a	46		F
	ld b,(hl)		;be7b	46		F
	dec l			;be7c	2d		-
	nop			;be7d	00		.
	nop			;be7e	00		.
	call nc,02e4eh		;be7f	d4 4e 2e	. N .
	ld d,e			;be82	53		S
	ld b,c			;be83	41		A
	ld d,h			;be84	54		T
	ld c,a			;be85	4f		O
	ld c,b			;be86	48		H
	nop			;be87	00		.
	nop			;be88	00		.
	ret c			;be89	d8		.
	ld c,b			;be8a	48		H
	ld l,053h		;be8b	2e 53		. S
	ld d,l			;be8d	55		U
	ld c,l			;be8e	4d		M
	ld c,c			;be8f	49		I
	ld b,h			;be90	44		D
	ld b,c			;be91	41		A
	nop			;be92	00		.
	nop			;be93	00		.
	call c,0532dh		;be94	dc 2d 53	. - S
	ld d,b			;be97	50		P
	ld b,l			;be98	45		E
	ld b,e			;be99	43		C
	ld c,c			;be9a	49		I
	ld b,c			;be9b	41		A
	ld c,h			;be9c	4c		L
	jr nz,lbef3h		;be9d	20 54		  T
	ld c,b			;be9f	48		H
	ld b,c			;bea0	41		A
	ld c,(hl)		;bea1	4e		N
	ld c,e			;bea2	4b		K
	ld d,e			;bea3	53		S
	dec l			;bea4	2d		-
	nop			;bea5	00		.
	nop			;bea6	00		.
	ret po			;bea7	e0		.
	ld d,d			;bea8	52		R
	ld l,053h		;bea9	2e 53		. S
	ld c,b			;beab	48		H
	ld c,a			;beac	4f		O
	ld b,a			;bead	47		G
	ld b,c			;beae	41		A
	ld c,e			;beaf	4b		K
	ld c,c			;beb0	49		I
	nop			;beb1	00		.
	nop			;beb2	00		.
	call po,02e4eh		;beb3	e4 4e 2e	. N .
	ld c,l			;beb6	4d		M
	ld b,c			;beb7	41		A
	ld d,h			;beb8	54		T
	ld d,e			;beb9	53		S
	ld d,l			;beba	55		U
	ld c,c			;bebb	49		I
	nop			;bebc	00		.
	nop			;bebd	00		.
	ret pe			;bebe	e8		.
	ld d,b			;bebf	50		P
	ld d,d			;bec0	52		R
	ld b,l			;bec1	45		E
	ld d,e			;bec2	53		S
	ld b,l			;bec3	45		E
	ld c,(hl)		;bec4	4e		N
	ld d,h			;bec5	54		T
	ld b,l			;bec6	45		E
	ld b,h			;bec7	44		D
	nop			;bec8	00		.
	nop			;bec9	00		.
	call pe,05942h		;beca	ec 42 59	. B Y
	nop			;becd	00		.
	nop			;bece	00		.
	ret p			;becf	f0		.
	ld c,e			;bed0	4b		K
	ld c,a			;bed1	4f		O
	ld c,(hl)		;bed2	4e		N
	ld b,c			;bed3	41		A
	ld c,l			;bed4	4d		M
	ld c,c			;bed5	49		I
	nop			;bed6	00		.
	nop			;bed7	00		.
	call p,02040h		;bed8	f4 40 20	. @  
	ld c,e			;bedb	4b		K
	ld c,a			;bedc	4f		O
	ld c,(hl)		;bedd	4e		N
	ld b,c			;bede	41		A
	ld c,l			;bedf	4d		M
	ld c,c			;bee0	49		I
	jr nz,lbf14h		;bee1	20 31		  1
	add hl,sp		;bee3	39		9
	jr c,lbf1fh		;bee4	38 39		8 9
	nop			;bee6	00		.
	nop			;bee7	00		.
	nop			;bee8	00		.
lbee9h:
	jr nz,$-30		;bee9	20 e0		  .
	ld c,c			;beeb	49		I
	ld c,(hl)		;beec	4e		N
	jr nz,lbf43h		;beed	20 54		  T
	ld c,b			;beef	48		H
	ld b,l			;bef0	45		E
	jr nz,lbf46h		;bef1	20 53		  S
lbef3h:
	ld b,h			;bef3	44		D
	ld l,031h		;bef4	2e 31		. 1
	jr c,lbf31h		;bef6	38 39		8 9
	nop			;bef8	00		.
	nop			;bef9	00		.
	add a,b			;befa	80		.
	ld b,h			;befb	44		D
	ld b,c			;befc	41		A
	ld c,(hl)		;befd	4e		N
lbefeh:
	ld b,a			;befe	47		G
	ld b,l			;beff	45		E
	ld d,d			;bf00	52		R
	jr nz,lbf57h		;bf01	20 54		  T
	ld c,b			;bf03	48		H
	ld d,d			;bf04	52		R
	ld b,l			;bf05	45		E
	ld b,c			;bf06	41		A
	ld d,h			;bf07	54		T
	ld b,l			;bf08	45		E
	ld c,(hl)		;bf09	4e		N
	ld b,h			;bf0a	44		D
	nop			;bf0b	00		.
	jr nz,lbefeh		;bf0c	20 f0		  .
	ld c,a			;bf0e	4f		O
	ld d,l			;bf0f	55		U
	ld d,d			;bf10	52		R
	jr nz,lbf5ah		;bf11	20 47		  G
	ld b,c			;bf13	41		A
lbf14h:
	ld c,h			;bf14	4c		L
	ld b,c			;bf15	41		A
	ld e,b			;bf16	58		X
	ld e,c			;bf17	59		Y
	nop			;bf18	00		.
	inc d			;bf19	14		.
	call m,02020h		;bf1a	fc 20 20	.    
	jr nz,lbf3fh		;bf1d	20 20		   
lbf1fh:
	jr nz,lbf41h		;bf1f	20 20		   
	jr nz,lbf43h		;bf21	20 20		   
	jr nz,lbf45h		;bf23	20 20		   
	jr nz,lbf47h		;bf25	20 20		   
	jr nz,lbf49h		;bf27	20 20		   
	jr nz,lbf4bh		;bf29	20 20		   
	nop			;bf2b	00		.
	nop			;bf2c	00		.
	nop			;bf2d	00		.
	rst 38h			;bf2e	ff		.
	rst 38h			;bf2f	ff		.
	rst 38h			;bf30	ff		.
lbf31h:
	rst 38h			;bf31	ff		.
	rst 38h			;bf32	ff		.
	rst 38h			;bf33	ff		.
	rst 38h			;bf34	ff		.
	rst 38h			;bf35	ff		.
	rst 38h			;bf36	ff		.
	rst 38h			;bf37	ff		.
	rst 38h			;bf38	ff		.
	rst 38h			;bf39	ff		.
	rst 38h			;bf3a	ff		.
	rst 38h			;bf3b	ff		.
	rst 38h			;bf3c	ff		.
	rst 38h			;bf3d	ff		.
	rst 38h			;bf3e	ff		.
lbf3fh:
	rst 38h			;bf3f	ff		.
	rst 38h			;bf40	ff		.
lbf41h:
	rst 38h			;bf41	ff		.
	rst 38h			;bf42	ff		.
lbf43h:
	rst 38h			;bf43	ff		.
	rst 38h			;bf44	ff		.
lbf45h:
	rst 38h			;bf45	ff		.
lbf46h:
	rst 38h			;bf46	ff		.
lbf47h:
	rst 38h			;bf47	ff		.
	rst 38h			;bf48	ff		.
lbf49h:
	rst 38h			;bf49	ff		.
	rst 38h			;bf4a	ff		.
lbf4bh:
	rst 38h			;bf4b	ff		.
	rst 38h			;bf4c	ff		.
	rst 38h			;bf4d	ff		.
	rst 38h			;bf4e	ff		.
	rst 38h			;bf4f	ff		.
	rst 38h			;bf50	ff		.
	rst 38h			;bf51	ff		.
	rst 38h			;bf52	ff		.
	rst 38h			;bf53	ff		.
	rst 38h			;bf54	ff		.
	rst 38h			;bf55	ff		.
	rst 38h			;bf56	ff		.
lbf57h:
	rst 38h			;bf57	ff		.
	rst 38h			;bf58	ff		.
	rst 38h			;bf59	ff		.
lbf5ah:
	rst 38h			;bf5a	ff		.
	rst 38h			;bf5b	ff		.
	rst 38h			;bf5c	ff		.
	rst 38h			;bf5d	ff		.
	rst 38h			;bf5e	ff		.
	rst 38h			;bf5f	ff		.
	rst 38h			;bf60	ff		.
	rst 38h			;bf61	ff		.
	rst 38h			;bf62	ff		.
	rst 38h			;bf63	ff		.
	rst 38h			;bf64	ff		.
	rst 38h			;bf65	ff		.
	rst 38h			;bf66	ff		.
	rst 38h			;bf67	ff		.
	rst 38h			;bf68	ff		.
	rst 38h			;bf69	ff		.
	rst 38h			;bf6a	ff		.
	rst 38h			;bf6b	ff		.
	rst 38h			;bf6c	ff		.
	rst 38h			;bf6d	ff		.
	rst 38h			;bf6e	ff		.
	rst 38h			;bf6f	ff		.
	rst 38h			;bf70	ff		.
	rst 38h			;bf71	ff		.
	rst 38h			;bf72	ff		.
	rst 38h			;bf73	ff		.
	rst 38h			;bf74	ff		.
	rst 38h			;bf75	ff		.
	rst 38h			;bf76	ff		.
	rst 38h			;bf77	ff		.
	rst 38h			;bf78	ff		.
	rst 38h			;bf79	ff		.
	rst 38h			;bf7a	ff		.
	rst 38h			;bf7b	ff		.
	rst 38h			;bf7c	ff		.
	rst 38h			;bf7d	ff		.
	rst 38h			;bf7e	ff		.
	rst 38h			;bf7f	ff		.
	rst 38h			;bf80	ff		.
	rst 38h			;bf81	ff		.
	rst 38h			;bf82	ff		.
	rst 38h			;bf83	ff		.
	rst 38h			;bf84	ff		.
	rst 38h			;bf85	ff		.
	rst 38h			;bf86	ff		.
	rst 38h			;bf87	ff		.
	rst 38h			;bf88	ff		.
	rst 38h			;bf89	ff		.
	rst 38h			;bf8a	ff		.
	rst 38h			;bf8b	ff		.
	rst 38h			;bf8c	ff		.
	rst 38h			;bf8d	ff		.
	rst 38h			;bf8e	ff		.
	rst 38h			;bf8f	ff		.
	rst 38h			;bf90	ff		.
	rst 38h			;bf91	ff		.
	rst 38h			;bf92	ff		.
	rst 38h			;bf93	ff		.
	rst 38h			;bf94	ff		.
	rst 38h			;bf95	ff		.
	rst 38h			;bf96	ff		.
	rst 38h			;bf97	ff		.
	rst 38h			;bf98	ff		.
	rst 38h			;bf99	ff		.
	rst 38h			;bf9a	ff		.
	rst 38h			;bf9b	ff		.
	rst 38h			;bf9c	ff		.
	rst 38h			;bf9d	ff		.
	rst 38h			;bf9e	ff		.
	rst 38h			;bf9f	ff		.
	rst 38h			;bfa0	ff		.
	rst 38h			;bfa1	ff		.
	rst 38h			;bfa2	ff		.
	rst 38h			;bfa3	ff		.
	rst 38h			;bfa4	ff		.
	rst 38h			;bfa5	ff		.
	rst 38h			;bfa6	ff		.
	rst 38h			;bfa7	ff		.
	rst 38h			;bfa8	ff		.
	rst 38h			;bfa9	ff		.
	rst 38h			;bfaa	ff		.
	rst 38h			;bfab	ff		.
	rst 38h			;bfac	ff		.
	rst 38h			;bfad	ff		.
	rst 38h			;bfae	ff		.
	rst 38h			;bfaf	ff		.
	rst 38h			;bfb0	ff		.
	rst 38h			;bfb1	ff		.
	rst 38h			;bfb2	ff		.
	rst 38h			;bfb3	ff		.
	rst 38h			;bfb4	ff		.
	rst 38h			;bfb5	ff		.
	rst 38h			;bfb6	ff		.
	rst 38h			;bfb7	ff		.
	rst 38h			;bfb8	ff		.
	rst 38h			;bfb9	ff		.
	rst 38h			;bfba	ff		.
	rst 38h			;bfbb	ff		.
	rst 38h			;bfbc	ff		.
	rst 38h			;bfbd	ff		.
	rst 38h			;bfbe	ff		.
	rst 38h			;bfbf	ff		.
	rst 38h			;bfc0	ff		.
	rst 38h			;bfc1	ff		.
	rst 38h			;bfc2	ff		.
	rst 38h			;bfc3	ff		.
	rst 38h			;bfc4	ff		.
	rst 38h			;bfc5	ff		.
	rst 38h			;bfc6	ff		.
	rst 38h			;bfc7	ff		.
	rst 38h			;bfc8	ff		.
	rst 38h			;bfc9	ff		.
	rst 38h			;bfca	ff		.
	rst 38h			;bfcb	ff		.
	rst 38h			;bfcc	ff		.
	rst 38h			;bfcd	ff		.
	rst 38h			;bfce	ff		.
	rst 38h			;bfcf	ff		.
	rst 38h			;bfd0	ff		.
	rst 38h			;bfd1	ff		.
	rst 38h			;bfd2	ff		.
	rst 38h			;bfd3	ff		.
	rst 38h			;bfd4	ff		.
	rst 38h			;bfd5	ff		.
	rst 38h			;bfd6	ff		.
	rst 38h			;bfd7	ff		.
	rst 38h			;bfd8	ff		.
	rst 38h			;bfd9	ff		.
	rst 38h			;bfda	ff		.
	rst 38h			;bfdb	ff		.
	rst 38h			;bfdc	ff		.
	rst 38h			;bfdd	ff		.
	rst 38h			;bfde	ff		.
	rst 38h			;bfdf	ff		.
	rst 38h			;bfe0	ff		.
	rst 38h			;bfe1	ff		.
	rst 38h			;bfe2	ff		.
	rst 38h			;bfe3	ff		.
	rst 38h			;bfe4	ff		.
	rst 38h			;bfe5	ff		.
	rst 38h			;bfe6	ff		.
	rst 38h			;bfe7	ff		.
	rst 38h			;bfe8	ff		.
	rst 38h			;bfe9	ff		.
	rst 38h			;bfea	ff		.
	rst 38h			;bfeb	ff		.
	rst 38h			;bfec	ff		.
	rst 38h			;bfed	ff		.
	rst 38h			;bfee	ff		.
	rst 38h			;bfef	ff		.
	rst 38h			;bff0	ff		.
	rst 38h			;bff1	ff		.
	rst 38h			;bff2	ff		.
	rst 38h			;bff3	ff		.
	rst 38h			;bff4	ff		.
	rst 38h			;bff5	ff		.
	rst 38h			;bff6	ff		.
	rst 38h			;bff7	ff		.
	rst 38h			;bff8	ff		.
	rst 38h			;bff9	ff		.
	rst 38h			;bffa	ff		.
	rst 38h			;bffb	ff		.
	rst 38h			;bffc	ff		.
	rst 38h			;bffd	ff		.
	rst 38h			;bffe	ff		.
	rst 38h			;bfff	ff		.
