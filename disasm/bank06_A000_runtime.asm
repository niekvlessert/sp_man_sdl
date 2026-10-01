; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0xA000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank06_A000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank06.bin

	org 0a000h

	call 06a13h		;a000	cd 13 6a	. . j
	call 06e91h		;a003	cd 91 6e	. . n
	ld a,(ix+001h)		;a006	dd 7e 01	. ~ .
	dec a			;a009	3d		=
	jr z,la049h		;a00a	28 3d		( =
	dec a			;a00c	3d		=
	jr z,la040h		;a00d	28 31		( 1
	call 06754h		;a00f	cd 54 67	. T g
	ld b,007h		;a012	06 07		. .
la014h:
	push bc			;a014	c5		.
	call 06814h		;a015	cd 14 68	. . h
	jp c,0469fh		;a018	da 9f 46	. . F
	call 06926h		;a01b	cd 26 69	. & i
	call 0699eh		;a01e	cd 9e 69	. . i
	pop bc			;a021	c1		.
	djnz la014h		;a022	10 f0		. .
	call sub_a12bh		;a024	cd 2b a1	. + .
	call sub_a10fh		;a027	cd 0f a1	. . .
	call 06c4bh		;a02a	cd 4b 6c	. K l
	ld a,(0ca04h)		;a02d	3a 04 ca	: . .
	and a			;a030	a7		.
	ld a,020h		;a031	3e 20		>  
	jr z,la037h		;a033	28 02		( .
	ld a,040h		;a035	3e 40		> @
la037h:
	ld (ix+016h),a		;a037	dd 77 16	. w .
	call 069d7h		;a03a	cd d7 69	. . i
	jp 06c1dh		;a03d	c3 1d 6c	. . l
la040h:
	ld a,(0c0d4h)		;a040	3a d4 c0	: . .
	cp 003h			;a043	fe 03		. .
	ret nz			;a045	c0		.
	jp 06c1dh		;a046	c3 1d 6c	. . l
la049h:
	call sub_a0b6h		;a049	cd b6 a0	. . .
	call 06ad2h		;a04c	cd d2 6a	. . j
	call z,sub_a12bh	;a04f	cc 2b a1	. + .
	call 06adfh		;a052	cd df 6a	. . j
	ret nz			;a055	c0		.
	call sub_a10fh		;a056	cd 0f a1	. . .
	ld a,(ix+021h)		;a059	dd 7e 21	. ~ !
	cp 008h			;a05c	fe 08		. .
	jr c,la061h		;a05e	38 01		8 .
	xor a			;a060	af		.
la061h:
	ld l,a			;a061	6f		o
	inc a			;a062	3c		<
	ld (ix+021h),a		;a063	dd 77 21	. w !
	ld h,000h		;a066	26 00		& .
	ld de,la0a4h		;a068	11 a4 a0	. . .
	add hl,de		;a06b	19		.
	ld b,(hl)		;a06c	46		F
	ld a,(0ca04h)		;a06d	3a 04 ca	: . .
	and a			;a070	a7		.
	jr nz,la076h		;a071	20 03		  .
	ld a,b			;a073	78		x
	rlca			;a074	07		.
	ret c			;a075	d8		.
la076h:
	ld a,b			;a076	78		x
	and a			;a077	a7		.
	ret z			;a078	c8		.
	and 003h		;a079	e6 03		. .
	dec a			;a07b	3d		=
	jr z,la08ch		;a07c	28 0e		( .
	dec a			;a07e	3d		=
	jr z,la095h		;a07f	28 14		( .
	dec a			;a081	3d		=
	jr z,la084h		;a082	28 00		( .
la084h:
	ld hl,la0b1h		;a084	21 b1 a0	! . .
	ld bc,00008h		;a087	01 08 00	. . .
	jr la09bh		;a08a	18 0f		. .
la08ch:
	ld hl,la0b1h		;a08c	21 b1 a0	! . .
	ld bc,00008h		;a08f	01 08 00	. . .
	call la09bh		;a092	cd 9b a0	. . .
la095h:
	ld hl,la0ach		;a095	21 ac a0	! . .
	ld bc,000feh		;a098	01 fe 00	. . .
la09bh:
	ld a,(ix+022h)		;a09b	dd 7e 22	. ~ "
	ld (0ca26h),a		;a09e	32 26 ca	2 & .
	jp 07306h		;a0a1	c3 06 73	. . s
la0a4h:
	add a,d			;a0a4	82		.
	add a,e			;a0a5	83		.
	nop			;a0a6	00		.
	nop			;a0a7	00		.
	add a,d			;a0a8	82		.
	inc bc			;a0a9	03		.
	ld (bc),a		;a0aa	02		.
	add a,c			;a0ab	81		.
la0ach:
	nop			;a0ac	00		.
	rrca			;a0ad	0f		.
	ld c,00dh		;a0ae	0e 0d		. .
	rst 38h			;a0b0	ff		.
la0b1h:
	nop			;a0b1	00		.
	ld bc,00302h		;a0b2	01 02 03	. . .
	rst 38h			;a0b5	ff		.
sub_a0b6h:
	ld a,(ix+023h)		;a0b6	dd 7e 23	. ~ #
	and a			;a0b9	a7		.
	call z,sub_a0cch	;a0ba	cc cc a0	. . .
	dec (ix+023h)		;a0bd	dd 35 23	. 5 #
	ld e,(ix+011h)		;a0c0	dd 5e 11	. ^ .
	ld d,(ix+012h)		;a0c3	dd 56 12	. V .
	ld hl,00000h		;a0c6	21 00 00	! . .
	jp 06c6dh		;a0c9	c3 6d 6c	. m l
sub_a0cch:
	ld a,(ix+024h)		;a0cc	dd 7e 24	. ~ $
	cp 007h			;a0cf	fe 07		. .
	jr c,la0d4h		;a0d1	38 01		8 .
	xor a			;a0d3	af		.
la0d4h:
	ld l,a			;a0d4	6f		o
	inc a			;a0d5	3c		<
	ld (ix+024h),a		;a0d6	dd 77 24	. w $
	ld h,000h		;a0d9	26 00		& .
	add hl,hl		;a0db	29		)
	ld de,la0f7h		;a0dc	11 f7 a0	. . .
	add hl,de		;a0df	19		.
	ld a,(hl)		;a0e0	7e		~
	ld (ix+023h),a		;a0e1	dd 77 23	. w #
	inc hl			;a0e4	23		#
	ld l,(hl)		;a0e5	6e		n
	ld h,000h		;a0e6	26 00		& .
	add hl,hl		;a0e8	29		)
	ld de,la105h		;a0e9	11 05 a1	. . .
	add hl,de		;a0ec	19		.
	ld a,(hl)		;a0ed	7e		~
	ld (ix+011h),a		;a0ee	dd 77 11	. w .
	inc hl			;a0f1	23		#
	ld a,(hl)		;a0f2	7e		~
	ld (ix+012h),a		;a0f3	dd 77 12	. w .
	ret			;a0f6	c9		.
la0f7h:
	ld b,b			;a0f7	40		@
	nop			;a0f8	00		.
	djnz la0ffh		;a0f9	10 04		. .
	ex af,af'		;a0fb	08		.
	ld bc,00040h		;a0fc	01 40 00	. @ .
la0ffh:
	ex af,af'		;a0ff	08		.
	ld bc,00020h		;a100	01 20 00	.   .
	ex af,af'		;a103	08		.
	inc bc			;a104	03		.
la105h:
	nop			;a105	00		.
	nop			;a106	00		.
	jr nz,la109h		;a107	20 00		  .
la109h:
	ret po			;a109	e0		.
	rst 38h			;a10a	ff		.
	ld b,b			;a10b	40		@
	nop			;a10c	00		.
	ret nz			;a10d	c0		.
	rst 38h			;a10e	ff		.
sub_a10fh:
	ld a,(ix+016h)		;a10f	dd 7e 16	. ~ .
	ld b,a			;a112	47		G
	and a			;a113	a7		.
	jr nz,la117h		;a114	20 01		  .
	inc b			;a116	04		.
la117h:
	cp 018h			;a117	fe 18		. .
	jr nc,la11dh		;a119	30 02		0 .
	ld a,018h		;a11b	3e 18		> .
la11dh:
	ld (ix+018h),a		;a11d	dd 77 18	. w .
	xor a			;a120	af		.
	sub b			;a121	90		.
	rrca			;a122	0f		.
	rrca			;a123	0f		.
	rrca			;a124	0f		.
	and 01fh		;a125	e6 1f		. .
	ld (ix+022h),a		;a127	dd 77 22	. w "
	ret			;a12a	c9		.
sub_a12bh:
	res 7,(ix+014h)		;a12b	dd cb 14 be	. . . .
	ld a,(ix+020h)		;a12f	dd 7e 20	. ~  
	cp 00eh			;a132	fe 0e		. .
	jr c,la137h		;a134	38 01		8 .
	xor a			;a136	af		.
la137h:
	ld l,a			;a137	6f		o
	inc a			;a138	3c		<
	ld (ix+020h),a		;a139	dd 77 20	. w  
	ld h,000h		;a13c	26 00		& .
	add hl,hl		;a13e	29		)
	ld de,la15fh		;a13f	11 5f a1	. _ .
	add hl,de		;a142	19		.
	ld e,(hl)		;a143	5e		^
	inc hl			;a144	23		#
	ld a,(hl)		;a145	7e		~
	ld (ix+017h),e		;a146	dd 73 17	. s .
	ld (ix+006h),a		;a149	dd 77 06	. w .
	cp 004h			;a14c	fe 04		. .
	jr nz,la157h		;a14e	20 07		  .
	call 07ca7h		;a150	cd a7 7c	. . |
	set 7,(ix+014h)		;a153	dd cb 14 fe	. . . .
la157h:
	dec a			;a157	3d		=
	dec a			;a158	3d		=
	ret nz			;a159	c0		.
	ld a,029h		;a15a	3e 29		> )
	jp 04af5h		;a15c	c3 f5 4a	. . J
la15fh:
	inc bc			;a15f	03		.
	inc b			;a160	04		.
	ld (bc),a		;a161	02		.
	nop			;a162	00		.
	inc b			;a163	04		.
	ld bc,00204h		;a164	01 04 02	. . .
	inc b			;a167	04		.
	ld bc,00208h		;a168	01 08 02	. . .
	ld (bc),a		;a16b	02		.
	inc bc			;a16c	03		.
	ex af,af'		;a16d	08		.
	inc b			;a16e	04		.
	ld (bc),a		;a16f	02		.
	nop			;a170	00		.
	inc b			;a171	04		.
	ld bc,00218h		;a172	01 18 02	. . .
	inc b			;a175	04		.
	ld bc,00202h		;a176	01 02 02	. . .
	ld (bc),a		;a179	02		.
	inc bc			;a17a	03		.
	call sub_a2a9h		;a17b	cd a9 a2	. . .
	call sub_a22dh		;a17e	cd 2d a2	. - .
	ld a,(ix+001h)		;a181	dd 7e 01	. ~ .
	call 0461ah		;a184	cd 1a 46	. . F
	sub c			;a187	91		.
	and c			;a188	a1		.
	sbc a,d			;a189	9a		.
	and c			;a18a	a1		.
	cp e			;a18b	bb		.
	and c			;a18c	a1		.
	rst 20h			;a18d	e7		.
	and c			;a18e	a1		.
	dec b			;a18f	05		.
	and d			;a190	a2		.
	call sub_a24ah		;a191	cd 4a a2	. J .
	call sub_a235h		;a194	cd 35 a2	. 5 .
	jp 06c1dh		;a197	c3 1d 6c	. . l
	call 06ad2h		;a19a	cd d2 6a	. . j
	ret nz			;a19d	c0		.
	ld a,(ix+020h)		;a19e	dd 7e 20	. ~  
	ld c,a			;a1a1	4f		O
	and a			;a1a2	a7		.
	ld b,004h		;a1a3	06 04		. .
	jr z,la1a9h		;a1a5	28 02		( .
	ld b,008h		;a1a7	06 08		. .
la1a9h:
	call 06ab8h		;a1a9	cd b8 6a	. . j
	ret nz			;a1ac	c0		.
	ld a,c			;a1ad	79		y
	call sub_a26ah		;a1ae	cd 6a a2	. j .
	call sub_a235h		;a1b1	cd 35 a2	. 5 .
	ld (ix+017h),006h	;a1b4	dd 36 17 06	. 6 . .
	jp 06c1dh		;a1b8	c3 1d 6c	. . l
	call 06ad2h		;a1bb	cd d2 6a	. . j
	ret nz			;a1be	c0		.
	ld a,(ix+020h)		;a1bf	dd 7e 20	. ~  
	and a			;a1c2	a7		.
	ld de,la275h		;a1c3	11 75 a2	. u .
	jr z,la1cbh		;a1c6	28 03		( .
	ld de,la27ah		;a1c8	11 7a a2	. z .
la1cbh:
	ld a,(ix+021h)		;a1cb	dd 7e 21	. ~ !
	inc a			;a1ce	3c		<
	cp 005h			;a1cf	fe 05		. .
	jp nc,06c1dh		;a1d1	d2 1d 6c	. . l
	ld (ix+021h),a		;a1d4	dd 77 21	. w !
	ld b,a			;a1d7	47		G
	ld l,a			;a1d8	6f		o
	ld h,000h		;a1d9	26 00		& .
	add hl,de		;a1db	19		.
	ld a,(hl)		;a1dc	7e		~
	ld (ix+006h),a		;a1dd	dd 77 06	. w .
	dec b			;a1e0	05		.
	ret nz			;a1e1	c0		.
	ld a,028h		;a1e2	3e 28		> (
	jp 04af5h		;a1e4	c3 f5 4a	. . J
	ld a,(ix+020h)		;a1e7	dd 7e 20	. ~  
	and a			;a1ea	a7		.
	ld b,004h		;a1eb	06 04		. .
	jr z,la1f1h		;a1ed	28 02		( .
	ld b,00ah		;a1ef	06 0a		. .
la1f1h:
	ld a,(0ca02h)		;a1f1	3a 02 ca	: . .
	and 003h		;a1f4	e6 03		. .
	jp po,la1fah		;a1f6	e2 fa a1	. . .
	xor a			;a1f9	af		.
la1fah:
	add a,b			;a1fa	80		.
	ld (ix+006h),a		;a1fb	dd 77 06	. w .
	call 06adfh		;a1fe	cd df 6a	. . j
	ret nz			;a201	c0		.
	jp 06c1dh		;a202	c3 1d 6c	. . l
	ld a,(ix+020h)		;a205	dd 7e 20	. ~  
	and a			;a208	a7		.
	ld de,la275h		;a209	11 75 a2	. u .
	jr z,la211h		;a20c	28 03		( .
	ld de,la27ah		;a20e	11 7a a2	. z .
la211h:
	ld a,(ix+021h)		;a211	dd 7e 21	. ~ !
	sub 001h		;a214	d6 01		. .
	jp c,la225h		;a216	da 25 a2	. % .
	ld (ix+021h),a		;a219	dd 77 21	. w !
	ld l,a			;a21c	6f		o
	ld h,000h		;a21d	26 00		& .
	add hl,de		;a21f	19		.
	ld a,(hl)		;a220	7e		~
	ld (ix+006h),a		;a221	dd 77 06	. w .
	ret			;a224	c9		.
la225h:
	call sub_a235h		;a225	cd 35 a2	. 5 .
	ld (ix+001h),001h	;a228	dd 36 01 01	. 6 . .
	ret			;a22c	c9		.
sub_a22dh:
	ld a,(0ce52h)		;a22d	3a 52 ce	: R .
	and a			;a230	a7		.
	ret z			;a231	c8		.
	jp 06e98h		;a232	c3 98 6e	. . n
sub_a235h:
	ld de,0a29bh		;a235	11 9b a2	. . .
	ld l,(ix+038h)		;a238	dd 6e 38	. n 8
	dec l			;a23b	2d		-
	ld h,000h		;a23c	26 00		& .
	add hl,hl		;a23e	29		)
	add hl,de		;a23f	19		.
	ld e,(hl)		;a240	5e		^
	inc hl			;a241	23		#
	ld d,(hl)		;a242	56		V
	ld (ix+017h),e		;a243	dd 73 17	. s .
	ld (ix+018h),d		;a246	dd 72 18	. r .
	ret			;a249	c9		.
sub_a24ah:
	ld l,(ix+038h)		;a24a	dd 6e 38	. n 8
	dec l			;a24d	2d		-
	ld h,000h		;a24e	26 00		& .
	add hl,hl		;a250	29		)
	add hl,hl		;a251	29		)
	ld de,la27fh		;a252	11 7f a2	. . .
	add hl,de		;a255	19		.
	ld a,(hl)		;a256	7e		~
	add a,(ix+008h)		;a257	dd 86 08	. . .
	ld (ix+008h),a		;a25a	dd 77 08	. w .
	inc hl			;a25d	23		#
	ld a,(hl)		;a25e	7e		~
	add a,(ix+00ah)		;a25f	dd 86 0a	. . .
	ld (ix+00ah),a		;a262	dd 77 0a	. w .
	inc hl			;a265	23		#
	ld a,(hl)		;a266	7e		~
	ld (ix+020h),a		;a267	dd 77 20	. w  
sub_a26ah:
	and a			;a26a	a7		.
	ld a,000h		;a26b	3e 00		> .
	jr z,la271h		;a26d	28 02		( .
	ld a,004h		;a26f	3e 04		> .
la271h:
	ld (ix+005h),a		;a271	dd 77 05	. w .
	ret			;a274	c9		.
la275h:
	nop			;a275	00		.
	ld bc,00302h		;a276	01 02 03	. . .
	inc b			;a279	04		.
la27ah:
	nop			;a27a	00		.
	rlca			;a27b	07		.
	ex af,af'		;a27c	08		.
	add hl,bc		;a27d	09		.
	ld a,(bc)		;a27e	0a		.
la27fh:
	defb 0fdh,0fdh,000h ;illegal sequence	;a27f	fd fd 00	. . .
	nop			;a282	00		.
	ld sp,iy		;a283	fd f9		. .
	nop			;a285	00		.
	nop			;a286	00		.
	defb 0fdh,0f6h,000h ;illegal sequence	;a287	fd f6 00	. . .
	nop			;a28a	00		.
	defb 0fdh,0f3h,000h ;illegal sequence	;a28b	fd f3 00	. . .
	nop			;a28e	00		.
	cp 0f0h			;a28f	fe f0		. .
	ld bc,0fe00h		;a291	01 00 fe	. . .
	xor 001h		;a294	ee 01		. .
	nop			;a296	00		.
	cp 0ebh			;a297	fe eb		. .
	ld bc,04000h		;a299	01 00 40	. . @
	ex af,af'		;a29c	08		.
	add a,b			;a29d	80		.
	ex af,af'		;a29e	08		.
	jr nz,sub_a2a9h		;a29f	20 08		  .
	ld b,b			;a2a1	40		@
	ex af,af'		;a2a2	08		.
	jr nc,la2adh		;a2a3	30 08		0 .
	add a,b			;a2a5	80		.
	ex af,af'		;a2a6	08		.
	ex af,af'		;a2a7	08		.
	ex af,af'		;a2a8	08		.
sub_a2a9h:
	ld a,(0ca41h)		;a2a9	3a 41 ca	: A .
	and a			;a2ac	a7		.
la2adh:
	ret z			;a2ad	c8		.
	jp 06e98h		;a2ae	c3 98 6e	. . n
	ld a,(ix+001h)		;a2b1	dd 7e 01	. ~ .
	and a			;a2b4	a7		.
	jr nz,la2c3h		;a2b5	20 0c		  .
	call 06754h		;a2b7	cd 54 67	. T g
	call 06796h		;a2ba	cd 96 67	. . g
	ld (ix+006h),a		;a2bd	dd 77 06	. w .
	jp 06c1dh		;a2c0	c3 1d 6c	. . l
la2c3h:
	ld a,(ix+006h)		;a2c3	dd 7e 06	. ~ .
	and a			;a2c6	a7		.
	jr nz,la2ceh		;a2c7	20 05		  .
	ld a,0fbh		;a2c9	3e fb		> .
	call 06c75h		;a2cb	cd 75 6c	. u l
la2ceh:
	ld a,(0ce52h)		;a2ce	3a 52 ce	: R .
	and a			;a2d1	a7		.
	ret z			;a2d2	c8		.
	ld (ix+004h),0ffh	;a2d3	dd 36 04 ff	. 6 . .
	ret			;a2d7	c9		.
	call 06a13h		;a2d8	cd 13 6a	. . j
	call 06e91h		;a2db	cd 91 6e	. . n
	ld a,0f3h		;a2de	3e f3		> .
	call 06c75h		;a2e0	cd 75 6c	. u l
	call sub_a2ech		;a2e3	cd ec a2	. . .
	ld de,la494h		;a2e6	11 94 a4	. . .
	jp 07b65h		;a2e9	c3 65 7b	. e {
sub_a2ech:
	ld a,(ix+001h)		;a2ec	dd 7e 01	. ~ .
	call 0461ah		;a2ef	cd 1a 46	. . F
	nop			;a2f2	00		.
	and e			;a2f3	a3		.
	dec l			;a2f4	2d		-
	and e			;a2f5	a3		.
	jr c,$-91		;a2f6	38 a3		8 .
	ld d,e			;a2f8	53		S
	and e			;a2f9	a3		.
	ld h,d			;a2fa	62		b
	and e			;a2fb	a3		.
	ld (hl),c		;a2fc	71		q
	and e			;a2fd	a3		.
	add a,b			;a2fe	80		.
	and e			;a2ff	a3		.
	ld (ix+00ah),028h	;a300	dd 36 0a 28	. 6 . (
	ld (ix+008h),00ch	;a304	dd 36 08 0c	. 6 . .
	ld (ix+006h),006h	;a308	dd 36 06 06	. 6 . .
	xor a			;a30c	af		.
	call 06c5ch		;a30d	cd 5c 6c	. \ l
	call 067feh		;a310	cd fe 67	. . g
	ld bc,00406h		;a313	01 06 04	. . .
	call 06929h		;a316	cd 29 69	. ) i
	ld (ix+026h),012h	;a319	dd 36 26 12	. 6 & .
	ld a,(0ca04h)		;a31d	3a 04 ca	: . .
	and a			;a320	a7		.
	jr z,la327h		;a321	28 04		( .
	ld (ix+016h),06ch	;a323	dd 36 16 6c	. 6 . l
la327h:
	call 069d7h		;a327	cd d7 69	. . i
	jp 06c1dh		;a32a	c3 1d 6c	. . l
	call 0688bh		;a32d	cd 8b 68	. . h
	call nc,06886h		;a330	d4 86 68	. . h
	call 06c1dh		;a333	cd 1d 6c	. . l
	jr la38eh		;a336	18 56		. V
	dec (ix+026h)		;a338	dd 35 26	. 5 &
	jr nz,la340h		;a33b	20 03		  .
	dec (ix+006h)		;a33d	dd 35 06	. 5 .
la340h:
	call sub_a45ch		;a340	cd 5c a4	. \ .
	call sub_a3f9h		;a343	cd f9 a3	. . .
	ret nz			;a346	c0		.
	set 7,(ix+014h)		;a347	dd cb 14 fe	. . . .
	call sub_a430h		;a34b	cd 30 a4	. 0 .
	call 06c1dh		;a34e	cd 1d 6c	. . l
	jr la38eh		;a351	18 3b		. ;
	call sub_a45ch		;a353	cd 5c a4	. \ .
	call sub_a40dh		;a356	cd 0d a4	. . .
	call sub_a3f9h		;a359	cd f9 a3	. . .
	ret nz			;a35c	c0		.
	call 06c1dh		;a35d	cd 1d 6c	. . l
	jr la38eh		;a360	18 2c		. ,
	call sub_a3dfh		;a362	cd df a3	. . .
	call sub_a45ch		;a365	cd 5c a4	. \ .
	call sub_a3f9h		;a368	cd f9 a3	. . .
	ret nz			;a36b	c0		.
	call 06c1dh		;a36c	cd 1d 6c	. . l
	jr la38eh		;a36f	18 1d		. .
	call sub_a45ch		;a371	cd 5c a4	. \ .
	call sub_a413h		;a374	cd 13 a4	. . .
	call sub_a3f9h		;a377	cd f9 a3	. . .
	ret nz			;a37a	c0		.
	call 06c1dh		;a37b	cd 1d 6c	. . l
	jr la38eh		;a37e	18 0e		. .
	call sub_a3c4h		;a380	cd c4 a3	. . .
	call sub_a45ch		;a383	cd 5c a4	. \ .
	call sub_a3f9h		;a386	cd f9 a3	. . .
	ret nz			;a389	c0		.
	ld (ix+001h),003h	;a38a	dd 36 01 03	. 6 . .
la38eh:
	ld a,(ix+001h)		;a38e	dd 7e 01	. ~ .
	dec a			;a391	3d		=
	dec a			;a392	3d		=
	ld l,a			;a393	6f		o
	ld h,000h		;a394	26 00		& .
	add hl,hl		;a396	29		)
	add hl,hl		;a397	29		)
	ld de,la3b0h		;a398	11 b0 a3	. . .
	add hl,de		;a39b	19		.
	ld a,(hl)		;a39c	7e		~
	ld (ix+011h),a		;a39d	dd 77 11	. w .
	inc hl			;a3a0	23		#
	ld a,(hl)		;a3a1	7e		~
	ld (ix+012h),a		;a3a2	dd 77 12	. w .
	inc hl			;a3a5	23		#
	ld a,(hl)		;a3a6	7e		~
	ld (ix+017h),a		;a3a7	dd 77 17	. w .
	inc hl			;a3aa	23		#
	ld a,(hl)		;a3ab	7e		~
	ld (ix+020h),a		;a3ac	dd 77 20	. w  
	ret			;a3af	c9		.
la3b0h:
	ret nz			;a3b0	c0		.
	rst 38h			;a3b1	ff		.
	ld e,b			;a3b2	58		X
	ld bc,00000h		;a3b3	01 00 00	. . .
	inc h			;a3b6	24		$
	ld bc,0ffc0h		;a3b7	01 c0 ff	. . .
	jr z,$+18		;a3ba	28 10		( .
	nop			;a3bc	00		.
	nop			;a3bd	00		.
	inc h			;a3be	24		$
	ld bc,00040h		;a3bf	01 40 00	. @ .
	jr z,la3d8h		;a3c2	28 14		( .
sub_a3c4h:
	ld a,(ix+020h)		;a3c4	dd 7e 20	. ~  
	dec a			;a3c7	3d		=
	jr z,la3ceh		;a3c8	28 04		( .
	ld (ix+020h),a		;a3ca	dd 77 20	. w  
	ret			;a3cd	c9		.
la3ceh:
	ld a,(ix+006h)		;a3ce	dd 7e 06	. ~ .
	inc a			;a3d1	3c		<
	cp 006h			;a3d2	fe 06		. .
	ret z			;a3d4	c8		.
	ld (ix+006h),a		;a3d5	dd 77 06	. w .
la3d8h:
	dec a			;a3d8	3d		=
	ret nz			;a3d9	c0		.
	ld a,026h		;a3da	3e 26		> &
	jp 04af5h		;a3dc	c3 f5 4a	. . J
sub_a3dfh:
	ld a,(ix+020h)		;a3df	dd 7e 20	. ~  
	dec a			;a3e2	3d		=
	jr z,la3e9h		;a3e3	28 04		( .
	ld (ix+020h),a		;a3e5	dd 77 20	. w  
	ret			;a3e8	c9		.
la3e9h:
	ld a,(ix+006h)		;a3e9	dd 7e 06	. ~ .
	and a			;a3ec	a7		.
	ret z			;a3ed	c8		.
	dec a			;a3ee	3d		=
	ld (ix+006h),a		;a3ef	dd 77 06	. w .
	and a			;a3f2	a7		.
	ret nz			;a3f3	c0		.
	ld a,027h		;a3f4	3e 27		> '
	jp 04af5h		;a3f6	c3 f5 4a	. . J
sub_a3f9h:
	call 06ad2h		;a3f9	cd d2 6a	. . j
	ret z			;a3fc	c8		.
	ld e,(ix+011h)		;a3fd	dd 5e 11	. ^ .
	ld d,(ix+012h)		;a400	dd 56 12	. V .
	ld hl,00000h		;a403	21 00 00	! . .
	call 06c6dh		;a406	cd 6d 6c	. m l
	ld a,001h		;a409	3e 01		> .
	and a			;a40b	a7		.
	ret			;a40c	c9		.
sub_a40dh:
	ld (ix+024h),000h	;a40d	dd 36 24 00	. 6 $ .
	jr la416h		;a411	18 03		. .
sub_a413h:
	inc (ix+024h)		;a413	dd 34 24	. 4 $
la416h:
	call 06adfh		;a416	cd df 6a	. . j
	ret nz			;a419	c0		.
	ld a,(ix+023h)		;a41a	dd 7e 23	. ~ #
	dec (ix+023h)		;a41d	dd 35 23	. 5 #
	and a			;a420	a7		.
	ret nz			;a421	c0		.
	ld (ix+023h),002h	;a422	dd 36 23 02	. 6 # .
	call sub_a560h		;a426	cd 60 a5	. ` .
	inc (ix+025h)		;a429	dd 34 25	. 4 %
	dec (ix+021h)		;a42c	dd 35 21	. 5 !
	ret nz			;a42f	c0		.
sub_a430h:
	ld l,(ix+022h)		;a430	dd 6e 22	. n "
	inc (ix+022h)		;a433	dd 34 22	. 4 "
	ld h,000h		;a436	26 00		& .
	add hl,hl		;a438	29		)
	ld de,la453h		;a439	11 53 a4	. S .
	add hl,de		;a43c	19		.
	ld a,(hl)		;a43d	7e		~
	and a			;a43e	a7		.
	jr nz,la445h		;a43f	20 04		  .
	ld (ix+022h),a		;a441	dd 77 22	. w "
	ex de,hl		;a444	eb		.
la445h:
	ld a,(hl)		;a445	7e		~
	ld (ix+018h),a		;a446	dd 77 18	. w .
	inc hl			;a449	23		#
	ld a,(hl)		;a44a	7e		~
	ld (ix+021h),a		;a44b	dd 77 21	. w !
	ld (ix+025h),000h	;a44e	dd 36 25 00	. 6 % .
	ret			;a452	c9		.
la453h:
	ld b,006h		;a453	06 06		. .
	ld (de),a		;a455	12		.
	ex af,af'		;a456	08		.
	ex af,af'		;a457	08		.
	inc b			;a458	04		.
	ld (de),a		;a459	12		.
	ex af,af'		;a45a	08		.
	nop			;a45b	00		.
sub_a45ch:
	ld a,(ix+006h)		;a45c	dd 7e 06	. ~ .
	and a			;a45f	a7		.
	jr z,la472h		;a460	28 10		( .
	cp 005h			;a462	fe 05		. .
	jr z,la472h		;a464	28 0c		( .
	ld l,a			;a466	6f		o
	ld h,000h		;a467	26 00		& .
	ld de,la486h		;a469	11 86 a4	. . .
	add hl,de		;a46c	19		.
	ld a,(hl)		;a46d	7e		~
	ld (ix+005h),a		;a46e	dd 77 05	. w .
	ret			;a471	c9		.
la472h:
	call 06b94h		;a472	cd 94 6b	. . k
	ld a,c			;a475	79		y
	add a,002h		;a476	c6 02		. .
	and 007h		;a478	e6 07		. .
	ld l,a			;a47a	6f		o
	ld h,000h		;a47b	26 00		& .
	ld de,la48ch		;a47d	11 8c a4	. . .
	add hl,de		;a480	19		.
	ld a,(hl)		;a481	7e		~
	ld (ix+005h),a		;a482	dd 77 05	. w .
	ret			;a485	c9		.
la486h:
	dec b			;a486	05		.
	nop			;a487	00		.
	ld bc,00404h		;a488	01 04 04	. . .
	dec b			;a48b	05		.
la48ch:
	ld (bc),a		;a48c	02		.
	inc bc			;a48d	03		.
	inc b			;a48e	04		.
	dec b			;a48f	05		.
	dec b			;a490	05		.
	dec b			;a491	05		.
	ld (bc),a		;a492	02		.
	ld (bc),a		;a493	02		.
la494h:
	and d			;a494	a2		.
	and h			;a495	a4		.
	or a			;a496	b7		.
	and h			;a497	a4		.
	call z,0e1a4h		;a498	cc a4 e1	. . .
	and h			;a49b	a4		.
	or 0a4h			;a49c	f6 a4		. .
	dec bc			;a49e	0b		.
	and l			;a49f	a5		.
	jr nz,$-89		;a4a0	20 a5		  .
	dec d			;a4a2	15		.
	nop			;a4a3	00		.
	nop			;a4a4	00		.
	ld bc,0fe00h		;a4a5	01 00 fe	. . .
	nop			;a4a8	00		.
	ld a,(bc)		;a4a9	0a		.
	ld bc,0fe0ah		;a4aa	01 0a fe	. . .
	nop			;a4ad	00		.
	inc b			;a4ae	04		.
	ld bc,0fe01h		;a4af	01 01 fe	. . .
	inc b			;a4b2	04		.
	rst 30h			;a4b3	f7		.
	ld bc,0ff07h		;a4b4	01 07 ff	. . .
	dec d			;a4b7	15		.
	nop			;a4b8	00		.
	nop			;a4b9	00		.
	ld bc,0fe00h		;a4ba	01 00 fe	. . .
	nop			;a4bd	00		.
	ld a,(bc)		;a4be	0a		.
	ld bc,0fe0ah		;a4bf	01 0a fe	. . .
	ld bc,001f6h		;a4c2	01 f6 01	. . .
	rlca			;a4c5	07		.
	cp 000h			;a4c6	fe 00		. .
	inc bc			;a4c8	03		.
	ld bc,0ff02h		;a4c9	01 02 ff	. . .
	dec d			;a4cc	15		.
	nop			;a4cd	00		.
	nop			;a4ce	00		.
	ld bc,0fe00h		;a4cf	01 00 fe	. . .
	nop			;a4d2	00		.
	ld a,(bc)		;a4d3	0a		.
	ld bc,0fe0ah		;a4d4	01 0a fe	. . .
	rst 38h			;a4d7	ff		.
	push af			;a4d8	f5		.
	ld bc,0fe07h		;a4d9	01 07 fe	. . .
	nop			;a4dc	00		.
	ld (bc),a		;a4dd	02		.
	ld bc,0ff03h		;a4de	01 03 ff	. . .
	dec d			;a4e1	15		.
	nop			;a4e2	00		.
	nop			;a4e3	00		.
	ld bc,0fe00h		;a4e4	01 00 fe	. . .
	nop			;a4e7	00		.
	ld a,(bc)		;a4e8	0a		.
	ld bc,0fe0ah		;a4e9	01 0a fe	. . .
	defb 0fdh,0f6h,001h ;illegal sequence	;a4ec	fd f6 01	. . .
	rlca			;a4ef	07		.
	cp 0feh			;a4f0	fe fe		. .
	inc bc			;a4f2	03		.
	ld bc,0ff04h		;a4f3	01 04 ff	. . .
	dec d			;a4f6	15		.
	nop			;a4f7	00		.
	nop			;a4f8	00		.
	ld bc,0fe00h		;a4f9	01 00 fe	. . .
	nop			;a4fc	00		.
	ld a,(bc)		;a4fd	0a		.
	ld bc,0fe0ah		;a4fe	01 0a fe	. . .
	jp m,001f7h		;a501	fa f7 01	. . .
	rlca			;a504	07		.
	cp 0fbh			;a505	fe fb		. .
	inc b			;a507	04		.
	ld bc,0ff05h		;a508	01 05 ff	. . .
	dec d			;a50b	15		.
	nop			;a50c	00		.
	nop			;a50d	00		.
	ld bc,0fe00h		;a50e	01 00 fe	. . .
	nop			;a511	00		.
	ld a,(bc)		;a512	0a		.
	ld bc,0fe0ah		;a513	01 0a fe	. . .
	ret m			;a516	f8		.
	ld sp,hl		;a517	f9		.
	ld bc,0fe07h		;a518	01 07 fe	. . .
	ld sp,hl		;a51b	f9		.
	ld b,001h		;a51c	06 01		. .
	ld b,0ffh		;a51e	06 ff		. .
	djnz la522h		;a520	10 00		. .
la522h:
	nop			;a522	00		.
	ld bc,0fe00h		;a523	01 00 fe	. . .
	ld sp,hl		;a526	f9		.
	ld b,001h		;a527	06 01		. .
	ld b,0feh		;a529	06 fe		. .
	ret m			;a52b	f8		.
	ld sp,hl		;a52c	f9		.
	ld bc,0ff07h		;a52d	01 07 ff	. . .
	ld a,(ix+001h)		;a530	dd 7e 01	. ~ .
	and a			;a533	a7		.
	jr nz,la53dh		;a534	20 07		  .
	ld (ix+020h),000h	;a536	dd 36 20 00	. 6   .
	jp 06c1dh		;a53a	c3 1d 6c	. . l
la53dh:
	ld a,(0ca3bh)		;a53d	3a 3b ca	: ; .
	add a,(ix+00ah)		;a540	dd 86 0a	. . .
	and 007h		;a543	e6 07		. .
	ld d,a			;a545	57		W
	ld a,(0ca1ch)		;a546	3a 1c ca	: . .
	add a,(ix+009h)		;a549	dd 86 09	. . .
	jr nc,la54fh		;a54c	30 01		0 .
	inc d			;a54e	14		.
la54fh:
	res 3,d			;a54f	cb 9a		. .
	ld a,(ix+020h)		;a551	dd 7e 20	. ~  
	add a,d			;a554	82		.
	ld (ix+006h),a		;a555	dd 77 06	. w .
	ld a,(0ce52h)		;a558	3a 52 ce	: R .
	and a			;a55b	a7		.
	ret z			;a55c	c8		.
	jp 06e98h		;a55d	c3 98 6e	. . n
sub_a560h:
	ld a,040h		;a560	3e 40		> @
	call 0684ch		;a562	cd 4c 68	. L h
	ret c			;a565	d8		.
	ld a,(ix+024h)		;a566	dd 7e 24	. ~ $
	ld (iy+024h),a		;a569	fd 77 24	. w $
	ld a,(ix+021h)		;a56c	dd 7e 21	. ~ !
	ld (iy+021h),a		;a56f	fd 77 21	. w !
	ld a,(ix+025h)		;a572	dd 7e 25	. ~ %
	and 003h		;a575	e6 03		. .
	ld bc,00c00h		;a577	01 00 0c	. . .
	add a,b			;a57a	80		.
	ld b,a			;a57b	47		G
	jp 06929h		;a57c	c3 29 69	. ) i
	ld a,(ix+001h)		;a57f	dd 7e 01	. ~ .
	dec a			;a582	3d		=
	jr z,la5a7h		;a583	28 22		( "
	dec a			;a585	3d		=
	jr z,la5b1h		;a586	28 29		( )
	dec a			;a588	3d		=
	jr z,la608h		;a589	28 7d		( }
	ld a,(ix+024h)		;a58b	dd 7e 24	. ~ $
	and a			;a58e	a7		.
	ld a,00bh		;a58f	3e 0b		> .
	jr z,la595h		;a591	28 02		( .
	ld a,004h		;a593	3e 04		> .
la595h:
	ld (ix+017h),a		;a595	dd 77 17	. w .
	ld hl,0ffa0h		;a598	21 a0 ff	! . .
	call 06bf3h		;a59b	cd f3 6b	. . k
	ld hl,0fff8h		;a59e	21 f8 ff	! . .
	call 06c0ch		;a5a1	cd 0c 6c	. . l
	jp 06c1dh		;a5a4	c3 1d 6c	. . l
la5a7h:
	call 06a9ah		;a5a7	cd 9a 6a	. . j
	call 06ad2h		;a5aa	cd d2 6a	. . j
	ret nz			;a5ad	c0		.
	jp 06c1dh		;a5ae	c3 1d 6c	. . l
la5b1h:
	ld a,(0ca02h)		;a5b1	3a 02 ca	: . .
	and 003h		;a5b4	e6 03		. .
	ret nz			;a5b6	c0		.
	ld b,003h		;a5b7	06 03		. .
	call 06ab8h		;a5b9	cd b8 6a	. . j
	cp 002h			;a5bc	fe 02		. .
	ret c			;a5be	d8		.
	ld iy,0ca40h		;a5bf	fd 21 40 ca	. ! @ .
	ld a,01dh		;a5c3	3e 1d		> .
	call 06b85h		;a5c5	cd 85 6b	. . k
	call 09da9h		;a5c8	cd a9 9d	. . .
	cp 098h			;a5cb	fe 98		. .
	jr c,la5d1h		;a5cd	38 02		8 .
	ld a,098h		;a5cf	3e 98		> .
la5d1h:
	push af			;a5d1	f5		.
	ex af,af'		;a5d2	08		.
	call 04678h		;a5d3	cd 78 46	. x F
	and 007h		;a5d6	e6 07		. .
	add a,a			;a5d8	87		.
	add a,a			;a5d9	87		.
	ld b,a			;a5da	47		G
	ex af,af'		;a5db	08		.
	sub b			;a5dc	90		.
	call 09de8h		;a5dd	cd e8 9d	. . .
	call 06b6fh		;a5e0	cd 6f 6b	. o k
	pop af			;a5e3	f1		.
	rlca			;a5e4	07		.
	rlca			;a5e5	07		.
	rlca			;a5e6	07		.
	and 007h		;a5e7	e6 07		. .
	ld l,a			;a5e9	6f		o
	ld h,000h		;a5ea	26 00		& .
	ld de,la601h		;a5ec	11 01 a6	. . .
	add hl,de		;a5ef	19		.
	ld a,(hl)		;a5f0	7e		~
	ld (ix+018h),a		;a5f1	dd 77 18	. w .
	ld (ix+017h),006h	;a5f4	dd 36 17 06	. 6 . .
	ld hl,00012h		;a5f8	21 12 00	! . .
	call 06c0ch		;a5fb	cd 0c 6c	. . l
	jp 06c1dh		;a5fe	c3 1d 6c	. . l
la601h:
	djnz $+12		;a601	10 0a		. .
	ex af,af'		;a603	08		.
	ld c,00bh		;a604	0e 0b		. .
	add hl,bc		;a606	09		.
	inc b			;a607	04		.
la608h:
	call sub_a61eh		;a608	cd 1e a6	. . .
	call sub_a62dh		;a60b	cd 2d a6	. - .
	call 06adfh		;a60e	cd df 6a	. . j
	ret nz			;a611	c0		.
	call 06a9ah		;a612	cd 9a 6a	. . j
	call 06ad2h		;a615	cd d2 6a	. . j
	ret nz			;a618	c0		.
	ld (ix+005h),003h	;a619	dd 36 05 03	. 6 . .
	ret			;a61d	c9		.
sub_a61eh:
	ld a,(ix+008h)		;a61e	dd 7e 08	. ~ .
	add a,001h		;a621	c6 01		. .
	ret nc			;a623	d0		.
	ld (ix+008h),000h	;a624	dd 36 08 00	. 6 . .
	ld (ix+007h),000h	;a628	dd 36 07 00	. 6 . .
	ret			;a62c	c9		.
sub_a62dh:
	ld de,00101h		;a62d	11 01 01	. . .
	call sub_a63ah		;a630	cd 3a a6	. : .
	ret z			;a633	c8		.
	ret c			;a634	d8		.
	ld (ix+004h),0ffh	;a635	dd 36 04 ff	. 6 . .
	ret			;a639	c9		.
sub_a63ah:
	ld a,e			;a63a	7b		{
	add a,(ix+008h)		;a63b	dd 86 08	. . .
	ld e,a			;a63e	5f		_
	ld a,d			;a63f	7a		z
	add a,(ix+00ah)		;a640	dd 86 0a	. . .
	ld d,a			;a643	57		W
	jp 0753ch		;a644	c3 3c 75	. < u
	ld a,0ffh		;a647	3e ff		> .
	call 06c75h		;a649	cd 75 6c	. u l
	call 06a13h		;a64c	cd 13 6a	. . j
	ld de,la7c3h		;a64f	11 c3 a7	. . .
	call 07b65h		;a652	cd 65 7b	. e {
	call 06ad2h		;a655	cd d2 6a	. . j
	call z,sub_a795h	;a658	cc 95 a7	. . .
	ld a,(ix+001h)		;a65b	dd 7e 01	. ~ .
	dec a			;a65e	3d		=
	jr z,la682h		;a65f	28 21		( !
	dec a			;a661	3d		=
	jr z,la697h		;a662	28 33		( 3
	jp p,la6adh		;a664	f2 ad a6	. . .
	ld (ix+008h),001h	;a667	dd 36 08 01	. 6 . .
	ld (ix+00ah),01fh	;a66b	dd 36 0a 1f	. 6 . .
	ld (ix+018h),014h	;a66f	dd 36 18 14	. 6 . .
	call sub_a768h		;a673	cd 68 a7	. h .
	call sub_a795h		;a676	cd 95 a7	. . .
	call sub_a6c3h		;a679	cd c3 a6	. . .
	call 069d7h		;a67c	cd d7 69	. . i
	jp 06c1dh		;a67f	c3 1d 6c	. . l
la682h:
	call sub_a6c3h		;a682	cd c3 a6	. . .
	ld a,(ix+00ah)		;a685	dd 7e 0a	. ~ .
	cp 00eh			;a688	fe 0e		. .
	ret nc			;a68a	d0		.
	ld de,00000h		;a68b	11 00 00	. . .
	ld hl,00000h		;a68e	21 00 00	! . .
	call 06c6dh		;a691	cd 6d 6c	. m l
	call 06c1dh		;a694	cd 1d 6c	. . l
la697h:
	ld hl,00000h		;a697	21 00 00	! . .
	ld de,00040h		;a69a	11 40 00	. @ .
	call 06c6dh		;a69d	cd 6d 6c	. m l
	call sub_a6cch		;a6a0	cd cc a6	. . .
	ld a,(ix+00ah)		;a6a3	dd 7e 0a	. ~ .
	cp 015h			;a6a6	fe 15		. .
	ret c			;a6a8	d8		.
	inc (ix+001h)		;a6a9	dd 34 01	. 4 .
	ret			;a6ac	c9		.
la6adh:
	ld hl,00000h		;a6ad	21 00 00	! . .
	ld de,0ffc0h		;a6b0	11 c0 ff	. . .
	call 06c6dh		;a6b3	cd 6d 6c	. m l
	call sub_a6cch		;a6b6	cd cc a6	. . .
	ld a,(ix+00ah)		;a6b9	dd 7e 0a	. ~ .
	cp 00ah			;a6bc	fe 0a		. .
	ret nc			;a6be	d0		.
	dec (ix+001h)		;a6bf	dd 35 01	. 5 .
	ret			;a6c2	c9		.
sub_a6c3h:
	ld de,0ffe0h		;a6c3	11 e0 ff	. . .
	ld hl,00000h		;a6c6	21 00 00	! . .
	jp 06c6dh		;a6c9	c3 6d 6c	. m l
sub_a6cch:
	ld a,(ix+002h)		;a6cc	dd 7e 02	. ~ .
	cp 005h			;a6cf	fe 05		. .
	jp nc,04ae0h		;a6d1	d2 e0 4a	. . J
	call 0461ah		;a6d4	cd 1a 46	. . F
	pop hl			;a6d7	e1		.
	and (hl)		;a6d8	a6		.
	jp (hl)			;a6d9	e9		.
	and (hl)		;a6da	a6		.
	ld sp,hl		;a6db	f9		.
	and (hl)		;a6dc	a6		.
	inc d			;a6dd	14		.
	and a			;a6de	a7		.
	add hl,sp		;a6df	39		9
	and a			;a6e0	a7		.
	dec (ix+018h)		;a6e1	dd 35 18	. 5 .
	ret nz			;a6e4	c0		.
	inc (ix+002h)		;a6e5	dd 34 02	. 4 .
	ret			;a6e8	c9		.
	call sub_a759h		;a6e9	cd 59 a7	. Y .
	ld a,(ix+003h)		;a6ec	dd 7e 03	. ~ .
	or a			;a6ef	b7		.
	ret nz			;a6f0	c0		.
	inc (ix+002h)		;a6f1	dd 34 02	. 4 .
	ld (ix+018h),00ah	;a6f4	dd 36 18 0a	. 6 . .
	ret			;a6f8	c9		.
	dec (ix+018h)		;a6f9	dd 35 18	. 5 .
	ret nz			;a6fc	c0		.
	ld a,(ix+023h)		;a6fd	dd 7e 23	. ~ #
	call sub_a762h		;a700	cd 62 a7	. b .
	ld (ix+023h),a		;a703	dd 77 23	. w #
	inc a			;a706	3c		<
	ld (ix+021h),a		;a707	dd 77 21	. w !
	ld (ix+022h),002h	;a70a	dd 36 22 02	. 6 " .
	ld (ix+018h),005h	;a70e	dd 36 18 05	. 6 . .
	jr la732h		;a712	18 1e		. .
	call sub_a759h		;a714	cd 59 a7	. Y .
	dec (ix+018h)		;a717	dd 35 18	. 5 .
	ret nz			;a71a	c0		.
	ld a,(ix+023h)		;a71b	dd 7e 23	. ~ #
	call sub_a762h		;a71e	cd 62 a7	. b .
	inc a			;a721	3c		<
	ld (ix+021h),a		;a722	dd 77 21	. w !
	ld (ix+022h),001h	;a725	dd 36 22 01	. 6 " .
	call 04678h		;a729	cd 78 46	. x F
	and 00fh		;a72c	e6 0f		. .
	inc a			;a72e	3c		<
	ld (ix+018h),a		;a72f	dd 77 18	. w .
la732h:
	inc (ix+003h)		;a732	dd 34 03	. 4 .
	inc (ix+002h)		;a735	dd 34 02	. 4 .
	ret			;a738	c9		.
	call sub_a759h		;a739	cd 59 a7	. Y .
	dec (ix+018h)		;a73c	dd 35 18	. 5 .
	ret nz			;a73f	c0		.
	ld a,(ix+023h)		;a740	dd 7e 23	. ~ #
	call sub_a762h		;a743	cd 62 a7	. b .
	call sub_a762h		;a746	cd 62 a7	. b .
	inc a			;a749	3c		<
	ld (ix+021h),a		;a74a	dd 77 21	. w !
	ld (ix+022h),001h	;a74d	dd 36 22 01	. 6 " .
	inc (ix+003h)		;a751	dd 34 03	. 4 .
	ld (ix+002h),001h	;a754	dd 36 02 01	. 6 . .
	ret			;a758	c9		.
sub_a759h:
	ld (ix+021h),000h	;a759	dd 36 21 00	. 6 ! .
	ld (ix+022h),000h	;a75d	dd 36 22 00	. 6 " .
	ret			;a761	c9		.
sub_a762h:
	inc a			;a762	3c		<
	cp 003h			;a763	fe 03		. .
	ret c			;a765	d8		.
	xor a			;a766	af		.
	ret			;a767	c9		.
sub_a768h:
	ld a,001h		;a768	3e 01		> .
	call sub_a774h		;a76a	cd 74 a7	. t .
	ld a,002h		;a76d	3e 02		> .
	call sub_a774h		;a76f	cd 74 a7	. t .
	ld a,003h		;a772	3e 03		> .
sub_a774h:
	push ix			;a774	dd e5		. .
	push ix			;a776	dd e5		. .
	push af			;a778	f5		.
	ld a,03fh		;a779	3e 3f		> ?
	call 069bfh		;a77b	cd bf 69	. . i
	pop bc			;a77e	c1		.
	jr c,la792h		;a77f	38 11		8 .
	ld (ix+003h),b		;a781	dd 70 03	. p .
	ld (ix+023h),001h	;a784	dd 36 23 01	. 6 # .
	pop iy			;a788	fd e1		. .
	ld a,b			;a78a	78		x
	dec a			;a78b	3d		=
	call sub_a9b4h		;a78c	cd b4 a9	. . .
	call sub_a95dh		;a78f	cd 5d a9	. ] .
la792h:
	pop ix			;a792	dd e1		. .
	ret			;a794	c9		.
sub_a795h:
	ld a,(ix+020h)		;a795	dd 7e 20	. ~  
	cp 008h			;a798	fe 08		. .
	jr c,la79dh		;a79a	38 01		8 .
	xor a			;a79c	af		.
la79dh:
	ld l,a			;a79d	6f		o
	inc a			;a79e	3c		<
	ld (ix+020h),a		;a79f	dd 77 20	. w  
	ld h,000h		;a7a2	26 00		& .
	add hl,hl		;a7a4	29		)
	ld de,la7b3h		;a7a5	11 b3 a7	. . .
	add hl,de		;a7a8	19		.
	ld e,(hl)		;a7a9	5e		^
	inc hl			;a7aa	23		#
	ld d,(hl)		;a7ab	56		V
	ld (ix+017h),e		;a7ac	dd 73 17	. s .
	ld (ix+006h),d		;a7af	dd 72 06	. r .
	ret			;a7b2	c9		.
la7b3h:
	ld (bc),a		;a7b3	02		.
	nop			;a7b4	00		.
	ld (bc),a		;a7b5	02		.
	ld bc,00202h		;a7b6	01 02 02	. . .
	ld (bc),a		;a7b9	02		.
	inc bc			;a7ba	03		.
	ld (bc),a		;a7bb	02		.
	inc b			;a7bc	04		.
	ld (bc),a		;a7bd	02		.
	dec b			;a7be	05		.
	ld (bc),a		;a7bf	02		.
	ld b,002h		;a7c0	06 02		. .
	rlca			;a7c2	07		.
la7c3h:
	out (0a7h),a		;a7c3	d3 a7		. .
	ex (sp),hl		;a7c5	e3		.
	and a			;a7c6	a7		.
	di			;a7c7	f3		.
	and a			;a7c8	a7		.
	inc bc			;a7c9	03		.
	xor b			;a7ca	a8		.
	inc de			;a7cb	13		.
	xor b			;a7cc	a8		.
	inc hl			;a7cd	23		#
	xor b			;a7ce	a8		.
	inc sp			;a7cf	33		3
	xor b			;a7d0	a8		.
	ld b,e			;a7d1	43		C
	xor b			;a7d2	a8		.
	djnz la7d5h		;a7d3	10 00		. .
la7d5h:
	nop			;a7d5	00		.
	ld bc,0fe00h		;a7d6	01 00 fe	. . .
	ld de,001ffh		;a7d9	11 ff 01	. . .
	ld bc,012feh		;a7dc	01 fe 12	. . .
	pop af			;a7df	f1		.
	ld bc,0ff02h		;a7e0	01 02 ff	. . .
	djnz la7e5h		;a7e3	10 00		. .
la7e5h:
	nop			;a7e5	00		.
	ld bc,0fe00h		;a7e6	01 00 fe	. . .
	ld de,001ffh		;a7e9	11 ff 01	. . .
	ld bc,012feh		;a7ec	01 fe 12	. . .
	pop af			;a7ef	f1		.
	ld bc,0ff03h		;a7f0	01 03 ff	. . .
	djnz la7f5h		;a7f3	10 00		. .
la7f5h:
	nop			;a7f5	00		.
	ld bc,0fe00h		;a7f6	01 00 fe	. . .
	ld de,001ffh		;a7f9	11 ff 01	. . .
	ld bc,012feh		;a7fc	01 fe 12	. . .
	pop af			;a7ff	f1		.
la800h:
	ld bc,0ff04h		;a800	01 04 ff	. . .
	djnz la805h		;a803	10 00		. .
la805h:
	nop			;a805	00		.
	ld bc,0fe00h		;a806	01 00 fe	. . .
	ld de,001ffh		;a809	11 ff 01	. . .
	ld bc,012feh		;a80c	01 fe 12	. . .
	pop af			;a80f	f1		.
	ld bc,0ff05h		;a810	01 05 ff	. . .
	djnz la815h		;a813	10 00		. .
la815h:
	nop			;a815	00		.
	ld bc,0fe00h		;a816	01 00 fe	. . .
	ld de,001ffh		;a819	11 ff 01	. . .
	ld bc,012feh		;a81c	01 fe 12	. . .
	pop af			;a81f	f1		.
	ld bc,0ff06h		;a820	01 06 ff	. . .
	djnz la825h		;a823	10 00		. .
la825h:
	nop			;a825	00		.
	ld bc,0fe00h		;a826	01 00 fe	. . .
	ld de,001ffh		;a829	11 ff 01	. . .
	ld bc,012feh		;a82c	01 fe 12	. . .
	pop af			;a82f	f1		.
	ld bc,0ff07h		;a830	01 07 ff	. . .
	djnz la835h		;a833	10 00		. .
la835h:
	nop			;a835	00		.
	ld bc,0fe00h		;a836	01 00 fe	. . .
	ld de,001ffh		;a839	11 ff 01	. . .
	ld bc,012feh		;a83c	01 fe 12	. . .
	pop af			;a83f	f1		.
	ld bc,0ff08h		;a840	01 08 ff	. . .
	djnz la845h		;a843	10 00		. .
la845h:
	nop			;a845	00		.
	ld bc,0fe00h		;a846	01 00 fe	. . .
	ld de,001ffh		;a849	11 ff 01	. . .
	ld bc,012feh		;a84c	01 fe 12	. . .
	pop af			;a84f	f1		.
	ld bc,0ff09h		;a850	01 09 ff	. . .
	ld hl,0ca19h		;a853	21 19 ca	! . .
	ld a,(hl)		;a856	7e		~
	push af			;a857	f5		.
	srl a			;a858	cb 3f		. ?
	ld (hl),a		;a85a	77		w
	call sub_a863h		;a85b	cd 63 a8	. c .
	pop af			;a85e	f1		.
	ld (0ca19h),a		;a85f	32 19 ca	2 . .
	ret			;a862	c9		.
sub_a863h:
	call sub_a9a2h		;a863	cd a2 a9	. . .
	jp c,07cc3h		;a866	da c3 7c	. . |
	call sub_a884h		;a869	cd 84 a8	. . .
	ld a,(ix+023h)		;a86c	dd 7e 23	. ~ #
	cp 002h			;a86f	fe 02		. .
	ret nz			;a871	c0		.
	ld a,(ix+024h)		;a872	dd 7e 24	. ~ $
	or a			;a875	b7		.
	ret z			;a876	c8		.
	ld a,(ix+004h)		;a877	dd 7e 04	. ~ .
	or a			;a87a	b7		.
	ret z			;a87b	c8		.
	ld (iy+004h),a		;a87c	fd 77 04	. w .
	ld (ix+004h),000h	;a87f	dd 36 04 00	. 6 . .
	ret			;a883	c9		.
sub_a884h:
	ld a,(ix+001h)		;a884	dd 7e 01	. ~ .
	cp 008h			;a887	fe 08		. .
	jp nc,04ae0h		;a889	d2 e0 4a	. . J
	call 0461ah		;a88c	cd 1a 46	. . F
	sbc a,a			;a88f	9f		.
	xor b			;a890	a8		.
	cp b			;a891	b8		.
	xor b			;a892	a8		.
	push bc			;a893	c5		.
	xor b			;a894	a8		.
	jp nc,0d2a8h		;a895	d2 a8 d2	. . .
	xor b			;a898	a8		.
	push af			;a899	f5		.
	xor b			;a89a	a8		.
	inc de			;a89b	13		.
	xor c			;a89c	a9		.
	inc de			;a89d	13		.
	xor c			;a89e	a9		.
	ld a,(iy+021h)		;a89f	fd 7e 21	. ~ !
	cp (ix+003h)		;a8a2	dd be 03	. . .
	ret nz			;a8a5	c0		.
	ld a,(iy+022h)		;a8a6	fd 7e 22	. ~ "
	ld (ix+001h),a		;a8a9	dd 77 01	. w .
	ld (ix+023h),a		;a8ac	dd 77 23	. w #
	ld (ix+017h),003h	;a8af	dd 36 17 03	. 6 . .
	ld (ix+004h),000h	;a8b3	dd 36 04 00	. 6 . .
	ret			;a8b7	c9		.
	call sub_a93eh		;a8b8	cd 3e a9	. > .
	ret nz			;a8bb	c0		.
	ld (ix+001h),004h	;a8bc	dd 36 01 04	. 6 . .
	ld (ix+017h),028h	;a8c0	dd 36 17 28	. 6 . (
	ret			;a8c4	c9		.
	call sub_a93eh		;a8c5	cd 3e a9	. > .
	ret nz			;a8c8	c0		.
	ld (ix+001h),005h	;a8c9	dd 36 01 05	. 6 . .
	ld (ix+017h),01eh	;a8cd	dd 36 17 1e	. 6 . .
	ret			;a8d1	c9		.
	call sub_a8e8h		;a8d2	cd e8 a8	. . .
	ld a,(ix+017h)		;a8d5	dd 7e 17	. ~ .
	cp 025h			;a8d8	fe 25		. %
	jp z,07143h		;a8da	ca 43 71	. C q
	cp 01ch			;a8dd	fe 1c		. .
	jp z,laa06h		;a8df	ca 06 aa	. . .
	cp 012h			;a8e2	fe 12		. .
	jp z,07143h		;a8e4	ca 43 71	. C q
	ret			;a8e7	c9		.
sub_a8e8h:
	dec (ix+017h)		;a8e8	dd 35 17	. 5 .
	ret nz			;a8eb	c0		.
la8ech:
	ld (ix+001h),007h	;a8ec	dd 36 01 07	. 6 . .
	ld (ix+017h),005h	;a8f0	dd 36 17 05	. 6 . .
	ret			;a8f4	c9		.
	ld a,(0ca02h)		;a8f5	3a 02 ca	: . .
	and 003h		;a8f8	e6 03		. .
	jr nz,la90ch		;a8fa	20 10		  .
	ld a,(ix+024h)		;a8fc	dd 7e 24	. ~ $
	inc a			;a8ff	3c		<
	cp 004h			;a900	fe 04		. .
	jr c,la906h		;a902	38 02		8 .
	ld a,002h		;a904	3e 02		> .
la906h:
	ld (ix+024h),a		;a906	dd 77 24	. w $
	call sub_a95dh		;a909	cd 5d a9	. ] .
la90ch:
	dec (ix+017h)		;a90c	dd 35 17	. 5 .
	ret nz			;a90f	c0		.
	jp la8ech		;a910	c3 ec a8	. . .
	call sub_a91fh		;a913	cd 1f a9	. . .
	ret nz			;a916	c0		.
	dec (iy+003h)		;a917	fd 35 03	. 5 .
	ld (ix+001h),000h	;a91a	dd 36 01 00	. 6 . .
	ret			;a91e	c9		.
sub_a91fh:
	dec (ix+017h)		;a91f	dd 35 17	. 5 .
	ret nz			;a922	c0		.
	ld (ix+017h),001h	;a923	dd 36 17 01	. 6 . .
	ld a,(ix+024h)		;a927	dd 7e 24	. ~ $
	push af			;a92a	f5		.
	cp 002h			;a92b	fe 02		. .
	ld a,02bh		;a92d	3e 2b		> +
	call z,04af5h		;a92f	cc f5 4a	. . J
	pop af			;a932	f1		.
	dec a			;a933	3d		=
	ld (ix+024h),a		;a934	dd 77 24	. w $
	push af			;a937	f5		.
	call sub_a95dh		;a938	cd 5d a9	. ] .
	pop af			;a93b	f1		.
	or a			;a93c	b7		.
	ret			;a93d	c9		.
sub_a93eh:
	dec (ix+017h)		;a93e	dd 35 17	. 5 .
	ret nz			;a941	c0		.
	ld (ix+017h),001h	;a942	dd 36 17 01	. 6 . .
	ld a,(ix+024h)		;a946	dd 7e 24	. ~ $
	push af			;a949	f5		.
	or a			;a94a	b7		.
	ld a,02ah		;a94b	3e 2a		> *
	call z,04af5h		;a94d	cc f5 4a	. . J
	pop af			;a950	f1		.
	inc a			;a951	3c		<
	ld (ix+024h),a		;a952	dd 77 24	. w $
	push af			;a955	f5		.
	call sub_a95dh		;a956	cd 5d a9	. ] .
	pop af			;a959	f1		.
	cp 002h			;a95a	fe 02		. .
	ret			;a95c	c9		.
sub_a95dh:
	ld a,(ix+024h)		;a95d	dd 7e 24	. ~ $
	push af			;a960	f5		.
	ld a,(ix+023h)		;a961	dd 7e 23	. ~ #
	dec a			;a964	3d		=
	call sub_a998h		;a965	cd 98 a9	. . .
	push af			;a968	f5		.
	ld a,(ix+003h)		;a969	dd 7e 03	. ~ .
	dec a			;a96c	3d		=
	call sub_a99fh		;a96d	cd 9f a9	. . .
	pop bc			;a970	c1		.
	add a,b			;a971	80		.
	pop bc			;a972	c1		.
	add a,b			;a973	80		.
	ld hl,la9e2h		;a974	21 e2 a9	! . .
	call 04600h		;a977	cd 00 46	. . F
	ld a,(hl)		;a97a	7e		~
	or a			;a97b	b7		.
	jr z,la98ch		;a97c	28 0e		( .
	dec a			;a97e	3d		=
	ld (ix+006h),a		;a97f	dd 77 06	. w .
	set 6,(ix+015h)		;a982	dd cb 15 f6	. . . .
	set 4,(ix+015h)		;a986	dd cb 15 e6	. . . .
	jr la994h		;a98a	18 08		. .
la98ch:
	res 6,(ix+015h)		;a98c	dd cb 15 b6	. . . .
	res 4,(ix+015h)		;a990	dd cb 15 a6	. . . .
la994h:
	ld a,b			;a994	78		x
	cp 002h			;a995	fe 02		. .
	ret			;a997	c9		.
sub_a998h:
	call sub_a99fh		;a998	cd 9f a9	. . .
	ld c,a			;a99b	4f		O
	add a,a			;a99c	87		.
	add a,c			;a99d	81		.
	ret			;a99e	c9		.
sub_a99fh:
	add a,a			;a99f	87		.
	add a,a			;a9a0	87		.
	ret			;a9a1	c9		.
sub_a9a2h:
	call 068deh		;a9a2	cd de 68	. . h
	ret c			;a9a5	d8		.
	ld a,(ix+003h)		;a9a6	dd 7e 03	. ~ .
	dec a			;a9a9	3d		=
	jr z,la9b0h		;a9aa	28 04		( .
	ld a,(iy+021h)		;a9ac	fd 7e 21	. ~ !
	ret			;a9af	c9		.
la9b0h:
	ld a,(iy+022h)		;a9b0	fd 7e 22	. ~ "
	ret			;a9b3	c9		.
sub_a9b4h:
	ld hl,la9dch		;a9b4	21 dc a9	! . .
	call 0468eh		;a9b7	cd 8e 46	. . F
	ex de,hl		;a9ba	eb		.
	ld b,(iy+008h)		;a9bb	fd 46 08	. F .
	ld c,(iy+007h)		;a9be	fd 4e 07	. N .
	ld h,e			;a9c1	63		c
	ld l,000h		;a9c2	2e 00		. .
	add hl,bc		;a9c4	09		.
	ld (ix+008h),h		;a9c5	dd 74 08	. t .
	ld (ix+007h),l		;a9c8	dd 75 07	. u .
	ld b,(iy+00ah)		;a9cb	fd 46 0a	. F .
	ld c,(iy+009h)		;a9ce	fd 4e 09	. N .
	ld h,d			;a9d1	62		b
	ld l,000h		;a9d2	2e 00		. .
	add hl,bc		;a9d4	09		.
	ld (ix+00ah),h		;a9d5	dd 74 0a	. t .
	ld (ix+009h),l		;a9d8	dd 75 09	. u .
	ret			;a9db	c9		.
la9dch:
	ld b,000h		;a9dc	06 00		. .
	ld a,(bc)		;a9de	0a		.
	nop			;a9df	00		.
	ld c,0ffh		;a9e0	0e ff		. .
la9e2h:
	dec bc			;a9e2	0b		.
	inc c			;a9e3	0c		.
	dec c			;a9e4	0d		.
	dec c			;a9e5	0d		.
	rrca			;a9e6	0f		.
	djnz la9fah		;a9e7	10 11		. .
	ld de,01312h		;a9e9	11 12 13	. . .
	inc d			;a9ec	14		.
	inc d			;a9ed	14		.
	dec bc			;a9ee	0b		.
	inc e			;a9ef	1c		.
	jr $+27			;a9f0	18 19		. .
	rrca			;a9f2	0f		.
	rla			;a9f3	17		.
	dec d			;a9f4	15		.
	ld d,012h		;a9f5	16 12		. .
	dec e			;a9f7	1d		.
	ld a,(de)		;a9f8	1a		.
	dec de			;a9f9	1b		.
la9fah:
	dec bc			;a9fa	0b		.
	ld c,000h		;a9fb	0e 00		. .
	nop			;a9fd	00		.
	rrca			;a9fe	0f		.
	ld e,000h		;a9ff	1e 00		. .
	nop			;aa01	00		.
	ld (de),a		;aa02	12		.
	rra			;aa03	1f		.
	nop			;aa04	00		.
	nop			;aa05	00		.
laa06h:
	ld hl,laa15h		;aa06	21 15 aa	! . .
	call 07186h		;aa09	cd 86 71	. . q
	ld bc,00200h		;aa0c	01 00 02	. . .
	call 07306h		;aa0f	cd 06 73	. . s
	jp 07143h		;aa12	c3 43 71	. C q
laa15h:
	rrca			;aa15	0f		.
	nop			;aa16	00		.
	ld bc,0cdffh		;aa17	01 ff cd	. . .
	inc de			;aa1a	13		.
	ld l,d			;aa1b	6a		j
	ld a,0f8h		;aa1c	3e f8		> .
	call 06c75h		;aa1e	cd 75 6c	. u l
	ld de,lacdeh		;aa21	11 de ac	. . .
	call 07b65h		;aa24	cd 65 7b	. e {
	call sub_ab42h		;aa27	cd 42 ab	. B .
	call sub_ac96h		;aa2a	cd 96 ac	. . .
	call 0ac2ch		;aa2d	cd 2c ac	. , .
	ld a,(ix+001h)		;aa30	dd 7e 01	. ~ .
	call 0461ah		;aa33	cd 1a 46	. . F
	ld c,b			;aa36	48		H
	xor d			;aa37	aa		.
	ld h,h			;aa38	64		d
	xor d			;aa39	aa		.
	adc a,a			;aa3a	8f		.
	xor d			;aa3b	aa		.
	and l			;aa3c	a5		.
	xor d			;aa3d	aa		.
	cp a			;aa3e	bf		.
	xor d			;aa3f	aa		.
	exx			;aa40	d9		.
	xor d			;aa41	aa		.
	inc bc			;aa42	03		.
	xor e			;aa43	ab		.
	ld h,0abh		;aa44	26 ab		& .
	ld a,(0ddabh)		;aa46	3a ab dd	: . .
	ld (hl),008h		;aa49	36 08		6 .
	inc b			;aa4b	04		.
	ld (ix+00ah),01fh	;aa4c	dd 36 0a 1f	. 6 . .
	ld (ix+023h),030h	;aa50	dd 36 23 30	. 6 # 0
	ld (ix+025h),015h	;aa54	dd 36 25 15	. 6 % .
	call sub_ac10h		;aa58	cd 10 ac	. . .
	call 06c4bh		;aa5b	cd 4b 6c	. K l
	call 069d7h		;aa5e	cd d7 69	. . i
	jp 06c1dh		;aa61	c3 1d 6c	. . l
	call sub_ac54h		;aa64	cd 54 ac	. T .
	ld de,0ffe0h		;aa67	11 e0 ff	. . .
	ld a,0d0h		;aa6a	3e d0		> .
	call sub_aa73h		;aa6c	cd 73 aa	. s .
	ret c			;aa6f	d8		.
	jp 06c1dh		;aa70	c3 1d 6c	. . l
sub_aa73h:
	cp (ix+022h)		;aa73	dd be 22	. . "
	jr z,laa8ah		;aa76	28 12		( .
	inc (ix+022h)		;aa78	dd 34 22	. 4 "
	ld (ix+029h),001h	;aa7b	dd 36 29 01	. 6 ) .
	ld hl,00000h		;aa7f	21 00 00	! . .
	call 06c6dh		;aa82	cd 6d 6c	. m l
	call sub_ac65h		;aa85	cd 65 ac	. e .
	scf			;aa88	37		7
	ret			;aa89	c9		.
laa8ah:
	xor a			;aa8a	af		.
	ld (ix+022h),a		;aa8b	dd 77 22	. w "
	ret			;aa8e	c9		.
	call sub_ac54h		;aa8f	cd 54 ac	. T .
	ld de,00020h		;aa92	11 20 00	.   .
	ld a,040h		;aa95	3e 40		> @
	call sub_aa73h		;aa97	cd 73 aa	. s .
	ret c			;aa9a	d8		.
	call sub_abe1h		;aa9b	cd e1 ab	. . .
	ld (ix+029h),000h	;aa9e	dd 36 29 00	. 6 ) .
	jp 06c1dh		;aaa2	c3 1d 6c	. . l
	call sub_ab86h		;aaa5	cd 86 ab	. . .
	call sub_abeah		;aaa8	cd ea ab	. . .
	call sub_ac54h		;aaab	cd 54 ac	. T .
	call sub_ac65h		;aaae	cd 65 ac	. e .
	call 06ad2h		;aab1	cd d2 6a	. . j
	ret nz			;aab4	c0		.
	call sub_abe1h		;aab5	cd e1 ab	. . .
	ld (ix+028h),003h	;aab8	dd 36 28 03	. 6 ( .
	jp 06c1dh		;aabc	c3 1d 6c	. . l
	call sub_ab86h		;aabf	cd 86 ab	. . .
	call sub_ac54h		;aac2	cd 54 ac	. T .
	call sub_ac65h		;aac5	cd 65 ac	. e .
	ld b,004h		;aac8	06 04		. .
	call 06ab8h		;aaca	cd b8 6a	. . j
	ret nz			;aacd	c0		.
	dec (ix+028h)		;aace	dd 35 28	. 5 (
	ret nz			;aad1	c0		.
	ld (ix+027h),020h	;aad2	dd 36 27 20	. 6 '  
	jp 06c1dh		;aad6	c3 1d 6c	. . l
	call sub_ab86h		;aad9	cd 86 ab	. . .
	call sub_ac54h		;aadc	cd 54 ac	. T .
	call sub_ac65h		;aadf	cd 65 ac	. e .
	call sub_aaf2h		;aae2	cd f2 aa	. . .
	dec (ix+027h)		;aae5	dd 35 27	. 5 '
	ret nz			;aae8	c0		.
	ld (ix+026h),000h	;aae9	dd 36 26 00	. 6 & .
	ld (ix+001h),003h	;aaed	dd 36 01 03	. 6 . .
	ret			;aaf1	c9		.
sub_aaf2h:
	ld a,(ix+026h)		;aaf2	dd 7e 26	. ~ &
	and a			;aaf5	a7		.
	ret nz			;aaf6	c0		.
	ld de,00104h		;aaf7	11 04 01	. . .
	call 0915dh		;aafa	cd 5d 91	. ] .
	inc (ix+026h)		;aafd	dd 34 26	. 4 &
	jp sub_ac10h		;ab00	c3 10 ac	. . .
	res 7,(ix+014h)		;ab03	dd cb 14 be	. . . .
	ld de,0ffe0h		;ab07	11 e0 ff	. . .
	ld hl,00000h		;ab0a	21 00 00	! . .
	call 06c6dh		;ab0d	cd 6d 6c	. m l
	call sub_ac65h		;ab10	cd 65 ac	. e .
	inc (ix+022h)		;ab13	dd 34 22	. 4 "
	ld a,(ix+022h)		;ab16	dd 7e 22	. ~ "
	cp 040h			;ab19	fe 40		. @
	ret nz			;ab1b	c0		.
	call sub_abe1h		;ab1c	cd e1 ab	. . .
	ld (ix+006h),005h	;ab1f	dd 36 06 05	. 6 . .
	jp 06c1dh		;ab23	c3 1d 6c	. . l
	call sub_ac65h		;ab26	cd 65 ac	. e .
	call sub_ac59h		;ab29	cd 59 ac	. Y .
	ret nz			;ab2c	c0		.
	ld a,001h		;ab2d	3e 01		> .
	ld (0ce75h),a		;ab2f	32 75 ce	2 u .
	ld a,051h		;ab32	3e 51		> Q
	call 04af5h		;ab34	cd f5 4a	. . J
	jp 06c1dh		;ab37	c3 1d 6c	. . l
	call sub_ac65h		;ab3a	cd 65 ac	. e .
	call sub_ac86h		;ab3d	cd 86 ac	. . .
	jr lab8fh		;ab40	18 4d		. M
sub_ab42h:
	ld a,(ix+001h)		;ab42	dd 7e 01	. ~ .
	cp 003h			;ab45	fe 03		. .
	ret c			;ab47	d8		.
	cp 006h			;ab48	fe 06		. .
	ret nc			;ab4a	d0		.
	ld a,(ix+02ah)		;ab4b	dd 7e 2a	. ~ *
	and a			;ab4e	a7		.
	call z,sub_ab60h	;ab4f	cc 60 ab	. ` .
	dec a			;ab52	3d		=
	ld (ix+02ah),a		;ab53	dd 77 2a	. w *
	ld a,(ix+02bh)		;ab56	dd 7e 2b	. ~ +
	and a			;ab59	a7		.
	ret z			;ab5a	c8		.
	add a,01dh		;ab5b	c6 1d		. .
	jp 07a43h		;ab5d	c3 43 7a	. C z
sub_ab60h:
	ld a,(ix+02bh)		;ab60	dd 7e 2b	. ~ +
	inc a			;ab63	3c		<
	cp 006h			;ab64	fe 06		. .
	jr c,lab69h		;ab66	38 01		8 .
	xor a			;ab68	af		.
lab69h:
	ld (ix+02bh),a		;ab69	dd 77 2b	. w +
	and a			;ab6c	a7		.
	ld bc,00840h		;ab6d	01 40 08	. @ .
	jr z,lab7ch		;ab70	28 0a		( .
	cp 003h			;ab72	fe 03		. .
	ld bc,04008h		;ab74	01 08 40	. . @
	jr z,lab7ch		;ab77	28 03		( .
	ld a,006h		;ab79	3e 06		> .
	ret			;ab7b	c9		.
lab7ch:
	ld a,(0ca19h)		;ab7c	3a 19 ca	: . .
	cp 006h			;ab7f	fe 06		. .
	jr c,lab84h		;ab81	38 01		8 .
	ld b,c			;ab83	41		A
lab84h:
	ld a,b			;ab84	78		x
	ret			;ab85	c9		.
sub_ab86h:
	call 04678h		;ab86	cd 78 46	. x F
	and 00eh		;ab89	e6 0e		. .
	ret nz			;ab8b	c0		.
	jp 09e0fh		;ab8c	c3 0f 9e	. . .
lab8fh:
	ld h,(ix+008h)		;ab8f	dd 66 08	. f .
	ld l,(ix+007h)		;ab92	dd 6e 07	. n .
	ld de,00600h		;ab95	11 00 06	. . .
	add hl,de		;ab98	19		.
	call sub_abd1h		;ab99	cd d1 ab	. . .
	ld a,h			;ab9c	7c		|
	ld hl,(0ca47h)		;ab9d	2a 47 ca	* G .
	call sub_abd1h		;aba0	cd d1 ab	. . .
	cp h			;aba3	bc		.
	call sub_abd7h		;aba4	cd d7 ab	. . .
	push hl			;aba7	e5		.
	add hl,de		;aba8	19		.
	ld (0ca47h),hl		;aba9	22 47 ca	" G .
	ld h,(ix+00ah)		;abac	dd 66 0a	. f .
	ld l,(ix+009h)		;abaf	dd 6e 09	. n .
	ld de,0fe00h		;abb2	11 00 fe	. . .
	add hl,de		;abb5	19		.
	call sub_abd1h		;abb6	cd d1 ab	. . .
	ld a,h			;abb9	7c		|
	ld hl,(0ca49h)		;abba	2a 49 ca	* I .
	call sub_abd1h		;abbd	cd d1 ab	. . .
	cp h			;abc0	bc		.
	call sub_abd7h		;abc1	cd d7 ab	. . .
	ld a,l			;abc4	7d		}
	add hl,de		;abc5	19		.
	ld (0ca49h),hl		;abc6	22 49 ca	" I .
	pop hl			;abc9	e1		.
	or l			;abca	b5		.
	ret nz			;abcb	c0		.
	inc a			;abcc	3c		<
	ld (0ca0fh),a		;abcd	32 0f ca	2 . .
	ret			;abd0	c9		.
sub_abd1h:
	ld d,h			;abd1	54		T
	ld e,l			;abd2	5d		]
	add hl,hl		;abd3	29		)
	add hl,hl		;abd4	29		)
	add hl,hl		;abd5	29		)
	ret			;abd6	c9		.
sub_abd7h:
	ld hl,00000h		;abd7	21 00 00	! . .
	ret z			;abda	c8		.
	ld l,020h		;abdb	2e 20		.  
	ret nc			;abdd	d0		.
	jp 04612h		;abde	c3 12 46	. . F
sub_abe1h:
	ld hl,00000h		;abe1	21 00 00	! . .
	ld de,00000h		;abe4	11 00 00	. . .
	jp 06c6dh		;abe7	c3 6d 6c	. m l
sub_abeah:
	ld a,(ix+023h)		;abea	dd 7e 23	. ~ #
	cp 060h			;abed	fe 60		. `
	inc a			;abef	3c		<
	jr c,labfbh		;abf0	38 09		8 .
	ld a,001h		;abf2	3e 01		> .
	xor (ix+024h)		;abf4	dd ae 24	. . $
	ld (ix+024h),a		;abf7	dd 77 24	. w $
labfah:
	xor a			;abfa	af		.
labfbh:
	ld (ix+023h),a		;abfb	dd 77 23	. w #
	ld a,(ix+024h)		;abfe	dd 7e 24	. ~ $
	and a			;ac01	a7		.
	ld hl,0ffe0h		;ac02	21 e0 ff	! . .
	jr z,lac0ah		;ac05	28 03		( .
	ld hl,00020h		;ac07	21 20 00	!   .
lac0ah:
	ld de,00000h		;ac0a	11 00 00	. . .
	jp 06c6dh		;ac0d	c3 6d 6c	. m l
sub_ac10h:
	ld a,(ix+021h)		;ac10	dd 7e 21	. ~ !
	ld l,a			;ac13	6f		o
	inc a			;ac14	3c		<
	cp 004h			;ac15	fe 04		. .
	jr nz,lac1ah		;ac17	20 01		  .
	xor a			;ac19	af		.
lac1ah:
	ld (ix+021h),a		;ac1a	dd 77 21	. w !
	ld h,000h		;ac1d	26 00		& .
	ld de,lac28h		;ac1f	11 28 ac	. ( .
	add hl,de		;ac22	19		.
	ld a,(hl)		;ac23	7e		~
	ld (ix+017h),a		;ac24	dd 77 17	. w .
	ret			;ac27	c9		.
lac28h:
	jr nz,$+66		;ac28	20 40		  @
	ld h,b			;ac2a	60		`
	jr nz,labfah		;ac2b	20 cd		  .
	inc e			;ac2d	1c		.
	ld l,d			;ac2e	6a		j
	ld a,(ix+029h)		;ac2f	dd 7e 29	. ~ )
	and a			;ac32	a7		.
	ret nz			;ac33	c0		.
	ld a,(ix+02bh)		;ac34	dd 7e 2b	. ~ +
	and a			;ac37	a7		.
	ret z			;ac38	c8		.
	call 07c6bh		;ac39	cd 6b 7c	. k |
	ret nc			;ac3c	d0		.
	ld a,001h		;ac3d	3e 01		> .
	ld (0ce76h),a		;ac3f	32 76 ce	2 v .
	call sub_abe1h		;ac42	cd e1 ab	. . .
	ld (ix+005h),000h	;ac45	dd 36 05 00	. 6 . .
	ld (ix+001h),006h	;ac49	dd 36 01 06	. 6 . .
	ld (ix+029h),001h	;ac4d	dd 36 29 01	. 6 ) .
	jp 07cbeh		;ac51	c3 be 7c	. . |
sub_ac54h:
	ld b,005h		;ac54	06 05		. .
	jp 06ac2h		;ac56	c3 c2 6a	. . j
sub_ac59h:
	call sub_acd8h		;ac59	cd d8 ac	. . .
	ret nz			;ac5c	c0		.
	ld b,00ah		;ac5d	06 0a		. .
	call 06ac2h		;ac5f	cd c2 6a	. . j
	cp 009h			;ac62	fe 09		. .
	ret			;ac64	c9		.
sub_ac65h:
	ld b,(ix+020h)		;ac65	dd 46 20	. F  
	call sub_acd8h		;ac68	cd d8 ac	. . .
	ld a,b			;ac6b	78		x
	jr nz,lac77h		;ac6c	20 09		  .
	cp 003h			;ac6e	fe 03		. .
	inc a			;ac70	3c		<
	jr c,lac74h		;ac71	38 01		8 .
	xor a			;ac73	af		.
lac74h:
	ld (ix+020h),a		;ac74	dd 77 20	. w  
lac77h:
	and a			;ac77	a7		.
	ret z			;ac78	c8		.
	dec a			;ac79	3d		=
	push af			;ac7a	f5		.
	add a,00fh		;ac7b	c6 0f		. .
	call 07a43h		;ac7d	cd 43 7a	. C z
	pop af			;ac80	f1		.
	add a,012h		;ac81	c6 12		. .
	jp 07a43h		;ac83	c3 43 7a	. C z
sub_ac86h:
	ld a,(ix+025h)		;ac86	dd 7e 25	. ~ %
	inc a			;ac89	3c		<
	cp 01eh			;ac8a	fe 1e		. .
	jr nz,lac90h		;ac8c	20 02		  .
	ld a,01bh		;ac8e	3e 1b		> .
lac90h:
	ld (ix+025h),a		;ac90	dd 77 25	. w %
	jp 07a43h		;ac93	c3 43 7a	. C z
sub_ac96h:
	call sub_acd8h		;ac96	cd d8 ac	. . .
	ret nz			;ac99	c0		.
	ld b,008h		;ac9a	06 08		. .
	call 06aech		;ac9c	cd ec 6a	. . j
	push af			;ac9f	f5		.
	call sub_acbah		;aca0	cd ba ac	. . .
	ld a,005h		;aca3	3e 05		> .
	call 04776h		;aca5	cd 76 47	. v G
	pop bc			;aca8	c1		.
	ld a,(ix+001h)		;aca9	dd 7e 01	. ~ .
	cp 005h			;acac	fe 05		. .
	ret nc			;acae	d0		.
	ld a,003h		;acaf	3e 03		> .
	add a,b			;acb1	80		.
	call sub_acbah		;acb2	cd ba ac	. . .
	ld a,009h		;acb5	3e 09		> .
	jp 04776h		;acb7	c3 76 47	. v G
sub_acbah:
	and 007h		;acba	e6 07		. .
	ld l,a			;acbc	6f		o
	ld h,000h		;acbd	26 00		& .
	add hl,hl		;acbf	29		)
	ld de,lacc8h		;acc0	11 c8 ac	. . .
	add hl,de		;acc3	19		.
	ld d,(hl)		;acc4	56		V
	inc hl			;acc5	23		#
	ld e,(hl)		;acc6	5e		^
	ret			;acc7	c9		.
lacc8h:
	ld d,b			;acc8	50		P
	nop			;acc9	00		.
	ld d,b			;acca	50		P
	ld bc,00250h		;accb	01 50 02	. P .
	ld h,b			;acce	60		`
	ld (bc),a		;accf	02		.
	ld h,b			;acd0	60		`
	inc bc			;acd1	03		.
	ld h,b			;acd2	60		`
	inc bc			;acd3	03		.
	ld (hl),b		;acd4	70		p
	inc bc			;acd5	03		.
	ld (hl),b		;acd6	70		p
	inc b			;acd7	04		.
sub_acd8h:
	ld a,(0ca02h)		;acd8	3a 02 ca	: . .
	and 001h		;acdb	e6 01		. .
	ret			;acdd	c9		.
lacdeh:
	jp p,007ach		;acde	f2 ac 07	. . .
	xor l			;ace1	ad		.
	ld hl,03badh		;ace2	21 ad 3b	! . ;
	xor l			;ace5	ad		.
	ld d,l			;ace6	55		U
	xor l			;ace7	ad		.
	ld l,a			;ace8	6f		o
	xor l			;ace9	ad		.
	adc a,(hl)		;acea	8e		.
	xor l			;aceb	ad		.
	xor l			;acec	ad		.
	xor l			;aced	ad		.
	call z,0ebadh		;acee	cc ad eb	. . .
	xor l			;acf1	ad		.
	dec d			;acf2	15		.
	nop			;acf3	00		.
	ld (bc),a		;acf4	02		.
	ld bc,0fe00h		;acf5	01 00 fe	. . .
	ld sp,hl		;acf8	f9		.
	inc b			;acf9	04		.
	ld bc,0fe01h		;acfa	01 01 fe	. . .
	djnz lad03h		;acfd	10 04		. .
	ld bc,0fe02h		;acff	01 02 fe	. . .
	nop			;ad02	00		.
lad03h:
	dec c			;ad03	0d		.
	ld bc,0ff03h		;ad04	01 03 ff	. . .
	ld a,(de)		;ad07	1a		.
	nop			;ad08	00		.
	ld (bc),a		;ad09	02		.
	ld bc,0fe00h		;ad0a	01 00 fe	. . .
	ld sp,hl		;ad0d	f9		.
	inc b			;ad0e	04		.
	ld bc,0fe01h		;ad0f	01 01 fe	. . .
	djnz lad18h		;ad12	10 04		. .
	ld bc,0fe02h		;ad14	01 02 fe	. . .
	nop			;ad17	00		.
lad18h:
	dec c			;ad18	0d		.
	ld bc,0fe03h		;ad19	01 03 fe	. . .
	ld (bc),a		;ad1c	02		.
	ld (bc),a		;ad1d	02		.
	ld bc,0ff04h		;ad1e	01 04 ff	. . .
	ld a,(de)		;ad21	1a		.
	nop			;ad22	00		.
	ld (bc),a		;ad23	02		.
	ld bc,0fe00h		;ad24	01 00 fe	. . .
	ld sp,hl		;ad27	f9		.
	inc b			;ad28	04		.
	ld bc,0fe01h		;ad29	01 01 fe	. . .
	djnz lad32h		;ad2c	10 04		. .
	ld bc,0fe02h		;ad2e	01 02 fe	. . .
	nop			;ad31	00		.
lad32h:
	dec c			;ad32	0d		.
	ld bc,0fe03h		;ad33	01 03 fe	. . .
	ld (bc),a		;ad36	02		.
	ld (bc),a		;ad37	02		.
	ld bc,0ff05h		;ad38	01 05 ff	. . .
	ld a,(de)		;ad3b	1a		.
	nop			;ad3c	00		.
	ld (bc),a		;ad3d	02		.
	ld bc,0fe00h		;ad3e	01 00 fe	. . .
	ld sp,hl		;ad41	f9		.
	inc b			;ad42	04		.
	ld bc,0fe01h		;ad43	01 01 fe	. . .
	djnz lad4ch		;ad46	10 04		. .
	ld bc,0fe02h		;ad48	01 02 fe	. . .
	nop			;ad4b	00		.
lad4ch:
	dec c			;ad4c	0d		.
	ld bc,0fe03h		;ad4d	01 03 fe	. . .
	ld (bc),a		;ad50	02		.
	ld (bc),a		;ad51	02		.
	ld bc,0ff06h		;ad52	01 06 ff	. . .
	ld a,(de)		;ad55	1a		.
	nop			;ad56	00		.
	ld (bc),a		;ad57	02		.
	ld bc,0fe00h		;ad58	01 00 fe	. . .
	ld sp,hl		;ad5b	f9		.
	inc b			;ad5c	04		.
	ld bc,0fe01h		;ad5d	01 01 fe	. . .
	djnz lad66h		;ad60	10 04		. .
	ld bc,0fe02h		;ad62	01 02 fe	. . .
	nop			;ad65	00		.
lad66h:
	dec c			;ad66	0d		.
	ld bc,0fe03h		;ad67	01 03 fe	. . .
	ld (bc),a		;ad6a	02		.
	ld (bc),a		;ad6b	02		.
	ld bc,0ff07h		;ad6c	01 07 ff	. . .
	rra			;ad6f	1f		.
	nop			;ad70	00		.
	ld (bc),a		;ad71	02		.
	ld bc,0fe00h		;ad72	01 00 fe	. . .
	ld sp,hl		;ad75	f9		.
	inc b			;ad76	04		.
	ld bc,0fe01h		;ad77	01 01 fe	. . .
	djnz lad80h		;ad7a	10 04		. .
	ld bc,0fe02h		;ad7c	01 02 fe	. . .
	nop			;ad7f	00		.
lad80h:
	dec c			;ad80	0d		.
	ld bc,0fe03h		;ad81	01 03 fe	. . .
	ld b,001h		;ad84	06 01		. .
	ld bc,0fe0ah		;ad86	01 0a fe	. . .
	ld (bc),a		;ad89	02		.
	ld (bc),a		;ad8a	02		.
	ld bc,0ff07h		;ad8b	01 07 ff	. . .
	rra			;ad8e	1f		.
	nop			;ad8f	00		.
	ld (bc),a		;ad90	02		.
	ld bc,0fe00h		;ad91	01 00 fe	. . .
	ld sp,hl		;ad94	f9		.
	inc b			;ad95	04		.
	ld bc,0fe01h		;ad96	01 01 fe	. . .
	djnz lad9fh		;ad99	10 04		. .
	ld bc,0fe02h		;ad9b	01 02 fe	. . .
	nop			;ad9e	00		.
lad9fh:
	dec c			;ad9f	0d		.
	ld bc,0fe03h		;ada0	01 03 fe	. . .
	ld b,000h		;ada3	06 00		. .
	ld bc,0fe0bh		;ada5	01 0b fe	. . .
	ld (bc),a		;ada8	02		.
	ld (bc),a		;ada9	02		.
	ld bc,0ff07h		;adaa	01 07 ff	. . .
	rra			;adad	1f		.
	nop			;adae	00		.
	ld (bc),a		;adaf	02		.
	ld bc,0fe00h		;adb0	01 00 fe	. . .
	ld sp,hl		;adb3	f9		.
	inc b			;adb4	04		.
	ld bc,0fe01h		;adb5	01 01 fe	. . .
	djnz ladbeh		;adb8	10 04		. .
	ld bc,0fe02h		;adba	01 02 fe	. . .
	nop			;adbd	00		.
ladbeh:
	dec c			;adbe	0d		.
	ld bc,0fe03h		;adbf	01 03 fe	. . .
	dec b			;adc2	05		.
	nop			;adc3	00		.
	ld bc,0fe0ch		;adc4	01 0c fe	. . .
	ld (bc),a		;adc7	02		.
	ld (bc),a		;adc8	02		.
	ld bc,0ff07h		;adc9	01 07 ff	. . .
	rra			;adcc	1f		.
	nop			;adcd	00		.
	ld (bc),a		;adce	02		.
	ld bc,0fe00h		;adcf	01 00 fe	. . .
	ld sp,hl		;add2	f9		.
	inc b			;add3	04		.
	ld bc,0fe01h		;add4	01 01 fe	. . .
	djnz ladddh		;add7	10 04		. .
	ld bc,0fe02h		;add9	01 02 fe	. . .
	nop			;addc	00		.
ladddh:
	dec c			;addd	0d		.
	ld bc,0fe03h		;adde	01 03 fe	. . .
	dec b			;ade1	05		.
	nop			;ade2	00		.
	ld bc,0fe0dh		;ade3	01 0d fe	. . .
	ld (bc),a		;ade6	02		.
	ld (bc),a		;ade7	02		.
	ld bc,0ff07h		;ade8	01 07 ff	. . .
	rra			;adeb	1f		.
	nop			;adec	00		.
	ld (bc),a		;aded	02		.
	ld bc,0fe00h		;adee	01 00 fe	. . .
	ld sp,hl		;adf1	f9		.
	inc b			;adf2	04		.
	ld bc,0fe01h		;adf3	01 01 fe	. . .
	djnz ladfch		;adf6	10 04		. .
	ld bc,0fe02h		;adf8	01 02 fe	. . .
	nop			;adfb	00		.
ladfch:
	dec c			;adfc	0d		.
	ld bc,0fe03h		;adfd	01 03 fe	. . .
	inc b			;ae00	04		.
	nop			;ae01	00		.
	ld bc,0fe0eh		;ae02	01 0e fe	. . .
	ld (bc),a		;ae05	02		.
	ld (bc),a		;ae06	02		.
	ld bc,0ff07h		;ae07	01 07 ff	. . .
	call sub_aef9h		;ae0a	cd f9 ae	. . .
	call 06a13h		;ae0d	cd 13 6a	. . j
	call 06e91h		;ae10	cd 91 6e	. . n
	ld a,0f4h		;ae13	3e f4		> .
	call 06c75h		;ae15	cd 75 6c	. u l
	ld de,lb03ch		;ae18	11 3c b0	. < .
	call 07b65h		;ae1b	cd 65 7b	. e {
	ld a,(ix+001h)		;ae1e	dd 7e 01	. ~ .
	dec a			;ae21	3d		=
	jr z,lae41h		;ae22	28 1d		( .
	dec a			;ae24	3d		=
	jr z,lae64h		;ae25	28 3d		( =
	dec a			;ae27	3d		=
	jr z,lae88h		;ae28	28 5e		( ^
	ld (ix+008h),009h	;ae2a	dd 36 08 09	. 6 . .
	ld (ix+00ah),028h	;ae2e	dd 36 0a 28	. 6 . (
	call sub_af66h		;ae32	cd 66 af	. f .
	call sub_af92h		;ae35	cd 92 af	. . .
	call sub_aebbh		;ae38	cd bb ae	. . .
	call 069d7h		;ae3b	cd d7 69	. . i
	jp 06c1dh		;ae3e	c3 1d 6c	. . l
lae41h:
	call sub_afaah		;ae41	cd aa af	. . .
	call sub_afd4h		;ae44	cd d4 af	. . .
	ld (ix+021h),001h	;ae47	dd 36 21 01	. 6 ! .
	call sub_aee2h		;ae4b	cd e2 ae	. . .
	inc (ix+020h)		;ae4e	dd 34 20	. 4  
	ld a,(ix+020h)		;ae51	dd 7e 20	. ~  
	cp 050h			;ae54	fe 50		. P
	ret nz			;ae56	c0		.
	ld (ix+021h),000h	;ae57	dd 36 21 00	. 6 ! .
	call sub_aee2h		;ae5b	cd e2 ae	. . .
	call sub_b002h		;ae5e	cd 02 b0	. . .
	jp 06c1dh		;ae61	c3 1d 6c	. . l
lae64h:
	call sub_af66h		;ae64	cd 66 af	. f .
	call sub_afaah		;ae67	cd aa af	. . .
	call sub_af8ch		;ae6a	cd 8c af	. . .
	call sub_afb3h		;ae6d	cd b3 af	. . .
	call sub_afd4h		;ae70	cd d4 af	. . .
	call sub_aed8h		;ae73	cd d8 ae	. . .
	call sub_aeabh		;ae76	cd ab ae	. . .
	dec (ix+011h)		;ae79	dd 35 11	. 5 .
	ret nz			;ae7c	c0		.
	call sub_b002h		;ae7d	cd 02 b0	. . .
	ld l,000h		;ae80	2e 00		. .
	call sub_aee5h		;ae82	cd e5 ae	. . .
	jp 06c1dh		;ae85	c3 1d 6c	. . l
lae88h:
	call sub_af66h		;ae88	cd 66 af	. f .
	call sub_af8ch		;ae8b	cd 8c af	. . .
	call sub_afd4h		;ae8e	cd d4 af	. . .
	ld a,(ix+010h)		;ae91	dd 7e 10	. ~ .
	and a			;ae94	a7		.
	jr z,lae9dh		;ae95	28 06		( .
	dec (ix+010h)		;ae97	dd 35 10	. 5 .
	jp lb04eh		;ae9a	c3 4e b0	. N .
lae9dh:
	call 06ad2h		;ae9d	cd d2 6a	. . j
	ret nz			;aea0	c0		.
	ld (ix+001h),002h	;aea1	dd 36 01 02	. 6 . .
	ld bc,0fe03h		;aea5	01 03 fe	. . .
	jp 0751ah		;aea8	c3 1a 75	. . u
sub_aeabh:
	call 06adfh		;aeab	cd df 6a	. . j
	ret nz			;aeae	c0		.
	ld de,00000h		;aeaf	11 00 00	. . .
	call 09157h		;aeb2	cd 57 91	. W .
	ld de,00007h		;aeb5	11 07 00	. . .
	call 09157h		;aeb8	cd 57 91	. W .
sub_aebbh:
	ld a,(ix+012h)		;aebb	dd 7e 12	. ~ .
	cp 005h			;aebe	fe 05		. .
	jr c,laec3h		;aec0	38 01		8 .
	xor a			;aec2	af		.
laec3h:
	ld l,a			;aec3	6f		o
	inc a			;aec4	3c		<
	ld (ix+012h),a		;aec5	dd 77 12	. w .
	ld h,000h		;aec8	26 00		& .
	ld de,laed3h		;aeca	11 d3 ae	. . .
	add hl,de		;aecd	19		.
	ld a,(hl)		;aece	7e		~
	ld (ix+018h),a		;aecf	dd 77 18	. w .
	ret			;aed2	c9		.
laed3h:
	inc de			;aed3	13		.
	daa			;aed4	27		'
	inc sp			;aed5	33		3
	jr laeefh		;aed6	18 17		. .
sub_aed8h:
	ld a,(ix+022h)		;aed8	dd 7e 22	. ~ "
	dec (ix+022h)		;aedb	dd 35 22	. 5 "
	and a			;aede	a7		.
	call z,sub_af18h	;aedf	cc 18 af	. . .
sub_aee2h:
	ld l,(ix+021h)		;aee2	dd 6e 21	. n !
sub_aee5h:
	ld h,000h		;aee5	26 00		& .
	add hl,hl		;aee7	29		)
	add hl,hl		;aee8	29		)
	ld de,laf37h		;aee9	11 37 af	. 7 .
	add hl,de		;aeec	19		.
	ld e,(hl)		;aeed	5e		^
	inc hl			;aeee	23		#
laeefh:
	ld d,(hl)		;aeef	56		V
	inc hl			;aef0	23		#
	ld a,(hl)		;aef1	7e		~
	inc hl			;aef2	23		#
	ld h,(hl)		;aef3	66		f
	ld l,a			;aef4	6f		o
	ex de,hl		;aef5	eb		.
	jp 06c6dh		;aef6	c3 6d 6c	. m l
sub_aef9h:
	ld a,(ix+008h)		;aef9	dd 7e 08	. ~ .
	cp 014h			;aefc	fe 14		. .
	ret c			;aefe	d8		.
	ld (ix+016h),000h	;aeff	dd 36 16 00	. 6 . .
	ld (ix+004h),001h	;af03	dd 36 04 01	. 6 . .
	ld a,(ix+008h)		;af07	dd 7e 08	. ~ .
	dec a			;af0a	3d		=
	dec a			;af0b	3d		=
	ld (ix+008h),a		;af0c	dd 77 08	. w .
	ld hl,00000h		;af0f	21 00 00	! . .
	ld de,00000h		;af12	11 00 00	. . .
	jp 06c6dh		;af15	c3 6d 6c	. m l
sub_af18h:
	ld l,(ix+023h)		;af18	dd 6e 23	. n #
	ld h,000h		;af1b	26 00		& .
	add hl,hl		;af1d	29		)
	ld de,laf53h		;af1e	11 53 af	. S .
	add hl,de		;af21	19		.
	ld a,(hl)		;af22	7e		~
	inc a			;af23	3c		<
	jr nz,laf2ah		;af24	20 04		  .
	ld (ix+023h),a		;af26	dd 77 23	. w #
	ex de,hl		;af29	eb		.
laf2ah:
	inc (ix+023h)		;af2a	dd 34 23	. 4 #
	ld a,(hl)		;af2d	7e		~
	ld (ix+021h),a		;af2e	dd 77 21	. w !
	inc hl			;af31	23		#
	ld a,(hl)		;af32	7e		~
	ld (ix+022h),a		;af33	dd 77 22	. w "
	ret			;af36	c9		.
laf37h:
	nop			;af37	00		.
	nop			;af38	00		.
	nop			;af39	00		.
	nop			;af3a	00		.
	nop			;af3b	00		.
	nop			;af3c	00		.
	ret nz			;af3d	c0		.
	rst 38h			;af3e	ff		.
	nop			;af3f	00		.
	nop			;af40	00		.
	ld b,b			;af41	40		@
	nop			;af42	00		.
	ld h,b			;af43	60		`
	nop			;af44	00		.
	nop			;af45	00		.
	nop			;af46	00		.
	and b			;af47	a0		.
	rst 38h			;af48	ff		.
	nop			;af49	00		.
	nop			;af4a	00		.
	ld b,b			;af4b	40		@
	nop			;af4c	00		.
	ret nz			;af4d	c0		.
	rst 38h			;af4e	ff		.
	ret nz			;af4f	c0		.
	rst 38h			;af50	ff		.
	ret nz			;af51	c0		.
	rst 38h			;af52	ff		.
laf53h:
	inc bc			;af53	03		.
	djnz laf5ah		;af54	10 04		. .
	jr nz,$+5		;af56	20 03		  .
	jr nz,laf5eh		;af58	20 04		  .
laf5ah:
	jr nz,$+7		;af5a	20 05		  .
	jr nc,laf60h		;af5c	30 02		0 .
laf5eh:
	jr nc,sub_af66h		;af5e	30 06		0 .
laf60h:
	jr nc,laf64h		;af60	30 02		0 .
	jr nc,$+5		;af62	30 03		0 .
laf64h:
	djnz $+1		;af64	10 ff		. .
sub_af66h:
	ld a,(ix+024h)		;af66	dd 7e 24	. ~ $
	dec (ix+024h)		;af69	dd 35 24	. 5 $
	and a			;af6c	a7		.
	ret nz			;af6d	c0		.
	ld a,(ix+025h)		;af6e	dd 7e 25	. ~ %
	ld l,a			;af71	6f		o
	ld h,000h		;af72	26 00		& .
	inc a			;af74	3c		<
	cp 004h			;af75	fe 04		. .
	jr nz,laf7ah		;af77	20 01		  .
	xor a			;af79	af		.
laf7ah:
	ld (ix+025h),a		;af7a	dd 77 25	. w %
	add hl,hl		;af7d	29		)
	ld de,lb02ch		;af7e	11 2c b0	. , .
	add hl,de		;af81	19		.
	ld a,(hl)		;af82	7e		~
	ld (ix+026h),a		;af83	dd 77 26	. w &
	inc hl			;af86	23		#
	ld a,(hl)		;af87	7e		~
	ld (ix+024h),a		;af88	dd 77 24	. w $
	ret			;af8b	c9		.
sub_af8ch:
	ld a,(0ca02h)		;af8c	3a 02 ca	: . .
	and 003h		;af8f	e6 03		. .
	ret nz			;af91	c0		.
sub_af92h:
	ld a,(ix+027h)		;af92	dd 7e 27	. ~ '
	ld l,a			;af95	6f		o
	ld h,000h		;af96	26 00		& .
	inc a			;af98	3c		<
	cp 004h			;af99	fe 04		. .
	jr nz,laf9eh		;af9b	20 01		  .
	xor a			;af9d	af		.
laf9eh:
	ld (ix+027h),a		;af9e	dd 77 27	. w '
	ld de,lb034h		;afa1	11 34 b0	. 4 .
	add hl,de		;afa4	19		.
	ld a,(hl)		;afa5	7e		~
	ld (ix+028h),a		;afa6	dd 77 28	. w (
	ret			;afa9	c9		.
sub_afaah:
	ld a,(0ca02h)		;afaa	3a 02 ca	: . .
	rrca			;afad	0f		.
	ret c			;afae	d8		.
	inc (ix+029h)		;afaf	dd 34 29	. 4 )
	ret			;afb2	c9		.
sub_afb3h:
	ld a,(ix+02ah)		;afb3	dd 7e 2a	. ~ *
	inc (ix+02ah)		;afb6	dd 34 2a	. 4 *
	and 003h		;afb9	e6 03		. .
	ret nz			;afbb	c0		.
	ld a,(ix+02bh)		;afbc	dd 7e 2b	. ~ +
	ld l,a			;afbf	6f		o
	ld h,000h		;afc0	26 00		& .
	inc a			;afc2	3c		<
	cp 004h			;afc3	fe 04		. .
	jr nz,lafc8h		;afc5	20 01		  .
	xor a			;afc7	af		.
lafc8h:
	ld (ix+02bh),a		;afc8	dd 77 2b	. w +
	ld de,lb038h		;afcb	11 38 b0	. 8 .
	add hl,de		;afce	19		.
	ld a,(hl)		;afcf	7e		~
	ld (ix+02ch),a		;afd0	dd 77 2c	. w ,
	ret			;afd3	c9		.
sub_afd4h:
	ld a,(ix+026h)		;afd4	dd 7e 26	. ~ &
	call 07a43h		;afd7	cd 43 7a	. C z
	ld a,(ix+028h)		;afda	dd 7e 28	. ~ (
	call 07a43h		;afdd	cd 43 7a	. C z
	ld a,(ix+02ch)		;afe0	dd 7e 2c	. ~ ,
	and a			;afe3	a7		.
	jr z,lafe9h		;afe4	28 03		( .
	call 07a43h		;afe6	cd 43 7a	. C z
lafe9h:
	ld a,(ix+029h)		;afe9	dd 7e 29	. ~ )
	rrca			;afec	0f		.
	jr c,laff8h		;afed	38 09		8 .
	ld a,006h		;afef	3e 06		> .
	call 07a43h		;aff1	cd 43 7a	. C z
	ld a,008h		;aff4	3e 08		> .
	jr lafffh		;aff6	18 07		. .
laff8h:
	ld a,007h		;aff8	3e 07		> .
	call 07a43h		;affa	cd 43 7a	. C z
	ld a,009h		;affd	3e 09		> .
lafffh:
	jp 07a43h		;afff	c3 43 7a	. C z
sub_b002h:
	ld l,(ix+00fh)		;b002	dd 6e 0f	. n .
	inc (ix+00fh)		;b005	dd 34 0f	. 4 .
	ld h,000h		;b008	26 00		& .
	add hl,hl		;b00a	29		)
	ld de,lb025h		;b00b	11 25 b0	. % .
	add hl,de		;b00e	19		.
	ld a,(hl)		;b00f	7e		~
	inc a			;b010	3c		<
	jr nz,lb017h		;b011	20 04		  .
	ld (ix+00fh),a		;b013	dd 77 0f	. w .
	ex de,hl		;b016	eb		.
lb017h:
	ld a,(hl)		;b017	7e		~
	ld (ix+010h),a		;b018	dd 77 10	. w .
	inc hl			;b01b	23		#
	ld a,(hl)		;b01c	7e		~
	ld (ix+011h),a		;b01d	dd 77 11	. w .
	ld (ix+017h),020h	;b020	dd 36 17 20	. 6 .  
	ret			;b024	c9		.
lb025h:
	ex af,af'		;b025	08		.
	jr lb032h		;b026	18 0a		. .
	jr z,lb036h		;b028	28 0c		( .
	ld c,b			;b02a	48		H
	rst 38h			;b02b	ff		.
lb02ch:
	ld a,(bc)		;b02c	0a		.
	inc b			;b02d	04		.
	dec bc			;b02e	0b		.
	ld (bc),a		;b02f	02		.
	inc c			;b030	0c		.
	ld (bc),a		;b031	02		.
lb032h:
	dec bc			;b032	0b		.
	ld (bc),a		;b033	02		.
lb034h:
	inc bc			;b034	03		.
	inc b			;b035	04		.
lb036h:
	dec b			;b036	05		.
	inc b			;b037	04		.
lb038h:
	nop			;b038	00		.
	dec c			;b039	0d		.
	ld c,00dh		;b03a	0e 0d		. .
lb03ch:
	ld a,0b0h		;b03c	3e b0		> .
	djnz lb040h		;b03e	10 00		. .
lb040h:
	nop			;b040	00		.
	ld bc,0fe02h		;b041	01 02 fe	. . .
	ei			;b044	fb		.
	ld sp,hl		;b045	f9		.
	ld bc,0fe00h		;b046	01 00 fe	. . .
	ex af,af'		;b049	08		.
	ld sp,hl		;b04a	f9		.
	ld bc,0ff01h		;b04b	01 01 ff	. . .
lb04eh:
	ld a,058h		;b04e	3e 58		> X
	call 0684ch		;b050	cd 4c 68	. L h
	ret c			;b053	d8		.
	ld bc,0fbfdh		;b054	01 fd fb	. . .
	ld a,(0ca02h)		;b057	3a 02 ca	: . .
	rrca			;b05a	0f		.
	jr c,lb063h		;b05b	38 06		8 .
	ld bc,0fb09h		;b05d	01 09 fb	. . .
	inc (iy+020h)		;b060	fd 34 20	. 4  
lb063h:
	jp 06929h		;b063	c3 29 69	. ) i
	ld a,(ix+001h)		;b066	dd 7e 01	. ~ .
	dec a			;b069	3d		=
	jr z,lb0b6h		;b06a	28 4a		( J
	dec a			;b06c	3d		=
	jr z,lb0c0h		;b06d	28 51		( Q
	ld a,00ah		;b06f	3e 0a		> .
	ld (0ca26h),a		;b071	32 26 ca	2 & .
	call 04678h		;b074	cd 78 46	. x F
	and 03fh		;b077	e6 3f		. ?
	ld b,a			;b079	47		G
	ld a,(ix+020h)		;b07a	dd 7e 20	. ~  
	and a			;b07d	a7		.
	ld a,080h		;b07e	3e 80		> .
	jr z,lb084h		;b080	28 02		( .
	ld a,040h		;b082	3e 40		> @
lb084h:
	add a,b			;b084	80		.
	call 09de8h		;b085	cd e8 9d	. . .
	call 07240h		;b088	cd 40 72	. @ r
	sra h			;b08b	cb 2c		. ,
	rr l			;b08d	cb 1d		. .
	sra h			;b08f	cb 2c		. ,
	rr l			;b091	cb 1d		. .
	sra h			;b093	cb 2c		. ,
	rr l			;b095	cb 1d		. .
	ld (ix+00fh),l		;b097	dd 75 0f	. u .
	ld (ix+010h),h		;b09a	dd 74 10	. t .
	sra d			;b09d	cb 2a		. *
	rr e			;b09f	cb 1b		. .
	sra d			;b0a1	cb 2a		. *
	rr e			;b0a3	cb 1b		. .
	sra d			;b0a5	cb 2a		. *
	rr e			;b0a7	cb 1b		. .
	ld (ix+011h),e		;b0a9	dd 73 11	. s .
	ld (ix+012h),d		;b0ac	dd 72 12	. r .
	ld (ix+017h),009h	;b0af	dd 36 17 09	. 6 . .
	jp 06c1dh		;b0b3	c3 1d 6c	. . l
lb0b6h:
	call 06a9ah		;b0b6	cd 9a 6a	. . j
	call 06ad2h		;b0b9	cd d2 6a	. . j
	ret nz			;b0bc	c0		.
	jp 06c1dh		;b0bd	c3 1d 6c	. . l
lb0c0h:
	ret			;b0c0	c9		.
	ret			;b0c1	c9		.
sub_b0c2h:
	call sub_b4c1h		;b0c2	cd c1 b4	. . .
	ld de,lb455h		;b0c5	11 55 b4	. U .
	call 07b65h		;b0c8	cd 65 7b	. e {
	ret			;b0cb	c9		.
	ld a,(ix+001h)		;b0cc	dd 7e 01	. ~ .
	cp 006h			;b0cf	fe 06		. .
	jp nc,04ae0h		;b0d1	d2 e0 4a	. . J
	call 0461ah		;b0d4	cd 1a 46	. . F
	and 0b0h		;b0d7	e6 b0		. .
	ei			;b0d9	fb		.
	or b			;b0da	b0		.
	rrca			;b0db	0f		.
	or c			;b0dc	b1		.
	dec hl			;b0dd	2b		+
	or c			;b0de	b1		.
	ld b,c			;b0df	41		A
	or c			;b0e0	b1		.
	ld h,h			;b0e1	64		d
	or c			;b0e2	b1		.
	call 06c4bh		;b0e3	cd 4b 6c	. K l
	call 06754h		;b0e6	cd 54 67	. T g
	ld (ix+006h),000h	;b0e9	dd 36 06 00	. 6 . .
	ld (ix+008h),006h	;b0ed	dd 36 08 06	. 6 . .
	ld (ix+00ah),01fh	;b0f1	dd 36 0a 1f	. 6 . .
	call 069d7h		;b0f5	cd d7 69	. . i
	call 06c1dh		;b0f8	cd 1d 6c	. . l
	ld b,008h		;b0fb	06 08		. .
lb0fdh:
	push bc			;b0fd	c5		.
	call sub_b39dh		;b0fe	cd 9d b3	. . .
	jr c,lb10bh		;b101	38 08		8 .
	pop bc			;b103	c1		.
	djnz lb0fdh		;b104	10 f7		. .
	call 06c1dh		;b106	cd 1d 6c	. . l
	jr lb10fh		;b109	18 04		. .
lb10bh:
	pop bc			;b10b	c1		.
	call 06c1dh		;b10c	cd 1d 6c	. . l
lb10fh:
	ld b,008h		;b10f	06 08		. .
lb111h:
	push bc			;b111	c5		.
	call 0688bh		;b112	cd 8b 68	. . h
	jr c,lb125h		;b115	38 0e		8 .
	call 06886h		;b117	cd 86 68	. . h
	push ix			;b11a	dd e5		. .
	push iy			;b11c	fd e5		. .
	pop ix			;b11e	dd e1		. .
	call 06c21h		;b120	cd 21 6c	. ! l
	pop ix			;b123	dd e1		. .
lb125h:
	pop bc			;b125	c1		.
	djnz lb111h		;b126	10 e9		. .
	jp 06c1dh		;b128	c3 1d 6c	. . l
	call sub_b0c2h		;b12b	cd c2 b0	. . .
	ld a,(ix+037h)		;b12e	dd 7e 37	. ~ 7
	or a			;b131	b7		.
	ret nz			;b132	c0		.
	inc (ix+001h)		;b133	dd 34 01	. 4 .
	ld hl,lb4a3h		;b136	21 a3 b4	! . .
	call 04ce0h		;b139	cd e0 4c	. . L
	ld (ix+017h),010h	;b13c	dd 36 17 10	. 6 . .
	ret			;b140	c9		.
	call sub_b0c2h		;b141	cd c2 b0	. . .
	dec (ix+017h)		;b144	dd 35 17	. 5 .
	ret nz			;b147	c0		.
	set 7,(ix+014h)		;b148	dd cb 14 fe	. . . .
	inc (ix+001h)		;b14c	dd 34 01	. 4 .
	ld (ix+003h),00ah	;b14f	dd 36 03 0a	. 6 . .
	ld (ix+018h),032h	;b153	dd 36 18 32	. 6 . 2
	set 4,(ix+015h)		;b157	dd cb 15 e6	. . . .
	call 04e73h		;b15b	cd 73 4e	. s N
	ld hl,lb366h		;b15e	21 66 b3	! f .
	jp lb2edh		;b161	c3 ed b2	. . .
	call 06a13h		;b164	cd 13 6a	. . j
	call sub_b290h		;b167	cd 90 b2	. . .
	call sub_b170h		;b16a	cd 70 b1	. p .
	jp sub_b0c2h		;b16d	c3 c2 b0	. . .
sub_b170h:
	dec (ix+018h)		;b170	dd 35 18	. 5 .
	jr z,lb17eh		;b173	28 09		( .
	dec (ix+018h)		;b175	dd 35 18	. 5 .
	jr z,lb17eh		;b178	28 04		( .
	dec (ix+018h)		;b17a	dd 35 18	. 5 .
	ret nz			;b17d	c0		.
lb17eh:
	ld a,(ix+003h)		;b17e	dd 7e 03	. ~ .
	res 7,a			;b181	cb bf		. .
	ld (ix+018h),a		;b183	dd 77 18	. w .
	ld a,(ix+002h)		;b186	dd 7e 02	. ~ .
	push af			;b189	f5		.
	call sub_b1b4h		;b18a	cd b4 b1	. . .
	pop af			;b18d	f1		.
	inc a			;b18e	3c		<
	cp 008h			;b18f	fe 08		. .
	jr c,lb194h		;b191	38 01		8 .
	xor a			;b193	af		.
lb194h:
	ld (ix+002h),a		;b194	dd 77 02	. w .
	ld a,(ix+003h)		;b197	dd 7e 03	. ~ .
	bit 7,a			;b19a	cb 7f		. .
	jr z,lb1aah		;b19c	28 0c		( .
	inc a			;b19e	3c		<
	ld (ix+003h),a		;b19f	dd 77 03	. w .
	cp 088h			;b1a2	fe 88		. .
	ret c			;b1a4	d8		.
	ld (ix+003h),007h	;b1a5	dd 36 03 07	. 6 . .
	ret			;b1a9	c9		.
lb1aah:
	dec a			;b1aa	3d		=
	ld (ix+003h),a		;b1ab	dd 77 03	. w .
	ret nz			;b1ae	c0		.
	ld (ix+003h),082h	;b1af	dd 36 03 82	. 6 . .
	ret			;b1b3	c9		.
sub_b1b4h:
	push ix			;b1b4	dd e5		. .
	push ix			;b1b6	dd e5		. .
	ld a,05ch		;b1b8	3e 5c		> \
	call 069a3h		;b1ba	cd a3 69	. . i
	pop iy			;b1bd	fd e1		. .
	call nc,sub_b1e4h	;b1bf	d4 e4 b1	. . .
	pop ix			;b1c2	dd e1		. .
	ld a,(ix+018h)		;b1c4	dd 7e 18	. ~ .
	and 07fh		;b1c7	e6 7f		. .
	cp 005h			;b1c9	fe 05		. .
	ld a,02dh		;b1cb	3e 2d		> -
	jp nc,04af5h		;b1cd	d2 f5 4a	. . J
	bit 0,(ix+002h)		;b1d0	dd cb 02 46	. . . F
	ret nz			;b1d4	c0		.
	jp 04af5h		;b1d5	c3 f5 4a	. . J
sub_b1d8h:
	ld a,(de)		;b1d8	1a		.
	inc de			;b1d9	13		.
	ld l,a			;b1da	6f		o
	rlca			;b1db	07		.
	sbc a,a			;b1dc	9f		.
	ld h,a			;b1dd	67		g
	add hl,hl		;b1de	29		)
	add hl,hl		;b1df	29		)
	add hl,hl		;b1e0	29		)
	add hl,hl		;b1e1	29		)
	add hl,hl		;b1e2	29		)
	ret			;b1e3	c9		.
sub_b1e4h:
	ld a,(iy+002h)		;b1e4	fd 7e 02	. ~ .
	ld (ix+003h),a		;b1e7	dd 77 03	. w .
	add a,a			;b1ea	87		.
	add a,a			;b1eb	87		.
	ld e,a			;b1ec	5f		_
	ld d,000h		;b1ed	16 00		. .
	ld hl,lb248h		;b1ef	21 48 b2	! H .
	add hl,de		;b1f2	19		.
	ex de,hl		;b1f3	eb		.
	call sub_b1d8h		;b1f4	cd d8 b1	. . .
	ld b,(iy+008h)		;b1f7	fd 46 08	. F .
	ld c,(iy+007h)		;b1fa	fd 4e 07	. N .
	add hl,bc		;b1fd	09		.
	ld (ix+008h),h		;b1fe	dd 74 08	. t .
	ld (ix+007h),l		;b201	dd 75 07	. u .
	call sub_b1d8h		;b204	cd d8 b1	. . .
	ld b,(iy+00ah)		;b207	fd 46 0a	. F .
	ld c,(iy+009h)		;b20a	fd 4e 09	. N .
	add hl,bc		;b20d	09		.
	ld (ix+00ah),h		;b20e	dd 74 0a	. t .
	ld (ix+009h),l		;b211	dd 75 09	. u .
	call sub_b1d8h		;b214	cd d8 b1	. . .
	ld b,(iy+00eh)		;b217	fd 46 0e	. F .
	ld c,(iy+00dh)		;b21a	fd 4e 0d	. N .
	sra b			;b21d	cb 28		. (
	rr c			;b21f	cb 19		. .
	add hl,bc		;b221	09		.
	ld (ix+00eh),h		;b222	dd 74 0e	. t .
	ld (ix+00dh),l		;b225	dd 75 0d	. u .
	call sub_b1d8h		;b228	cd d8 b1	. . .
	ld b,(iy+00ch)		;b22b	fd 46 0c	. F .
	ld c,(iy+00bh)		;b22e	fd 4e 0b	. N .
	sra b			;b231	cb 28		. (
	rr c			;b233	cb 19		. .
	add hl,bc		;b235	09		.
	ld (ix+00ch),h		;b236	dd 74 0c	. t .
	ld (ix+00bh),l		;b239	dd 75 0b	. u .
	ld a,000h		;b23c	3e 00		> .
	call sub_b268h		;b23e	cd 68 b2	. h .
	ld (ix+006h),a		;b241	dd 77 06	. w .
	ld (ix+005h),a		;b244	dd 77 05	. w .
	ret			;b247	c9		.
lb248h:
	ret m			;b248	f8		.
	ret m			;b249	f8		.
	jp m,0f8fah		;b24a	fa fa f8	. . .
	jr nz,lb24fh		;b24d	20 00		  .
lb24fh:
	ret m			;b24f	f8		.
	ret m			;b250	f8		.
	ld b,b			;b251	40		@
	ld b,0fah		;b252	06 fa		. .
	jr nz,$+74		;b254	20 48		  H
	ex af,af'		;b256	08		.
	nop			;b257	00		.
	ld b,b			;b258	40		@
	ld b,b			;b259	40		@
	ld b,006h		;b25a	06 06		. .
	ld c,b			;b25c	48		H
	jr nz,lb25fh		;b25d	20 00		  .
lb25fh:
	ex af,af'		;b25f	08		.
	ld b,b			;b260	40		@
	ret m			;b261	f8		.
	jp m,02006h		;b262	fa 06 20	. .  
	ret p			;b265	f0		.
	ret m			;b266	f8		.
	nop			;b267	00		.
sub_b268h:
	ld b,a			;b268	47		G
	ld a,(ix+003h)		;b269	dd 7e 03	. ~ .
	ld c,a			;b26c	4f		O
	add a,a			;b26d	87		.
	add a,c			;b26e	81		.
	add a,b			;b26f	80		.
	ld hl,lb278h		;b270	21 78 b2	! x .
	call 04600h		;b273	cd 00 46	. . F
	ld a,(hl)		;b276	7e		~
	ret			;b277	c9		.
lb278h:
	ld b,007h		;b278	06 07		. .
	ex af,af'		;b27a	08		.
	nop			;b27b	00		.
	ld bc,00302h		;b27c	01 02 03	. . .
	inc b			;b27f	04		.
	dec b			;b280	05		.
	add hl,bc		;b281	09		.
	ld a,(bc)		;b282	0a		.
	dec bc			;b283	0b		.
	ex af,af'		;b284	08		.
	rlca			;b285	07		.
	ld b,002h		;b286	06 02		. .
	ld bc,00500h		;b288	01 00 05	. . .
	inc b			;b28b	04		.
	inc bc			;b28c	03		.
	dec bc			;b28d	0b		.
	ld a,(bc)		;b28e	0a		.
	add hl,bc		;b28f	09		.
sub_b290h:
	call 06c7dh		;b290	cd 7d 6c	. } l
	ld h,(ix+010h)		;b293	dd 66 10	. f .
	ld l,(ix+00fh)		;b296	dd 6e 0f	. n .
	ld d,(ix+012h)		;b299	dd 56 12	. V .
	ld e,(ix+011h)		;b29c	dd 5e 11	. ^ .
	call 06d4fh		;b29f	cd 4f 6d	. O m
	call sub_b2f2h		;b2a2	cd f2 b2	. . .
	jp c,lb329h		;b2a5	da 29 b3	. ) .
lb2a8h:
	call sub_b335h		;b2a8	cd 35 b3	. 5 .
lb2abh:
	push af			;b2ab	f5		.
	ld (ix+024h),d		;b2ac	dd 72 24	. r $
	ld (ix+023h),e		;b2af	dd 73 23	. s #
	push de			;b2b2	d5		.
	ld h,(ix+008h)		;b2b3	dd 66 08	. f .
	ld l,(ix+007h)		;b2b6	dd 6e 07	. n .
	call sub_b2d9h		;b2b9	cd d9 b2	. . .
	ld e,h			;b2bc	5c		\
	ld h,(ix+00ah)		;b2bd	dd 66 0a	. f .
	ld l,(ix+009h)		;b2c0	dd 6e 09	. n .
	call sub_b2d9h		;b2c3	cd d9 b2	. . .
	ld d,h			;b2c6	54		T
	pop bc			;b2c7	c1		.
	pop af			;b2c8	f1		.
	call 06b63h		;b2c9	cd 63 6b	. c k
	ld (ix+010h),h		;b2cc	dd 74 10	. t .
	ld (ix+00fh),l		;b2cf	dd 75 0f	. u .
	ld (ix+012h),d		;b2d2	dd 72 12	. r .
	ld (ix+011h),e		;b2d5	dd 73 11	. s .
	ret			;b2d8	c9		.
sub_b2d9h:
	bit 7,h			;b2d9	cb 7c		. |
	jr z,lb2e1h		;b2db	28 04		( .
	ld hl,00000h		;b2dd	21 00 00	! . .
	ret			;b2e0	c9		.
lb2e1h:
	add hl,hl		;b2e1	29		)
	jr c,lb2e9h		;b2e2	38 05		8 .
	add hl,hl		;b2e4	29		)
	jr c,lb2e9h		;b2e5	38 02		8 .
	add hl,hl		;b2e7	29		)
	ret nc			;b2e8	d0		.
lb2e9h:
	ld hl,000ffh		;b2e9	21 ff 00	! . .
	ret			;b2ec	c9		.
lb2edh:
	call sub_b34eh		;b2ed	cd 4e b3	. N .
	jr lb2a8h		;b2f0	18 b6		. .
sub_b2f2h:
	ld l,(ix+024h)		;b2f2	dd 6e 24	. n $
	ld h,000h		;b2f5	26 00		& .
	add hl,hl		;b2f7	29		)
	add hl,hl		;b2f8	29		)
	add hl,hl		;b2f9	29		)
	add hl,hl		;b2fa	29		)
	add hl,hl		;b2fb	29		)
	ld d,(ix+00ah)		;b2fc	dd 56 0a	. V .
	ld e,(ix+009h)		;b2ff	dd 5e 09	. ^ .
	sbc hl,de		;b302	ed 52		. R
	bit 7,h			;b304	cb 7c		. |
	call nz,04612h		;b306	c4 12 46	. . F
	push hl			;b309	e5		.
	ld l,(ix+023h)		;b30a	dd 6e 23	. n #
	ld h,000h		;b30d	26 00		& .
	add hl,hl		;b30f	29		)
	add hl,hl		;b310	29		)
	add hl,hl		;b311	29		)
	add hl,hl		;b312	29		)
	add hl,hl		;b313	29		)
	ld d,(ix+008h)		;b314	dd 56 08	. V .
	ld e,(ix+007h)		;b317	dd 5e 07	. ^ .
	sbc hl,de		;b31a	ed 52		. R
	bit 7,h			;b31c	cb 7c		. |
	call nz,04612h		;b31e	c4 12 46	. . F
	pop de			;b321	d1		.
	add hl,de		;b322	19		.
	ld de,00400h		;b323	11 00 04	. . .
	sbc hl,de		;b326	ed 52		. R
	ret			;b328	c9		.
lb329h:
	call sub_b32fh		;b329	cd 2f b3	. / .
	jp lb2abh		;b32c	c3 ab b2	. . .
sub_b32fh:
	call sub_b335h		;b32f	cd 35 b3	. 5 .
	call sub_b34eh		;b332	cd 4e b3	. N .
sub_b335h:
	ld h,(ix+021h)		;b335	dd 66 21	. f !
	ld l,(ix+022h)		;b338	dd 6e 22	. n "
	ld a,(hl)		;b33b	7e		~
	inc hl			;b33c	23		#
	bit 7,a			;b33d	cb 7f		. .
	jr nz,lb346h		;b33f	20 05		  .
sub_b341h:
	ld e,(hl)		;b341	5e		^
	inc hl			;b342	23		#
	ld d,(hl)		;b343	56		V
	inc hl			;b344	23		#
	ret			;b345	c9		.
lb346h:
	call sub_b355h		;b346	cd 55 b3	. U .
	call sub_b34eh		;b349	cd 4e b3	. N .
	jr sub_b335h		;b34c	18 e7		. .
sub_b34eh:
	ld (ix+021h),h		;b34e	dd 74 21	. t !
	ld (ix+022h),l		;b351	dd 75 22	. u "
	ret			;b354	c9		.
sub_b355h:
	inc a			;b355	3c		<
	jr z,lb361h		;b356	28 09		( .
	call sub_b341h		;b358	cd 41 b3	. A .
	push hl			;b35b	e5		.
	call sub_b4b6h		;b35c	cd b6 b4	. . .
	pop hl			;b35f	e1		.
	ret			;b360	c9		.
lb361h:
	call sub_b341h		;b361	cd 41 b3	. A .
	ex de,hl		;b364	eb		.
	ret			;b365	c9		.
lb366h:
	cp 0f4h			;b366	fe f4		. .
	or h			;b368	b4		.
	inc b			;b369	04		.
	jr c,$+98		;b36a	38 60		8 `
	ex af,af'		;b36c	08		.
	jr nz,$-70		;b36d	20 b8		  .
	inc c			;b36f	0c		.
	ld l,b			;b370	68		h
	cp b			;b371	b8		.
	djnz $+106		;b372	10 68		. h
	jr lb38ah		;b374	18 14		. .
	jr nz,lb390h		;b376	20 18		  .
	ex af,af'		;b378	08		.
	ex af,af'		;b379	08		.
	cp b			;b37a	b8		.
	ex af,af'		;b37b	08		.
	ld h,b			;b37c	60		`
	cp b			;b37d	b8		.
	ex af,af'		;b37e	08		.
	ld h,b			;b37f	60		`
	ex af,af'		;b380	08		.
	ex af,af'		;b381	08		.
	ex af,af'		;b382	08		.
	ex af,af'		;b383	08		.
	ex af,af'		;b384	08		.
	ex af,af'		;b385	08		.
	cp b			;b386	b8		.
	ex af,af'		;b387	08		.
	ld h,b			;b388	60		`
	ex af,af'		;b389	08		.
lb38ah:
	ex af,af'		;b38a	08		.
	ex af,af'		;b38b	08		.
	ex af,af'		;b38c	08		.
	ex af,af'		;b38d	08		.
	ld h,b			;b38e	60		`
	cp b			;b38f	b8		.
lb390h:
	ex af,af'		;b390	08		.
	ld h,b			;b391	60		`
	ex af,af'		;b392	08		.
	ex af,af'		;b393	08		.
	ex af,af'		;b394	08		.
	ex af,af'		;b395	08		.
	rst 38h			;b396	ff		.
	ld a,b			;b397	78		x
	or e			;b398	b3		.
sub_b399h:
	call sub_b3a0h		;b399	cd a0 b3	. . .
	ret			;b39c	c9		.
sub_b39dh:
	ld a,008h		;b39d	3e 08		> .
	sub b			;b39f	90		.
sub_b3a0h:
	ld l,a			;b3a0	6f		o
	ld h,000h		;b3a1	26 00		& .
	add hl,hl		;b3a3	29		)
	ld e,l			;b3a4	5d		]
	ld d,h			;b3a5	54		T
	add hl,hl		;b3a6	29		)
	add hl,de		;b3a7	19		.
	ld de,lb3dbh		;b3a8	11 db b3	. . .
	add hl,de		;b3ab	19		.
	push hl			;b3ac	e5		.
	call 067feh		;b3ad	cd fe 67	. . g
	pop hl			;b3b0	e1		.
	ret c			;b3b1	d8		.
	ld b,(hl)		;b3b2	46		F
	inc hl			;b3b3	23		#
	ld c,(hl)		;b3b4	4e		N
	inc hl			;b3b5	23		#
	push hl			;b3b6	e5		.
	call 06929h		;b3b7	cd 29 69	. ) i
	pop hl			;b3ba	e1		.
	ld b,(hl)		;b3bb	46		F
	inc hl			;b3bc	23		#
	ld c,(hl)		;b3bd	4e		N
	inc hl			;b3be	23		#
	ld (iy+006h),c		;b3bf	fd 71 06	. q .
	ld (iy+005h),b		;b3c2	fd 70 05	. p .
	ld b,(hl)		;b3c5	46		F
	inc hl			;b3c6	23		#
	ld c,(hl)		;b3c7	4e		N
	ld (iy+013h),b		;b3c8	fd 70 13	. p .
	set 7,c			;b3cb	cb f9		. .
	ld (iy+014h),c		;b3cd	fd 71 14	. q .
	ld a,(ix+009h)		;b3d0	dd 7e 09	. ~ .
	ld (iy+009h),a		;b3d3	fd 77 09	. w .
	call 0699eh		;b3d6	cd 9e 69	. . i
	or a			;b3d9	b7		.
	ret			;b3da	c9		.
lb3dbh:
	call m,00003h		;b3db	fc 03 00	. . .
	add hl,bc		;b3de	09		.
	ld bc,00a01h		;b3df	01 01 0a	. . .
	inc bc			;b3e2	03		.
	ld bc,00108h		;b3e3	01 08 01	. . .
	ld bc,0fa00h		;b3e6	01 00 fa	. . .
	ld (bc),a		;b3e9	02		.
	dec bc			;b3ea	0b		.
	add hl,bc		;b3eb	09		.
	inc bc			;b3ec	03		.
	inc b			;b3ed	04		.
	jp m,00702h		;b3ee	fa 02 07	. . .
	ex af,af'		;b3f1	08		.
	inc bc			;b3f2	03		.
	ex af,af'		;b3f3	08		.
	jp m,00c02h		;b3f4	fa 02 0c	. . .
	add hl,bc		;b3f7	09		.
	inc bc			;b3f8	03		.
	nop			;b3f9	00		.
	rlca			;b3fa	07		.
	ld (bc),a		;b3fb	02		.
	ld c,009h		;b3fc	0e 09		. .
	inc bc			;b3fe	03		.
	inc b			;b3ff	04		.
	add hl,bc		;b400	09		.
	ld (bc),a		;b401	02		.
	ld b,008h		;b402	06 08		. .
	inc bc			;b404	03		.
	ex af,af'		;b405	08		.
	rlca			;b406	07		.
	ld (bc),a		;b407	02		.
	rrca			;b408	0f		.
	add hl,bc		;b409	09		.
	inc bc			;b40a	03		.
	nop			;b40b	00		.
	inc b			;b40c	04		.
	ld (bc),a		;b40d	02		.
	dec c			;b40e	0d		.
	ld a,(bc)		;b40f	0a		.
	ld (bc),a		;b410	02		.
	nop			;b411	00		.
	rst 30h			;b412	f7		.
	ld (bc),a		;b413	02		.
	ld a,(bc)		;b414	0a		.
	ld a,(bc)		;b415	0a		.
	ld (bc),a		;b416	02		.
	inc bc			;b417	03		.
	inc b			;b418	04		.
	ld (bc),a		;b419	02		.
	dec c			;b41a	0d		.
	ld a,(bc)		;b41b	0a		.
	ld (bc),a		;b41c	02		.
	inc bc			;b41d	03		.
	rst 30h			;b41e	f7		.
	ld (bc),a		;b41f	02		.
	ld a,(bc)		;b420	0a		.
	ld a,(bc)		;b421	0a		.
	ld (bc),a		;b422	02		.
	ld a,(ix+001h)		;b423	dd 7e 01	. ~ .
	dec a			;b426	3d		=
	jr z,lb43fh		;b427	28 16		( .
	ret p			;b429	f0		.
	ld (ix+001h),002h	;b42a	dd 36 01 02	. 6 . .
	ld a,(ix+005h)		;b42e	dd 7e 05	. ~ .
	cp 002h			;b431	fe 02		. .
	ret nc			;b433	d0		.
	dec (ix+001h)		;b434	dd 35 01	. 5 .
	call sub_b447h		;b437	cd 47 b4	. G .
	res 4,(ix+015h)		;b43a	dd cb 15 a6	. . . .
	ret			;b43e	c9		.
lb43fh:
	ld a,(ix+037h)		;b43f	dd 7e 37	. ~ 7
	or a			;b442	b7		.
	ret nz			;b443	c0		.
	jp 06e98h		;b444	c3 98 6e	. . n
sub_b447h:
	add a,a			;b447	87		.
	add a,008h		;b448	c6 08		. .
	push af			;b44a	f5		.
	call sub_b399h		;b44b	cd 99 b3	. . .
	pop bc			;b44e	c1		.
	ld a,b			;b44f	78		x
	inc a			;b450	3c		<
	call sub_b399h		;b451	cd 99 b3	. . .
	ret			;b454	c9		.
lb455h:
	ld h,c			;b455	61		a
	or h			;b456	b4		.
	ld l,h			;b457	6c		l
	or h			;b458	b4		.
	ld (hl),a		;b459	77		w
	or h			;b45a	b4		.
	add a,d			;b45b	82		.
	or h			;b45c	b4		.
	adc a,l			;b45d	8d		.
	or h			;b45e	b4		.
	sbc a,b			;b45f	98		.
	or h			;b460	b4		.
	dec bc			;b461	0b		.
	nop			;b462	00		.
	nop			;b463	00		.
	ld bc,0fe00h		;b464	01 00 fe	. . .
	inc b			;b467	04		.
	inc bc			;b468	03		.
	ld bc,0ff03h		;b469	01 03 ff	. . .
	dec bc			;b46c	0b		.
	nop			;b46d	00		.
	nop			;b46e	00		.
	ld bc,0fe00h		;b46f	01 00 fe	. . .
	inc b			;b472	04		.
	inc bc			;b473	03		.
	ld bc,0ff01h		;b474	01 01 ff	. . .
	dec bc			;b477	0b		.
	nop			;b478	00		.
	nop			;b479	00		.
	ld bc,0fe00h		;b47a	01 00 fe	. . .
	inc b			;b47d	04		.
	inc bc			;b47e	03		.
	ld bc,0ff02h		;b47f	01 02 ff	. . .
	dec bc			;b482	0b		.
	nop			;b483	00		.
	nop			;b484	00		.
	ld bc,0fe00h		;b485	01 00 fe	. . .
	inc b			;b488	04		.
	dec b			;b489	05		.
	ld bc,0ff04h		;b48a	01 04 ff	. . .
	dec bc			;b48d	0b		.
	nop			;b48e	00		.
	nop			;b48f	00		.
	ld bc,0fe00h		;b490	01 00 fe	. . .
	inc b			;b493	04		.
	inc bc			;b494	03		.
	ld bc,0ff05h		;b495	01 05 ff	. . .
	dec bc			;b498	0b		.
	nop			;b499	00		.
	nop			;b49a	00		.
	ld bc,0fe00h		;b49b	01 00 fe	. . .
	inc b			;b49e	04		.
	dec b			;b49f	05		.
	ld bc,0ff10h		;b4a0	01 10 ff	. . .
lb4a3h:
	nop			;b4a3	00		.
	nop			;b4a4	00		.
	ld h,h			;b4a5	64		d
	ld d,010h		;b4a6	16 10		. .
	ld hl,03220h		;b4a8	21 20 32	!   2
	ld sp,04243h		;b4ab	31 43 42	1 C B
	ld d,h			;b4ae	54		T
	nop			;b4af	00		.
	sub b			;b4b0	90		.
	nop			;b4b1	00		.
	or b			;b4b2	b0		.
	nop			;b4b3	00		.
	ret nz			;b4b4	c0		.
	rst 38h			;b4b5	ff		.
sub_b4b6h:
	ld (ix+026h),e		;b4b6	dd 73 26	. s &
	ld (ix+027h),d		;b4b9	dd 72 27	. r '
	ld (ix+025h),001h	;b4bc	dd 36 25 01	. 6 % .
	ret			;b4c0	c9		.
sub_b4c1h:
	ld a,(ix+025h)		;b4c1	dd 7e 25	. ~ %
	or a			;b4c4	b7		.
	ret z			;b4c5	c8		.
	dec a			;b4c6	3d		=
	ld (ix+025h),a		;b4c7	dd 77 25	. w %
	ret nz			;b4ca	c0		.
	ld l,(ix+026h)		;b4cb	dd 6e 26	. n &
	ld h,(ix+027h)		;b4ce	dd 66 27	. f '
	call sub_b4dbh		;b4d1	cd db b4	. . .
	ld (ix+026h),l		;b4d4	dd 75 26	. u &
	ld (ix+027h),h		;b4d7	dd 74 27	. t '
	ret			;b4da	c9		.
sub_b4dbh:
	ld a,(hl)		;b4db	7e		~
	inc hl			;b4dc	23		#
	cp 0ffh			;b4dd	fe ff		. .
	jr z,lb4eeh		;b4df	28 0d		( .
	ld (ix+025h),a		;b4e1	dd 77 25	. w %
	ld a,(hl)		;b4e4	7e		~
	bit 7,a			;b4e5	cb 7f		. .
	jr nz,lb4ech		;b4e7	20 03		  .
	ld (ix+006h),a		;b4e9	dd 77 06	. w .
lb4ech:
	inc hl			;b4ec	23		#
	ret			;b4ed	c9		.
lb4eeh:
	ld e,(hl)		;b4ee	5e		^
	inc hl			;b4ef	23		#
	ld d,(hl)		;b4f0	56		V
	ex de,hl		;b4f1	eb		.
	jr sub_b4dbh		;b4f2	18 e7		. .
	dec b			;b4f4	05		.
	ld bc,00205h		;b4f5	01 05 02	. . .
	inc bc			;b4f8	03		.
	inc bc			;b4f9	03		.
	ex af,af'		;b4fa	08		.
	dec b			;b4fb	05		.
	inc b			;b4fc	04		.
	ld (bc),a		;b4fd	02		.
	add hl,de		;b4fe	19		.
	inc bc			;b4ff	03		.
	dec b			;b500	05		.
	inc b			;b501	04		.
	dec b			;b502	05		.
	inc bc			;b503	03		.
	dec b			;b504	05		.
	dec b			;b505	05		.
	ld (bc),a		;b506	02		.
	ld (bc),a		;b507	02		.
	ld (bc),a		;b508	02		.
	ld bc,00002h		;b509	01 02 00	. . .
	ld (bc),a		;b50c	02		.
	ld bc,00202h		;b50d	01 02 02	. . .
	rst 38h			;b510	ff		.
	cp 0b4h			;b511	fe b4		. .
	call 06a13h		;b513	cd 13 6a	. . j
	ld a,(ix+016h)		;b516	dd 7e 16	. ~ .
	cp 010h			;b519	fe 10		. .
	call c,sub_b53ah	;b51b	dc 3a b5	. : .
	call sub_b5fdh		;b51e	cd fd b5	. . .
	ld a,(ix+001h)		;b521	dd 7e 01	. ~ .
	cp 007h			;b524	fe 07		. .
	jp nc,04ae0h		;b526	d2 e0 4a	. . J
	call 0461ah		;b529	cd 1a 46	. . F
	ld d,l			;b52c	55		U
	or l			;b52d	b5		.
	ld (hl),e		;b52e	73		s
	or l			;b52f	b5		.
	ld a,(hl)		;b530	7e		~
	or l			;b531	b5		.
	sbc a,a			;b532	9f		.
	or l			;b533	b5		.
	or a			;b534	b7		.
	or l			;b535	b5		.
	push bc			;b536	c5		.
	or l			;b537	b5		.
	in a,(0b5h)		;b538	db b5		. .
sub_b53ah:
	call 07058h		;b53a	cd 58 70	. X p
	ld (ix+016h),000h	;b53d	dd 36 16 00	. 6 . .
	ld (ix+004h),001h	;b541	dd 36 04 01	. 6 . .
	ld a,002h		;b545	3e 02		> .
	ld (0c0d4h),a		;b547	32 d4 c0	2 . .
	ret			;b54a	c9		.
	call 06c4bh		;b54b	cd 4b 6c	. K l
	ld bc,00206h		;b54e	01 06 02	. . .
	ld (0ce69h),bc		;b551	ed 43 69 ce	. C i .
	call 06754h		;b555	cd 54 67	. T g
	ld a,(ix+008h)		;b558	dd 7e 08	. ~ .
	sub 004h		;b55b	d6 04		. .
	ld (ix+008h),a		;b55d	dd 77 08	. w .
	ld (ix+00ah),007h	;b560	dd 36 0a 07	. 6 . .
	ld (ix+018h),01eh	;b564	dd 36 18 1e	. 6 . .
	call 069d7h		;b568	cd d7 69	. . i
	ld a,020h		;b56b	3e 20		>  
	ld (0ce4ah),a		;b56d	32 4a ce	2 J .
	jp 06c1dh		;b570	c3 1d 6c	. . l
	dec (ix+018h)		;b573	dd 35 18	. 5 .
	ret nz			;b576	c0		.
	ld (ix+017h),005h	;b577	dd 36 17 05	. 6 . .
	jp 06c1dh		;b57b	c3 1d 6c	. . l
	dec (ix+017h)		;b57e	dd 35 17	. 5 .
	ret nz			;b581	c0		.
	ld (ix+017h),005h	;b582	dd 36 17 05	. 6 . .
	ld a,(ix+022h)		;b586	dd 7e 22	. ~ "
	push af			;b589	f5		.
	or a			;b58a	b7		.
	ld a,02eh		;b58b	3e 2e		> .
	call z,04af5h		;b58d	cc f5 4a	. . J
	pop af			;b590	f1		.
	inc a			;b591	3c		<
	ld (ix+022h),a		;b592	dd 77 22	. w "
	cp 002h			;b595	fe 02		. .
	ret c			;b597	d8		.
	ld (ix+017h),005h	;b598	dd 36 17 05	. 6 . .
	jp 06c1dh		;b59c	c3 1d 6c	. . l
	dec (ix+017h)		;b59f	dd 35 17	. 5 .
	ret nz			;b5a2	c0		.
	call sub_b638h		;b5a3	cd 38 b6	. 8 .
	ld (ix+017h),014h	;b5a6	dd 36 17 14	. 6 . .
	ld a,(ix+021h)		;b5aa	dd 7e 21	. ~ !
	inc a			;b5ad	3c		<
	ld (ix+021h),a		;b5ae	dd 77 21	. w !
	cp 004h			;b5b1	fe 04		. .
	ret c			;b5b3	d8		.
	jp 06c1dh		;b5b4	c3 1d 6c	. . l
	dec (ix+017h)		;b5b7	dd 35 17	. 5 .
	ret nz			;b5ba	c0		.
	call sub_b638h		;b5bb	cd 38 b6	. 8 .
	ld (ix+017h),005h	;b5be	dd 36 17 05	. 6 . .
	jp 06c1dh		;b5c2	c3 1d 6c	. . l
	dec (ix+017h)		;b5c5	dd 35 17	. 5 .
	ret nz			;b5c8	c0		.
	call sub_b638h		;b5c9	cd 38 b6	. 8 .
	ld (ix+017h),005h	;b5cc	dd 36 17 05	. 6 . .
	ld a,(ix+021h)		;b5d0	dd 7e 21	. ~ !
	dec a			;b5d3	3d		=
	ld (ix+021h),a		;b5d4	dd 77 21	. w !
	ret nz			;b5d7	c0		.
	jp 06c1dh		;b5d8	c3 1d 6c	. . l
	dec (ix+017h)		;b5db	dd 35 17	. 5 .
	ret nz			;b5de	c0		.
	ld (ix+017h),005h	;b5df	dd 36 17 05	. 6 . .
	ld a,(ix+022h)		;b5e3	dd 7e 22	. ~ "
	push af			;b5e6	f5		.
	cp 002h			;b5e7	fe 02		. .
	ld a,02fh		;b5e9	3e 2f		> /
	call z,04af5h		;b5eb	cc f5 4a	. . J
	pop af			;b5ee	f1		.
	dec a			;b5ef	3d		=
	ld (ix+022h),a		;b5f0	dd 77 22	. w "
	ret nz			;b5f3	c0		.
	ld (ix+001h),001h	;b5f4	dd 36 01 01	. 6 . .
	ld (ix+018h),01eh	;b5f8	dd 36 18 1e	. 6 . .
	ret			;b5fc	c9		.
sub_b5fdh:
	call sub_b60ch		;b5fd	cd 0c b6	. . .
	ld a,(ix+022h)		;b600	dd 7e 22	. ~ "
	ld (ix+006h),a		;b603	dd 77 06	. w .
	ld de,lb670h		;b606	11 70 b6	. p .
	jp 07b65h		;b609	c3 65 7b	. e {
sub_b60ch:
	ld a,(ix+021h)		;b60c	dd 7e 21	. ~ !
	or a			;b60f	b7		.
	ret z			;b610	c8		.
	ld b,(ix+008h)		;b611	dd 46 08	. F .
	push bc			;b614	c5		.
	neg			;b615	ed 44		. D
	add a,b			;b617	80		.
	inc a			;b618	3c		<
	ld (ix+008h),a		;b619	dd 77 08	. w .
	ld a,(ix+005h)		;b61c	dd 7e 05	. ~ .
	inc a			;b61f	3c		<
	cp 008h			;b620	fe 08		. .
	jr c,lb625h		;b622	38 01		8 .
	xor a			;b624	af		.
lb625h:
	ld (ix+005h),a		;b625	dd 77 05	. w .
	add a,003h		;b628	c6 03		. .
	ld (ix+006h),a		;b62a	dd 77 06	. w .
	ld de,lb670h		;b62d	11 70 b6	. p .
	call 07b65h		;b630	cd 65 7b	. e {
	pop bc			;b633	c1		.
	ld (ix+008h),b		;b634	dd 70 08	. p .
	ret			;b637	c9		.
sub_b638h:
	ld hl,0ce80h		;b638	21 80 ce	! . .
	ld b,014h		;b63b	06 14		. .
lb63dh:
	ld a,(hl)		;b63d	7e		~
	cp 00dh			;b63e	fe 0d		. .
	ret z			;b640	c8		.
	ld de,00040h		;b641	11 40 00	. @ .
	add hl,de		;b644	19		.
	djnz lb63dh		;b645	10 f6		. .
	push ix			;b647	dd e5		. .
	push ix			;b649	dd e5		. .
	ld a,00dh		;b64b	3e 0d		> .
	call 069a3h		;b64d	cd a3 69	. . i
	jr c,lb66bh		;b650	38 19		8 .
	pop iy			;b652	fd e1		. .
	ld a,(iy+00ah)		;b654	fd 7e 0a	. ~ .
	add a,008h		;b657	c6 08		. .
	ld (ix+00ah),a		;b659	dd 77 0a	. w .
	ld a,(iy+008h)		;b65c	fd 7e 08	. ~ .
	add a,002h		;b65f	c6 02		. .
	ld (ix+008h),a		;b661	dd 77 08	. w .
	pop ix			;b664	dd e1		. .
	ld a,017h		;b666	3e 17		> .
	jp 04af5h		;b668	c3 f5 4a	. . J
lb66bh:
	pop ix			;b66b	dd e1		. .
	pop ix			;b66d	dd e1		. .
	ret			;b66f	c9		.
lb670h:
	add a,(hl)		;b670	86		.
	or (hl)			;b671	b6		.
	adc a,h			;b672	8c		.
	or (hl)			;b673	b6		.
	sub d			;b674	92		.
	or (hl)			;b675	b6		.
	sbc a,b			;b676	98		.
	or (hl)			;b677	b6		.
	sbc a,(hl)		;b678	9e		.
	or (hl)			;b679	b6		.
	and h			;b67a	a4		.
	or (hl)			;b67b	b6		.
	xor d			;b67c	aa		.
	or (hl)			;b67d	b6		.
	or b			;b67e	b0		.
	or (hl)			;b67f	b6		.
	or (hl)			;b680	b6		.
	or (hl)			;b681	b6		.
	cp h			;b682	bc		.
	or (hl)			;b683	b6		.
	jp nz,006b6h		;b684	c2 b6 06	. . .
	inc b			;b687	04		.
	ld (bc),a		;b688	02		.
	ld bc,0ff00h		;b689	01 00 ff	. . .
	ld b,004h		;b68c	06 04		. .
	ld bc,00101h		;b68e	01 01 01	. . .
	rst 38h			;b691	ff		.
	ld b,004h		;b692	06 04		. .
	nop			;b694	00		.
	ld bc,0ff02h		;b695	01 02 ff	. . .
	ld b,004h		;b698	06 04		. .
	ld b,001h		;b69a	06 01		. .
	inc bc			;b69c	03		.
	rst 38h			;b69d	ff		.
	ld b,004h		;b69e	06 04		. .
	ld b,001h		;b6a0	06 01		. .
	inc b			;b6a2	04		.
	rst 38h			;b6a3	ff		.
	ld b,004h		;b6a4	06 04		. .
	ld b,001h		;b6a6	06 01		. .
	dec b			;b6a8	05		.
	rst 38h			;b6a9	ff		.
	ld b,004h		;b6aa	06 04		. .
	ld b,001h		;b6ac	06 01		. .
	ld b,0ffh		;b6ae	06 ff		. .
	ld b,004h		;b6b0	06 04		. .
	ld b,001h		;b6b2	06 01		. .
	rlca			;b6b4	07		.
	rst 38h			;b6b5	ff		.
	ld b,004h		;b6b6	06 04		. .
	ld b,001h		;b6b8	06 01		. .
	ex af,af'		;b6ba	08		.
	rst 38h			;b6bb	ff		.
	ld b,004h		;b6bc	06 04		. .
	ld b,001h		;b6be	06 01		. .
	add hl,bc		;b6c0	09		.
	rst 38h			;b6c1	ff		.
	ld b,004h		;b6c2	06 04		. .
	ld b,001h		;b6c4	06 01		. .
	ld a,(bc)		;b6c6	0a		.
	rst 38h			;b6c7	ff		.
	ret			;b6c8	c9		.
	ld a,05eh		;b6c9	3e 5e		> ^
	call 0684ch		;b6cb	cd 4c 68	. L h
	ret c			;b6ce	d8		.
	ld a,(ix+025h)		;b6cf	dd 7e 25	. ~ %
	and a			;b6d2	a7		.
	ld bc,0fa07h		;b6d3	01 07 fa	. . .
	jr z,lb6dbh		;b6d6	28 03		( .
	ld bc,0f509h		;b6d8	01 09 f5	. . .
lb6dbh:
	jp 06929h		;b6db	c3 29 69	. ) i
	ld a,(ix+001h)		;b6de	dd 7e 01	. ~ .
	dec a			;b6e1	3d		=
	jr z,lb748h		;b6e2	28 64		( d
	dec a			;b6e4	3d		=
	jr z,lb758h		;b6e5	28 71		( q
	ld a,00eh		;b6e7	3e 0e		> .
	ld (0ca26h),a		;b6e9	32 26 ca	2 & .
	call 04678h		;b6ec	cd 78 46	. x F
	and 03fh		;b6ef	e6 3f		. ?
	add a,040h		;b6f1	c6 40		. @
	call 09de8h		;b6f3	cd e8 9d	. . .
	call 07240h		;b6f6	cd 40 72	. @ r
	call 06bebh		;b6f9	cd eb 6b	. . k
	sra h			;b6fc	cb 2c		. ,
	rr l			;b6fe	cb 1d		. .
	sra h			;b700	cb 2c		. ,
	rr l			;b702	cb 1d		. .
	sra h			;b704	cb 2c		. ,
	rr l			;b706	cb 1d		. .
	call 04612h		;b708	cd 12 46	. . F
	ld (ix+00fh),l		;b70b	dd 75 0f	. u .
	ld (ix+010h),h		;b70e	dd 74 10	. t .
	sra d			;b711	cb 2a		. *
	rr e			;b713	cb 1b		. .
	sra d			;b715	cb 2a		. *
	rr e			;b717	cb 1b		. .
	sra d			;b719	cb 2a		. *
	rr e			;b71b	cb 1b		. .
	ex de,hl		;b71d	eb		.
	call 04612h		;b71e	cd 12 46	. . F
	ld (ix+011h),l		;b721	dd 75 11	. u .
	ld (ix+012h),h		;b724	dd 74 12	. t .
	ld (ix+017h),00ch	;b727	dd 36 17 0c	. 6 . .
	ld a,(0ca19h)		;b72b	3a 19 ca	: . .
	cp 004h			;b72e	fe 04		. .
	ld bc,00204h		;b730	01 04 02	. . .
	jr c,lb73fh		;b733	38 0a		8 .
	ld bc,00806h		;b735	01 06 08	. . .
	cp 008h			;b738	fe 08		. .
	jr c,lb73fh		;b73a	38 03		8 .
	ld bc,00e07h		;b73c	01 07 0e	. . .
lb73fh:
	ld (ix+016h),b		;b73f	dd 70 16	. p .
	ld (ix+018h),c		;b742	dd 71 18	. q .
	jp 06c1dh		;b745	c3 1d 6c	. . l
lb748h:
	ld a,(0ca02h)		;b748	3a 02 ca	: . .
	and 007h		;b74b	e6 07		. .
	ret nz			;b74d	c0		.
	call 06a9ah		;b74e	cd 9a 6a	. . j
	call 06ad2h		;b751	cd d2 6a	. . j
	ret nz			;b754	c0		.
	jp 06c1dh		;b755	c3 1d 6c	. . l
lb758h:
	call 06adfh		;b758	cd df 6a	. . j
	ret nz			;b75b	c0		.
	ld (ix+018h),002h	;b75c	dd 36 18 02	. 6 . .
	inc (ix+005h)		;b760	dd 34 05	. 4 .
	ld a,(ix+005h)		;b763	dd 7e 05	. ~ .
	cp 003h			;b766	fe 03		. .
	ret nz			;b768	c0		.
	jp 06e98h		;b769	c3 98 6e	. . n
	ld a,(0ce76h)		;b76c	3a 76 ce	: v .
	or a			;b76f	b7		.
	jp nz,07cc3h		;b770	c2 c3 7c	. . |
	ld a,(ix+001h)		;b773	dd 7e 01	. ~ .
	cp 002h			;b776	fe 02		. .
	jp nc,04ae0h		;b778	d2 e0 4a	. . J
	call 0461ah		;b77b	cd 1a 46	. . F
	add a,d			;b77e	82		.
	or a			;b77f	b7		.
	rlca			;b780	07		.
	cp b			;b781	b8		.
	call 06796h		;b782	cd 96 67	. . g
	ld (ix+003h),a		;b785	dd 77 03	. w .
	ld (ix+016h),0ffh	;b788	dd 36 16 ff	. 6 . .
	ld (ix+005h),011h	;b78c	dd 36 05 11	. 6 . .
	ld hl,0c000h		;b790	21 00 c0	! . .
	ld (ix+021h),h		;b793	dd 74 21	. t !
	ld (ix+022h),l		;b796	dd 75 22	. u "
	ld (ix+008h),017h	;b799	dd 36 08 17	. 6 . .
	bit 0,(ix+003h)		;b79d	dd cb 03 46	. . . F
	ld a,005h		;b7a1	3e 05		> .
	ld hl,lb9d0h		;b7a3	21 d0 b9	! . .
	jr z,lb7adh		;b7a6	28 05		( .
	ld a,019h		;b7a8	3e 19		> .
	ld hl,lb978h		;b7aa	21 78 b9	! x .
lb7adh:
	ld (ix+00ah),a		;b7ad	dd 77 0a	. w .
	ld (ix+028h),h		;b7b0	dd 74 28	. t (
	ld (ix+027h),l		;b7b3	dd 75 27	. u '
	call sub_b7bch		;b7b6	cd bc b7	. . .
	jp 06c1dh		;b7b9	c3 1d 6c	. . l
sub_b7bch:
	ld b,007h		;b7bc	06 07		. .
lb7beh:
	push bc			;b7be	c5		.
	call sub_b7cah		;b7bf	cd ca b7	. . .
	jr c,lb7c8h		;b7c2	38 04		8 .
	pop bc			;b7c4	c1		.
	djnz lb7beh		;b7c5	10 f7		. .
	ret			;b7c7	c9		.
lb7c8h:
	pop bc			;b7c8	c1		.
	ret			;b7c9	c9		.
sub_b7cah:
	call 0682ah		;b7ca	cd 2a 68	. * h
	ret c			;b7cd	d8		.
	ld a,(ix+017h)		;b7ce	dd 7e 17	. ~ .
	inc a			;b7d1	3c		<
	ld (ix+017h),a		;b7d2	dd 77 17	. w .
	ld (iy+005h),011h	;b7d5	fd 36 05 11	. 6 . .
	ld (iy+016h),0ffh	;b7d9	fd 36 16 ff	. 6 . .
	rrca			;b7dd	0f		.
	jr nc,lb7e7h		;b7de	30 07		0 .
	set 3,(iy+015h)		;b7e0	fd cb 15 de	. . . .
	dec (iy+005h)		;b7e4	fd 35 05	. 5 .
lb7e7h:
	ld h,(ix+008h)		;b7e7	dd 66 08	. f .
	ld (iy+008h),h		;b7ea	fd 74 08	. t .
	ld h,(ix+00ah)		;b7ed	dd 66 0a	. f .
	ld (iy+00ah),h		;b7f0	fd 74 0a	. t .
	ld (iy+001h),001h	;b7f3	fd 36 01 01	. 6 . .
	ld (ix+021h),000h	;b7f7	dd 36 21 00	. 6 ! .
	ld a,(iy+002h)		;b7fb	fd 7e 02	. ~ .
	inc a			;b7fe	3c		<
	ld (iy+002h),a		;b7ff	fd 77 02	. w .
	ld (ix+002h),a		;b802	dd 77 02	. w .
	or a			;b805	b7		.
	ret			;b806	c9		.
	ld a,(ix+016h)		;b807	dd 7e 16	. ~ .
	or a			;b80a	b7		.
	jp z,07cc3h		;b80b	ca c3 7c	. . |
	call 068b9h		;b80e	cd b9 68	. . h
	call sub_b82ch		;b811	cd 2c b8	. , .
	ld a,(ix+036h)		;b814	dd 7e 36	. ~ 6
	or a			;b817	b7		.
	ret nz			;b818	c0		.
	ld a,(ix+021h)		;b819	dd 7e 21	. ~ !
	rrca			;b81c	0f		.
	rrca			;b81d	0f		.
	rrca			;b81e	0f		.
	rrca			;b81f	0f		.
	add a,004h		;b820	c6 04		. .
	and 00fh		;b822	e6 0f		. .
	ld (ix+005h),a		;b824	dd 77 05	. w .
	set 3,(ix+015h)		;b827	dd cb 15 de	. . . .
	ret			;b82b	c9		.
sub_b82ch:
	jp c,lb8cbh		;b82c	da cb b8	. . .
	call sub_b899h		;b82f	cd 99 b8	. . .
	call sub_b842h		;b832	cd 42 b8	. B .
	ld a,(ix+004h)		;b835	dd 7e 04	. ~ .
	or a			;b838	b7		.
	ret z			;b839	c8		.
	ld (iy+004h),a		;b83a	fd 77 04	. w .
	ld (ix+004h),000h	;b83d	dd 36 04 00	. 6 . .
	ret			;b841	c9		.
sub_b842h:
	push af			;b842	f5		.
	call 074edh		;b843	cd ed 74	. . t
	call sub_b873h		;b846	cd 73 b8	. s .
	pop af			;b849	f1		.
	push af			;b84a	f5		.
	push hl			;b84b	e5		.
	call 074efh		;b84c	cd ef 74	. . t
	call sub_b873h		;b84f	cd 73 b8	. s .
	ld d,(iy+008h)		;b852	fd 56 08	. V .
	ld e,(iy+007h)		;b855	fd 5e 07	. ^ .
	or a			;b858	b7		.
	add hl,de		;b859	19		.
	ld (ix+008h),h		;b85a	dd 74 08	. t .
	ld (ix+007h),l		;b85d	dd 75 07	. u .
	ex (sp),hl		;b860	e3		.
	ld d,(iy+00ah)		;b861	fd 56 0a	. V .
	ld e,(iy+009h)		;b864	fd 5e 09	. ^ .
	or a			;b867	b7		.
	add hl,de		;b868	19		.
	ld (ix+00ah),h		;b869	dd 74 0a	. t .
	ld (ix+009h),l		;b86c	dd 75 09	. u .
	ex de,hl		;b86f	eb		.
	pop hl			;b870	e1		.
	pop af			;b871	f1		.
	ret			;b872	c9		.
sub_b873h:
	bit 7,h			;b873	cb 7c		. |
	jr z,lb880h		;b875	28 09		( .
	call 04612h		;b877	cd 12 46	. . F
	call lb880h		;b87a	cd 80 b8	. . .
	jp 04612h		;b87d	c3 12 46	. . F
lb880h:
	ld h,000h		;b880	26 00		& .
	add hl,hl		;b882	29		)
	ld d,h			;b883	54		T
	ld e,l			;b884	5d		]
	add hl,hl		;b885	29		)
	add hl,hl		;b886	29		)
	add hl,hl		;b887	29		)
	or a			;b888	b7		.
	sbc hl,de		;b889	ed 52		. R
	add hl,hl		;b88b	29		)
	add hl,hl		;b88c	29		)
	add hl,hl		;b88d	29		)
	add hl,hl		;b88e	29		)
	rl l			;b88f	cb 15		. .
	rl h			;b891	cb 14		. .
	sbc a,a			;b893	9f		.
	ld l,h			;b894	6c		l
	and 001h		;b895	e6 01		. .
	ld h,a			;b897	67		g
	ret			;b898	c9		.
sub_b899h:
	ld h,(iy+025h)		;b899	fd 66 25	. f %
	ld l,(iy+026h)		;b89c	fd 6e 26	. n &
	ld d,(iy+023h)		;b89f	fd 56 23	. V #
	ld e,(iy+024h)		;b8a2	fd 5e 24	. ^ $
	ld (ix+023h),d		;b8a5	dd 72 23	. r #
	ld (ix+024h),e		;b8a8	dd 73 24	. s $
	add hl,de		;b8ab	19		.
	ld (ix+025h),h		;b8ac	dd 74 25	. t %
	ld (ix+026h),l		;b8af	dd 75 26	. u &
	ld d,(iy+021h)		;b8b2	fd 56 21	. V !
	ld e,(iy+022h)		;b8b5	fd 5e 22	. ^ "
	add hl,de		;b8b8	19		.
	ld (ix+021h),h		;b8b9	dd 74 21	. t !
	ld (ix+022h),l		;b8bc	dd 75 22	. u "
	ld a,h			;b8bf	7c		|
	ret			;b8c0	c9		.
sub_b8c1h:
	push hl			;b8c1	e5		.
	push af			;b8c2	f5		.
	ld hl,08000h		;b8c3	21 00 80	! . .
	add hl,de		;b8c6	19		.
	ex de,hl		;b8c7	eb		.
	pop af			;b8c8	f1		.
	pop hl			;b8c9	e1		.
	ret			;b8ca	c9		.
lb8cbh:
	ld a,(ix+004h)		;b8cb	dd 7e 04	. ~ .
	or a			;b8ce	b7		.
	jr nz,lb923h		;b8cf	20 52		  R
	ld h,(ix+028h)		;b8d1	dd 66 28	. f (
	ld l,(ix+027h)		;b8d4	dd 6e 27	. n '
	ld d,(ix+021h)		;b8d7	dd 56 21	. V !
	ld e,(ix+022h)		;b8da	dd 5e 22	. ^ "
	call sub_b949h		;b8dd	cd 49 b9	. I .
	ld (ix+021h),d		;b8e0	dd 72 21	. r !
	ld (ix+022h),e		;b8e3	dd 73 22	. s "
	push af			;b8e6	f5		.
	ld d,(ix+025h)		;b8e7	dd 56 25	. V %
	ld e,(ix+026h)		;b8ea	dd 5e 26	. ^ &
	call sub_b8c1h		;b8ed	cd c1 b8	. . .
	call sub_b949h		;b8f0	cd 49 b9	. I .
	call sub_b8c1h		;b8f3	cd c1 b8	. . .
	ld (ix+025h),d		;b8f6	dd 72 25	. r %
	ld (ix+026h),e		;b8f9	dd 73 26	. s &
	push af			;b8fc	f5		.
	ld d,(ix+023h)		;b8fd	dd 56 23	. V #
	ld e,(ix+024h)		;b900	dd 5e 24	. ^ $
	call sub_b8c1h		;b903	cd c1 b8	. . .
	call sub_b949h		;b906	cd 49 b9	. I .
	call sub_b8c1h		;b909	cd c1 b8	. . .
	ld (ix+023h),d		;b90c	dd 72 23	. r #
	ld (ix+024h),e		;b90f	dd 73 24	. s $
	ld c,000h		;b912	0e 00		. .
	rr c			;b914	cb 19		. .
	pop af			;b916	f1		.
	rr c			;b917	cb 19		. .
	pop af			;b919	f1		.
	rr c			;b91a	cb 19		. .
	ld a,c			;b91c	79		y
	or a			;b91d	b7		.
	ret nz			;b91e	c0		.
	call sub_b928h		;b91f	cd 28 b9	. ( .
	ret			;b922	c9		.
lb923h:
	ld (ix+004h),000h	;b923	dd 36 04 00	. 6 . .
	ret			;b927	c9		.
sub_b928h:
	ld h,(ix+028h)		;b928	dd 66 28	. f (
	ld l,(ix+027h)		;b92b	dd 6e 27	. n '
	ld de,0000ch		;b92e	11 0c 00	. . .
	add hl,de		;b931	19		.
	ld e,(hl)		;b932	5e		^
	inc hl			;b933	23		#
	ld a,(hl)		;b934	7e		~
	dec hl			;b935	2b		+
	and e			;b936	a3		.
	inc a			;b937	3c		<
	call z,sub_b942h	;b938	cc 42 b9	. B .
	ld (ix+028h),h		;b93b	dd 74 28	. t (
	ld (ix+027h),l		;b93e	dd 75 27	. u '
	ret			;b941	c9		.
sub_b942h:
	inc hl			;b942	23		#
	inc hl			;b943	23		#
	ld e,(hl)		;b944	5e		^
	inc hl			;b945	23		#
	ld d,(hl)		;b946	56		V
	ex de,hl		;b947	eb		.
	ret			;b948	c9		.
sub_b949h:
	ld a,h			;b949	7c		|
	or l			;b94a	b5		.
	ret z			;b94b	c8		.
	ld c,(hl)		;b94c	4e		N
	inc hl			;b94d	23		#
	ld b,(hl)		;b94e	46		F
	inc hl			;b94f	23		#
	push bc			;b950	c5		.
	ld c,(hl)		;b951	4e		N
	inc hl			;b952	23		#
	ld b,(hl)		;b953	46		F
	inc hl			;b954	23		#
	ex (sp),hl		;b955	e3		.
	call sub_b95bh		;b956	cd 5b b9	. [ .
	pop hl			;b959	e1		.
	ret			;b95a	c9		.
sub_b95bh:
	call 04650h		;b95b	cd 50 46	. P F
	ret z			;b95e	c8		.
	jr c,lb96bh		;b95f	38 0a		8 .
	ex de,hl		;b961	eb		.
	add hl,bc		;b962	09		.
	ex de,hl		;b963	eb		.
	call 04650h		;b964	cd 50 46	. P F
	ccf			;b967	3f		?
	ret c			;b968	d8		.
	jr lb974h		;b969	18 09		. .
lb96bh:
	ex de,hl		;b96b	eb		.
	or a			;b96c	b7		.
	sbc hl,bc		;b96d	ed 42		. B
	ex de,hl		;b96f	eb		.
	call 04650h		;b970	cd 50 46	. P F
	ret c			;b973	d8		.
lb974h:
	ld d,h			;b974	54		T
	ld e,l			;b975	5d		]
	or a			;b976	b7		.
	ret			;b977	c9		.
lb978h:
	nop			;b978	00		.
	sbc a,b			;b979	98		.
	nop			;b97a	00		.
	ld b,000h		;b97b	06 00		. .
	add a,b			;b97d	80		.
	add a,b			;b97e	80		.
	ld bc,07800h		;b97f	01 00 78	. . x
	add a,b			;b982	80		.
	ld bc,0d800h		;b983	01 00 d8	. . .
	sub b			;b986	90		.
	nop			;b987	00		.
	nop			;b988	00		.
	ld a,e			;b989	7b		{
	ld e,000h		;b98a	1e 00		. .
	nop			;b98c	00		.
	add a,b			;b98d	80		.
	jr lb990h		;b98e	18 00		. .
lb990h:
	nop			;b990	00		.
	ret pe			;b991	e8		.
	sub b			;b992	90		.
	nop			;b993	00		.
	nop			;b994	00		.
	add a,b			;b995	80		.
	ld e,000h		;b996	1e 00		. .
	nop			;b998	00		.
	adc a,b			;b999	88		.
	jr lb99ch		;b99a	18 00		. .
lb99ch:
	nop			;b99c	00		.
	or b			;b99d	b0		.
	sub b			;b99e	90		.
	nop			;b99f	00		.
	nop			;b9a0	00		.
	add a,b			;b9a1	80		.
	ld e,000h		;b9a2	1e 00		. .
	nop			;b9a4	00		.
	ld a,b			;b9a5	78		x
	jr lb9a8h		;b9a6	18 00		. .
lb9a8h:
	nop			;b9a8	00		.
	or b			;b9a9	b0		.
	sub b			;b9aa	90		.
	nop			;b9ab	00		.
	nop			;b9ac	00		.
	add a,b			;b9ad	80		.
	ld e,000h		;b9ae	1e 00		. .
	nop			;b9b0	00		.
	ld a,(hl)		;b9b1	7e		~
	jr lb9b4h		;b9b2	18 00		. .
lb9b4h:
	nop			;b9b4	00		.
	ret c			;b9b5	d8		.
	sub b			;b9b6	90		.
	nop			;b9b7	00		.
	nop			;b9b8	00		.
	ld a,e			;b9b9	7b		{
	ld e,000h		;b9ba	1e 00		. .
	nop			;b9bc	00		.
	add a,b			;b9bd	80		.
	jr lb9c0h		;b9be	18 00		. .
lb9c0h:
	nop			;b9c0	00		.
	or b			;b9c1	b0		.
	sub b			;b9c2	90		.
	nop			;b9c3	00		.
	nop			;b9c4	00		.
	add a,b			;b9c5	80		.
	ld e,000h		;b9c6	1e 00		. .
	nop			;b9c8	00		.
	ld a,(hl)		;b9c9	7e		~
	jr lb9cch		;b9ca	18 00		. .
lb9cch:
	rst 38h			;b9cc	ff		.
	rst 38h			;b9cd	ff		.
	add a,h			;b9ce	84		.
	cp c			;b9cf	b9		.
lb9d0h:
	nop			;b9d0	00		.
	ret pe			;b9d1	e8		.
	nop			;b9d2	00		.
	inc bc			;b9d3	03		.
	nop			;b9d4	00		.
	add a,b			;b9d5	80		.
	add a,b			;b9d6	80		.
	ld bc,08800h		;b9d7	01 00 88	. . .
	add a,b			;b9da	80		.
	ld bc,la800h		;b9db	01 00 a8	. . .
	sub b			;b9de	90		.
	nop			;b9df	00		.
	nop			;b9e0	00		.
	add a,l			;b9e1	85		.
	ld e,000h		;b9e2	1e 00		. .
	nop			;b9e4	00		.
	add a,b			;b9e5	80		.
	jr lb9e8h		;b9e6	18 00		. .
lb9e8h:
	nop			;b9e8	00		.
	sbc a,b			;b9e9	98		.
	sub b			;b9ea	90		.
	nop			;b9eb	00		.
	nop			;b9ec	00		.
	add a,b			;b9ed	80		.
	ld e,000h		;b9ee	1e 00		. .
	nop			;b9f0	00		.
	ld a,b			;b9f1	78		x
	jr lb9f4h		;b9f2	18 00		. .
lb9f4h:
	nop			;b9f4	00		.
	ret nc			;b9f5	d0		.
	sub b			;b9f6	90		.
	nop			;b9f7	00		.
	nop			;b9f8	00		.
	add a,b			;b9f9	80		.
	ld e,000h		;b9fa	1e 00		. .
	nop			;b9fc	00		.
	adc a,b			;b9fd	88		.
	jr lba00h		;b9fe	18 00		. .
lba00h:
	nop			;ba00	00		.
	ret nc			;ba01	d0		.
	sub b			;ba02	90		.
	nop			;ba03	00		.
	nop			;ba04	00		.
	add a,b			;ba05	80		.
	ld e,000h		;ba06	1e 00		. .
	nop			;ba08	00		.
	add a,d			;ba09	82		.
	jr lba0ch		;ba0a	18 00		. .
lba0ch:
	nop			;ba0c	00		.
	xor b			;ba0d	a8		.
	ret nz			;ba0e	c0		.
	nop			;ba0f	00		.
	nop			;ba10	00		.
	add a,l			;ba11	85		.
	jr nc,lba14h		;ba12	30 00		0 .
lba14h:
	nop			;ba14	00		.
	add a,b			;ba15	80		.
	jr nc,lba18h		;ba16	30 00		0 .
lba18h:
	nop			;ba18	00		.
	ret nc			;ba19	d0		.
	sub b			;ba1a	90		.
	nop			;ba1b	00		.
	nop			;ba1c	00		.
	add a,b			;ba1d	80		.
	ld e,000h		;ba1e	1e 00		. .
	nop			;ba20	00		.
	add a,d			;ba21	82		.
	jr lba24h		;ba22	18 00		. .
lba24h:
	rst 38h			;ba24	ff		.
	rst 38h			;ba25	ff		.
	call c,0ddb9h		;ba26	dc b9 dd	. . .
	ld a,(hl)		;ba29	7e		~
	rla			;ba2a	17		.
	inc a			;ba2b	3c		<
	cp 003h			;ba2c	fe 03		. .
	jr c,lba31h		;ba2e	38 01		8 .
	xor a			;ba30	af		.
lba31h:
	ld (ix+017h),a		;ba31	dd 77 17	. w .
	call sub_b268h		;ba34	cd 68 b2	. h .
	ld (ix+005h),a		;ba37	dd 77 05	. w .
	ret			;ba3a	c9		.
	ld a,(ix+001h)		;ba3b	dd 7e 01	. ~ .
	dec a			;ba3e	3d		=
	jr z,lba5dh		;ba3f	28 1c		( .
	call 06754h		;ba41	cd 54 67	. T g
	ld a,d			;ba44	7a		z
	rla			;ba45	17		.
	ld c,006h		;ba46	0e 06		. .
	jr nc,lba52h		;ba48	30 08		0 .
	inc (ix+020h)		;ba4a	dd 34 20	. 4  
	ld (ix+006h),001h	;ba4d	dd 36 06 01	. 6 . .
	inc c			;ba51	0c		.
lba52h:
	ld (ix+03eh),c		;ba52	dd 71 3e	. q >
	ld a,020h		;ba55	3e 20		>  
	call 06ae8h		;ba57	cd e8 6a	. . j
	jp 06c1dh		;ba5a	c3 1d 6c	. . l
lba5dh:
	call 06adfh		;ba5d	cd df 6a	. . j
	ret nz			;ba60	c0		.
	ld b,(ix+008h)		;ba61	dd 46 08	. F .
	inc b			;ba64	04		.
	ld a,(0ca48h)		;ba65	3a 48 ca	: H .
	sub b			;ba68	90		.
	jr nc,lba6dh		;ba69	30 02		0 .
	neg			;ba6b	ed 44		. D
lba6dh:
	cp 004h			;ba6d	fe 04		. .
	jr nc,lba81h		;ba6f	30 10		0 .
	ld b,(ix+00ah)		;ba71	dd 46 0a	. F .
	inc b			;ba74	04		.
	inc b			;ba75	04		.
	ld a,(0ca4ah)		;ba76	3a 4a ca	: J .
	sub b			;ba79	90		.
	jr nc,lba7eh		;ba7a	30 02		0 .
	neg			;ba7c	ed 44		. D
lba7eh:
	cp 006h			;ba7e	fe 06		. .
	ret c			;ba80	d8		.
lba81h:
	ld a,030h		;ba81	3e 30		> 0
	call 06ae8h		;ba83	cd e8 6a	. . j
	call 06814h		;ba86	cd 14 68	. . h
	ret c			;ba89	d8		.
	ld a,(ix+020h)		;ba8a	dd 7e 20	. ~  
	ld (iy+020h),a		;ba8d	fd 77 20	. w  
	ld bc,00201h		;ba90	01 01 02	. . .
	and a			;ba93	a7		.
	jr nz,lba99h		;ba94	20 03		  .
	ld bc,002feh		;ba96	01 fe 02	. . .
lba99h:
	call 06929h		;ba99	cd 29 69	. ) i
	jp 0699eh		;ba9c	c3 9e 69	. . i
	ld a,(ix+001h)		;ba9f	dd 7e 01	. ~ .
	call 0461ah		;baa2	cd 1a 46	. . F
	xor e			;baa5	ab		.
	cp d			;baa6	ba		.
	call pe,01abah		;baa7	ec ba 1a	. . .
	cp e			;baaa	bb		.
	ld a,(ix+020h)		;baab	dd 7e 20	. ~  
	ld c,a			;baae	4f		O
	ld b,(ix+008h)		;baaf	dd 46 08	. F .
	ld (ix+022h),b		;bab2	dd 70 22	. p "
	call sub_bb27h		;bab5	cd 27 bb	. ' .
	jr c,lbb24h		;bab8	38 6a		8 j
	ld a,c			;baba	79		y
	and a			;babb	a7		.
	ld hl,0ff60h		;babc	21 60 ff	! ` .
	ld de,00018h		;babf	11 18 00	. . .
	jr z,lbacah		;bac2	28 06		( .
	ld hl,000a0h		;bac4	21 a0 00	! . .
	ld de,0ffe8h		;bac7	11 e8 ff	. . .
lbacah:
	call 06bf3h		;baca	cd f3 6b	. . k
	ex de,hl		;bacd	eb		.
	call 06c0ch		;bace	cd 0c 6c	. . l
	ld hl,0ce55h		;bad1	21 55 ce	! U .
	ld a,(0ca19h)		;bad4	3a 19 ca	: . .
	cp 004h			;bad7	fe 04		. .
	ld b,002h		;bad9	06 02		. .
	jr c,lbadfh		;badb	38 02		8 .
	ld b,004h		;badd	06 04		. .
lbadfh:
	ld a,(hl)		;badf	7e		~
	inc a			;bae0	3c		<
	cp b			;bae1	b8		.
	jr c,lbae8h		;bae2	38 04		8 .
	xor a			;bae4	af		.
	inc (ix+03dh)		;bae5	dd 34 3d	. 4 =
lbae8h:
	ld (hl),a		;bae8	77		w
	jp 06c1dh		;bae9	c3 1d 6c	. . l
	ld a,(ix+020h)		;baec	dd 7e 20	. ~  
	and a			;baef	a7		.
	ld l,(ix+00ch)		;baf0	dd 6e 0c	. n .
	ld h,(ix+00bh)		;baf3	dd 66 0b	. f .
	jr nz,lbafbh		;baf6	20 03		  .
	call 04612h		;baf8	cd 12 46	. . F
lbafbh:
	ld de,00008h		;bafb	11 08 00	. . .
	call 04650h		;bafe	cd 50 46	. P F
	call c,06a9ah		;bb01	dc 9a 6a	. . j
	ld a,(ix+021h)		;bb04	dd 7e 21	. ~ !
	sub (ix+008h)		;bb07	dd 96 08	. . .
	jr nc,lbb0eh		;bb0a	30 02		0 .
	neg			;bb0c	ed 44		. D
lbb0eh:
	cp 001h			;bb0e	fe 01		. .
	ret nc			;bb10	d0		.
	call sub_bb48h		;bb11	cd 48 bb	. H .
	call 06bf0h		;bb14	cd f0 6b	. . k
	jp 06c1dh		;bb17	c3 1d 6c	. . l
	call 06a9ah		;bb1a	cd 9a 6a	. . j
	ld a,(ix+008h)		;bb1d	dd 7e 08	. ~ .
	cp (ix+022h)		;bb20	dd be 22	. . "
	ret nz			;bb23	c0		.
lbb24h:
	jp 06e98h		;bb24	c3 98 6e	. . n
sub_bb27h:
	ld a,(0ca48h)		;bb27	3a 48 ca	: H .
	inc a			;bb2a	3c		<
	ld d,a			;bb2b	57		W
	inc b			;bb2c	04		.
	sub b			;bb2d	90		.
	ld b,a			;bb2e	47		G
	ld a,c			;bb2f	79		y
	and a			;bb30	a7		.
	ld a,b			;bb31	78		x
	jr nz,lbb36h		;bb32	20 02		  .
	neg			;bb34	ed 44		. D
lbb36h:
	rla			;bb36	17		.
	ret c			;bb37	d8		.
	ld a,004h		;bb38	3e 04		> .
	cp d			;bb3a	ba		.
	jr nc,lbb43h		;bb3b	30 06		0 .
	ld a,010h		;bb3d	3e 10		> .
	cp d			;bb3f	ba		.
	jr c,lbb43h		;bb40	38 01		8 .
	ld a,d			;bb42	7a		z
lbb43h:
	ld (ix+021h),a		;bb43	dd 77 21	. w !
	or a			;bb46	b7		.
	ret			;bb47	c9		.
sub_bb48h:
	ld a,(0ca4ah)		;bb48	3a 4a ca	: J .
	sub (ix+00ah)		;bb4b	dd 96 0a	. . .
	ld e,a			;bb4e	5f		_
	jr nc,lbb53h		;bb4f	30 02		0 .
	neg			;bb51	ed 44		. D
lbb53h:
	cp 006h			;bb53	fe 06		. .
	ret c			;bb55	d8		.
	ld a,(ix+00ah)		;bb56	dd 7e 0a	. ~ .
	and a			;bb59	a7		.
	ret m			;bb5a	f8		.
	ld a,e			;bb5b	7b		{
	and a			;bb5c	a7		.
	ld bc,00000h		;bb5d	01 00 00	. . .
	jp m,lbb66h		;bb60	fa 66 bb	. f .
	ld bc,00400h		;bb63	01 00 04	. . .
lbb66h:
	jp 09cadh		;bb66	c3 ad 9c	. . .
	ld a,(ix+001h)		;bb69	dd 7e 01	. ~ .
	dec a			;bb6c	3d		=
	jr z,lbba8h		;bb6d	28 39		( 9
	dec a			;bb6f	3d		=
	jr z,lbbc0h		;bb70	28 4e		( N
	dec a			;bb72	3d		=
	jr z,lbbc5h		;bb73	28 50		( P
	call 06796h		;bb75	cd 96 67	. . g
	ld d,a			;bb78	57		W
	and 03fh		;bb79	e6 3f		. ?
	ld (ix+008h),a		;bb7b	dd 77 08	. w .
	ld a,d			;bb7e	7a		z
	rlca			;bb7f	07		.
	jr nc,lbb85h		;bb80	30 03		0 .
	inc (ix+020h)		;bb82	dd 34 20	. 4  
lbb85h:
	ld de,0ff80h		;bb85	11 80 ff	. . .
	ld b,01eh		;bb88	06 1e		. .
	ld a,(0ca04h)		;bb8a	3a 04 ca	: . .
	and a			;bb8d	a7		.
	jr z,lbb9ch		;bb8e	28 0c		( .
	ld de,00080h		;bb90	11 80 00	. . .
	ld b,000h		;bb93	06 00		. .
	inc (ix+023h)		;bb95	dd 34 23	. 4 #
	ld (ix+016h),040h	;bb98	dd 36 16 40	. 6 . @
lbb9ch:
	ld (ix+00ah),b		;bb9c	dd 70 0a	. p .
	call 06bfdh		;bb9f	cd fd 6b	. . k
	inc (ix+017h)		;bba2	dd 34 17	. 4 .
	jp 06c1dh		;bba5	c3 1d 6c	. . l
lbba8h:
	call sub_bc01h		;bba8	cd 01 bc	. . .
	ld a,(ix+00ah)		;bbab	dd 7e 0a	. ~ .
	sub 01ah		;bbae	d6 1a		. .
	jr nc,lbbb4h		;bbb0	30 02		0 .
	neg			;bbb2	ed 44		. D
lbbb4h:
	cp 001h			;bbb4	fe 01		. .
	ret nc			;bbb6	d0		.
	call 06bfah		;bbb7	cd fa 6b	. . k
	call sub_bbf1h		;bbba	cd f1 bb	. . .
	jp 06c1dh		;bbbd	c3 1d 6c	. . l
lbbc0h:
	call sub_bbc6h		;bbc0	cd c6 bb	. . .
	jr lbc0bh		;bbc3	18 46		. F
lbbc5h:
	ret			;bbc5	c9		.
sub_bbc6h:
	ld a,(ix+008h)		;bbc6	dd 7e 08	. ~ .
	cp 002h			;bbc9	fe 02		. .
	jr c,lbbd0h		;bbcb	38 03		8 .
	cp 00fh			;bbcd	fe 0f		. .
	ret c			;bbcf	d8		.
lbbd0h:
	ld a,001h		;bbd0	3e 01		> .
	xor (ix+020h)		;bbd2	dd ae 20	. .  
	ld (ix+020h),a		;bbd5	dd 77 20	. w  
	call sub_bbf1h		;bbd8	cd f1 bb	. . .
	ld a,(ix+021h)		;bbdb	dd 7e 21	. ~ !
	inc a			;bbde	3c		<
	ld (ix+021h),a		;bbdf	dd 77 21	. w !
	cp 003h			;bbe2	fe 03		. .
	ret c			;bbe4	d8		.
	call 06bf0h		;bbe5	cd f0 6b	. . k
	ld de,0ff60h		;bbe8	11 60 ff	. ` .
	call 06bfdh		;bbeb	cd fd 6b	. . k
	jp 06c1dh		;bbee	c3 1d 6c	. . l
sub_bbf1h:
	ld a,(ix+020h)		;bbf1	dd 7e 20	. ~  
	and a			;bbf4	a7		.
	ld hl,00040h		;bbf5	21 40 00	! @ .
	jr nz,lbbfdh		;bbf8	20 03		  .
	ld hl,0ffc0h		;bbfa	21 c0 ff	! . .
lbbfdh:
	call 06bf3h		;bbfd	cd f3 6b	. . k
	ret			;bc00	c9		.
sub_bc01h:
	call 06ad2h		;bc01	cd d2 6a	. . j
	ret nz			;bc04	c0		.
	ld (ix+017h),008h	;bc05	dd 36 17 08	. 6 . .
	jr lbc20h		;bc09	18 15		. .
lbc0bh:
	call 06ad2h		;bc0b	cd d2 6a	. . j
	ret nz			;bc0e	c0		.
	call 0755dh		;bc0f	cd 5d 75	. ] u
	ld a,e			;bc12	7b		{
	bit 7,a			;bc13	cb 7f		. .
	jr z,lbc19h		;bc15	28 02		( .
	neg			;bc17	ed 44		. D
lbc19h:
	cp 002h			;bc19	fe 02		. .
	ret nc			;bc1b	d0		.
	ld (ix+017h),028h	;bc1c	dd 36 17 28	. 6 . (
lbc20h:
	ld bc,001ffh		;bc20	01 ff 01	. . .
	call sub_bc2fh		;bc23	cd 2f bc	. / .
	ld bc,00002h		;bc26	01 02 00	. . .
	call sub_bc2fh		;bc29	cd 2f bc	. / .
	ld bc,00105h		;bc2c	01 05 01	. . .
sub_bc2fh:
	push bc			;bc2f	c5		.
	ld bc,00000h		;bc30	01 00 00	. . .
	call 09cb5h		;bc33	cd b5 9c	. . .
	pop bc			;bc36	c1		.
	jp 0737ch		;bc37	c3 7c 73	. | s
	call sub_bc4dh		;bc3a	cd 4d bc	. M .
	call 07c44h		;bc3d	cd 44 7c	. D |
	jp c,07cc3h		;bc40	da c3 7c	. . |
	ld a,(ix+00ah)		;bc43	dd 7e 0a	. ~ .
	add a,008h		;bc46	c6 08		. .
	and a			;bc48	a7		.
	ret p			;bc49	f0		.
	jp 06e98h		;bc4a	c3 98 6e	. . n
sub_bc4dh:
	ld a,(ix+001h)		;bc4d	dd 7e 01	. ~ .
	and a			;bc50	a7		.
	jr nz,lbc64h		;bc51	20 11		  .
	call 06754h		;bc53	cd 54 67	. T g
	ld (ix+03eh),009h	;bc56	dd 36 3e 09	. 6 > .
	ld (ix+005h),001h	;bc5a	dd 36 05 01	. 6 . .
	call sub_bcaah		;bc5e	cd aa bc	. . .
	jp 06c1dh		;bc61	c3 1d 6c	. . l
lbc64h:
	ld a,(ix+00ah)		;bc64	dd 7e 0a	. ~ .
	and a			;bc67	a7		.
	ret m			;bc68	f8		.
	cp 01ch			;bc69	fe 1c		. .
	ret nc			;bc6b	d0		.
	ld a,(ix+008h)		;bc6c	dd 7e 08	. ~ .
	cp 018h			;bc6f	fe 18		. .
	ret nc			;bc71	d0		.
	ld a,(ix+024h)		;bc72	dd 7e 24	. ~ $
	and a			;bc75	a7		.
	call z,sub_bcc0h	;bc76	cc c0 bc	. . .
	call 06ad2h		;bc79	cd d2 6a	. . j
	ret nz			;bc7c	c0		.
	call 06adfh		;bc7d	cd df 6a	. . j
	ret nz			;bc80	c0		.
	ld (ix+018h),004h	;bc81	dd 36 18 04	. 6 . .
	ld a,(ix+024h)		;bc85	dd 7e 24	. ~ $
	inc (ix+024h)		;bc88	dd 34 24	. 4 $
	cp 003h			;bc8b	fe 03		. .
	jr z,sub_bcaah		;bc8d	28 1b		( .
	cp 001h			;bc8f	fe 01		. .
	ret z			;bc91	c8		.
	ld b,(ix+005h)		;bc92	dd 46 05	. F .
	call 09cc0h		;bc95	cd c0 9c	. . .
	ex de,hl		;bc98	eb		.
	ld l,(ix+005h)		;bc99	dd 6e 05	. n .
	ld h,000h		;bc9c	26 00		& .
	add hl,hl		;bc9e	29		)
	ld bc,lbcb6h		;bc9f	01 b6 bc	. . .
	add hl,bc		;bca2	09		.
	ld c,(hl)		;bca3	4e		N
	inc hl			;bca4	23		#
	ld b,(hl)		;bca5	46		F
	ex de,hl		;bca6	eb		.
	jp 0737ch		;bca7	c3 7c 73	. | s
sub_bcaah:
	ld (ix+024h),000h	;bcaa	dd 36 24 00	. 6 $ .
	ld (ix+017h),020h	;bcae	dd 36 17 20	. 6 .  
	inc (ix+018h)		;bcb2	dd 34 18	. 4 .
	ret			;bcb5	c9		.
lbcb6h:
	ld (bc),a		;bcb6	02		.
	nop			;bcb7	00		.
	ld bc,00001h		;bcb8	01 01 00	. . .
	ld (bc),a		;bcbb	02		.
	ld bc,00204h		;bcbc	01 04 02	. . .
	dec b			;bcbf	05		.
sub_bcc0h:
	ld iy,0ca40h		;bcc0	fd 21 40 ca	. ! @ .
	call 06b85h		;bcc4	cd 85 6b	. . k
	call 09da9h		;bcc7	cd a9 9d	. . .
	rrca			;bcca	0f		.
	rrca			;bccb	0f		.
	rrca			;bccc	0f		.
	rrca			;bccd	0f		.
	and 00fh		;bcce	e6 0f		. .
	ld l,a			;bcd0	6f		o
	ld h,000h		;bcd1	26 00		& .
	ld de,lbcdch		;bcd3	11 dc bc	. . .
	add hl,de		;bcd6	19		.
	ld a,(hl)		;bcd7	7e		~
	ld (ix+005h),a		;bcd8	dd 77 05	. w .
	ret			;bcdb	c9		.
lbcdch:
	inc b			;bcdc	04		.
	inc bc			;bcdd	03		.
	inc bc			;bcde	03		.
	ld (bc),a		;bcdf	02		.
	ld (bc),a		;bce0	02		.
	ld bc,00001h		;bce1	01 01 00	. . .
	nop			;bce4	00		.
	ld bc,00201h		;bce5	01 01 02	. . .
	ld (bc),a		;bce8	02		.
	inc bc			;bce9	03		.
	inc bc			;bcea	03		.
	inc b			;bceb	04		.
	call 082cah		;bcec	cd ca 82	. . .
	call 07c44h		;bcef	cd 44 7c	. D |
	jp c,07cc3h		;bcf2	da c3 7c	. . |
	ld a,(ix+00ah)		;bcf5	dd 7e 0a	. ~ .
	inc a			;bcf8	3c		<
	and a			;bcf9	a7		.
	ret p			;bcfa	f0		.
	jp 06e98h		;bcfb	c3 98 6e	. . n
	call 06754h		;bcfe	cd 54 67	. T g
	ld hl,0ce53h		;bd01	21 53 ce	! S .
	inc (hl)		;bd04	34		4
	ld a,(hl)		;bd05	7e		~
	rrca			;bd06	0f		.
	jr nc,lbd0ch		;bd07	30 03		0 .
	inc (ix+03dh)		;bd09	dd 34 3d	. 4 =
lbd0ch:
	jp 06c1dh		;bd0c	c3 1d 6c	. . l
	ld a,(ix+001h)		;bd0f	dd 7e 01	. ~ .
	dec a			;bd12	3d		=
	jr z,lbd22h		;bd13	28 0d		( .
	dec a			;bd15	3d		=
	jr z,lbd47h		;bd16	28 2f		( /
	call 06754h		;bd18	cd 54 67	. T g
	ld (ix+03eh),00bh	;bd1b	dd 36 3e 0b	. 6 > .
	jp 06c1dh		;bd1f	c3 1d 6c	. . l
lbd22h:
	ld l,(ix+020h)		;bd22	dd 6e 20	. n  
	ld h,000h		;bd25	26 00		& .
	add hl,hl		;bd27	29		)
	ld de,lbd6bh		;bd28	11 6b bd	. k .
	add hl,de		;bd2b	19		.
	ld a,(hl)		;bd2c	7e		~
	and a			;bd2d	a7		.
	ret z			;bd2e	c8		.
	cp (ix+00ah)		;bd2f	dd be 0a	. . .
	ret c			;bd32	d8		.
	inc (ix+020h)		;bd33	dd 34 20	. 4  
	inc hl			;bd36	23		#
	ld a,(0ca19h)		;bd37	3a 19 ca	: . .
	cp (hl)			;bd3a	be		.
	ret c			;bd3b	d8		.
	ld (ix+018h),006h	;bd3c	dd 36 18 06	. 6 . .
	ld (ix+006h),001h	;bd40	dd 36 06 01	. 6 . .
	jp 06c1dh		;bd44	c3 1d 6c	. . l
lbd47h:
	call 06adfh		;bd47	cd df 6a	. . j
	ret nz			;bd4a	c0		.
	ld de,00004h		;bd4b	11 04 00	. . .
	ld bc,000ffh		;bd4e	01 ff 00	. . .
	call 09d1eh		;bd51	cd 1e 9d	. . .
	ld de,00007h		;bd54	11 07 00	. . .
	ld bc,003ffh		;bd57	01 ff 03	. . .
	call 09d1eh		;bd5a	cd 1e 9d	. . .
	ld a,017h		;bd5d	3e 17		> .
	call 04af0h		;bd5f	cd f0 4a	. . J
	ld (ix+006h),000h	;bd62	dd 36 06 00	. 6 . .
	ld (ix+001h),001h	;bd66	dd 36 01 01	. 6 . .
	ret			;bd6a	c9		.
lbd6bh:
	dec de			;bd6b	1b		.
	inc bc			;bd6c	03		.
	jr lbd6fh		;bd6d	18 00		. .
lbd6fh:
	djnz $+7		;bd6f	10 05		. .
	inc b			;bd71	04		.
	ex af,af'		;bd72	08		.
	nop			;bd73	00		.
	ld a,(ix+001h)		;bd74	dd 7e 01	. ~ .
	dec a			;bd77	3d		=
	jr z,lbd88h		;bd78	28 0e		( .
	call 04678h		;bd7a	cd 78 46	. x F
	ld d,018h		;bd7d	16 18		. .
	call 0722ah		;bd7f	cd 2a 72	. * r
	call 06bebh		;bd82	cd eb 6b	. . k
	jp 06c1dh		;bd85	c3 1d 6c	. . l
lbd88h:
	ld a,(ix+008h)		;bd88	dd 7e 08	. ~ .
	sub 001h		;bd8b	d6 01		. .
	cp 014h			;bd8d	fe 14		. .
	call nc,06b43h		;bd8f	d4 43 6b	. C k
	ld a,(ix+00ah)		;bd92	dd 7e 0a	. ~ .
	cp 01dh			;bd95	fe 1d		. .
	call nc,06b53h		;bd97	d4 53 6b	. S k
	ret			;bd9a	c9		.
	ld a,(ix+001h)		;bd9b	dd 7e 01	. ~ .
	and a			;bd9e	a7		.
	jr nz,lbdadh		;bd9f	20 0c		  .
	call 06754h		;bda1	cd 54 67	. T g
	call 06796h		;bda4	cd 96 67	. . g
	ld (ix+020h),a		;bda7	dd 77 20	. w  
	jp 06c1dh		;bdaa	c3 1d 6c	. . l
lbdadh:
	ld a,(ix+00ah)		;bdad	dd 7e 0a	. ~ .
	add a,011h		;bdb0	c6 11		. .
	and a			;bdb2	a7		.
	jp m,06e98h		;bdb3	fa 98 6e	. . n
	ld a,(0ca3bh)		;bdb6	3a 3b ca	: ; .
	add a,(ix+00ah)		;bdb9	dd 86 0a	. . .
	and 007h		;bdbc	e6 07		. .
	ld d,a			;bdbe	57		W
	ld a,(0ca1ch)		;bdbf	3a 1c ca	: . .
	add a,(ix+009h)		;bdc2	dd 86 09	. . .
	jr nc,lbdc8h		;bdc5	30 01		0 .
	inc d			;bdc7	14		.
lbdc8h:
	res 3,d			;bdc8	cb 9a		. .
	ld c,d			;bdca	4a		J
	ld b,003h		;bdcb	06 03		. .
	xor a			;bdcd	af		.
lbdceh:
	push af			;bdce	f5		.
	push bc			;bdcf	c5		.
	add a,c			;bdd0	81		.
	call 07a43h		;bdd1	cd 43 7a	. C z
	pop bc			;bdd4	c1		.
	pop af			;bdd5	f1		.
	add a,008h		;bdd6	c6 08		. .
	djnz lbdceh		;bdd8	10 f4		. .
	ret			;bdda	c9		.
	ld a,(ix+001h)		;bddb	dd 7e 01	. ~ .
	dec a			;bdde	3d		=
	jr z,lbdf6h		;bddf	28 15		( .
	dec a			;bde1	3d		=
	jr z,lbe36h		;bde2	28 52		( R
	dec a			;bde4	3d		=
	jr z,lbe52h		;bde5	28 6b		( k
	call 06754h		;bde7	cd 54 67	. T g
	ld a,d			;bdea	7a		z
	bit 7,a			;bdeb	cb 7f		. .
	jr z,lbdf3h		;bded	28 04		( .
	ld (ix+00ah),000h	;bdef	dd 36 0a 00	. 6 . .
lbdf3h:
	jp 06c1dh		;bdf3	c3 1d 6c	. . l
lbdf6h:
	ld iy,0ca40h		;bdf6	fd 21 40 ca	. ! @ .
	ld a,008h		;bdfa	3e 08		> .
	call 06b7fh		;bdfc	cd 7f 6b	. . k
	sra h			;bdff	cb 2c		. ,
	rr l			;be01	cb 1d		. .
	sra h			;be03	cb 2c		. ,
	rr l			;be05	cb 1d		. .
	ld (ix+00bh),l		;be07	dd 75 0b	. u .
	ld (ix+00ch),h		;be0a	dd 74 0c	. t .
	sra h			;be0d	cb 2c		. ,
	rr l			;be0f	cb 1d		. .
	ld (ix+00fh),l		;be11	dd 75 0f	. u .
	ld (ix+010h),h		;be14	dd 74 10	. t .
	sra d			;be17	cb 2a		. *
	rr e			;be19	cb 1b		. .
	sra d			;be1b	cb 2a		. *
	rr e			;be1d	cb 1b		. .
	ld (ix+00dh),e		;be1f	dd 73 0d	. s .
	ld (ix+00eh),d		;be22	dd 72 0e	. r .
	sra d			;be25	cb 2a		. *
	rr e			;be27	cb 1b		. .
	ld (ix+011h),e		;be29	dd 73 11	. s .
	ld (ix+012h),d		;be2c	dd 72 12	. r .
	ld (ix+017h),010h	;be2f	dd 36 17 10	. 6 . .
	jp 06c1dh		;be33	c3 1d 6c	. . l
lbe36h:
	ld (ix+005h),001h	;be36	dd 36 05 01	. 6 . .
	call 06ad2h		;be3a	cd d2 6a	. . j
	jr z,lbe42h		;be3d	28 03		( .
	jp 06a9ah		;be3f	c3 9a 6a	. . j
lbe42h:
	ld hl,00020h		;be42	21 20 00	!   .
	ld de,00000h		;be45	11 00 00	. . .
	call 06bebh		;be48	cd eb 6b	. . k
	ld (ix+017h),008h	;be4b	dd 36 17 08	. 6 . .
	jp 06c1dh		;be4f	c3 1d 6c	. . l
lbe52h:
	ld (ix+005h),000h	;be52	dd 36 05 00	. 6 . .
	call 06ad2h		;be56	cd d2 6a	. . j
	ret nz			;be59	c0		.
	ld (ix+001h),001h	;be5a	dd 36 01 01	. 6 . .
	ret			;be5e	c9		.
	ld a,(ix+001h)		;be5f	dd 7e 01	. ~ .
	dec a			;be62	3d		=
	jr z,lbe7eh		;be63	28 19		( .
	dec a			;be65	3d		=
	jr z,lbec4h		;be66	28 5c		( \
	dec a			;be68	3d		=
	jr z,lbeb7h		;be69	28 4c		( L
	call 06754h		;be6b	cd 54 67	. T g
	call 06796h		;be6e	cd 96 67	. . g
	call 06796h		;be71	cd 96 67	. . g
	ld (ix+021h),a		;be74	dd 77 21	. w !
	ld (ix+03eh),00ch	;be77	dd 36 3e 0c	. 6 > .
	jp 06c1dh		;be7b	c3 1d 6c	. . l
lbe7eh:
	ld (ix+006h),000h	;be7e	dd 36 06 00	. 6 . .
	ld l,(ix+026h)		;be82	dd 6e 26	. n &
	ld h,000h		;be85	26 00		& .
	add hl,hl		;be87	29		)
	ld de,lbefdh		;be88	11 fd be	. . .
	add hl,de		;be8b	19		.
	ld a,(hl)		;be8c	7e		~
	and a			;be8d	a7		.
	ret z			;be8e	c8		.
	cp (ix+00ah)		;be8f	dd be 0a	. . .
	ret c			;be92	d8		.
	inc hl			;be93	23		#
	inc (ix+026h)		;be94	dd 34 26	. 4 &
	ld b,(hl)		;be97	46		F
	ld a,(0ca19h)		;be98	3a 19 ca	: . .
	cp b			;be9b	b8		.
	ret c			;be9c	d8		.
	call 0755dh		;be9d	cd 5d 75	. ] u
	ld a,e			;bea0	7b		{
	bit 7,a			;bea1	cb 7f		. .
	jr z,lbea7h		;bea3	28 02		( .
	neg			;bea5	ed 44		. D
lbea7h:
	cp 00fh			;bea7	fe 0f		. .
	jr c,lbeadh		;bea9	38 02		8 .
	ld a,00fh		;beab	3e 0f		> .
lbeadh:
	ld (ix+025h),a		;bead	dd 77 25	. w %
	ld (ix+018h),006h	;beb0	dd 36 18 06	. 6 . .
	jp 06c1dh		;beb4	c3 1d 6c	. . l
lbeb7h:
	call 06adfh		;beb7	cd df 6a	. . j
	ret nz			;beba	c0		.
	ld (ix+022h),000h	;bebb	dd 36 22 00	. 6 " .
	ld (ix+001h),001h	;bebf	dd 36 01 01	. 6 . .
	ret			;bec3	c9		.
lbec4h:
	ld (ix+006h),001h	;bec4	dd 36 06 01	. 6 . .
	call 06adfh		;bec8	cd df 6a	. . j
	ret nz			;becb	c0		.
	ld a,011h		;becc	3e 11		> .
	call 0684ch		;bece	cd 4c 68	. L h
	ret c			;bed1	d8		.
	ld bc,00202h		;bed2	01 02 02	. . .
	call 06929h		;bed5	cd 29 69	. ) i
	call 0699eh		;bed8	cd 9e 69	. . i
	ld l,(ix+025h)		;bedb	dd 6e 25	. n %
	ld h,000h		;bede	26 00		& .
	ld de,lbf04h		;bee0	11 04 bf	. . .
	add hl,de		;bee3	19		.
	ld a,(hl)		;bee4	7e		~
	ld (iy+017h),a		;bee5	fd 77 17	. w .
	ld (ix+018h),004h	;bee8	dd 36 18 04	. 6 . .
	inc (ix+022h)		;beec	dd 34 22	. 4 "
	ld a,(ix+021h)		;beef	dd 7e 21	. ~ !
	cp (ix+022h)		;bef2	dd be 22	. . "
	ret nz			;bef5	c0		.
	ld (ix+018h),008h	;bef6	dd 36 18 08	. 6 . .
	jp 06c1dh		;befa	c3 1d 6c	. . l
lbefdh:
	ld a,(de)		;befd	1a		.
	nop			;befe	00		.
	ld (de),a		;beff	12		.
	dec b			;bf00	05		.
	ld b,008h		;bf01	06 08		. .
	nop			;bf03	00		.
lbf04h:
	ld (bc),a		;bf04	02		.
	inc bc			;bf05	03		.
	inc b			;bf06	04		.
	inc b			;bf07	04		.
	dec b			;bf08	05		.
	dec b			;bf09	05		.
	ld b,006h		;bf0a	06 06		. .
	rlca			;bf0c	07		.
	rlca			;bf0d	07		.
	ex af,af'		;bf0e	08		.
	add hl,bc		;bf0f	09		.
	ld a,(bc)		;bf10	0a		.
	dec bc			;bf11	0b		.
	inc c			;bf12	0c		.
	dec c			;bf13	0d		.
	call 06a13h		;bf14	cd 13 6a	. . j
	ld de,0bfc0h		;bf17	11 c0 bf	. . .
	call 07b65h		;bf1a	cd 65 7b	. e {
	ld a,(ix+001h)		;bf1d	dd 7e 01	. ~ .
	dec a			;bf20	3d		=
	jr z,lbf3fh		;bf21	28 1c		( .
	dec a			;bf23	3d		=
	jr z,lbf5fh		;bf24	28 39		( 9
	dec a			;bf26	3d		=
	jr z,lbf8dh		;bf27	28 64		( d
	call 06754h		;bf29	cd 54 67	. T g
	call 069f2h		;bf2c	cd f2 69	. . i
	ld a,(0ca04h)		;bf2f	3a 04 ca	: . .
	and a			;bf32	a7		.
	jr z,lbf39h		;bf33	28 04		( .
	ld (ix+016h),038h	;bf35	dd 36 16 38	. 6 . 8
lbf39h:
	call sub_bfaeh		;bf39	cd ae bf	. . .
	jp 06c1dh		;bf3c	c3 1d 6c	. . l
lbf3fh:
	ld b,004h		;bf3f	06 04		. .
	call 06ac2h		;bf41	cd c2 6a	. . j
	call 07c6bh		;bf44	cd 6b 7c	. k |
	ret nc			;bf47	d0		.
	ld a,001h		;bf48	3e 01		> .
	ld (0ce4ch),a		;bf4a	32 4c ce	2 L .
	ld a,034h		;bf4d	3e 34		> 4
	call 04af5h		;bf4f	cd f5 4a	. . J
	call 07cbeh		;bf52	cd be 7c	. . |
	ld (ix+017h),005h	;bf55	dd 36 17 05	. 6 . .
	inc (ix+018h)		;bf59	dd 34 18	. 4 .
	jp 06c1dh		;bf5c	c3 1d 6c	. . l
lbf5fh:
	call sub_bf9ah		;bf5f	cd 9a bf	. . .
	call 06adfh		;bf62	cd df 6a	. . j
	ret nz			;bf65	c0		.
	ld (ix+018h),004h	;bf66	dd 36 18 04	. 6 . .
	call 06ad2h		;bf6a	cd d2 6a	. . j
	jr z,lbf86h		;bf6d	28 17		( .
	cp 003h			;bf6f	fe 03		. .
	jr nz,lbf77h		;bf71	20 04		  .
	ld (ix+006h),004h	;bf73	dd 36 06 04	. 6 . .
lbf77h:
	dec a			;bf77	3d		=
	ld l,a			;bf78	6f		o
	ld h,000h		;bf79	26 00		& .
	add hl,hl		;bf7b	29		)
	ld de,lbfb8h		;bf7c	11 b8 bf	. . .
	add hl,de		;bf7f	19		.
	ld e,(hl)		;bf80	5e		^
	inc hl			;bf81	23		#
	ld d,(hl)		;bf82	56		V
	jp 09a62h		;bf83	c3 62 9a	. b .
lbf86h:
	ld (ix+017h),070h	;bf86	dd 36 17 70	. 6 . p
	jp 06c1dh		;bf8a	c3 1d 6c	. . l
lbf8dh:
	call sub_bf9ah		;bf8d	cd 9a bf	. . .
	call 06ad2h		;bf90	cd d2 6a	. . j
	ret nz			;bf93	c0		.
	call 069fbh		;bf94	cd fb 69	. . i
	jp 06e98h		;bf97	c3 98 6e	. . n
sub_bf9ah:
	ld hl,0ce48h		;bf9a	21 48 ce	! H .
	res 1,(hl)		;bf9d	cb 8e		. .
	dec (ix+020h)		;bf9f	dd 35 20	. 5  
	ret nz			;bfa2	c0		.
	ld (hl),003h		;bfa3	36 03		6 .
	ld a,(0ce4dh)		;bfa5	3a 4d ce	: M .
	and a			;bfa8	a7		.
	ld a,035h		;bfa9	3e 35		> 5
	call z,04af0h		;bfab	cc f0 4a	. . J
sub_bfaeh:
	call 04678h		;bfae	cd 78 46	. x F
	and 007h		;bfb1	e6 07		. .
	inc a			;bfb3	3c		<
	ld (ix+020h),a		;bfb4	dd 77 20	. w  
	ret			;bfb7	c9		.
lbfb8h:
	defb 0fdh,002h,0feh ;illegal sequence	;bfb8	fd 02 fe	. . .
	ex af,af'		;bfbb	08		.
	ld (bc),a		;bfbc	02		.
	inc b			;bfbd	04		.
	inc b			;bfbe	04		.
	cp 0cah			;bfbf	fe ca		. .
	cp a			;bfc1	bf		.
	push de			;bfc2	d5		.
	cp a			;bfc3	bf		.
	ret po			;bfc4	e0		.
	cp a			;bfc5	bf		.
	ex de,hl		;bfc6	eb		.
	cp a			;bfc7	bf		.
	or 0bfh			;bfc8	f6 bf		. .
	dec bc			;bfca	0b		.
	nop			;bfcb	00		.
	nop			;bfcc	00		.
	ld bc,0fe00h		;bfcd	01 00 fe	. . .
	ld a,(bc)		;bfd0	0a		.
	nop			;bfd1	00		.
	ld bc,0ff04h		;bfd2	01 04 ff	. . .
	dec bc			;bfd5	0b		.
	nop			;bfd6	00		.
	nop			;bfd7	00		.
	ld bc,0fe01h		;bfd8	01 01 fe	. . .
	ld a,(bc)		;bfdb	0a		.
	nop			;bfdc	00		.
	ld bc,0ff04h		;bfdd	01 04 ff	. . .
	dec bc			;bfe0	0b		.
	nop			;bfe1	00		.
	nop			;bfe2	00		.
	ld bc,0fe02h		;bfe3	01 02 fe	. . .
	ld a,(bc)		;bfe6	0a		.
	nop			;bfe7	00		.
	ld bc,0ff04h		;bfe8	01 04 ff	. . .
	dec bc			;bfeb	0b		.
	nop			;bfec	00		.
	nop			;bfed	00		.
	ld bc,0fe03h		;bfee	01 03 fe	. . .
	ld a,(bc)		;bff1	0a		.
	nop			;bff2	00		.
	ld bc,0ff04h		;bff3	01 04 ff	. . .
	ld b,000h		;bff6	06 00		. .
	nop			;bff8	00		.
	ld bc,0ff05h		;bff9	01 05 ff	. . .
	rst 38h			;bffc	ff		.
	rst 38h			;bffd	ff		.
	rst 38h			;bffe	ff		.
	rst 38h			;bfff	ff		.
