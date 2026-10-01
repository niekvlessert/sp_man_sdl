; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank08_A000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank08.bin

	org 0a000h

	sbc a,d			;a000	9a		.
	dec de			;a001	1b		.
	sub a			;a002	97		.
	sbc a,b			;a003	98		.
	sbc a,e			;a004	9b		.
	sbc a,h			;a005	9c		.
	inc e			;a006	1c		.
	sbc a,l			;a007	9d		.
	sbc a,(hl)		;a008	9e		.
	sbc a,c			;a009	99		.
	sbc a,d			;a00a	9a		.
	dec de			;a00b	1b		.
	sub a			;a00c	97		.
	ld l,a			;a00d	6f		o
	sbc a,e			;a00e	9b		.
	sbc a,h			;a00f	9c		.
	rst 30h			;a010	f7		.
	nop			;a011	00		.
	add hl,bc		;a012	09		.
	dec b			;a013	05		.
	ld (bc),a		;a014	02		.
	xor (hl)		;a015	ae		.
	xor a			;a016	af		.
	sbc a,c			;a017	99		.
	sbc a,d			;a018	9a		.
	dec de			;a019	1b		.
	sub a			;a01a	97		.
	sbc a,b			;a01b	98		.
	sbc a,e			;a01c	9b		.
	sbc a,h			;a01d	9c		.
	inc e			;a01e	1c		.
	sbc a,l			;a01f	9d		.
	sbc a,(hl)		;a020	9e		.
	sbc a,c			;a021	99		.
	sbc a,d			;a022	9a		.
	dec de			;a023	1b		.
	sub a			;a024	97		.
	sbc a,b			;a025	98		.
	sbc a,e			;a026	9b		.
	sbc a,h			;a027	9c		.
	inc e			;a028	1c		.
	sbc a,l			;a029	9d		.
	sbc a,(hl)		;a02a	9e		.
	sbc a,c			;a02b	99		.
	sbc a,d			;a02c	9a		.
	dec de			;a02d	1b		.
	sub a			;a02e	97		.
	sbc a,b			;a02f	98		.
	sbc a,e			;a030	9b		.
	sbc a,h			;a031	9c		.
	inc e			;a032	1c		.
	sbc a,l			;a033	9d		.
	sbc a,(hl)		;a034	9e		.
	sbc a,c			;a035	99		.
	sbc a,d			;a036	9a		.
	dec de			;a037	1b		.
	sub a			;a038	97		.
	ld l,a			;a039	6f		o
	sbc a,e			;a03a	9b		.
	sbc a,h			;a03b	9c		.
	inc e			;a03c	1c		.
	sbc a,l			;a03d	9d		.
	sbc a,(hl)		;a03e	9e		.
	scf			;a03f	37		7
	jr nc,la042h		;a040	30 00		0 .
la042h:
	nop			;a042	00		.
	ld bc,00605h		;a043	01 05 06	. . .
	xor e			;a046	ab		.
	xor h			;a047	ac		.
	xor l			;a048	ad		.
	sbc a,h			;a049	9c		.
	nop			;a04a	00		.
	nop			;a04b	00		.
	ld (bc),a		;a04c	02		.
	dec b			;a04d	05		.
	dec de			;a04e	1b		.
	sub a			;a04f	97		.
	ld l,a			;a050	6f		o
	sbc a,c			;a051	99		.
	sbc a,d			;a052	9a		.
	ld b,0abh		;a053	06 ab		. .
	xor h			;a055	ac		.
	xor l			;a056	ad		.
	sbc a,h			;a057	9c		.
	nop			;a058	00		.
	nop			;a059	00		.
	inc bc			;a05a	03		.
	dec b			;a05b	05		.
	inc e			;a05c	1c		.
	sbc a,l			;a05d	9d		.
	sbc a,(hl)		;a05e	9e		.
	xor l			;a05f	ad		.
	sbc a,h			;a060	9c		.
	dec de			;a061	1b		.
	sub a			;a062	97		.
	ld l,a			;a063	6f		o
	sbc a,c			;a064	99		.
	sbc a,d			;a065	9a		.
	ld b,0abh		;a066	06 ab		. .
	xor h			;a068	ac		.
	xor l			;a069	ad		.
	sbc a,h			;a06a	9c		.
	nop			;a06b	00		.
	nop			;a06c	00		.
	inc b			;a06d	04		.
	dec b			;a06e	05		.
	dec de			;a06f	1b		.
	sub a			;a070	97		.
	ld l,a			;a071	6f		o
	sbc a,c			;a072	99		.
	sbc a,d			;a073	9a		.
	inc e			;a074	1c		.
	sbc a,l			;a075	9d		.
	sbc a,(hl)		;a076	9e		.
	xor l			;a077	ad		.
	sbc a,h			;a078	9c		.
	dec de			;a079	1b		.
	sub a			;a07a	97		.
	ld l,a			;a07b	6f		o
	sbc a,c			;a07c	99		.
	sbc a,d			;a07d	9a		.
	ld b,0abh		;a07e	06 ab		. .
	xor h			;a080	ac		.
	xor l			;a081	ad		.
	sbc a,h			;a082	9c		.
	nop			;a083	00		.
	nop			;a084	00		.
	dec b			;a085	05		.
	dec b			;a086	05		.
	inc e			;a087	1c		.
	sbc a,l			;a088	9d		.
	sbc a,(hl)		;a089	9e		.
	xor l			;a08a	ad		.
	sbc a,h			;a08b	9c		.
	dec de			;a08c	1b		.
	sub a			;a08d	97		.
	ld l,a			;a08e	6f		o
	sbc a,c			;a08f	99		.
	sbc a,d			;a090	9a		.
	inc e			;a091	1c		.
	sbc a,l			;a092	9d		.
	sbc a,(hl)		;a093	9e		.
	xor l			;a094	ad		.
	sbc a,h			;a095	9c		.
	dec de			;a096	1b		.
	sub a			;a097	97		.
	ld l,a			;a098	6f		o
	sbc a,c			;a099	99		.
	sbc a,d			;a09a	9a		.
	ld b,0abh		;a09b	06 ab		. .
	xor h			;a09d	ac		.
	xor l			;a09e	ad		.
	sbc a,h			;a09f	9c		.
	nop			;a0a0	00		.
	nop			;a0a1	00		.
	ld b,005h		;a0a2	06 05		. .
	dec de			;a0a4	1b		.
	ld l,(hl)		;a0a5	6e		n
	ld l,a			;a0a6	6f		o
	sbc a,c			;a0a7	99		.
	sbc a,d			;a0a8	9a		.
	inc e			;a0a9	1c		.
	sbc a,l			;a0aa	9d		.
	sbc a,(hl)		;a0ab	9e		.
	xor l			;a0ac	ad		.
	sbc a,h			;a0ad	9c		.
	dec de			;a0ae	1b		.
	sub a			;a0af	97		.
	ld l,a			;a0b0	6f		o
	sbc a,c			;a0b1	99		.
	sbc a,d			;a0b2	9a		.
	inc e			;a0b3	1c		.
	sbc a,l			;a0b4	9d		.
	sbc a,(hl)		;a0b5	9e		.
	xor l			;a0b6	ad		.
	sbc a,h			;a0b7	9c		.
	dec de			;a0b8	1b		.
	sub a			;a0b9	97		.
	ld l,a			;a0ba	6f		o
	sbc a,c			;a0bb	99		.
	sbc a,d			;a0bc	9a		.
	ld b,0abh		;a0bd	06 ab		. .
	xor h			;a0bf	ac		.
	xor l			;a0c0	ad		.
	sbc a,h			;a0c1	9c		.
	nop			;a0c2	00		.
	nop			;a0c3	00		.
	rlca			;a0c4	07		.
	dec b			;a0c5	05		.
	inc e			;a0c6	1c		.
	sbc a,l			;a0c7	9d		.
	sbc a,(hl)		;a0c8	9e		.
	xor l			;a0c9	ad		.
	sbc a,h			;a0ca	9c		.
	dec de			;a0cb	1b		.
	ld l,(hl)		;a0cc	6e		n
	ld l,a			;a0cd	6f		o
	sbc a,c			;a0ce	99		.
	sbc a,d			;a0cf	9a		.
	inc e			;a0d0	1c		.
	sbc a,l			;a0d1	9d		.
	sbc a,(hl)		;a0d2	9e		.
	xor l			;a0d3	ad		.
	sbc a,h			;a0d4	9c		.
	dec de			;a0d5	1b		.
	sub a			;a0d6	97		.
	ld l,a			;a0d7	6f		o
	sbc a,c			;a0d8	99		.
	sbc a,d			;a0d9	9a		.
	inc e			;a0da	1c		.
	sbc a,l			;a0db	9d		.
	sbc a,(hl)		;a0dc	9e		.
	xor l			;a0dd	ad		.
	sbc a,h			;a0de	9c		.
	dec de			;a0df	1b		.
	sub a			;a0e0	97		.
	ld l,a			;a0e1	6f		o
	sbc a,c			;a0e2	99		.
	sbc a,d			;a0e3	9a		.
	ld b,0abh		;a0e4	06 ab		. .
	xor h			;a0e6	ac		.
	xor l			;a0e7	ad		.
	sbc a,h			;a0e8	9c		.
	nop			;a0e9	00		.
	nop			;a0ea	00		.
	rlca			;a0eb	07		.
	inc b			;a0ec	04		.
	ld h,(hl)		;a0ed	66		f
	ld h,a			;a0ee	67		g
	ld h,b			;a0ef	60		`
	ld h,c			;a0f0	61		a
	ld l,b			;a0f1	68		h
	ld l,c			;a0f2	69		i
	ld h,d			;a0f3	62		b
	ld h,e			;a0f4	63		c
	ld (bc),a		;a0f5	02		.
	ld l,d			;a0f6	6a		j
	jp z,00464h		;a0f7	ca 64 04	. d .
	ret			;a0fa	c9		.
	ret z			;a0fb	c8		.
	push bc			;a0fc	c5		.
	dec b			;a0fd	05		.
	adc a,d			;a0fe	8a		.
	call z,08884h		;a0ff	cc 84 88	. . .
	adc a,c			;a102	89		.
	add a,d			;a103	82		.
	add a,e			;a104	83		.
	add a,(hl)		;a105	86		.
	add a,a			;a106	87		.
	add a,b			;a107	80		.
	add a,c			;a108	81		.
	nop			;a109	00		.
	nop			;a10a	00		.
	rlca			;a10b	07		.
	inc b			;a10c	04		.
	ld l,e			;a10d	6b		k
	ld l,h			;a10e	6c		l
	ld h,b			;a10f	60		`
	ld h,c			;a110	61		a
	ld l,l			;a111	6d		m
	ld l,(hl)		;a112	6e		n
	ld h,d			;a113	62		b
	ld h,e			;a114	63		c
	inc bc			;a115	03		.
	jp z,065cbh		;a116	ca cb 65	. . e
	ret			;a119	c9		.
	ret z			;a11a	c8		.
	rst 0			;a11b	c7		.
	add a,003h		;a11c	c6 03		. .
	call z,085cdh		;a11e	cc cd 85	. . .
	adc a,l			;a121	8d		.
	adc a,(hl)		;a122	8e		.
	add a,d			;a123	82		.
	add a,e			;a124	83		.
	adc a,e			;a125	8b		.
	adc a,h			;a126	8c		.
	add a,b			;a127	80		.
	add a,c			;a128	81		.
	nop			;a129	00		.
	nop			;a12a	00		.
	rlca			;a12b	07		.
	inc b			;a12c	04		.
	ld l,a			;a12d	6f		o
	ld (hl),b		;a12e	70		p
	ld h,b			;a12f	60		`
	ld h,c			;a130	61		a
	ld (hl),c		;a131	71		q
	ld (hl),d		;a132	72		r
	ld h,d			;a133	62		b
	ld h,e			;a134	63		c
	ld (hl),e		;a135	73		s
	ld (hl),h		;a136	74		t
	ld (hl),l		;a137	75		u
	ld h,h			;a138	64		d
	ld (bc),a		;a139	02		.
	ex af,af'		;a13a	08		.
	ret			;a13b	c9		.
	push bc			;a13c	c5		.
	sub e			;a13d	93		.
	sub h			;a13e	94		.
	sub l			;a13f	95		.
	add a,h			;a140	84		.
	sub c			;a141	91		.
	sub d			;a142	92		.
	add a,d			;a143	82		.
	add a,e			;a144	83		.
	adc a,a			;a145	8f		.
	sub b			;a146	90		.
	add a,b			;a147	80		.
	add a,c			;a148	81		.
	nop			;a149	00		.
	nop			;a14a	00		.
	dec c			;a14b	0d		.
	ex af,af'		;a14c	08		.
	dec hl			;a14d	2b		+
	inc l			;a14e	2c		,
	ld d,(hl)		;a14f	56		V
	ld d,a			;a150	57		W
	add a,e			;a151	83		.
	sbc a,c			;a152	99		.
	cp (hl)			;a153	be		.
	cp l			;a154	bd		.
	add a,l			;a155	85		.
	add a,(hl)		;a156	86		.
	or e			;a157	b3		.
	add a,a			;a158	87		.
	cp a			;a159	bf		.
	ld e,c			;a15a	59		Y
	ld e,h			;a15b	5c		\
	ld e,l			;a15c	5d		]
	and e			;a15d	a3		.
	ld d,c			;a15e	51		Q
	add hl,hl		;a15f	29		)
	and l			;a160	a5		.
	sbc a,b			;a161	98		.
	cp h			;a162	bc		.
	cp (hl)			;a163	be		.
	and e			;a164	a3		.
	dec b			;a165	05		.
	ld b,0bch		;a166	06 bc		. .
	cp l			;a168	bd		.
	cp l			;a169	bd		.
	cp (hl)			;a16a	be		.
	ld (bc),a		;a16b	02		.
	dec b			;a16c	05		.
	rlca			;a16d	07		.
	ld b,001h		;a16e	06 01		. .
	dec b			;a170	05		.
	ld bc,00302h		;a171	01 02 03	. . .
	ld (bc),a		;a174	02		.
	ld (bc),a		;a175	02		.
	inc b			;a176	04		.
	rlca			;a177	07		.
	ld b,003h		;a178	06 03		. .
	inc b			;a17a	04		.
	ld b,004h		;a17b	06 04		. .
	inc bc			;a17d	03		.
	rlca			;a17e	07		.
	dec b			;a17f	05		.
	rlca			;a180	07		.
	ld (bc),a		;a181	02		.
	inc b			;a182	04		.
	ld (bc),a		;a183	02		.
	inc b			;a184	04		.
	ld b,003h		;a185	06 03		. .
	dec b			;a187	05		.
	inc b			;a188	04		.
	rlca			;a189	07		.
	ld (bc),a		;a18a	02		.
	inc bc			;a18b	03		.
	dec b			;a18c	05		.
	ld (bc),a		;a18d	02		.
	inc b			;a18e	04		.
	inc bc			;a18f	03		.
	rlca			;a190	07		.
	inc b			;a191	04		.
	inc bc			;a192	03		.
	ld b,007h		;a193	06 07		. .
	rlca			;a195	07		.
	ld b,001h		;a196	06 01		. .
	and e			;a198	a3		.
	cp e			;a199	bb		.
	inc bc			;a19a	03		.
	ld b,004h		;a19b	06 04		. .
	and e			;a19d	a3		.
	sbc a,c			;a19e	99		.
	and b			;a19f	a0		.
	and l			;a1a0	a5		.
	and (hl)		;a1a1	a6		.
	and e			;a1a2	a3		.
	or b			;a1a3	b0		.
	xor a			;a1a4	af		.
	add a,l			;a1a5	85		.
	add a,(hl)		;a1a6	86		.
sub_a1a7h:
	or b			;a1a7	b0		.
	add a,a			;a1a8	87		.
	cp e			;a1a9	bb		.
	cp l			;a1aa	bd		.
	adc a,l			;a1ab	8d		.
	adc a,(hl)		;a1ac	8e		.
	dec hl			;a1ad	2b		+
	inc l			;a1ae	2c		,
	adc a,b			;a1af	88		.
	ld d,a			;a1b0	57		W
	adc a,a			;a1b1	8f		.
	cp h			;a1b2	bc		.
	cp (hl)			;a1b3	be		.
	cp a			;a1b4	bf		.
	nop			;a1b5	00		.
	nop			;a1b6	00		.
	rlca			;a1b7	07		.
	ex af,af'		;a1b8	08		.
	nop			;a1b9	00		.
	nop			;a1ba	00		.
	nop			;a1bb	00		.
	nop			;a1bc	00		.
	ld (bc),a		;a1bd	02		.
	ld (de),a		;a1be	12		.
	ld d,018h		;a1bf	16 18		. .
	nop			;a1c1	00		.
	ld b,010h		;a1c2	06 10		. .
	inc a			;a1c4	3c		<
	ld c,(hl)		;a1c5	4e		N
	dec a			;a1c6	3d		=
	ccf			;a1c7	3f		?
	inc sp			;a1c8	33		3
	nop			;a1c9	00		.
	ld de,02220h		;a1ca	11 20 22	.   "
	ld hl,(0303eh)		;a1cd	2a 3e 30	* > 0
	ld h,007h		;a1d0	26 07		& .
	ld b,a			;a1d2	47		G
	dec e			;a1d3	1d		.
	ld d,h			;a1d4	54		T
	dec hl			;a1d5	2b		+
	ld b,b			;a1d6	40		@
	scf			;a1d7	37		7
	inc sp			;a1d8	33		3
	ex af,af'		;a1d9	08		.
	ld c,b			;a1da	48		H
	ld e,024h		;a1db	1e 24		. $
	ld c,h			;a1dd	4c		L
	ld (hl),039h		;a1de	36 39		6 9
	inc sp			;a1e0	33		3
	add hl,bc		;a1e1	09		.
	ld b,h			;a1e2	44		D
	ld hl,02f56h		;a1e3	21 56 2f	! V /
	ld sp,00032h		;a1e6	31 32 00	1 2 .
	nop			;a1e9	00		.
	nop			;a1ea	00		.
	inc bc			;a1eb	03		.
	rla			;a1ec	17		.
	inc d			;a1ed	14		.
	inc (hl)		;a1ee	34		4
	nop			;a1ef	00		.
	nop			;a1f0	00		.
	nop			;a1f1	00		.
	nop			;a1f2	00		.
	rlca			;a1f3	07		.
	ex af,af'		;a1f4	08		.
	nop			;a1f5	00		.
	nop			;a1f6	00		.
	dec bc			;a1f7	0b		.
	inc c			;a1f8	0c		.
	dec b			;a1f9	05		.
	dec (hl)		;a1fa	35		5
	ld d,c			;a1fb	51		Q
	nop			;a1fc	00		.
	nop			;a1fd	00		.
	ld a,(bc)		;a1fe	0a		.
	ld b,e			;a1ff	43		C
	ld d,e			;a200	53		S
	ld b,c			;a201	41		A
	ld b,(hl)		;a202	46		F
	ld a,(00d27h)		;a203	3a 27 0d	: ' .
	ld c,l			;a206	4d		M
	dec de			;a207	1b		.
	inc hl			;a208	23		#
	dec h			;a209	25		%
	ld b,d			;a20a	42		B
	inc l			;a20b	2c		,
	jr z,la21ch		;a20c	28 0e		( .
	ld c,c			;a20e	49		I
	inc e			;a20f	1c		.
	ld c,a			;a210	4f		O
	ld c,d			;a211	4a		J
	jr c,la266h		;a212	38 52		8 R
	inc sp			;a214	33		3
	rrca			;a215	0f		.
	ld a,(de)		;a216	1a		.
	rra			;a217	1f		.
	ld d,l			;a218	55		U
	ld c,e			;a219	4b		K
	add hl,hl		;a21a	29		)
	ld b,l			;a21b	45		E
la21ch:
	inc sp			;a21c	33		3
	nop			;a21d	00		.
	inc b			;a21e	04		.
	ld bc,03b50h		;a21f	01 50 3b	. P ;
	ld l,02dh		;a222	2e 2d		. -
	nop			;a224	00		.
	nop			;a225	00		.
	nop			;a226	00		.
	nop			;a227	00		.
	nop			;a228	00		.
	dec d			;a229	15		.
	add hl,de		;a22a	19		.
	inc de			;a22b	13		.
	nop			;a22c	00		.
	nop			;a22d	00		.
	nop			;a22e	00		.
	inc bc			;a22f	03		.
	dec b			;a230	05		.
	and h			;a231	a4		.
	and (hl)		;a232	a6		.
	and e			;a233	a3		.
	call nz,sub_a1a7h	;a234	c4 a7 a1	. . .
	jp 0c8c6h		;a237	c3 c6 c8	. . .
	ld d,a			;a23a	57		W
	and l			;a23b	a5		.
	push bc			;a23c	c5		.
	rst 0			;a23d	c7		.
	ret			;a23e	c9		.
	ld d,(hl)		;a23f	56		V
	nop			;a240	00		.
	nop			;a241	00		.
	inc bc			;a242	03		.
	dec b			;a243	05		.
	and l			;a244	a5		.
	push bc			;a245	c5		.
	rst 0			;a246	c7		.
	ret			;a247	c9		.
	ld d,(hl)		;a248	56		V
	and c			;a249	a1		.
	jp 0c8c6h		;a24a	c3 c6 c8	. . .
	ld d,a			;a24d	57		W
	and h			;a24e	a4		.
	and (hl)		;a24f	a6		.
	and e			;a250	a3		.
	call nz,000a7h		;a251	c4 a7 00	. . .
	nop			;a254	00		.
	djnz la262h		;a255	10 0b		. .
	nop			;a257	00		.
	nop			;a258	00		.
	ld bc,02120h		;a259	01 20 21	.   !
	ld (02423h),hl		;a25c	22 23 24	" # $
	dec h			;a25f	25		%
	ld h,027h		;a260	26 27		& '
la262h:
	nop			;a262	00		.
	nop			;a263	00		.
	nop			;a264	00		.
	inc c			;a265	0c		.
la266h:
	add hl,hl		;a266	29		)
	ld hl,(02c2bh)		;a267	2a 2b 2c	* + ,
	dec l			;a26a	2d		-
	ld l,02fh		;a26b	2e 2f		. /
	ld c,00eh		;a26d	0e 0e		. .
	dec (hl)		;a26f	35		5
	ld (hl),037h		;a270	36 37		6 7
	jr c,la2adh		;a272	38 39		8 9
	ld a,(03c3bh)		;a274	3a 3b 3c	: ; <
	dec a			;a277	3d		=
	sbc a,d			;a278	9a		.
	sbc a,d			;a279	9a		.
	xor e			;a27a	ab		.
	xor l			;a27b	ad		.
	ld b,(hl)		;a27c	46		F
	ld b,a			;a27d	47		G
	ld c,b			;a27e	48		H
	ld c,c			;a27f	49		I
	ld c,d			;a280	4a		J
	ld c,e			;a281	4b		K
	ld c,h			;a282	4c		L
	sbc a,e			;a283	9b		.
	sbc a,e			;a284	9b		.
	xor e			;a285	ab		.
	xor l			;a286	ad		.
	ld d,(hl)		;a287	56		V
	ld d,a			;a288	57		W
	ld e,b			;a289	58		X
	ld e,c			;a28a	59		Y
	ld e,d			;a28b	5a		Z
	ld e,e			;a28c	5b		[
	ld e,h			;a28d	5c		\
	sbc a,h			;a28e	9c		.
	sbc a,h			;a28f	9c		.
	xor e			;a290	ab		.
	xor l			;a291	ad		.
	ld h,a			;a292	67		g
	ld l,b			;a293	68		h
	ld l,c			;a294	69		i
	ld l,d			;a295	6a		j
	ld l,d			;a296	6a		j
	ld l,e			;a297	6b		k
	ld l,h			;a298	6c		l
	xor b			;a299	a8		.
	xor b			;a29a	a8		.
	xor e			;a29b	ab		.
	xor l			;a29c	ad		.
	ld (hl),a		;a29d	77		w
	xor (hl)		;a29e	ae		.
	add a,l			;a29f	85		.
	add a,(hl)		;a2a0	86		.
	add a,a			;a2a1	87		.
	xor d			;a2a2	aa		.
	or (hl)			;a2a3	b6		.
	and a			;a2a4	a7		.
	and a			;a2a5	a7		.
	xor e			;a2a6	ab		.
	xor l			;a2a7	ad		.
	xor h			;a2a8	ac		.
	xor a			;a2a9	af		.
	add a,h			;a2aa	84		.
	adc a,b			;a2ab	88		.
	adc a,c			;a2ac	89		.
la2adh:
	adc a,d			;a2ad	8a		.
	xor a			;a2ae	af		.
	and (hl)		;a2af	a6		.
	and (hl)		;a2b0	a6		.
	xor e			;a2b1	ab		.
	xor l			;a2b2	ad		.
	xor h			;a2b3	ac		.
	xor (hl)		;a2b4	ae		.
	add a,h			;a2b5	84		.
	adc a,b			;a2b6	88		.
	adc a,c			;a2b7	89		.
	add a,a			;a2b8	87		.
	xor (hl)		;a2b9	ae		.
	and l			;a2ba	a5		.
	and l			;a2bb	a5		.
	xor e			;a2bc	ab		.
	xor l			;a2bd	ad		.
	ld (hl),a		;a2be	77		w
	xor a			;a2bf	af		.
	add a,l			;a2c0	85		.
	add a,(hl)		;a2c1	86		.
	add a,l			;a2c2	85		.
	adc a,d			;a2c3	8a		.
	or (hl)			;a2c4	b6		.
	sbc a,h			;a2c5	9c		.
	sbc a,h			;a2c6	9c		.
	xor e			;a2c7	ab		.
	xor l			;a2c8	ad		.
	ld h,a			;a2c9	67		g
	ld l,b			;a2ca	68		h
	ld l,c			;a2cb	69		i
	ld l,d			;a2cc	6a		j
	ld l,d			;a2cd	6a		j
	ld l,e			;a2ce	6b		k
	ld l,h			;a2cf	6c		l
	sbc a,e			;a2d0	9b		.
	sbc a,e			;a2d1	9b		.
	xor e			;a2d2	ab		.
	xor l			;a2d3	ad		.
	ld d,(hl)		;a2d4	56		V
	ld d,a			;a2d5	57		W
	ld e,b			;a2d6	58		X
	ld e,c			;a2d7	59		Y
	ld e,d			;a2d8	5a		Z
	ld e,e			;a2d9	5b		[
	ld e,h			;a2da	5c		\
	sbc a,d			;a2db	9a		.
	sbc a,d			;a2dc	9a		.
	xor e			;a2dd	ab		.
	xor l			;a2de	ad		.
	ld b,(hl)		;a2df	46		F
	ld b,a			;a2e0	47		G
	ld c,b			;a2e1	48		H
	ld c,c			;a2e2	49		I
	ld c,d			;a2e3	4a		J
	ld c,e			;a2e4	4b		K
	ld c,h			;a2e5	4c		L
	ld c,00eh		;a2e6	0e 0e		. .
	dec (hl)		;a2e8	35		5
	ld (hl),037h		;a2e9	36 37		6 7
	jr c,$+59		;a2eb	38 39		8 9
	ld a,(03c3bh)		;a2ed	3a 3b 3c	: ; <
	dec a			;a2f0	3d		=
	nop			;a2f1	00		.
	nop			;a2f2	00		.
	nop			;a2f3	00		.
	inc c			;a2f4	0c		.
	add hl,hl		;a2f5	29		)
	ld hl,(02c2bh)		;a2f6	2a 2b 2c	* + ,
	dec l			;a2f9	2d		-
	ld l,02fh		;a2fa	2e 2f		. /
	nop			;a2fc	00		.
	nop			;a2fd	00		.
	ld bc,02120h		;a2fe	01 20 21	.   !
	ld (02423h),hl		;a301	22 23 24	" # $
	dec h			;a304	25		%
	ld h,027h		;a305	26 27		& '
	nop			;a307	00		.
	nop			;a308	00		.
	rlca			;a309	07		.
	ex af,af'		;a30a	08		.
	nop			;a30b	00		.
	ld bc,00302h		;a30c	01 02 03	. . .
	nop			;a30f	00		.
	nop			;a310	00		.
	nop			;a311	00		.
	nop			;a312	00		.
	inc b			;a313	04		.
	jr nz,$+35		;a314	20 21		  !
	dec b			;a316	05		.
	nop			;a317	00		.
	nop			;a318	00		.
	nop			;a319	00		.
	nop			;a31a	00		.
	ld b,022h		;a31b	06 22		. "
	inc hl			;a31d	23		#
	inc h			;a31e	24		$
	rlca			;a31f	07		.
	nop			;a320	00		.
	nop			;a321	00		.
	nop			;a322	00		.
	ex af,af'		;a323	08		.
	dec h			;a324	25		%
	ld h,027h		;a325	26 27		& '
	add hl,bc		;a327	09		.
	nop			;a328	00		.
	nop			;a329	00		.
	nop			;a32a	00		.
	ld a,(bc)		;a32b	0a		.
	jr z,la357h		;a32c	28 29		( )
	ld hl,(00b2bh)		;a32e	2a 2b 0b	* + .
	nop			;a331	00		.
	nop			;a332	00		.
	nop			;a333	00		.
	inc l			;a334	2c		,
	dec l			;a335	2d		-
	ld l,02fh		;a336	2e 2f		. /
	inc c			;a338	0c		.
	nop			;a339	00		.
	nop			;a33a	00		.
	dec c			;a33b	0d		.
	jr nc,la36fh		;a33c	30 31		0 1
	ld (03433h),a		;a33e	32 33 34	2 3 4
	ld c,00fh		;a341	0e 0f		. .
	nop			;a343	00		.
	nop			;a344	00		.
	rlca			;a345	07		.
	ex af,af'		;a346	08		.
	dec c			;a347	0d		.
	jr nc,la37bh		;a348	30 31		0 1
	ld (03433h),a		;a34a	32 33 34	2 3 4
	ld c,00fh		;a34d	0e 0f		. .
	nop			;a34f	00		.
	inc l			;a350	2c		,
	dec l			;a351	2d		-
	ld l,02fh		;a352	2e 2f		. /
	inc c			;a354	0c		.
	nop			;a355	00		.
	nop			;a356	00		.
la357h:
	ld a,(bc)		;a357	0a		.
	jr z,la383h		;a358	28 29		( )
	ld hl,(00b2bh)		;a35a	2a 2b 0b	* + .
	nop			;a35d	00		.
	nop			;a35e	00		.
	ex af,af'		;a35f	08		.
	dec h			;a360	25		%
	ld h,027h		;a361	26 27		& '
	add hl,bc		;a363	09		.
	nop			;a364	00		.
	nop			;a365	00		.
	nop			;a366	00		.
	ld b,022h		;a367	06 22		. "
	inc hl			;a369	23		#
	inc h			;a36a	24		$
	rlca			;a36b	07		.
	nop			;a36c	00		.
	nop			;a36d	00		.
	nop			;a36e	00		.
la36fh:
	inc b			;a36f	04		.
	jr nz,$+35		;a370	20 21		  !
	dec b			;a372	05		.
	nop			;a373	00		.
	nop			;a374	00		.
	nop			;a375	00		.
	nop			;a376	00		.
	nop			;a377	00		.
	ld bc,00302h		;a378	01 02 03	. . .
la37bh:
	nop			;a37b	00		.
	nop			;a37c	00		.
	nop			;a37d	00		.
	nop			;a37e	00		.
	nop			;a37f	00		.
	nop			;a380	00		.
	djnz la38fh		;a381	10 0c		. .
la383h:
	jr z,la3adh		;a383	28 28		( (
	ld (bc),a		;a385	02		.
	inc bc			;a386	03		.
	inc b			;a387	04		.
	dec b			;a388	05		.
	nop			;a389	00		.
	nop			;a38a	00		.
	nop			;a38b	00		.
	nop			;a38c	00		.
	nop			;a38d	00		.
	nop			;a38e	00		.
la38fh:
	jr nc,la3c1h		;a38f	30 30		0 0
	ld sp,03332h		;a391	31 32 33	1 2 3
	inc (hl)		;a394	34		4
	ld b,007h		;a395	06 07		. .
	nop			;a397	00		.
	nop			;a398	00		.
	nop			;a399	00		.
	nop			;a39a	00		.
	ld a,03fh		;a39b	3e 3f		> ?
	ld b,b			;a39d	40		@
	ld b,c			;a39e	41		A
	ld b,d			;a39f	42		B
	ld b,e			;a3a0	43		C
	ld b,h			;a3a1	44		D
	ld b,l			;a3a2	45		E
	ex af,af'		;a3a3	08		.
	nop			;a3a4	00		.
	nop			;a3a5	00		.
	nop			;a3a6	00		.
	ld c,l			;a3a7	4d		M
	ld c,(hl)		;a3a8	4e		N
	ld c,a			;a3a9	4f		O
	ld d,b			;a3aa	50		P
	ld d,c			;a3ab	51		Q
	ld d,d			;a3ac	52		R
la3adh:
	ld d,e			;a3ad	53		S
	ld d,h			;a3ae	54		T
	ld d,l			;a3af	55		U
	add hl,bc		;a3b0	09		.
	nop			;a3b1	00		.
	nop			;a3b2	00		.
	ld e,l			;a3b3	5d		]
	ld e,(hl)		;a3b4	5e		^
	ld e,a			;a3b5	5f		_
	ld h,b			;a3b6	60		`
	ld h,c			;a3b7	61		a
	ld h,d			;a3b8	62		b
	ld h,e			;a3b9	63		c
	ld h,h			;a3ba	64		d
	ld h,l			;a3bb	65		e
	ld h,(hl)		;a3bc	66		f
	ld a,(bc)		;a3bd	0a		.
	nop			;a3be	00		.
	ld l,l			;a3bf	6d		m
	ld l,(hl)		;a3c0	6e		n
la3c1h:
	ld l,a			;a3c1	6f		o
	ld l,a			;a3c2	6f		o
	ld (hl),b		;a3c3	70		p
	ld (hl),c		;a3c4	71		q
	ld (hl),d		;a3c5	72		r
	ld (hl),e		;a3c6	73		s
	ld (hl),h		;a3c7	74		t
	ld (hl),l		;a3c8	75		u
	halt			;a3c9	76		v
	dec bc			;a3ca	0b		.
	ld a,d			;a3cb	7a		z
	ld a,e			;a3cc	7b		{
	ld a,h			;a3cd	7c		|
	ld a,h			;a3ce	7c		|
	ld a,l			;a3cf	7d		}
	ld a,(hl)		;a3d0	7e		~
	ld a,a			;a3d1	7f		.
	add a,c			;a3d2	81		.
	add a,d			;a3d3	82		.
	add a,e			;a3d4	83		.
	add a,e			;a3d5	83		.
	dec c			;a3d6	0d		.
	adc a,e			;a3d7	8b		.
	adc a,h			;a3d8	8c		.
	adc a,l			;a3d9	8d		.
	adc a,(hl)		;a3da	8e		.
	adc a,a			;a3db	8f		.
	sub b			;a3dc	90		.
	sub c			;a3dd	91		.
	xor d			;a3de	aa		.
	ld (hl),a		;a3df	77		w
	ld a,h			;a3e0	7c		|
	nop			;a3e1	00		.
	nop			;a3e2	00		.
	adc a,e			;a3e3	8b		.
	adc a,h			;a3e4	8c		.
	adc a,l			;a3e5	8d		.
	adc a,(hl)		;a3e6	8e		.
	adc a,a			;a3e7	8f		.
	sub b			;a3e8	90		.
	sub c			;a3e9	91		.
	xor d			;a3ea	aa		.
	ld (hl),a		;a3eb	77		w
	ld a,h			;a3ec	7c		|
	nop			;a3ed	00		.
	nop			;a3ee	00		.
	ld a,d			;a3ef	7a		z
	ld a,e			;a3f0	7b		{
	ld a,h			;a3f1	7c		|
	ld a,h			;a3f2	7c		|
	ld a,l			;a3f3	7d		}
	ld a,(hl)		;a3f4	7e		~
	ld a,a			;a3f5	7f		.
	add a,c			;a3f6	81		.
	add a,d			;a3f7	82		.
	add a,e			;a3f8	83		.
	add a,e			;a3f9	83		.
	dec c			;a3fa	0d		.
	ld l,l			;a3fb	6d		m
	ld l,(hl)		;a3fc	6e		n
	ld l,a			;a3fd	6f		o
	ld l,a			;a3fe	6f		o
	ld (hl),b		;a3ff	70		p
	ld (hl),c		;a400	71		q
	ld (hl),d		;a401	72		r
	ld (hl),e		;a402	73		s
	ld (hl),h		;a403	74		t
	ld (hl),l		;a404	75		u
	halt			;a405	76		v
	dec bc			;a406	0b		.
	ld e,l			;a407	5d		]
	ld e,(hl)		;a408	5e		^
	ld e,a			;a409	5f		_
	ld h,b			;a40a	60		`
	ld h,c			;a40b	61		a
	ld h,d			;a40c	62		b
	ld h,e			;a40d	63		c
	ld h,h			;a40e	64		d
	ld h,l			;a40f	65		e
	ld h,(hl)		;a410	66		f
	ld a,(bc)		;a411	0a		.
	nop			;a412	00		.
	ld c,l			;a413	4d		M
	ld c,(hl)		;a414	4e		N
	ld c,a			;a415	4f		O
	ld d,b			;a416	50		P
	ld d,c			;a417	51		Q
	ld d,d			;a418	52		R
	ld d,e			;a419	53		S
	ld d,h			;a41a	54		T
	ld d,l			;a41b	55		U
	add hl,bc		;a41c	09		.
	nop			;a41d	00		.
	nop			;a41e	00		.
	ld a,03fh		;a41f	3e 3f		> ?
	ld b,b			;a421	40		@
	ld b,c			;a422	41		A
	ld b,d			;a423	42		B
	ld b,e			;a424	43		C
	ld b,h			;a425	44		D
	ld b,l			;a426	45		E
	ex af,af'		;a427	08		.
	nop			;a428	00		.
	nop			;a429	00		.
	nop			;a42a	00		.
	jr nc,la45dh		;a42b	30 30		0 0
	ld sp,03332h		;a42d	31 32 33	1 2 3
	inc (hl)		;a430	34		4
	ld b,007h		;a431	06 07		. .
	nop			;a433	00		.
	nop			;a434	00		.
	nop			;a435	00		.
	nop			;a436	00		.
	jr z,la461h		;a437	28 28		( (
	ld (bc),a		;a439	02		.
	inc bc			;a43a	03		.
	inc b			;a43b	04		.
	dec b			;a43c	05		.
	nop			;a43d	00		.
	nop			;a43e	00		.
	nop			;a43f	00		.
	nop			;a440	00		.
	nop			;a441	00		.
	nop			;a442	00		.
	nop			;a443	00		.
	nop			;a444	00		.
	inc c			;a445	0c		.
	ld (bc),a		;a446	02		.
	rrca			;a447	0f		.
	rrca			;a448	0f		.
	sub d			;a449	92		.
	sub d			;a44a	92		.
	sub e			;a44b	93		.
	sub e			;a44c	93		.
	sbc a,l			;a44d	9d		.
	sbc a,l			;a44e	9d		.
	sbc a,(hl)		;a44f	9e		.
	sbc a,(hl)		;a450	9e		.
	sbc a,a			;a451	9f		.
	sbc a,a			;a452	9f		.
	xor c			;a453	a9		.
	xor c			;a454	a9		.
	xor b			;a455	a8		.
	xor b			;a456	a8		.
	and a			;a457	a7		.
	and a			;a458	a7		.
	and d			;a459	a2		.
	and d			;a45a	a2		.
	and c			;a45b	a1		.
	and c			;a45c	a1		.
la45dh:
	rrca			;a45d	0f		.
	rrca			;a45e	0f		.
	nop			;a45f	00		.
	nop			;a460	00		.
la461h:
	inc c			;a461	0c		.
	ld (bc),a		;a462	02		.
	djnz la475h		;a463	10 10		. .
	sub h			;a465	94		.
	sub h			;a466	94		.
	sub l			;a467	95		.
	sub l			;a468	95		.
	sub (hl)		;a469	96		.
	sub (hl)		;a46a	96		.
	xor c			;a46b	a9		.
	xor c			;a46c	a9		.
	xor b			;a46d	a8		.
	xor b			;a46e	a8		.
	and a			;a46f	a7		.
	and a			;a470	a7		.
	and b			;a471	a0		.
	and b			;a472	a0		.
	sub h			;a473	94		.
	sub h			;a474	94		.
la475h:
	sub e			;a475	93		.
	sub e			;a476	93		.
	sub d			;a477	92		.
	sub d			;a478	92		.
	djnz la48bh		;a479	10 10		. .
	nop			;a47b	00		.
	nop			;a47c	00		.
	inc c			;a47d	0c		.
	ld (bc),a		;a47e	02		.
	ld de,09711h		;a47f	11 11 97	. . .
	sub a			;a482	97		.
	sbc a,b			;a483	98		.
	sbc a,b			;a484	98		.
	sbc a,c			;a485	99		.
	sbc a,c			;a486	99		.
	and b			;a487	a0		.
	and b			;a488	a0		.
	and (hl)		;a489	a6		.
	and (hl)		;a48a	a6		.
la48bh:
	and l			;a48b	a5		.
	and l			;a48c	a5		.
	xor c			;a48d	a9		.
	xor c			;a48e	a9		.
	sub a			;a48f	97		.
	sub a			;a490	97		.
	sub (hl)		;a491	96		.
	sub (hl)		;a492	96		.
	sub l			;a493	95		.
	sub l			;a494	95		.
	ld de,00011h		;a495	11 11 00	. . .
	nop			;a498	00		.
	inc c			;a499	0c		.
	ld (bc),a		;a49a	02		.
	ld (de),a		;a49b	12		.
	ld (de),a		;a49c	12		.
	and c			;a49d	a1		.
	and c			;a49e	a1		.
	and d			;a49f	a2		.
	and d			;a4a0	a2		.
	and (hl)		;a4a1	a6		.
	and (hl)		;a4a2	a6		.
	and l			;a4a3	a5		.
	and l			;a4a4	a5		.
	xor c			;a4a5	a9		.
	xor c			;a4a6	a9		.
	sbc a,a			;a4a7	9f		.
	sbc a,a			;a4a8	9f		.
	sbc a,(hl)		;a4a9	9e		.
	sbc a,(hl)		;a4aa	9e		.
	sbc a,l			;a4ab	9d		.
	sbc a,l			;a4ac	9d		.
	sbc a,c			;a4ad	99		.
	sbc a,c			;a4ae	99		.
	sbc a,b			;a4af	98		.
	sbc a,b			;a4b0	98		.
	ld (de),a		;a4b1	12		.
	ld (de),a		;a4b2	12		.
	ld b,0ffh		;a4b3	06 ff		. .
	inc b			;a4b5	04		.
	ld bc,01b1ah		;a4b6	01 1a 1b	. . .
	dec de			;a4b9	1b		.
	ld a,(de)		;a4ba	1a		.
	ld b,0ffh		;a4bb	06 ff		. .
	inc b			;a4bd	04		.
	ld bc,01c1dh		;a4be	01 1d 1c	. . .
	inc e			;a4c1	1c		.
	dec e			;a4c2	1d		.
	nop			;a4c3	00		.
	nop			;a4c4	00		.
	inc b			;a4c5	04		.
	ld bc,01913h		;a4c6	01 13 19	. . .
	add hl,de		;a4c9	19		.
	inc de			;a4ca	13		.
	nop			;a4cb	00		.
	nop			;a4cc	00		.
	inc b			;a4cd	04		.
	ld (bc),a		;a4ce	02		.
	inc de			;a4cf	13		.
	inc d			;a4d0	14		.
	add hl,de		;a4d1	19		.
	and e			;a4d2	a3		.
	add hl,de		;a4d3	19		.
	and e			;a4d4	a3		.
	inc de			;a4d5	13		.
	inc d			;a4d6	14		.
	nop			;a4d7	00		.
	nop			;a4d8	00		.
	ld b,002h		;a4d9	06 02		. .
	nop			;a4db	00		.
	rla			;a4dc	17		.
	dec d			;a4dd	15		.
	and h			;a4de	a4		.
	ld d,018h		;a4df	16 18		. .
	ld d,018h		;a4e1	16 18		. .
	dec d			;a4e3	15		.
	and h			;a4e4	a4		.
	nop			;a4e5	00		.
	rla			;a4e6	17		.
	nop			;a4e7	00		.
	nop			;a4e8	00		.
	ld b,002h		;a4e9	06 02		. .
	inc de			;a4eb	13		.
	inc d			;a4ec	14		.
	add hl,de		;a4ed	19		.
	and e			;a4ee	a3		.
	nop			;a4ef	00		.
	nop			;a4f0	00		.
	nop			;a4f1	00		.
	nop			;a4f2	00		.
	add hl,de		;a4f3	19		.
	and e			;a4f4	a3		.
	inc de			;a4f5	13		.
	inc d			;a4f6	14		.
	nop			;a4f7	00		.
	nop			;a4f8	00		.
	ex af,af'		;a4f9	08		.
	ld (bc),a		;a4fa	02		.
	nop			;a4fb	00		.
	rla			;a4fc	17		.
	dec d			;a4fd	15		.
	and h			;a4fe	a4		.
	ld d,018h		;a4ff	16 18		. .
	nop			;a501	00		.
	nop			;a502	00		.
	nop			;a503	00		.
	nop			;a504	00		.
	ld d,018h		;a505	16 18		. .
	dec d			;a507	15		.
	and h			;a508	a4		.
	nop			;a509	00		.
	rla			;a50a	17		.
	ld b,007h		;a50b	06 07		. .
	inc b			;a50d	04		.
	ld bc,lb1b0h		;a50e	01 b0 b1	. . .
	or b			;a511	b0		.
	or c			;a512	b1		.
	ld b,007h		;a513	06 07		. .
	inc b			;a515	04		.
	ld bc,lb3b2h		;a516	01 b2 b3	. . .
	or d			;a519	b2		.
	or e			;a51a	b3		.
	ld b,007h		;a51b	06 07		. .
	inc b			;a51d	04		.
	ld bc,lb5b4h		;a51e	01 b4 b5	. . .
	or h			;a521	b4		.
	or l			;a522	b5		.
	ld b,00ch		;a523	06 0c		. .
	inc b			;a525	04		.
	ld bc,lb1b7h		;a526	01 b7 b1	. . .
	or b			;a529	b0		.
	or a			;a52a	b7		.
	ld b,00ch		;a52b	06 0c		. .
	inc b			;a52d	04		.
	ld bc,lb3b8h		;a52e	01 b8 b3	. . .
	or d			;a531	b2		.
	cp b			;a532	b8		.
	ld b,00ch		;a533	06 0c		. .
	inc b			;a535	04		.
	ld bc,lb5b9h		;a536	01 b9 b5	. . .
	or h			;a539	b4		.
	cp c			;a53a	b9		.
	ld b,001h		;a53b	06 01		. .
	inc b			;a53d	04		.
	ld bc,0c8c8h		;a53e	01 c8 c8	. . .
	ret z			;a541	c8		.
	ret z			;a542	c8		.
	ld b,000h		;a543	06 00		. .
	inc b			;a545	04		.
	ld (bc),a		;a546	02		.
	ret z			;a547	c8		.
	ret			;a548	c9		.
	ret z			;a549	c8		.
	ret			;a54a	c9		.
	ret z			;a54b	c8		.
	ret			;a54c	c9		.
	ret z			;a54d	c8		.
	ret			;a54e	c9		.
	ld b,0ffh		;a54f	06 ff		. .
	inc b			;a551	04		.
	inc bc			;a552	03		.
	ret z			;a553	c8		.
	ret			;a554	c9		.
	jp z,0c9c8h		;a555	ca c8 c9	. . .
	jp z,0c9c8h		;a558	ca c8 c9	. . .
	jp z,0c9c8h		;a55b	ca c8 c9	. . .
	jp z,0fe06h		;a55e	ca 06 fe	. . .
	inc b			;a561	04		.
	inc b			;a562	04		.
	ret z			;a563	c8		.
	ret			;a564	c9		.
	jp z,0c8c8h		;a565	ca c8 c8	. . .
	ret			;a568	c9		.
	jp z,0c8c8h		;a569	ca c8 c8	. . .
	ret			;a56c	c9		.
	jp z,0c8c8h		;a56d	ca c8 c8	. . .
	ret			;a570	c9		.
	jp z,006c8h		;a571	ca c8 06	. . .
	defb 0fdh,004h,005h ;illegal sequence	;a574	fd 04 05	. . .
	ret z			;a577	c8		.
	ret			;a578	c9		.
	jp z,0c9c8h		;a579	ca c8 c9	. . .
	ret z			;a57c	c8		.
	ret			;a57d	c9		.
	jp z,0c9c8h		;a57e	ca c8 c9	. . .
	ret z			;a581	c8		.
	ret			;a582	c9		.
	jp z,0c9c8h		;a583	ca c8 c9	. . .
	ret z			;a586	c8		.
	ret			;a587	c9		.
	jp z,0c9c8h		;a588	ca c8 c9	. . .
	ld b,0fch		;a58b	06 fc		. .
	inc b			;a58d	04		.
	ld b,0c8h		;a58e	06 c8		. .
	ret			;a590	c9		.
	jp z,0c9c8h		;a591	ca c8 c9	. . .
	jp z,0c9c8h		;a594	ca c8 c9	. . .
	jp z,0c9c8h		;a597	ca c8 c9	. . .
	jp z,0c9c8h		;a59a	ca c8 c9	. . .
	jp z,0c9c8h		;a59d	ca c8 c9	. . .
	jp z,0c9c8h		;a5a0	ca c8 c9	. . .
	jp z,0c9c8h		;a5a3	ca c8 c9	. . .
	jp z,0fb06h		;a5a6	ca 06 fb	. . .
	inc b			;a5a9	04		.
	rlca			;a5aa	07		.
	ret			;a5ab	c9		.
	jp z,0c9c8h		;a5ac	ca c8 c9	. . .
	jp z,0c9c8h		;a5af	ca c8 c9	. . .
	ret			;a5b2	c9		.
	jp z,0c9c8h		;a5b3	ca c8 c9	. . .
	jp z,0c9c8h		;a5b6	ca c8 c9	. . .
	ret			;a5b9	c9		.
	jp z,0c9c8h		;a5ba	ca c8 c9	. . .
	jp z,0c9c8h		;a5bd	ca c8 c9	. . .
	ret			;a5c0	c9		.
	jp z,0c9c8h		;a5c1	ca c8 c9	. . .
	jp z,0c9c8h		;a5c4	ca c8 c9	. . .
	ld b,0fbh		;a5c7	06 fb		. .
	inc b			;a5c9	04		.
	rlca			;a5ca	07		.
	jp z,0c9c8h		;a5cb	ca c8 c9	. . .
	jp z,0c9c8h		;a5ce	ca c8 c9	. . .
	jp z,0c8cah		;a5d1	ca ca c8	. . .
	ret			;a5d4	c9		.
	jp z,0c9c8h		;a5d5	ca c8 c9	. . .
	jp z,0c8cah		;a5d8	ca ca c8	. . .
	ret			;a5db	c9		.
	jp z,0c9c8h		;a5dc	ca c8 c9	. . .
	jp z,0c8cah		;a5df	ca ca c8	. . .
	ret			;a5e2	c9		.
	jp z,0c9c8h		;a5e3	ca c8 c9	. . .
	jp z,0fb06h		;a5e6	ca 06 fb	. . .
	inc b			;a5e9	04		.
	rlca			;a5ea	07		.
	ret z			;a5eb	c8		.
	ret			;a5ec	c9		.
	jp z,0c9c8h		;a5ed	ca c8 c9	. . .
	jp z,0c8c8h		;a5f0	ca c8 c8	. . .
	ret			;a5f3	c9		.
	jp z,0c9c8h		;a5f4	ca c8 c9	. . .
	jp z,0c8c8h		;a5f7	ca c8 c8	. . .
	ret			;a5fa	c9		.
	jp z,0c9c8h		;a5fb	ca c8 c9	. . .
	jp z,0c8c8h		;a5fe	ca c8 c8	. . .
	ret			;a601	c9		.
	jp z,0c9c8h		;a602	ca c8 c9	. . .
	jp z,007c8h		;a605	ca c8 07	. . .
	ld c,002h		;a608	0e 02		. .
	inc b			;a60a	04		.
	ret nz			;a60b	c0		.
	call nz,0c1c7h		;a60c	c4 c7 c1	. . .
	ret nz			;a60f	c0		.
	call nz,0c1c7h		;a610	c4 c7 c1	. . .
	rlca			;a613	07		.
	ld c,002h		;a614	0e 02		. .
	inc b			;a616	04		.
	ret nz			;a617	c0		.
	jp 0c1c6h		;a618	c3 c6 c1	. . .
	ret nz			;a61b	c0		.
	jp 0c1c6h		;a61c	c3 c6 c1	. . .
	rlca			;a61f	07		.
	ld c,002h		;a620	0e 02		. .
	inc b			;a622	04		.
	ret nz			;a623	c0		.
	jp nz,0c1c5h		;a624	c2 c5 c1	. . .
	ret nz			;a627	c0		.
	jp nz,0c1c5h		;a628	c2 c5 c1	. . .
	ld a,h			;a62b	7c		|
	and (hl)		;a62c	a6		.
	adc a,a			;a62d	8f		.
	and (hl)		;a62e	a6		.
	xor a			;a62f	af		.
	and (hl)		;a630	a6		.
	ex (sp),hl		;a631	e3		.
	and (hl)		;a632	a6		.
	ld b,c			;a633	41		A
	and a			;a634	a7		.
	ld (hl),a		;a635	77		w
	and (hl)		;a636	a6		.
	ld a,h			;a637	7c		|
	and (hl)		;a638	a6		.
	adc a,a			;a639	8f		.
	and (hl)		;a63a	a6		.
	xor a			;a63b	af		.
	and (hl)		;a63c	a6		.
	ex (sp),hl		;a63d	e3		.
	and (hl)		;a63e	a6		.
	ld b,c			;a63f	41		A
	and a			;a640	a7		.
	ld a,h			;a641	7c		|
	and (hl)		;a642	a6		.
	adc a,a			;a643	8f		.
	and (hl)		;a644	a6		.
	xor a			;a645	af		.
	and (hl)		;a646	a6		.
	ld c,l			;a647	4d		M
	sub c			;a648	91		.
	ld e,c			;a649	59		Y
	sub c			;a64a	91		.
	and c			;a64b	a1		.
	sub b			;a64c	90		.
	add hl,de		;a64d	19		.
	sub (hl)		;a64e	96		.
	dec h			;a64f	25		%
	sub (hl)		;a650	96		.
	ld (hl),c		;a651	71		q
	sub (hl)		;a652	96		.
	ld d,c			;a653	51		Q
	adc a,l			;a654	8d		.
	ld d,c			;a655	51		Q
	adc a,l			;a656	8d		.
	add hl,sp		;a657	39		9
	adc a,l			;a658	8d		.
	sub l			;a659	95		.
	adc a,l			;a65a	8d		.
	cp e			;a65b	bb		.
	sub a			;a65c	97		.
	add hl,de		;a65d	19		.
	sub a			;a65e	97		.
	add a,l			;a65f	85		.
	and a			;a660	a7		.
	and a			;a661	a7		.
	and a			;a662	a7		.
	xor (hl)		;a663	ae		.
	and a			;a664	a7		.
	ret nc			;a665	d0		.
	and a			;a666	a7		.
	ld b,0a8h		;a667	06 a8		. .
	inc c			;a669	0c		.
	xor b			;a66a	a8		.
	ld b,d			;a66b	42		B
	xor b			;a66c	a8		.
	adc a,h			;a66d	8c		.
	xor b			;a66e	a8		.
	xor b			;a66f	a8		.
	xor b			;a670	a8		.
	ld b,0a9h		;a671	06 a9		. .
	ld l,(hl)		;a673	6e		n
	xor c			;a674	a9		.
	or c			;a675	b1		.
	xor c			;a676	a9		.
	nop			;a677	00		.
	nop			;a678	00		.
	ld bc,00001h		;a679	01 01 00	. . .
	nop			;a67c	00		.
	nop			;a67d	00		.
	inc bc			;a67e	03		.
	dec b			;a67f	05		.
	nop			;a680	00		.
	xor 0efh		;a681	ee ef		. .
	ret p			;a683	f0		.
	nop			;a684	00		.
	ex de,hl		;a685	eb		.
	jp p,0fdfah		;a686	f2 fa fd	. . .
	defb 0edh ;next byte illegal after ed	;a689	ed		.
	nop			;a68a	00		.
	call p,0ecf6h		;a68b	f4 f6 ec	. . .
	nop			;a68e	00		.
	nop			;a68f	00		.
	nop			;a690	00		.
	inc b			;a691	04		.
	rlca			;a692	07		.
	nop			;a693	00		.
	nop			;a694	00		.
	xor 0efh		;a695	ee ef		. .
	rst 28h			;a697	ef		.
	ret p			;a698	f0		.
	nop			;a699	00		.
	nop			;a69a	00		.
	xor 0f7h		;a69b	ee f7		. .
	jp m,0f3f8h		;a69d	fa f8 f3	. . .
	defb 0edh ;next byte illegal after ed	;a6a0	ed		.
	ex de,hl		;a6a1	eb		.
	jp p,0fbfbh		;a6a2	f2 fb fb	. . .
	call m,0edf9h		;a6a5	fc f9 ed	. . .
	nop			;a6a8	00		.
	call p,0f5f6h		;a6a9	f4 f6 f5	. . .
	or 0ech			;a6ac	f6 ec		. .
	nop			;a6ae	00		.
	nop			;a6af	00		.
	nop			;a6b0	00		.
	ld b,008h		;a6b1	06 08		. .
	nop			;a6b3	00		.
	nop			;a6b4	00		.
	xor 0efh		;a6b5	ee ef		. .
	rst 28h			;a6b7	ef		.
	ret p			;a6b8	f0		.
	nop			;a6b9	00		.
	nop			;a6ba	00		.
	nop			;a6bb	00		.
	xor 0f7h		;a6bc	ee f7		. .
	ret m			;a6be	f8		.
	ret m			;a6bf	f8		.
	di			;a6c0	f3		.
	ret p			;a6c1	f0		.
	nop			;a6c2	00		.
	nop			;a6c3	00		.
	pop af			;a6c4	f1		.
	rst 30h			;a6c5	f7		.
	jp m,0fcf8h		;a6c6	fa f8 fc	. . .
	defb 0fdh,0edh,0ebh ;illegal sequence	;a6c9	fd ed eb	. . .
	jp p,0fcfbh		;a6cc	f2 fb fc	. . .
	call m,0ecfdh		;a6cf	fc fd ec	. . .
	nop			;a6d2	00		.
	ex de,hl		;a6d3	eb		.
	jp p,0fcfbh		;a6d4	f2 fb fc	. . .
	call m,0edf9h		;a6d7	fc f9 ed	. . .
	nop			;a6da	00		.
	nop			;a6db	00		.
	call p,0f5f6h		;a6dc	f4 f6 f5	. . .
	or 0ech			;a6df	f6 ec		. .
	nop			;a6e1	00		.
	nop			;a6e2	00		.
	nop			;a6e3	00		.
	nop			;a6e4	00		.
	add hl,bc		;a6e5	09		.
	ld a,(bc)		;a6e6	0a		.
	nop			;a6e7	00		.
	nop			;a6e8	00		.
	xor 0efh		;a6e9	ee ef		. .
	ret p			;a6eb	f0		.
	nop			;a6ec	00		.
	nop			;a6ed	00		.
	nop			;a6ee	00		.
	nop			;a6ef	00		.
	nop			;a6f0	00		.
	nop			;a6f1	00		.
	xor 0f7h		;a6f2	ee f7		. .
	jp m,0effdh		;a6f4	fa fd ef	. . .
	ret p			;a6f7	f0		.
	nop			;a6f8	00		.
	nop			;a6f9	00		.
	nop			;a6fa	00		.
	nop			;a6fb	00		.
	pop af			;a6fc	f1		.
	ei			;a6fd	fb		.
	jp m,0f8f7h		;a6fe	fa f7 f8	. . .
	defb 0fdh,0f0h,000h ;illegal sequence	;a701	fd f0 00	. . .
	nop			;a704	00		.
	nop			;a705	00		.
	call p,0fbf2h		;a706	f4 f2 fb	. . .
	jp m,0fdf8h		;a709	fa f8 fd	. . .
	defb 0fdh,0edh,000h ;illegal sequence	;a70c	fd ed 00	. . .
	nop			;a70f	00		.
	ex de,hl		;a710	eb		.
	jp p,0fafbh		;a711	f2 fb fa	. . .
	call m,0f3f8h		;a714	fc f8 f3	. . .
	ret p			;a717	f0		.
	nop			;a718	00		.
	nop			;a719	00		.
	xor 0f2h		;a71a	ee f2		. .
	jp m,0fcfah		;a71c	fa fa fc	. . .
	call m,0fdfch		;a71f	fc fc fd	. . .
	defb 0edh ;next byte illegal after ed	;a722	ed		.
	nop			;a723	00		.
	pop af			;a724	f1		.
	jp p,0fcfbh		;a725	f2 fb fc	. . .
	call m,0f6f6h		;a728	fc f6 f6	. . .
	call pe,0eb00h		;a72b	ec 00 eb	. . .
	jp p,0fafbh		;a72e	f2 fb fa	. . .
	call m,0edf9h		;a731	fc f9 ed	. . .
	nop			;a734	00		.
	nop			;a735	00		.
	nop			;a736	00		.
	nop			;a737	00		.
	call p,0f5f6h		;a738	f4 f6 f5	. . .
	or 0ech			;a73b	f6 ec		. .
	nop			;a73d	00		.
	nop			;a73e	00		.
	nop			;a73f	00		.
	nop			;a740	00		.
	nop			;a741	00		.
	nop			;a742	00		.
	ex af,af'		;a743	08		.
	ex af,af'		;a744	08		.
	nop			;a745	00		.
	xor 0efh		;a746	ee ef		. .
	ret p			;a748	f0		.
	nop			;a749	00		.
	nop			;a74a	00		.
	nop			;a74b	00		.
	nop			;a74c	00		.
	ex de,hl		;a74d	eb		.
	jp p,0fdfah		;a74e	f2 fa fd	. . .
	rst 28h			;a751	ef		.
	ret p			;a752	f0		.
	nop			;a753	00		.
	nop			;a754	00		.
	nop			;a755	00		.
	call p,0fbf5h		;a756	f4 f5 fb	. . .
	rst 30h			;a759	f7		.
	ret m			;a75a	f8		.
	ret p			;a75b	f0		.
	nop			;a75c	00		.
	nop			;a75d	00		.
	nop			;a75e	00		.
	ex de,hl		;a75f	eb		.
	jp p,0fafah		;a760	f2 fa fa	. . .
	defb 0fdh,0edh,000h ;illegal sequence	;a763	fd ed 00	. . .
	nop			;a766	00		.
	nop			;a767	00		.
	call p,0f6f5h		;a768	f4 f5 f6	. . .
	call pe,00000h		;a76b	ec 00 00	. . .
	xor 0efh		;a76e	ee ef		. .
	ret p			;a770	f0		.
	nop			;a771	00		.
	nop			;a772	00		.
	nop			;a773	00		.
	nop			;a774	00		.
	ex de,hl		;a775	eb		.
	jp p,0fdfah		;a776	f2 fa fd	. . .
	defb 0edh ;next byte illegal after ed	;a779	ed		.
	nop			;a77a	00		.
	nop			;a77b	00		.
	nop			;a77c	00		.
	nop			;a77d	00		.
	call p,0ecf6h		;a77e	f4 f6 ec	. . .
	nop			;a781	00		.
	nop			;a782	00		.
	nop			;a783	00		.
	nop			;a784	00		.
	nop			;a785	00		.
	nop			;a786	00		.
	inc bc			;a787	03		.
	ld a,(bc)		;a788	0a		.
	nop			;a789	00		.
	nop			;a78a	00		.
	nop			;a78b	00		.
	nop			;a78c	00		.
	nop			;a78d	00		.
	xor 0efh		;a78e	ee ef		. .
	rst 28h			;a790	ef		.
	ret p			;a791	f0		.
	nop			;a792	00		.
	nop			;a793	00		.
	nop			;a794	00		.
	nop			;a795	00		.
	nop			;a796	00		.
	xor 0f7h		;a797	ee f7		. .
	ret m			;a799	f8		.
	jp m,0edfdh		;a79a	fa fd ed	. . .
	xor 0efh		;a79d	ee ef		. .
	ret p			;a79f	f0		.
	xor 0f7h		;a7a0	ee f7		. .
	rst 30h			;a7a2	f7		.
	jp m,0f3f8h		;a7a3	fa f8 f3	. . .
	ret p			;a7a6	f0		.
	nop			;a7a7	00		.
	nop			;a7a8	00		.
	ld bc,0ee03h		;a7a9	01 03 ee	. . .
	rst 28h			;a7ac	ef		.
	ret p			;a7ad	f0		.
	nop			;a7ae	00		.
	nop			;a7af	00		.
	inc bc			;a7b0	03		.
	ld a,(bc)		;a7b1	0a		.
	nop			;a7b2	00		.
	nop			;a7b3	00		.
	nop			;a7b4	00		.
	nop			;a7b5	00		.
	nop			;a7b6	00		.
	nop			;a7b7	00		.
	nop			;a7b8	00		.
	nop			;a7b9	00		.
	xor 0efh		;a7ba	ee ef		. .
	nop			;a7bc	00		.
	nop			;a7bd	00		.
	nop			;a7be	00		.
	nop			;a7bf	00		.
	xor 0efh		;a7c0	ee ef		. .
	ret p			;a7c2	f0		.
	xor 0f1h		;a7c3	ee f1		. .
	rst 30h			;a7c5	f7		.
	xor 0efh		;a7c6	ee ef		. .
	ret p			;a7c8	f0		.
	xor 0f7h		;a7c9	ee f7		. .
	jp m,0f2f3h		;a7cb	fa f3 f2	. . .
	rst 30h			;a7ce	f7		.
	ret m			;a7cf	f8		.
	nop			;a7d0	00		.
	nop			;a7d1	00		.
	dec b			;a7d2	05		.
	ld a,(bc)		;a7d3	0a		.
	xor 0efh		;a7d4	ee ef		. .
	ret p			;a7d6	f0		.
	nop			;a7d7	00		.
	nop			;a7d8	00		.
	nop			;a7d9	00		.
	nop			;a7da	00		.
	nop			;a7db	00		.
	nop			;a7dc	00		.
	nop			;a7dd	00		.
	pop af			;a7de	f1		.
	ret m			;a7df	f8		.
	defb 0fdh,0edh,000h ;illegal sequence	;a7e0	fd ed 00	. . .
	nop			;a7e3	00		.
	nop			;a7e4	00		.
	nop			;a7e5	00		.
	nop			;a7e6	00		.
	nop			;a7e7	00		.
	jp p,0f9fah		;a7e8	f2 fa f9	. . .
	defb 0edh ;next byte illegal after ed	;a7eb	ed		.
	xor 0efh		;a7ec	ee ef		. .
	rst 28h			;a7ee	ef		.
	ret p			;a7ef	f0		.
	nop			;a7f0	00		.
	nop			;a7f1	00		.
	rst 30h			;a7f2	f7		.
	call m,0eefdh		;a7f3	fc fd ee	. . .
	rst 30h			;a7f6	f7		.
	ret m			;a7f7	f8		.
	jp m,0edfdh		;a7f8	fa fd ed	. . .
	nop			;a7fb	00		.
	rst 30h			;a7fc	f7		.
	jp m,0f7f7h		;a7fd	fa f7 f7	. . .
	ret m			;a800	f8		.
	jp m,0f3f8h		;a801	fa f8 f3	. . .
	ret p			;a804	f0		.
	xor 000h		;a805	ee 00		. .
	nop			;a807	00		.
	ld bc,0ef02h		;a808	01 02 ef	. . .
	ret p			;a80b	f0		.
	nop			;a80c	00		.
	nop			;a80d	00		.
	dec b			;a80e	05		.
	ld a,(bc)		;a80f	0a		.
	nop			;a810	00		.
	nop			;a811	00		.
	nop			;a812	00		.
	nop			;a813	00		.
	nop			;a814	00		.
	xor 0efh		;a815	ee ef		. .
	ret p			;a817	f0		.
	nop			;a818	00		.
	nop			;a819	00		.
	nop			;a81a	00		.
	nop			;a81b	00		.
	nop			;a81c	00		.
	nop			;a81d	00		.
	xor 0f7h		;a81e	ee f7		. .
	jp m,0edf3h		;a820	fa f3 ed	. . .
	xor 000h		;a823	ee 00		. .
	nop			;a825	00		.
	nop			;a826	00		.
	ex de,hl		;a827	eb		.
	jp p,0fafbh		;a828	f2 fb fa	. . .
	ld sp,hl		;a82b	f9		.
	xor 0f1h		;a82c	ee f1		. .
	nop			;a82e	00		.
	nop			;a82f	00		.
	nop			;a830	00		.
	xor 0f7h		;a831	ee f7		. .
	jp m,0f3fch		;a833	fa fc f3	. . .
	jp p,0eef7h		;a836	f2 f7 ee	. . .
	rst 28h			;a839	ef		.
	xor 0f7h		;a83a	ee f7		. .
	ei			;a83c	fb		.
	call m,0f8fah		;a83d	fc fa f8	. . .
	ret m			;a840	f8		.
	ei			;a841	fb		.
	nop			;a842	00		.
	nop			;a843	00		.
	rlca			;a844	07		.
	ld a,(bc)		;a845	0a		.
	nop			;a846	00		.
	nop			;a847	00		.
	xor 0efh		;a848	ee ef		. .
	ret p			;a84a	f0		.
	nop			;a84b	00		.
	nop			;a84c	00		.
	nop			;a84d	00		.
	nop			;a84e	00		.
	nop			;a84f	00		.
	nop			;a850	00		.
	xor 0f7h		;a851	ee f7		. .
	jp m,0edfdh		;a853	fa fd ed	. . .
	nop			;a856	00		.
	nop			;a857	00		.
	nop			;a858	00		.
	nop			;a859	00		.
	nop			;a85a	00		.
	pop af			;a85b	f1		.
	rst 30h			;a85c	f7		.
	ret m			;a85d	f8		.
	di			;a85e	f3		.
	defb 0edh ;next byte illegal after ed	;a85f	ed		.
	xor 0efh		;a860	ee ef		. .
	rst 28h			;a862	ef		.
	ret p			;a863	f0		.
	rst 28h			;a864	ef		.
	jp p,0f8fbh		;a865	f2 fb f8	. . .
	ld sp,hl		;a868	f9		.
	xor 0f8h		;a869	ee f8		. .
	ret m			;a86b	f8		.
	ret m			;a86c	f8		.
	defb 0fdh,0f7h,0f7h ;illegal sequence	;a86d	fd f7 f7	. . .
	jp m,0f3fch		;a870	fa fc f3	. . .
	jp p,0f9fah		;a873	f2 fa f9	. . .
	ei			;a876	fb		.
	ld sp,hl		;a877	f9		.
	ret m			;a878	f8		.
	rst 30h			;a879	f7		.
	jp m,0f7f8h		;a87a	fa f8 f7	. . .
	ret m			;a87d	f8		.
	call m,0f2fdh		;a87e	fc fd f2	. . .
	defb 0fdh,0fch,0fbh ;illegal sequence	;a881	fd fc fb	. . .
	jp m,0fafah		;a884	fa fa fa	. . .
	call m,0f3f9h		;a887	fc f9 f3	. . .
	ret m			;a88a	f8		.
	rst 30h			;a88b	f7		.
	nop			;a88c	00		.
	nop			;a88d	00		.
	inc b			;a88e	04		.
	ld b,0edh		;a88f	06 ed		. .
	nop			;a891	00		.
	nop			;a892	00		.
	nop			;a893	00		.
	nop			;a894	00		.
	nop			;a895	00		.
	ret p			;a896	f0		.
	xor 0efh		;a897	ee ef		. .
	rst 28h			;a899	ef		.
	ret p			;a89a	f0		.
	nop			;a89b	00		.
	ret m			;a89c	f8		.
	rst 30h			;a89d	f7		.
	ret m			;a89e	f8		.
	jp m,0edfdh		;a89f	fa fd ed	. . .
	jp m,0faf8h		;a8a2	fa f8 fa	. . .
	ret m			;a8a5	f8		.
	di			;a8a6	f3		.
	ret p			;a8a7	f0		.
	nop			;a8a8	00		.
	nop			;a8a9	00		.
	add hl,bc		;a8aa	09		.
	ld a,(bc)		;a8ab	0a		.
	nop			;a8ac	00		.
	nop			;a8ad	00		.
	nop			;a8ae	00		.
	nop			;a8af	00		.
	nop			;a8b0	00		.
	xor 0efh		;a8b1	ee ef		. .
	rst 28h			;a8b3	ef		.
	ret p			;a8b4	f0		.
	nop			;a8b5	00		.
	nop			;a8b6	00		.
	nop			;a8b7	00		.
	nop			;a8b8	00		.
	nop			;a8b9	00		.
	xor 0f7h		;a8ba	ee f7		. .
	ret m			;a8bc	f8		.
	ret m			;a8bd	f8		.
	defb 0fdh,0f0h,000h ;illegal sequence	;a8be	fd f0 00	. . .
	nop			;a8c1	00		.
	nop			;a8c2	00		.
	nop			;a8c3	00		.
	pop af			;a8c4	f1		.
	rst 30h			;a8c5	f7		.
	jp m,0fcf8h		;a8c6	fa f8 fc	. . .
	defb 0fdh,000h,000h ;illegal sequence	;a8c9	fd 00 00	. . .
	nop			;a8cc	00		.
	ex de,hl		;a8cd	eb		.
	jp p,0fafbh		;a8ce	f2 fb fa	. . .
	call m,0ecfdh		;a8d1	fc fd ec	. . .
	nop			;a8d4	00		.
	nop			;a8d5	00		.
	nop			;a8d6	00		.
	ex de,hl		;a8d7	eb		.
	jp p,0fcfbh		;a8d8	f2 fb fc	. . .
	call m,0edf3h		;a8db	fc f3 ed	. . .
	nop			;a8de	00		.
	nop			;a8df	00		.
	nop			;a8e0	00		.
	nop			;a8e1	00		.
	call p,0faf2h		;a8e2	f4 f2 fa	. . .
	ret m			;a8e5	f8		.
	ld sp,hl		;a8e6	f9		.
	xor 000h		;a8e7	ee 00		. .
	nop			;a8e9	00		.
	nop			;a8ea	00		.
	nop			;a8eb	00		.
	nop			;a8ec	00		.
	pop af			;a8ed	f1		.
	rst 30h			;a8ee	f7		.
	jp m,0f2f3h		;a8ef	fa f3 f2	. . .
	nop			;a8f2	00		.
	nop			;a8f3	00		.
	xor 0efh		;a8f4	ee ef		. .
	xor 0f7h		;a8f6	ee f7		. .
	ei			;a8f8	fb		.
	ret m			;a8f9	f8		.
	ret m			;a8fa	f8		.
	ret m			;a8fb	f8		.
	xor 0efh		;a8fc	ee ef		. .
	rst 30h			;a8fe	f7		.
	rst 30h			;a8ff	f7		.
	rst 30h			;a900	f7		.
	jp m,0faf8h		;a901	fa f8 fa	. . .
	jp m,000f8h		;a904	fa f8 00	. . .
	nop			;a907	00		.
	ld a,(bc)		;a908	0a		.
	ld a,(bc)		;a909	0a		.
	nop			;a90a	00		.
	nop			;a90b	00		.
	nop			;a90c	00		.
	nop			;a90d	00		.
	xor 0efh		;a90e	ee ef		. .
	rst 28h			;a910	ef		.
	ret p			;a911	f0		.
	nop			;a912	00		.
	nop			;a913	00		.
	nop			;a914	00		.
	nop			;a915	00		.
	nop			;a916	00		.
	xor 0f7h		;a917	ee f7		. .
	ret m			;a919	f8		.
	ret m			;a91a	f8		.
	defb 0fdh,0f0h,000h ;illegal sequence	;a91b	fd f0 00	. . .
	nop			;a91e	00		.
	nop			;a91f	00		.
	nop			;a920	00		.
	pop af			;a921	f1		.
	rst 30h			;a922	f7		.
	jp m,0fcf8h		;a923	fa f8 fc	. . .
	defb 0fdh,0edh,0edh ;illegal sequence	;a926	fd ed ed	. . .
	nop			;a929	00		.
	ex de,hl		;a92a	eb		.
	jp p,0fcfbh		;a92b	f2 fb fc	. . .
	call m,0ecfdh		;a92e	fc fd ec	. . .
	nop			;a931	00		.
	xor 0eeh		;a932	ee ee		. .
	rst 28h			;a934	ef		.
	rst 30h			;a935	f7		.
	jp m,0f8fah		;a936	fa fa f8	. . .
	di			;a939	f3		.
	ret p			;a93a	f0		.
	xor 0f1h		;a93b	ee f1		. .
	rst 30h			;a93d	f7		.
	ret m			;a93e	f8		.
	ei			;a93f	fb		.
	jp m,0f8f8h		;a940	fa f8 f8	. . .
	ld sp,hl		;a943	f9		.
	rst 30h			;a944	f7		.
	ret m			;a945	f8		.
	rst 30h			;a946	f7		.
	ret m			;a947	f8		.
	call m,0fafah		;a948	fc fa fa	. . .
	ei			;a94b	fb		.
	call m,0f2f3h		;a94c	fc f3 f2	. . .
	jp m,0faf8h		;a94f	fa f8 fa	. . .
	ret m			;a952	f8		.
	ld sp,hl		;a953	f9		.
	rst 30h			;a954	f7		.
	jp m,0f7f8h		;a955	fa f8 f7	. . .
	ret m			;a958	f8		.
	jp m,0fafah		;a959	fa fa fa	. . .
	jp m,0f2f3h		;a95c	fa f3 f2	. . .
	jp m,0fafbh		;a95f	fa fb fa	. . .
	jp m,0f8fch		;a962	fa fc f8	. . .
	jp m,0f7f8h		;a965	fa f8 f7	. . .
	ret m			;a968	f8		.
	jp m,0fafah		;a969	fa fa fa	. . .
	call m,000f9h		;a96c	fc f9 00	. . .
	nop			;a96f	00		.
	add hl,bc		;a970	09		.
	rlca			;a971	07		.
	nop			;a972	00		.
	nop			;a973	00		.
	xor 0efh		;a974	ee ef		. .
	rst 28h			;a976	ef		.
	ret p			;a977	f0		.
	nop			;a978	00		.
	nop			;a979	00		.
	ex de,hl		;a97a	eb		.
	jp p,0f8fah		;a97b	f2 fa f8	. . .
	di			;a97e	f3		.
	defb 0edh ;next byte illegal after ed	;a97f	ed		.
	xor 0efh		;a980	ee ef		. .
	rst 30h			;a982	f7		.
	ei			;a983	fb		.
	call m,0edf9h		;a984	fc f9 ed	. . .
	rst 30h			;a987	f7		.
	ret m			;a988	f8		.
	jp m,0f6fch		;a989	fa fc f6	. . .
	call pe,0fa00h		;a98c	ec 00 fa	. . .
	jp m,0f3f8h		;a98f	fa f8 f3	. . .
	defb 0edh ;next byte illegal after ed	;a992	ed		.
	nop			;a993	00		.
	nop			;a994	00		.
	ret m			;a995	f8		.
	ld sp,hl		;a996	f9		.
	ei			;a997	fb		.
	ld sp,hl		;a998	f9		.
	ret p			;a999	f0		.
	xor 0efh		;a99a	ee ef		. .
	call m,0f2fdh		;a99c	fc fd f2	. . .
	defb 0fdh,0f8h,0f7h ;illegal sequence	;a99f	fd f8 f7	. . .
	jp m,0f3f9h		;a9a2	fa f9 f3	. . .
	ret m			;a9a5	f8		.
	rst 30h			;a9a6	f7		.
	jp m,0f8f8h		;a9a7	fa f8 f8	. . .
	ret m			;a9aa	f8		.
	ret m			;a9ab	f8		.
	ei			;a9ac	fb		.
	ei			;a9ad	fb		.
	jp m,0fafah		;a9ae	fa fa fa	. . .
	nop			;a9b1	00		.
	nop			;a9b2	00		.
	inc b			;a9b3	04		.
	inc b			;a9b4	04		.
	rst 28h			;a9b5	ef		.
	ret p			;a9b6	f0		.
	nop			;a9b7	00		.
	nop			;a9b8	00		.
	ret m			;a9b9	f8		.
	di			;a9ba	f3		.
	ret p			;a9bb	f0		.
	nop			;a9bc	00		.
	jp m,0fdfch		;a9bd	fa fc fd	. . .
	defb 0edh ;next byte illegal after ed	;a9c0	ed		.
	call m,0f3f8h		;a9c1	fc f8 f3	. . .
	ret p			;a9c4	f0		.
	call 0e0aah		;a9c5	cd aa e0	. . .
	xor d			;a9c8	aa		.
	di			;a9c9	f3		.
	xor d			;a9ca	aa		.
	ld b,0abh		;a9cb	06 ab		. .
	inc de			;a9cd	13		.
	xor e			;a9ce	ab		.
	jr nz,$-83		;a9cf	20 ab		  .
	dec l			;a9d1	2d		-
	xor e			;a9d2	ab		.
	inc (hl)		;a9d3	34		4
	xor e			;a9d4	ab		.
	dec sp			;a9d5	3b		;
	xor e			;a9d6	ab		.
	ld b,d			;a9d7	42		B
	xor e			;a9d8	ab		.
	ld d,b			;a9d9	50		P
	xor e			;a9da	ab		.
	ld d,a			;a9db	57		W
	xor e			;a9dc	ab		.
	ld e,(hl)		;a9dd	5e		^
	xor e			;a9de	ab		.
	ld h,l			;a9df	65		e
	xor e			;a9e0	ab		.
	ld c,c			;a9e1	49		I
	xor e			;a9e2	ab		.
	ld c,b			;a9e3	48		H
	xor d			;a9e4	aa		.
	ld c,a			;a9e5	4f		O
	xor d			;a9e6	aa		.
	ld d,(hl)		;a9e7	56		V
	xor d			;a9e8	aa		.
	ld e,l			;a9e9	5d		]
	xor d			;a9ea	aa		.
	ld h,h			;a9eb	64		d
	xor d			;a9ec	aa		.
	ld l,e			;a9ed	6b		k
	xor d			;a9ee	aa		.
	ld (hl),d		;a9ef	72		r
	xor d			;a9f0	aa		.
	ld a,c			;a9f1	79		y
	xor d			;a9f2	aa		.
	add a,b			;a9f3	80		.
	xor d			;a9f4	aa		.
	add a,a			;a9f5	87		.
	xor d			;a9f6	aa		.
	adc a,(hl)		;a9f7	8e		.
	xor d			;a9f8	aa		.
	sub l			;a9f9	95		.
	xor d			;a9fa	aa		.
	sbc a,h			;a9fb	9c		.
	xor d			;a9fc	aa		.
	and e			;a9fd	a3		.
	xor d			;a9fe	aa		.
	xor d			;a9ff	aa		.
	xor d			;aa00	aa		.
	or c			;aa01	b1		.
	xor d			;aa02	aa		.
	cp b			;aa03	b8		.
	xor d			;aa04	aa		.
	cp a			;aa05	bf		.
	xor d			;aa06	aa		.
	add a,0aah		;aa07	c6 aa		. .
	ld a,d			;aa09	7a		z
	xor e			;aa0a	ab		.
	add a,c			;aa0b	81		.
	xor e			;aa0c	ab		.
	adc a,b			;aa0d	88		.
	xor e			;aa0e	ab		.
	adc a,a			;aa0f	8f		.
	xor e			;aa10	ab		.
	sub (hl)		;aa11	96		.
	xor e			;aa12	ab		.
	sbc a,l			;aa13	9d		.
	xor e			;aa14	ab		.
	and h			;aa15	a4		.
	xor e			;aa16	ab		.
	xor e			;aa17	ab		.
	xor e			;aa18	ab		.
	ld (hl),e		;aa19	73		s
	xor e			;aa1a	ab		.
	or d			;aa1b	b2		.
	xor e			;aa1c	ab		.
	cp c			;aa1d	b9		.
	xor e			;aa1e	ab		.
	ret nz			;aa1f	c0		.
	xor e			;aa20	ab		.
	rst 0			;aa21	c7		.
	xor e			;aa22	ab		.
	adc a,0abh		;aa23	ce ab		. .
	push de			;aa25	d5		.
	xor e			;aa26	ab		.
	call c,0e3abh		;aa27	dc ab e3	. . .
	xor e			;aa2a	ab		.
	jp pe,0f1abh		;aa2b	ea ab f1	. . .
	xor e			;aa2e	ab		.
	ret m			;aa2f	f8		.
	xor e			;aa30	ab		.
	rst 38h			;aa31	ff		.
	xor e			;aa32	ab		.
	ld b,0ach		;aa33	06 ac		. .
	dec c			;aa35	0d		.
	xor h			;aa36	ac		.
	inc d			;aa37	14		.
	xor h			;aa38	ac		.
	dec de			;aa39	1b		.
	xor h			;aa3a	ac		.
	ld b,c			;aa3b	41		A
	xor d			;aa3c	aa		.
	ld c,b			;aa3d	48		H
	xor d			;aa3e	aa		.
	ld c,b			;aa3f	48		H
	xor d			;aa40	aa		.
	ld bc,000d0h		;aa41	01 d0 00	. . .
	nop			;aa44	00		.
	ld bc,003c5h		;aa45	01 c5 03	. . .
	ld bc,00034h		;aa48	01 34 00	. 4 .
	nop			;aa4b	00		.
	djnz laa8eh		;aa4c	10 40		. @
	inc c			;aa4e	0c		.
	ld bc,00038h		;aa4f	01 38 00	. 8 .
	nop			;aa52	00		.
	ld de,00f40h		;aa53	11 40 0f	. @ .
	ld bc,00034h		;aa56	01 34 00	. 4 .
	nop			;aa59	00		.
	ld (de),a		;aa5a	12		.
	ld b,b			;aa5b	40		@
	dec c			;aa5c	0d		.
	ld bc,00038h		;aa5d	01 38 00	. 8 .
	nop			;aa60	00		.
	inc de			;aa61	13		.
	ld b,b			;aa62	40		@
	djnz laa66h		;aa63	10 01		. .
	inc (hl)		;aa65	34		4
laa66h:
	nop			;aa66	00		.
	nop			;aa67	00		.
	inc d			;aa68	14		.
	ld b,b			;aa69	40		@
	ld c,001h		;aa6a	0e 01		. .
	jr c,laa6eh		;aa6c	38 00		8 .
laa6eh:
	nop			;aa6e	00		.
	dec d			;aa6f	15		.
	ld b,b			;aa70	40		@
	ld de,03401h		;aa71	11 01 34	. . 4
	nop			;aa74	00		.
	nop			;aa75	00		.
	ld d,040h		;aa76	16 40		. @
	ld a,(bc)		;aa78	0a		.
	ld bc,00038h		;aa79	01 38 00	. 8 .
	nop			;aa7c	00		.
	rla			;aa7d	17		.
	ld b,b			;aa7e	40		@
	ld a,(bc)		;aa7f	0a		.
	ld bc,00034h		;aa80	01 34 00	. 4 .
	nop			;aa83	00		.
	jr laac6h		;aa84	18 40		. @
	ld a,(bc)		;aa86	0a		.
	ld bc,00038h		;aa87	01 38 00	. 8 .
	nop			;aa8a	00		.
	add hl,de		;aa8b	19		.
	ld b,b			;aa8c	40		@
	ld a,(bc)		;aa8d	0a		.
laa8eh:
	ld bc,00034h		;aa8e	01 34 00	. 4 .
	nop			;aa91	00		.
	ld a,(de)		;aa92	1a		.
	ld b,b			;aa93	40		@
	ld a,(bc)		;aa94	0a		.
	ld bc,00038h		;aa95	01 38 00	. 8 .
	nop			;aa98	00		.
	dec de			;aa99	1b		.
	ld b,b			;aa9a	40		@
	ld a,(bc)		;aa9b	0a		.
	ld bc,00040h		;aa9c	01 40 00	. @ .
	nop			;aa9f	00		.
	djnz laae2h		;aaa0	10 40		. @
	inc c			;aaa2	0c		.
	ld bc,00040h		;aaa3	01 40 00	. @ .
	nop			;aaa6	00		.
	ld (de),a		;aaa7	12		.
	ld b,b			;aaa8	40		@
	dec c			;aaa9	0d		.
	ld bc,00040h		;aaaa	01 40 00	. @ .
	nop			;aaad	00		.
	inc d			;aaae	14		.
	ld b,b			;aaaf	40		@
	ld c,001h		;aab0	0e 01		. .
	ld b,b			;aab2	40		@
	nop			;aab3	00		.
	nop			;aab4	00		.
	ld d,040h		;aab5	16 40		. @
	ld (de),a		;aab7	12		.
	ld bc,00040h		;aab8	01 40 00	. @ .
	nop			;aabb	00		.
	jr $+66			;aabc	18 40		. @
	inc de			;aabe	13		.
	ld bc,00040h		;aabf	01 40 00	. @ .
	nop			;aac2	00		.
	ld a,(de)		;aac3	1a		.
	ld b,b			;aac4	40		@
	inc d			;aac5	14		.
laac6h:
	ld bc,0003ch		;aac6	01 3c 00	. < .
	nop			;aac9	00		.
	dec (hl)		;aaca	35		5
	ld b,b			;aacb	40		@
	inc bc			;aacc	03		.
	inc bc			;aacd	03		.
	inc c			;aace	0c		.
	inc b			;aacf	04		.
	inc bc			;aad0	03		.
	inc l			;aad1	2c		,
	ld b,b			;aad2	40		@
	ld bc,00010h		;aad3	01 10 00	. . .
	nop			;aad6	00		.
	dec l			;aad7	2d		-
	ld b,b			;aad8	40		@
	nop			;aad9	00		.
	inc d			;aada	14		.
	djnz laaddh		;aadb	10 00		. .
laaddh:
	ld l,040h		;aadd	2e 40		. @
	nop			;aadf	00		.
	inc bc			;aae0	03		.
	nop			;aae1	00		.
laae2h:
	inc b			;aae2	04		.
	inc bc			;aae3	03		.
	add hl,hl		;aae4	29		)
	ld b,b			;aae5	40		@
	ld bc,00004h		;aae6	01 04 00	. . .
	nop			;aae9	00		.
	ld hl,(00040h)		;aaea	2a 40 00	* @ .
	ex af,af'		;aaed	08		.
	djnz laaf0h		;aaee	10 00		. .
laaf0h:
	dec hl			;aaf0	2b		+
	ld b,b			;aaf1	40		@
	nop			;aaf2	00		.
	inc bc			;aaf3	03		.
	jr $+6			;aaf4	18 04		. .
	inc bc			;aaf6	03		.
	cpl			;aaf7	2f		/
	ld b,b			;aaf8	40		@
	ld bc,0001ch		;aaf9	01 1c 00	. . .
	nop			;aafc	00		.
	jr nc,lab3fh		;aafd	30 40		0 @
	nop			;aaff	00		.
	jr nz,lab12h		;ab00	20 10		  .
	nop			;ab02	00		.
	ld sp,00040h		;ab03	31 40 00	1 @ .
	ld (bc),a		;ab06	02		.
	ex af,af'		;ab07	08		.
	nop			;ab08	00		.
	nop			;ab09	00		.
	ld b,040h		;ab0a	06 40		. @
	nop			;ab0c	00		.
	inc c			;ab0d	0c		.
	nop			;ab0e	00		.
	ld (bc),a		;ab0f	02		.
	ld b,040h		;ab10	06 40		. @
lab12h:
	ld bc,00002h		;ab12	01 02 00	. . .
	nop			;ab15	00		.
	nop			;ab16	00		.
	ld b,040h		;ab17	06 40		. @
	nop			;ab19	00		.
	inc b			;ab1a	04		.
	nop			;ab1b	00		.
	ld (bc),a		;ab1c	02		.
	ld b,040h		;ab1d	06 40		. @
	ld bc,01002h		;ab1f	01 02 10	. . .
	nop			;ab22	00		.
	nop			;ab23	00		.
	ld b,040h		;ab24	06 40		. @
	nop			;ab26	00		.
	inc d			;ab27	14		.
	nop			;ab28	00		.
	ld (bc),a		;ab29	02		.
	ld b,040h		;ab2a	06 40		. @
	ld bc,0dc01h		;ab2c	01 01 dc	. . .
	nop			;ab2f	00		.
	nop			;ab30	00		.
	ld b,04ah		;ab31	06 4a		. J
	nop			;ab33	00		.
	ld bc,000e4h		;ab34	01 e4 00	. . .
	nop			;ab37	00		.
	ld b,04ah		;ab38	06 4a		. J
	nop			;ab3a	00		.
	ld bc,000ech		;ab3b	01 ec 00	. . .
	nop			;ab3e	00		.
lab3fh:
	ld b,04ah		;ab3f	06 4a		. J
	nop			;ab41	00		.
	ld bc,000f4h		;ab42	01 f4 00	. . .
	nop			;ab45	00		.
	ld b,04ah		;ab46	06 4a		. J
	nop			;ab48	00		.
	ld bc,00034h		;ab49	01 34 00	. 4 .
	nop			;ab4c	00		.
	ld d,040h		;ab4d	16 40		. @
	nop			;ab4f	00		.
	ld bc,00024h		;ab50	01 24 00	. $ .
	nop			;ab53	00		.
	add hl,sp		;ab54	39		9
	ld b,b			;ab55	40		@
	ld bc,02801h		;ab56	01 01 28	. . (
	nop			;ab59	00		.
	nop			;ab5a	00		.
	ld a,(00140h)		;ab5b	3a 40 01	: @ .
	ld bc,0002ch		;ab5e	01 2c 00	. , .
	nop			;ab61	00		.
	dec sp			;ab62	3b		;
	ld b,b			;ab63	40		@
	ld bc,03001h		;ab64	01 01 30	. . 0
	nop			;ab67	00		.
	nop			;ab68	00		.
	inc a			;ab69	3c		<
	ld b,b			;ab6a	40		@
	ld bc,02801h		;ab6b	01 01 28	. . (
	nop			;ab6e	00		.
	nop			;ab6f	00		.
	ld e,040h		;ab70	1e 40		. @
	ld (bc),a		;ab72	02		.
	ld bc,0002ch		;ab73	01 2c 00	. , .
	nop			;ab76	00		.
	dec bc			;ab77	0b		.
	ld b,b			;ab78	40		@
	ld (bc),a		;ab79	02		.
	ld bc,00044h		;ab7a	01 44 00	. D .
	nop			;ab7d	00		.
	ret z			;ab7e	c8		.
	nop			;ab7f	00		.
	ld (bc),a		;ab80	02		.
	ld bc,00044h		;ab81	01 44 00	. D .
	nop			;ab84	00		.
	jp z,00200h		;ab85	ca 00 02	. . .
	ld bc,00044h		;ab88	01 44 00	. D .
	nop			;ab8b	00		.
	call z,00200h		;ab8c	cc 00 02	. . .
	ld bc,00044h		;ab8f	01 44 00	. D .
	nop			;ab92	00		.
	ld c,040h		;ab93	0e 40		. @
	ld (bc),a		;ab95	02		.
	ld bc,00048h		;ab96	01 48 00	. H .
	nop			;ab99	00		.
	ret			;ab9a	c9		.
	nop			;ab9b	00		.
	ld (bc),a		;ab9c	02		.
	ld bc,00048h		;ab9d	01 48 00	. H .
	nop			;aba0	00		.
	rlc b			;aba1	cb 00		. .
	ld (bc),a		;aba3	02		.
	ld bc,00048h		;aba4	01 48 00	. H .
	nop			;aba7	00		.
	call 00200h		;aba8	cd 00 02	. . .
	ld bc,00048h		;abab	01 48 00	. H .
	nop			;abae	00		.
	ld c,040h		;abaf	0e 40		. @
	ld (bc),a		;abb1	02		.
	ld bc,00034h		;abb2	01 34 00	. 4 .
	inc b			;abb5	04		.
	add hl,hl		;abb6	29		)
	ld b,b			;abb7	40		@
	inc bc			;abb8	03		.
	ld bc,00038h		;abb9	01 38 00	. 8 .
	inc b			;abbc	04		.
	ld hl,(00340h)		;abbd	2a 40 03	* @ .
	ld bc,00434h		;abc0	01 34 04	. 4 .
	inc b			;abc3	04		.
	dec hl			;abc4	2b		+
	ld b,b			;abc5	40		@
	inc bc			;abc6	03		.
	ld bc,00438h		;abc7	01 38 04	. 8 .
	inc b			;abca	04		.
	inc l			;abcb	2c		,
	ld b,b			;abcc	40		@
	inc bc			;abcd	03		.
	ld bc,00434h		;abce	01 34 04	. 4 .
	nop			;abd1	00		.
	dec l			;abd2	2d		-
	ld b,b			;abd3	40		@
	inc bc			;abd4	03		.
	ld bc,00438h		;abd5	01 38 04	. 8 .
	nop			;abd8	00		.
	ld l,040h		;abd9	2e 40		. @
	inc bc			;abdb	03		.
	ld bc,00434h		;abdc	01 34 04	. 4 .
	call m,0402fh		;abdf	fc 2f 40	. / @
	inc bc			;abe2	03		.
	ld bc,00438h		;abe3	01 38 04	. 8 .
	call m,04030h		;abe6	fc 30 40	. 0 @
	inc bc			;abe9	03		.
	ld bc,00034h		;abea	01 34 00	. 4 .
	call m,04031h		;abed	fc 31 40	. 1 @
	inc bc			;abf0	03		.
	ld bc,00038h		;abf1	01 38 00	. 8 .
	call m,04032h		;abf4	fc 32 40	. 2 @
	inc bc			;abf7	03		.
	ld bc,0fc34h		;abf8	01 34 fc	. 4 .
	call m,04033h		;abfb	fc 33 40	. 3 @
	inc bc			;abfe	03		.
	ld bc,0fc38h		;abff	01 38 fc	. 8 .
	call m,04034h		;ac02	fc 34 40	. 4 @
	inc bc			;ac05	03		.
	ld bc,0fc34h		;ac06	01 34 fc	. 4 .
	nop			;ac09	00		.
	dec (hl)		;ac0a	35		5
	ld b,b			;ac0b	40		@
	inc bc			;ac0c	03		.
	ld bc,0fc38h		;ac0d	01 38 fc	. 8 .
	nop			;ac10	00		.
	ld (hl),040h		;ac11	36 40		6 @
	inc bc			;ac13	03		.
	ld bc,0fc34h		;ac14	01 34 fc	. 4 .
	inc b			;ac17	04		.
	scf			;ac18	37		7
	ld b,b			;ac19	40		@
	inc bc			;ac1a	03		.
	ld bc,0fc38h		;ac1b	01 38 fc	. 8 .
	inc b			;ac1e	04		.
	jr c,lac61h		;ac1f	38 40		8 @
	inc bc			;ac21	03		.
	ld l,d			;ac22	6a		j
	xor h			;ac23	ac		.
	ld (hl),c		;ac24	71		q
	xor h			;ac25	ac		.
	ld a,b			;ac26	78		x
	xor h			;ac27	ac		.
	ld a,a			;ac28	7f		.
	xor h			;ac29	ac		.
	add a,(hl)		;ac2a	86		.
	xor h			;ac2b	ac		.
	adc a,l			;ac2c	8d		.
	xor h			;ac2d	ac		.
	sub h			;ac2e	94		.
	xor h			;ac2f	ac		.
	sbc a,e			;ac30	9b		.
	xor h			;ac31	ac		.
	and d			;ac32	a2		.
	xor h			;ac33	ac		.
	xor c			;ac34	a9		.
	xor h			;ac35	ac		.
	or a			;ac36	b7		.
	xor h			;ac37	ac		.
	cp (hl)			;ac38	be		.
	xor h			;ac39	ac		.
	push bc			;ac3a	c5		.
	xor h			;ac3b	ac		.
	call z,0d3ach		;ac3c	cc ac d3	. . .
	xor h			;ac3f	ac		.
	jp c,0e1ach		;ac40	da ac e1	. . .
	xor h			;ac43	ac		.
	ret pe			;ac44	e8		.
	xor h			;ac45	ac		.
	rst 28h			;ac46	ef		.
	xor h			;ac47	ac		.
	or 0ach			;ac48	f6 ac		. .
	defb 0fdh,0ach ;xor iyh	;ac4a	fd ac		. .
	inc b			;ac4c	04		.
	xor l			;ac4d	ad		.
	dec bc			;ac4e	0b		.
	xor l			;ac4f	ad		.
	ld (de),a		;ac50	12		.
	xor l			;ac51	ad		.
	daa			;ac52	27		'
	xor l			;ac53	ad		.
	ld l,0adh		;ac54	2e ad		. .
	add hl,de		;ac56	19		.
	xor l			;ac57	ad		.
	jr nz,$-81		;ac58	20 ad		  .
	dec (hl)		;ac5a	35		5
	xor l			;ac5b	ad		.
	inc a			;ac5c	3c		<
	xor l			;ac5d	ad		.
	ld b,e			;ac5e	43		C
	xor l			;ac5f	ad		.
	ld c,d			;ac60	4a		J
lac61h:
	xor l			;ac61	ad		.
	ld e,a			;ac62	5f		_
	xor l			;ac63	ad		.
	ld h,(hl)		;ac64	66		f
	xor l			;ac65	ad		.
	ld d,c			;ac66	51		Q
	xor l			;ac67	ad		.
	ld e,b			;ac68	58		X
	xor l			;ac69	ad		.
	ld bc,00000h		;ac6a	01 00 00	. . .
	nop			;ac6d	00		.
	ld e,h			;ac6e	5c		\
	ld e,l			;ac6f	5d		]
	inc bc			;ac70	03		.
	ld bc,00000h		;ac71	01 00 00	. . .
	nop			;ac74	00		.
	ld l,(hl)		;ac75	6e		n
	ld l,a			;ac76	6f		o
	inc bc			;ac77	03		.
	ld bc,00000h		;ac78	01 00 00	. . .
	nop			;ac7b	00		.
	and (hl)		;ac7c	a6		.
	and a			;ac7d	a7		.
	inc bc			;ac7e	03		.
	ld bc,00000h		;ac7f	01 00 00	. . .
	nop			;ac82	00		.
	ld d,h			;ac83	54		T
	ld d,l			;ac84	55		U
	inc bc			;ac85	03		.
	ld bc,00008h		;ac86	01 08 00	. . .
	nop			;ac89	00		.
	ld d,h			;ac8a	54		T
	ld d,l			;ac8b	55		U
	inc bc			;ac8c	03		.
	ld bc,00010h		;ac8d	01 10 00	. . .
	nop			;ac90	00		.
	ld d,h			;ac91	54		T
	ld d,l			;ac92	55		U
	inc bc			;ac93	03		.
	ld bc,00000h		;ac94	01 00 00	. . .
	nop			;ac97	00		.
	ld d,b			;ac98	50		P
	ld d,c			;ac99	51		Q
	inc bc			;ac9a	03		.
	ld bc,00000h		;ac9b	01 00 00	. . .
	nop			;ac9e	00		.
	ld d,d			;ac9f	52		R
	ld d,e			;aca0	53		S
	inc bc			;aca1	03		.
	ld bc,00000h		;aca2	01 00 00	. . .
	nop			;aca5	00		.
	add a,b			;aca6	80		.
	add a,c			;aca7	81		.
	inc bc			;aca8	03		.
	ld bc,00000h		;aca9	01 00 00	. . .
	nop			;acac	00		.
	and b			;acad	a0		.
	and c			;acae	a1		.
	inc bc			;acaf	03		.
	ld bc,00000h		;acb0	01 00 00	. . .
	nop			;acb3	00		.
	dec bc			;acb4	0b		.
	inc c			;acb5	0c		.
	inc bc			;acb6	03		.
	ld bc,00000h		;acb7	01 00 00	. . .
	nop			;acba	00		.
	ld h,h			;acbb	64		d
	ld h,l			;acbc	65		e
	inc bc			;acbd	03		.
	ld bc,00000h		;acbe	01 00 00	. . .
	nop			;acc1	00		.
	ld (hl),h		;acc2	74		t
	ld (hl),l		;acc3	75		u
	inc bc			;acc4	03		.
	ld bc,00000h		;acc5	01 00 00	. . .
	nop			;acc8	00		.
	sub h			;acc9	94		.
	sub l			;acca	95		.
	inc bc			;accb	03		.
	ld bc,00000h		;accc	01 00 00	. . .
	nop			;accf	00		.
	ld e,d			;acd0	5a		Z
	ld e,e			;acd1	5b		[
	inc bc			;acd2	03		.
	ld bc,00000h		;acd3	01 00 00	. . .
	nop			;acd6	00		.
	and d			;acd7	a2		.
	and e			;acd8	a3		.
	inc bc			;acd9	03		.
	ld bc,00008h		;acda	01 08 00	. . .
	nop			;acdd	00		.
	ld a,b			;acde	78		x
	ld a,c			;acdf	79		y
	inc bc			;ace0	03		.
	ld bc,00000h		;ace1	01 00 00	. . .
	nop			;ace4	00		.
	halt			;ace5	76		v
	ld (hl),a		;ace6	77		w
	inc bc			;ace7	03		.
	ld bc,00018h		;ace8	01 18 00	. . .
	nop			;aceb	00		.
	ld a,b			;acec	78		x
	ld a,c			;aced	79		y
	inc bc			;acee	03		.
	ld bc,00020h		;acef	01 20 00	.   .
	nop			;acf2	00		.
	halt			;acf3	76		v
	ld (hl),a		;acf4	77		w
	inc bc			;acf5	03		.
	ld bc,00010h		;acf6	01 10 00	. . .
	nop			;acf9	00		.
	ld a,d			;acfa	7a		z
	ld a,e			;acfb	7b		{
	inc bc			;acfc	03		.
	ld bc,00020h		;acfd	01 20 00	.   .
	nop			;ad00	00		.
	xor (hl)		;ad01	ae		.
	xor a			;ad02	af		.
	inc bc			;ad03	03		.
	ld bc,00028h		;ad04	01 28 00	. ( .
	nop			;ad07	00		.
	or b			;ad08	b0		.
	or c			;ad09	b1		.
	inc bc			;ad0a	03		.
	ld bc,00030h		;ad0b	01 30 00	. 0 .
	nop			;ad0e	00		.
	or b			;ad0f	b0		.
	or c			;ad10	b1		.
	inc bc			;ad11	03		.
	ld bc,00038h		;ad12	01 38 00	. 8 .
	nop			;ad15	00		.
	xor (hl)		;ad16	ae		.
	xor a			;ad17	af		.
	inc bc			;ad18	03		.
	ld bc,00000h		;ad19	01 00 00	. . .
	nop			;ad1c	00		.
	xor d			;ad1d	aa		.
	xor e			;ad1e	ab		.
	inc bc			;ad1f	03		.
	ld bc,00008h		;ad20	01 08 00	. . .
	nop			;ad23	00		.
	xor d			;ad24	aa		.
	xor e			;ad25	ab		.
	inc bc			;ad26	03		.
	ld bc,00010h		;ad27	01 10 00	. . .
	nop			;ad2a	00		.
	xor h			;ad2b	ac		.
	xor l			;ad2c	ad		.
	inc bc			;ad2d	03		.
	ld bc,00018h		;ad2e	01 18 00	. . .
	nop			;ad31	00		.
	xor h			;ad32	ac		.
	xor l			;ad33	ad		.
	inc bc			;ad34	03		.
	ld bc,00060h		;ad35	01 60 00	. ` .
	nop			;ad38	00		.
	or (hl)			;ad39	b6		.
	or a			;ad3a	b7		.
	inc bc			;ad3b	03		.
	ld bc,00068h		;ad3c	01 68 00	. h .
	nop			;ad3f	00		.
	cp b			;ad40	b8		.
	cp c			;ad41	b9		.
	inc bc			;ad42	03		.
	ld bc,00070h		;ad43	01 70 00	. p .
	nop			;ad46	00		.
	cp b			;ad47	b8		.
	cp c			;ad48	b9		.
	inc bc			;ad49	03		.
	ld bc,00078h		;ad4a	01 78 00	. x .
	nop			;ad4d	00		.
	or (hl)			;ad4e	b6		.
	or a			;ad4f	b7		.
	inc bc			;ad50	03		.
	ld bc,00040h		;ad51	01 40 00	. @ .
	nop			;ad54	00		.
	or d			;ad55	b2		.
	or e			;ad56	b3		.
	inc bc			;ad57	03		.
	ld bc,00048h		;ad58	01 48 00	. H .
	nop			;ad5b	00		.
	or d			;ad5c	b2		.
	or e			;ad5d	b3		.
	inc bc			;ad5e	03		.
	ld bc,00050h		;ad5f	01 50 00	. P .
	nop			;ad62	00		.
	or h			;ad63	b4		.
	or l			;ad64	b5		.
	inc bc			;ad65	03		.
	ld bc,00058h		;ad66	01 58 00	. X .
	nop			;ad69	00		.
	or h			;ad6a	b4		.
	or l			;ad6b	b5		.
	inc bc			;ad6c	03		.
	inc d			;ad6d	14		.
	xor (hl)		;ad6e	ae		.
	daa			;ad6f	27		'
	xor (hl)		;ad70	ae		.
	ld l,0aeh		;ad71	2e ae		. .
	dec (hl)		;ad73	35		5
	xor (hl)		;ad74	ae		.
	inc a			;ad75	3c		<
	xor (hl)		;ad76	ae		.
	ld b,e			;ad77	43		C
	xor (hl)		;ad78	ae		.
	ret m			;ad79	f8		.
	xor l			;ad7a	ad		.
	rst 38h			;ad7b	ff		.
	xor l			;ad7c	ad		.
	ld b,0aeh		;ad7d	06 ae		. .
	dec c			;ad7f	0d		.
	xor (hl)		;ad80	ae		.
	pop af			;ad81	f1		.
	xor l			;ad82	ad		.
	ex (sp),hl		;ad83	e3		.
	xor l			;ad84	ad		.
	jp pe,027adh		;ad85	ea ad 27	. . '
	xor (hl)		;ad88	ae		.
	sbc a,b			;ad89	98		.
	xor l			;ad8a	ad		.
	or c			;ad8b	b1		.
	xor l			;ad8c	ad		.
	jp z,091adh		;ad8d	ca ad 91	. . .
	xor l			;ad90	ad		.
	ld bc,00000h		;ad91	01 00 00	. . .
	nop			;ad94	00		.
	ld d,b			;ad95	50		P
	ld d,c			;ad96	51		Q
	inc bc			;ad97	03		.
	inc b			;ad98	04		.
	nop			;ad99	00		.
	nop			;ad9a	00		.
	nop			;ad9b	00		.
	nop			;ad9c	00		.
	nop			;ad9d	00		.
	inc bc			;ad9e	03		.
	nop			;ad9f	00		.
	nop			;ada0	00		.
	nop			;ada1	00		.
	nop			;ada2	00		.
	nop			;ada3	00		.
	inc bc			;ada4	03		.
	nop			;ada5	00		.
	nop			;ada6	00		.
	nop			;ada7	00		.
	nop			;ada8	00		.
	nop			;ada9	00		.
	inc bc			;adaa	03		.
	nop			;adab	00		.
	nop			;adac	00		.
	nop			;adad	00		.
	nop			;adae	00		.
	nop			;adaf	00		.
	inc bc			;adb0	03		.
	inc b			;adb1	04		.
	nop			;adb2	00		.
	nop			;adb3	00		.
	nop			;adb4	00		.
	nop			;adb5	00		.
	nop			;adb6	00		.
ladb7h:
	inc bc			;adb7	03		.
	ex af,af'		;adb8	08		.
	jr $+34			;adb9	18 20		.  
	ld b,04ah		;adbb	06 4a		. J
	inc bc			;adbd	03		.
	nop			;adbe	00		.
	nop			;adbf	00		.
	nop			;adc0	00		.
	nop			;adc1	00		.
	nop			;adc2	00		.
	inc bc			;adc3	03		.
	ex af,af'		;adc4	08		.
	jr ladffh		;adc5	18 38		. 8
	ld b,04ah		;adc7	06 4a		. J
	inc bc			;adc9	03		.
	inc b			;adca	04		.
	nop			;adcb	00		.
	jr ladeeh		;adcc	18 20		.  
	ld b,04ah		;adce	06 4a		. J
	inc bc			;add0	03		.
	ex af,af'		;add1	08		.
	jr z,ladf4h		;add2	28 20		(  
	ld b,04ah		;add4	06 4a		. J
	inc bc			;add6	03		.
	nop			;add7	00		.
	jr lae12h		;add8	18 38		. 8
	ld b,04ah		;adda	06 4a		. J
	inc bc			;addc	03		.
	ex af,af'		;addd	08		.
	jr z,$+58		;adde	28 38		( 8
	ld b,04ah		;ade0	06 4a		. J
lade2h:
	inc bc			;ade2	03		.
	ld bc,00000h		;ade3	01 00 00	. . .
	nop			;ade6	00		.
lade7h:
	cp a			;ade7	bf		.
	ret nz			;ade8	c0		.
	inc bc			;ade9	03		.
	ld bc,00008h		;adea	01 08 00	. . .
	nop			;aded	00		.
ladeeh:
	cp a			;adee	bf		.
	ret nz			;adef	c0		.
	inc bc			;adf0	03		.
	ld bc,00000h		;adf1	01 00 00	. . .
ladf4h:
	nop			;adf4	00		.
	scf			;adf5	37		7
	jr c,ladfbh		;adf6	38 03		8 .
	ld bc,00000h		;adf8	01 00 00	. . .
ladfbh:
	nop			;adfb	00		.
	sub (hl)		;adfc	96		.
	sub a			;adfd	97		.
	inc bc			;adfe	03		.
ladffh:
	ld bc,00008h		;adff	01 08 00	. . .
	nop			;ae02	00		.
	sub (hl)		;ae03	96		.
	sub a			;ae04	97		.
	inc bc			;ae05	03		.
	ld bc,00010h		;ae06	01 10 00	. . .
	nop			;ae09	00		.
	sub (hl)		;ae0a	96		.
	sub a			;ae0b	97		.
	inc bc			;ae0c	03		.
	ld bc,00018h		;ae0d	01 18 00	. . .
	nop			;ae10	00		.
	sub (hl)		;ae11	96		.
lae12h:
	sub a			;ae12	97		.
	inc bc			;ae13	03		.
	inc bc			;ae14	03		.
	ex af,af'		;ae15	08		.
	nop			;ae16	00		.
	ld b,060h		;ae17	06 60		. `
	ld h,c			;ae19	61		a
	inc bc			;ae1a	03		.
	nop			;ae1b	00		.
	djnz lae1eh		;ae1c	10 00		. .
lae1eh:
	ld e,(hl)		;ae1e	5e		^
	ld e,a			;ae1f	5f		_
	inc bc			;ae20	03		.
	ex af,af'		;ae21	08		.
	jr nz,lae2ah		;ae22	20 06		  .
	ld h,b			;ae24	60		`
	ld h,c			;ae25	61		a
	inc bc			;ae26	03		.
	ld bc,01100h		;ae27	01 00 11	. . .
lae2ah:
	ex af,af'		;ae2a	08		.
	sbc a,d			;ae2b	9a		.
	sbc a,e			;ae2c	9b		.
	inc bc			;ae2d	03		.
	ld bc,00e08h		;ae2e	01 08 0e	. . .
	djnz $-88		;ae31	10 a6		. .
	and a			;ae33	a7		.
	inc bc			;ae34	03		.
	ld bc,00c10h		;ae35	01 10 0c	. . .
	jr $-56			;ae38	18 c6		. .
	rst 0			;ae3a	c7		.
	inc bc			;ae3b	03		.
	ld bc,00e18h		;ae3c	01 18 0e	. . .
	jr nz,lade7h		;ae3f	20 a6		  .
	and a			;ae41	a7		.
	inc bc			;ae42	03		.
	ld bc,01120h		;ae43	01 20 11	.   .
	jr z,lade2h		;ae46	28 9a		( .
	sbc a,e			;ae48	9b		.
	inc bc			;ae49	03		.
	ld (hl),a		;ae4a	77		w
	xor (hl)		;ae4b	ae		.
	ld l,d			;ae4c	6a		j
	xor (hl)		;ae4d	ae		.
	adc a,e			;ae4e	8b		.
	xor (hl)		;ae4f	ae		.
	xor d			;ae50	aa		.
	xor (hl)		;ae51	ae		.
	or a			;ae52	b7		.
	xor (hl)		;ae53	ae		.
	call nz,084aeh		;ae54	c4 ae 84	. . .
	xor (hl)		;ae57	ae		.
	pop de			;ae58	d1		.
	xor (hl)		;ae59	ae		.
	ret c			;ae5a	d8		.
	xor (hl)		;ae5b	ae		.
	rst 18h			;ae5c	df		.
	xor (hl)		;ae5d	ae		.
	and 0aeh		;ae5e	e6 ae		. .
	di			;ae60	f3		.
	xor (hl)		;ae61	ae		.
	daa			;ae62	27		'
	xor a			;ae63	af		.
	ld a,(de)		;ae64	1a		.
	xor a			;ae65	af		.
	dec c			;ae66	0d		.
	xor a			;ae67	af		.
	nop			;ae68	00		.
	xor a			;ae69	af		.
	ld (bc),a		;ae6a	02		.
	nop			;ae6b	00		.
	nop			;ae6c	00		.
	nop			;ae6d	00		.
	ld (hl),b		;ae6e	70		p
	ld (hl),c		;ae6f	71		q
	inc bc			;ae70	03		.
	ex af,af'		;ae71	08		.
	djnz lae74h		;ae72	10 00		. .
lae74h:
	ld (hl),d		;ae74	72		r
	ld (hl),e		;ae75	73		s
	inc bc			;ae76	03		.
	ld (bc),a		;ae77	02		.
	djnz lae7ah		;ae78	10 00		. .
lae7ah:
	nop			;ae7a	00		.
	ld (hl),b		;ae7b	70		p
	ld (hl),c		;ae7c	71		q
	inc bc			;ae7d	03		.
	jr $+18			;ae7e	18 10		. .
	nop			;ae80	00		.
	ld (hl),d		;ae81	72		r
	ld (hl),e		;ae82	73		s
	inc bc			;ae83	03		.
	ld bc,00000h		;ae84	01 00 00	. . .
	nop			;ae87	00		.
	cp d			;ae88	ba		.
	cp e			;ae89	bb		.
	inc bc			;ae8a	03		.
	dec b			;ae8b	05		.
	nop			;ae8c	00		.
	nop			;ae8d	00		.
	nop			;ae8e	00		.
	ld e,04ch		;ae8f	1e 4c		. L
	inc bc			;ae91	03		.
	nop			;ae92	00		.
	nop			;ae93	00		.
	jr nz,$+56		;ae94	20 36		  6
	ld c,h			;ae96	4c		L
	inc bc			;ae97	03		.
	inc b			;ae98	04		.
	ex af,af'		;ae99	08		.
	djnz laeb9h		;ae9a	10 1d		. .
	ld c,h			;ae9c	4c		L
	inc bc			;ae9d	03		.
	ex af,af'		;ae9e	08		.
	djnz laea1h		;ae9f	10 00		. .
laea1h:
	inc e			;aea1	1c		.
	ld c,h			;aea2	4c		L
	inc bc			;aea3	03		.
	ex af,af'		;aea4	08		.
	djnz laec7h		;aea5	10 20		.  
	inc e			;aea7	1c		.
	ld c,h			;aea8	4c		L
	inc bc			;aea9	03		.
	ld (bc),a		;aeaa	02		.
	nop			;aeab	00		.
	nop			;aeac	00		.
laeadh:
	nop			;aead	00		.
	add a,d			;aeae	82		.
	add a,e			;aeaf	83		.
	inc bc			;aeb0	03		.
	ex af,af'		;aeb1	08		.
	djnz laeb4h		;aeb2	10 00		. .
laeb4h:
	add a,h			;aeb4	84		.
	add a,l			;aeb5	85		.
	inc bc			;aeb6	03		.
	ld (bc),a		;aeb7	02		.
	nop			;aeb8	00		.
laeb9h:
	nop			;aeb9	00		.
	nop			;aeba	00		.
	ccf			;aebb	3f		?
	ld b,b			;aebc	40		@
	inc bc			;aebd	03		.
	ex af,af'		;aebe	08		.
	nop			;aebf	00		.
	djnz laf01h		;aec0	10 3f		. ?
	ld b,b			;aec2	40		@
	inc bc			;aec3	03		.
	ld (bc),a		;aec4	02		.
	djnz laec7h		;aec5	10 00		. .
laec7h:
	nop			;aec7	00		.
	ld b,c			;aec8	41		A
	ld b,d			;aec9	42		B
	inc bc			;aeca	03		.
	jr laecdh		;aecb	18 00		. .
laecdh:
	djnz laf10h		;aecd	10 41		. A
	ld b,d			;aecf	42		B
	inc bc			;aed0	03		.
	ld bc,00000h		;aed1	01 00 00	. . .
	nop			;aed4	00		.
	dec bc			;aed5	0b		.
	ld c,h			;aed6	4c		L
	inc bc			;aed7	03		.
	ld bc,00000h		;aed8	01 00 00	. . .
	nop			;aedb	00		.
	add a,(hl)		;aedc	86		.
	add a,a			;aedd	87		.
	inc bc			;aede	03		.
	ld bc,00008h		;aedf	01 08 00	. . .
	nop			;aee2	00		.
	adc a,b			;aee3	88		.
	adc a,c			;aee4	89		.
	inc bc			;aee5	03		.
	ld (bc),a		;aee6	02		.
	nop			;aee7	00		.
	ret nz			;aee8	c0		.
	nop			;aee9	00		.
	nop			;aeea	00		.
	ld b,b			;aeeb	40		@
	inc bc			;aeec	03		.
	nop			;aeed	00		.
	ret nz			;aeee	c0		.
	nop			;aeef	00		.
	nop			;aef0	00		.
	ld b,b			;aef1	40		@
	inc bc			;aef2	03		.
	ld (bc),a		;aef3	02		.
	ld b,b			;aef4	40		@
	rrca			;aef5	0f		.
	add hl,de		;aef6	19		.
	dec b			;aef7	05		.
	ld c,b			;aef8	48		H
	inc bc			;aef9	03		.
	jr z,laf1bh		;aefa	28 1f		( .
	add hl,de		;aefc	19		.
	dec b			;aefd	05		.
	ld c,b			;aefe	48		H
	inc bc			;aeff	03		.
	ld (bc),a		;af00	02		.
laf01h:
	nop			;af01	00		.
	ld (de),a		;af02	12		.
	jr nz,$+7		;af03	20 05		  .
	ld c,b			;af05	48		H
	inc bc			;af06	03		.
	ex af,af'		;af07	08		.
	ld (00516h),hl		;af08	22 16 05	" . .
	ld c,b			;af0b	48		H
	inc bc			;af0c	03		.
	ld (bc),a		;af0d	02		.
	djnz laf23h		;af0e	10 13		. .
laf10h:
	jr nz,$+7		;af10	20 05		  .
	ld c,b			;af12	48		H
	inc bc			;af13	03		.
	jr laf39h		;af14	18 23		. #
	ld d,005h		;af16	16 05		. .
	ld c,b			;af18	48		H
	inc bc			;af19	03		.
	ld (bc),a		;af1a	02		.
laf1bh:
	jr nz,laf2ch		;af1b	20 0f		  .
	add hl,de		;af1d	19		.
	dec b			;af1e	05		.
	ld c,b			;af1f	48		H
	inc bc			;af20	03		.
	jr z,laf42h		;af21	28 1f		( .
laf23h:
	add hl,de		;af23	19		.
	dec b			;af24	05		.
	ld c,b			;af25	48		H
	inc bc			;af26	03		.
	ld (bc),a		;af27	02		.
	jr nc,laf39h		;af28	30 0f		0 .
	jr $+7			;af2a	18 05		. .
laf2ch:
	ld c,b			;af2c	48		H
	inc bc			;af2d	03		.
	jr c,laf4fh		;af2e	38 1f		8 .
	jr laf37h		;af30	18 05		. .
	ld c,b			;af32	48		H
	inc bc			;af33	03		.
	ld d,c			;af34	51		Q
	xor a			;af35	af		.
	ld e,b			;af36	58		X
laf37h:
	xor a			;af37	af		.
	ld e,a			;af38	5f		_
laf39h:
	xor a			;af39	af		.
	ld h,(hl)		;af3a	66		f
	xor a			;af3b	af		.
	ld a,0afh		;af3c	3e af		> .
	inc bc			;af3e	03		.
	nop			;af3f	00		.
	nop			;af40	00		.
	nop			;af41	00		.
laf42h:
	adc a,h			;af42	8c		.
	adc a,l			;af43	8d		.
	inc bc			;af44	03		.
	ex af,af'		;af45	08		.
	djnz $+12		;af46	10 0a		. .
	adc a,(hl)		;af48	8e		.
	adc a,a			;af49	8f		.
	inc bc			;af4a	03		.
	nop			;af4b	00		.
	jr nz,laf4eh		;af4c	20 00		  .
laf4eh:
	adc a,h			;af4e	8c		.
laf4fh:
	adc a,l			;af4f	8d		.
	inc bc			;af50	03		.
	ld bc,00000h		;af51	01 00 00	. . .
	nop			;af54	00		.
	cp h			;af55	bc		.
	cp l			;af56	bd		.
	inc bc			;af57	03		.
	ld bc,00000h		;af58	01 00 00	. . .
	nop			;af5b	00		.
	adc a,d			;af5c	8a		.
	adc a,e			;af5d	8b		.
	inc bc			;af5e	03		.
	ld bc,00000h		;af5f	01 00 00	. . .
	nop			;af62	00		.
	sub b			;af63	90		.
	sub c			;af64	91		.
	inc bc			;af65	03		.
	ld bc,00008h		;af66	01 08 00	. . .
	nop			;af69	00		.
	dec a			;af6a	3d		=
	ld a,003h		;af6b	3e 03		> .
	defb 0edh ;next byte illegal after ed	;af6d	ed		.
	xor a			;af6e	af		.
	call p,0fbafh		;af6f	f4 af fb	. . .
	xor a			;af72	af		.
	ld (bc),a		;af73	02		.
	or b			;af74	b0		.
	add a,l			;af75	85		.
	xor a			;af76	af		.
	sub d			;af77	92		.
	xor a			;af78	af		.
	sbc a,a			;af79	9f		.
	xor a			;af7a	af		.
	xor h			;af7b	ac		.
	xor a			;af7c	af		.
	cp c			;af7d	b9		.
	xor a			;af7e	af		.
	add a,0afh		;af7f	c6 af		. .
	out (0afh),a		;af81	d3 af		. .
	ret po			;af83	e0		.
	xor a			;af84	af		.
	ld (bc),a		;af85	02		.
	nop			;af86	00		.
	ret nz			;af87	c0		.
	nop			;af88	00		.
	nop			;af89	00		.
	ld b,b			;af8a	40		@
	ld bc,0c000h		;af8b	01 00 c0	. . .
	nop			;af8e	00		.
	nop			;af8f	00		.
	ld b,b			;af90	40		@
	ld bc,00002h		;af91	01 02 00	. . .
	nop			;af94	00		.
	nop			;af95	00		.
	rlca			;af96	07		.
	ld c,(hl)		;af97	4e		N
	ld bc,06000h		;af98	01 00 60	. . `
	nop			;af9b	00		.
	rlca			;af9c	07		.
	ld c,(hl)		;af9d	4e		N
	ld bc,00802h		;af9e	01 02 08	. . .
	nop			;afa1	00		.
	nop			;afa2	00		.
	rlca			;afa3	07		.
	ld c,(hl)		;afa4	4e		N
	ld bc,06008h		;afa5	01 08 60	. . `
	nop			;afa8	00		.
	rlca			;afa9	07		.
	ld c,(hl)		;afaa	4e		N
	ld bc,01002h		;afab	01 02 10	. . .
lafaeh:
	nop			;afae	00		.
	nop			;afaf	00		.
	rlca			;afb0	07		.
	ld c,(hl)		;afb1	4e		N
	ld bc,06010h		;afb2	01 10 60	. . `
	nop			;afb5	00		.
	rlca			;afb6	07		.
	ld c,(hl)		;afb7	4e		N
	ld bc,00002h		;afb8	01 02 00	. . .
	ret nz			;afbb	c0		.
	nop			;afbc	00		.
	nop			;afbd	00		.
	ld b,b			;afbe	40		@
	ld bc,0c000h		;afbf	01 00 c0	. . .
	nop			;afc2	00		.
	nop			;afc3	00		.
	ld b,b			;afc4	40		@
lafc5h:
	ld bc,00002h		;afc5	01 02 00	. . .
	nop			;afc8	00		.
	nop			;afc9	00		.
	rlca			;afca	07		.
	ld c,(hl)		;afcb	4e		N
	ld bc,05000h		;afcc	01 00 50	. . P
	nop			;afcf	00		.
	rlca			;afd0	07		.
	ld c,(hl)		;afd1	4e		N
	ld bc,00802h		;afd2	01 02 08	. . .
	nop			;afd5	00		.
	nop			;afd6	00		.
	rlca			;afd7	07		.
	ld c,(hl)		;afd8	4e		N
	ld bc,05008h		;afd9	01 08 50	. . P
	nop			;afdc	00		.
	rlca			;afdd	07		.
	ld c,(hl)		;afde	4e		N
	ld bc,01002h		;afdf	01 02 10	. . .
	nop			;afe2	00		.
	nop			;afe3	00		.
	rlca			;afe4	07		.
	ld c,(hl)		;afe5	4e		N
	ld bc,05010h		;afe6	01 10 50	. . P
	nop			;afe9	00		.
	rlca			;afea	07		.
	ld c,(hl)		;afeb	4e		N
	ld bc,00001h		;afec	01 01 00	. . .
	nop			;afef	00		.
	nop			;aff0	00		.
	inc h			;aff1	24		$
	ld b,b			;aff2	40		@
	inc bc			;aff3	03		.
	ld bc,00004h		;aff4	01 04 00	. . .
	nop			;aff7	00		.
	inc h			;aff8	24		$
	ld b,b			;aff9	40		@
	inc bc			;affa	03		.
	ld bc,00008h		;affb	01 08 00	. . .
	nop			;affe	00		.
	inc h			;afff	24		$
	ld b,b			;b000	40		@
	inc bc			;b001	03		.
	ld bc,0000ch		;b002	01 0c 00	. . .
	nop			;b005	00		.
	inc h			;b006	24		$
	ld b,b			;b007	40		@
	inc bc			;b008	03		.
	inc e			;b009	1c		.
	or b			;b00a	b0		.
	inc hl			;b00b	23		#
	or b			;b00c	b0		.
	ld hl,(031b0h)		;b00d	2a b0 31	* . 1
	or b			;b010	b0		.
	dec d			;b011	15		.
	or b			;b012	b0		.
	jr c,lafc5h		;b013	38 b0		8 .
	ld bc,00000h		;b015	01 00 00	. . .
	nop			;b018	00		.
	and h			;b019	a4		.
	and l			;b01a	a5		.
	inc bc			;b01b	03		.
	ld bc,00000h		;b01c	01 00 00	. . .
	nop			;b01f	00		.
	ld h,(hl)		;b020	66		f
	ld h,a			;b021	67		g
	inc bc			;b022	03		.
	ld bc,00008h		;b023	01 08 00	. . .
	nop			;b026	00		.
	ld l,b			;b027	68		h
	ld l,c			;b028	69		i
	inc bc			;b029	03		.
	ld bc,00010h		;b02a	01 10 00	. . .
	nop			;b02d	00		.
	ld l,d			;b02e	6a		j
	ld l,e			;b02f	6b		k
	inc bc			;b030	03		.
	ld bc,00018h		;b031	01 18 00	. . .
	nop			;b034	00		.
	ld l,h			;b035	6c		l
	ld l,l			;b036	6d		m
	inc bc			;b037	03		.
	ld bc,0fe00h		;b038	01 00 fe	. . .
	nop			;b03b	00		.
	rlca			;b03c	07		.
	ld c,e			;b03d	4b		K
	inc bc			;b03e	03		.
	ld d,a			;b03f	57		W
	or b			;b040	b0		.
	ld e,(hl)		;b041	5e		^
	or b			;b042	b0		.
	ld h,l			;b043	65		e
	or b			;b044	b0		.
	ld l,h			;b045	6c		l
	or b			;b046	b0		.
	ld (hl),e		;b047	73		s
	or b			;b048	b0		.
	ld a,d			;b049	7a		z
	or b			;b04a	b0		.
	add a,c			;b04b	81		.
	or b			;b04c	b0		.
	adc a,b			;b04d	88		.
	or b			;b04e	b0		.
	adc a,a			;b04f	8f		.
	or b			;b050	b0		.
	sub (hl)		;b051	96		.
	or b			;b052	b0		.
	sbc a,l			;b053	9d		.
	or b			;b054	b0		.
	and h			;b055	a4		.
	or b			;b056	b0		.
	ld bc,00000h		;b057	01 00 00	. . .
	nop			;b05a	00		.
	ld b,04ah		;b05b	06 4a		. J
	inc bc			;b05d	03		.
	ld bc,00008h		;b05e	01 08 00	. . .
	nop			;b061	00		.
	ld b,04ah		;b062	06 4a		. J
	inc bc			;b064	03		.
	ld bc,00010h		;b065	01 10 00	. . .
	nop			;b068	00		.
	ld b,04ah		;b069	06 4a		. J
	inc bc			;b06b	03		.
	ld bc,00018h		;b06c	01 18 00	. . .
	nop			;b06f	00		.
	ld b,04ah		;b070	06 4a		. J
	inc bc			;b072	03		.
	ld bc,00020h		;b073	01 20 00	.   .
	nop			;b076	00		.
	ld b,04ah		;b077	06 4a		. J
	inc bc			;b079	03		.
	ld bc,00028h		;b07a	01 28 00	. ( .
	nop			;b07d	00		.
	ld b,04ah		;b07e	06 4a		. J
	inc bc			;b080	03		.
	ld bc,00030h		;b081	01 30 00	. 0 .
	nop			;b084	00		.
	ld b,04ah		;b085	06 4a		. J
	inc bc			;b087	03		.
	ld bc,00038h		;b088	01 38 00	. 8 .
	nop			;b08b	00		.
	ld b,04ah		;b08c	06 4a		. J
	inc bc			;b08e	03		.
	ld bc,00040h		;b08f	01 40 00	. @ .
	nop			;b092	00		.
	ld b,04ah		;b093	06 4a		. J
	inc bc			;b095	03		.
	ld bc,00048h		;b096	01 48 00	. H .
	nop			;b099	00		.
	ld b,04ah		;b09a	06 4a		. J
	inc bc			;b09c	03		.
	ld bc,00050h		;b09d	01 50 00	. P .
	nop			;b0a0	00		.
	ld b,04ah		;b0a1	06 4a		. J
	inc bc			;b0a3	03		.
	ld bc,00058h		;b0a4	01 58 00	. X .
	nop			;b0a7	00		.
	ld b,04ah		;b0a8	06 4a		. J
	inc bc			;b0aa	03		.
	push hl			;b0ab	e5		.
	or b			;b0ac	b0		.
	call pe,071b0h		;b0ad	ec b0 71	. . q
	or c			;b0b0	b1		.
	ld a,b			;b0b1	78		x
	or c			;b0b2	b1		.
	ld a,b			;b0b3	78		x
	or c			;b0b4	b1		.
	ld a,b			;b0b5	78		x
sub_b0b6h:
	or c			;b0b6	b1		.
	ld a,b			;b0b7	78		x
	or c			;b0b8	b1		.
	ld a,a			;b0b9	7f		.
	or c			;b0ba	b1		.
	add a,(hl)		;b0bb	86		.
	or c			;b0bc	b1		.
	adc a,l			;b0bd	8d		.
	or c			;b0be	b1		.
	sub h			;b0bf	94		.
	or c			;b0c0	b1		.
	di			;b0c1	f3		.
	or b			;b0c2	b0		.
	jp m,001b0h		;b0c3	fa b0 01	. . .
	or c			;b0c6	b1		.
	ex af,af'		;b0c7	08		.
	or c			;b0c8	b1		.
	rrca			;b0c9	0f		.
	or c			;b0ca	b1		.
	ld d,0b1h		;b0cb	16 b1		. .
	dec e			;b0cd	1d		.
	or c			;b0ce	b1		.
	inc h			;b0cf	24		$
	or c			;b0d0	b1		.
	dec hl			;b0d1	2b		+
	or c			;b0d2	b1		.
	ld (039b1h),a		;b0d3	32 b1 39	2 . 9
	or c			;b0d6	b1		.
	ld b,b			;b0d7	40		@
	or c			;b0d8	b1		.
	ld b,a			;b0d9	47		G
	or c			;b0da	b1		.
	ld c,(hl)		;b0db	4e		N
	or c			;b0dc	b1		.
	ld d,l			;b0dd	55		U
	or c			;b0de	b1		.
	ld e,h			;b0df	5c		\
	or c			;b0e0	b1		.
	ld h,e			;b0e1	63		c
	or c			;b0e2	b1		.
	ld l,d			;b0e3	6a		j
	or c			;b0e4	b1		.
	ld bc,00000h		;b0e5	01 00 00	. . .
	nop			;b0e8	00		.
	sbc a,b			;b0e9	98		.
	sbc a,c			;b0ea	99		.
	inc bc			;b0eb	03		.
	ld bc,00008h		;b0ec	01 08 00	. . .
	nop			;b0ef	00		.
	sbc a,d			;b0f0	9a		.
	sbc a,e			;b0f1	9b		.
	inc bc			;b0f2	03		.
	ld bc,00004h		;b0f3	01 04 00	. . .
	nop			;b0f6	00		.
	ld bc,003c5h		;b0f7	01 c5 03	. . .
	ld bc,0000ch		;b0fa	01 0c 00	. . .
	nop			;b0fd	00		.
	ld bc,003c5h		;b0fe	01 c5 03	. . .
	ld bc,00014h		;b101	01 14 00	. . .
	nop			;b104	00		.
	ld bc,003c5h		;b105	01 c5 03	. . .
	ld bc,0001ch		;b108	01 1c 00	. . .
	nop			;b10b	00		.
	ld bc,003c5h		;b10c	01 c5 03	. . .
	ld bc,00024h		;b10f	01 24 00	. $ .
	nop			;b112	00		.
	ld bc,003c5h		;b113	01 c5 03	. . .
	ld bc,0002ch		;b116	01 2c 00	. , .
	nop			;b119	00		.
	ld bc,003c5h		;b11a	01 c5 03	. . .
	ld bc,00034h		;b11d	01 34 00	. 4 .
	nop			;b120	00		.
	ld bc,003c5h		;b121	01 c5 03	. . .
	ld bc,0003ch		;b124	01 3c 00	. < .
	nop			;b127	00		.
	ld bc,003c5h		;b128	01 c5 03	. . .
	ld bc,00044h		;b12b	01 44 00	. D .
	nop			;b12e	00		.
	ld bc,003c5h		;b12f	01 c5 03	. . .
	ld bc,0004ch		;b132	01 4c 00	. L .
	nop			;b135	00		.
	ld bc,003c5h		;b136	01 c5 03	. . .
	ld bc,00054h		;b139	01 54 00	. T .
	nop			;b13c	00		.
	ld bc,003c5h		;b13d	01 c5 03	. . .
	ld bc,0005ch		;b140	01 5c 00	. \ .
	nop			;b143	00		.
	ld bc,003c5h		;b144	01 c5 03	. . .
	ld bc,00064h		;b147	01 64 00	. d .
	nop			;b14a	00		.
	ld bc,003c5h		;b14b	01 c5 03	. . .
	ld bc,0006ch		;b14e	01 6c 00	. l .
	nop			;b151	00		.
	ld bc,003c5h		;b152	01 c5 03	. . .
	ld bc,00074h		;b155	01 74 00	. t .
	nop			;b158	00		.
	ld bc,003c5h		;b159	01 c5 03	. . .
	ld bc,0007ch		;b15c	01 7c 00	. | .
	nop			;b15f	00		.
	ld bc,003c5h		;b160	01 c5 03	. . .
	ld bc,00084h		;b163	01 84 00	. . .
	nop			;b166	00		.
	ld bc,003c5h		;b167	01 c5 03	. . .
	ld bc,00000h		;b16a	01 00 00	. . .
	nop			;b16d	00		.
	pop bc			;b16e	c1		.
	push bc			;b16f	c5		.
	inc bc			;b170	03		.
	ld bc,00000h		;b171	01 00 00	. . .
	nop			;b174	00		.
	sub d			;b175	92		.
	sub e			;b176	93		.
	inc bc			;b177	03		.
	ld bc,00000h		;b178	01 00 00	. . .
	nop			;b17b	00		.
	ld e,c			;b17c	59		Y
	nop			;b17d	00		.
	inc bc			;b17e	03		.
	ld bc,00000h		;b17f	01 00 00	. . .
	nop			;b182	00		.
	sbc a,(hl)		;b183	9e		.
	sbc a,a			;b184	9f		.
	inc bc			;b185	03		.
	ld bc,00008h		;b186	01 08 00	. . .
	nop			;b189	00		.
	sbc a,(hl)		;b18a	9e		.
	sbc a,a			;b18b	9f		.
	inc bc			;b18c	03		.
	ld bc,00000h		;b18d	01 00 00	. . .
	nop			;b190	00		.
	sbc a,h			;b191	9c		.
	sbc a,l			;b192	9d		.
	inc bc			;b193	03		.
	ld bc,00008h		;b194	01 08 00	. . .
	nop			;b197	00		.
	ld d,(hl)		;b198	56		V
	ld d,a			;b199	57		W
	inc bc			;b19a	03		.
	cp l			;b19b	bd		.
	or c			;b19c	b1		.
	call nz,0d1b1h		;b19d	c4 b1 d1	. . .
	or c			;b1a0	b1		.
	sbc a,0b1h		;b1a1	de b1		. .
	ex de,hl		;b1a3	eb		.
	or c			;b1a4	b1		.
	ret m			;b1a5	f8		.
	or c			;b1a6	b1		.
	dec b			;b1a7	05		.
	or d			;b1a8	b2		.
	ld (de),a		;b1a9	12		.
	or d			;b1aa	b2		.
	rra			;b1ab	1f		.
	or d			;b1ac	b2		.
	inc l			;b1ad	2c		,
	or d			;b1ae	b2		.
	add hl,sp		;b1af	39		9
lb1b0h:
	or d			;b1b0	b2		.
	ld b,(hl)		;b1b1	46		F
	or d			;b1b2	b2		.
	ld e,c			;b1b3	59		Y
	or d			;b1b4	b2		.
	ld l,h			;b1b5	6c		l
	or d			;b1b6	b2		.
lb1b7h:
	ld a,c			;b1b7	79		y
	or d			;b1b8	b2		.
	add a,(hl)		;b1b9	86		.
	or d			;b1ba	b2		.
	sub e			;b1bb	93		.
	or d			;b1bc	b2		.
	ld bc,00000h		;b1bd	01 00 00	. . .
	nop			;b1c0	00		.
	xor b			;b1c1	a8		.
	xor c			;b1c2	a9		.
	inc bc			;b1c3	03		.
	ld (bc),a		;b1c4	02		.
	nop			;b1c5	00		.
	nop			;b1c6	00		.
	nop			;b1c7	00		.
	add hl,bc		;b1c8	09		.
	ld c,005h		;b1c9	0e 05		. .
	nop			;b1cb	00		.
	ret nz			;b1cc	c0		.
	nop			;b1cd	00		.
	nop			;b1ce	00		.
	nop			;b1cf	00		.
	dec b			;b1d0	05		.
	ld (bc),a		;b1d1	02		.
	ex af,af'		;b1d2	08		.
	nop			;b1d3	00		.
	nop			;b1d4	00		.
	add hl,bc		;b1d5	09		.
	ld c,005h		;b1d6	0e 05		. .
	nop			;b1d8	00		.
	ret nz			;b1d9	c0		.
	nop			;b1da	00		.
	nop			;b1db	00		.
	nop			;b1dc	00		.
	dec b			;b1dd	05		.
	ld (bc),a		;b1de	02		.
	djnz lb1e1h		;b1df	10 00		. .
lb1e1h:
	nop			;b1e1	00		.
	add hl,bc		;b1e2	09		.
	ld c,005h		;b1e3	0e 05		. .
	nop			;b1e5	00		.
	ret nz			;b1e6	c0		.
	nop			;b1e7	00		.
	nop			;b1e8	00		.
	nop			;b1e9	00		.
	dec b			;b1ea	05		.
	ld (bc),a		;b1eb	02		.
	jr lb1eeh		;b1ec	18 00		. .
lb1eeh:
	nop			;b1ee	00		.
	add hl,bc		;b1ef	09		.
	ld c,005h		;b1f0	0e 05		. .
	nop			;b1f2	00		.
	ret nz			;b1f3	c0		.
	nop			;b1f4	00		.
	nop			;b1f5	00		.
	nop			;b1f6	00		.
	dec b			;b1f7	05		.
	ld (bc),a		;b1f8	02		.
	jr nz,lb1fbh		;b1f9	20 00		  .
lb1fbh:
	nop			;b1fb	00		.
	add hl,bc		;b1fc	09		.
	ld c,005h		;b1fd	0e 05		. .
	nop			;b1ff	00		.
	ret nz			;b200	c0		.
	nop			;b201	00		.
	nop			;b202	00		.
	nop			;b203	00		.
	dec b			;b204	05		.
	ld (bc),a		;b205	02		.
	jr z,lb208h		;b206	28 00		( .
lb208h:
	nop			;b208	00		.
	add hl,bc		;b209	09		.
	ld c,005h		;b20a	0e 05		. .
	jr c,$+18		;b20c	38 10		8 .
	nop			;b20e	00		.
	add hl,bc		;b20f	09		.
	ld c,005h		;b210	0e 05		. .
	ld (bc),a		;b212	02		.
	jr nc,lb215h		;b213	30 00		0 .
lb215h:
	nop			;b215	00		.
	add hl,bc		;b216	09		.
	ld c,005h		;b217	0e 05		. .
	jr c,lb223h		;b219	38 08		8 .
	nop			;b21b	00		.
	add hl,bc		;b21c	09		.
	ld c,005h		;b21d	0e 05		. .
	ld (bc),a		;b21f	02		.
	jr nc,lb222h		;b220	30 00		0 .
lb222h:
	nop			;b222	00		.
lb223h:
	add hl,bc		;b223	09		.
	ld c,005h		;b224	0e 05		. .
	jr c,lb238h		;b226	38 10		8 .
	nop			;b228	00		.
	add hl,bc		;b229	09		.
	ld c,005h		;b22a	0e 05		. .
	ld (bc),a		;b22c	02		.
	nop			;b22d	00		.
	nop			;b22e	00		.
	nop			;b22f	00		.
	daa			;b230	27		'
	nop			;b231	00		.
	inc bc			;b232	03		.
	inc b			;b233	04		.
	djnz lb236h		;b234	10 00		. .
lb236h:
	jr z,lb238h		;b236	28 00		( .
lb238h:
	inc bc			;b238	03		.
	ld (bc),a		;b239	02		.
	nop			;b23a	00		.
	nop			;b23b	00		.
	nop			;b23c	00		.
	ld b,e			;b23d	43		C
	nop			;b23e	00		.
	inc bc			;b23f	03		.
	inc b			;b240	04		.
	djnz lb243h		;b241	10 00		. .
lb243h:
	ld b,h			;b243	44		D
	nop			;b244	00		.
	inc bc			;b245	03		.
	inc bc			;b246	03		.
	nop			;b247	00		.
	rlca			;b248	07		.
	jr c,lb24dh		;b249	38 02		8 .
	nop			;b24b	00		.
	inc bc			;b24c	03		.
lb24dh:
	inc b			;b24d	04		.
	rla			;b24e	17		.
	jr c,lb253h		;b24f	38 02		8 .
	nop			;b251	00		.
	inc bc			;b252	03		.
lb253h:
	ex af,af'		;b253	08		.
	daa			;b254	27		'
	jr nc,lb259h		;b255	30 02		0 .
	nop			;b257	00		.
	inc bc			;b258	03		.
lb259h:
	inc bc			;b259	03		.
	inc c			;b25a	0c		.
	nop			;b25b	00		.
	jr c,lb2b6h		;b25c	38 58		8 X
	nop			;b25e	00		.
	inc bc			;b25f	03		.
	djnz lb272h		;b260	10 10		. .
	jr c,lb266h		;b262	38 02		8 .
	nop			;b264	00		.
	inc bc			;b265	03		.
lb266h:
	inc d			;b266	14		.
	jr nz,$+58		;b267	20 38		  8
	ld (bc),a		;b269	02		.
	nop			;b26a	00		.
lb26bh:
	inc bc			;b26b	03		.
	ld (bc),a		;b26c	02		.
	nop			;b26d	00		.
	nop			;b26e	00		.
	nop			;b26f	00		.
	nop			;b270	00		.
	nop			;b271	00		.
lb272h:
	inc bc			;b272	03		.
	nop			;b273	00		.
	nop			;b274	00		.
	nop			;b275	00		.
	nop			;b276	00		.
	nop			;b277	00		.
	inc bc			;b278	03		.
	ld (bc),a		;b279	02		.
	nop			;b27a	00		.
	jr lb27dh		;b27b	18 00		. .
lb27dh:
	rlca			;b27d	07		.
	ld c,(hl)		;b27e	4e		N
	inc bc			;b27f	03		.
	nop			;b280	00		.
	ld d,b			;b281	50		P
	nop			;b282	00		.
	rlca			;b283	07		.
	ld c,(hl)		;b284	4e		N
	inc bc			;b285	03		.
	ld (bc),a		;b286	02		.
	ex af,af'		;b287	08		.
	jr lb28ah		;b288	18 00		. .
lb28ah:
	rlca			;b28a	07		.
	ld c,(hl)		;b28b	4e		N
	inc bc			;b28c	03		.
	ex af,af'		;b28d	08		.
	ld d,b			;b28e	50		P
	nop			;b28f	00		.
	rlca			;b290	07		.
	ld c,(hl)		;b291	4e		N
	inc bc			;b292	03		.
	ld (bc),a		;b293	02		.
	djnz lb2aeh		;b294	10 18		. .
	nop			;b296	00		.
	rlca			;b297	07		.
	ld c,(hl)		;b298	4e		N
	inc bc			;b299	03		.
	djnz $+82		;b29a	10 50		. P
	nop			;b29c	00		.
	rlca			;b29d	07		.
	ld c,(hl)		;b29e	4e		N
	inc bc			;b29f	03		.
	jp pe,0f1b2h		;b2a0	ea b2 f1	. . .
	or d			;b2a3	b2		.
	ret m			;b2a4	f8		.
	or d			;b2a5	b2		.
	ld b,0b3h		;b2a6	06 b3		. .
	dec c			;b2a8	0d		.
	or e			;b2a9	b3		.
	inc d			;b2aa	14		.
	or e			;b2ab	b3		.
	dec de			;b2ac	1b		.
	or e			;b2ad	b3		.
lb2aeh:
	ld (029b3h),hl		;b2ae	22 b3 29	" . )
	or e			;b2b1	b3		.
	add hl,hl		;b2b2	29		)
	or e			;b2b3	b3		.
	rst 38h			;b2b4	ff		.
	or d			;b2b5	b2		.
lb2b6h:
	jr nc,lb26bh		;b2b6	30 b3		0 .
	scf			;b2b8	37		7
	or e			;b2b9	b3		.
	ld a,0b3h		;b2ba	3e b3		> .
	ld b,l			;b2bc	45		E
	or e			;b2bd	b3		.
	ld c,h			;b2be	4c		L
	or e			;b2bf	b3		.
	ld d,e			;b2c0	53		S
	or e			;b2c1	b3		.
	ld e,d			;b2c2	5a		Z
	or e			;b2c3	b3		.
	ld h,c			;b2c4	61		a
	or e			;b2c5	b3		.
	ld l,b			;b2c6	68		h
	or e			;b2c7	b3		.
	ld l,a			;b2c8	6f		o
	or e			;b2c9	b3		.
	halt			;b2ca	76		v
	or e			;b2cb	b3		.
	ld a,l			;b2cc	7d		}
	or e			;b2cd	b3		.
	add a,h			;b2ce	84		.
	or e			;b2cf	b3		.
	sub a			;b2d0	97		.
	or e			;b2d1	b3		.
	xor d			;b2d2	aa		.
	or e			;b2d3	b3		.
	cp l			;b2d4	bd		.
	or e			;b2d5	b3		.
	ret nc			;b2d6	d0		.
	or e			;b2d7	b3		.
	rst 10h			;b2d8	d7		.
	or e			;b2d9	b3		.
	sbc a,0b3h		;b2da	de b3		. .
	push hl			;b2dc	e5		.
	or e			;b2dd	b3		.
	call pe,0f3b3h		;b2de	ec b3 f3	. . .
	or e			;b2e1	b3		.
	jp m,001b3h		;b2e2	fa b3 01	. . .
	or h			;b2e5	b4		.
	ex af,af'		;b2e6	08		.
	or h			;b2e7	b4		.
	rrca			;b2e8	0f		.
	or h			;b2e9	b4		.
	ld bc,00000h		;b2ea	01 00 00	. . .
	nop			;b2ed	00		.
	ld c,000h		;b2ee	0e 00		. .
	inc b			;b2f0	04		.
	ld bc,00000h		;b2f1	01 00 00	. . .
	nop			;b2f4	00		.
	rlca			;b2f5	07		.
	inc c			;b2f6	0c		.
	inc b			;b2f7	04		.
	ld bc,00000h		;b2f8	01 00 00	. . .
	nop			;b2fb	00		.
	rlca			;b2fc	07		.
	inc c			;b2fd	0c		.
	inc b			;b2fe	04		.
	ld bc,00000h		;b2ff	01 00 00	. . .
	nop			;b302	00		.
	inc c			;b303	0c		.
	ld c,003h		;b304	0e 03		. .
	ld bc,00000h		;b306	01 00 00	. . .
	nop			;b309	00		.
	rlca			;b30a	07		.
	ld c,003h		;b30b	0e 03		. .
	ld bc,00008h		;b30d	01 08 00	. . .
	nop			;b310	00		.
	rlca			;b311	07		.
	ld c,003h		;b312	0e 03		. .
	ld bc,00010h		;b314	01 10 00	. . .
	nop			;b317	00		.
	ld c,00eh		;b318	0e 0e		. .
	inc bc			;b31a	03		.
	ld bc,00000h		;b31b	01 00 00	. . .
	nop			;b31e	00		.
	ld (00400h),hl		;b31f	22 00 04	" . .
	ld bc,00000h		;b322	01 00 00	. . .
	nop			;b325	00		.
	ld (00400h),hl		;b326	22 00 04	" . .
	ld bc,00000h		;b329	01 00 00	. . .
	nop			;b32c	00		.
	ld h,d			;b32d	62		b
	nop			;b32e	00		.
	inc b			;b32f	04		.
	ld bc,00000h		;b330	01 00 00	. . .
	nop			;b333	00		.
	rra			;b334	1f		.
	nop			;b335	00		.
	inc b			;b336	04		.
	ld bc,0000ch		;b337	01 0c 00	. . .
	nop			;b33a	00		.
	jr nz,lb33dh		;b33b	20 00		  .
lb33dh:
	inc b			;b33d	04		.
	ld bc,00008h		;b33e	01 08 00	. . .
	nop			;b341	00		.
	ld hl,00400h		;b342	21 00 04	! . .
	ld bc,00004h		;b345	01 04 00	. . .
	nop			;b348	00		.
	jr nz,lb34bh		;b349	20 00		  .
lb34bh:
	inc b			;b34b	04		.
	ld bc,00000h		;b34c	01 00 00	. . .
	nop			;b34f	00		.
	rra			;b350	1f		.
	nop			;b351	00		.
	inc b			;b352	04		.
	ld bc,0000ch		;b353	01 0c 00	. . .
	nop			;b356	00		.
	jr nz,lb359h		;b357	20 00		  .
lb359h:
	inc b			;b359	04		.
	ld bc,00008h		;b35a	01 08 00	. . .
	nop			;b35d	00		.
	ld hl,00400h		;b35e	21 00 04	! . .
	ld bc,00004h		;b361	01 04 00	. . .
	nop			;b364	00		.
	ld (00400h),hl		;b365	22 00 04	" . .
	ld bc,00000h		;b368	01 00 00	. . .
	nop			;b36b	00		.
	ld b,04ah		;b36c	06 4a		. J
	inc b			;b36e	04		.
	ld bc,00008h		;b36f	01 08 00	. . .
	nop			;b372	00		.
	ld b,04ah		;b373	06 4a		. J
	inc b			;b375	04		.
	ld bc,00010h		;b376	01 10 00	. . .
	nop			;b379	00		.
	ld b,04ah		;b37a	06 4a		. J
	inc b			;b37c	04		.
	ld bc,00018h		;b37d	01 18 00	. . .
	nop			;b380	00		.
	ld b,04ah		;b381	06 4a		. J
	inc b			;b383	04		.
	inc bc			;b384	03		.
	nop			;b385	00		.
	nop			;b386	00		.
	nop			;b387	00		.
	ld b,000h		;b388	06 00		. .
	inc b			;b38a	04		.
	nop			;b38b	00		.
	nop			;b38c	00		.
	nop			;b38d	00		.
	ld b,000h		;b38e	06 00		. .
	inc b			;b390	04		.
	nop			;b391	00		.
	nop			;b392	00		.
	nop			;b393	00		.
	ld b,000h		;b394	06 00		. .
	inc b			;b396	04		.
	inc bc			;b397	03		.
	nop			;b398	00		.
	nop			;b399	00		.
	nop			;b39a	00		.
	ld b,000h		;b39b	06 00		. .
	inc b			;b39d	04		.
	nop			;b39e	00		.
	nop			;b39f	00		.
	nop			;b3a0	00		.
	ld b,000h		;b3a1	06 00		. .
	inc b			;b3a3	04		.
	nop			;b3a4	00		.
	nop			;b3a5	00		.
	nop			;b3a6	00		.
	ld b,000h		;b3a7	06 00		. .
	inc b			;b3a9	04		.
	inc bc			;b3aa	03		.
	nop			;b3ab	00		.
	nop			;b3ac	00		.
	nop			;b3ad	00		.
	ld b,000h		;b3ae	06 00		. .
	inc b			;b3b0	04		.
	nop			;b3b1	00		.
lb3b2h:
	nop			;b3b2	00		.
	nop			;b3b3	00		.
	ld b,000h		;b3b4	06 00		. .
	inc b			;b3b6	04		.
	nop			;b3b7	00		.
lb3b8h:
	nop			;b3b8	00		.
	nop			;b3b9	00		.
	ld b,000h		;b3ba	06 00		. .
	inc b			;b3bc	04		.
	inc bc			;b3bd	03		.
	nop			;b3be	00		.
	nop			;b3bf	00		.
	nop			;b3c0	00		.
	ld b,000h		;b3c1	06 00		. .
	inc b			;b3c3	04		.
	nop			;b3c4	00		.
	nop			;b3c5	00		.
	nop			;b3c6	00		.
	ld b,000h		;b3c7	06 00		. .
	inc b			;b3c9	04		.
	nop			;b3ca	00		.
	nop			;b3cb	00		.
	nop			;b3cc	00		.
	ld b,000h		;b3cd	06 00		. .
	inc b			;b3cf	04		.
	ld bc,00000h		;b3d0	01 00 00	. . .
	nop			;b3d3	00		.
	inc hl			;b3d4	23		#
	nop			;b3d5	00		.
	inc bc			;b3d6	03		.
	ld bc,00000h		;b3d7	01 00 00	. . .
	nop			;b3da	00		.
	dec c			;b3db	0d		.
	ld c,(hl)		;b3dc	4e		N
	inc bc			;b3dd	03		.
	ld bc,00000h		;b3de	01 00 00	. . .
	nop			;b3e1	00		.
	cp (hl)			;b3e2	be		.
	nop			;b3e3	00		.
	inc b			;b3e4	04		.
	ld bc,00000h		;b3e5	01 00 00	. . .
	nop			;b3e8	00		.
	ld b,04ah		;b3e9	06 4a		. J
	inc bc			;b3eb	03		.
	ld bc,00008h		;b3ec	01 08 00	. . .
	nop			;b3ef	00		.
	ld b,04ah		;b3f0	06 4a		. J
	inc bc			;b3f2	03		.
	ld bc,00010h		;b3f3	01 10 00	. . .
	nop			;b3f6	00		.
	ld b,04ah		;b3f7	06 4a		. J
	inc bc			;b3f9	03		.
	ld bc,00000h		;b3fa	01 00 00	. . .
	nop			;b3fd	00		.
	dec h			;b3fe	25		%
	nop			;b3ff	00		.
	inc bc			;b400	03		.
	ld bc,00004h		;b401	01 04 00	. . .
	nop			;b404	00		.
	dec h			;b405	25		%
	nop			;b406	00		.
	inc bc			;b407	03		.
	ld bc,00008h		;b408	01 08 00	. . .
	nop			;b40b	00		.
	dec h			;b40c	25		%
	nop			;b40d	00		.
	inc bc			;b40e	03		.
	ld bc,0000ch		;b40f	01 0c 00	. . .
	nop			;b412	00		.
	dec h			;b413	25		%
	nop			;b414	00		.
	inc bc			;b415	03		.
	nop			;b416	00		.
	nop			;b417	00		.
	ld de,0000eh		;b418	11 0e 00	. . .
	nop			;b41b	00		.
	nop			;b41c	00		.
	nop			;b41d	00		.
	nop			;b41e	00		.
	dec bc			;b41f	0b		.
	ld bc,04a48h		;b420	01 48 4a	. H J
	ld c,c			;b423	49		I
	inc b			;b424	04		.
	nop			;b425	00		.
	nop			;b426	00		.
	nop			;b427	00		.
	nop			;b428	00		.
	nop			;b429	00		.
	nop			;b42a	00		.
	nop			;b42b	00		.
	inc bc			;b42c	03		.
	ld c,e			;b42d	4b		K
	ld c,h			;b42e	4c		L
	ld c,l			;b42f	4d		M
	ld c,(hl)		;b430	4e		N
	ld c,a			;b431	4f		O
	ld d,b			;b432	50		P
	dec b			;b433	05		.
	nop			;b434	00		.
	nop			;b435	00		.
	nop			;b436	00		.
	nop			;b437	00		.
	nop			;b438	00		.
	ld (bc),a		;b439	02		.
	ld d,c			;b43a	51		Q
	ld d,d			;b43b	52		R
	ld d,e			;b43c	53		S
	ld d,h			;b43d	54		T
	ld d,l			;b43e	55		U
	ld d,(hl)		;b43f	56		V
	ld d,a			;b440	57		W
	ld e,b			;b441	58		X
	rlca			;b442	07		.
	nop			;b443	00		.
	nop			;b444	00		.
	nop			;b445	00		.
	ld b,059h		;b446	06 59		. Y
	ld e,d			;b448	5a		Z
	ld e,e			;b449	5b		[
	ld e,h			;b44a	5c		\
	ld e,l			;b44b	5d		]
	ld e,(hl)		;b44c	5e		^
	ld e,a			;b44d	5f		_
	ld h,b			;b44e	60		`
	ld h,c			;b44f	61		a
	ld h,d			;b450	62		b
	nop			;b451	00		.
	nop			;b452	00		.
	add hl,bc		;b453	09		.
	ld h,e			;b454	63		c
	ld h,h			;b455	64		d
	ld h,l			;b456	65		e
	ld h,(hl)		;b457	66		f
	ld h,a			;b458	67		g
	ld l,b			;b459	68		h
	ld l,c			;b45a	69		i
	ld l,d			;b45b	6a		j
	ld l,e			;b45c	6b		k
	ld l,h			;b45d	6c		l
	ld l,l			;b45e	6d		m
	ex af,af'		;b45f	08		.
	nop			;b460	00		.
	ld a,(bc)		;b461	0a		.
	ld l,(hl)		;b462	6e		n
	ld l,a			;b463	6f		o
	ld (hl),b		;b464	70		p
	ld (hl),c		;b465	71		q
	ld (hl),d		;b466	72		r
	ld (hl),e		;b467	73		s
	ld (hl),h		;b468	74		t
	ld (hl),l		;b469	75		u
	halt			;b46a	76		v
	ld (hl),a		;b46b	77		w
	ld a,b			;b46c	78		x
	ld a,c			;b46d	79		y
	nop			;b46e	00		.
	nop			;b46f	00		.
	nop			;b470	00		.
	inc d			;b471	14		.
	ld (de),a		;b472	12		.
	inc de			;b473	13		.
	ld a,e			;b474	7b		{
	ld a,h			;b475	7c		|
	ld a,l			;b476	7d		}
	sub h			;b477	94		.
	sub l			;b478	95		.
	sub (hl)		;b479	96		.
	sub a			;b47a	97		.
	sbc a,b			;b47b	98		.
	nop			;b47c	00		.
	nop			;b47d	00		.
	nop			;b47e	00		.
	nop			;b47f	00		.
	nop			;b480	00		.
	nop			;b481	00		.
	inc (hl)		;b482	34		4
	dec (hl)		;b483	35		5
	ld (hl),037h		;b484	36 37		6 7
	jr c,lb4c1h		;b486	38 39		8 9
	ld a,(0003bh)		;b488	3a 3b 00	: ; .
	nop			;b48b	00		.
	nop			;b48c	00		.
	rlca			;b48d	07		.
	xor c			;b48e	a9		.
	ld l,l			;b48f	6d		m
	ld b,b			;b490	40		@
	ld b,c			;b491	41		A
	ld b,d			;b492	42		B
	ld b,e			;b493	43		C
	ld b,h			;b494	44		D
	ld b,l			;b495	45		E
	ld b,(hl)		;b496	46		F
	ld b,a			;b497	47		G
	nop			;b498	00		.
	ld c,b			;b499	48		H
	ld c,c			;b49a	49		I
	ld c,d			;b49b	4a		J
	ld c,e			;b49c	4b		K
	ld c,h			;b49d	4c		L
	ld c,l			;b49e	4d		M
	ld c,(hl)		;b49f	4e		N
	ld c,a			;b4a0	4f		O
	sub h			;b4a1	94		.
	sub l			;b4a2	95		.
	sub (hl)		;b4a3	96		.
	sub a			;b4a4	97		.
	sbc a,b			;b4a5	98		.
	nop			;b4a6	00		.
	nop			;b4a7	00		.
	inc d			;b4a8	14		.
	ld (de),a		;b4a9	12		.
	inc de			;b4aa	13		.
	ld d,c			;b4ab	51		Q
	ld d,d			;b4ac	52		R
	dec (hl)		;b4ad	35		5
	ld (hl),037h		;b4ae	36 37		6 7
	jr c,lb4ebh		;b4b0	38 39		8 9
	ld a,(0003bh)		;b4b2	3a 3b 00	: ; .
	nop			;b4b5	00		.
	nop			;b4b6	00		.
	nop			;b4b7	00		.
	nop			;b4b8	00		.
	inc bc			;b4b9	03		.
	ld d,l			;b4ba	55		U
	ld d,(hl)		;b4bb	56		V
	ld d,a			;b4bc	57		W
	ld b,e			;b4bd	43		C
	ld b,h			;b4be	44		D
	ld b,l			;b4bf	45		E
	ld b,(hl)		;b4c0	46		F
lb4c1h:
	ld b,a			;b4c1	47		G
	nop			;b4c2	00		.
	nop			;b4c3	00		.
	rlca			;b4c4	07		.
	xor c			;b4c5	a9		.
	ld l,l			;b4c6	6d		m
	ld e,c			;b4c7	59		Y
	ld e,d			;b4c8	5a		Z
	ld c,a			;b4c9	4f		O
	sub h			;b4ca	94		.
	sub l			;b4cb	95		.
	sub (hl)		;b4cc	96		.
	ld e,e			;b4cd	5b		[
	ld e,h			;b4ce	5c		\
	rrca			;b4cf	0f		.
	ld c,b			;b4d0	48		H
	ld c,c			;b4d1	49		I
	ld c,d			;b4d2	4a		J
	ld e,l			;b4d3	5d		]
	ld e,(hl)		;b4d4	5e		^
	ld d,d			;b4d5	52		R
	dec (hl)		;b4d6	35		5
	ld (hl),037h		;b4d7	36 37		6 7
	jr c,lb514h		;b4d9	38 39		8 9
	ld e,a			;b4db	5f		_
	ld h,b			;b4dc	60		`
	inc b			;b4dd	04		.
	nop			;b4de	00		.
	inc d			;b4df	14		.
	ld (de),a		;b4e0	12		.
	inc de			;b4e1	13		.
	ld h,d			;b4e2	62		b
	ld h,e			;b4e3	63		c
	ld h,h			;b4e4	64		d
	ld h,l			;b4e5	65		e
	ld b,e			;b4e6	43		C
	ld h,(hl)		;b4e7	66		f
	ld h,a			;b4e8	67		g
	ld l,b			;b4e9	68		h
	dec b			;b4ea	05		.
lb4ebh:
	nop			;b4eb	00		.
	nop			;b4ec	00		.
	nop			;b4ed	00		.
	nop			;b4ee	00		.
	nop			;b4ef	00		.
	jp 07978h		;b4f0	c3 78 79	. x y
	ld a,d			;b4f3	7a		z
	ld a,e			;b4f4	7b		{
	ld a,h			;b4f5	7c		|
	ld a,l			;b4f6	7d		}
	ld (bc),a		;b4f7	02		.
	ld bc,00000h		;b4f8	01 00 00	. . .
	add a,d			;b4fb	82		.
	xor c			;b4fc	a9		.
	cp a			;b4fd	bf		.
	xor e			;b4fe	ab		.
	add a,e			;b4ff	83		.
	add a,h			;b500	84		.
	sub a			;b501	97		.
	sbc a,d			;b502	9a		.
	rlca			;b503	07		.
	nop			;b504	00		.
	nop			;b505	00		.
	nop			;b506	00		.
	nop			;b507	00		.
	nop			;b508	00		.
	nop			;b509	00		.
	inc b			;b50a	04		.
	rrca			;b50b	0f		.
	add a,l			;b50c	85		.
	add a,(hl)		;b50d	86		.
	add a,a			;b50e	87		.
	adc a,b			;b50f	88		.
	adc a,c			;b510	89		.
	adc a,d			;b511	8a		.
	adc a,e			;b512	8b		.
	sub b			;b513	90		.
lb514h:
	adc a,h			;b514	8c		.
	adc a,l			;b515	8d		.
	ex af,af'		;b516	08		.
	dec b			;b517	05		.
	nop			;b518	00		.
	nop			;b519	00		.
	nop			;b51a	00		.
	sbc a,e			;b51b	9b		.
	and e			;b51c	a3		.
	and h			;b51d	a4		.
	sbc a,b			;b51e	98		.
	sub (hl)		;b51f	96		.
	adc a,(hl)		;b520	8e		.
	adc a,a			;b521	8f		.
	sub b			;b522	90		.
	adc a,d			;b523	8a		.
	adc a,c			;b524	89		.
	adc a,d			;b525	8a		.
	adc a,e			;b526	8b		.
	adc a,l			;b527	8d		.
	ex af,af'		;b528	08		.
	inc b			;b529	04		.
	sbc a,(hl)		;b52a	9e		.
	sbc a,a			;b52b	9f		.
	and b			;b52c	a0		.
	and l			;b52d	a5		.
	sbc a,l			;b52e	9d		.
	and c			;b52f	a1		.
	sbc a,c			;b530	99		.
	push bc			;b531	c5		.
	sub h			;b532	94		.
	sub e			;b533	93		.
	sub d			;b534	92		.
	sub d			;b535	92		.
	sub c			;b536	91		.
	sub l			;b537	95		.
	ld b,09bh		;b538	06 9b		. .
	sbc a,h			;b53a	9c		.
	sbc a,l			;b53b	9d		.
	sbc a,h			;b53c	9c		.
	and d			;b53d	a2		.
	nop			;b53e	00		.
	nop			;b53f	00		.
	nop			;b540	00		.
	nop			;b541	00		.
	nop			;b542	00		.
	nop			;b543	00		.
	nop			;b544	00		.
	nop			;b545	00		.
	nop			;b546	00		.
	nop			;b547	00		.
	nop			;b548	00		.
	nop			;b549	00		.
	inc b			;b54a	04		.
	ld c,000h		;b54b	0e 00		. .
	jr nz,lb570h		;b54d	20 21		  !
	ld (00010h),hl		;b54f	22 10 00	" . .
	nop			;b552	00		.
	nop			;b553	00		.
	rla			;b554	17		.
	inc hl			;b555	23		#
	inc h			;b556	24		$
	djnz lb559h		;b557	10 00		. .
lb559h:
	nop			;b559	00		.
	dec h			;b55a	25		%
	ld h,011h		;b55b	26 11		& .
	inc d			;b55d	14		.
	daa			;b55e	27		'
	ld (05a55h),hl		;b55f	22 55 5a	" U Z
	jr z,lb576h		;b562	28 12		( .
	ccf			;b564	3f		?
	add hl,hl		;b565	29		)
	ld h,l			;b566	65		e
	ld l,h			;b567	6c		l
	ld l,l			;b568	6d		m
	ld hl,(02c19h)		;b569	2a 19 2c	* . ,
	ld h,(hl)		;b56c	66		f
	dec c			;b56d	0d		.
	rra			;b56e	1f		.
	ccf			;b56f	3f		?
lb570h:
	dec hl			;b570	2b		+
	dec l			;b571	2d		-
	nop			;b572	00		.
	rla			;b573	17		.
	ld l,06ch		;b574	2e 6c		. l
lb576h:
	nop			;b576	00		.
	ld c,b			;b577	48		H
	inc a			;b578	3c		<
	ld b,a			;b579	47		G
	nop			;b57a	00		.
	nop			;b57b	00		.
	nop			;b57c	00		.
	nop			;b57d	00		.
	nop			;b57e	00		.
	ld b,l			;b57f	45		E
	cpl			;b580	2f		/
	ld d,a			;b581	57		W
	dec de			;b582	1b		.
	nop			;b583	00		.
	nop			;b584	00		.
	nop			;b585	00		.
	inc b			;b586	04		.
	ld c,013h		;b587	0e 13		. .
	ld b,e			;b589	43		C
	dec l			;b58a	2d		-
	nop			;b58b	00		.
	nop			;b58c	00		.
	nop			;b58d	00		.
	nop			;b58e	00		.
	inc de			;b58f	13		.
	inc l			;b590	2c		,
	inc hl			;b591	23		#
	inc e			;b592	1c		.
	nop			;b593	00		.
	nop			;b594	00		.
	nop			;b595	00		.
	jr nc,lb5b7h		;b596	30 1f		0 .
	ld b,l			;b598	45		E
	ld sp,00c32h		;b599	31 32 0c	1 2 .
	ld h,a			;b59c	67		g
	inc sp			;b59d	33		3
	ld b,a			;b59e	47		G
	ld (de),a		;b59f	12		.
	dec a			;b5a0	3d		=
	ld l,b			;b5a1	68		h
	ld c,d			;b5a2	4a		J
	ld l,a			;b5a3	6f		o
	ld b,(hl)		;b5a4	46		F
	inc h			;b5a5	24		$
	inc l			;b5a6	2c		,
	ld h,(hl)		;b5a7	66		f
	ld c,l			;b5a8	4d		M
	ld a,03fh		;b5a9	3e 3f		> ?
	dec hl			;b5ab	2b		+
	dec l			;b5ac	2d		-
	nop			;b5ad	00		.
	jr nz,$+48		;b5ae	20 2e		  .
	ld l,h			;b5b0	6c		l
	inc (hl)		;b5b1	34		4
	nop			;b5b2	00		.
	ccf			;b5b3	3f		?
lb5b4h:
	ld b,a			;b5b4	47		G
	nop			;b5b5	00		.
	nop			;b5b6	00		.
lb5b7h:
	nop			;b5b7	00		.
	nop			;b5b8	00		.
lb5b9h:
	nop			;b5b9	00		.
	ld b,l			;b5ba	45		E
	cpl			;b5bb	2f		/
	ld h,01bh		;b5bc	26 1b		& .
	nop			;b5be	00		.
	nop			;b5bf	00		.
	nop			;b5c0	00		.
	nop			;b5c1	00		.
	inc b			;b5c2	04		.
	ld c,043h		;b5c3	0e 43		. C
	dec l			;b5c5	2d		-
	nop			;b5c6	00		.
	nop			;b5c7	00		.
	nop			;b5c8	00		.
	nop			;b5c9	00		.
	nop			;b5ca	00		.
	inc de			;b5cb	13		.
	ld a,(de)		;b5cc	1a		.
	djnz lb5cfh		;b5cd	10 00		. .
lb5cfh:
	nop			;b5cf	00		.
	nop			;b5d0	00		.
	nop			;b5d1	00		.
	rra			;b5d2	1f		.
	ld b,l			;b5d3	45		E
	ld sp,00b32h		;b5d4	31 32 0b	1 2 .
	dec (hl)		;b5d7	35		5
	ld c,(hl)		;b5d8	4e		N
	ld c,c			;b5d9	49		I
	ld a,029h		;b5da	3e 29		> )
	ld h,l			;b5dc	65		e
	ld hl,06f2eh		;b5dd	21 2e 6f	! . o
	inc h			;b5e0	24		$
	inc l			;b5e1	2c		,
	ld h,(hl)		;b5e2	66		f
	ld c,l			;b5e3	4d		M
	inc a			;b5e4	3c		<
	ld d,b			;b5e5	50		P
	ld l,l			;b5e6	6d		m
	dec l			;b5e7	2d		-
	nop			;b5e8	00		.
	jr nz,lb619h		;b5e9	20 2e		  .
	ld e,(hl)		;b5eb	5e		^
	ld h,b			;b5ec	60		`
	ld c,d			;b5ed	4a		J
	ccf			;b5ee	3f		?
	ld b,a			;b5ef	47		G
	nop			;b5f0	00		.
	nop			;b5f1	00		.
	nop			;b5f2	00		.
	nop			;b5f3	00		.
	nop			;b5f4	00		.
	ld b,l			;b5f5	45		E
	cpl			;b5f6	2f		/
	ld h,01bh		;b5f7	26 1b		& .
	nop			;b5f9	00		.
	nop			;b5fa	00		.
	nop			;b5fb	00		.
	nop			;b5fc	00		.
	nop			;b5fd	00		.
	inc b			;b5fe	04		.
	ld c,02ah		;b5ff	0e 2a		. *
	nop			;b601	00		.
	nop			;b602	00		.
	nop			;b603	00		.
	nop			;b604	00		.
	nop			;b605	00		.
	rla			;b606	17		.
	inc hl			;b607	23		#
	inc e			;b608	1c		.
	nop			;b609	00		.
	nop			;b60a	00		.
	nop			;b60b	00		.
	nop			;b60c	00		.
	nop			;b60d	00		.
	ld c,b			;b60e	48		H
	ld b,(hl)		;b60f	46		F
	ld d,(hl)		;b610	56		V
	dec bc			;b611	0b		.
	ld (hl),037h		;b612	36 37		6 7
	jr z,lb628h		;b614	28 12		( .
	dec a			;b616	3d		=
	ld b,d			;b617	42		B
	inc e			;b618	1c		.
lb619h:
	add hl,de		;b619	19		.
	ld b,c			;b61a	41		A
	ld l,h			;b61b	6c		l
	ld a,(03f52h)		;b61c	3a 52 3f	: R ?
	inc a			;b61f	3c		<
	jr z,$+111		;b620	28 6d		( m
	dec l			;b622	2d		-
	nop			;b623	00		.
	jr nz,$+100		;b624	20 62		  b
	ld h,e			;b626	63		c
	ld h,h			;b627	64		d
lb628h:
	ld e,l			;b628	5d		]
	ld l,038h		;b629	2e 38		. 8
	nop			;b62b	00		.
	nop			;b62c	00		.
	nop			;b62d	00		.
	nop			;b62e	00		.
	nop			;b62f	00		.
	ld b,l			;b630	45		E
	cpl			;b631	2f		/
	ld h,01bh		;b632	26 1b		& .
	nop			;b634	00		.
	nop			;b635	00		.
	jr lb653h		;b636	18 1b		. .
	nop			;b638	00		.
	nop			;b639	00		.
	inc b			;b63a	04		.
	ld c,015h		;b63b	0e 15		. .
	nop			;b63d	00		.
	nop			;b63e	00		.
	nop			;b63f	00		.
	inc de			;b640	13		.
	ld b,e			;b641	43		C
	ld c,d			;b642	4a		J
	ld (00010h),hl		;b643	22 10 00	" . .
	nop			;b646	00		.
	nop			;b647	00		.
	nop			;b648	00		.
	nop			;b649	00		.
	add hl,sp		;b64a	39		9
	ld l,(hl)		;b64b	6e		n
	ld c,043h		;b64c	0e 43		. C
	ld d,d			;b64e	52		R
	rra			;b64f	1f		.
	nop			;b650	00		.
	inc d			;b651	14		.
	ld e,a			;b652	5f		_
lb653h:
	ld hl,(02c09h)		;b653	2a 09 2c	* . ,
	ld l,h			;b656	6c		l
	ld l,a			;b657	6f		o
	ld d,e			;b658	53		S
	ld l,c			;b659	69		i
	ld a,051h		;b65a	3e 51		> Q
	ld l,l			;b65c	6d		m
	inc h			;b65d	24		$
	inc l			;b65e	2c		,
	ld c,(hl)		;b65f	4e		N
	ld c,c			;b660	49		I
	ld a,(bc)		;b661	0a		.
	inc a			;b662	3c		<
	ld (hl),d		;b663	72		r
	ld b,h			;b664	44		D
	ld l,03bh		;b665	2e 3b		. ;
	nop			;b667	00		.
	nop			;b668	00		.
	nop			;b669	00		.
	nop			;b66a	00		.
	ccf			;b66b	3f		?
	ld b,a			;b66c	47		G
	dec de			;b66d	1b		.
	nop			;b66e	00		.
	nop			;b66f	00		.
	nop			;b670	00		.
	nop			;b671	00		.
	jr $+29			;b672	18 1b		. .
	nop			;b674	00		.
	nop			;b675	00		.
	inc b			;b676	04		.
	ld c,000h		;b677	0e 00		. .
	nop			;b679	00		.
	nop			;b67a	00		.
	inc de			;b67b	13		.
	ld b,e			;b67c	43		C
	ld c,d			;b67d	4a		J
	ld (00010h),hl		;b67e	22 10 00	" . .
	nop			;b681	00		.
	nop			;b682	00		.
	nop			;b683	00		.
	nop			;b684	00		.
	nop			;b685	00		.
	dec hl			;b686	2b		+
	ld (05243h),hl		;b687	22 43 52	" C R
	rra			;b68a	1f		.
	nop			;b68b	00		.
	inc d			;b68c	14		.
	ld c,h			;b68d	4c		L
	ld hl,(0410fh)		;b68e	2a 0f 41	* . A
	ld l,h			;b691	6c		l
	ld l,a			;b692	6f		o
	ld c,a			;b693	4f		O
	ld c,e			;b694	4b		K
	dec c			;b695	0d		.
	ld (hl),b		;b696	70		p
	ld l,(hl)		;b697	6e		n
	inc e			;b698	1c		.
	add hl,de		;b699	19		.
	ld b,c			;b69a	41		A
	ld e,h			;b69b	5c		\
	ld d,a			;b69c	57		W
	inc a			;b69d	3c		<
	ld l,d			;b69e	6a		j
	ld h,l			;b69f	65		e
	ld hl,01b6ch		;b6a0	21 6c 1b	! l .
	nop			;b6a3	00		.
	nop			;b6a4	00		.
	dec e			;b6a5	1d		.
	dec a			;b6a6	3d		=
	inc a			;b6a7	3c		<
	dec sp			;b6a8	3b		;
	nop			;b6a9	00		.
	nop			;b6aa	00		.
	nop			;b6ab	00		.
	nop			;b6ac	00		.
	nop			;b6ad	00		.
	ld de,00000h		;b6ae	11 00 00	. . .
	nop			;b6b1	00		.
	inc b			;b6b2	04		.
	ld c,000h		;b6b3	0e 00		. .
	nop			;b6b5	00		.
	inc de			;b6b6	13		.
	ld b,e			;b6b7	43		C
	ld c,d			;b6b8	4a		J
	ld (00010h),hl		;b6b9	22 10 00	" . .
	nop			;b6bc	00		.
	nop			;b6bd	00		.
	nop			;b6be	00		.
lb6bfh:
	nop			;b6bf	00		.
	nop			;b6c0	00		.
	nop			;b6c1	00		.
	ld (05243h),hl		;b6c2	22 43 52	" C R
	rra			;b6c5	1f		.
	nop			;b6c6	00		.
	inc d			;b6c7	14		.
	daa			;b6c8	27		'
	ld hl,(04119h)		;b6c9	2a 19 41	* . A
	ld l,h			;b6cc	6c		l
	ld l,a			;b6cd	6f		o
	ld c,a			;b6ce	4f		O
	inc (hl)		;b6cf	34		4
	dec c			;b6d0	0d		.
	ld (hl),b		;b6d1	70		p
	ld l,(hl)		;b6d2	6e		n
	inc e			;b6d3	1c		.
	nop			;b6d4	00		.
	rla			;b6d5	17		.
	ld h,a			;b6d6	67		g
	ld l,e			;b6d7	6b		k
	inc a			;b6d8	3c		<
	ld (hl),d		;b6d9	72		r
	ld b,h			;b6da	44		D
	inc hl			;b6db	23		#
	ld b,e			;b6dc	43		C
	ld l,h			;b6dd	6c		l
	nop			;b6de	00		.
	nop			;b6df	00		.
	dec e			;b6e0	1d		.
	dec a			;b6e1	3d		=
	cpl			;b6e2	2f		/
	jr z,lb6fbh		;b6e3	28 16		( .
	nop			;b6e5	00		.
	nop			;b6e6	00		.
	nop			;b6e7	00		.
	jr lb6fch		;b6e8	18 12		. .
	rra			;b6ea	1f		.
	nop			;b6eb	00		.
	nop			;b6ec	00		.
	nop			;b6ed	00		.
	inc b			;b6ee	04		.
	ld c,000h		;b6ef	0e 00		. .
	ld e,02eh		;b6f1	1e 2e		. .
	ld c,d			;b6f3	4a		J
	ld (00010h),hl		;b6f4	22 10 00	" . .
	nop			;b6f7	00		.
	nop			;b6f8	00		.
	nop			;b6f9	00		.
	nop			;b6fa	00		.
lb6fbh:
	nop			;b6fb	00		.
lb6fch:
	nop			;b6fc	00		.
	nop			;b6fd	00		.
	ld e,b			;b6fe	58		X
	ld b,b			;b6ff	40		@
	dec de			;b700	1b		.
	nop			;b701	00		.
	inc d			;b702	14		.
	daa			;b703	27		'
	ld hl,(0410fh)		;b704	2a 0f 41	* . A
	ld l,h			;b707	6c		l
	ld l,a			;b708	6f		o
	ld c,a			;b709	4f		O
	ld h,l			;b70a	65		e
	ld l,h			;b70b	6c		l
	ld e,c			;b70c	59		Y
	ld sp,0001ch		;b70d	31 1c 00	1 . .
	inc de			;b710	13		.
	dec h			;b711	25		%
	ld (hl),c		;b712	71		q
	inc a			;b713	3c		<
	ld l,d			;b714	6a		j
	ld d,h			;b715	54		T
	djnz lb718h		;b716	10 00		. .
lb718h:
	jr nz,lb748h		;b718	20 2e		  .
	nop			;b71a	00		.
	jr lb75ah		;b71b	18 3d		. =
	cpl			;b71d	2f		/
	ld c,c			;b71e	49		I
	ld d,000h		;b71f	16 00		. .
	nop			;b721	00		.
	nop			;b722	00		.
	dec e			;b723	1d		.
	add hl,hl		;b724	29		)
	cpl			;b725	2f		/
	ld h,01bh		;b726	26 1b		& .
	nop			;b728	00		.
	ld bc,00503h		;b729	01 03 05	. . .
	djnz lb6bfh		;b72c	10 91		. .
	sub d			;b72e	92		.
	sub e			;b72f	93		.
	ld a,a			;b730	7f		.
	dec c			;b731	0d		.
	jr nc,lb765h		;b732	30 31		0 1
	ld (00e33h),a		;b734	32 33 0e	2 3 .
	inc a			;b737	3c		<
	dec a			;b738	3d		=
	ld a,03fh		;b739	3e 3f		> ?
	nop			;b73b	00		.
	ld bc,00503h		;b73c	01 03 05	. . .
	ld de,09c99h		;b73f	11 99 9c	. . .
	sbc a,e			;b742	9b		.
	ld a,a			;b743	7f		.
	nop			;b744	00		.
	nop			;b745	00		.
	add a,080h		;b746	c6 80		. .
lb748h:
	ld a,a			;b748	7f		.
	ld b,072h		;b749	06 72		. r
	ld l,d			;b74b	6a		j
	ld l,e			;b74c	6b		k
	ccf			;b74d	3f		?
	nop			;b74e	00		.
	inc bc			;b74f	03		.
	inc bc			;b750	03		.
	inc bc			;b751	03		.
	push bc			;b752	c5		.
	sbc a,(hl)		;b753	9e		.
	sbc a,l			;b754	9d		.
	add a,07eh		;b755	c6 7e		. ~
	ld a,l			;b757	7d		}
	rst 0			;b758	c7		.
	ld a,e			;b759	7b		{
lb75ah:
	ld l,h			;b75a	6c		l
	nop			;b75b	00		.
	ld bc,00503h		;b75c	01 03 05	. . .
	ld de,09a99h		;b75f	11 99 9a	. . .
	sbc a,e			;b762	9b		.
	ld a,a			;b763	7f		.
	nop			;b764	00		.
lb765h:
	nop			;b765	00		.
	nop			;b766	00		.
	nop			;b767	00		.
	add hl,bc		;b768	09		.
	ld b,072h		;b769	06 72		. r
	halt			;b76b	76		v
	ld (hl),a		;b76c	77		w
	ccf			;b76d	3f		?
	nop			;b76e	00		.
	nop			;b76f	00		.
	inc bc			;b770	03		.
	ld b,010h		;b771	06 10		. .
	sub c			;b773	91		.
	sub d			;b774	92		.
	sub e			;b775	93		.
	ld h,c			;b776	61		a
	ld d,c			;b777	51		Q
	dec c			;b778	0d		.
	jr nc,lb7ach		;b779	30 31		0 1
	ld (05453h),a		;b77b	32 53 54	2 S T
	ld c,03ch		;b77e	0e 3c		. <
	dec a			;b780	3d		=
	ld a,058h		;b781	3e 58		> X
	ld e,c			;b783	59		Y
	nop			;b784	00		.
	nop			;b785	00		.
	inc bc			;b786	03		.
	ld b,011h		;b787	06 11		. .
	sbc a,c			;b789	99		.
	sbc a,h			;b78a	9c		.
	sbc a,e			;b78b	9b		.
	ld h,c			;b78c	61		a
	ld h,d			;b78d	62		b
	nop			;b78e	00		.
	nop			;b78f	00		.
	add a,080h		;b790	c6 80		. .
	ld a,h			;b792	7c		|
	ld a,d			;b793	7a		z
	ld b,072h		;b794	06 72		. r
	ld l,d			;b796	6a		j
	ld l,e			;b797	6b		k
	ld e,b			;b798	58		X
	ld l,(hl)		;b799	6e		n
	nop			;b79a	00		.
	ld (bc),a		;b79b	02		.
	inc bc			;b79c	03		.
	inc b			;b79d	04		.
	push bc			;b79e	c5		.
	sbc a,(hl)		;b79f	9e		.
	sbc a,l			;b7a0	9d		.
	ld d,c			;b7a1	51		Q
	add a,07eh		;b7a2	c6 7e		. ~
	ld a,l			;b7a4	7d		}
	ld a,c			;b7a5	79		y
	rst 0			;b7a6	c7		.
	ld a,e			;b7a7	7b		{
	ld a,b			;b7a8	78		x
	ld e,c			;b7a9	59		Y
	nop			;b7aa	00		.
	nop			;b7ab	00		.
lb7ach:
	inc bc			;b7ac	03		.
	ld b,010h		;b7ad	06 10		. .
	sub c			;b7af	91		.
	sub d			;b7b0	92		.
	sub e			;b7b1	93		.
	ld h,c			;b7b2	61		a
	ld h,d			;b7b3	62		b
	inc bc			;b7b4	03		.
	ld (hl),e		;b7b5	73		s
	ld (hl),h		;b7b6	74		t
	ld (hl),l		;b7b7	75		u
	halt			;b7b8	76		v
	ld (hl),a		;b7b9	77		w
	ld a,(hl)		;b7ba	7e		~
	ld a,a			;b7bb	7f		.
	add a,b			;b7bc	80		.
	add a,c			;b7bd	81		.
	xor d			;b7be	aa		.
	xor e			;b7bf	ab		.
	nop			;b7c0	00		.
	nop			;b7c1	00		.
	inc bc			;b7c2	03		.
	ld b,011h		;b7c3	06 11		. .
sub_b7c5h:
	sbc a,c			;b7c5	99		.
	sbc a,h			;b7c6	9c		.
	sbc a,e			;b7c7	9b		.
	ld h,c			;b7c8	61		a
	ld h,d			;b7c9	62		b
	nop			;b7ca	00		.
	nop			;b7cb	00		.
	add a,0c8h		;b7cc	c6 c8		. .
	and a			;b7ce	a7		.
	call nz,0c0bch		;b7cf	c4 bc c0	. . .
	cp (hl)			;b7d2	be		.
	xor b			;b7d3	a8		.
	xor d			;b7d4	aa		.
	xor e			;b7d5	ab		.
	nop			;b7d6	00		.
	ld (bc),a		;b7d7	02		.
	inc bc			;b7d8	03		.
	inc b			;b7d9	04		.
	push bc			;b7da	c5		.
	sbc a,(hl)		;b7db	9e		.
	sbc a,l			;b7dc	9d		.
	ld h,d			;b7dd	62		b
	add a,0c8h		;b7de	c6 c8		. .
	ret			;b7e0	c9		.
	and (hl)		;b7e1	a6		.
	rst 0			;b7e2	c7		.
	pop bc			;b7e3	c1		.
	jp nz,000abh		;b7e4	c2 ab 00	. . .
	ld (bc),a		;b7e7	02		.
	inc bc			;b7e8	03		.
	inc b			;b7e9	04		.
	ret z			;b7ea	c8		.
	pop bc			;b7eb	c1		.
	jp nz,0b551h		;b7ec	c2 51 b5	. Q .
	or e			;b7ef	b3		.
	cp e			;b7f0	bb		.
	cp b			;b7f1	b8		.
	jp z,ladb7h		;b7f2	ca b7 ad	. . .
	ld e,c			;b7f5	59		Y
	nop			;b7f6	00		.
	ld (bc),a		;b7f7	02		.
	inc bc			;b7f8	03		.
	inc b			;b7f9	04		.
	ret z			;b7fa	c8		.
	jp 051c4h		;b7fb	c3 c4 51	. . Q
	call z,lb5b4h		;b7fe	cc b4 b5	. . .
	cp b			;b801	b8		.
	call laeb9h		;b802	cd b9 ae	. . .
	ld e,c			;b805	59		Y
	nop			;b806	00		.
	nop			;b807	00		.
	inc bc			;b808	03		.
	ld b,011h		;b809	06 11		. .
	sbc a,c			;b80b	99		.
	ld (hl),c		;b80c	71		q
	sbc a,e			;b80d	9b		.
	ld h,c			;b80e	61		a
	ld d,c			;b80f	51		Q
	nop			;b810	00		.
	nop			;b811	00		.
	call z,sub_bab6h	;b812	cc b6 ba	. . .
	or c			;b815	b1		.
	ld b,072h		;b816	06 72		. r
	xor h			;b818	ac		.
	ld (hl),e		;b819	73		s
	ld e,b			;b81a	58		X
	ld e,c			;b81b	59		Y
	nop			;b81c	00		.
	inc bc			;b81d	03		.
	inc bc			;b81e	03		.
	inc b			;b81f	04		.
	ret z			;b820	c8		.
	pop bc			;b821	c1		.
	jp nz,0cc7bh		;b822	c2 7b cc	. { .
	or e			;b825	b3		.
	cp e			;b826	bb		.
	inc (hl)		;b827	34		4
	call ladb7h		;b828	cd b7 ad	. . .
	ld b,b			;b82b	40		@
	nop			;b82c	00		.
	inc bc			;b82d	03		.
	inc bc			;b82e	03		.
	inc b			;b82f	04		.
	ret			;b830	c9		.
	jp 07bc4h		;b831	c3 c4 7b	. . {
	res 6,h			;b834	cb b4		. .
	or l			;b836	b5		.
	inc (hl)		;b837	34		4
	jp z,laeb9h		;b838	ca b9 ae	. . .
	ld b,b			;b83b	40		@
	nop			;b83c	00		.
	ld (bc),a		;b83d	02		.
	inc bc			;b83e	03		.
	inc b			;b83f	04		.
	ret z			;b840	c8		.
	pop bc			;b841	c1		.
	jp nz,0cb62h		;b842	c2 62 cb	. b .
	or e			;b845	b3		.
	cp e			;b846	bb		.
	or d			;b847	b2		.
	jp z,ladb7h		;b848	ca b7 ad	. . .
	xor e			;b84b	ab		.
	nop			;b84c	00		.
	ld (bc),a		;b84d	02		.
	inc bc			;b84e	03		.
	inc b			;b84f	04		.
	ret			;b850	c9		.
	jp 062c4h		;b851	c3 c4 62	. . b
	call z,0cbb4h		;b854	cc b4 cb	. . .
	cp b			;b857	b8		.
	call laeb9h		;b858	cd b9 ae	. . .
	xor e			;b85b	ab		.
	nop			;b85c	00		.
	ld bc,00603h		;b85d	01 03 06	. . .
	ld de,07e99h		;b860	11 99 7e	. . ~
	sbc a,e			;b863	9b		.
	ld a,a			;b864	7f		.
	ld a,e			;b865	7b		{
	nop			;b866	00		.
	nop			;b867	00		.
	call z,sub_b0b6h	;b868	cc b6 b0	. . .
	inc (hl)		;b86b	34		4
	ld b,072h		;b86c	06 72		. r
	xor h			;b86e	ac		.
	ld (hl),h		;b86f	74		t
	ccf			;b870	3f		?
	ld b,b			;b871	40		@
	nop			;b872	00		.
	nop			;b873	00		.
	inc bc			;b874	03		.
	ld b,011h		;b875	06 11		. .
	sbc a,c			;b877	99		.
	ld (hl),c		;b878	71		q
	sbc a,e			;b879	9b		.
	ld d,b			;b87a	50		P
	ld h,d			;b87b	62		b
	nop			;b87c	00		.
	nop			;b87d	00		.
	call z,sub_bab6h	;b87e	cc b6 ba	. . .
	or c			;b881	b1		.
	cp h			;b882	bc		.
	ret nz			;b883	c0		.
	xor h			;b884	ac		.
	xor b			;b885	a8		.
	xor d			;b886	aa		.
	xor e			;b887	ab		.
	nop			;b888	00		.
	nop			;b889	00		.
	inc bc			;b88a	03		.
	ld b,011h		;b88b	06 11		. .
	sbc a,c			;b88d	99		.
	sbc a,d			;b88e	9a		.
	sbc a,e			;b88f	9b		.
	ld d,b			;b890	50		P
	ld d,c			;b891	51		Q
	nop			;b892	00		.
	nop			;b893	00		.
	nop			;b894	00		.
	nop			;b895	00		.
	ex af,af'		;b896	08		.
	ld (hl),l		;b897	75		u
	ld b,072h		;b898	06 72		. r
	halt			;b89a	76		v
	ld (hl),e		;b89b	73		s
	ld e,b			;b89c	58		X
	ld l,(hl)		;b89d	6e		n
	nop			;b89e	00		.
	nop			;b89f	00		.
	inc bc			;b8a0	03		.
	ld b,011h		;b8a1	06 11		. .
	sbc a,c			;b8a3	99		.
	sbc a,d			;b8a4	9a		.
	sbc a,e			;b8a5	9b		.
	ld d,b			;b8a6	50		P
	ld h,d			;b8a7	62		b
	nop			;b8a8	00		.
	nop			;b8a9	00		.
	nop			;b8aa	00		.
	nop			;b8ab	00		.
	nop			;b8ac	00		.
	jp 0c0bch		;b8ad	c3 bc c0	. . .
	cp (hl)			;b8b0	be		.
	xor b			;b8b1	a8		.
	xor d			;b8b2	aa		.
	xor e			;b8b3	ab		.
	nop			;b8b4	00		.
	nop			;b8b5	00		.
	nop			;b8b6	00		.
	nop			;b8b7	00		.
	nop			;b8b8	00		.
	nop			;b8b9	00		.
	nop			;b8ba	00		.
	nop			;b8bb	00		.
	nop			;b8bc	00		.
	ld bc,05b5ah		;b8bd	01 5a 5b	. Z [
	ld e,h			;b8c0	5c		\
	ld (bc),a		;b8c1	02		.
	nop			;b8c2	00		.
	nop			;b8c3	00		.
	nop			;b8c4	00		.
	nop			;b8c5	00		.
	nop			;b8c6	00		.
	nop			;b8c7	00		.
	nop			;b8c8	00		.
	nop			;b8c9	00		.
	inc bc			;b8ca	03		.
	inc b			;b8cb	04		.
	dec b			;b8cc	05		.
	ld e,l			;b8cd	5d		]
	ld e,(hl)		;b8ce	5e		^
	ld e,a			;b8cf	5f		_
	ld h,b			;b8d0	60		`
	ld h,c			;b8d1	61		a
	ld b,007h		;b8d2	06 07		. .
	nop			;b8d4	00		.
	ex af,af'		;b8d5	08		.
	add hl,bc		;b8d6	09		.
	ld h,d			;b8d7	62		b
	ld h,e			;b8d8	63		c
	ld h,h			;b8d9	64		d
	ld h,l			;b8da	65		e
	ld h,(hl)		;b8db	66		f
	ld h,a			;b8dc	67		g
	ld l,b			;b8dd	68		h
	ld l,c			;b8de	69		i
	ld l,c			;b8df	69		i
	ld l,d			;b8e0	6a		j
	ld l,e			;b8e1	6b		k
	ld l,h			;b8e2	6c		l
	ld a,(bc)		;b8e3	0a		.
	dec bc			;b8e4	0b		.
	ld l,l			;b8e5	6d		m
	ld l,(hl)		;b8e6	6e		n
	ld l,a			;b8e7	6f		o
	ld (hl),b		;b8e8	70		p
	ld (hl),c		;b8e9	71		q
	ld (hl),d		;b8ea	72		r
	ld (hl),c		;b8eb	71		q
	ld (hl),e		;b8ec	73		s
	ld (hl),e		;b8ed	73		s
	ld (hl),h		;b8ee	74		t
	ld (hl),h		;b8ef	74		t
	ld (hl),l		;b8f0	75		u
	halt			;b8f1	76		v
	ld (hl),a		;b8f2	77		w
	inc c			;b8f3	0c		.
	nop			;b8f4	00		.
	jr nc,lb928h		;b8f5	30 31		0 1
	nop			;b8f7	00		.
	nop			;b8f8	00		.
	nop			;b8f9	00		.
	nop			;b8fa	00		.
	xor e			;b8fb	ab		.
	add a,b			;b8fc	80		.
	add a,b			;b8fd	80		.
	or e			;b8fe	b3		.
	ld a,b			;b8ff	78		x
	ld a,c			;b900	79		y
	ld a,d			;b901	7a		z
	ld a,e			;b902	7b		{
	djnz lb905h		;b903	10 00		. .
lb905h:
	nop			;b905	00		.
	nop			;b906	00		.
	nop			;b907	00		.
	nop			;b908	00		.
	nop			;b909	00		.
	nop			;b90a	00		.
	nop			;b90b	00		.
	ret z			;b90c	c8		.
	call nz,07cb4h		;b90d	c4 b4 7c	. . |
	ld a,l			;b910	7d		}
	ld a,(hl)		;b911	7e		~
	ld a,a			;b912	7f		.
	dec c			;b913	0d		.
	nop			;b914	00		.
	nop			;b915	00		.
	nop			;b916	00		.
	nop			;b917	00		.
	nop			;b918	00		.
	nop			;b919	00		.
	nop			;b91a	00		.
	or d			;b91b	b2		.
	jp lbac2h		;b91c	c3 c2 ba	. . .
	and h			;b91f	a4		.
	and l			;b920	a5		.
	and (hl)		;b921	a6		.
	and a			;b922	a7		.
	dec e			;b923	1d		.
	nop			;b924	00		.
	ld (00033h),a		;b925	32 33 00	2 3 .
lb928h:
	nop			;b928	00		.
	nop			;b929	00		.
	nop			;b92a	00		.
	or c			;b92b	b1		.
	xor b			;b92c	a8		.
	xor b			;b92d	a8		.
	cp c			;b92e	b9		.
	and b			;b92f	a0		.
	and c			;b930	a1		.
	and d			;b931	a2		.
	and e			;b932	a3		.
	jr nz,lb950h		;b933	20 1b		  .
	sub l			;b935	95		.
	sub (hl)		;b936	96		.
	sub a			;b937	97		.
	sbc a,b			;b938	98		.
	sbc a,c			;b939	99		.
	sbc a,d			;b93a	9a		.
	sbc a,c			;b93b	99		.
	sbc a,e			;b93c	9b		.
	sbc a,e			;b93d	9b		.
	sbc a,h			;b93e	9c		.
	sbc a,h			;b93f	9c		.
	sbc a,l			;b940	9d		.
	sbc a,(hl)		;b941	9e		.
	sbc a,a			;b942	9f		.
	inc e			;b943	1c		.
	nop			;b944	00		.
	jr lb960h		;b945	18 19		. .
	adc a,d			;b947	8a		.
	adc a,e			;b948	8b		.
	adc a,h			;b949	8c		.
	adc a,l			;b94a	8d		.
	adc a,(hl)		;b94b	8e		.
	adc a,a			;b94c	8f		.
	sub b			;b94d	90		.
	sub c			;b94e	91		.
	sub c			;b94f	91		.
lb950h:
	sub d			;b950	92		.
	sub e			;b951	93		.
	sub h			;b952	94		.
	ld a,(de)		;b953	1a		.
	nop			;b954	00		.
	nop			;b955	00		.
	nop			;b956	00		.
	nop			;b957	00		.
	nop			;b958	00		.
	nop			;b959	00		.
	inc de			;b95a	13		.
	inc d			;b95b	14		.
	dec d			;b95c	15		.
	add a,l			;b95d	85		.
	add a,(hl)		;b95e	86		.
	add a,a			;b95f	87		.
lb960h:
	adc a,b			;b960	88		.
	adc a,c			;b961	89		.
	ld d,017h		;b962	16 17		. .
	nop			;b964	00		.
	nop			;b965	00		.
	nop			;b966	00		.
	nop			;b967	00		.
	nop			;b968	00		.
	nop			;b969	00		.
	nop			;b96a	00		.
	nop			;b96b	00		.
	nop			;b96c	00		.
	ld de,08382h		;b96d	11 82 83	. . .
	add a,h			;b970	84		.
	ld (de),a		;b971	12		.
	nop			;b972	00		.
	nop			;b973	00		.
	ld c,080h		;b974	0e 80		. .
lb976h:
	add a,b			;b976	80		.
	cp (hl)			;b977	be		.
	or d			;b978	b2		.
	set 0,(hl)		;b979	cb c6		. .
	cp l			;b97b	bd		.
	xor (hl)		;b97c	ae		.
	call z,sub_bccdh	;b97d	cc cd bc	. . .
	ld e,0a8h		;b980	1e a8		. .
	xor b			;b982	a8		.
	cp e			;b983	bb		.
	xor l			;b984	ad		.
	add a,b			;b985	80		.
	add a,b			;b986	80		.
	cp a			;b987	bf		.
	xor (hl)		;b988	ae		.
	ret z			;b989	c8		.
	ret			;b98a	c9		.
	ret nz			;b98b	c0		.
	nop			;b98c	00		.
	jp z,0c1c2h		;b98d	ca c2 c1	. . .
	xor a			;b990	af		.
	xor b			;b991	a8		.
	xor b			;b992	a8		.
	cp b			;b993	b8		.
	xor h			;b994	ac		.
	add a,b			;b995	80		.
	add a,b			;b996	80		.
	or l			;b997	b5		.
	rrca			;b998	0f		.
	rst 0			;b999	c7		.
	add a,0b6h		;b99a	c6 b6		. .
	rra			;b99c	1f		.
	call z,sub_b7c5h	;b99d	cc c5 b7	. . .
	or b			;b9a0	b0		.
	xor b			;b9a1	a8		.
	xor b			;b9a2	a8		.
	cp b			;b9a3	b8		.
	nop			;b9a4	00		.
	nop			;b9a5	00		.
	ld a,(bc)		;b9a6	0a		.
	ld a,(bc)		;b9a7	0a		.
	nop			;b9a8	00		.
	nop			;b9a9	00		.
	nop			;b9aa	00		.
	nop			;b9ab	00		.
	ld b,d			;b9ac	42		B
	ld b,e			;b9ad	43		C
	nop			;b9ae	00		.
	nop			;b9af	00		.
	nop			;b9b0	00		.
	nop			;b9b1	00		.
	nop			;b9b2	00		.
	daa			;b9b3	27		'
	jr z,lb9dch		;b9b4	28 26		( &
	ld a,h			;b9b6	7c		|
	adc a,h			;b9b7	8c		.
	inc (hl)		;b9b8	34		4
	ld (hl),035h		;b9b9	36 35		6 5
	nop			;b9bb	00		.
	nop			;b9bc	00		.
	add hl,hl		;b9bd	29		)
	ld a,l			;b9be	7d		}
	and d			;b9bf	a2		.
	and c			;b9c0	a1		.
	xor c			;b9c1	a9		.
	xor d			;b9c2	aa		.
	adc a,l			;b9c3	8d		.
	scf			;b9c4	37		7
	nop			;b9c5	00		.
	nop			;b9c6	00		.
	ld a,(hl)		;b9c7	7e		~
	ld a,a			;b9c8	7f		.
	add a,b			;b9c9	80		.
	and b			;b9ca	a0		.
	xor b			;b9cb	a8		.
	sub b			;b9cc	90		.
	adc a,a			;b9cd	8f		.
	adc a,(hl)		;b9ce	8e		.
	nop			;b9cf	00		.
	add a,c			;b9d0	81		.
	add a,d			;b9d1	82		.
	add a,e			;b9d2	83		.
	and e			;b9d3	a3		.
	ld h,b			;b9d4	60		`
	ld h,d			;b9d5	62		b
	xor e			;b9d6	ab		.
	sub e			;b9d7	93		.
	sub d			;b9d8	92		.
	sub c			;b9d9	91		.
	adc a,c			;b9da	89		.
	adc a,d			;b9db	8a		.
lb9dch:
	adc a,e			;b9dc	8b		.
	sbc a,a			;b9dd	9f		.
	ld h,c			;b9de	61		a
	ld h,e			;b9df	63		c
	and a			;b9e0	a7		.
	sbc a,e			;b9e1	9b		.
	sbc a,d			;b9e2	9a		.
	sbc a,c			;b9e3	99		.
	nop			;b9e4	00		.
	add a,(hl)		;b9e5	86		.
	add a,a			;b9e6	87		.
	adc a,b			;b9e7	88		.
	sbc a,l			;b9e8	9d		.
	and l			;b9e9	a5		.
	sbc a,b			;b9ea	98		.
	sub a			;b9eb	97		.
	sub (hl)		;b9ec	96		.
	nop			;b9ed	00		.
	nop			;b9ee	00		.
	jr nc,lb976h		;b9ef	30 85		0 .
	sbc a,h			;b9f1	9c		.
	sbc a,(hl)		;b9f2	9e		.
	and (hl)		;b9f3	a6		.
	and h			;b9f4	a4		.
	sub l			;b9f5	95		.
	ld a,000h		;b9f6	3e 00		> .
	nop			;b9f8	00		.
	ld l,02fh		;b9f9	2e 2f		. /
	dec l			;b9fb	2d		-
	add a,h			;b9fc	84		.
	sub h			;b9fd	94		.
	dec sp			;b9fe	3b		;
	dec a			;b9ff	3d		=
	inc a			;ba00	3c		<
	nop			;ba01	00		.
	nop			;ba02	00		.
	nop			;ba03	00		.
	nop			;ba04	00		.
	nop			;ba05	00		.
	ld b,h			;ba06	44		D
	ld b,l			;ba07	45		E
	nop			;ba08	00		.
	nop			;ba09	00		.
	nop			;ba0a	00		.
	nop			;ba0b	00		.
	nop			;ba0c	00		.
	nop			;ba0d	00		.
	ld (bc),a		;ba0e	02		.
	inc b			;ba0f	04		.
	and e			;ba10	a3		.
	ld l,b			;ba11	68		h
	ld (hl),d		;ba12	72		r
	xor e			;ba13	ab		.
	sbc a,a			;ba14	9f		.
	ld l,c			;ba15	69		i
	ld (hl),e		;ba16	73		s
	and a			;ba17	a7		.
	nop			;ba18	00		.
	nop			;ba19	00		.
	ld (bc),a		;ba1a	02		.
	inc b			;ba1b	04		.
	ld l,d			;ba1c	6a		j
	ld l,e			;ba1d	6b		k
	ld (hl),l		;ba1e	75		u
	ld (hl),h		;ba1f	74		t
	ld l,h			;ba20	6c		l
	ld l,l			;ba21	6d		m
	ld (hl),a		;ba22	77		w
	halt			;ba23	76		v
	nop			;ba24	00		.
	nop			;ba25	00		.
	ld (bc),a		;ba26	02		.
	inc b			;ba27	04		.
	ld l,(hl)		;ba28	6e		n
	ld l,a			;ba29	6f		o
	ld a,c			;ba2a	79		y
	ld a,b			;ba2b	78		x
	ld (hl),b		;ba2c	70		p
	ld (hl),c		;ba2d	71		q
	ld a,e			;ba2e	7b		{
	ld a,d			;ba2f	7a		z
	nop			;ba30	00		.
	nop			;ba31	00		.
	ld (bc),a		;ba32	02		.
	ld (bc),a		;ba33	02		.
	set 1,d			;ba34	cb ca		. .
	call 000cch		;ba36	cd cc 00	. . .
	nop			;ba39	00		.
	ld (bc),a		;ba3a	02		.
	ld (bc),a		;ba3b	02		.
	call nz,0c6c5h		;ba3c	c4 c5 c6	. . .
	rst 0			;ba3f	c7		.
	nop			;ba40	00		.
	nop			;ba41	00		.
	add hl,bc		;ba42	09		.
	ld (bc),a		;ba43	02		.
	cp a			;ba44	bf		.
	ret nz			;ba45	c0		.
	cp d			;ba46	ba		.
	cp e			;ba47	bb		.
	cp b			;ba48	b8		.
	cp c			;ba49	b9		.
	cp b			;ba4a	b8		.
	cp c			;ba4b	b9		.
	or d			;ba4c	b2		.
	or e			;ba4d	b3		.
	or h			;ba4e	b4		.
	or l			;ba4f	b5		.
	or h			;ba50	b4		.
	or l			;ba51	b5		.
	or (hl)			;ba52	b6		.
	or a			;ba53	b7		.
	cp b			;ba54	b8		.
	cp c			;ba55	b9		.
	nop			;ba56	00		.
	nop			;ba57	00		.
	rlca			;ba58	07		.
	ld (bc),a		;ba59	02		.
	cp b			;ba5a	b8		.
	cp c			;ba5b	b9		.
	or d			;ba5c	b2		.
	or e			;ba5d	b3		.
	or h			;ba5e	b4		.
	or l			;ba5f	b5		.
	or h			;ba60	b4		.
	or l			;ba61	b5		.
	or (hl)			;ba62	b6		.
	or a			;ba63	b7		.
	cp d			;ba64	ba		.
	cp e			;ba65	bb		.
	cp h			;ba66	bc		.
	cp l			;ba67	bd		.
	nop			;ba68	00		.
	nop			;ba69	00		.
	inc b			;ba6a	04		.
	inc b			;ba6b	04		.
	nop			;ba6c	00		.
	nop			;ba6d	00		.
	cp d			;ba6e	ba		.
	cp e			;ba6f	bb		.
	ld a,(lbe91h)		;ba70	3a 91 be	: . .
	nop			;ba73	00		.
	ld b,c			;ba74	41		A
	sbc a,c			;ba75	99		.
	pop bc			;ba76	c1		.
	nop			;ba77	00		.
	nop			;ba78	00		.
	nop			;ba79	00		.
	cp d			;ba7a	ba		.
	cp e			;ba7b	bb		.
	nop			;ba7c	00		.
	nop			;ba7d	00		.
	inc b			;ba7e	04		.
	inc b			;ba7f	04		.
	cp d			;ba80	ba		.
	cp e			;ba81	bb		.
	nop			;ba82	00		.
	nop			;ba83	00		.
	nop			;ba84	00		.
	cp (hl)			;ba85	be		.
	add a,c			;ba86	81		.
	inc l			;ba87	2c		,
	nop			;ba88	00		.
	pop bc			;ba89	c1		.
	adc a,c			;ba8a	89		.
lba8bh:
	inc sp			;ba8b	33		3
	cp d			;ba8c	ba		.
	cp e			;ba8d	bb		.
	nop			;ba8e	00		.
	nop			;ba8f	00		.
	nop			;ba90	00		.
	nop			;ba91	00		.
	add hl,bc		;ba92	09		.
	ld bc,lafaeh		;ba93	01 ae af	. . .
	or b			;ba96	b0		.
	or b			;ba97	b0		.
	or b			;ba98	b0		.
	or b			;ba99	b0		.
	or c			;ba9a	b1		.
	xor l			;ba9b	ad		.
	xor (hl)		;ba9c	ae		.
	nop			;ba9d	00		.
	nop			;ba9e	00		.
	add hl,bc		;ba9f	09		.
	ld (bc),a		;baa0	02		.
	xor l			;baa1	ad		.
	nop			;baa2	00		.
	xor (hl)		;baa3	ae		.
	nop			;baa4	00		.
	xor a			;baa5	af		.
	nop			;baa6	00		.
	or b			;baa7	b0		.
	nop			;baa8	00		.
	or c			;baa9	b1		.
	nop			;baaa	00		.
	xor l			;baab	ad		.
	nop			;baac	00		.
	xor (hl)		;baad	ae		.
	nop			;baae	00		.
	xor h			;baaf	ac		.
	dec hl			;bab0	2b		+
	nop			;bab1	00		.
	ccf			;bab2	3f		?
	nop			;bab3	00		.
	nop			;bab4	00		.
	add hl,bc		;bab5	09		.
sub_bab6h:
	ld (bc),a		;bab6	02		.
	nop			;bab7	00		.
	xor l			;bab8	ad		.
	nop			;bab9	00		.
	xor (hl)		;baba	ae		.
	nop			;babb	00		.
	xor a			;babc	af		.
	nop			;babd	00		.
	or b			;babe	b0		.
	nop			;babf	00		.
	or c			;bac0	b1		.
	nop			;bac1	00		.
lbac2h:
	xor l			;bac2	ad		.
	nop			;bac3	00		.
	xor (hl)		;bac4	ae		.
	add hl,sp		;bac5	39		9
	xor h			;bac6	ac		.
	ld sp,00000h		;bac7	31 00 00	1 . .
	nop			;baca	00		.
	dec bc			;bacb	0b		.
	ld bc,laeadh		;bacc	01 ad ae	. . .
	xor a			;bacf	af		.
	or b			;bad0	b0		.
	or b			;bad1	b0		.
	or b			;bad2	b0		.
	or b			;bad3	b0		.
	or c			;bad4	b1		.
	xor l			;bad5	ad		.
	xor (hl)		;bad6	ae		.
	xor a			;bad7	af		.
	nop			;bad8	00		.
	nop			;bad9	00		.
	dec bc			;bada	0b		.
	ld (bc),a		;badb	02		.
	nop			;badc	00		.
	jr c,lba8bh		;badd	38 ac		8 .
	ld (000adh),a		;badf	32 ad 00	2 . .
	xor (hl)		;bae2	ae		.
	nop			;bae3	00		.
	xor a			;bae4	af		.
	nop			;bae5	00		.
	or b			;bae6	b0		.
	nop			;bae7	00		.
	or c			;bae8	b1		.
	nop			;bae9	00		.
	xor l			;baea	ad		.
	nop			;baeb	00		.
	xor (hl)		;baec	ae		.
	nop			;baed	00		.
	xor a			;baee	af		.
	nop			;baef	00		.
	or c			;baf0	b1		.
	nop			;baf1	00		.
	nop			;baf2	00		.
	nop			;baf3	00		.
	dec bc			;baf4	0b		.
	ld (bc),a		;baf5	02		.
	ld hl,(04000h)		;baf6	2a 00 40	* . @
	xor h			;baf9	ac		.
	nop			;bafa	00		.
	xor l			;bafb	ad		.
	nop			;bafc	00		.
	xor (hl)		;bafd	ae		.
	nop			;bafe	00		.
	xor a			;baff	af		.
	nop			;bb00	00		.
	or b			;bb01	b0		.
	nop			;bb02	00		.
	or c			;bb03	b1		.
	nop			;bb04	00		.
	xor l			;bb05	ad		.
	nop			;bb06	00		.
	xor (hl)		;bb07	ae		.
	nop			;bb08	00		.
	xor a			;bb09	af		.
	nop			;bb0a	00		.
	or c			;bb0b	b1		.
	nop			;bb0c	00		.
	nop			;bb0d	00		.
	ld (bc),a		;bb0e	02		.
	ld (bc),a		;bb0f	02		.
	jp 0c2c9h		;bb10	c3 c9 c2	. . .
	ret z			;bb13	c8		.
	nop			;bb14	00		.
	nop			;bb15	00		.
	inc c			;bb16	0c		.
	ld c,000h		;bb17	0e 00		. .
	push bc			;bb19	c5		.
	ld b,017h		;bb1a	06 17		. .
	dec e			;bb1c	1d		.
	ld hl,03319h		;bb1d	21 19 33	! . 3
	dec sp			;bb20	3b		;
	scf			;bb21	37		7
	ld sp,0c506h		;bb22	31 06 c5	1 . .
	nop			;bb25	00		.
	ld b,003h		;bb26	06 03		. .
	rlca			;bb28	07		.
	jr lbb45h		;bb29	18 1a		. .
	dec d			;bb2b	15		.
	inc hl			;bb2c	23		#
	dec a			;bb2d	3d		=
	cpl			;bb2e	2f		/
	inc (hl)		;bb2f	34		4
	ld (00307h),a		;bb30	32 07 03	2 . .
	ld b,007h		;bb33	06 07		. .
	inc b			;bb35	04		.
	ex af,af'		;bb36	08		.
	ld de,01610h		;bb37	11 10 16	. . .
	dec de			;bb3a	1b		.
	dec (hl)		;bb3b	35		5
	jr nc,lbb68h		;bb3c	30 2a		0 *
	dec hl			;bb3e	2b		+
	ex af,af'		;bb3f	08		.
	inc b			;bb40	04		.
	rlca			;bb41	07		.
	ex af,af'		;bb42	08		.
	dec b			;bb43	05		.
	add hl,bc		;bb44	09		.
lbb45h:
	inc de			;bb45	13		.
	ld (de),a		;bb46	12		.
	inc d			;bb47	14		.
	inc e			;bb48	1c		.
	ld (hl),02eh		;bb49	36 2e		6 .
	inc l			;bb4b	2c		,
	dec l			;bb4c	2d		-
	add hl,bc		;bb4d	09		.
	dec b			;bb4e	05		.
	ex af,af'		;bb4f	08		.
	ld h,e			;bb50	63		c
	ld e,c			;bb51	59		Y
	ld d,e			;bb52	53		S
	inc b			;bb53	04		.
	inc bc			;bb54	03		.
	ld (0461dh),hl		;bb55	22 1d 46	" . F
	ld c,e			;bb58	4b		K
	inc l			;bb59	2c		,
	dec l			;bb5a	2d		-
	ld d,e			;bb5b	53		S
	ld e,c			;bb5c	59		Y
	ld h,e			;bb5d	63		c
	ld d,e			;bb5e	53		S
	ld e,d			;bb5f	5a		Z
	ld e,h			;bb60	5c		\
	dec b			;bb61	05		.
	jr lbb87h		;bb62	18 23		. #
	sub l			;bb64	95		.
	sub l			;bb65	95		.
	ld c,h			;bb66	4c		L
	ld b,c			;bb67	41		A
lbb68h:
	ld l,05ch		;bb68	2e 5c		. \
	ld e,d			;bb6a	5a		Z
	ld d,e			;bb6b	53		S
	ld e,a			;bb6c	5f		_
	ld l,e			;bb6d	6b		k
	dec h			;bb6e	25		%
	inc h			;bb6f	24		$
	rra			;bb70	1f		.
	add a,c			;bb71	81		.
	add a,d			;bb72	82		.
	add a,d			;bb73	82		.
	add a,c			;bb74	81		.
	ld c,b			;bb75	48		H
	ld c,l			;bb76	4d		M
	ld c,(hl)		;bb77	4e		N
	ld e,a			;bb78	5f		_
	ld l,e			;bb79	6b		k
	ld l,b			;bb7a	68		h
	ld l,l			;bb7b	6d		m
	ld d,01eh		;bb7c	16 1e		. .
	ld hl,01d5dh		;bb7e	21 5d 1d	! ] .
	ld b,(hl)		;bb81	46		F
	ld e,l			;bb82	5d		]
	ld c,d			;bb83	4a		J
	ld b,a			;bb84	47		G
	ccf			;bb85	3f		?
	ld l,b			;bb86	68		h
lbb87h:
	ld l,l			;bb87	6d		m
	ld d,(hl)		;bb88	56		V
	ld d,a			;bb89	57		W
	adc a,d			;bb8a	8a		.
	adc a,e			;bb8b	8b		.
	inc d			;bb8c	14		.
	ld e,l			;bb8d	5d		]
	dec e			;bb8e	1d		.
	ld b,(hl)		;bb8f	46		F
	ld e,l			;bb90	5d		]
	dec a			;bb91	3d		=
	adc a,h			;bb92	8c		.
	adc a,d			;bb93	8a		.
	ld d,(hl)		;bb94	56		V
	ld d,a			;bb95	57		W
	nop			;bb96	00		.
	ld e,b			;bb97	58		X
	adc a,l			;bb98	8d		.
	adc a,(hl)		;bb99	8e		.
	adc a,a			;bb9a	8f		.
	ld h,l			;bb9b	65		e
	ld l,h			;bb9c	6c		l
	ld h,l			;bb9d	65		e
	ld l,h			;bb9e	6c		l
	adc a,a			;bb9f	8f		.
	adc a,(hl)		;bba0	8e		.
	adc a,l			;bba1	8d		.
	ld e,b			;bba2	58		X
	nop			;bba3	00		.
	nop			;bba4	00		.
	ld e,b			;bba5	58		X
	sub b			;bba6	90		.
	sub c			;bba7	91		.
	sub d			;bba8	92		.
	ld (hl),l		;bba9	75		u
	halt			;bbaa	76		v
	ld (hl),l		;bbab	75		u
	halt			;bbac	76		v
	sub d			;bbad	92		.
	sub e			;bbae	93		.
	sub h			;bbaf	94		.
	ld e,b			;bbb0	58		X
	nop			;bbb1	00		.
	nop			;bbb2	00		.
	ld e,b			;bbb3	58		X
	djnz lbbd6h		;bbb4	10 20		.  
	ld (hl),d		;bbb6	72		r
	ld (hl),c		;bbb7	71		q
	ld (hl),c		;bbb8	71		q
	ld (hl),c		;bbb9	71		q
	ld (hl),c		;bbba	71		q
	ld (hl),d		;bbbb	72		r
	ld c,c			;bbbc	49		I
	add hl,sp		;bbbd	39		9
	ld e,b			;bbbe	58		X
	nop			;bbbf	00		.
	nop			;bbc0	00		.
	nop			;bbc1	00		.
	inc c			;bbc2	0c		.
	djnz lbbc5h		;bbc3	10 00		. .
lbbc5h:
	push bc			;bbc5	c5		.
	ld b,017h		;bbc6	06 17		. .
	dec e			;bbc8	1d		.
	ld hl,00019h		;bbc9	21 19 00	! . .
	nop			;bbcc	00		.
	inc sp			;bbcd	33		3
	dec sp			;bbce	3b		;
	scf			;bbcf	37		7
	ld sp,0c506h		;bbd0	31 06 c5	1 . .
	nop			;bbd3	00		.
	ld b,003h		;bbd4	06 03		. .
lbbd6h:
	rlca			;bbd6	07		.
	jr lbbf3h		;bbd7	18 1a		. .
	dec d			;bbd9	15		.
	inc hl			;bbda	23		#
	nop			;bbdb	00		.
	nop			;bbdc	00		.
	dec a			;bbdd	3d		=
	cpl			;bbde	2f		/
	inc (hl)		;bbdf	34		4
	ld (00307h),a		;bbe0	32 07 03	2 . .
	ld b,007h		;bbe3	06 07		. .
	inc b			;bbe5	04		.
	ex af,af'		;bbe6	08		.
	ld de,01610h		;bbe7	11 10 16	. . .
	dec de			;bbea	1b		.
	nop			;bbeb	00		.
	nop			;bbec	00		.
	dec (hl)		;bbed	35		5
	jr nc,lbc1ah		;bbee	30 2a		0 *
	dec hl			;bbf0	2b		+
	ex af,af'		;bbf1	08		.
	inc b			;bbf2	04		.
lbbf3h:
	rlca			;bbf3	07		.
	ex af,af'		;bbf4	08		.
	dec b			;bbf5	05		.
	add hl,bc		;bbf6	09		.
	inc de			;bbf7	13		.
	ld (de),a		;bbf8	12		.
	inc d			;bbf9	14		.
	inc e			;bbfa	1c		.
	nop			;bbfb	00		.
	nop			;bbfc	00		.
	ld (hl),02eh		;bbfd	36 2e		6 .
	inc l			;bbff	2c		,
	dec l			;bc00	2d		-
	add hl,bc		;bc01	09		.
	dec b			;bc02	05		.
	ex af,af'		;bc03	08		.
	ld h,e			;bc04	63		c
	ld e,c			;bc05	59		Y
	ld d,e			;bc06	53		S
	inc b			;bc07	04		.
	inc bc			;bc08	03		.
	ld (0001dh),hl		;bc09	22 1d 00	" . .
	nop			;bc0c	00		.
	ld b,(hl)		;bc0d	46		F
	ld c,e			;bc0e	4b		K
	inc l			;bc0f	2c		,
	dec l			;bc10	2d		-
	ld d,e			;bc11	53		S
	ld e,c			;bc12	59		Y
	ld h,e			;bc13	63		c
	ld d,e			;bc14	53		S
	ld e,d			;bc15	5a		Z
	ld e,h			;bc16	5c		\
	dec b			;bc17	05		.
	jr lbc3dh		;bc18	18 23		. #
lbc1ah:
	sub l			;bc1a	95		.
	add a,a			;bc1b	87		.
	add a,a			;bc1c	87		.
	sub l			;bc1d	95		.
	ld c,h			;bc1e	4c		L
	ld b,c			;bc1f	41		A
	ld l,05ch		;bc20	2e 5c		. \
	ld e,d			;bc22	5a		Z
	ld d,e			;bc23	53		S
	ld e,a			;bc24	5f		_
	ld l,e			;bc25	6b		k
	dec h			;bc26	25		%
	inc h			;bc27	24		$
	rra			;bc28	1f		.
	add a,c			;bc29	81		.
	add a,d			;bc2a	82		.
	add a,(hl)		;bc2b	86		.
	add a,(hl)		;bc2c	86		.
	add a,d			;bc2d	82		.
	add a,c			;bc2e	81		.
	ld c,b			;bc2f	48		H
	ld c,l			;bc30	4d		M
	ld c,(hl)		;bc31	4e		N
	ld e,a			;bc32	5f		_
	ld l,e			;bc33	6b		k
	ld l,b			;bc34	68		h
	ld l,l			;bc35	6d		m
	ld d,01eh		;bc36	16 1e		. .
	ld hl,01d5dh		;bc38	21 5d 1d	! ] .
	nop			;bc3b	00		.
	nop			;bc3c	00		.
lbc3dh:
	ld b,(hl)		;bc3d	46		F
	ld e,l			;bc3e	5d		]
	ld c,d			;bc3f	4a		J
	ld b,a			;bc40	47		G
	ccf			;bc41	3f		?
	ld l,b			;bc42	68		h
	ld l,l			;bc43	6d		m
	ld d,(hl)		;bc44	56		V
	ld d,a			;bc45	57		W
	adc a,d			;bc46	8a		.
	adc a,e			;bc47	8b		.
	inc d			;bc48	14		.
	ld e,l			;bc49	5d		]
	dec e			;bc4a	1d		.
	nop			;bc4b	00		.
	nop			;bc4c	00		.
	ld b,(hl)		;bc4d	46		F
	ld e,l			;bc4e	5d		]
	dec a			;bc4f	3d		=
	adc a,h			;bc50	8c		.
	adc a,d			;bc51	8a		.
	ld d,(hl)		;bc52	56		V
	ld d,a			;bc53	57		W
	nop			;bc54	00		.
	ld e,b			;bc55	58		X
	adc a,l			;bc56	8d		.
	adc a,(hl)		;bc57	8e		.
	adc a,a			;bc58	8f		.
	ld h,l			;bc59	65		e
	ld l,h			;bc5a	6c		l
	add a,l			;bc5b	85		.
	add a,l			;bc5c	85		.
	ld h,l			;bc5d	65		e
	ld l,h			;bc5e	6c		l
	adc a,a			;bc5f	8f		.
	adc a,(hl)		;bc60	8e		.
	adc a,l			;bc61	8d		.
	ld e,b			;bc62	58		X
	nop			;bc63	00		.
	nop			;bc64	00		.
	ld e,b			;bc65	58		X
	sub b			;bc66	90		.
	sub c			;bc67	91		.
	sub d			;bc68	92		.
	ld (hl),l		;bc69	75		u
	halt			;bc6a	76		v
	adc a,b			;bc6b	88		.
	adc a,b			;bc6c	88		.
	ld (hl),l		;bc6d	75		u
	halt			;bc6e	76		v
	sub d			;bc6f	92		.
	sub e			;bc70	93		.
	sub h			;bc71	94		.
	ld e,b			;bc72	58		X
	nop			;bc73	00		.
	nop			;bc74	00		.
	ld e,b			;bc75	58		X
	djnz $+34		;bc76	10 20		.  
	ld (hl),d		;bc78	72		r
	ld (hl),c		;bc79	71		q
	ld (hl),c		;bc7a	71		q
	ld (hl),c		;bc7b	71		q
	ld (hl),c		;bc7c	71		q
	ld (hl),c		;bc7d	71		q
	ld (hl),c		;bc7e	71		q
	ld (hl),d		;bc7f	72		r
	ld c,c			;bc80	49		I
	add hl,sp		;bc81	39		9
	ld e,b			;bc82	58		X
	nop			;bc83	00		.
	nop			;bc84	00		.
	nop			;bc85	00		.
	inc c			;bc86	0c		.
	ld (de),a		;bc87	12		.
	nop			;bc88	00		.
	push bc			;bc89	c5		.
	ld b,017h		;bc8a	06 17		. .
	dec e			;bc8c	1d		.
	ld hl,00019h		;bc8d	21 19 00	! . .
	nop			;bc90	00		.
	nop			;bc91	00		.
	nop			;bc92	00		.
	inc sp			;bc93	33		3
	dec sp			;bc94	3b		;
	scf			;bc95	37		7
	ld sp,0c506h		;bc96	31 06 c5	1 . .
	nop			;bc99	00		.
	ld b,003h		;bc9a	06 03		. .
	rlca			;bc9c	07		.
	jr $+28			;bc9d	18 1a		. .
	dec d			;bc9f	15		.
	inc hl			;bca0	23		#
	nop			;bca1	00		.
	nop			;bca2	00		.
	nop			;bca3	00		.
	nop			;bca4	00		.
	dec a			;bca5	3d		=
	cpl			;bca6	2f		/
	inc (hl)		;bca7	34		4
	ld (00307h),a		;bca8	32 07 03	2 . .
	ld b,007h		;bcab	06 07		. .
	inc b			;bcad	04		.
	ex af,af'		;bcae	08		.
	ld de,01610h		;bcaf	11 10 16	. . .
	dec de			;bcb2	1b		.
	nop			;bcb3	00		.
	nop			;bcb4	00		.
	nop			;bcb5	00		.
	nop			;bcb6	00		.
	dec (hl)		;bcb7	35		5
	jr nc,lbce4h		;bcb8	30 2a		0 *
	dec hl			;bcba	2b		+
	ex af,af'		;bcbb	08		.
	inc b			;bcbc	04		.
	rlca			;bcbd	07		.
	ex af,af'		;bcbe	08		.
	dec b			;bcbf	05		.
	add hl,bc		;bcc0	09		.
	inc de			;bcc1	13		.
	ld (de),a		;bcc2	12		.
	inc d			;bcc3	14		.
	inc e			;bcc4	1c		.
	nop			;bcc5	00		.
	nop			;bcc6	00		.
	nop			;bcc7	00		.
	nop			;bcc8	00		.
	ld (hl),02eh		;bcc9	36 2e		6 .
	inc l			;bccb	2c		,
	dec l			;bccc	2d		-
sub_bccdh:
	add hl,bc		;bccd	09		.
	dec b			;bcce	05		.
	ex af,af'		;bccf	08		.
	ld h,e			;bcd0	63		c
	ld e,c			;bcd1	59		Y
	ld d,e			;bcd2	53		S
	inc b			;bcd3	04		.
	inc bc			;bcd4	03		.
	ld (0001dh),hl		;bcd5	22 1d 00	" . .
	nop			;bcd8	00		.
	nop			;bcd9	00		.
	nop			;bcda	00		.
	ld b,(hl)		;bcdb	46		F
	ld c,e			;bcdc	4b		K
	inc l			;bcdd	2c		,
	dec l			;bcde	2d		-
	ld d,e			;bcdf	53		S
	ld e,c			;bce0	59		Y
	ld h,e			;bce1	63		c
	ld d,e			;bce2	53		S
	ld e,d			;bce3	5a		Z
lbce4h:
	ld e,h			;bce4	5c		\
	dec b			;bce5	05		.
	jr $+37			;bce6	18 23		. #
	sub l			;bce8	95		.
	add a,a			;bce9	87		.
	add a,a			;bcea	87		.
	add a,a			;bceb	87		.
	add a,a			;bcec	87		.
	sub l			;bced	95		.
	ld c,h			;bcee	4c		L
	ld b,c			;bcef	41		A
	ld l,05ch		;bcf0	2e 5c		. \
	ld e,d			;bcf2	5a		Z
	ld d,e			;bcf3	53		S
	ld e,a			;bcf4	5f		_
	ld l,e			;bcf5	6b		k
	dec h			;bcf6	25		%
	inc h			;bcf7	24		$
	rra			;bcf8	1f		.
	add a,c			;bcf9	81		.
	add a,d			;bcfa	82		.
	add a,(hl)		;bcfb	86		.
	add a,(hl)		;bcfc	86		.
	add a,(hl)		;bcfd	86		.
	add a,(hl)		;bcfe	86		.
	add a,d			;bcff	82		.
	add a,c			;bd00	81		.
	ld c,b			;bd01	48		H
	ld c,l			;bd02	4d		M
	ld c,(hl)		;bd03	4e		N
	ld e,a			;bd04	5f		_
	ld l,e			;bd05	6b		k
	ld l,b			;bd06	68		h
	ld l,l			;bd07	6d		m
	ld d,01eh		;bd08	16 1e		. .
	ld hl,01d5dh		;bd0a	21 5d 1d	! ] .
	nop			;bd0d	00		.
	nop			;bd0e	00		.
	nop			;bd0f	00		.
	nop			;bd10	00		.
	ld b,(hl)		;bd11	46		F
	ld e,l			;bd12	5d		]
	ld c,d			;bd13	4a		J
	ld b,a			;bd14	47		G
	ccf			;bd15	3f		?
	ld l,b			;bd16	68		h
	ld l,l			;bd17	6d		m
	ld d,(hl)		;bd18	56		V
	ld d,a			;bd19	57		W
	adc a,d			;bd1a	8a		.
	adc a,e			;bd1b	8b		.
	inc d			;bd1c	14		.
	ld e,l			;bd1d	5d		]
	dec e			;bd1e	1d		.
	nop			;bd1f	00		.
	nop			;bd20	00		.
	nop			;bd21	00		.
	nop			;bd22	00		.
	ld b,(hl)		;bd23	46		F
	ld e,l			;bd24	5d		]
	dec a			;bd25	3d		=
	adc a,h			;bd26	8c		.
	adc a,d			;bd27	8a		.
	ld d,(hl)		;bd28	56		V
	ld d,a			;bd29	57		W
	nop			;bd2a	00		.
	ld e,b			;bd2b	58		X
	adc a,l			;bd2c	8d		.
	adc a,(hl)		;bd2d	8e		.
	adc a,a			;bd2e	8f		.
	ld h,l			;bd2f	65		e
	ld l,h			;bd30	6c		l
	add a,l			;bd31	85		.
	add a,l			;bd32	85		.
	add a,l			;bd33	85		.
	add a,l			;bd34	85		.
	ld h,l			;bd35	65		e
	ld l,h			;bd36	6c		l
	adc a,a			;bd37	8f		.
	adc a,(hl)		;bd38	8e		.
	adc a,l			;bd39	8d		.
	ld e,b			;bd3a	58		X
	nop			;bd3b	00		.
	nop			;bd3c	00		.
	ld e,b			;bd3d	58		X
	sub b			;bd3e	90		.
	sub c			;bd3f	91		.
	sub d			;bd40	92		.
	ld (hl),l		;bd41	75		u
	halt			;bd42	76		v
	adc a,b			;bd43	88		.
	adc a,b			;bd44	88		.
	adc a,b			;bd45	88		.
	adc a,b			;bd46	88		.
	ld (hl),l		;bd47	75		u
	halt			;bd48	76		v
	sub d			;bd49	92		.
	sub e			;bd4a	93		.
	sub h			;bd4b	94		.
	ld e,b			;bd4c	58		X
	nop			;bd4d	00		.
	nop			;bd4e	00		.
	ld e,b			;bd4f	58		X
	djnz lbd72h		;bd50	10 20		.  
	ld (hl),d		;bd52	72		r
	ld (hl),c		;bd53	71		q
	ld (hl),c		;bd54	71		q
	ld (hl),c		;bd55	71		q
	ld (hl),c		;bd56	71		q
	ld (hl),c		;bd57	71		q
	ld (hl),c		;bd58	71		q
	ld (hl),c		;bd59	71		q
	ld (hl),c		;bd5a	71		q
	ld (hl),d		;bd5b	72		r
	ld c,c			;bd5c	49		I
	add hl,sp		;bd5d	39		9
	ld e,b			;bd5e	58		X
	nop			;bd5f	00		.
	nop			;bd60	00		.
	nop			;bd61	00		.
	dec c			;bd62	0d		.
	ld b,000h		;bd63	06 00		. .
	add a,0c7h		;bd65	c6 c7		. .
	ret			;bd67	c9		.
	ret z			;bd68	c8		.
	nop			;bd69	00		.
	cp h			;bd6a	bc		.
	jp z,0cdcch		;bd6b	ca cc cd	. . .
	set 0,e			;bd6e	cb c3		. .
	cp l			;bd70	bd		.
	dec bc			;bd71	0b		.
lbd72h:
	dec c			;bd72	0d		.
	daa			;bd73	27		'
	dec h			;bd74	25		%
	call nz,00c00h		;bd75	c4 00 0c	. . .
	ld c,028h		;bd78	0e 28		. (
	ld h,000h		;bd7a	26 00		& .
	nop			;bd7c	00		.
	sub a			;bd7d	97		.
	sbc a,b			;bd7e	98		.
	sbc a,c			;bd7f	99		.
	sbc a,d			;bd80	9a		.
	nop			;bd81	00		.
	nop			;bd82	00		.
	and a			;bd83	a7		.
	xor b			;bd84	a8		.
	xor c			;bd85	a9		.
	xor d			;bd86	aa		.
	nop			;bd87	00		.
	nop			;bd88	00		.
	sub a			;bd89	97		.
	sbc a,b			;bd8a	98		.
	sbc a,c			;bd8b	99		.
	sbc a,d			;bd8c	9a		.
	nop			;bd8d	00		.
	nop			;bd8e	00		.
	and a			;bd8f	a7		.
	xor b			;bd90	a8		.
	xor c			;bd91	a9		.
	xor d			;bd92	aa		.
	nop			;bd93	00		.
	nop			;bd94	00		.
	sub a			;bd95	97		.
	sbc a,b			;bd96	98		.
	sbc a,c			;bd97	99		.
	sbc a,d			;bd98	9a		.
	nop			;bd99	00		.
	nop			;bd9a	00		.
	and a			;bd9b	a7		.
	xor b			;bd9c	a8		.
	xor c			;bd9d	a9		.
	xor d			;bd9e	aa		.
	nop			;bd9f	00		.
	nop			;bda0	00		.
	sub a			;bda1	97		.
	sbc a,b			;bda2	98		.
	sbc a,c			;bda3	99		.
	sbc a,d			;bda4	9a		.
	nop			;bda5	00		.
	nop			;bda6	00		.
	and a			;bda7	a7		.
	xor b			;bda8	a8		.
	xor c			;bda9	a9		.
	xor d			;bdaa	aa		.
	nop			;bdab	00		.
	nop			;bdac	00		.
	sub a			;bdad	97		.
	sbc a,b			;bdae	98		.
	sbc a,c			;bdaf	99		.
	sbc a,d			;bdb0	9a		.
	nop			;bdb1	00		.
	nop			;bdb2	00		.
	nop			;bdb3	00		.
	dec c			;bdb4	0d		.
	ld b,000h		;bdb5	06 00		. .
	add a,0c7h		;bdb7	c6 c7		. .
	ret			;bdb9	c9		.
	ret z			;bdba	c8		.
	nop			;bdbb	00		.
	cp h			;bdbc	bc		.
	jp z,0cdcch		;bdbd	ca cc cd	. . .
	set 0,e			;bdc0	cb c3		. .
	cp l			;bdc2	bd		.
	dec bc			;bdc3	0b		.
	dec c			;bdc4	0d		.
	daa			;bdc5	27		'
	dec h			;bdc6	25		%
	call nz,00c00h		;bdc7	c4 00 0c	. . .
	ld c,028h		;bdca	0e 28		. (
	ld h,000h		;bdcc	26 00		& .
	nop			;bdce	00		.
	sbc a,e			;bdcf	9b		.
	sbc a,h			;bdd0	9c		.
	sbc a,l			;bdd1	9d		.
	sbc a,(hl)		;bdd2	9e		.
	nop			;bdd3	00		.
	nop			;bdd4	00		.
	xor e			;bdd5	ab		.
	xor h			;bdd6	ac		.
	xor l			;bdd7	ad		.
	xor (hl)		;bdd8	ae		.
	nop			;bdd9	00		.
	nop			;bdda	00		.
	sbc a,e			;bddb	9b		.
	sbc a,h			;bddc	9c		.
	sbc a,l			;bddd	9d		.
	sbc a,(hl)		;bdde	9e		.
	nop			;bddf	00		.
	nop			;bde0	00		.
	xor e			;bde1	ab		.
	xor h			;bde2	ac		.
	xor l			;bde3	ad		.
	xor (hl)		;bde4	ae		.
	nop			;bde5	00		.
	nop			;bde6	00		.
	sbc a,e			;bde7	9b		.
	sbc a,h			;bde8	9c		.
	sbc a,l			;bde9	9d		.
	sbc a,(hl)		;bdea	9e		.
	nop			;bdeb	00		.
	nop			;bdec	00		.
	xor e			;bded	ab		.
	xor h			;bdee	ac		.
	xor l			;bdef	ad		.
	xor (hl)		;bdf0	ae		.
	nop			;bdf1	00		.
	nop			;bdf2	00		.
	sbc a,e			;bdf3	9b		.
	sbc a,h			;bdf4	9c		.
	sbc a,l			;bdf5	9d		.
	sbc a,(hl)		;bdf6	9e		.
	nop			;bdf7	00		.
	nop			;bdf8	00		.
	xor e			;bdf9	ab		.
	xor h			;bdfa	ac		.
	xor l			;bdfb	ad		.
	xor (hl)		;bdfc	ae		.
	nop			;bdfd	00		.
	nop			;bdfe	00		.
	sbc a,e			;bdff	9b		.
	sbc a,h			;be00	9c		.
	sbc a,l			;be01	9d		.
	sbc a,(hl)		;be02	9e		.
	nop			;be03	00		.
	nop			;be04	00		.
	nop			;be05	00		.
	dec c			;be06	0d		.
	ld b,000h		;be07	06 00		. .
	add a,0c7h		;be09	c6 c7		. .
	ret			;be0b	c9		.
	ret z			;be0c	c8		.
	nop			;be0d	00		.
	cp h			;be0e	bc		.
	jp z,0cdcch		;be0f	ca cc cd	. . .
	set 0,e			;be12	cb c3		. .
	cp l			;be14	bd		.
	dec bc			;be15	0b		.
	dec c			;be16	0d		.
	daa			;be17	27		'
	dec h			;be18	25		%
	call nz,00c00h		;be19	c4 00 0c	. . .
	ld c,028h		;be1c	0e 28		. (
	ld h,000h		;be1e	26 00		& .
	nop			;be20	00		.
	sbc a,a			;be21	9f		.
	and b			;be22	a0		.
	and c			;be23	a1		.
	and d			;be24	a2		.
	nop			;be25	00		.
	nop			;be26	00		.
	xor a			;be27	af		.
	or b			;be28	b0		.
	or c			;be29	b1		.
	or d			;be2a	b2		.
	nop			;be2b	00		.
	nop			;be2c	00		.
	sbc a,a			;be2d	9f		.
	and b			;be2e	a0		.
	and c			;be2f	a1		.
	and d			;be30	a2		.
	nop			;be31	00		.
	nop			;be32	00		.
	xor a			;be33	af		.
	or b			;be34	b0		.
	or c			;be35	b1		.
	or d			;be36	b2		.
	nop			;be37	00		.
	nop			;be38	00		.
	sbc a,a			;be39	9f		.
	and b			;be3a	a0		.
	and c			;be3b	a1		.
	and d			;be3c	a2		.
	nop			;be3d	00		.
	nop			;be3e	00		.
	xor a			;be3f	af		.
	or b			;be40	b0		.
	or c			;be41	b1		.
	or d			;be42	b2		.
	nop			;be43	00		.
	nop			;be44	00		.
	sbc a,a			;be45	9f		.
	and b			;be46	a0		.
	and c			;be47	a1		.
	and d			;be48	a2		.
	nop			;be49	00		.
	nop			;be4a	00		.
	xor a			;be4b	af		.
	or b			;be4c	b0		.
	or c			;be4d	b1		.
	or d			;be4e	b2		.
	nop			;be4f	00		.
	nop			;be50	00		.
	sbc a,a			;be51	9f		.
	and b			;be52	a0		.
	and c			;be53	a1		.
	and d			;be54	a2		.
	nop			;be55	00		.
	nop			;be56	00		.
	nop			;be57	00		.
	dec c			;be58	0d		.
	ld b,000h		;be59	06 00		. .
	add a,0c7h		;be5b	c6 c7		. .
	ret			;be5d	c9		.
	ret z			;be5e	c8		.
	nop			;be5f	00		.
	cp h			;be60	bc		.
	jp z,0cdcch		;be61	ca cc cd	. . .
	set 0,e			;be64	cb c3		. .
	cp l			;be66	bd		.
	dec bc			;be67	0b		.
	dec c			;be68	0d		.
	daa			;be69	27		'
	dec h			;be6a	25		%
	call nz,00c00h		;be6b	c4 00 0c	. . .
	ld c,028h		;be6e	0e 28		. (
	ld h,000h		;be70	26 00		& .
	nop			;be72	00		.
	and e			;be73	a3		.
	and h			;be74	a4		.
	and l			;be75	a5		.
	and (hl)		;be76	a6		.
	nop			;be77	00		.
	nop			;be78	00		.
	or e			;be79	b3		.
	or h			;be7a	b4		.
	or l			;be7b	b5		.
	or (hl)			;be7c	b6		.
	nop			;be7d	00		.
	nop			;be7e	00		.
	and e			;be7f	a3		.
	and h			;be80	a4		.
	and l			;be81	a5		.
	and (hl)		;be82	a6		.
	nop			;be83	00		.
	nop			;be84	00		.
	or e			;be85	b3		.
	or h			;be86	b4		.
	or l			;be87	b5		.
	or (hl)			;be88	b6		.
	nop			;be89	00		.
	nop			;be8a	00		.
	and e			;be8b	a3		.
	and h			;be8c	a4		.
	and l			;be8d	a5		.
	and (hl)		;be8e	a6		.
	nop			;be8f	00		.
	nop			;be90	00		.
lbe91h:
	or e			;be91	b3		.
	or h			;be92	b4		.
	or l			;be93	b5		.
	or (hl)			;be94	b6		.
	nop			;be95	00		.
	nop			;be96	00		.
	and e			;be97	a3		.
	and h			;be98	a4		.
	and l			;be99	a5		.
	and (hl)		;be9a	a6		.
	nop			;be9b	00		.
	nop			;be9c	00		.
	or e			;be9d	b3		.
	or h			;be9e	b4		.
	or l			;be9f	b5		.
	or (hl)			;bea0	b6		.
	nop			;bea1	00		.
	nop			;bea2	00		.
	and e			;bea3	a3		.
	and h			;bea4	a4		.
	and l			;bea5	a5		.
	and (hl)		;bea6	a6		.
	nop			;bea7	00		.
	nop			;bea8	00		.
	nop			;bea9	00		.
	dec c			;beaa	0d		.
	ld b,000h		;beab	06 00		. .
	add a,0c7h		;bead	c6 c7		. .
	ret			;beaf	c9		.
	ret z			;beb0	c8		.
	nop			;beb1	00		.
	cp h			;beb2	bc		.
	jp z,0cdcch		;beb3	ca cc cd	. . .
	set 0,e			;beb6	cb c3		. .
	cp l			;beb8	bd		.
	dec bc			;beb9	0b		.
	dec c			;beba	0d		.
	daa			;bebb	27		'
	dec h			;bebc	25		%
	call nz,00c00h		;bebd	c4 00 0c	. . .
	ld c,028h		;bec0	0e 28		. (
	ld h,000h		;bec2	26 00		& .
	nop			;bec4	00		.
	and a			;bec5	a7		.
	xor b			;bec6	a8		.
	xor c			;bec7	a9		.
	xor d			;bec8	aa		.
	nop			;bec9	00		.
	nop			;beca	00		.
	sub a			;becb	97		.
	sbc a,b			;becc	98		.
	sbc a,c			;becd	99		.
	sbc a,d			;bece	9a		.
	nop			;becf	00		.
	nop			;bed0	00		.
	and a			;bed1	a7		.
	xor b			;bed2	a8		.
	xor c			;bed3	a9		.
	xor d			;bed4	aa		.
	nop			;bed5	00		.
	nop			;bed6	00		.
	sub a			;bed7	97		.
	sbc a,b			;bed8	98		.
	sbc a,c			;bed9	99		.
	sbc a,d			;beda	9a		.
	nop			;bedb	00		.
	nop			;bedc	00		.
	and a			;bedd	a7		.
	xor b			;bede	a8		.
	xor c			;bedf	a9		.
	xor d			;bee0	aa		.
	nop			;bee1	00		.
	nop			;bee2	00		.
	sub a			;bee3	97		.
	sbc a,b			;bee4	98		.
	sbc a,c			;bee5	99		.
	sbc a,d			;bee6	9a		.
	nop			;bee7	00		.
	nop			;bee8	00		.
	and a			;bee9	a7		.
	xor b			;beea	a8		.
	xor c			;beeb	a9		.
	xor d			;beec	aa		.
	nop			;beed	00		.
	nop			;beee	00		.
	sub a			;beef	97		.
	sbc a,b			;bef0	98		.
	sbc a,c			;bef1	99		.
	sbc a,d			;bef2	9a		.
	nop			;bef3	00		.
	nop			;bef4	00		.
	and a			;bef5	a7		.
	xor b			;bef6	a8		.
	xor c			;bef7	a9		.
	xor d			;bef8	aa		.
	nop			;bef9	00		.
	nop			;befa	00		.
	nop			;befb	00		.
	dec c			;befc	0d		.
	ld b,000h		;befd	06 00		. .
	add a,0c7h		;beff	c6 c7		. .
	ret			;bf01	c9		.
	ret z			;bf02	c8		.
	nop			;bf03	00		.
	cp h			;bf04	bc		.
	jp z,0cdcch		;bf05	ca cc cd	. . .
	set 0,e			;bf08	cb c3		. .
	cp l			;bf0a	bd		.
	dec bc			;bf0b	0b		.
	dec c			;bf0c	0d		.
	daa			;bf0d	27		'
	dec h			;bf0e	25		%
	call nz,00c00h		;bf0f	c4 00 0c	. . .
	ld c,028h		;bf12	0e 28		. (
	ld h,000h		;bf14	26 00		& .
	nop			;bf16	00		.
	xor e			;bf17	ab		.
	xor h			;bf18	ac		.
	xor l			;bf19	ad		.
	xor (hl)		;bf1a	ae		.
	nop			;bf1b	00		.
	nop			;bf1c	00		.
	sbc a,e			;bf1d	9b		.
	sbc a,h			;bf1e	9c		.
	sbc a,l			;bf1f	9d		.
	sbc a,(hl)		;bf20	9e		.
	nop			;bf21	00		.
	nop			;bf22	00		.
	xor e			;bf23	ab		.
	xor h			;bf24	ac		.
	xor l			;bf25	ad		.
	xor (hl)		;bf26	ae		.
	nop			;bf27	00		.
	nop			;bf28	00		.
	sbc a,e			;bf29	9b		.
	sbc a,h			;bf2a	9c		.
	sbc a,l			;bf2b	9d		.
	sbc a,(hl)		;bf2c	9e		.
	nop			;bf2d	00		.
	nop			;bf2e	00		.
	xor e			;bf2f	ab		.
	xor h			;bf30	ac		.
	xor l			;bf31	ad		.
	xor (hl)		;bf32	ae		.
	nop			;bf33	00		.
	nop			;bf34	00		.
	sbc a,e			;bf35	9b		.
	sbc a,h			;bf36	9c		.
	sbc a,l			;bf37	9d		.
	sbc a,(hl)		;bf38	9e		.
	nop			;bf39	00		.
	nop			;bf3a	00		.
	xor e			;bf3b	ab		.
	xor h			;bf3c	ac		.
	xor l			;bf3d	ad		.
	xor (hl)		;bf3e	ae		.
	nop			;bf3f	00		.
	nop			;bf40	00		.
	sbc a,e			;bf41	9b		.
	sbc a,h			;bf42	9c		.
	sbc a,l			;bf43	9d		.
	sbc a,(hl)		;bf44	9e		.
	nop			;bf45	00		.
	nop			;bf46	00		.
	xor e			;bf47	ab		.
	xor h			;bf48	ac		.
	xor l			;bf49	ad		.
	xor (hl)		;bf4a	ae		.
	nop			;bf4b	00		.
	nop			;bf4c	00		.
	nop			;bf4d	00		.
	dec c			;bf4e	0d		.
	ld b,000h		;bf4f	06 00		. .
	add a,0c7h		;bf51	c6 c7		. .
	ret			;bf53	c9		.
	ret z			;bf54	c8		.
	nop			;bf55	00		.
	cp h			;bf56	bc		.
	jp z,0cdcch		;bf57	ca cc cd	. . .
	set 0,e			;bf5a	cb c3		. .
	cp l			;bf5c	bd		.
	dec bc			;bf5d	0b		.
	dec c			;bf5e	0d		.
	daa			;bf5f	27		'
	dec h			;bf60	25		%
	call nz,00c00h		;bf61	c4 00 0c	. . .
	ld c,028h		;bf64	0e 28		. (
	ld h,000h		;bf66	26 00		& .
	nop			;bf68	00		.
	xor a			;bf69	af		.
	or b			;bf6a	b0		.
	or c			;bf6b	b1		.
	or d			;bf6c	b2		.
	nop			;bf6d	00		.
	nop			;bf6e	00		.
	sbc a,a			;bf6f	9f		.
	and b			;bf70	a0		.
	and c			;bf71	a1		.
	and d			;bf72	a2		.
	nop			;bf73	00		.
	nop			;bf74	00		.
	xor a			;bf75	af		.
	or b			;bf76	b0		.
	or c			;bf77	b1		.
	or d			;bf78	b2		.
	nop			;bf79	00		.
	nop			;bf7a	00		.
	sbc a,a			;bf7b	9f		.
	and b			;bf7c	a0		.
	and c			;bf7d	a1		.
	and d			;bf7e	a2		.
	nop			;bf7f	00		.
	nop			;bf80	00		.
	xor a			;bf81	af		.
	or b			;bf82	b0		.
	or c			;bf83	b1		.
	or d			;bf84	b2		.
	nop			;bf85	00		.
	nop			;bf86	00		.
	sbc a,a			;bf87	9f		.
	and b			;bf88	a0		.
	and c			;bf89	a1		.
	and d			;bf8a	a2		.
	nop			;bf8b	00		.
	nop			;bf8c	00		.
	xor a			;bf8d	af		.
	or b			;bf8e	b0		.
	or c			;bf8f	b1		.
	or d			;bf90	b2		.
	nop			;bf91	00		.
	nop			;bf92	00		.
	sbc a,a			;bf93	9f		.
	and b			;bf94	a0		.
	and c			;bf95	a1		.
	and d			;bf96	a2		.
	nop			;bf97	00		.
	nop			;bf98	00		.
	xor a			;bf99	af		.
	or b			;bf9a	b0		.
	or c			;bf9b	b1		.
	or d			;bf9c	b2		.
	nop			;bf9d	00		.
	nop			;bf9e	00		.
	nop			;bf9f	00		.
	dec c			;bfa0	0d		.
	ld b,000h		;bfa1	06 00		. .
	add a,0c7h		;bfa3	c6 c7		. .
	ret			;bfa5	c9		.
	ret z			;bfa6	c8		.
	nop			;bfa7	00		.
	cp h			;bfa8	bc		.
	jp z,0cdcch		;bfa9	ca cc cd	. . .
	set 0,e			;bfac	cb c3		. .
	cp l			;bfae	bd		.
	dec bc			;bfaf	0b		.
	dec c			;bfb0	0d		.
	daa			;bfb1	27		'
	dec h			;bfb2	25		%
	call nz,00c00h		;bfb3	c4 00 0c	. . .
	ld c,028h		;bfb6	0e 28		. (
	ld h,000h		;bfb8	26 00		& .
	nop			;bfba	00		.
	or e			;bfbb	b3		.
	or h			;bfbc	b4		.
	or l			;bfbd	b5		.
	or (hl)			;bfbe	b6		.
	nop			;bfbf	00		.
	nop			;bfc0	00		.
	and e			;bfc1	a3		.
	and h			;bfc2	a4		.
	and l			;bfc3	a5		.
	and (hl)		;bfc4	a6		.
	nop			;bfc5	00		.
	nop			;bfc6	00		.
	or e			;bfc7	b3		.
	or h			;bfc8	b4		.
	or l			;bfc9	b5		.
	or (hl)			;bfca	b6		.
	nop			;bfcb	00		.
	nop			;bfcc	00		.
	and e			;bfcd	a3		.
	and h			;bfce	a4		.
	and l			;bfcf	a5		.
	and (hl)		;bfd0	a6		.
	nop			;bfd1	00		.
	nop			;bfd2	00		.
	or e			;bfd3	b3		.
	or h			;bfd4	b4		.
	or l			;bfd5	b5		.
	or (hl)			;bfd6	b6		.
	nop			;bfd7	00		.
	nop			;bfd8	00		.
	and e			;bfd9	a3		.
	and h			;bfda	a4		.
	and l			;bfdb	a5		.
	and (hl)		;bfdc	a6		.
	nop			;bfdd	00		.
	nop			;bfde	00		.
	or e			;bfdf	b3		.
	or h			;bfe0	b4		.
	or l			;bfe1	b5		.
	or (hl)			;bfe2	b6		.
	nop			;bfe3	00		.
	nop			;bfe4	00		.
	and e			;bfe5	a3		.
	and h			;bfe6	a4		.
	and l			;bfe7	a5		.
	and (hl)		;bfe8	a6		.
	nop			;bfe9	00		.
	nop			;bfea	00		.
	or e			;bfeb	b3		.
	or h			;bfec	b4		.
	or l			;bfed	b5		.
	or (hl)			;bfee	b6		.
	nop			;bfef	00		.
	nop			;bff0	00		.
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
