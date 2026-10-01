; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x8000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank07_8000_runtime.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank07.bin

	org 08000h

	jp l8003h		;8000	c3 03 80	. . .
l8003h:
	ld a,(0ca41h)		;8003	3a 41 ca	: A .
	or a			;8006	b7		.
	jr nz,l801dh		;8007	20 14		  .
	ld a,(0ce76h)		;8009	3a 76 ce	: v .
	or a			;800c	b7		.
	ret nz			;800d	c0		.
	ld a,(0ce75h)		;800e	3a 75 ce	: u .
	or a			;8011	b7		.
	ret nz			;8012	c0		.
	call sub_8026h		;8013	cd 26 80	. & .
	call sub_82deh		;8016	cd de 82	. . .
	call 0826dh		;8019	cd 6d 82	. m .
	ret			;801c	c9		.
l801dh:
	ld bc,00500h		;801d	01 00 05	. . .
l8020h:
	dec bc			;8020	0b		.
	ld a,b			;8021	78		x
	or c			;8022	b1		.
	jr nz,l8020h		;8023	20 fb		  .
	ret			;8025	c9		.
sub_8026h:
	ld iy,0ca40h		;8026	fd 21 40 ca	. ! @ .
	call sub_8039h		;802a	cd 39 80	. 9 .
	ret			;802d	c9		.
	ld iy,0cac0h		;802e	fd 21 c0 ca	. ! . .
	call sub_8039h		;8032	cd 39 80	. 9 .
	ld iy,0cae0h		;8035	fd 21 e0 ca	. ! . .
sub_8039h:
	ld a,(iy+000h)		;8039	fd 7e 00	. ~ .
	and a			;803c	a7		.
	ret z			;803d	c8		.
	exx			;803e	d9		.
	ld l,(iy+008h)		;803f	fd 6e 08	. n .
	dec l			;8042	2d		-
	ld h,(iy+013h)		;8043	fd 66 13	. f .
	ld e,(iy+00ah)		;8046	fd 5e 0a	. ^ .
	dec e			;8049	1d		.
	ld a,(iy+014h)		;804a	fd 7e 14	. ~ .
	and 07fh		;804d	e6 7f		. .
	ld d,a			;804f	57		W
	exx			;8050	d9		.
	ld ix,0ce80h		;8051	dd 21 80 ce	. ! . .
	ld b,014h		;8055	06 14		. .
l8057h:
	push bc			;8057	c5		.
	ld a,(ix+000h)		;8058	dd 7e 00	. ~ .
	cp 05fh			;805b	fe 5f		. _
	jr z,l809ch		;805d	28 3d		( =
	dec a			;805f	3d		=
	cp 07fh			;8060	fe 7f		. .
	jr nc,l809ch		;8062	30 38		0 8
	ld a,(ix+015h)		;8064	dd 7e 15	. ~ .
	and 0b0h		;8067	e6 b0		. .
	cp 0b0h			;8069	fe b0		. .
	jr nz,l809ch		;806b	20 2f		  /
	exx			;806d	d9		.
	ld c,(ix+00ah)		;806e	dd 4e 0a	. N .
	ld b,(ix+014h)		;8071	dd 46 14	. F .
	res 7,b			;8074	cb b8		. .
	ld a,b			;8076	78		x
	add a,d			;8077	82		.
	ld b,a			;8078	47		G
	ld a,e			;8079	7b		{
	sub c			;807a	91		.
	add a,d			;807b	82		.
	cp b			;807c	b8		.
	jr nc,l809bh		;807d	30 1c		0 .
	ex de,hl		;807f	eb		.
	ld c,(ix+008h)		;8080	dd 4e 08	. N .
	ld b,(ix+013h)		;8083	dd 46 13	. F .
	ld a,b			;8086	78		x
	add a,d			;8087	82		.
	ld b,a			;8088	47		G
	ld a,e			;8089	7b		{
	sub c			;808a	91		.
	add a,d			;808b	82		.
	cp b			;808c	b8		.
	ex de,hl		;808d	eb		.
	jr nc,l809bh		;808e	30 0b		0 .
	push hl			;8090	e5		.
	push de			;8091	d5		.
	push ix			;8092	dd e5		. .
	call sub_80e9h		;8094	cd e9 80	. . .
	pop ix			;8097	dd e1		. .
	pop de			;8099	d1		.
	pop hl			;809a	e1		.
l809bh:
	exx			;809b	d9		.
l809ch:
	pop bc			;809c	c1		.
	ld de,00040h		;809d	11 40 00	. @ .
	add ix,de		;80a0	dd 19		. .
	djnz l8057h		;80a2	10 b3		. .
	ret			;80a4	c9		.
sub_80a5h:
	ld de,0fff3h		;80a5	11 f3 ff	. . .
	add hl,de		;80a8	19		.
	ld c,(hl)		;80a9	4e		N
	inc l			;80aa	2c		,
	inc l			;80ab	2c		,
	ld e,(hl)		;80ac	5e		^
	ld a,009h		;80ad	3e 09		> .
	add a,l			;80af	85		.
	ld l,a			;80b0	6f		o
	jr nc,l80b4h		;80b1	30 01		0 .
	inc h			;80b3	24		$
l80b4h:
	ld b,(hl)		;80b4	46		F
	inc l			;80b5	2c		,
	ld a,(hl)		;80b6	7e		~
	and 07fh		;80b7	e6 7f		. .
	ld d,a			;80b9	57		W
	push de			;80ba	d5		.
	exx			;80bb	d9		.
	pop bc			;80bc	c1		.
	exx			;80bd	d9		.
	ld e,(iy+008h)		;80be	fd 5e 08	. ^ .
	ld d,(iy+013h)		;80c1	fd 56 13	. V .
	exx			;80c4	d9		.
	ld e,(iy+00ah)		;80c5	fd 5e 0a	. ^ .
	ld a,(iy+014h)		;80c8	fd 7e 14	. ~ .
	and 07fh		;80cb	e6 7f		. .
	ld d,a			;80cd	57		W
	exx			;80ce	d9		.
	ret			;80cf	c9		.
sub_80d0h:
	ld a,b			;80d0	78		x
	add a,d			;80d1	82		.
	ld b,a			;80d2	47		G
	ld a,e			;80d3	7b		{
	sub c			;80d4	91		.
	add a,d			;80d5	82		.
	cp b			;80d6	b8		.
	ret nc			;80d7	d0		.
	exx			;80d8	d9		.
	ld a,b			;80d9	78		x
	add a,d			;80da	82		.
	ld b,a			;80db	47		G
	ld a,e			;80dc	7b		{
	sub c			;80dd	91		.
	add a,d			;80de	82		.
	cp b			;80df	b8		.
	exx			;80e0	d9		.
	ret			;80e1	c9		.
sub_80e2h:
	ld a,l			;80e2	7d		}
	sub 014h		;80e3	d6 14		. .
	ld l,a			;80e5	6f		o
	push hl			;80e6	e5		.
	pop ix			;80e7	dd e1		. .
sub_80e9h:
	call sub_815eh		;80e9	cd 5e 81	. ^ .
l80ech:
	push bc			;80ec	c5		.
	call sub_816bh		;80ed	cd 6b 81	. k .
l80f0h:
	push bc			;80f0	c5		.
	call sub_8198h		;80f1	cd 98 81	. . .
	jr c,l80fbh		;80f4	38 05		8 .
	call sub_80d0h		;80f6	cd d0 80	. . .
	jr c,l810dh		;80f9	38 12		8 .
l80fbh:
	pop bc			;80fb	c1		.
	djnz l80f0h		;80fc	10 f2		. .
	pop bc			;80fe	c1		.
	ld hl,(0cb14h)		;80ff	2a 14 cb	* . .
	ld de,00006h		;8102	11 06 00	. . .
	add hl,de		;8105	19		.
	ld (0cb14h),hl		;8106	22 14 cb	" . .
	djnz l80ech		;8109	10 e1		. .
	or a			;810b	b7		.
	ret			;810c	c9		.
l810dh:
	pop bc			;810d	c1		.
	pop bc			;810e	c1		.
	push ix			;810f	dd e5		. .
	push iy			;8111	fd e5		. .
	call sub_813fh		;8113	cd 3f 81	. ? .
	call sub_815ah		;8116	cd 5a 81	. Z .
	push ix			;8119	dd e5		. .
	push iy			;811b	fd e5		. .
	pop ix			;811d	dd e1		. .
	pop iy			;811f	fd e1		. .
	call sub_813fh		;8121	cd 3f 81	. ? .
	call sub_815ah		;8124	cd 5a 81	. Z .
	ld a,(ix+000h)		;8127	dd 7e 00	. ~ .
	cp 004h			;812a	fe 04		. .
	jr nz,l8139h		;812c	20 0b		  .
	ld e,0e8h		;812e	1e e8		. .
	ld b,001h		;8130	06 01		. .
	call 078e6h		;8132	cd e6 78	. . x
	ld (ix+000h),000h	;8135	dd 36 00 00	. 6 . .
l8139h:
	pop iy			;8139	fd e1		. .
	pop ix			;813b	dd e1		. .
	scf			;813d	37		7
	ret			;813e	c9		.
sub_813fh:
	ld a,(ix+000h)		;813f	dd 7e 00	. ~ .
	ld c,001h		;8142	0e 01		. .
	cp 004h			;8144	fe 04		. .
	jr z,l8154h		;8146	28 0c		( .
	sub 002h		;8148	d6 02		. .
	cp 008h			;814a	fe 08		. .
	jr nc,l8150h		;814c	30 02		0 .
	ld c,002h		;814e	0e 02		. .
l8150h:
	ld (iy+004h),c		;8150	fd 71 04	. q .
	ret			;8153	c9		.
l8154h:
	ld a,(ix+006h)		;8154	dd 7e 06	. ~ .
	ld c,a			;8157	4f		O
	jr l8150h		;8158	18 f6		. .
sub_815ah:
	call 0600ch		;815a	cd 0c 60	. . `
	ret			;815d	c9		.
sub_815eh:
	ld a,(iy+000h)		;815e	fd 7e 00	. ~ .
	ld b,(iy+005h)		;8161	fd 46 05	. F .
	call sub_8178h		;8164	cd 78 81	. x .
	ld (0cb14h),hl		;8167	22 14 cb	" . .
	ret			;816a	c9		.
sub_816bh:
	ld a,(ix+000h)		;816b	dd 7e 00	. ~ .
	ld b,(ix+005h)		;816e	dd 46 05	. F .
	call sub_8178h		;8171	cd 78 81	. x .
	ld (0cb16h),hl		;8174	22 16 cb	" . .
	ret			;8177	c9		.
sub_8178h:
	dec a			;8178	3d		=
	ld h,000h		;8179	26 00		& .
	ld l,a			;817b	6f		o
	ld de,l8496h		;817c	11 96 84	. . .
	add hl,de		;817f	19		.
	ld c,(hl)		;8180	4e		N
	ld de,l8496h		;8181	11 96 84	. . .
	ld l,a			;8184	6f		o
	ld h,000h		;8185	26 00		& .
	add hl,hl		;8187	29		)
	add hl,de		;8188	19		.
	ld e,(hl)		;8189	5e		^
	inc hl			;818a	23		#
	ld d,(hl)		;818b	56		V
	ld l,b			;818c	68		h
	ld h,000h		;818d	26 00		& .
	add hl,hl		;818f	29		)
	add hl,de		;8190	19		.
	ld a,(hl)		;8191	7e		~
	inc hl			;8192	23		#
	ld h,(hl)		;8193	66		f
	ld l,a			;8194	6f		o
	ld b,(hl)		;8195	46		F
	inc hl			;8196	23		#
	ret			;8197	c9		.
sub_8198h:
	call sub_81b0h		;8198	cd b0 81	. . .
	ret c			;819b	d8		.
	push bc			;819c	c5		.
	push de			;819d	d5		.
	call sub_81c9h		;819e	cd c9 81	. . .
	jp c,0469dh		;81a1	da 9d 46	. . F
	push bc			;81a4	c5		.
	push de			;81a5	d5		.
	exx			;81a6	d9		.
	pop de			;81a7	d1		.
	exx			;81a8	d9		.
	pop de			;81a9	d1		.
	exx			;81aa	d9		.
	pop bc			;81ab	c1		.
	exx			;81ac	d9		.
	pop bc			;81ad	c1		.
	or a			;81ae	b7		.
	ret			;81af	c9		.
sub_81b0h:
	ld e,(iy+009h)		;81b0	fd 5e 09	. ^ .
	ld d,(iy+00ah)		;81b3	fd 56 0a	. V .
	ld l,(iy+007h)		;81b6	fd 6e 07	. n .
	ld h,(iy+008h)		;81b9	fd 66 08	. f .
	ld bc,(0cb14h)		;81bc	ed 4b 14 cb	. K . .
	push bc			;81c0	c5		.
	call sub_81e0h		;81c1	cd e0 81	. . .
	pop hl			;81c4	e1		.
	ld (0cb14h),hl		;81c5	22 14 cb	" . .
	ret			;81c8	c9		.
sub_81c9h:
	ld e,(ix+009h)		;81c9	dd 5e 09	. ^ .
	ld d,(ix+00ah)		;81cc	dd 56 0a	. V .
	ld l,(ix+007h)		;81cf	dd 6e 07	. n .
	ld h,(ix+008h)		;81d2	dd 66 08	. f .
	ld bc,(0cb16h)		;81d5	ed 4b 16 cb	. K . .
	call sub_81e0h		;81d9	cd e0 81	. . .
	ld (0cb16h),hl		;81dc	22 16 cb	" . .
	ret			;81df	c9		.
sub_81e0h:
	add hl,hl		;81e0	29		)
	add hl,hl		;81e1	29		)
	add hl,hl		;81e2	29		)
	ld a,h			;81e3	7c		|
	ex de,hl		;81e4	eb		.
	add hl,hl		;81e5	29		)
	add hl,hl		;81e6	29		)
	add hl,hl		;81e7	29		)
	ex af,af'		;81e8	08		.
	ld a,h			;81e9	7c		|
	ex af,af'		;81ea	08		.
	ld l,c			;81eb	69		i
	ld h,b			;81ec	60		`
	inc hl			;81ed	23		#
	add a,(hl)		;81ee	86		.
	ld c,a			;81ef	4f		O
	inc hl			;81f0	23		#
	ex af,af'		;81f1	08		.
	add a,(hl)		;81f2	86		.
	ld b,a			;81f3	47		G
	ex af,af'		;81f4	08		.
	inc hl			;81f5	23		#
	inc hl			;81f6	23		#
	inc hl			;81f7	23		#
	ld a,(hl)		;81f8	7e		~
	or a			;81f9	b7		.
	jp z,l8216h		;81fa	ca 16 82	. . .
	inc hl			;81fd	23		#
	push hl			;81fe	e5		.
	ld de,l8219h		;81ff	11 19 82	. . .
	ld l,a			;8202	6f		o
	ld h,000h		;8203	26 00		& .
	add hl,hl		;8205	29		)
	add hl,hl		;8206	29		)
	add hl,de		;8207	19		.
	ld a,(hl)		;8208	7e		~
	add a,c			;8209	81		.
	ld c,a			;820a	4f		O
	inc hl			;820b	23		#
	ld a,b			;820c	78		x
	ld b,(hl)		;820d	46		F
	inc hl			;820e	23		#
	add a,(hl)		;820f	86		.
	ld e,a			;8210	5f		_
	inc hl			;8211	23		#
	ld d,(hl)		;8212	56		V
	pop hl			;8213	e1		.
	or a			;8214	b7		.
	ret			;8215	c9		.
l8216h:
	inc hl			;8216	23		#
	scf			;8217	37		7
	ret			;8218	c9		.
l8219h:
	ex af,af'		;8219	08		.
	ld b,003h		;821a	06 03		. .
	ld a,(bc)		;821c	0a		.
	add hl,bc		;821d	09		.
	inc b			;821e	04		.
	ld b,006h		;821f	06 06		. .
	rlca			;8221	07		.
	ld (bc),a		;8222	02		.
	nop			;8223	00		.
	djnz l8226h		;8224	10 00		. .
l8226h:
	djnz l8228h		;8226	10 00		. .
l8228h:
	djnz l8230h		;8228	10 06		. .
	inc b			;822a	04		.
	ld b,004h		;822b	06 04		. .
	nop			;822d	00		.
	djnz l8235h		;822e	10 05		. .
l8230h:
	ld b,000h		;8230	06 00		. .
	nop			;8232	00		.
	djnz $+18		;8233	10 10		. .
l8235h:
	ld (bc),a		;8235	02		.
	ld (bc),a		;8236	02		.
	ld c,00eh		;8237	0e 0e		. .
	inc b			;8239	04		.
	inc b			;823a	04		.
	inc c			;823b	0c		.
	inc c			;823c	0c		.
	nop			;823d	00		.
	nop			;823e	00		.
	nop			;823f	00		.
	nop			;8240	00		.
	ld (bc),a		;8241	02		.
	ld c,000h		;8242	0e 00		. .
	djnz l8246h		;8244	10 00		. .
l8246h:
	djnz l824fh		;8246	10 07		. .
	ld (bc),a		;8248	02		.
	rlca			;8249	07		.
	ld (bc),a		;824a	02		.
	nop			;824b	00		.
	djnz l8254h		;824c	10 06		. .
	inc b			;824e	04		.
l824fh:
	nop			;824f	00		.
	djnz l8256h		;8250	10 04		. .
	ex af,af'		;8252	08		.
	nop			;8253	00		.
l8254h:
	djnz l8256h		;8254	10 00		. .
l8256h:
	djnz $+9		;8256	10 07		. .
	ld (bc),a		;8258	02		.
	nop			;8259	00		.
	djnz l8262h		;825a	10 06		. .
	inc b			;825c	04		.
	nop			;825d	00		.
	djnz l8264h		;825e	10 04		. .
	ex af,af'		;8260	08		.
	inc b			;8261	04		.
l8262h:
	ex af,af'		;8262	08		.
	nop			;8263	00		.
l8264h:
	djnz l8268h		;8264	10 02		. .
	inc c			;8266	0c		.
	nop			;8267	00		.
l8268h:
	djnz l826bh		;8268	10 01		. .
	rrca			;826a	0f		.
l826bh:
	nop			;826b	00		.
	djnz l826bh		;826c	10 fd		. .
	ld hl,0ca40h		;826e	21 40 ca	! @ .
	call sub_8280h		;8271	cd 80 82	. . .
	ret			;8274	c9		.
	ld iy,0cac0h		;8275	fd 21 c0 ca	. ! . .
	call sub_8280h		;8279	cd 80 82	. . .
	ld iy,0cae0h		;827c	fd 21 e0 ca	. ! . .
sub_8280h:
	ld ix,0d460h		;8280	dd 21 60 d4	. ! ` .
	ld b,012h		;8284	06 12		. .
	exx			;8286	d9		.
	ld l,(iy+008h)		;8287	fd 6e 08	. n .
	dec l			;828a	2d		-
	ld h,(iy+013h)		;828b	fd 66 13	. f .
	ld e,(iy+00ah)		;828e	fd 5e 0a	. ^ .
	dec e			;8291	1d		.
	ld a,(iy+014h)		;8292	fd 7e 14	. ~ .
	and 07fh		;8295	e6 7f		. .
	ld d,a			;8297	57		W
	exx			;8298	d9		.
l8299h:
	push bc			;8299	c5		.
	ld a,(ix+000h)		;829a	dd 7e 00	. ~ .
	or a			;829d	b7		.
	jr z,l82d5h		;829e	28 35		( 5
	bit 4,(ix+015h)		;82a0	dd cb 15 66	. . . f
	jr z,l82d5h		;82a4	28 2f		( /
	exx			;82a6	d9		.
	ld c,(ix+00ah)		;82a7	dd 4e 0a	. N .
	ld b,(ix+014h)		;82aa	dd 46 14	. F .
	res 7,b			;82ad	cb b8		. .
	ld a,b			;82af	78		x
	add a,d			;82b0	82		.
	ld b,a			;82b1	47		G
	ld a,e			;82b2	7b		{
	sub c			;82b3	91		.
	add a,d			;82b4	82		.
	cp b			;82b5	b8		.
	jr nc,l82d4h		;82b6	30 1c		0 .
	ex de,hl		;82b8	eb		.
	ld c,(ix+008h)		;82b9	dd 4e 08	. N .
	ld b,(ix+013h)		;82bc	dd 46 13	. F .
	ld a,b			;82bf	78		x
	add a,d			;82c0	82		.
	ld b,a			;82c1	47		G
	ld a,e			;82c2	7b		{
	sub c			;82c3	91		.
	add a,d			;82c4	82		.
	cp b			;82c5	b8		.
	ex de,hl		;82c6	eb		.
	jr nc,l82d4h		;82c7	30 0b		0 .
	push hl			;82c9	e5		.
	push de			;82ca	d5		.
	push ix			;82cb	dd e5		. .
	call sub_80e9h		;82cd	cd e9 80	. . .
	pop ix			;82d0	dd e1		. .
	pop de			;82d2	d1		.
	pop hl			;82d3	e1		.
l82d4h:
	exx			;82d4	d9		.
l82d5h:
	pop bc			;82d5	c1		.
	ld de,00020h		;82d6	11 20 00	.   .
	add ix,de		;82d9	dd 19		. .
	djnz l8299h		;82db	10 bc		. .
	ret			;82dd	c9		.
sub_82deh:
	call sub_82e5h		;82de	cd e5 82	. . .
	call sub_8320h		;82e1	cd 20 83	.   .
	ret			;82e4	c9		.
sub_82e5h:
	ld hl,0d700h		;82e5	21 00 d7	! . .
	call sub_83bdh		;82e8	cd bd 83	. . .
	ld hl,0cc40h		;82eb	21 40 cc	! @ .
	ld a,008h		;82ee	3e 08		> .
	ld bc,00020h		;82f0	01 20 00	.   .
	ld d,0d7h		;82f3	16 d7		. .
l82f5h:
	ex af,af'		;82f5	08		.
	ld a,(hl)		;82f6	7e		~
	or a			;82f7	b7		.
	jr z,l831ah		;82f8	28 20		(  
	set 3,l			;82fa	cb dd		. .
	ld a,(hl)		;82fc	7e		~
	inc a			;82fd	3c		<
	jp m,l8315h		;82fe	fa 15 83	. . .
	add a,a			;8301	87		.
	add a,a			;8302	87		.
	add a,a			;8303	87		.
	and 0f0h		;8304	e6 f0		. .
	ld e,a			;8306	5f		_
	set 1,l			;8307	cb cd		. .
	ld a,(hl)		;8309	7e		~
	inc a			;830a	3c		<
	jp m,l8313h		;830b	fa 13 83	. . .
	rrca			;830e	0f		.
	and 00fh		;830f	e6 0f		. .
	or e			;8311	b3		.
	ld e,a			;8312	5f		_
l8313h:
	res 1,l			;8313	cb 8d		. .
l8315h:
	res 3,l			;8315	cb 9d		. .
	ld a,001h		;8317	3e 01		> .
	ld (de),a		;8319	12		.
l831ah:
	add hl,bc		;831a	09		.
	ex af,af'		;831b	08		.
	dec a			;831c	3d		=
	jr nz,l82f5h		;831d	20 d6		  .
	ret			;831f	c9		.
sub_8320h:
	ld hl,0ce80h		;8320	21 80 ce	! . .
	ld b,014h		;8323	06 14		. .
	ld d,0d7h		;8325	16 d7		. .
l8327h:
	push bc			;8327	c5		.
	ld a,(hl)		;8328	7e		~
	cp 05fh			;8329	fe 5f		. _
	jr z,l837eh		;832b	28 51		( Q
	dec a			;832d	3d		=
	jp m,l837eh		;832e	fa 7e 83	. ~ .
	ld bc,00015h		;8331	01 15 00	. . .
	add hl,bc		;8334	09		.
	ld a,(hl)		;8335	7e		~
	and 0b0h		;8336	e6 b0		. .
	xor 0b0h		;8338	ee b0		. .
	jr nz,l837eh		;833a	20 42		  B
	sbc hl,bc		;833c	ed 42		. B
	set 3,l			;833e	cb dd		. .
	ld a,(hl)		;8340	7e		~
	add a,a			;8341	87		.
	add a,a			;8342	87		.
	add a,a			;8343	87		.
	and 0f0h		;8344	e6 f0		. .
	ld e,a			;8346	5f		_
	set 1,l			;8347	cb cd		. .
	ld a,(hl)		;8349	7e		~
	rrca			;834a	0f		.
	and 00fh		;834b	e6 0f		. .
	or e			;834d	b3		.
	ld e,a			;834e	5f		_
	ld a,009h		;834f	3e 09		> .
	add a,l			;8351	85		.
	ld l,a			;8352	6f		o
	ld c,(hl)		;8353	4e		N
	res 7,c			;8354	cb b9		. .
	inc hl			;8356	23		#
	ld b,(hl)		;8357	46		F
	res 7,b			;8358	cb b8		. .
	srl b			;835a	cb 38		. 8
	srl c			;835c	cb 39		. 9
l835eh:
	push bc			;835e	c5		.
	push de			;835f	d5		.
l8360h:
	ld a,(de)		;8360	1a		.
	inc e			;8361	1c		.
	jr z,l8373h		;8362	28 0f		( .
	or a			;8364	b7		.
	jr nz,l838ah		;8365	20 23		  #
	dec b			;8367	05		.
	jr z,l8373h		;8368	28 09		( .
	ld a,(de)		;836a	1a		.
	inc e			;836b	1c		.
	jr z,l8373h		;836c	28 05		( .
	or a			;836e	b7		.
	jr nz,l838ah		;836f	20 19		  .
	djnz l8360h		;8371	10 ed		. .
l8373h:
	pop de			;8373	d1		.
	ld a,e			;8374	7b		{
	add a,010h		;8375	c6 10		. .
	ld e,a			;8377	5f		_
	pop bc			;8378	c1		.
	jr c,l837eh		;8379	38 03		8 .
	dec c			;837b	0d		.
	jr nz,l835eh		;837c	20 e0		  .
l837eh:
	ld a,l			;837e	7d		}
	and 0e0h		;837f	e6 e0		. .
	ld l,a			;8381	6f		o
	ld bc,00040h		;8382	01 40 00	. @ .
	add hl,bc		;8385	09		.
l8386h:
	pop bc			;8386	c1		.
	djnz l8327h		;8387	10 9e		. .
	ret			;8389	c9		.
l838ah:
	pop bc			;838a	c1		.
	pop bc			;838b	c1		.
	push hl			;838c	e5		.
	push de			;838d	d5		.
	call sub_8395h		;838e	cd 95 83	. . .
	pop de			;8391	d1		.
	pop hl			;8392	e1		.
	jr l837eh		;8393	18 e9		. .
sub_8395h:
	ld a,l			;8395	7d		}
	and 0e0h		;8396	e6 e0		. .
	ld l,a			;8398	6f		o
	push hl			;8399	e5		.
	pop iy			;839a	fd e1		. .
	ld hl,0cc40h		;839c	21 40 cc	! @ .
	ld b,008h		;839f	06 08		. .
l83a1h:
	push hl			;83a1	e5		.
	push bc			;83a2	c5		.
	ld a,(hl)		;83a3	7e		~
	or a			;83a4	b7		.
	jr z,l83b4h		;83a5	28 0d		( .
	ld de,00015h		;83a7	11 15 00	. . .
	add hl,de		;83aa	19		.
	call sub_80a5h		;83ab	cd a5 80	. . .
	call sub_80d0h		;83ae	cd d0 80	. . .
	call c,sub_80e2h	;83b1	dc e2 80	. . .
l83b4h:
	pop bc			;83b4	c1		.
	pop hl			;83b5	e1		.
	ld de,00020h		;83b6	11 20 00	.   .
	add hl,de		;83b9	19		.
	djnz l83a1h		;83ba	10 e5		. .
	ret			;83bc	c9		.
sub_83bdh:
	xor a			;83bd	af		.
	ld l,a			;83be	6f		o
l83bfh:
	ld (hl),a		;83bf	77		w
	inc l			;83c0	2c		,
	ld (hl),a		;83c1	77		w
	inc l			;83c2	2c		,
	ld (hl),a		;83c3	77		w
	inc l			;83c4	2c		,
	ld (hl),a		;83c5	77		w
	inc l			;83c6	2c		,
	ld (hl),a		;83c7	77		w
	inc l			;83c8	2c		,
	ld (hl),a		;83c9	77		w
	inc l			;83ca	2c		,
	ld (hl),a		;83cb	77		w
	inc l			;83cc	2c		,
	ld (hl),a		;83cd	77		w
	inc l			;83ce	2c		,
	jp nz,l83bfh		;83cf	c2 bf 83	. . .
	ret			;83d2	c9		.
	rst 38h			;83d3	ff		.
	rst 38h			;83d4	ff		.
	rst 38h			;83d5	ff		.
	rst 38h			;83d6	ff		.
	rst 38h			;83d7	ff		.
	rst 38h			;83d8	ff		.
	rst 38h			;83d9	ff		.
	rst 38h			;83da	ff		.
	rst 38h			;83db	ff		.
	rst 38h			;83dc	ff		.
	rst 38h			;83dd	ff		.
	rst 38h			;83de	ff		.
	rst 38h			;83df	ff		.
	rst 38h			;83e0	ff		.
	rst 38h			;83e1	ff		.
	rst 38h			;83e2	ff		.
	rst 38h			;83e3	ff		.
	rst 38h			;83e4	ff		.
	rst 38h			;83e5	ff		.
	rst 38h			;83e6	ff		.
	rst 38h			;83e7	ff		.
	rst 38h			;83e8	ff		.
	rst 38h			;83e9	ff		.
	rst 38h			;83ea	ff		.
	rst 38h			;83eb	ff		.
	rst 38h			;83ec	ff		.
	rst 38h			;83ed	ff		.
	rst 38h			;83ee	ff		.
	rst 38h			;83ef	ff		.
	rst 38h			;83f0	ff		.
	rst 38h			;83f1	ff		.
	rst 38h			;83f2	ff		.
	rst 38h			;83f3	ff		.
	rst 38h			;83f4	ff		.
	rst 38h			;83f5	ff		.
	rst 38h			;83f6	ff		.
	rst 38h			;83f7	ff		.
	rst 38h			;83f8	ff		.
	rst 38h			;83f9	ff		.
	rst 38h			;83fa	ff		.
	rst 38h			;83fb	ff		.
	rst 38h			;83fc	ff		.
	rst 38h			;83fd	ff		.
	rst 38h			;83fe	ff		.
	rst 38h			;83ff	ff		.
	jr nc,l8386h		;8400	30 84		0 .
	dec (hl)		;8402	35		5
	add a,h			;8403	84		.
	add hl,sp		;8404	39		9
	add a,h			;8405	84		.
	add hl,sp		;8406	39		9
	add a,h			;8407	84		.
	ld b,b			;8408	40		@
	add a,h			;8409	84		.
	ld c,b			;840a	48		H
	add a,h			;840b	84		.
	ld c,l			;840c	4d		M
	add a,h			;840d	84		.
	ld c,l			;840e	4d		M
	add a,h			;840f	84		.
	ld d,d			;8410	52		R
	add a,h			;8411	84		.
	ld d,(hl)		;8412	56		V
	add a,h			;8413	84		.
	ld e,e			;8414	5b		[
	add a,h			;8415	84		.
	ld h,e			;8416	63		c
	add a,h			;8417	84		.
	ld l,d			;8418	6a		j
	add a,h			;8419	84		.
	ld (hl),d		;841a	72		r
	add a,h			;841b	84		.
	ld (hl),h		;841c	74		t
	add a,h			;841d	84		.
	ld a,d			;841e	7a		z
	add a,h			;841f	84		.
	ld a,(hl)		;8420	7e		~
	add a,h			;8421	84		.
	add a,d			;8422	82		.
	add a,h			;8423	84		.
	add a,h			;8424	84		.
	add a,h			;8425	84		.
	ld (hl),d		;8426	72		r
	add a,h			;8427	84		.
	add a,(hl)		;8428	86		.
	add a,h			;8429	84		.
	adc a,d			;842a	8a		.
	add a,h			;842b	84		.
	sub b			;842c	90		.
	add a,h			;842d	84		.
	sub e			;842e	93		.
	add a,h			;842f	84		.
	nop			;8430	00		.
	ld (bc),a		;8431	02		.
	ld bc,0ff03h		;8432	01 03 ff	. . .
	inc bc			;8435	03		.
	nop			;8436	00		.
	inc bc			;8437	03		.
	rst 38h			;8438	ff		.
	ld (bc),a		;8439	02		.
	nop			;843a	00		.
	nop			;843b	00		.
	inc bc			;843c	03		.
	inc bc			;843d	03		.
	ld bc,002ffh		;843e	01 ff 02	. . .
	nop			;8441	00		.
	ld (bc),a		;8442	02		.
	ld bc,00003h		;8443	01 03 00	. . .
	inc bc			;8446	03		.
	rst 38h			;8447	ff		.
	ld (bc),a		;8448	02		.
	ld (bc),a		;8449	02		.
	nop			;844a	00		.
	ld (bc),a		;844b	02		.
	rst 38h			;844c	ff		.
	inc bc			;844d	03		.
	ld bc,00301h		;844e	01 01 03	. . .
	rst 38h			;8451	ff		.
	ld bc,00003h		;8452	01 03 00	. . .
	rst 38h			;8455	ff		.
	nop			;8456	00		.
	inc bc			;8457	03		.
	nop			;8458	00		.
	ld (bc),a		;8459	02		.
	rst 38h			;845a	ff		.
	ld (bc),a		;845b	02		.
	nop			;845c	00		.
	ld (bc),a		;845d	02		.
	ld bc,00102h		;845e	01 02 01	. . .
	ld (bc),a		;8461	02		.
	rst 38h			;8462	ff		.
	ld (bc),a		;8463	02		.
	ld bc,00003h		;8464	01 03 00	. . .
	nop			;8467	00		.
	ld (bc),a		;8468	02		.
	rst 38h			;8469	ff		.
	nop			;846a	00		.
	ld (bc),a		;846b	02		.
	nop			;846c	00		.
	inc bc			;846d	03		.
l846eh:
	inc bc			;846e	03		.
	ld bc,0ff02h		;846f	01 02 ff	. . .
	ld bc,003ffh		;8472	01 ff 03	. . .
	ld bc,00002h		;8475	01 02 00	. . .
	ld (bc),a		;8478	02		.
	rst 38h			;8479	ff		.
	ld bc,00103h		;847a	01 03 01	. . .
	rst 38h			;847d	ff		.
	inc bc			;847e	03		.
	ld bc,0ff03h		;847f	01 03 ff	. . .
	ld (bc),a		;8482	02		.
	rst 38h			;8483	ff		.
	inc bc			;8484	03		.
	rst 38h			;8485	ff		.
	inc bc			;8486	03		.
	nop			;8487	00		.
	ld (bc),a		;8488	02		.
	rst 38h			;8489	ff		.
	ld (bc),a		;848a	02		.
	ld (bc),a		;848b	02		.
	nop			;848c	00		.
	nop			;848d	00		.
	ld (bc),a		;848e	02		.
	rst 38h			;848f	ff		.
	nop			;8490	00		.
	ld (bc),a		;8491	02		.
	rst 38h			;8492	ff		.
	nop			;8493	00		.
	inc bc			;8494	03		.
	rst 38h			;8495	ff		.
l8496h:
	push bc			;8496	c5		.
	xor c			;8497	a9		.
	exx			;8498	d9		.
	xor c			;8499	a9		.
	pop hl			;849a	e1		.
	xor c			;849b	a9		.
	ex (sp),hl		;849c	e3		.
	xor c			;849d	a9		.
	rlca			;849e	07		.
	xor d			;849f	aa		.
	rlca			;84a0	07		.
	xor d			;84a1	aa		.
	rlca			;84a2	07		.
	xor d			;84a3	aa		.
	add hl,bc		;84a4	09		.
	xor d			;84a5	aa		.
	add hl,de		;84a6	19		.
	xor d			;84a7	aa		.
	dec de			;84a8	1b		.
	xor d			;84a9	aa		.
	dec sp			;84aa	3b		;
	xor d			;84ab	aa		.
	dec sp			;84ac	3b		;
	xor d			;84ad	aa		.
	dec sp			;84ae	3b		;
l84afh:
	xor d			;84af	aa		.
	ld b,c			;84b0	41		A
	xor d			;84b1	aa		.
	ld b,c			;84b2	41		A
	xor d			;84b3	aa		.
	ld (028ach),hl		;84b4	22 ac 28	" . (
	xor h			;84b7	ac		.
	ld l,0ach		;84b8	2e ac		. .
	ld (036ach),a		;84ba	32 ac 36	2 . 6
	xor h			;84bd	ac		.
	ld (hl),0ach		;84be	36 ac		6 .
	jr c,l846eh		;84c0	38 ac		8 .
	ld a,(03cach)		;84c2	3a ac 3c	: . <
	xor h			;84c5	ac		.
	ld b,b			;84c6	40		@
	xor h			;84c7	ac		.
	ld c,d			;84c8	4a		J
	xor h			;84c9	ac		.
	inc (hl)		;84ca	34		4
	xor a			;84cb	af		.
	ld (hl),0afh		;84cc	36 af		6 .
	ld (hl),0afh		;84ce	36 af		6 .
	ld l,l			;84d0	6d		m
	xor l			;84d1	ad		.
	ld l,a			;84d2	6f		o
	xor l			;84d3	ad		.
	ld a,c			;84d4	79		y
	xor l			;84d5	ad		.
	ld a,c			;84d6	79		y
	xor l			;84d7	ad		.
	add a,c			;84d8	81		.
	xor l			;84d9	ad		.
	add a,c			;84da	81		.
	xor l			;84db	ad		.
	add a,e			;84dc	83		.
	xor l			;84dd	ad		.
	add a,e			;84de	83		.
	xor l			;84df	ad		.
	add a,a			;84e0	87		.
	xor l			;84e1	ad		.
	ld c,d			;84e2	4a		J
	xor (hl)		;84e3	ae		.
	ld c,(hl)		;84e4	4e		N
	xor (hl)		;84e5	ae		.
	ld c,(hl)		;84e6	4e		N
	xor (hl)		;84e7	ae		.
	ld c,(hl)		;84e8	4e		N
	xor (hl)		;84e9	ae		.
	ld d,b			;84ea	50		P
	xor (hl)		;84eb	ae		.
	ld d,b			;84ec	50		P
	xor (hl)		;84ed	ae		.
	ld d,d			;84ee	52		R
	xor (hl)		;84ef	ae		.
	ld d,(hl)		;84f0	56		V
	xor (hl)		;84f1	ae		.
	ld d,(hl)		;84f2	56		V
	xor (hl)		;84f3	ae		.
	ld e,b			;84f4	58		X
	xor (hl)		;84f5	ae		.
	ld e,d			;84f6	5a		Z
	xor (hl)		;84f7	ae		.
	inc a			;84f8	3c		<
	xor a			;84f9	af		.
	inc a			;84fa	3c		<
	xor a			;84fb	af		.
	ld a,0afh		;84fc	3e af		> .
	jr c,l84afh		;84fe	38 af		8 .
	ld a,0afh		;8500	3e af		> .
	ld l,l			;8502	6d		m
	xor a			;8503	af		.
	ld (hl),l		;8504	75		u
	xor a			;8505	af		.
	ld (hl),l		;8506	75		u
	xor a			;8507	af		.
	ld (hl),l		;8508	75		u
	xor a			;8509	af		.
	ld (hl),l		;850a	75		u
	xor a			;850b	af		.
	add a,l			;850c	85		.
	xor a			;850d	af		.
	add a,l			;850e	85		.
	xor a			;850f	af		.
	add a,l			;8510	85		.
	xor a			;8511	af		.
	add a,l			;8512	85		.
	xor a			;8513	af		.
	add hl,bc		;8514	09		.
	or b			;8515	b0		.
	ld de,011b0h		;8516	11 b0 11	. . .
	or b			;8519	b0		.
	inc de			;851a	13		.
	or b			;851b	b0		.
	xor e			;851c	ab		.
	or b			;851d	b0		.
	xor a			;851e	af		.
	or b			;851f	b0		.
	or c			;8520	b1		.
	or b			;8521	b0		.
	or c			;8522	b1		.
	or b			;8523	b0		.
	or c			;8524	b1		.
	or b			;8525	b0		.
	cp c			;8526	b9		.
	or b			;8527	b0		.
	cp l			;8528	bd		.
	or b			;8529	b0		.
	sbc a,e			;852a	9b		.
	or c			;852b	b1		.
	sbc a,l			;852c	9d		.
	or c			;852d	b1		.
	xor l			;852e	ad		.
	or c			;852f	b1		.
	sbc a,l			;8530	9d		.
	or c			;8531	b1		.
	or c			;8532	b1		.
	or c			;8533	b1		.
	or c			;8534	b1		.
	or c			;8535	b1		.
	and b			;8536	a0		.
	or d			;8537	b2		.
	and b			;8538	a0		.
	or d			;8539	b2		.
	and b			;853a	a0		.
	or d			;853b	b2		.
	and b			;853c	a0		.
	or d			;853d	b2		.
	adc a,c			;853e	89		.
	xor l			;853f	ad		.
	and b			;8540	a0		.
	or d			;8541	b2		.
	and b			;8542	a0		.
	or d			;8543	b2		.
	and d			;8544	a2		.
	or d			;8545	b2		.
	and b			;8546	a0		.
	or d			;8547	b2		.
	and b			;8548	a0		.
	or d			;8549	b2		.
	and b			;854a	a0		.
	or d			;854b	b2		.
	ccf			;854c	3f		?
	or b			;854d	b0		.
	and b			;854e	a0		.
	or d			;854f	b2		.
	and (hl)		;8550	a6		.
	or d			;8551	b2		.
	and b			;8552	a0		.
	or d			;8553	b2		.
	xor h			;8554	ac		.
	or d			;8555	b2		.
	or b			;8556	b0		.
	or d			;8557	b2		.
	add a,0b2h		;8558	c6 b2		. .
	adc a,0b2h		;855a	ce b2		. .
	ld e,(hl)		;855c	5e		^
	xor (hl)		;855d	ae		.
	adc a,0b2h		;855e	ce b2		. .
	or h			;8560	b4		.
	or d			;8561	b2		.
	or (hl)			;8562	b6		.
	or d			;8563	b2		.
	adc a,a			;8564	8f		.
	xor l			;8565	ad		.
	and b			;8566	a0		.
	or d			;8567	b2		.
	and b			;8568	a0		.
	or d			;8569	b2		.
	and b			;856a	a0		.
	or d			;856b	b2		.
	and b			;856c	a0		.
	or d			;856d	b2		.
	and b			;856e	a0		.
	or d			;856f	b2		.
	call c,0e2b2h		;8570	dc b2 e2	. . .
	or d			;8573	b2		.
	sub 0b2h		;8574	d6 b2		. .
	and b			;8576	a0		.
	or d			;8577	b2		.
	and b			;8578	a0		.
	or d			;8579	b2		.
	and b			;857a	a0		.
	or d			;857b	b2		.
	ret c			;857c	d8		.
	or d			;857d	b2		.
	jp c,0a0b2h		;857e	da b2 a0	. . .
	or d			;8581	b2		.
	and b			;8582	a0		.
	or d			;8583	b2		.
	or l			;8584	b5		.
	or c			;8585	b1		.
	or l			;8586	b5		.
	or c			;8587	b1		.
	and b			;8588	a0		.
	or d			;8589	b2		.
	and b			;858a	a0		.
	or d			;858b	b2		.
	pop bc			;858c	c1		.
	or b			;858d	b0		.
	and b			;858e	a0		.
	or d			;858f	b2		.
	and b			;8590	a0		.
	or d			;8591	b2		.
	and b			;8592	a0		.
	or d			;8593	b2		.
	and b			;8594	a0		.
	or d			;8595	b2		.
	call po,0e487h		;8596	e4 87 e4	. . .
	add a,a			;8599	87		.
	call po,0f687h		;859a	e4 87 f6	. . .
	add a,a			;859d	87		.
	or 087h			;859e	f6 87		. .
	or 087h			;85a0	f6 87		. .
	or 087h			;85a2	f6 87		. .
	or 087h			;85a4	f6 87		. .
	or 087h			;85a6	f6 87		. .
	or 087h			;85a8	f6 87		. .
	or 087h			;85aa	f6 87		. .
	or 087h			;85ac	f6 87		. .
	or 087h			;85ae	f6 87		. .
	rst 38h			;85b0	ff		.
	sbc a,e			;85b1	9b		.
	or 087h			;85b2	f6 87		. .
	ld a,088h		;85b4	3e 88		> .
	ld a,088h		;85b6	3e 88		> .
	ld a,088h		;85b8	3e 88		> .
	ld a,088h		;85ba	3e 88		> .
	ld a,088h		;85bc	3e 88		> .
	ld e,h			;85be	5c		\
	adc a,b			;85bf	88		.
	ld e,h			;85c0	5c		\
	adc a,b			;85c1	88		.
	ld e,h			;85c2	5c		\
	adc a,b			;85c3	88		.
	ld e,h			;85c4	5c		\
	adc a,b			;85c5	88		.
	ld e,h			;85c6	5c		\
	adc a,b			;85c7	88		.
	ld e,h			;85c8	5c		\
	adc a,b			;85c9	88		.
	and 095h		;85ca	e6 95		. .
	and 095h		;85cc	e6 95		. .
	ld (hl),d		;85ce	72		r
	adc a,d			;85cf	8a		.
	ld (hl),d		;85d0	72		r
	adc a,d			;85d1	8a		.
	ld (hl),d		;85d2	72		r
	adc a,d			;85d3	8a		.
	ld (hl),h		;85d4	74		t
	adc a,d			;85d5	8a		.
	add a,h			;85d6	84		.
	adc a,d			;85d7	8a		.
	add a,h			;85d8	84		.
	adc a,d			;85d9	8a		.
	adc a,b			;85da	88		.
	adc a,d			;85db	8a		.
	adc a,b			;85dc	88		.
	adc a,d			;85dd	8a		.
	cp b			;85de	b8		.
	adc a,d			;85df	8a		.
	cp b			;85e0	b8		.
	adc a,d			;85e1	8a		.
	or c			;85e2	b1		.
	adc a,a			;85e3	8f		.
	or c			;85e4	b1		.
	adc a,a			;85e5	8f		.
	or a			;85e6	b7		.
	adc a,a			;85e7	8f		.
	rst 0			;85e8	c7		.
	adc a,a			;85e9	8f		.
	rst 0			;85ea	c7		.
	adc a,a			;85eb	8f		.
	res 1,a			;85ec	cb 8f		. .
	res 1,a			;85ee	cb 8f		. .
	res 1,a			;85f0	cb 8f		. .
	out (08fh),a		;85f2	d3 8f		. .
	out (08fh),a		;85f4	d3 8f		. .
	out (08fh),a		;85f6	d3 8f		. .
	jp pe,0fa95h		;85f8	ea 95 fa	. . .
	sub l			;85fb	95		.
	jp m,0fa95h		;85fc	fa 95 fa	. . .
	sub l			;85ff	95		.
	jp m,07195h		;8600	fa 95 71	. . q
	sub (hl)		;8603	96		.
	ld (hl),c		;8604	71		q
	sub (hl)		;8605	96		.
	ld a,e			;8606	7b		{
	sub (hl)		;8607	96		.
	ld a,a			;8608	7f		.
	sub (hl)		;8609	96		.
	ld a,a			;860a	7f		.
	sub (hl)		;860b	96		.
	sbc a,c			;860c	99		.
	sub (hl)		;860d	96		.
	jp (hl)			;860e	e9		.
	adc a,a			;860f	8f		.
	xor l			;8610	ad		.
	sub (hl)		;8611	96		.
	xor l			;8612	ad		.
	sub (hl)		;8613	96		.
	rst 10h			;8614	d7		.
	sbc a,d			;8615	9a		.
	rst 10h			;8616	d7		.
	sbc a,d			;8617	9a		.
	rst 28h			;8618	ef		.
	sbc a,d			;8619	9a		.
	rst 28h			;861a	ef		.
	sbc a,d			;861b	9a		.
	inc de			;861c	13		.
	sbc a,h			;861d	9c		.
	inc de			;861e	13		.
	sbc a,h			;861f	9c		.
	inc de			;8620	13		.
	sbc a,h			;8621	9c		.
	ld e,a			;8622	5f		_
	and (hl)		;8623	a6		.
	inc de			;8624	13		.
	sbc a,h			;8625	9c		.
	add hl,de		;8626	19		.
	sbc a,h			;8627	9c		.
	add hl,de		;8628	19		.
	sbc a,h			;8629	9c		.
	or e			;862a	b3		.
	sbc a,(hl)		;862b	9e		.
	or e			;862c	b3		.
	sbc a,(hl)		;862d	9e		.
	or e			;862e	b3		.
	sbc a,(hl)		;862f	9e		.
	or e			;8630	b3		.
	sbc a,(hl)		;8631	9e		.
	or e			;8632	b3		.
	sbc a,(hl)		;8633	9e		.
	or a			;8634	b7		.
	sbc a,(hl)		;8635	9e		.
	dec hl			;8636	2b		+
	and (hl)		;8637	a6		.
	dec hl			;8638	2b		+
	and (hl)		;8639	a6		.
	dec hl			;863a	2b		+
	and (hl)		;863b	a6		.
	dec hl			;863c	2b		+
	and (hl)		;863d	a6		.
	cp h			;863e	bc		.
	adc a,d			;863f	8a		.
	ret nc			;8640	d0		.
	adc a,d			;8641	8a		.
	dec hl			;8642	2b		+
	and (hl)		;8643	a6		.
	dec hl			;8644	2b		+
	and (hl)		;8645	a6		.
	call c,0138ah		;8646	dc 8a 13	. . .
	sbc a,a			;8649	9f		.
	dec hl			;864a	2b		+
	and (hl)		;864b	a6		.
	dec hl			;864c	2b		+
	and (hl)		;864d	a6		.
	dec hl			;864e	2b		+
	and (hl)		;864f	a6		.
	dec hl			;8650	2b		+
	and (hl)		;8651	a6		.
	dec hl			;8652	2b		+
	and (hl)		;8653	a6		.
	dec hl			;8654	2b		+
	and (hl)		;8655	a6		.
	dec hl			;8656	2b		+
	and (hl)		;8657	a6		.
	dec hl			;8658	2b		+
	and (hl)		;8659	a6		.
	dec hl			;865a	2b		+
	and (hl)		;865b	a6		.
	out (08fh),a		;865c	d3 8f		. .
	dec hl			;865e	2b		+
	and (hl)		;865f	a6		.
	dec hl			;8660	2b		+
	and (hl)		;8661	a6		.
	dec hl			;8662	2b		+
	and (hl)		;8663	a6		.
	dec hl			;8664	2b		+
	and (hl)		;8665	a6		.
	dec hl			;8666	2b		+
	and (hl)		;8667	a6		.
	scf			;8668	37		7
	and (hl)		;8669	a6		.
	ld b,c			;866a	41		A
	and (hl)		;866b	a6		.
	dec hl			;866c	2b		+
	and (hl)		;866d	a6		.
	dec hl			;866e	2b		+
	and (hl)		;866f	a6		.
	dec hl			;8670	2b		+
	and (hl)		;8671	a6		.
	dec hl			;8672	2b		+
	and (hl)		;8673	a6		.
	dec hl			;8674	2b		+
	and (hl)		;8675	a6		.
	call m,02b95h		;8676	fc 95 2b	. . +
	and (hl)		;8679	a6		.
	add hl,de		;867a	19		.
	sbc a,h			;867b	9c		.
	dec hl			;867c	2b		+
	and (hl)		;867d	a6		.
	dec hl			;867e	2b		+
	and (hl)		;867f	a6		.
	defb 0ddh,09bh,0ddh ;illegal sequence	;8680	dd 9b dd	. . .
	sbc a,e			;8683	9b		.
	cp e			;8684	bb		.
	sbc a,(hl)		;8685	9e		.
	ld bc,0a39fh		;8686	01 9f a3	. . .
	sub (hl)		;8689	96		.
	add hl,hl		;868a	29		)
	sbc a,h			;868b	9c		.
	dec hl			;868c	2b		+
	and (hl)		;868d	a6		.
	dec hl			;868e	2b		+
	and (hl)		;868f	a6		.
	dec hl			;8690	2b		+
	and (hl)		;8691	a6		.
	dec hl			;8692	2b		+
	and (hl)		;8693	a6		.
l8694h:
	dec hl			;8694	2b		+
	and (hl)		;8695	a6		.
	rst 38h			;8696	ff		.
	rst 38h			;8697	ff		.
	rst 38h			;8698	ff		.
	rst 38h			;8699	ff		.
	rst 38h			;869a	ff		.
	rst 38h			;869b	ff		.
	rst 38h			;869c	ff		.
	rst 38h			;869d	ff		.
	rst 38h			;869e	ff		.
	rst 38h			;869f	ff		.
	rst 38h			;86a0	ff		.
	rst 38h			;86a1	ff		.
	rst 38h			;86a2	ff		.
	rst 38h			;86a3	ff		.
	rst 38h			;86a4	ff		.
	rst 38h			;86a5	ff		.
	rst 38h			;86a6	ff		.
	rst 38h			;86a7	ff		.
	rst 38h			;86a8	ff		.
	rst 38h			;86a9	ff		.
	rst 38h			;86aa	ff		.
	rst 38h			;86ab	ff		.
	rst 38h			;86ac	ff		.
	rst 38h			;86ad	ff		.
	rst 38h			;86ae	ff		.
	rst 38h			;86af	ff		.
	rst 38h			;86b0	ff		.
	rst 38h			;86b1	ff		.
l86b2h:
	rst 38h			;86b2	ff		.
	rst 38h			;86b3	ff		.
l86b4h:
	rst 38h			;86b4	ff		.
	rst 38h			;86b5	ff		.
	rst 38h			;86b6	ff		.
	rst 38h			;86b7	ff		.
	rst 38h			;86b8	ff		.
	rst 38h			;86b9	ff		.
	rst 38h			;86ba	ff		.
	rst 38h			;86bb	ff		.
	rst 38h			;86bc	ff		.
	rst 38h			;86bd	ff		.
	rst 38h			;86be	ff		.
	rst 38h			;86bf	ff		.
	call po,0f486h		;86c0	e4 86 f4	. . .
	add a,(hl)		;86c3	86		.
	inc b			;86c4	04		.
	add a,a			;86c5	87		.
	inc d			;86c6	14		.
	add a,a			;86c7	87		.
	inc h			;86c8	24		$
	add a,a			;86c9	87		.
	inc (hl)		;86ca	34		4
	add a,a			;86cb	87		.
	ld b,h			;86cc	44		D
	add a,a			;86cd	87		.
	ld b,h			;86ce	44		D
	add a,a			;86cf	87		.
	ld d,h			;86d0	54		T
	add a,a			;86d1	87		.
	ld h,h			;86d2	64		d
	add a,a			;86d3	87		.
	ld (hl),h		;86d4	74		t
	add a,a			;86d5	87		.
l86d6h:
	add a,h			;86d6	84		.
	add a,a			;86d7	87		.
	sub h			;86d8	94		.
	add a,a			;86d9	87		.
	and h			;86da	a4		.
	add a,a			;86db	87		.
	or h			;86dc	b4		.
	add a,a			;86dd	87		.
	call nz,0c487h		;86de	c4 87 c4	. . .
	add a,a			;86e1	87		.
	call nc,00387h		;86e2	d4 87 03	. . .
	ld de,02214h		;86e5	11 14 22	. . "
	dec h			;86e8	25		%
	inc sp			;86e9	33		3
	ld b,a			;86ea	47		G
	ld b,l			;86eb	45		E
	ld (hl),c		;86ec	71		q
	sub e			;86ed	93		.
	ld (hl),e		;86ee	73		s
	or l			;86ef	b5		.
	jr nc,l86b2h		;86f0	30 c0		0 .
	jr nc,l86b4h		;86f2	30 c0		0 .
	ld sp,04211h		;86f4	31 11 42	1 . B
	ld (03353h),hl		;86f7	22 53 33	" S 3
	djnz l873eh		;86fa	10 42		. B
	jr nz,$+85		;86fc	20 53		  S
	jr nc,l8694h		;86fe	30 94		0 .
l8700h:
	ld d,b			;8700	50		P
	or b			;8701	b0		.
	inc sp			;8702	33		3
	jp 01202h		;8703	c3 02 12	. . .
	inc bc			;8706	03		.
	inc hl			;8707	23		#
	inc b			;8708	04		.
	inc (hl)		;8709	34		4
	dec b			;870a	05		.
	ld b,l			;870b	45		E
	ld d,d			;870c	52		R
	ld d,h			;870d	54		T
	ld b,b			;870e	40		@
	sub b			;870f	90		.
	ld b,c			;8710	41		A
	or e			;8711	b3		.
	jr nc,l86d6h		;8712	30 c2		0 .
	ld bc,00212h		;8714	01 12 02	. . .
	inc hl			;8717	23		#
	inc bc			;8718	03		.
	inc (hl)		;8719	34		4
	inc b			;871a	04		.
	ld b,l			;871b	45		E
	ld h,b			;871c	60		`
	ld d,h			;871d	54		T
	ld b,b			;871e	40		@
	sub d			;871f	92		.
	ld d,b			;8720	50		P
	or e			;8721	b3		.
	inc b			;8722	04		.
	ret nz			;8723	c0		.
	ld h,(hl)		;8724	66		f
	ld d,010h		;8725	16 10		. .
	ld hl,03220h		;8727	21 20 32	!   2
	ld sp,04243h		;872a	31 43 42	1 C B
	ld d,h			;872d	54		T
	ld d,b			;872e	50		P
	sub b			;872f	90		.
l8730h:
	ld b,b			;8730	40		@
	or b			;8731	b0		.
l8732h:
	ld h,b			;8732	60		`
	ret nz			;8733	c0		.
l8734h:
	dec d			;8734	15		.
	ld (de),a		;8735	12		.
	ld (hl),024h		;8736	36 24		6 $
	ld d,a			;8738	57		W
	ld (hl),002h		;8739	36 02		6 .
	ld b,b			;873b	40		@
	inc de			;873c	13		.
	ld d,b			;873d	50		P
l873eh:
	inc b			;873e	04		.
	sub c			;873f	91		.
	inc b			;8740	04		.
	sub c			;8741	91		.
	inc b			;8742	04		.
	sub c			;8743	91		.
	ld bc,00112h		;8744	01 12 01	. . .
	inc hl			;8747	23		#
	ld (de),a		;8748	12		.
	inc (hl)		;8749	34		4
	inc hl			;874a	23		#
	ld b,l			;874b	45		E
	jr nc,l8700h		;874c	30 b2		0 .
	ld b,b			;874e	40		@
	jp 0c340h		;874f	c3 40 c3	. @ .
l8752h:
	ld b,b			;8752	40		@
	jp 00114h		;8753	c3 14 01	. . .
l8756h:
	jr nc,$+18		;8756	30 10		0 .
	ld d,b			;8758	50		P
	ld hl,03470h		;8759	21 70 34	! p 4
	dec h			;875c	25		%
	ld b,d			;875d	42		B
	ld (04752h),hl		;875e	22 52 47	" R G
	sub h			;8761	94		.
	ld b,a			;8762	47		G
	sub h			;8763	94		.
	jr nc,$+18		;8764	30 10		0 .
	ld b,b			;8766	40		@
	ld hl,03350h		;8767	21 50 33	! P 3
	ld h,b			;876a	60		`
	ld b,h			;876b	44		D
	ld (hl),c		;876c	71		q
	sub e			;876d	93		.
	ld (hl),e		;876e	73		s
	or l			;876f	b5		.
	jr nc,l8732h		;8770	30 c0		0 .
	jr nc,l8734h		;8772	30 c0		0 .
	ld sp,04211h		;8774	31 11 42	1 . B
	ld (03353h),hl		;8777	22 53 33	" S 3
	ld b,b			;877a	40		@
	ld b,c			;877b	41		A
	ld d,b			;877c	50		P
	ld d,e			;877d	53		S
	ld h,b			;877e	60		`
	sub h			;877f	94		.
l8780h:
	ld d,b			;8780	50		P
	or b			;8781	b0		.
	inc sp			;8782	33		3
	jp 01130h		;8783	c3 30 11	. 0 .
	ld b,b			;8786	40		@
	ld (03350h),hl		;8787	22 50 33	" P 3
	ld h,b			;878a	60		`
	ld b,h			;878b	44		D
	ld d,d			;878c	52		R
	ld d,h			;878d	54		T
	ld b,b			;878e	40		@
	sub b			;878f	90		.
	ld b,c			;8790	41		A
	or e			;8791	b3		.
	jr nc,l8756h		;8792	30 c2		0 .
	jr nc,$+18		;8794	30 10		0 .
	ld b,b			;8796	40		@
	ld hl,03350h		;8797	21 50 33	! P 3
	ld h,b			;879a	60		`
	ld b,h			;879b	44		D
	ld h,b			;879c	60		`
	ld d,b			;879d	50		P
	jr nz,l8730h		;879e	20 90		  .
	ld b,b			;87a0	40		@
	or b			;87a1	b0		.
	inc b			;87a2	04		.
	ret nz			;87a3	c0		.
	ld h,l			;87a4	65		e
	ld d,030h		;87a5	16 30		. 0
	ld hl,03140h		;87a7	21 40 31	! @ 1
	ld h,c			;87aa	61		a
	ld b,h			;87ab	44		D
	ld (hl),b		;87ac	70		p
	ld d,(hl)		;87ad	56		V
	ld d,b			;87ae	50		P
	sub b			;87af	90		.
	ld b,b			;87b0	40		@
	or b			;87b1	b0		.
	ld h,b			;87b2	60		`
	ret nz			;87b3	c0		.
	ld b,b			;87b4	40		@
	ld de,02350h		;87b5	11 50 23	. P #
	ld h,b			;87b8	60		`
	inc (hl)		;87b9	34		4
	ld (bc),a		;87ba	02		.
	ld b,b			;87bb	40		@
	inc de			;87bc	13		.
	ld d,b			;87bd	50		P
	jr nz,$-110		;87be	20 90		  .
	jr nz,l8752h		;87c0	20 90		  .
	jr nz,$-110		;87c2	20 90		  .
	ld bc,00112h		;87c4	01 12 01	. . .
	inc hl			;87c7	23		#
	ld (de),a		;87c8	12		.
	inc (hl)		;87c9	34		4
	inc hl			;87ca	23		#
	ld b,l			;87cb	45		E
	jr nc,l8780h		;87cc	30 b2		0 .
	ld b,b			;87ce	40		@
	jp 0c340h		;87cf	c3 40 c3	. @ .
	ld b,b			;87d2	40		@
	jp 00040h		;87d3	c3 40 00	. @ .
	jr nc,l87e8h		;87d6	30 10		0 .
	ld d,b			;87d8	50		P
	ld hl,03470h		;87d9	21 70 34	! p 4
	ld (hl),b		;87dc	70		p
	ld b,b			;87dd	40		@
	ld (07052h),hl		;87de	22 52 70	" R p
	sub h			;87e1	94		.
	ld (hl),b		;87e2	70		p
	sub h			;87e3	94		.
	or 087h			;87e4	f6 87		. .
	cp 087h			;87e6	fe 87		. .
l87e8h:
	ld b,088h		;87e8	06 88		. .
	ld c,088h		;87ea	0e 88		. .
	ld d,088h		;87ec	16 88		. .
	ld e,088h		;87ee	1e 88		. .
	ld h,088h		;87f0	26 88		& .
	ld l,088h		;87f2	2e 88		. .
	ld (hl),088h		;87f4	36 88		6 .
	nop			;87f6	00		.
	nop			;87f7	00		.
	ld (bc),a		;87f8	02		.
	ld (bc),a		;87f9	02		.
	adc a,0cfh		;87fa	ce cf		. .
	ret nc			;87fc	d0		.
	pop de			;87fd	d1		.
	nop			;87fe	00		.
	nop			;87ff	00		.
	ld (bc),a		;8800	02		.
	ld (bc),a		;8801	02		.
	jp nc,0d4d3h		;8802	d2 d3 d4	. . .
	push de			;8805	d5		.
	nop			;8806	00		.
	nop			;8807	00		.
	ld (bc),a		;8808	02		.
	ld (bc),a		;8809	02		.
	sub 0d7h		;880a	d6 d7		. .
	ret c			;880c	d8		.
	exx			;880d	d9		.
	nop			;880e	00		.
	nop			;880f	00		.
	ld (bc),a		;8810	02		.
	ld (bc),a		;8811	02		.
	jp c,0dcdbh		;8812	da db dc	. . .
	defb 0ddh,000h,000h ;illegal sequence	;8815	dd 00 00	. . .
	ld (bc),a		;8818	02		.
	ld (bc),a		;8819	02		.
	sbc a,0dfh		;881a	de df		. .
	ret po			;881c	e0		.
	pop hl			;881d	e1		.
	nop			;881e	00		.
	nop			;881f	00		.
	ld (bc),a		;8820	02		.
	ld (bc),a		;8821	02		.
	jp po,0e4e3h		;8822	e2 e3 e4	. . .
	push hl			;8825	e5		.
	nop			;8826	00		.
	nop			;8827	00		.
	ld (bc),a		;8828	02		.
	ld (bc),a		;8829	02		.
	and 0e7h		;882a	e6 e7		. .
	ret pe			;882c	e8		.
	jp (hl)			;882d	e9		.
	nop			;882e	00		.
	nop			;882f	00		.
	ld (bc),a		;8830	02		.
	ld (bc),a		;8831	02		.
	jp po,0e4e3h		;8832	e2 e3 e4	. . .
	push hl			;8835	e5		.
	nop			;8836	00		.
	nop			;8837	00		.
	ld (bc),a		;8838	02		.
	ld (bc),a		;8839	02		.
	and 0e7h		;883a	e6 e7		. .
	ret pe			;883c	e8		.
	jp (hl)			;883d	e9		.
	ld e,h			;883e	5c		\
	adc a,b			;883f	88		.
	sub d			;8840	92		.
	adc a,b			;8841	88		.
	ret z			;8842	c8		.
	adc a,b			;8843	88		.
	call pe,00888h		;8844	ec 88 08	. . .
	adc a,c			;8847	89		.
	inc l			;8848	2c		,
	adc a,c			;8849	89		.
	ld d,b			;884a	50		P
	adc a,c			;884b	89		.
	ld (hl),a		;884c	77		w
	adc a,c			;884d	89		.
	and e			;884e	a3		.
	adc a,c			;884f	89		.
	rst 8			;8850	cf		.
	adc a,c			;8851	89		.
	or 089h			;8852	f6 89		. .
	ld (de),a		;8854	12		.
	adc a,d			;8855	8a		.
	ld (hl),08ah		;8856	36 8a		6 .
	ld h,d			;8858	62		b
	adc a,d			;8859	8a		.
	ld l,d			;885a	6a		j
	adc a,d			;885b	8a		.
	nop			;885c	00		.
	nop			;885d	00		.
	dec b			;885e	05		.
	ld a,(bc)		;885f	0a		.
	nop			;8860	00		.
	ld bc,05002h		;8861	01 02 50	. . P
	ld d,c			;8864	51		Q
	ld d,d			;8865	52		R
	ld d,e			;8866	53		S
	inc bc			;8867	03		.
	nop			;8868	00		.
	nop			;8869	00		.
	inc b			;886a	04		.
	ld d,h			;886b	54		T
	ld d,l			;886c	55		U
	ld d,(hl)		;886d	56		V
	ld d,a			;886e	57		W
	ld e,b			;886f	58		X
	ld e,c			;8870	59		Y
	ld e,d			;8871	5a		Z
	dec b			;8872	05		.
	ld b,000h		;8873	06 00		. .
	nop			;8875	00		.
	rlca			;8876	07		.
	ld e,e			;8877	5b		[
	ld e,h			;8878	5c		\
	ld e,l			;8879	5d		]
	ld e,(hl)		;887a	5e		^
	ld e,a			;887b	5f		_
	ld h,b			;887c	60		`
	ex af,af'		;887d	08		.
	nop			;887e	00		.
	nop			;887f	00		.
	nop			;8880	00		.
	nop			;8881	00		.
	nop			;8882	00		.
	nop			;8883	00		.
	nop			;8884	00		.
	add hl,bc		;8885	09		.
	ld h,c			;8886	61		a
	ld a,(bc)		;8887	0a		.
	nop			;8888	00		.
	nop			;8889	00		.
	nop			;888a	00		.
	nop			;888b	00		.
	nop			;888c	00		.
	nop			;888d	00		.
	nop			;888e	00		.
	nop			;888f	00		.
	dec bc			;8890	0b		.
	ld h,d			;8891	62		b
	nop			;8892	00		.
	nop			;8893	00		.
	dec b			;8894	05		.
	ld a,(bc)		;8895	0a		.
	nop			;8896	00		.
	nop			;8897	00		.
	nop			;8898	00		.
	nop			;8899	00		.
	nop			;889a	00		.
	nop			;889b	00		.
	nop			;889c	00		.
	nop			;889d	00		.
	dec bc			;889e	0b		.
	ld h,d			;889f	62		b
	nop			;88a0	00		.
	nop			;88a1	00		.
	nop			;88a2	00		.
	nop			;88a3	00		.
	nop			;88a4	00		.
	nop			;88a5	00		.
	nop			;88a6	00		.
	add hl,bc		;88a7	09		.
	ld h,c			;88a8	61		a
	ld a,(bc)		;88a9	0a		.
	nop			;88aa	00		.
	nop			;88ab	00		.
	rlca			;88ac	07		.
	ld e,e			;88ad	5b		[
	ld e,h			;88ae	5c		\
	ld e,l			;88af	5d		]
	ld e,(hl)		;88b0	5e		^
	ld e,a			;88b1	5f		_
	ld h,b			;88b2	60		`
	ex af,af'		;88b3	08		.
	inc b			;88b4	04		.
	ld d,h			;88b5	54		T
	ld d,l			;88b6	55		U
	ld d,(hl)		;88b7	56		V
	ld d,a			;88b8	57		W
	ld e,b			;88b9	58		X
	ld e,c			;88ba	59		Y
	ld e,d			;88bb	5a		Z
	dec b			;88bc	05		.
	ld b,000h		;88bd	06 00		. .
	ld bc,05002h		;88bf	01 02 50	. . P
	ld d,c			;88c2	51		Q
	ld d,d			;88c3	52		R
	ld d,e			;88c4	53		S
	inc bc			;88c5	03		.
	nop			;88c6	00		.
	nop			;88c7	00		.
	nop			;88c8	00		.
	nop			;88c9	00		.
	ex af,af'		;88ca	08		.
	inc b			;88cb	04		.
	nop			;88cc	00		.
	ld h,063h		;88cd	26 63		& c
	ld h,h			;88cf	64		d
	nop			;88d0	00		.
	daa			;88d1	27		'
	ld h,l			;88d2	65		e
	ld h,(hl)		;88d3	66		f
	ld l,d			;88d4	6a		j
	ld l,e			;88d5	6b		k
	rst 0			;88d6	c7		.
	ld l,h			;88d7	6c		l
	ld (hl),c		;88d8	71		q
	ld (hl),d		;88d9	72		r
	ret z			;88da	c8		.
	ld (hl),e		;88db	73		s
	ld (hl),c		;88dc	71		q
	ld (hl),d		;88dd	72		r
	ret z			;88de	c8		.
	ld (hl),e		;88df	73		s
	ld l,d			;88e0	6a		j
	ld l,e			;88e1	6b		k
	rst 0			;88e2	c7		.
	ld l,h			;88e3	6c		l
	nop			;88e4	00		.
	daa			;88e5	27		'
	ld h,l			;88e6	65		e
	ld h,(hl)		;88e7	66		f
	nop			;88e8	00		.
	ld h,063h		;88e9	26 63		& c
	ld h,h			;88eb	64		d
	ld bc,006fch		;88ec	01 fc 06	. . .
	inc b			;88ef	04		.
	sub (hl)		;88f0	96		.
	rla			;88f1	17		.
	jr l88f4h		;88f2	18 00		. .
l88f4h:
	nop			;88f4	00		.
	nop			;88f5	00		.
	add hl,de		;88f6	19		.
	sub a			;88f7	97		.
	nop			;88f8	00		.
	nop			;88f9	00		.
	nop			;88fa	00		.
	sbc a,b			;88fb	98		.
	nop			;88fc	00		.
	nop			;88fd	00		.
	nop			;88fe	00		.
	sbc a,b			;88ff	98		.
	nop			;8900	00		.
	nop			;8901	00		.
	add hl,de		;8902	19		.
	sub a			;8903	97		.
	sub (hl)		;8904	96		.
	rla			;8905	17		.
	jr l8908h		;8906	18 00		. .
l8908h:
	nop			;8908	00		.
	call m,00408h		;8909	fc 08 04	. . .
	ld a,(de)		;890c	1a		.
	nop			;890d	00		.
	nop			;890e	00		.
	nop			;890f	00		.
	dec de			;8910	1b		.
	sbc a,c			;8911	99		.
	inc e			;8912	1c		.
	nop			;8913	00		.
	nop			;8914	00		.
	nop			;8915	00		.
	dec e			;8916	1d		.
	sbc a,d			;8917	9a		.
	nop			;8918	00		.
	nop			;8919	00		.
	nop			;891a	00		.
	ld e,000h		;891b	1e 00		. .
	nop			;891d	00		.
	nop			;891e	00		.
	ld e,000h		;891f	1e 00		. .
	nop			;8921	00		.
	dec e			;8922	1d		.
	sbc a,d			;8923	9a		.
	dec de			;8924	1b		.
	sbc a,c			;8925	99		.
	inc e			;8926	1c		.
	nop			;8927	00		.
	ld a,(de)		;8928	1a		.
	nop			;8929	00		.
	nop			;892a	00		.
	nop			;892b	00		.
	nop			;892c	00		.
	call m,00408h		;892d	fc 08 04	. . .
	sbc a,e			;8930	9b		.
	jr l8933h		;8931	18 00		. .
l8933h:
	nop			;8933	00		.
	nop			;8934	00		.
	jr nz,l8958h		;8935	20 21		  !
	ld (00000h),hl		;8937	22 00 00	" . .
	inc h			;893a	24		$
	sbc a,h			;893b	9c		.
	nop			;893c	00		.
	nop			;893d	00		.
	inc hl			;893e	23		#
	dec h			;893f	25		%
	nop			;8940	00		.
	nop			;8941	00		.
	inc hl			;8942	23		#
	dec h			;8943	25		%
	nop			;8944	00		.
	nop			;8945	00		.
	inc h			;8946	24		$
	sbc a,h			;8947	9c		.
	nop			;8948	00		.
	jr nz,l896ch		;8949	20 21		  !
	ld (0189bh),hl		;894b	22 9b 18	" . .
	nop			;894e	00		.
	nop			;894f	00		.
	defb 0fdh,004h,007h ;illegal sequence	;8950	fd 04 07	. . .
	dec b			;8953	05		.
	nop			;8954	00		.
	ld hl,(02bach)		;8955	2a ac 2b	* . +
l8958h:
	inc l			;8958	2c		,
	dec l			;8959	2d		-
	ld l,0adh		;895a	2e ad		. .
	cpl			;895c	2f		/
	nop			;895d	00		.
	xor (hl)		;895e	ae		.
	nop			;895f	00		.
	xor a			;8960	af		.
	nop			;8961	00		.
	nop			;8962	00		.
	xor c			;8963	a9		.
	xor d			;8964	aa		.
	sbc a,l			;8965	9d		.
	sbc a,(hl)		;8966	9e		.
	sbc a,a			;8967	9f		.
	ld h,a			;8968	67		g
	ld l,b			;8969	68		h
	ld l,c			;896a	69		i
	and b			;896b	a0		.
l896ch:
	and c			;896c	a1		.
	ld l,l			;896d	6d		m
	ld l,(hl)		;896e	6e		n
	ld l,a			;896f	6f		o
	ld (hl),b		;8970	70		p
	or c			;8971	b1		.
	ld (hl),h		;8972	74		t
	ld (hl),l		;8973	75		u
	halt			;8974	76		v
	ld (hl),a		;8975	77		w
	ld a,b			;8976	78		x
	call m,00804h		;8977	fc 04 08	. . .
	dec b			;897a	05		.
	jr nc,l89aeh		;897b	30 31		0 1
	nop			;897d	00		.
	nop			;897e	00		.
	nop			;897f	00		.
	and d			;8980	a2		.
	nop			;8981	00		.
	nop			;8982	00		.
	nop			;8983	00		.
	nop			;8984	00		.
	and e			;8985	a3		.
	nop			;8986	00		.
	inc sp			;8987	33		3
	inc (hl)		;8988	34		4
	and (hl)		;8989	a6		.
	and h			;898a	a4		.
	ld (0b0a7h),a		;898b	32 a7 b0	2 . .
	nop			;898e	00		.
	xor c			;898f	a9		.
	and l			;8990	a5		.
	xor b			;8991	a8		.
	sbc a,(hl)		;8992	9e		.
	sbc a,a			;8993	9f		.
	ld h,a			;8994	67		g
	ld l,b			;8995	68		h
	ld l,c			;8996	69		i
	and b			;8997	a0		.
	and c			;8998	a1		.
	ld l,l			;8999	6d		m
	ld l,(hl)		;899a	6e		n
	ld l,a			;899b	6f		o
	ld (hl),b		;899c	70		p
	or c			;899d	b1		.
	ld (hl),h		;899e	74		t
	ld (hl),l		;899f	75		u
	halt			;89a0	76		v
	ld (hl),a		;89a1	77		w
	ld a,b			;89a2	78		x
	inc b			;89a3	04		.
	inc b			;89a4	04		.
	ex af,af'		;89a5	08		.
	dec b			;89a6	05		.
	ld (hl),h		;89a7	74		t
	ld (hl),l		;89a8	75		u
	halt			;89a9	76		v
	ld (hl),a		;89aa	77		w
	ld a,b			;89ab	78		x
	ld l,l			;89ac	6d		m
	ld l,(hl)		;89ad	6e		n
l89aeh:
	ld l,a			;89ae	6f		o
	ld (hl),b		;89af	70		p
	or c			;89b0	b1		.
	ld h,a			;89b1	67		g
	ld l,b			;89b2	68		h
	ld l,c			;89b3	69		i
	and b			;89b4	a0		.
	and c			;89b5	a1		.
	xor c			;89b6	a9		.
	xor d			;89b7	aa		.
	xor b			;89b8	a8		.
	sbc a,(hl)		;89b9	9e		.
	sbc a,a			;89ba	9f		.
	and h			;89bb	a4		.
	ld (0b0a7h),a		;89bc	32 a7 b0	2 . .
	nop			;89bf	00		.
	and e			;89c0	a3		.
	nop			;89c1	00		.
	inc sp			;89c2	33		3
	inc (hl)		;89c3	34		4
	and (hl)		;89c4	a6		.
	and d			;89c5	a2		.
	nop			;89c6	00		.
	nop			;89c7	00		.
	nop			;89c8	00		.
	nop			;89c9	00		.
	jr nc,l89fdh		;89ca	30 31		0 1
	nop			;89cc	00		.
	nop			;89cd	00		.
	nop			;89ce	00		.
	inc b			;89cf	04		.
	inc b			;89d0	04		.
	rlca			;89d1	07		.
	dec b			;89d2	05		.
	ld (hl),h		;89d3	74		t
l89d4h:
	ld (hl),l		;89d4	75		u
	halt			;89d5	76		v
	ld (hl),a		;89d6	77		w
	ld a,b			;89d7	78		x
	ld l,l			;89d8	6d		m
	ld l,(hl)		;89d9	6e		n
	ld l,a			;89da	6f		o
	ld (hl),b		;89db	70		p
	or c			;89dc	b1		.
	ld h,a			;89dd	67		g
	ld l,b			;89de	68		h
	ld l,c			;89df	69		i
	and b			;89e0	a0		.
	and c			;89e1	a1		.
	xor c			;89e2	a9		.
	xor d			;89e3	aa		.
	sbc a,l			;89e4	9d		.
	sbc a,(hl)		;89e5	9e		.
	sbc a,a			;89e6	9f		.
	xor (hl)		;89e7	ae		.
l89e8h:
	nop			;89e8	00		.
	xor a			;89e9	af		.
	nop			;89ea	00		.
	nop			;89eb	00		.
	dec l			;89ec	2d		-
	ld l,0adh		;89ed	2e ad		. .
	cpl			;89ef	2f		/
	nop			;89f0	00		.
	nop			;89f1	00		.
	ld hl,(02bach)		;89f2	2a ac 2b	* . +
	inc l			;89f5	2c		,
	ld bc,00609h		;89f6	01 09 06	. . .
	inc b			;89f9	04		.
	dec c			;89fa	0d		.
	ld a,(hl)		;89fb	7e		~
	ld a,a			;89fc	7f		.
l89fdh:
	add a,b			;89fd	80		.
	ld a,e			;89fe	7b		{
	add a,c			;89ff	81		.
	add a,d			;8a00	82		.
	add a,e			;8a01	83		.
	ld a,c			;8a02	79		y
	ld a,d			;8a03	7a		z
	or e			;8a04	b3		.
	jr z,l8a80h		;8a05	28 79		( y
	ld a,d			;8a07	7a		z
	or d			;8a08	b2		.
	jr z,$+125		;8a09	28 7b		( {
	add a,c			;8a0b	81		.
	add a,d			;8a0c	82		.
	add a,e			;8a0d	83		.
	dec c			;8a0e	0d		.
	ld a,(hl)		;8a0f	7e		~
	ld a,a			;8a10	7f		.
	add a,b			;8a11	80		.
	nop			;8a12	00		.
	add hl,bc		;8a13	09		.
	ex af,af'		;8a14	08		.
	inc b			;8a15	04		.
	nop			;8a16	00		.
	rrca			;8a17	0f		.
	add a,h			;8a18	84		.
	add a,l			;8a19	85		.
	ld c,086h		;8a1a	0e 86		. .
	add a,a			;8a1c	87		.
	adc a,b			;8a1d	88		.
	ld a,h			;8a1e	7c		|
	adc a,c			;8a1f	89		.
	adc a,d			;8a20	8a		.
	adc a,e			;8a21	8b		.
	ld a,c			;8a22	79		y
	ld a,d			;8a23	7a		z
	or e			;8a24	b3		.
	jr z,l8aa0h		;8a25	28 79		( y
	ld a,d			;8a27	7a		z
	or d			;8a28	b2		.
	jr z,l8aa7h		;8a29	28 7c		( |
	adc a,c			;8a2b	89		.
	adc a,d			;8a2c	8a		.
	adc a,e			;8a2d	8b		.
	ld c,086h		;8a2e	0e 86		. .
	add a,a			;8a30	87		.
	adc a,b			;8a31	88		.
	nop			;8a32	00		.
	rrca			;8a33	0f		.
	add a,h			;8a34	84		.
	add a,l			;8a35	85		.
	rst 38h			;8a36	ff		.
	add hl,bc		;8a37	09		.
	ld a,(bc)		;8a38	0a		.
	inc b			;8a39	04		.
	nop			;8a3a	00		.
	ld (de),a		;8a3b	12		.
	adc a,h			;8a3c	8c		.
	inc de			;8a3d	13		.
	ld de,l8e8dh		;8a3e	11 8d 8e	. . .
	adc a,a			;8a41	8f		.
	djnz l89d4h		;8a42	10 90		. .
	sub c			;8a44	91		.
	sub d			;8a45	92		.
	ld a,l			;8a46	7d		}
	sub e			;8a47	93		.
	sub h			;8a48	94		.
	sub l			;8a49	95		.
	ld a,c			;8a4a	79		y
	ld a,d			;8a4b	7a		z
	or e			;8a4c	b3		.
	jr z,l8ac8h		;8a4d	28 79		( y
l8a4fh:
	ld a,d			;8a4f	7a		z
	or d			;8a50	b2		.
	jr z,l8ad0h		;8a51	28 7d		( }
	sub e			;8a53	93		.
	sub h			;8a54	94		.
	sub l			;8a55	95		.
	djnz l89e8h		;8a56	10 90		. .
	sub c			;8a58	91		.
	sub d			;8a59	92		.
	ld de,l8e8dh		;8a5a	11 8d 8e	. . .
	adc a,a			;8a5d	8f		.
	nop			;8a5e	00		.
	ld (de),a		;8a5f	12		.
	adc a,h			;8a60	8c		.
	inc de			;8a61	13		.
	ld (bc),a		;8a62	02		.
	ld (bc),a		;8a63	02		.
	inc b			;8a64	04		.
	ld bc,0cac9h		;8a65	01 c9 ca	. . .
	jp z,002c9h		;8a68	ca c9 02	. . .
	ld (bc),a		;8a6b	02		.
	inc b			;8a6c	04		.
	ld bc,0cbabh		;8a6d	01 ab cb	. . .
	res 5,e			;8a70	cb ab		. .
	ld b,l			;8a72	45		E
	adc a,l			;8a73	8d		.
	ld e,l			;8a74	5d		]
	adc a,l			;8a75	8d		.
	ld h,l			;8a76	65		e
	adc a,l			;8a77	8d		.
	ld l,l			;8a78	6d		m
	adc a,l			;8a79	8d		.
	ld (hl),l		;8a7a	75		u
	adc a,l			;8a7b	8d		.
	ld e,l			;8a7c	5d		]
	adc a,l			;8a7d	8d		.
	ld e,l			;8a7e	5d		]
	adc a,l			;8a7f	8d		.
l8a80h:
	ld e,l			;8a80	5d		]
	adc a,l			;8a81	8d		.
	ld e,l			;8a82	5d		]
	adc a,l			;8a83	8d		.
	ld hl,02d8dh		;8a84	21 8d 2d	! . -
	adc a,l			;8a87	8d		.
	and c			;8a88	a1		.
	adc a,l			;8a89	8d		.
	or c			;8a8a	b1		.
	adc a,l			;8a8b	8d		.
	pop bc			;8a8c	c1		.
	adc a,l			;8a8d	8d		.
	pop de			;8a8e	d1		.
	adc a,l			;8a8f	8d		.
	pop hl			;8a90	e1		.
	adc a,l			;8a91	8d		.
	pop af			;8a92	f1		.
	adc a,l			;8a93	8d		.
	ld bc,0118eh		;8a94	01 8e 11	. . .
	adc a,(hl)		;8a97	8e		.
	ld hl,0438eh		;8a98	21 8e 43	! . C
	adc a,(hl)		;8a9b	8e		.
	ld h,l			;8a9c	65		e
	adc a,(hl)		;8a9d	8e		.
	add a,a			;8a9e	87		.
	adc a,(hl)		;8a9f	8e		.
l8aa0h:
	xor c			;8aa0	a9		.
	adc a,(hl)		;8aa1	8e		.
	res 1,(hl)		;8aa2	cb 8e		. .
	defb 0edh ;next byte illegal after ed	;8aa4	ed		.
	adc a,(hl)		;8aa5	8e		.
	rrca			;8aa6	0f		.
l8aa7h:
	adc a,a			;8aa7	8f		.
	ld sp,0418fh		;8aa8	31 8f 41	1 . A
	adc a,a			;8aab	8f		.
	ld d,c			;8aac	51		Q
	adc a,a			;8aad	8f		.
	ld h,c			;8aae	61		a
	adc a,a			;8aaf	8f		.
	ld (hl),c		;8ab0	71		q
	adc a,a			;8ab1	8f		.
	add a,c			;8ab2	81		.
	adc a,a			;8ab3	8f		.
	sub c			;8ab4	91		.
	adc a,a			;8ab5	8f		.
	and c			;8ab6	a1		.
	adc a,a			;8ab7	8f		.
	ld a,l			;8ab8	7d		}
	adc a,l			;8ab9	8d		.
	adc a,c			;8aba	89		.
	adc a,l			;8abb	8d		.
	call c,0038ah		;8abc	dc 8a 03	. . .
	adc a,e			;8abf	8b		.
	dec h			;8ac0	25		%
	adc a,e			;8ac1	8b		.
	jr nc,l8a4fh		;8ac2	30 8b		0 .
	ld b,d			;8ac4	42		B
	adc a,e			;8ac5	8b		.
	ld e,e			;8ac6	5b		[
	adc a,e			;8ac7	8b		.
l8ac8h:
	ld (hl),h		;8ac8	74		t
	adc a,e			;8ac9	8b		.
	ld a,(hl)		;8aca	7e		~
	adc a,e			;8acb	8b		.
	adc a,(hl)		;8acc	8e		.
	adc a,e			;8acd	8b		.
	and h			;8ace	a4		.
	adc a,e			;8acf	8b		.
l8ad0h:
	ret nz			;8ad0	c0		.
	adc a,e			;8ad1	8b		.
	inc d			;8ad2	14		.
	adc a,h			;8ad3	8c		.
	ld l,b			;8ad4	68		h
	adc a,h			;8ad5	8c		.
	cp h			;8ad6	bc		.
	adc a,h			;8ad7	8c		.
	djnz $-113		;8ad8	10 8d		. .
	inc e			;8ada	1c		.
	adc a,l			;8adb	8d		.
	nop			;8adc	00		.
	nop			;8add	00		.
	dec b			;8ade	05		.
	rlca			;8adf	07		.
	nop			;8ae0	00		.
	nop			;8ae1	00		.
	nop			;8ae2	00		.
	nop			;8ae3	00		.
	nop			;8ae4	00		.
	nop			;8ae5	00		.
	nop			;8ae6	00		.
	nop			;8ae7	00		.
	nop			;8ae8	00		.
	nop			;8ae9	00		.
	nop			;8aea	00		.
	nop			;8aeb	00		.
	nop			;8aec	00		.
	nop			;8aed	00		.
	nop			;8aee	00		.
	nop			;8aef	00		.
	nop			;8af0	00		.
	nop			;8af1	00		.
	nop			;8af2	00		.
	or h			;8af3	b4		.
	and a			;8af4	a7		.
	nop			;8af5	00		.
	nop			;8af6	00		.
	nop			;8af7	00		.
	or a			;8af8	b7		.
	and (hl)		;8af9	a6		.
	sub e			;8afa	93		.
	sub h			;8afb	94		.
	nop			;8afc	00		.
	or a			;8afd	b7		.
	and (hl)		;8afe	a6		.
	sub e			;8aff	93		.
	sub h			;8b00	94		.
	sub l			;8b01	95		.
	sub (hl)		;8b02	96		.
	nop			;8b03	00		.
	nop			;8b04	00		.
	dec b			;8b05	05		.
	ld b,000h		;8b06	06 00		. .
	nop			;8b08	00		.
	nop			;8b09	00		.
	inc de			;8b0a	13		.
	dec d			;8b0b	15		.
	nop			;8b0c	00		.
	nop			;8b0d	00		.
	nop			;8b0e	00		.
	cp b			;8b0f	b8		.
	ld de,0b918h		;8b10	11 18 b9	. . .
	xor b			;8b13	a8		.
	xor c			;8b14	a9		.
	xor c			;8b15	a9		.
	xor d			;8b16	aa		.
	xor e			;8b17	ab		.
	nop			;8b18	00		.
	add a,(hl)		;8b19	86		.
	dec hl			;8b1a	2b		+
	inc l			;8b1b	2c		,
	sub d			;8b1c	92		.
	sbc a,e			;8b1d	9b		.
	nop			;8b1e	00		.
	and b			;8b1f	a0		.
	ld a,(de)		;8b20	1a		.
	inc e			;8b21	1c		.
	and l			;8b22	a5		.
	sbc a,d			;8b23	9a		.
	nop			;8b24	00		.
	nop			;8b25	00		.
	nop			;8b26	00		.
	ld bc,00007h		;8b27	01 07 00	. . .
	adc a,a			;8b2a	8f		.
	add a,a			;8b2b	87		.
	sub a			;8b2c	97		.
	sbc a,a			;8b2d	9f		.
	sbc a,a			;8b2e	9f		.
	sbc a,a			;8b2f	9f		.
	nop			;8b30	00		.
	nop			;8b31	00		.
	ld (bc),a		;8b32	02		.
	rlca			;8b33	07		.
	nop			;8b34	00		.
	adc a,a			;8b35	8f		.
	add a,a			;8b36	87		.
	sub a			;8b37	97		.
	sbc a,a			;8b38	9f		.
	sbc a,a			;8b39	9f		.
	sbc a,a			;8b3a	9f		.
	cp b			;8b3b	b8		.
	ld de,0b918h		;8b3c	11 18 b9	. . .
	sbc a,l			;8b3f	9d		.
	sub c			;8b40	91		.
	nop			;8b41	00		.
	nop			;8b42	00		.
	nop			;8b43	00		.
	inc bc			;8b44	03		.
	rlca			;8b45	07		.
	nop			;8b46	00		.
	adc a,a			;8b47	8f		.
	add a,a			;8b48	87		.
	sub a			;8b49	97		.
	sbc a,a			;8b4a	9f		.
	sbc a,a			;8b4b	9f		.
	sbc a,a			;8b4c	9f		.
	cp b			;8b4d	b8		.
	ld de,0b918h		;8b4e	11 18 b9	. . .
	sbc a,l			;8b51	9d		.
	sub c			;8b52	91		.
	nop			;8b53	00		.
	nop			;8b54	00		.
	ld (de),a		;8b55	12		.
	inc d			;8b56	14		.
	nop			;8b57	00		.
	nop			;8b58	00		.
	nop			;8b59	00		.
	nop			;8b5a	00		.
	nop			;8b5b	00		.
	nop			;8b5c	00		.
	inc bc			;8b5d	03		.
	rlca			;8b5e	07		.
	nop			;8b5f	00		.
	adc a,a			;8b60	8f		.
	add a,a			;8b61	87		.
	sub a			;8b62	97		.
	sbc a,a			;8b63	9f		.
	sbc a,a			;8b64	9f		.
	sbc a,a			;8b65	9f		.
	cp b			;8b66	b8		.
	ld de,0b918h		;8b67	11 18 b9	. . .
	sbc a,l			;8b6a	9d		.
	sub c			;8b6b	91		.
	nop			;8b6c	00		.
	nop			;8b6d	00		.
	ld (de),a		;8b6e	12		.
	inc d			;8b6f	14		.
	nop			;8b70	00		.
	nop			;8b71	00		.
	nop			;8b72	00		.
	nop			;8b73	00		.
	nop			;8b74	00		.
	nop			;8b75	00		.
	ld bc,l9006h		;8b76	01 06 90	. . .
	dec de			;8b79	1b		.
	dec e			;8b7a	1d		.
	sbc a,h			;8b7b	9c		.
	sbc a,e			;8b7c	9b		.
	nop			;8b7d	00		.
	nop			;8b7e	00		.
	nop			;8b7f	00		.
	ld (bc),a		;8b80	02		.
	ld b,090h		;8b81	06 90		. .
	dec de			;8b83	1b		.
	dec e			;8b84	1d		.
	sbc a,h			;8b85	9c		.
	sbc a,e			;8b86	9b		.
	nop			;8b87	00		.
	sbc a,l			;8b88	9d		.
	sub c			;8b89	91		.
	nop			;8b8a	00		.
	sbc a,(hl)		;8b8b	9e		.
	xor e			;8b8c	ab		.
	nop			;8b8d	00		.
	nop			;8b8e	00		.
	nop			;8b8f	00		.
	inc bc			;8b90	03		.
	ld b,090h		;8b91	06 90		. .
	dec de			;8b93	1b		.
	dec e			;8b94	1d		.
	sbc a,h			;8b95	9c		.
	sbc a,e			;8b96	9b		.
	nop			;8b97	00		.
	sbc a,l			;8b98	9d		.
	sub c			;8b99	91		.
	nop			;8b9a	00		.
	sbc a,(hl)		;8b9b	9e		.
	xor e			;8b9c	ab		.
	nop			;8b9d	00		.
	nop			;8b9e	00		.
	nop			;8b9f	00		.
	cp b			;8ba0	b8		.
	ld de,0b918h		;8ba1	11 18 b9	. . .
	nop			;8ba4	00		.
	nop			;8ba5	00		.
	inc b			;8ba6	04		.
	ld b,090h		;8ba7	06 90		. .
	dec de			;8ba9	1b		.
	dec e			;8baa	1d		.
	sbc a,h			;8bab	9c		.
	sbc a,e			;8bac	9b		.
	nop			;8bad	00		.
	sbc a,l			;8bae	9d		.
	sub c			;8baf	91		.
	nop			;8bb0	00		.
	sbc a,(hl)		;8bb1	9e		.
	xor e			;8bb2	ab		.
	nop			;8bb3	00		.
	nop			;8bb4	00		.
	nop			;8bb5	00		.
	cp b			;8bb6	b8		.
	ld de,0b918h		;8bb7	11 18 b9	. . .
	nop			;8bba	00		.
	nop			;8bbb	00		.
	nop			;8bbc	00		.
	ld (de),a		;8bbd	12		.
	inc d			;8bbe	14		.
	nop			;8bbf	00		.
	nop			;8bc0	00		.
	nop			;8bc1	00		.
	ld a,(bc)		;8bc2	0a		.
	ex af,af'		;8bc3	08		.
	nop			;8bc4	00		.
	ld l,c			;8bc5	69		i
	ld l,b			;8bc6	68		h
	ld h,b			;8bc7	60		`
	ld h,(hl)		;8bc8	66		f
	ld l,e			;8bc9	6b		k
	nop			;8bca	00		.
	nop			;8bcb	00		.
	nop			;8bcc	00		.
	ld h,c			;8bcd	61		a
	ld h,d			;8bce	62		b
	ld h,e			;8bcf	63		c
	ld h,a			;8bd0	67		g
	ld h,h			;8bd1	64		d
	ld (hl),l		;8bd2	75		u
	nop			;8bd3	00		.
	nop			;8bd4	00		.
	ld l,a			;8bd5	6f		o
	ld (hl),h		;8bd6	74		t
	ld l,l			;8bd7	6d		m
	ld h,l			;8bd8	65		e
	ld l,d			;8bd9	6a		j
	ld (hl),b		;8bda	70		p
	nop			;8bdb	00		.
	nop			;8bdc	00		.
	halt			;8bdd	76		v
	adc a,b			;8bde	88		.
	add a,d			;8bdf	82		.
	add a,e			;8be0	83		.
	ld a,a			;8be1	7f		.
	ld a,c			;8be2	79		y
	nop			;8be3	00		.
	nop			;8be4	00		.
	xor h			;8be5	ac		.
	adc a,a			;8be6	8f		.
	ld bc,l8e02h		;8be7	01 02 8e	. . .
	or b			;8bea	b0		.
	nop			;8beb	00		.
	nop			;8bec	00		.
	nop			;8bed	00		.
	cp h			;8bee	bc		.
	inc hl			;8bef	23		#
	inc h			;8bf0	24		$
	cp l			;8bf1	bd		.
	nop			;8bf2	00		.
	nop			;8bf3	00		.
	nop			;8bf4	00		.
	or h			;8bf5	b4		.
	adc a,l			;8bf6	8d		.
	add hl,bc		;8bf7	09		.
	ld a,(bc)		;8bf8	0a		.
	sub b			;8bf9	90		.
	cp b			;8bfa	b8		.
	nop			;8bfb	00		.
	nop			;8bfc	00		.
	ld a,b			;8bfd	78		x
	ld a,l			;8bfe	7d		}
	add a,c			;8bff	81		.
	add a,b			;8c00	80		.
	ld a,(hl)		;8c01	7e		~
	ld a,h			;8c02	7c		|
	nop			;8c03	00		.
	ld sp,07173h		;8c04	31 73 71	1 s q
	ld l,(hl)		;8c07	6e		n
	ld (hl),c		;8c08	71		q
	ld (hl),d		;8c09	72		r
	ld l,h			;8c0a	6c		l
	ld (0657bh),a		;8c0b	32 7b 65	2 { e
	ld a,(03a3ah)		;8c0e	3a 3a 3a	: : :
	ld a,(07c5bh)		;8c11	3a 5b 7c	: [ |
	nop			;8c14	00		.
	nop			;8c15	00		.
	ld a,(bc)		;8c16	0a		.
	ex af,af'		;8c17	08		.
	nop			;8c18	00		.
	ld l,c			;8c19	69		i
	ld l,b			;8c1a	68		h
	ld h,b			;8c1b	60		`
	ld h,(hl)		;8c1c	66		f
	ld l,e			;8c1d	6b		k
	nop			;8c1e	00		.
	nop			;8c1f	00		.
	nop			;8c20	00		.
	ld h,c			;8c21	61		a
	ld h,d			;8c22	62		b
	ld h,e			;8c23	63		c
	ld h,a			;8c24	67		g
	ld h,h			;8c25	64		d
	ld (hl),l		;8c26	75		u
	nop			;8c27	00		.
	nop			;8c28	00		.
	ld l,a			;8c29	6f		o
	ld (hl),h		;8c2a	74		t
	ld l,l			;8c2b	6d		m
	ld h,l			;8c2c	65		e
	ld l,d			;8c2d	6a		j
	ld (hl),b		;8c2e	70		p
	nop			;8c2f	00		.
	nop			;8c30	00		.
	ld (hl),a		;8c31	77		w
	adc a,d			;8c32	8a		.
	add a,h			;8c33	84		.
	add a,l			;8c34	85		.
	adc a,c			;8c35	89		.
	ld a,d			;8c36	7a		z
	nop			;8c37	00		.
	nop			;8c38	00		.
	xor l			;8c39	ad		.
	sub e			;8c3a	93		.
	inc bc			;8c3b	03		.
	inc b			;8c3c	04		.
	sub d			;8c3d	92		.
	or c			;8c3e	b1		.
	nop			;8c3f	00		.
	nop			;8c40	00		.
	nop			;8c41	00		.
	cp h			;8c42	bc		.
	inc hl			;8c43	23		#
	inc h			;8c44	24		$
	cp l			;8c45	bd		.
	nop			;8c46	00		.
	nop			;8c47	00		.
	nop			;8c48	00		.
	or l			;8c49	b5		.
	sub c			;8c4a	91		.
	dec bc			;8c4b	0b		.
	inc c			;8c4c	0c		.
	sub h			;8c4d	94		.
	cp c			;8c4e	b9		.
	nop			;8c4f	00		.
	nop			;8c50	00		.
	halt			;8c51	76		v
	add a,b			;8c52	80		.
	add a,(hl)		;8c53	86		.
	add a,a			;8c54	87		.
	adc a,e			;8c55	8b		.
	ld a,e			;8c56	7b		{
	nop			;8c57	00		.
	ld sp,07173h		;8c58	31 73 71	1 s q
	ld l,(hl)		;8c5b	6e		n
	ld (hl),c		;8c5c	71		q
	ld (hl),d		;8c5d	72		r
	ld l,h			;8c5e	6c		l
	ld (0657bh),a		;8c5f	32 7b 65	2 { e
	ld a,(03a3ah)		;8c62	3a 3a 3a	: : :
	ld a,(07c5bh)		;8c65	3a 5b 7c	: [ |
	nop			;8c68	00		.
	nop			;8c69	00		.
	ld a,(bc)		;8c6a	0a		.
	ex af,af'		;8c6b	08		.
	nop			;8c6c	00		.
	ld l,c			;8c6d	69		i
	ld l,b			;8c6e	68		h
	ld h,b			;8c6f	60		`
	ld h,(hl)		;8c70	66		f
	ld l,e			;8c71	6b		k
	nop			;8c72	00		.
	nop			;8c73	00		.
	nop			;8c74	00		.
	ld h,c			;8c75	61		a
	ld h,d			;8c76	62		b
	ld h,e			;8c77	63		c
	ld h,a			;8c78	67		g
	ld h,h			;8c79	64		d
	ld (hl),l		;8c7a	75		u
	nop			;8c7b	00		.
	nop			;8c7c	00		.
	ld l,a			;8c7d	6f		o
	ld (hl),h		;8c7e	74		t
	ld l,l			;8c7f	6d		m
	ld h,l			;8c80	65		e
	ld l,d			;8c81	6a		j
	ld (hl),b		;8c82	70		p
	nop			;8c83	00		.
	nop			;8c84	00		.
	halt			;8c85	76		v
	add a,b			;8c86	80		.
	add a,(hl)		;8c87	86		.
	add a,a			;8c88	87		.
	adc a,e			;8c89	8b		.
	ld a,e			;8c8a	7b		{
	nop			;8c8b	00		.
	nop			;8c8c	00		.
	xor (hl)		;8c8d	ae		.
	sub a			;8c8e	97		.
	dec b			;8c8f	05		.
	ld b,096h		;8c90	06 96		. .
l8c92h:
	or d			;8c92	b2		.
	nop			;8c93	00		.
	nop			;8c94	00		.
	nop			;8c95	00		.
	cp h			;8c96	bc		.
	inc hl			;8c97	23		#
	inc h			;8c98	24		$
	cp l			;8c99	bd		.
	nop			;8c9a	00		.
	nop			;8c9b	00		.
	nop			;8c9c	00		.
	or (hl)			;8c9d	b6		.
	sub l			;8c9e	95		.
	dec c			;8c9f	0d		.
	ld c,098h		;8ca0	0e 98		. .
	cp d			;8ca2	ba		.
	nop			;8ca3	00		.
	nop			;8ca4	00		.
	ld (hl),a		;8ca5	77		w
	adc a,d			;8ca6	8a		.
	add a,h			;8ca7	84		.
	add a,l			;8ca8	85		.
	adc a,c			;8ca9	89		.
	ld a,d			;8caa	7a		z
	nop			;8cab	00		.
	ld sp,07173h		;8cac	31 73 71	1 s q
	ld l,(hl)		;8caf	6e		n
	ld (hl),c		;8cb0	71		q
	ld (hl),d		;8cb1	72		r
	ld l,h			;8cb2	6c		l
	ld (0657bh),a		;8cb3	32 7b 65	2 { e
	ld a,(03a3ah)		;8cb6	3a 3a 3a	: : :
	ld a,(07c5bh)		;8cb9	3a 5b 7c	: [ |
	nop			;8cbc	00		.
	nop			;8cbd	00		.
	ld a,(bc)		;8cbe	0a		.
	ex af,af'		;8cbf	08		.
	nop			;8cc0	00		.
	ld l,c			;8cc1	69		i
	ld l,b			;8cc2	68		h
	ld h,b			;8cc3	60		`
	ld h,(hl)		;8cc4	66		f
	ld l,e			;8cc5	6b		k
	nop			;8cc6	00		.
l8cc7h:
	nop			;8cc7	00		.
	nop			;8cc8	00		.
	ld h,c			;8cc9	61		a
	ld h,d			;8cca	62		b
	ld h,e			;8ccb	63		c
	ld h,a			;8ccc	67		g
	ld h,h			;8ccd	64		d
	ld (hl),l		;8cce	75		u
	nop			;8ccf	00		.
	nop			;8cd0	00		.
	ld l,a			;8cd1	6f		o
	ld (hl),h		;8cd2	74		t
l8cd3h:
	ld l,l			;8cd3	6d		m
	ld h,l			;8cd4	65		e
	ld l,d			;8cd5	6a		j
	ld (hl),b		;8cd6	70		p
	nop			;8cd7	00		.
	nop			;8cd8	00		.
	ld a,b			;8cd9	78		x
	ld a,l			;8cda	7d		}
	add a,c			;8cdb	81		.
	add a,b			;8cdc	80		.
	ld a,(hl)		;8cdd	7e		~
	ld a,h			;8cde	7c		|
	nop			;8cdf	00		.
	nop			;8ce0	00		.
	xor a			;8ce1	af		.
	sbc a,e			;8ce2	9b		.
	rlca			;8ce3	07		.
	ex af,af'		;8ce4	08		.
	sbc a,d			;8ce5	9a		.
	or e			;8ce6	b3		.
	nop			;8ce7	00		.
	nop			;8ce8	00		.
	nop			;8ce9	00		.
	cp h			;8cea	bc		.
	inc hl			;8ceb	23		#
	inc h			;8cec	24		$
	cp l			;8ced	bd		.
	nop			;8cee	00		.
	nop			;8cef	00		.
	nop			;8cf0	00		.
	or a			;8cf1	b7		.
	sbc a,c			;8cf2	99		.
	rrca			;8cf3	0f		.
	djnz l8c92h		;8cf4	10 9c		. .
	cp e			;8cf6	bb		.
	nop			;8cf7	00		.
	nop			;8cf8	00		.
	halt			;8cf9	76		v
	adc a,b			;8cfa	88		.
	add a,d			;8cfb	82		.
	add a,e			;8cfc	83		.
	ld a,a			;8cfd	7f		.
	ld a,c			;8cfe	79		y
	nop			;8cff	00		.
	ld sp,07173h		;8d00	31 73 71	1 s q
	ld l,(hl)		;8d03	6e		n
	ld (hl),c		;8d04	71		q
	ld (hl),d		;8d05	72		r
	ld l,h			;8d06	6c		l
	ld (0657bh),a		;8d07	32 7b 65	2 { e
	ld a,(03a3ah)		;8d0a	3a 3a 3a	: : :
	ld a,(07c5bh)		;8d0d	3a 5b 7c	: [ |
	nop			;8d10	00		.
	nop			;8d11	00		.
	ld bc,06408h		;8d12	01 08 64	. . d
	ld h,(hl)		;8d15	66		f
	add a,b			;8d16	80		.
	add a,b			;8d17	80		.
	add a,b			;8d18	80		.
	add a,b			;8d19	80		.
	ld e,h			;8d1a	5c		\
	ld e,d			;8d1b	5a		Z
	nop			;8d1c	00		.
	nop			;8d1d	00		.
	ld bc,00001h		;8d1e	01 01 00	. . .
	nop			;8d21	00		.
	nop			;8d22	00		.
	ld (bc),a		;8d23	02		.
	inc b			;8d24	04		.
	ld d,020h		;8d25	16 20		.  
	dec l			;8d27	2d		-
	ld d,017h		;8d28	16 17		. .
	ld hl,0178ah		;8d2a	21 8a 17	! . .
	nop			;8d2d	00		.
	nop			;8d2e	00		.
	ld (bc),a		;8d2f	02		.
	inc b			;8d30	04		.
	ld l,024h		;8d31	2e 24		. $
	ld h,02eh		;8d33	26 2e		& .
	adc a,(hl)		;8d35	8e		.
	cpl			;8d36	2f		/
	jr nc,l8cc7h		;8d37	30 8e		0 .
	nop			;8d39	00		.
	nop			;8d3a	00		.
	ld (bc),a		;8d3b	02		.
	inc b			;8d3c	04		.
	or (hl)			;8d3d	b6		.
	and c			;8d3e	a1		.
	and d			;8d3f	a2		.
	or (hl)			;8d40	b6		.
	adc a,(hl)		;8d41	8e		.
	cpl			;8d42	2f		/
	jr nc,l8cd3h		;8d43	30 8e		0 .
	ld (bc),a		;8d45	02		.
	ld (bc),a		;8d46	02		.
	ld (bc),a		;8d47	02		.
	inc b			;8d48	04		.
	or d			;8d49	b2		.
	ld e,022h		;8d4a	1e 22		. "
	xor a			;8d4c	af		.
	adc a,l			;8d4d	8d		.
	rra			;8d4e	1f		.
	inc hl			;8d4f	23		#
	and h			;8d50	a4		.
	ld (bc),a		;8d51	02		.
	ld (bc),a		;8d52	02		.
	ld (bc),a		;8d53	02		.
	inc b			;8d54	04		.
	or e			;8d55	b3		.
	or l			;8d56	b5		.
	or c			;8d57	b1		.
	xor a			;8d58	af		.
	adc a,l			;8d59	8d		.
	adc a,e			;8d5a	8b		.
	adc a,h			;8d5b	8c		.
	and h			;8d5c	a4		.
	nop			;8d5d	00		.
	nop			;8d5e	00		.
	ld (bc),a		;8d5f	02		.
	ld (bc),a		;8d60	02		.
	ld bc,00302h		;8d61	01 02 03	. . .
	inc b			;8d64	04		.
	nop			;8d65	00		.
	nop			;8d66	00		.
	ld (bc),a		;8d67	02		.
	ld (bc),a		;8d68	02		.
	dec b			;8d69	05		.
	ld b,007h		;8d6a	06 07		. .
	ex af,af'		;8d6c	08		.
	nop			;8d6d	00		.
	nop			;8d6e	00		.
	ld (bc),a		;8d6f	02		.
	ld (bc),a		;8d70	02		.
	add hl,bc		;8d71	09		.
	ld a,(bc)		;8d72	0a		.
	dec bc			;8d73	0b		.
	inc c			;8d74	0c		.
	nop			;8d75	00		.
	nop			;8d76	00		.
	ld (bc),a		;8d77	02		.
	ld (bc),a		;8d78	02		.
	dec c			;8d79	0d		.
	ld c,00fh		;8d7a	0e 0f		. .
	djnz l8d7eh		;8d7c	10 00		. .
l8d7eh:
	nop			;8d7e	00		.
	ld (bc),a		;8d7f	02		.
	inc b			;8d80	04		.
	xor h			;8d81	ac		.
	dec h			;8d82	25		%
	daa			;8d83	27		'
	xor l			;8d84	ad		.
	sbc a,b			;8d85	98		.
	add hl,hl		;8d86	29		)
	ld hl,(00099h)		;8d87	2a 99 00	* . .
	nop			;8d8a	00		.
	ld (bc),a		;8d8b	02		.
	inc b			;8d8c	04		.
	xor h			;8d8d	ac		.
	jr z,l8da9h		;8d8e	28 19		( .
	xor l			;8d90	ad		.
	sbc a,b			;8d91	98		.
	add hl,hl		;8d92	29		)
	ld hl,(00099h)		;8d93	2a 99 00	* . .
	nop			;8d96	00		.
	ld (bc),a		;8d97	02		.
	inc b			;8d98	04		.
	xor (hl)		;8d99	ae		.
	nop			;8d9a	00		.
	nop			;8d9b	00		.
	or b			;8d9c	b0		.
	sbc a,b			;8d9d	98		.
	adc a,b			;8d9e	88		.
	adc a,c			;8d9f	89		.
	sbc a,c			;8da0	99		.
	nop			;8da1	00		.
	nop			;8da2	00		.
	inc b			;8da3	04		.
	inc bc			;8da4	03		.
l8da5h:
	or h			;8da5	b4		.
	ld l,b			;8da6	68		h
	ld (hl),d		;8da7	72		r
	or d			;8da8	b2		.
l8da9h:
	ld d,e			;8da9	53		S
	ld d,c			;8daa	51		Q
	nop			;8dab	00		.
	sbc a,c			;8dac	99		.
	sbc a,h			;8dad	9c		.
	cp h			;8dae	bc		.
	jp nz,000a5h		;8daf	c2 a5 00	. . .
	nop			;8db2	00		.
	inc b			;8db3	04		.
	inc bc			;8db4	03		.
	or (hl)			;8db5	b6		.
	ld l,b			;8db6	68		h
	ld (hl),d		;8db7	72		r
	cp b			;8db8	b8		.
	ld l,c			;8db9	69		i
	ld l,l			;8dba	6d		m
	nop			;8dbb	00		.
	xor e			;8dbc	ab		.
	sbc a,a			;8dbd	9f		.
	jp nz,08d8fh		;8dbe	c2 8f 8d	. . .
	nop			;8dc1	00		.
	nop			;8dc2	00		.
	inc b			;8dc3	04		.
	inc bc			;8dc4	03		.
	or h			;8dc5	b4		.
	ld l,b			;8dc6	68		h
	ld (hl),d		;8dc7	72		r
	or d			;8dc8	b2		.
	ld d,e			;8dc9	53		S
	ld d,c			;8dca	51		Q
	nop			;8dcb	00		.
	sbc a,d			;8dcc	9a		.
	sbc a,(hl)		;8dcd	9e		.
	cp e			;8dce	bb		.
	cp d			;8dcf	ba		.
	cp l			;8dd0	bd		.
	nop			;8dd1	00		.
	nop			;8dd2	00		.
	inc b			;8dd3	04		.
	inc bc			;8dd4	03		.
	or (hl)			;8dd5	b6		.
	ld l,b			;8dd6	68		h
	ld (hl),d		;8dd7	72		r
	cp b			;8dd8	b8		.
	ld l,c			;8dd9	69		i
	ld e,h			;8dda	5c		\
	nop			;8ddb	00		.
	and a			;8ddc	a7		.
	and c			;8ddd	a1		.
	cp d			;8dde	ba		.
	cp l			;8ddf	bd		.
	cp (hl)			;8de0	be		.
	nop			;8de1	00		.
	nop			;8de2	00		.
	inc b			;8de3	04		.
	inc bc			;8de4	03		.
	or h			;8de5	b4		.
	ld l,b			;8de6	68		h
	ld (hl),d		;8de7	72		r
	or d			;8de8	b2		.
	ld d,e			;8de9	53		S
	ld d,c			;8dea	51		Q
	nop			;8deb	00		.
	sbc a,c			;8dec	99		.
	sbc a,h			;8ded	9c		.
	cp l			;8dee	bd		.
	cp (hl)			;8def	be		.
	and l			;8df0	a5		.
	nop			;8df1	00		.
	nop			;8df2	00		.
	inc b			;8df3	04		.
	inc bc			;8df4	03		.
	or (hl)			;8df5	b6		.
	ld l,b			;8df6	68		h
	ld (hl),d		;8df7	72		r
	cp b			;8df8	b8		.
	ld l,c			;8df9	69		i
	ld l,l			;8dfa	6d		m
	nop			;8dfb	00		.
	xor e			;8dfc	ab		.
	sbc a,a			;8dfd	9f		.
	cp (hl)			;8dfe	be		.
	adc a,a			;8dff	8f		.
	adc a,l			;8e00	8d		.
	nop			;8e01	00		.
l8e02h:
	nop			;8e02	00		.
	inc b			;8e03	04		.
	inc bc			;8e04	03		.
	or h			;8e05	b4		.
	ld l,b			;8e06	68		h
	ld (hl),d		;8e07	72		r
	or d			;8e08	b2		.
	ld d,e			;8e09	53		S
	ld d,c			;8e0a	51		Q
	nop			;8e0b	00		.
	sbc a,d			;8e0c	9a		.
	sbc a,(hl)		;8e0d	9e		.
	cp e			;8e0e	bb		.
	cp d			;8e0f	ba		.
	cp h			;8e10	bc		.
	nop			;8e11	00		.
	nop			;8e12	00		.
	inc b			;8e13	04		.
	inc bc			;8e14	03		.
	or (hl)			;8e15	b6		.
	ld l,b			;8e16	68		h
	ld (hl),d		;8e17	72		r
	cp b			;8e18	b8		.
	ld l,c			;8e19	69		i
	ld e,h			;8e1a	5c		\
	nop			;8e1b	00		.
	and a			;8e1c	a7		.
	and c			;8e1d	a1		.
	cp d			;8e1e	ba		.
	cp h			;8e1f	bc		.
	jp nz,00301h		;8e20	c2 01 03	. . .
	inc bc			;8e23	03		.
	ld a,(bc)		;8e24	0a		.
	ld c,a			;8e25	4f		O
	ld d,b			;8e26	50		P
	ld d,d			;8e27	52		R
	ld c,l			;8e28	4d		M
	ld c,a			;8e29	4f		O
	ld d,b			;8e2a	50		P
	ld d,d			;8e2b	52		R
	ld c,l			;8e2c	4d		M
	ld c,a			;8e2d	4f		O
	ld d,b			;8e2e	50		P
	adc a,(hl)		;8e2f	8e		.
	sub d			;8e30	92		.
	sub h			;8e31	94		.
	sub b			;8e32	90		.
	adc a,(hl)		;8e33	8e		.
	sub d			;8e34	92		.
	sub h			;8e35	94		.
	sub b			;8e36	90		.
	adc a,(hl)		;8e37	8e		.
	sub d			;8e38	92		.
	sub c			;8e39	91		.
	sbc a,b			;8e3a	98		.
	cp (hl)			;8e3b	be		.
	and l			;8e3c	a5		.
	sub c			;8e3d	91		.
	cp h			;8e3e	bc		.
	jp nz,l91a5h		;8e3f	c2 a5 91	. . .
	sbc a,b			;8e42	98		.
	ld bc,00303h		;8e43	01 03 03	. . .
	ld a,(bc)		;8e46	0a		.
	ld d,d			;8e47	52		R
	ld c,l			;8e48	4d		M
	ld l,h			;8e49	6c		l
	ld l,(hl)		;8e4a	6e		n
	ld d,d			;8e4b	52		R
	ld c,l			;8e4c	4d		M
	ld l,h			;8e4d	6c		l
	ld l,(hl)		;8e4e	6e		n
	ld d,d			;8e4f	52		R
	ld c,l			;8e50	4d		M
	sub (hl)		;8e51	96		.
	and h			;8e52	a4		.
	and e			;8e53	a3		.
	and (hl)		;8e54	a6		.
	sub (hl)		;8e55	96		.
	and h			;8e56	a4		.
	and e			;8e57	a3		.
	and (hl)		;8e58	a6		.
	sub (hl)		;8e59	96		.
	and h			;8e5a	a4		.
	sbc a,b			;8e5b	98		.
	cp (hl)			;8e5c	be		.
	and l			;8e5d	a5		.
	adc a,l			;8e5e	8d		.
	cp h			;8e5f	bc		.
	jp nz,l8da5h		;8e60	c2 a5 8d	. . .
	sbc a,b			;8e63	98		.
	cp (hl)			;8e64	be		.
	ld bc,00303h		;8e65	01 03 03	. . .
	ld a,(bc)		;8e68	0a		.
	ld d,d			;8e69	52		R
	ld c,l			;8e6a	4d		M
	ld c,a			;8e6b	4f		O
	ld d,b			;8e6c	50		P
	ld d,d			;8e6d	52		R
	ld c,l			;8e6e	4d		M
	ld c,a			;8e6f	4f		O
	ld d,b			;8e70	50		P
	ld d,d			;8e71	52		R
	ld c,l			;8e72	4d		M
	sub h			;8e73	94		.
	sub b			;8e74	90		.
	adc a,(hl)		;8e75	8e		.
	sub d			;8e76	92		.
	sub h			;8e77	94		.
	sub b			;8e78	90		.
	adc a,(hl)		;8e79	8e		.
	sub d			;8e7a	92		.
	sub h			;8e7b	94		.
	sub b			;8e7c	90		.
	cp (hl)			;8e7d	be		.
	and l			;8e7e	a5		.
	sub c			;8e7f	91		.
	cp h			;8e80	bc		.
	jp nz,l91a5h		;8e81	c2 a5 91	. . .
	sbc a,b			;8e84	98		.
	cp (hl)			;8e85	be		.
	and l			;8e86	a5		.
	ld bc,00303h		;8e87	01 03 03	. . .
	ld a,(bc)		;8e8a	0a		.
	ld l,h			;8e8b	6c		l
	ld l,(hl)		;8e8c	6e		n
l8e8dh:
	ld d,d			;8e8d	52		R
	ld c,l			;8e8e	4d		M
	ld l,h			;8e8f	6c		l
	ld l,(hl)		;8e90	6e		n
	ld d,d			;8e91	52		R
	ld c,l			;8e92	4d		M
	ld l,h			;8e93	6c		l
	ld l,(hl)		;8e94	6e		n
	and e			;8e95	a3		.
	and (hl)		;8e96	a6		.
	sub (hl)		;8e97	96		.
	and h			;8e98	a4		.
	and e			;8e99	a3		.
	and (hl)		;8e9a	a6		.
	sub (hl)		;8e9b	96		.
	and h			;8e9c	a4		.
	and e			;8e9d	a3		.
	and (hl)		;8e9e	a6		.
	and l			;8e9f	a5		.
	adc a,l			;8ea0	8d		.
	cp h			;8ea1	bc		.
	jp nz,l8da5h		;8ea2	c2 a5 8d	. . .
	sbc a,b			;8ea5	98		.
	cp (hl)			;8ea6	be		.
	and l			;8ea7	a5		.
	adc a,l			;8ea8	8d		.
	ld bc,00303h		;8ea9	01 03 03	. . .
	ld a,(bc)		;8eac	0a		.
	ld c,a			;8ead	4f		O
	ld d,b			;8eae	50		P
	ld d,d			;8eaf	52		R
	ld c,l			;8eb0	4d		M
	ld c,a			;8eb1	4f		O
	ld d,b			;8eb2	50		P
	ld d,d			;8eb3	52		R
	ld c,l			;8eb4	4d		M
	ld c,a			;8eb5	4f		O
	ld d,b			;8eb6	50		P
	adc a,(hl)		;8eb7	8e		.
	sub d			;8eb8	92		.
	sub h			;8eb9	94		.
	sub b			;8eba	90		.
	adc a,(hl)		;8ebb	8e		.
	sub d			;8ebc	92		.
	sub h			;8ebd	94		.
	sub b			;8ebe	90		.
	adc a,(hl)		;8ebf	8e		.
	sub d			;8ec0	92		.
	sub c			;8ec1	91		.
	cp h			;8ec2	bc		.
	jp nz,l91a5h		;8ec3	c2 a5 91	. . .
	sbc a,b			;8ec6	98		.
	cp (hl)			;8ec7	be		.
	and l			;8ec8	a5		.
	sub c			;8ec9	91		.
	cp h			;8eca	bc		.
	ld bc,00303h		;8ecb	01 03 03	. . .
	ld a,(bc)		;8ece	0a		.
	ld d,d			;8ecf	52		R
	ld c,l			;8ed0	4d		M
	ld l,h			;8ed1	6c		l
	ld l,(hl)		;8ed2	6e		n
	ld d,d			;8ed3	52		R
	ld c,l			;8ed4	4d		M
	ld l,h			;8ed5	6c		l
	ld l,(hl)		;8ed6	6e		n
	ld d,d			;8ed7	52		R
	ld c,l			;8ed8	4d		M
	sub (hl)		;8ed9	96		.
	and h			;8eda	a4		.
	and e			;8edb	a3		.
	and (hl)		;8edc	a6		.
	sub (hl)		;8edd	96		.
	and h			;8ede	a4		.
	and e			;8edf	a3		.
	and (hl)		;8ee0	a6		.
	sub (hl)		;8ee1	96		.
	and h			;8ee2	a4		.
	cp h			;8ee3	bc		.
	jp nz,l8da5h		;8ee4	c2 a5 8d	. . .
	sbc a,b			;8ee7	98		.
	cp (hl)			;8ee8	be		.
	and l			;8ee9	a5		.
	adc a,l			;8eea	8d		.
	cp h			;8eeb	bc		.
	jp nz,00301h		;8eec	c2 01 03	. . .
	inc bc			;8eef	03		.
	ld a,(bc)		;8ef0	0a		.
	ld d,d			;8ef1	52		R
	ld c,l			;8ef2	4d		M
	ld c,a			;8ef3	4f		O
	ld d,b			;8ef4	50		P
	ld d,d			;8ef5	52		R
	ld c,l			;8ef6	4d		M
	ld c,a			;8ef7	4f		O
	ld d,b			;8ef8	50		P
	ld d,d			;8ef9	52		R
	ld c,l			;8efa	4d		M
	sub h			;8efb	94		.
	sub b			;8efc	90		.
	adc a,(hl)		;8efd	8e		.
	sub d			;8efe	92		.
	sub h			;8eff	94		.
	sub b			;8f00	90		.
	adc a,(hl)		;8f01	8e		.
	sub d			;8f02	92		.
	sub h			;8f03	94		.
	sub b			;8f04	90		.
	jp nz,l91a5h		;8f05	c2 a5 91	. . .
	sbc a,b			;8f08	98		.
	cp (hl)			;8f09	be		.
	and l			;8f0a	a5		.
	sub c			;8f0b	91		.
	cp h			;8f0c	bc		.
	jp nz,001a5h		;8f0d	c2 a5 01	. . .
	inc bc			;8f10	03		.
	inc bc			;8f11	03		.
	ld a,(bc)		;8f12	0a		.
	ld l,h			;8f13	6c		l
	ld l,(hl)		;8f14	6e		n
	ld d,d			;8f15	52		R
	ld c,l			;8f16	4d		M
	ld l,h			;8f17	6c		l
	ld l,(hl)		;8f18	6e		n
	ld d,d			;8f19	52		R
	ld c,l			;8f1a	4d		M
	ld l,h			;8f1b	6c		l
	ld l,(hl)		;8f1c	6e		n
	and e			;8f1d	a3		.
	and (hl)		;8f1e	a6		.
	sub (hl)		;8f1f	96		.
	and h			;8f20	a4		.
	and e			;8f21	a3		.
	and (hl)		;8f22	a6		.
	sub (hl)		;8f23	96		.
	and h			;8f24	a4		.
	and e			;8f25	a3		.
	and (hl)		;8f26	a6		.
	and l			;8f27	a5		.
	adc a,l			;8f28	8d		.
	sbc a,b			;8f29	98		.
	cp (hl)			;8f2a	be		.
	and l			;8f2b	a5		.
	adc a,l			;8f2c	8d		.
	cp h			;8f2d	bc		.
	jp nz,l8da5h		;8f2e	c2 a5 8d	. . .
	nop			;8f31	00		.
	dec c			;8f32	0d		.
	inc b			;8f33	04		.
	inc bc			;8f34	03		.
	ld e,e			;8f35	5b		[
	ld a,l			;8f36	7d		}
	or l			;8f37	b5		.
	ld l,e			;8f38	6b		k
	ld l,d			;8f39	6a		j
	or e			;8f3a	b3		.
	sbc a,l			;8f3b	9d		.
	sbc a,e			;8f3c	9b		.
	nop			;8f3d	00		.
	cp (hl)			;8f3e	be		.
	cp e			;8f3f	bb		.
	cp d			;8f40	ba		.
	nop			;8f41	00		.
	dec c			;8f42	0d		.
	inc b			;8f43	04		.
	inc bc			;8f44	03		.
	ld e,e			;8f45	5b		[
	ld a,l			;8f46	7d		}
	or a			;8f47	b7		.
	ld c,h			;8f48	4c		L
	ld (hl),e		;8f49	73		s
	cp c			;8f4a	b9		.
	and b			;8f4b	a0		.
	xor b			;8f4c	a8		.
	nop			;8f4d	00		.
	and l			;8f4e	a5		.
	sub e			;8f4f	93		.
	cp h			;8f50	bc		.
	nop			;8f51	00		.
	dec c			;8f52	0d		.
	inc b			;8f53	04		.
	inc bc			;8f54	03		.
	ld e,e			;8f55	5b		[
	ld a,l			;8f56	7d		}
	or l			;8f57	b5		.
	ld l,e			;8f58	6b		k
	ld l,d			;8f59	6a		j
	or e			;8f5a	b3		.
	xor c			;8f5b	a9		.
	sbc a,e			;8f5c	9b		.
	or c			;8f5d	b1		.
	sub l			;8f5e	95		.
	cp h			;8f5f	bc		.
	jp nz,00d00h		;8f60	c2 00 0d	. . .
	inc b			;8f63	04		.
	inc bc			;8f64	03		.
	ld e,e			;8f65	5b		[
	ld a,l			;8f66	7d		}
	or a			;8f67	b7		.
	ld c,(hl)		;8f68	4e		N
	ld (hl),e		;8f69	73		s
	cp c			;8f6a	b9		.
	and d			;8f6b	a2		.
	xor d			;8f6c	aa		.
	nop			;8f6d	00		.
	cp h			;8f6e	bc		.
	jp nz,000bbh		;8f6f	c2 bb 00	. . .
	dec c			;8f72	0d		.
	inc b			;8f73	04		.
	inc bc			;8f74	03		.
	ld e,e			;8f75	5b		[
	ld a,l			;8f76	7d		}
	or l			;8f77	b5		.
	ld l,e			;8f78	6b		k
	ld l,d			;8f79	6a		j
	or e			;8f7a	b3		.
	sbc a,l			;8f7b	9d		.
	sbc a,e			;8f7c	9b		.
	nop			;8f7d	00		.
	jp nz,0babbh		;8f7e	c2 bb ba	. . .
	nop			;8f81	00		.
	dec c			;8f82	0d		.
	inc b			;8f83	04		.
	inc bc			;8f84	03		.
	ld e,e			;8f85	5b		[
	ld a,l			;8f86	7d		}
	or a			;8f87	b7		.
	ld c,h			;8f88	4c		L
	ld (hl),e		;8f89	73		s
	cp c			;8f8a	b9		.
	and b			;8f8b	a0		.
	xor b			;8f8c	a8		.
	nop			;8f8d	00		.
	and l			;8f8e	a5		.
	sub e			;8f8f	93		.
	cp l			;8f90	bd		.
	nop			;8f91	00		.
	dec c			;8f92	0d		.
	inc b			;8f93	04		.
	inc bc			;8f94	03		.
	ld e,e			;8f95	5b		[
	ld a,l			;8f96	7d		}
	or l			;8f97	b5		.
	ld l,e			;8f98	6b		k
	ld l,d			;8f99	6a		j
	or e			;8f9a	b3		.
	xor c			;8f9b	a9		.
	sbc a,e			;8f9c	9b		.
	or c			;8f9d	b1		.
	sub l			;8f9e	95		.
	cp l			;8f9f	bd		.
	cp (hl)			;8fa0	be		.
	nop			;8fa1	00		.
	dec c			;8fa2	0d		.
	inc b			;8fa3	04		.
	inc bc			;8fa4	03		.
	ld e,e			;8fa5	5b		[
	ld a,l			;8fa6	7d		}
	or a			;8fa7	b7		.
	ld c,(hl)		;8fa8	4e		N
	ld (hl),e		;8fa9	73		s
	cp c			;8faa	b9		.
	and d			;8fab	a2		.
	xor d			;8fac	aa		.
	nop			;8fad	00		.
	sbc a,b			;8fae	98		.
	cp (hl)			;8faf	be		.
	cp e			;8fb0	bb		.
	ld sp,hl		;8fb1	f9		.
	adc a,a			;8fb2	8f		.
	ld c,l			;8fb3	4d		M
	sub b			;8fb4	90		.
	and c			;8fb5	a1		.
	sub b			;8fb6	90		.
	push af			;8fb7	f5		.
	sub b			;8fb8	90		.
	defb 0fdh,090h,005h ;illegal sequence	;8fb9	fd 90 05	. . .
	sub c			;8fbc	91		.
	dec c			;8fbd	0d		.
	sub c			;8fbe	91		.
	dec d			;8fbf	15		.
	sub c			;8fc0	91		.
	dec e			;8fc1	1d		.
	sub c			;8fc2	91		.
	dec h			;8fc3	25		%
	sub c			;8fc4	91		.
	dec l			;8fc5	2d		-
	sub c			;8fc6	91		.
	dec (hl)		;8fc7	35		5
	sub c			;8fc8	91		.
	ld b,c			;8fc9	41		A
	sub c			;8fca	91		.
	ld h,c			;8fcb	61		a
	sub c			;8fcc	91		.
	ld h,a			;8fcd	67		g
	sub c			;8fce	91		.
	ld l,l			;8fcf	6d		m
	sub c			;8fd0	91		.
	ld (hl),e		;8fd1	73		s
	sub c			;8fd2	91		.
	ld a,c			;8fd3	79		y
	sub c			;8fd4	91		.
	dec (hl)		;8fd5	35		5
	sub d			;8fd6	92		.
	add a,c			;8fd7	81		.
	sub d			;8fd8	92		.
	cp e			;8fd9	bb		.
	sub d			;8fda	92		.
	ex (sp),hl		;8fdb	e3		.
	sub d			;8fdc	92		.
	rrca			;8fdd	0f		.
	sub e			;8fde	93		.
	ld c,e			;8fdf	4b		K
	sub e			;8fe0	93		.
	add a,c			;8fe1	81		.
	sub e			;8fe2	93		.
	add a,093h		;8fe3	c6 93		. .
	add a,093h		;8fe5	c6 93		. .
	rst 10h			;8fe7	d7		.
	sub c			;8fe8	91		.
	add a,093h		;8fe9	c6 93		. .
	ld a,(bc)		;8feb	0a		.
	sub h			;8fec	94		.
	ld c,(hl)		;8fed	4e		N
	sub h			;8fee	94		.
	sub d			;8fef	92		.
	sub h			;8ff0	94		.
	sub 094h		;8ff1	d6 94		. .
	ld a,(de)		;8ff3	1a		.
	sub l			;8ff4	95		.
	ld e,(hl)		;8ff5	5e		^
	sub l			;8ff6	95		.
	and d			;8ff7	a2		.
	sub l			;8ff8	95		.
	nop			;8ff9	00		.
	nop			;8ffa	00		.
	ex af,af'		;8ffb	08		.
	ld a,(bc)		;8ffc	0a		.
	nop			;8ffd	00		.
	nop			;8ffe	00		.
	nop			;8fff	00		.
	ld (de),a		;9000	12		.
	ld b,h			;9001	44		D
	ld b,b			;9002	40		@
	inc d			;9003	14		.
	nop			;9004	00		.
	nop			;9005	00		.
l9006h:
	nop			;9006	00		.
	nop			;9007	00		.
	nop			;9008	00		.
	dec e			;9009	1d		.
	jr z,l904bh		;900a	28 3f		( ?
	cpl			;900c	2f		/
	ld b,d			;900d	42		B
	ld a,(de)		;900e	1a		.
	nop			;900f	00		.
	nop			;9010	00		.
	nop			;9011	00		.
	add hl,de		;9012	19		.
	ld b,e			;9013	43		C
	ld c,d			;9014	4a		J
	inc l			;9015	2c		,
	ld e,01fh		;9016	1e 1f		. .
	inc (hl)		;9018	34		4
	dec sp			;9019	3b		;
	rrca			;901a	0f		.
	inc c			;901b	0c		.
	add hl,sp		;901c	39		9
	ld b,l			;901d	45		E
	ld e,01fh		;901e	1e 1f		. .
	jr nz,l9043h		;9020	20 21		  !
	ld l,047h		;9022	2e 47		. G
	djnz $+15		;9024	10 0d		. .
	ld b,(hl)		;9026	46		F
	inc a			;9027	3c		<
	jr nz,l904bh		;9028	20 21		  !
	ld (03d23h),hl		;902a	22 23 3d	" # =
	ld b,c			;902d	41		A
	ld de,0350eh		;902e	11 0e 35	. . 5
	ld sp,02733h		;9031	31 33 27	1 3 '
	dec h			;9034	25		%
	ld (01548h),a		;9035	32 48 15	2 H .
	nop			;9038	00		.
	nop			;9039	00		.
	nop			;903a	00		.
	rla			;903b	17		.
	ld c,c			;903c	49		I
	ld a,030h		;903d	3e 30		> 0
	scf			;903f	37		7
	jr l9042h		;9040	18 00		. .
l9042h:
	nop			;9042	00		.
l9043h:
	nop			;9043	00		.
	nop			;9044	00		.
	nop			;9045	00		.
	inc de			;9046	13		.
	ld a,(01638h)		;9047	3a 38 16	: 8 .
	nop			;904a	00		.
l904bh:
	nop			;904b	00		.
	nop			;904c	00		.
	nop			;904d	00		.
	nop			;904e	00		.
	ex af,af'		;904f	08		.
	ld a,(bc)		;9050	0a		.
	nop			;9051	00		.
	nop			;9052	00		.
	nop			;9053	00		.
	ld (de),a		;9054	12		.
	ld b,h			;9055	44		D
	ld b,b			;9056	40		@
	inc d			;9057	14		.
	nop			;9058	00		.
	nop			;9059	00		.
	nop			;905a	00		.
	nop			;905b	00		.
	nop			;905c	00		.
	inc e			;905d	1c		.
	jr z,l909fh		;905e	28 3f		( ?
	cpl			;9060	2f		/
	ld (hl),01ah		;9061	36 1a		6 .
	nop			;9063	00		.
	nop			;9064	00		.
	nop			;9065	00		.
	dec de			;9066	1b		.
	ld hl,(02b29h)		;9067	2a 29 2b	* ) +
	ld (03423h),hl		;906a	22 23 34	" # 4
	dec sp			;906d	3b		;
	rrca			;906e	0f		.
	inc c			;906f	0c		.
	add hl,sp		;9070	39		9
	ld b,l			;9071	45		E
	ld (02523h),hl		;9072	22 23 25	" # %
	ld (0472eh),a		;9075	32 2e 47	2 . G
	djnz $+15		;9078	10 0d		. .
	ld b,(hl)		;907a	46		F
	inc a			;907b	3c		<
	dec h			;907c	25		%
	ld (01f1eh),a		;907d	32 1e 1f	2 . .
	dec a			;9080	3d		=
	ld b,c			;9081	41		A
	ld de,0350eh		;9082	11 0e 35	. . 5
	ld sp,02624h		;9085	31 24 26	1 $ &
	jr nz,l90abh		;9088	20 21		  !
	ld c,b			;908a	48		H
	dec d			;908b	15		.
	nop			;908c	00		.
	nop			;908d	00		.
	nop			;908e	00		.
	rla			;908f	17		.
	ld c,c			;9090	49		I
	ld a,030h		;9091	3e 30		> 0
	scf			;9093	37		7
	jr l9096h		;9094	18 00		. .
l9096h:
	nop			;9096	00		.
	nop			;9097	00		.
	nop			;9098	00		.
	nop			;9099	00		.
	inc de			;909a	13		.
	ld a,(01638h)		;909b	3a 38 16	: 8 .
	nop			;909e	00		.
l909fh:
	nop			;909f	00		.
	nop			;90a0	00		.
	nop			;90a1	00		.
	nop			;90a2	00		.
	ex af,af'		;90a3	08		.
	ld a,(bc)		;90a4	0a		.
	nop			;90a5	00		.
	nop			;90a6	00		.
	nop			;90a7	00		.
	ld (de),a		;90a8	12		.
	ld b,h			;90a9	44		D
	ld b,b			;90aa	40		@
l90abh:
	inc d			;90ab	14		.
	nop			;90ac	00		.
	nop			;90ad	00		.
	nop			;90ae	00		.
	nop			;90af	00		.
	nop			;90b0	00		.
	inc e			;90b1	1c		.
	jr z,l90f3h		;90b2	28 3f		( ?
	cpl			;90b4	2f		/
	ld (hl),01ah		;90b5	36 1a		6 .
	nop			;90b7	00		.
	nop			;90b8	00		.
	nop			;90b9	00		.
	dec de			;90ba	1b		.
	ld hl,(00b29h)		;90bb	2a 29 0b	* ) .
	ld a,(bc)		;90be	0a		.
	call z,03b34h		;90bf	cc 34 3b	. 4 ;
	rrca			;90c2	0f		.
	inc c			;90c3	0c		.
	add hl,sp		;90c4	39		9
	ld b,l			;90c5	45		E
	ld a,(bc)		;90c6	0a		.
	call z,009cdh		;90c7	cc cd 09	. . .
	ld l,047h		;90ca	2e 47		. G
	djnz $+15		;90cc	10 0d		. .
	ld b,(hl)		;90ce	46		F
	inc a			;90cf	3c		<
	call 00a09h		;90d0	cd 09 0a	. . .
	call z,0413dh		;90d3	cc 3d 41	. = A
	ld de,0350eh		;90d6	11 0e 35	. . 5
	ld sp,02733h		;90d9	31 33 27	1 3 '
	call 04809h		;90dc	cd 09 48	. . H
	dec d			;90df	15		.
	nop			;90e0	00		.
	nop			;90e1	00		.
	nop			;90e2	00		.
	rla			;90e3	17		.
	ld c,c			;90e4	49		I
	ld a,030h		;90e5	3e 30		> 0
	scf			;90e7	37		7
	jr l90eah		;90e8	18 00		. .
l90eah:
	nop			;90ea	00		.
	nop			;90eb	00		.
	nop			;90ec	00		.
	nop			;90ed	00		.
	inc de			;90ee	13		.
	ld a,(01638h)		;90ef	3a 38 16	: 8 .
	nop			;90f2	00		.
l90f3h:
	nop			;90f3	00		.
	nop			;90f4	00		.
	nop			;90f5	00		.
	nop			;90f6	00		.
	ld (bc),a		;90f7	02		.
	ld (bc),a		;90f8	02		.
	ld bc,0b802h		;90f9	01 02 b8	. . .
	cp c			;90fc	b9		.
	nop			;90fd	00		.
	nop			;90fe	00		.
	ld (bc),a		;90ff	02		.
	ld (bc),a		;9100	02		.
	inc bc			;9101	03		.
	inc b			;9102	04		.
	cp d			;9103	ba		.
	cp e			;9104	bb		.
	nop			;9105	00		.
	nop			;9106	00		.
	ld (bc),a		;9107	02		.
	ld (bc),a		;9108	02		.
	dec b			;9109	05		.
	ld b,0b8h		;910a	06 b8		. .
	cp c			;910c	b9		.
	nop			;910d	00		.
	nop			;910e	00		.
	ld (bc),a		;910f	02		.
	ld (bc),a		;9110	02		.
	rlca			;9111	07		.
	ex af,af'		;9112	08		.
	cp d			;9113	ba		.
	cp e			;9114	bb		.
	nop			;9115	00		.
	nop			;9116	00		.
	ld (bc),a		;9117	02		.
	ld (bc),a		;9118	02		.
	cp h			;9119	bc		.
	cp l			;911a	bd		.
	add hl,bc		;911b	09		.
	ld a,(bc)		;911c	0a		.
	nop			;911d	00		.
	nop			;911e	00		.
	ld (bc),a		;911f	02		.
	ld (bc),a		;9120	02		.
	cp (hl)			;9121	be		.
	cp a			;9122	bf		.
	dec bc			;9123	0b		.
	inc c			;9124	0c		.
	nop			;9125	00		.
	nop			;9126	00		.
	ld (bc),a		;9127	02		.
	ld (bc),a		;9128	02		.
	cp h			;9129	bc		.
	cp l			;912a	bd		.
	dec c			;912b	0d		.
	ld c,000h		;912c	0e 00		. .
	nop			;912e	00		.
	ld (bc),a		;912f	02		.
	ld (bc),a		;9130	02		.
	cp (hl)			;9131	be		.
	cp a			;9132	bf		.
	rrca			;9133	0f		.
	djnz l9136h		;9134	10 00		. .
l9136h:
	nop			;9136	00		.
	ld (bc),a		;9137	02		.
	inc b			;9138	04		.
	xor d			;9139	aa		.
	xor h			;913a	ac		.
	xor l			;913b	ad		.
	xor e			;913c	ab		.
	or h			;913d	b4		.
	or l			;913e	b5		.
	or (hl)			;913f	b6		.
	or a			;9140	b7		.
	nop			;9141	00		.
	nop			;9142	00		.
	ld (bc),a		;9143	02		.
	inc b			;9144	04		.
	or b			;9145	b0		.
	or c			;9146	b1		.
	or d			;9147	b2		.
	or e			;9148	b3		.
	xor b			;9149	a8		.
	xor (hl)		;914a	ae		.
	xor a			;914b	af		.
	xor c			;914c	a9		.
	nop			;914d	00		.
	nop			;914e	00		.
	ld (bc),a		;914f	02		.
	inc b			;9150	04		.
	nop			;9151	00		.
	nop			;9152	00		.
	nop			;9153	00		.
	nop			;9154	00		.
	ret nz			;9155	c0		.
	pop bc			;9156	c1		.
	jp nz,000c3h		;9157	c2 c3 00	. . .
	nop			;915a	00		.
	ld bc,0c404h		;915b	01 04 c4	. . .
	push bc			;915e	c5		.
	add a,0c7h		;915f	c6 c7		. .
	nop			;9161	00		.
	nop			;9162	00		.
	ld (bc),a		;9163	02		.
	ld bc,0cdcch		;9164	01 cc cd	. . .
	nop			;9167	00		.
	nop			;9168	00		.
	ld bc,0ca02h		;9169	01 02 ca	. . .
	rlc c			;916c	cb 01		. .
	nop			;916e	00		.
	ld bc,0cc02h		;916f	01 02 cc	. . .
	call 00000h		;9172	cd 00 00	. . .
	ld bc,0ca02h		;9175	01 02 ca	. . .
	rlc b			;9178	cb 00		. .
	nop			;917a	00		.
	add hl,bc		;917b	09		.
	ld a,(bc)		;917c	0a		.
	nop			;917d	00		.
	nop			;917e	00		.
	nop			;917f	00		.
	nop			;9180	00		.
	sbc a,b			;9181	98		.
	sbc a,c			;9182	99		.
	add hl,sp		;9183	39		9
	ld e,c			;9184	59		Y
	xor d			;9185	aa		.
	xor a			;9186	af		.
	nop			;9187	00		.
	nop			;9188	00		.
	nop			;9189	00		.
	sbc a,d			;918a	9a		.
	ld a,d			;918b	7a		z
	ld l,a			;918c	6f		o
	ld e,d			;918d	5a		Z
	ld a,(01f3bh)		;918e	3a 3b 1f	: ; .
	nop			;9191	00		.
	nop			;9192	00		.
	nop			;9193	00		.
	or c			;9194	b1		.
	and a			;9195	a7		.
	ld (hl),b		;9196	70		p
	ld e,e			;9197	5b		[
	ld (hl),h		;9198	74		t
	adc a,a			;9199	8f		.
	jr nz,l919ch		;919a	20 00		  .
l919ch:
	nop			;919c	00		.
	sub a			;919d	97		.
	or (hl)			;919e	b6		.
	or a			;919f	b7		.
	ccf			;91a0	3f		?
	ld (hl),d		;91a1	72		r
	xor a			;91a2	af		.
	ld (hl),b		;91a3	70		p
	ld c,(hl)		;91a4	4e		N
l91a5h:
	nop			;91a5	00		.
	nop			;91a6	00		.
	sbc a,b			;91a7	98		.
	cp d			;91a8	ba		.
	cp e			;91a9	bb		.
	ld d,h			;91aa	54		T
	or c			;91ab	b1		.
	ld b,b			;91ac	40		@
	dec h			;91ad	25		%
	ld h,000h		;91ae	26 00		& .
	nop			;91b0	00		.
	sbc a,c			;91b1	99		.
	sbc a,l			;91b2	9d		.
	ld a,e			;91b3	7b		{
	ld d,e			;91b4	53		S
	or b			;91b5	b0		.
	scf			;91b6	37		7
	jr c,l91f2h		;91b7	38 39		8 9
	nop			;91b9	00		.
	sbc a,c			;91ba	99		.
	ld d,c			;91bb	51		Q
	ld c,l			;91bc	4d		M
	ld a,c			;91bd	79		y
	ld l,(hl)		;91be	6e		n
	ld l,a			;91bf	6f		o
	ld (hl),e		;91c0	73		s
	ld (hl),l		;91c1	75		u
	ret nz			;91c2	c0		.
	sbc a,c			;91c3	99		.
	ld d,c			;91c4	51		Q
	ld c,l			;91c5	4d		M
	xor d			;91c6	aa		.
	xor h			;91c7	ac		.
	xor d			;91c8	aa		.
	xor e			;91c9	ab		.
	jp 05762h		;91ca	c3 62 57	. b W
	ld d,c			;91cd	51		Q
	ld c,l			;91ce	4d		M
	xor (hl)		;91cf	ae		.
	and (hl)		;91d0	a6		.
	xor (hl)		;91d1	ae		.
	and (hl)		;91d2	a6		.
	ld (hl),c		;91d3	71		q
	ld e,(hl)		;91d4	5e		^
	ld h,b			;91d5	60		`
	ld h,c			;91d6	61		a
	nop			;91d7	00		.
	nop			;91d8	00		.
	add hl,bc		;91d9	09		.
	ld a,(bc)		;91da	0a		.
	ld l,(hl)		;91db	6e		n
	xor e			;91dc	ab		.
	adc a,h			;91dd	8c		.
	and h			;91de	a4		.
	sbc a,(hl)		;91df	9e		.
	nop			;91e0	00		.
	nop			;91e1	00		.
	nop			;91e2	00		.
	nop			;91e3	00		.
	nop			;91e4	00		.
	inc e			;91e5	1c		.
	ld c,b			;91e6	48		H
	ret nz			;91e7	c0		.
	pop bc			;91e8	c1		.
	jp nz,l9ec3h		;91e9	c2 c3 9e	. . .
	nop			;91ec	00		.
	nop			;91ed	00		.
	nop			;91ee	00		.
	dec e			;91ef	1d		.
	ld (hl),a		;91f0	77		w
	ld h,h			;91f1	64		d
l91f2h:
	ld h,(hl)		;91f2	66		f
	ld l,b			;91f3	68		h
	adc a,c			;91f4	89		.
	add a,d			;91f5	82		.
	and e			;91f6	a3		.
	nop			;91f7	00		.
	nop			;91f8	00		.
	ld (hl),h		;91f9	74		t
	ld b,e			;91fa	43		C
	ld h,l			;91fb	65		e
	ld h,h			;91fc	64		d
	ld l,c			;91fd	69		i
	ld l,l			;91fe	6d		m
	sbc a,(hl)		;91ff	9e		.
	sbc a,a			;9200	9f		.
	nop			;9201	00		.
	nop			;9202	00		.
	daa			;9203	27		'
	jr z,l924dh		;9204	28 47		( G
	ld e,e			;9206	5b		[
	ld h,e			;9207	63		c
	ld c,a			;9208	4f		O
	ld h,e			;9209	63		c
	ld c,a			;920a	4f		O
	and e			;920b	a3		.
	nop			;920c	00		.
	add hl,hl		;920d	29		)
	ld hl,(0772bh)		;920e	2a 2b 77	* + w
	ld e,d			;9211	5a		Z
	ld e,h			;9212	5c		\
	ld e,d			;9213	5a		Z
	ld e,h			;9214	5c		\
	halt			;9215	76		v
	and l			;9216	a5		.
	dec (hl)		;9217	35		5
	ld (hl),03bh		;9218	36 3b		6 ;
	inc a			;921a	3c		<
	add a,d			;921b	82		.
	add a,d			;921c	82		.
	add a,d			;921d	82		.
	add a,0c7h		;921e	c6 c7		. .
	or d			;9220	b2		.
	ld e,l			;9221	5d		]
	ret z			;9222	c8		.
	ret			;9223	c9		.
	add a,0cbh		;9224	c6 cb		. .
	ret z			;9226	c8		.
	ret			;9227	c9		.
	push bc			;9228	c5		.
	jp nz,058b3h		;9229	c2 b3 58	. . X
	adc a,b			;922c	88		.
	adc a,c			;922d	89		.
	adc a,d			;922e	8a		.
	adc a,e			;922f	8b		.
	adc a,b			;9230	88		.
	adc a,c			;9231	89		.
	adc a,h			;9232	8c		.
	and c			;9233	a1		.
	nop			;9234	00		.
	nop			;9235	00		.
	nop			;9236	00		.
	add hl,bc		;9237	09		.
	ex af,af'		;9238	08		.
	nop			;9239	00		.
	nop			;923a	00		.
	nop			;923b	00		.
	nop			;923c	00		.
	nop			;923d	00		.
	xor a			;923e	af		.
	ld l,(hl)		;923f	6e		n
	nop			;9240	00		.
	nop			;9241	00		.
	nop			;9242	00		.
	nop			;9243	00		.
	nop			;9244	00		.
	dec sp			;9245	3b		;
	rra			;9246	1f		.
	inc e			;9247	1c		.
	ld c,b			;9248	48		H
	nop			;9249	00		.
	nop			;924a	00		.
	nop			;924b	00		.
	halt			;924c	76		v
l924dh:
	ld l,h			;924d	6c		l
	jr nz,$+31		;924e	20 1d		  .
	ld (hl),a		;9250	77		w
	nop			;9251	00		.
	nop			;9252	00		.
	jr nc,l92aeh		;9253	30 59		0 Y
	dec l			;9255	2d		-
	dec a			;9256	3d		=
	ld b,c			;9257	41		A
	ld b,e			;9258	43		C
	nop			;9259	00		.
	ld d,l			;925a	55		U
	inc l			;925b	2c		,
	dec l			;925c	2d		-
	ld l,02fh		;925d	2e 2f		. /
	ld b,d			;925f	42		B
	nop			;9260	00		.
	xor l			;9261	ad		.
	ld sp,02e2dh		;9262	31 2d 2e	1 - .
	ld l,b			;9265	68		h
	ld c,c			;9266	49		I
	nop			;9267	00		.
	nop			;9268	00		.
	rra			;9269	1f		.
	inc e			;926a	1c		.
	ld (03433h),a		;926b	32 33 34	2 3 4
	nop			;926e	00		.
	nop			;926f	00		.
	nop			;9270	00		.
	jr nz,l9290h		;9271	20 1d		  .
	ld d,b			;9273	50		P
	and a			;9274	a7		.
	nop			;9275	00		.
	nop			;9276	00		.
	nop			;9277	00		.
	nop			;9278	00		.
	ld c,d			;9279	4a		J
	ld c,e			;927a	4b		K
	ld d,(hl)		;927b	56		V
	nop			;927c	00		.
	nop			;927d	00		.
	nop			;927e	00		.
	nop			;927f	00		.
	nop			;9280	00		.
	nop			;9281	00		.
	nop			;9282	00		.
	ld b,009h		;9283	06 09		. .
	nop			;9285	00		.
	nop			;9286	00		.
	nop			;9287	00		.
	nop			;9288	00		.
	nop			;9289	00		.
	nop			;928a	00		.
	xor a			;928b	af		.
	ld l,(hl)		;928c	6e		n
	nop			;928d	00		.
	nop			;928e	00		.
	nop			;928f	00		.
l9290h:
	nop			;9290	00		.
	add a,h			;9291	84		.
	ld c,l			;9292	4d		M
	ld c,(hl)		;9293	4e		N
	rra			;9294	1f		.
	inc e			;9295	1c		.
	ld c,b			;9296	48		H
	or b			;9297	b0		.
	and (hl)		;9298	a6		.
	ld c,a			;9299	4f		O
	ld d,b			;929a	50		P
	ld d,c			;929b	51		Q
	ld a,c			;929c	79		y
	jr nz,l92bch		;929d	20 1d		  .
	ld (hl),a		;929f	77		w
	rra			;92a0	1f		.
	inc e			;92a1	1c		.
	ld b,h			;92a2	44		D
	ld b,l			;92a3	45		E
	ld b,(hl)		;92a4	46		F
	ld h,a			;92a5	67		g
	ld c,h			;92a6	4c		L
	ld (hl),h		;92a7	74		t
	ld b,e			;92a8	43		C
	jr nz,l92c8h		;92a9	20 1d		  .
	ld c,b			;92ab	48		H
	ld l,d			;92ac	6a		j
	ld l,e			;92ad	6b		k
l92aeh:
	ld a,b			;92ae	78		x
	nop			;92af	00		.
	nop			;92b0	00		.
	nop			;92b1	00		.
	and b			;92b2	a0		.
	ld l,h			;92b3	6c		l
	ld d,d			;92b4	52		R
	nop			;92b5	00		.
	nop			;92b6	00		.
	nop			;92b7	00		.
	nop			;92b8	00		.
	nop			;92b9	00		.
	nop			;92ba	00		.
	nop			;92bb	00		.
l92bch:
	nop			;92bc	00		.
	inc b			;92bd	04		.
	add hl,bc		;92be	09		.
	sub (hl)		;92bf	96		.
	sub a			;92c0	97		.
	sbc a,l			;92c1	9d		.
	sbc a,h			;92c2	9c		.
	ld (hl),d		;92c3	72		r
	add a,c			;92c4	81		.
	adc a,b			;92c5	88		.
	xor (hl)		;92c6	ae		.
	ld l,(hl)		;92c7	6e		n
l92c8h:
	rra			;92c8	1f		.
	inc e			;92c9	1c		.
	ld c,e			;92ca	4b		K
	ld c,h			;92cb	4c		L
	ld c,h			;92cc	4c		L
	ld c,h			;92cd	4c		L
	ld e,l			;92ce	5d		]
	rra			;92cf	1f		.
	inc e			;92d0	1c		.
	jr nz,l92f0h		;92d1	20 1d		  .
	add a,b			;92d3	80		.
	inc a			;92d4	3c		<
	inc a			;92d5	3c		<
	inc a			;92d6	3c		<
	adc a,d			;92d7	8a		.
	jr nz,l92f7h		;92d8	20 1d		  .
	sbc a,e			;92da	9b		.
	cp b			;92db	b8		.
	cp c			;92dc	b9		.
	ld h,(hl)		;92dd	66		f
	ld a,0a8h		;92de	3e a8		> .
	xor c			;92e0	a9		.
	ld c,(hl)		;92e1	4e		N
	ld (hl),h		;92e2	74		t
	nop			;92e3	00		.
	nop			;92e4	00		.
	dec b			;92e5	05		.
	ex af,af'		;92e6	08		.
	sub (hl)		;92e7	96		.
	sub a			;92e8	97		.
	sbc a,(hl)		;92e9	9e		.
	nop			;92ea	00		.
	nop			;92eb	00		.
	nop			;92ec	00		.
	nop			;92ed	00		.
	nop			;92ee	00		.
	rra			;92ef	1f		.
l92f0h:
	inc e			;92f0	1c		.
	ld d,d			;92f1	52		R
	ld c,d			;92f2	4a		J
	sbc a,a			;92f3	9f		.
	sbc a,(hl)		;92f4	9e		.
	nop			;92f5	00		.
	nop			;92f6	00		.
l92f7h:
	jr nz,l9316h		;92f7	20 1d		  .
	ld b,a			;92f9	47		G
	ld d,e			;92fa	53		S
	ld d,h			;92fb	54		T
	xor b			;92fc	a8		.
	xor l			;92fd	ad		.
	ld l,(hl)		;92fe	6e		n
	add a,a			;92ff	87		.
	ld e,h			;9300	5c		\
	ld (hl),c		;9301	71		q
	dec a			;9302	3d		=
	ld a,03fh		;9303	3e 3f		> ?
	rra			;9305	1f		.
	inc e			;9306	1c		.
	nop			;9307	00		.
	nop			;9308	00		.
	nop			;9309	00		.
	adc a,(hl)		;930a	8e		.
	ld h,e			;930b	63		c
	ld h,c			;930c	61		a
	jr nz,l932ch		;930d	20 1d		  .
	nop			;930f	00		.
	nop			;9310	00		.
	ex af,af'		;9311	08		.
	rlca			;9312	07		.
	sub (hl)		;9313	96		.
	sub a			;9314	97		.
	nop			;9315	00		.
l9316h:
	nop			;9316	00		.
	nop			;9317	00		.
	nop			;9318	00		.
	nop			;9319	00		.
	rra			;931a	1f		.
	inc e			;931b	1c		.
	and l			;931c	a5		.
	nop			;931d	00		.
	nop			;931e	00		.
	nop			;931f	00		.
	nop			;9320	00		.
	jr nz,l9340h		;9321	20 1d		  .
	ld e,(hl)		;9323	5e		^
	and b			;9324	a0		.
	nop			;9325	00		.
	nop			;9326	00		.
	nop			;9327	00		.
	or d			;9328	b2		.
	ld a,b			;9329	78		x
	ld e,a			;932a	5f		_
	ld d,(hl)		;932b	56		V
l932ch:
	and b			;932c	a0		.
	nop			;932d	00		.
	nop			;932e	00		.
	nop			;932f	00		.
	or l			;9330	b5		.
	ld b,b			;9331	40		@
	ld a,e			;9332	7b		{
	ld d,(hl)		;9333	56		V
	and b			;9334	a0		.
	nop			;9335	00		.
	nop			;9336	00		.
	nop			;9337	00		.
	ld a,l			;9338	7d		}
	ld b,b			;9339	40		@
	ld a,(hl)		;933a	7e		~
	ld l,l			;933b	6d		m
	add a,(hl)		;933c	86		.
	nop			;933d	00		.
	nop			;933e	00		.
	nop			;933f	00		.
l9340h:
	ld (hl),e		;9340	73		s
	ld b,c			;9341	41		A
	rra			;9342	1f		.
	inc e			;9343	1c		.
	nop			;9344	00		.
	nop			;9345	00		.
	nop			;9346	00		.
	nop			;9347	00		.
	ld h,l			;9348	65		e
	jr nz,l9368h		;9349	20 1d		  .
	nop			;934b	00		.
	nop			;934c	00		.
	ld a,(bc)		;934d	0a		.
	dec b			;934e	05		.
	sub (hl)		;934f	96		.
	sub a			;9350	97		.
	nop			;9351	00		.
	nop			;9352	00		.
	nop			;9353	00		.
	rra			;9354	1f		.
	inc e			;9355	1c		.
	sbc a,b			;9356	98		.
	nop			;9357	00		.
	nop			;9358	00		.
	jr nz,l9378h		;9359	20 1d		  .
	xor c			;935b	a9		.
	and c			;935c	a1		.
	nop			;935d	00		.
	ld a,h			;935e	7c		|
	ld (hl),l		;935f	75		u
	ld d,a			;9360	57		W
	and d			;9361	a2		.
	nop			;9362	00		.
	or h			;9363	b4		.
	ld b,d			;9364	42		B
	ld d,l			;9365	55		U
	ld c,c			;9366	49		I
	nop			;9367	00		.
l9368h:
	or e			;9368	b3		.
	ld l,c			;9369	69		i
	ld b,e			;936a	43		C
	add a,e			;936b	83		.
	and c			;936c	a1		.
	nop			;936d	00		.
	ld l,d			;936e	6a		j
	ld b,h			;936f	44		D
	ld e,b			;9370	58		X
	and d			;9371	a2		.
	nop			;9372	00		.
	ld l,e			;9373	6b		k
	ld b,l			;9374	45		E
	adc a,l			;9375	8d		.
	add a,l			;9376	85		.
	nop			;9377	00		.
l9378h:
	adc a,e			;9378	8b		.
	ld b,(hl)		;9379	46		F
	rra			;937a	1f		.
	inc e			;937b	1c		.
	nop			;937c	00		.
	nop			;937d	00		.
	ld h,a			;937e	67		g
	jr nz,l939eh		;937f	20 1d		  .
	nop			;9381	00		.
	nop			;9382	00		.
	dec b			;9383	05		.
	dec c			;9384	0d		.
	nop			;9385	00		.
	nop			;9386	00		.
	nop			;9387	00		.
	nop			;9388	00		.
	nop			;9389	00		.
	inc bc			;938a	03		.
	inc b			;938b	04		.
	dec b			;938c	05		.
	nop			;938d	00		.
	nop			;938e	00		.
	nop			;938f	00		.
	nop			;9390	00		.
	nop			;9391	00		.
	nop			;9392	00		.
	ld (bc),a		;9393	02		.
	ld d,010h		;9394	16 10		. .
	dec h			;9396	25		%
	ld h,027h		;9397	26 27		& '
	jr z,$+8		;9399	28 06		( .
	rlca			;939b	07		.
	ex af,af'		;939c	08		.
	nop			;939d	00		.
l939eh:
	nop			;939e	00		.
	ld a,(bc)		;939f	0a		.
	jr $+15			;93a0	18 0d		. .
	rrca			;93a2	0f		.
	inc de			;93a3	13		.
	inc de			;93a4	13		.
	add hl,hl		;93a5	29		)
	ld hl,(0212bh)		;93a6	2a 2b 21	* + !
	dec de			;93a9	1b		.
	rla			;93aa	17		.
	ld de,0191ah		;93ab	11 1a 19	. . .
	ld c,014h		;93ae	0e 14		. .
	add hl,bc		;93b0	09		.
	ld e,01eh		;93b1	1e 1e		. .
	inc hl			;93b3	23		#
	inc h			;93b4	24		$
	ld (de),a		;93b5	12		.
	dec d			;93b6	15		.
	dec d			;93b7	15		.
	ld (01a00h),hl		;93b8	22 00 1a	" . .
	dec bc			;93bb	0b		.
	inc c			;93bc	0c		.
	nop			;93bd	00		.
	nop			;93be	00		.
	nop			;93bf	00		.
	nop			;93c0	00		.
	nop			;93c1	00		.
	nop			;93c2	00		.
	nop			;93c3	00		.
	nop			;93c4	00		.
	nop			;93c5	00		.
	nop			;93c6	00		.
	nop			;93c7	00		.
	inc b			;93c8	04		.
	djnz l93cbh		;93c9	10 00		. .
l93cbh:
	nop			;93cb	00		.
	nop			;93cc	00		.
	nop			;93cd	00		.
	nop			;93ce	00		.
	nop			;93cf	00		.
	nop			;93d0	00		.
	nop			;93d1	00		.
	nop			;93d2	00		.
	nop			;93d3	00		.
	nop			;93d4	00		.
	nop			;93d5	00		.
	nop			;93d6	00		.
	add a,0c7h		;93d7	c6 c7		. .
	or d			;93d9	b2		.
	nop			;93da	00		.
	nop			;93db	00		.
	nop			;93dc	00		.
	nop			;93dd	00		.
	nop			;93de	00		.
	nop			;93df	00		.
	nop			;93e0	00		.
	ret z			;93e1	c8		.
	ret			;93e2	c9		.
	add a,0cbh		;93e3	c6 cb		. .
	ret z			;93e5	c8		.
	ret			;93e6	c9		.
	push bc			;93e7	c5		.
	jp nz,000b3h		;93e8	c2 b3 00	. . .
	nop			;93eb	00		.
	nop			;93ec	00		.
	nop			;93ed	00		.
	nop			;93ee	00		.
	nop			;93ef	00		.
	nop			;93f0	00		.
	adc a,b			;93f1	88		.
	adc a,c			;93f2	89		.
	adc a,d			;93f3	8a		.
	adc a,e			;93f4	8b		.
	adc a,b			;93f5	88		.
	adc a,c			;93f6	89		.
	adc a,h			;93f7	8c		.
	and c			;93f8	a1		.
	nop			;93f9	00		.
	add a,l			;93fa	85		.
	add a,e			;93fb	83		.
	add a,(hl)		;93fc	86		.
	ld a,d			;93fd	7a		z
	add a,h			;93fe	84		.
	ld a,l			;93ff	7d		}
	add a,(hl)		;9400	86		.
	ld a,d			;9401	7a		z
	add a,l			;9402	85		.
	add a,e			;9403	83		.
	add a,(hl)		;9404	86		.
	ld a,d			;9405	7a		z
	add a,h			;9406	84		.
	sub c			;9407	91		.
	sub e			;9408	93		.
	sub h			;9409	94		.
	nop			;940a	00		.
	nop			;940b	00		.
	inc b			;940c	04		.
	djnz l940fh		;940d	10 00		. .
l940fh:
	nop			;940f	00		.
	nop			;9410	00		.
	nop			;9411	00		.
	nop			;9412	00		.
	nop			;9413	00		.
	nop			;9414	00		.
	nop			;9415	00		.
	nop			;9416	00		.
	nop			;9417	00		.
	nop			;9418	00		.
	nop			;9419	00		.
	nop			;941a	00		.
	add a,0c7h		;941b	c6 c7		. .
	or h			;941d	b4		.
	nop			;941e	00		.
	nop			;941f	00		.
	nop			;9420	00		.
	nop			;9421	00		.
	nop			;9422	00		.
	nop			;9423	00		.
	nop			;9424	00		.
	add a,0cbh		;9425	c6 cb		. .
	call z,0c6cdh		;9427	cc cd c6	. . .
	set 1,d			;942a	cb ca		. .
	pop bc			;942c	c1		.
	or l			;942d	b5		.
	nop			;942e	00		.
	nop			;942f	00		.
	nop			;9430	00		.
	nop			;9431	00		.
	nop			;9432	00		.
	nop			;9433	00		.
	nop			;9434	00		.
	adc a,l			;9435	8d		.
	adc a,(hl)		;9436	8e		.
	adc a,a			;9437	8f		.
	cp h			;9438	bc		.
	adc a,l			;9439	8d		.
	adc a,(hl)		;943a	8e		.
	cp l			;943b	bd		.
	and d			;943c	a2		.
	nop			;943d	00		.
	add a,e			;943e	83		.
	add a,(hl)		;943f	86		.
	add a,a			;9440	87		.
	add a,h			;9441	84		.
	ld a,l			;9442	7d		}
	add a,(hl)		;9443	86		.
	add a,a			;9444	87		.
	add a,l			;9445	85		.
	add a,e			;9446	83		.
	add a,(hl)		;9447	86		.
	add a,a			;9448	87		.
	add a,h			;9449	84		.
	ld a,l			;944a	7d		}
	add a,(hl)		;944b	86		.
	sub l			;944c	95		.
	sub d			;944d	92		.
	nop			;944e	00		.
	nop			;944f	00		.
	inc b			;9450	04		.
	djnz l9453h		;9451	10 00		. .
l9453h:
	nop			;9453	00		.
	nop			;9454	00		.
	nop			;9455	00		.
	nop			;9456	00		.
	nop			;9457	00		.
	nop			;9458	00		.
	nop			;9459	00		.
	nop			;945a	00		.
	nop			;945b	00		.
	nop			;945c	00		.
	nop			;945d	00		.
	nop			;945e	00		.
	add a,0c7h		;945f	c6 c7		. .
	or d			;9461	b2		.
	nop			;9462	00		.
	nop			;9463	00		.
	nop			;9464	00		.
	nop			;9465	00		.
	nop			;9466	00		.
	nop			;9467	00		.
	nop			;9468	00		.
	add a,0cbh		;9469	c6 cb		. .
	ret z			;946b	c8		.
	ret			;946c	c9		.
	add a,0cbh		;946d	c6 cb		. .
	push bc			;946f	c5		.
	jp nz,000b3h		;9470	c2 b3 00	. . .
	nop			;9473	00		.
	nop			;9474	00		.
	nop			;9475	00		.
	nop			;9476	00		.
	nop			;9477	00		.
	nop			;9478	00		.
	adc a,d			;9479	8a		.
	adc a,e			;947a	8b		.
	adc a,b			;947b	88		.
	adc a,c			;947c	89		.
	adc a,d			;947d	8a		.
	adc a,e			;947e	8b		.
	cp (hl)			;947f	be		.
	and c			;9480	a1		.
	nop			;9481	00		.
	add a,(hl)		;9482	86		.
	ld a,d			;9483	7a		z
	add a,h			;9484	84		.
	ld a,l			;9485	7d		}
	add a,(hl)		;9486	86		.
	ld a,d			;9487	7a		z
	add a,l			;9488	85		.
	add a,e			;9489	83		.
	add a,(hl)		;948a	86		.
	ld a,d			;948b	7a		z
	add a,h			;948c	84		.
	ld a,l			;948d	7d		}
	add a,(hl)		;948e	86		.
	sub (hl)		;948f	96		.
	sub d			;9490	92		.
	add a,c			;9491	81		.
	nop			;9492	00		.
	nop			;9493	00		.
	inc b			;9494	04		.
	djnz l9497h		;9495	10 00		. .
l9497h:
	nop			;9497	00		.
	nop			;9498	00		.
	nop			;9499	00		.
	nop			;949a	00		.
	nop			;949b	00		.
	nop			;949c	00		.
	nop			;949d	00		.
	nop			;949e	00		.
	nop			;949f	00		.
	nop			;94a0	00		.
	nop			;94a1	00		.
	nop			;94a2	00		.
	add a,0c7h		;94a3	c6 c7		. .
	or h			;94a5	b4		.
	nop			;94a6	00		.
	nop			;94a7	00		.
	nop			;94a8	00		.
	nop			;94a9	00		.
	nop			;94aa	00		.
	nop			;94ab	00		.
	nop			;94ac	00		.
	call z,0c6cdh		;94ad	cc cd c6	. . .
	set 1,h			;94b0	cb cc		. .
	call 0c1c4h		;94b2	cd c4 c1	. . .
	or l			;94b5	b5		.
	nop			;94b6	00		.
	nop			;94b7	00		.
	nop			;94b8	00		.
	nop			;94b9	00		.
	nop			;94ba	00		.
	nop			;94bb	00		.
	nop			;94bc	00		.
	adc a,a			;94bd	8f		.
	cp h			;94be	bc		.
	adc a,l			;94bf	8d		.
	adc a,(hl)		;94c0	8e		.
	adc a,a			;94c1	8f		.
	cp h			;94c2	bc		.
	cp a			;94c3	bf		.
	and h			;94c4	a4		.
	nop			;94c5	00		.
	add a,a			;94c6	87		.
	add a,h			;94c7	84		.
	ld a,l			;94c8	7d		}
	add a,(hl)		;94c9	86		.
	add a,a			;94ca	87		.
	add a,l			;94cb	85		.
	add a,e			;94cc	83		.
	add a,(hl)		;94cd	86		.
	add a,a			;94ce	87		.
	add a,h			;94cf	84		.
	ld a,l			;94d0	7d		}
	add a,(hl)		;94d1	86		.
	add a,a			;94d2	87		.
	add a,l			;94d3	85		.
	add a,c			;94d4	81		.
	sub e			;94d5	93		.
	nop			;94d6	00		.
	nop			;94d7	00		.
	inc b			;94d8	04		.
	djnz l94dbh		;94d9	10 00		. .
l94dbh:
	nop			;94db	00		.
	nop			;94dc	00		.
	nop			;94dd	00		.
	nop			;94de	00		.
	nop			;94df	00		.
	nop			;94e0	00		.
	nop			;94e1	00		.
	nop			;94e2	00		.
	nop			;94e3	00		.
	nop			;94e4	00		.
	nop			;94e5	00		.
	nop			;94e6	00		.
	add a,0c7h		;94e7	c6 c7		. .
	or d			;94e9	b2		.
	nop			;94ea	00		.
	nop			;94eb	00		.
	nop			;94ec	00		.
	nop			;94ed	00		.
	nop			;94ee	00		.
	nop			;94ef	00		.
	nop			;94f0	00		.
	ret z			;94f1	c8		.
	ret			;94f2	c9		.
	add a,0cbh		;94f3	c6 cb		. .
	ret z			;94f5	c8		.
	ret			;94f6	c9		.
	push bc			;94f7	c5		.
	jp nz,000b3h		;94f8	c2 b3 00	. . .
	nop			;94fb	00		.
	nop			;94fc	00		.
	nop			;94fd	00		.
	nop			;94fe	00		.
	nop			;94ff	00		.
	nop			;9500	00		.
	adc a,b			;9501	88		.
	adc a,c			;9502	89		.
	adc a,d			;9503	8a		.
	adc a,e			;9504	8b		.
	adc a,b			;9505	88		.
	adc a,c			;9506	89		.
	adc a,h			;9507	8c		.
	and c			;9508	a1		.
	nop			;9509	00		.
	add a,h			;950a	84		.
	ld a,l			;950b	7d		}
	add a,(hl)		;950c	86		.
	ld a,d			;950d	7a		z
	add a,l			;950e	85		.
	add a,e			;950f	83		.
	add a,(hl)		;9510	86		.
	ld a,d			;9511	7a		z
	add a,h			;9512	84		.
	ld a,l			;9513	7d		}
	add a,(hl)		;9514	86		.
	ld a,d			;9515	7a		z
	add a,l			;9516	85		.
	add a,c			;9517	81		.
	sub e			;9518	93		.
	sub h			;9519	94		.
	nop			;951a	00		.
	nop			;951b	00		.
	inc b			;951c	04		.
	djnz l951fh		;951d	10 00		. .
l951fh:
	nop			;951f	00		.
	nop			;9520	00		.
	nop			;9521	00		.
	nop			;9522	00		.
	nop			;9523	00		.
	nop			;9524	00		.
	nop			;9525	00		.
	nop			;9526	00		.
	nop			;9527	00		.
	nop			;9528	00		.
	nop			;9529	00		.
	nop			;952a	00		.
	add a,0c7h		;952b	c6 c7		. .
	or h			;952d	b4		.
	nop			;952e	00		.
	nop			;952f	00		.
	nop			;9530	00		.
	nop			;9531	00		.
	nop			;9532	00		.
	nop			;9533	00		.
	nop			;9534	00		.
	add a,0cbh		;9535	c6 cb		. .
	call z,0c6cdh		;9537	cc cd c6	. . .
	set 1,d			;953a	cb ca		. .
	pop bc			;953c	c1		.
	or l			;953d	b5		.
	nop			;953e	00		.
	nop			;953f	00		.
	nop			;9540	00		.
	nop			;9541	00		.
	nop			;9542	00		.
	nop			;9543	00		.
	nop			;9544	00		.
	adc a,l			;9545	8d		.
	adc a,(hl)		;9546	8e		.
	adc a,a			;9547	8f		.
	cp h			;9548	bc		.
	adc a,l			;9549	8d		.
	adc a,(hl)		;954a	8e		.
	cp l			;954b	bd		.
	and d			;954c	a2		.
	nop			;954d	00		.
	ld a,l			;954e	7d		}
	add a,(hl)		;954f	86		.
	add a,a			;9550	87		.
	add a,l			;9551	85		.
	add a,e			;9552	83		.
	add a,(hl)		;9553	86		.
	add a,a			;9554	87		.
	add a,h			;9555	84		.
	ld a,l			;9556	7d		}
	add a,(hl)		;9557	86		.
	add a,a			;9558	87		.
	add a,l			;9559	85		.
	add a,e			;955a	83		.
	add a,(hl)		;955b	86		.
	sub l			;955c	95		.
	sub b			;955d	90		.
	nop			;955e	00		.
	nop			;955f	00		.
	inc b			;9560	04		.
	djnz l9563h		;9561	10 00		. .
l9563h:
	nop			;9563	00		.
	nop			;9564	00		.
	nop			;9565	00		.
	nop			;9566	00		.
	nop			;9567	00		.
	nop			;9568	00		.
	nop			;9569	00		.
	nop			;956a	00		.
	nop			;956b	00		.
	nop			;956c	00		.
	nop			;956d	00		.
	nop			;956e	00		.
	add a,0c7h		;956f	c6 c7		. .
	or d			;9571	b2		.
	nop			;9572	00		.
	nop			;9573	00		.
	nop			;9574	00		.
	nop			;9575	00		.
	nop			;9576	00		.
	nop			;9577	00		.
	nop			;9578	00		.
	add a,0cbh		;9579	c6 cb		. .
	ret z			;957b	c8		.
	ret			;957c	c9		.
	add a,0cbh		;957d	c6 cb		. .
	push bc			;957f	c5		.
	jp nz,000b3h		;9580	c2 b3 00	. . .
	nop			;9583	00		.
	nop			;9584	00		.
	nop			;9585	00		.
	nop			;9586	00		.
	nop			;9587	00		.
	nop			;9588	00		.
	adc a,d			;9589	8a		.
	adc a,e			;958a	8b		.
	adc a,b			;958b	88		.
	adc a,c			;958c	89		.
	adc a,d			;958d	8a		.
	adc a,e			;958e	8b		.
	cp (hl)			;958f	be		.
	and c			;9590	a1		.
	nop			;9591	00		.
	add a,(hl)		;9592	86		.
	ld a,d			;9593	7a		z
	add a,l			;9594	85		.
	add a,e			;9595	83		.
	add a,(hl)		;9596	86		.
	ld a,d			;9597	7a		z
	add a,h			;9598	84		.
	ld a,l			;9599	7d		}
	add a,(hl)		;959a	86		.
	ld a,d			;959b	7a		z
	add a,l			;959c	85		.
	add a,e			;959d	83		.
	add a,(hl)		;959e	86		.
	sub (hl)		;959f	96		.
	sub b			;95a0	90		.
	sub c			;95a1	91		.
	nop			;95a2	00		.
	nop			;95a3	00		.
	inc b			;95a4	04		.
	djnz l95a7h		;95a5	10 00		. .
l95a7h:
	nop			;95a7	00		.
	nop			;95a8	00		.
	nop			;95a9	00		.
	nop			;95aa	00		.
	nop			;95ab	00		.
	nop			;95ac	00		.
	nop			;95ad	00		.
	nop			;95ae	00		.
	nop			;95af	00		.
	nop			;95b0	00		.
	nop			;95b1	00		.
	nop			;95b2	00		.
	add a,0c7h		;95b3	c6 c7		. .
	or h			;95b5	b4		.
	nop			;95b6	00		.
	nop			;95b7	00		.
	nop			;95b8	00		.
	nop			;95b9	00		.
	nop			;95ba	00		.
	nop			;95bb	00		.
	nop			;95bc	00		.
	call z,0c6cdh		;95bd	cc cd c6	. . .
	set 1,h			;95c0	cb cc		. .
	call 0c1c4h		;95c2	cd c4 c1	. . .
	or l			;95c5	b5		.
	nop			;95c6	00		.
	nop			;95c7	00		.
	nop			;95c8	00		.
	nop			;95c9	00		.
	nop			;95ca	00		.
	nop			;95cb	00		.
	nop			;95cc	00		.
	adc a,a			;95cd	8f		.
	cp h			;95ce	bc		.
	adc a,l			;95cf	8d		.
	adc a,(hl)		;95d0	8e		.
	adc a,a			;95d1	8f		.
	cp h			;95d2	bc		.
	cp a			;95d3	bf		.
	and h			;95d4	a4		.
	nop			;95d5	00		.
	add a,a			;95d6	87		.
	add a,l			;95d7	85		.
	add a,e			;95d8	83		.
	add a,(hl)		;95d9	86		.
	add a,a			;95da	87		.
	add a,h			;95db	84		.
	ld a,l			;95dc	7d		}
	add a,(hl)		;95dd	86		.
	add a,a			;95de	87		.
	add a,l			;95df	85		.
	add a,e			;95e0	83		.
	add a,(hl)		;95e1	86		.
	add a,a			;95e2	87		.
	add a,h			;95e3	84		.
	sub c			;95e4	91		.
	sub e			;95e5	93		.
	ld bc,00d96h		;95e6	01 96 0d	. . .
	sub (hl)		;95e9	96		.
	ld d,c			;95ea	51		Q
	sub (hl)		;95eb	96		.
	ld e,c			;95ec	59		Y
	sub (hl)		;95ed	96		.
	ld h,c			;95ee	61		a
	sub (hl)		;95ef	96		.
	ld l,c			;95f0	69		i
	sub (hl)		;95f1	96		.
	ld sp,03996h		;95f2	31 96 39	1 . 9
	sub (hl)		;95f5	96		.
	ld b,c			;95f6	41		A
	sub (hl)		;95f7	96		.
	ld c,c			;95f8	49		I
	sub (hl)		;95f9	96		.
	call m,00095h		;95fa	fc 95 00	. . .
	nop			;95fd	00		.
	ld bc,0cd01h		;95fe	01 01 cd	. . .
	nop			;9601	00		.
	nop			;9602	00		.
	ld (bc),a		;9603	02		.
	inc b			;9604	04		.
	call nz,0c1c0h		;9605	c4 c0 c1	. . .
	push bc			;9608	c5		.
	cp h			;9609	bc		.
	cp l			;960a	bd		.
	cp (hl)			;960b	be		.
	cp a			;960c	bf		.
	nop			;960d	00		.
	nop			;960e	00		.
	ld (bc),a		;960f	02		.
	inc b			;9610	04		.
	cp h			;9611	bc		.
	cp l			;9612	bd		.
	cp (hl)			;9613	be		.
	cp a			;9614	bf		.
	call nz,0c1c0h		;9615	c4 c0 c1	. . .
	push bc			;9618	c5		.
	nop			;9619	00		.
	nop			;961a	00		.
	ld (bc),a		;961b	02		.
	inc b			;961c	04		.
	add a,0c7h		;961d	c6 c7		. .
	ret z			;961f	c8		.
	ret			;9620	c9		.
	cp h			;9621	bc		.
	jp nz,0bfc3h		;9622	c2 c3 bf	. . .
	nop			;9625	00		.
	nop			;9626	00		.
	ld (bc),a		;9627	02		.
	inc b			;9628	04		.
	cp h			;9629	bc		.
	jp nz,0bfc3h		;962a	c2 c3 bf	. . .
	add a,0c7h		;962d	c6 c7		. .
	ret z			;962f	c8		.
	ret			;9630	c9		.
	nop			;9631	00		.
	nop			;9632	00		.
	ld (bc),a		;9633	02		.
	ld (bc),a		;9634	02		.
	or a			;9635	b7		.
	cp b			;9636	b8		.
	xor a			;9637	af		.
	or b			;9638	b0		.
	nop			;9639	00		.
	nop			;963a	00		.
	ld (bc),a		;963b	02		.
	ld (bc),a		;963c	02		.
	or a			;963d	b7		.
	cp b			;963e	b8		.
	or c			;963f	b1		.
	or d			;9640	b2		.
	nop			;9641	00		.
	nop			;9642	00		.
	ld (bc),a		;9643	02		.
	ld (bc),a		;9644	02		.
	or a			;9645	b7		.
	cp b			;9646	b8		.
	or e			;9647	b3		.
	or h			;9648	b4		.
	nop			;9649	00		.
	nop			;964a	00		.
	ld (bc),a		;964b	02		.
	ld (bc),a		;964c	02		.
	or a			;964d	b7		.
	cp b			;964e	b8		.
	or l			;964f	b5		.
	or (hl)			;9650	b6		.
	nop			;9651	00		.
	nop			;9652	00		.
	ld (bc),a		;9653	02		.
	ld (bc),a		;9654	02		.
	xor a			;9655	af		.
	or b			;9656	b0		.
	or a			;9657	b7		.
	cp b			;9658	b8		.
	nop			;9659	00		.
	nop			;965a	00		.
	ld (bc),a		;965b	02		.
	ld (bc),a		;965c	02		.
	or c			;965d	b1		.
	or d			;965e	b2		.
	or a			;965f	b7		.
	cp b			;9660	b8		.
	nop			;9661	00		.
	nop			;9662	00		.
	ld (bc),a		;9663	02		.
	ld (bc),a		;9664	02		.
	or e			;9665	b3		.
	or h			;9666	b4		.
	or a			;9667	b7		.
	cp b			;9668	b8		.
	nop			;9669	00		.
	nop			;966a	00		.
	ld (bc),a		;966b	02		.
	ld (bc),a		;966c	02		.
	or l			;966d	b5		.
	or (hl)			;966e	b6		.
	or a			;966f	b7		.
	cp b			;9670	b8		.
	add a,c			;9671	81		.
	sub a			;9672	97		.
	ld h,h			;9673	64		d
	sub a			;9674	97		.
	ld b,a			;9675	47		G
	sub a			;9676	97		.
	sbc a,(hl)		;9677	9e		.
	sub a			;9678	97		.
	cp e			;9679	bb		.
	sub a			;967a	97		.
	ex de,hl		;967b	eb		.
	sub (hl)		;967c	96		.
	add hl,de		;967d	19		.
	sub a			;967e	97		.
	ld b,09ah		;967f	06 9a		. .
	dec bc			;9681	0b		.
	sbc a,d			;9682	9a		.
	dec e			;9683	1d		.
	sbc a,d			;9684	9a		.
	cpl			;9685	2f		/
	sbc a,d			;9686	9a		.
	ld b,c			;9687	41		A
	sbc a,d			;9688	9a		.
	ld d,e			;9689	53		S
	sbc a,d			;968a	9a		.
	ld h,l			;968b	65		e
	sbc a,d			;968c	9a		.
	ld (hl),a		;968d	77		w
	sbc a,d			;968e	9a		.
	add a,a			;968f	87		.
	sbc a,d			;9690	9a		.
	sub a			;9691	97		.
	sbc a,d			;9692	9a		.
	and a			;9693	a7		.
	sbc a,d			;9694	9a		.
	or a			;9695	b7		.
	sbc a,d			;9696	9a		.
	rst 0			;9697	c7		.
	sbc a,d			;9698	9a		.
	ret c			;9699	d8		.
	sub a			;969a	97		.
	daa			;969b	27		'
	sbc a,b			;969c	98		.
	ld e,a			;969d	5f		_
	sbc a,b			;969e	98		.
	xor (hl)		;969f	ae		.
	sbc a,b			;96a0	98		.
	and 098h		;96a1	e6 98		. .
	adc a,d			;96a3	8a		.
	sbc a,c			;96a4	99		.
	and (hl)		;96a5	a6		.
	sbc a,c			;96a6	99		.
	cp d			;96a7	ba		.
	sbc a,c			;96a8	99		.
	adc a,099h		;96a9	ce 99		. .
	jp pe,01699h		;96ab	ea 99 16	. . .
	or h			;96ae	b4		.
	ex af,af'		;96af	08		.
	or l			;96b0	b5		.
	ld c,b			;96b1	48		H
	or l			;96b2	b5		.
	add a,h			;96b3	84		.
	or l			;96b4	b5		.
	ret nz			;96b5	c0		.
	or l			;96b6	b5		.
	call m,038b5h		;96b7	fc b5 38	. . 8
	or (hl)			;96ba	b6		.
	ld (hl),h		;96bb	74		t
	or (hl)			;96bc	b6		.
	or b			;96bd	b0		.
	or (hl)			;96be	b6		.
	call pe,028b6h		;96bf	ec b6 28	. . (
	or a			;96c2	b7		.
	dec sp			;96c3	3b		;
	or a			;96c4	b7		.
	ld c,(hl)		;96c5	4e		N
	or a			;96c6	b7		.
	ld e,e			;96c7	5b		[
	or a			;96c8	b7		.
	ld l,(hl)		;96c9	6e		n
	or a			;96ca	b7		.
	add a,h			;96cb	84		.
	or a			;96cc	b7		.
	sbc a,d			;96cd	9a		.
	or a			;96ce	b7		.
	xor d			;96cf	aa		.
	or a			;96d0	b7		.
	ret nz			;96d1	c0		.
	or a			;96d2	b7		.
	sub 0b7h		;96d3	d6 b7		. .
	and 0b7h		;96d5	e6 b7		. .
	or 0b7h			;96d7	f6 b7		. .
	ld b,0b8h		;96d9	06 b8		. .
	inc e			;96db	1c		.
	cp b			;96dc	b8		.
	inc l			;96dd	2c		,
	cp b			;96de	b8		.
	inc a			;96df	3c		<
	cp b			;96e0	b8		.
	ld c,h			;96e1	4c		L
	cp b			;96e2	b8		.
	ld e,h			;96e3	5c		\
	cp b			;96e4	b8		.
	ld (hl),d		;96e5	72		r
	cp b			;96e6	b8		.
	adc a,b			;96e7	88		.
	cp b			;96e8	b8		.
	sbc a,(hl)		;96e9	9e		.
	cp b			;96ea	b8		.
	nop			;96eb	00		.
	nop			;96ec	00		.
	rlca			;96ed	07		.
	ld b,080h		;96ee	06 80		. .
	ld (hl),d		;96f0	72		r
	or (hl)			;96f1	b6		.
	or a			;96f2	b7		.
	xor h			;96f3	ac		.
	adc a,l			;96f4	8d		.
	and h			;96f5	a4		.
	xor (hl)		;96f6	ae		.
	xor a			;96f7	af		.
	cp e			;96f8	bb		.
	ret nz			;96f9	c0		.
	adc a,h			;96fa	8c		.
	nop			;96fb	00		.
	and a			;96fc	a7		.
	and (hl)		;96fd	a6		.
	call z,000a7h		;96fe	cc a7 00	. . .
	or e			;9701	b3		.
	sbc a,c			;9702	99		.
	ld d,d			;9703	52		R
	ld d,e			;9704	53		S
	sbc a,b			;9705	98		.
	call nz,0a700h		;9706	c4 00 a7	. . .
	and l			;9709	a5		.
	cp (hl)			;970a	be		.
	and a			;970b	a7		.
	nop			;970c	00		.
	and h			;970d	a4		.
	xor (hl)		;970e	ae		.
	or b			;970f	b0		.
	cp h			;9710	bc		.
	ret nz			;9711	c0		.
	adc a,h			;9712	8c		.
	add a,b			;9713	80		.
	ld (hl),d		;9714	72		r
	or h			;9715	b4		.
	or l			;9716	b5		.
	xor h			;9717	ac		.
	adc a,l			;9718	8d		.
	nop			;9719	00		.
	nop			;971a	00		.
	rlca			;971b	07		.
	ld b,080h		;971c	06 80		. .
	ld (hl),d		;971e	72		r
	or (hl)			;971f	b6		.
	or a			;9720	b7		.
	xor h			;9721	ac		.
	adc a,l			;9722	8d		.
	and h			;9723	a4		.
	xor (hl)		;9724	ae		.
	xor a			;9725	af		.
	cp e			;9726	bb		.
	ret nz			;9727	c0		.
	adc a,h			;9728	8c		.
	nop			;9729	00		.
	xor b			;972a	a8		.
	and (hl)		;972b	a6		.
	call z,000a8h		;972c	cc a8 00	. . .
	nop			;972f	00		.
	nop			;9730	00		.
	nop			;9731	00		.
	nop			;9732	00		.
	nop			;9733	00		.
	nop			;9734	00		.
	nop			;9735	00		.
	sub h			;9736	94		.
	and l			;9737	a5		.
	cp (hl)			;9738	be		.
	sub h			;9739	94		.
	nop			;973a	00		.
	and h			;973b	a4		.
	xor (hl)		;973c	ae		.
	or b			;973d	b0		.
	cp h			;973e	bc		.
	ret nz			;973f	c0		.
	adc a,h			;9740	8c		.
	add a,b			;9741	80		.
	ld (hl),d		;9742	72		r
	or h			;9743	b4		.
	or l			;9744	b5		.
	xor h			;9745	ac		.
	adc a,l			;9746	8d		.
	nop			;9747	00		.
	nop			;9748	00		.
	dec b			;9749	05		.
	dec b			;974a	05		.
	dec a			;974b	3d		=
	sbc a,l			;974c	9d		.
	sub e			;974d	93		.
	sbc a,(hl)		;974e	9e		.
	ld b,c			;974f	41		A
	ld a,054h		;9750	3e 54		> T
	ld d,a			;9752	57		W
	ld e,e			;9753	5b		[
	ld b,d			;9754	42		B
	and b			;9755	a0		.
	and c			;9756	a1		.
	ld e,b			;9757	58		X
	ld e,c			;9758	59		Y
	sub d			;9759	92		.
	sbc a,h			;975a	9c		.
	ld d,(hl)		;975b	56		V
	ld l,(hl)		;975c	6e		n
	ld e,d			;975d	5a		Z
	dec (hl)		;975e	35		5
	ld (hl),038h		;975f	36 38		6 8
	sub e			;9761	93		.
	sbc a,a			;9762	9f		.
	scf			;9763	37		7
	nop			;9764	00		.
	nop			;9765	00		.
	dec b			;9766	05		.
	dec b			;9767	05		.
	dec a			;9768	3d		=
	sbc a,l			;9769	9d		.
	rst 0			;976a	c7		.
	sbc a,(hl)		;976b	9e		.
	ld b,c			;976c	41		A
	ld a,054h		;976d	3e 54		> T
	and d			;976f	a2		.
	ld e,e			;9770	5b		[
	ld b,d			;9771	42		B
	sub d			;9772	92		.
	ld d,l			;9773	55		U
	ld e,b			;9774	58		X
	ld e,c			;9775	59		Y
	sub d			;9776	92		.
	sbc a,h			;9777	9c		.
	ld d,(hl)		;9778	56		V
	ld l,(hl)		;9779	6e		n
	ld e,d			;977a	5a		Z
	dec (hl)		;977b	35		5
	ld (hl),038h		;977c	36 38		6 8
	sub e			;977e	93		.
	sbc a,a			;977f	9f		.
	scf			;9780	37		7
	nop			;9781	00		.
	nop			;9782	00		.
	dec b			;9783	05		.
	dec b			;9784	05		.
	dec a			;9785	3d		=
	sbc a,l			;9786	9d		.
	sub e			;9787	93		.
	sbc a,(hl)		;9788	9e		.
	ld b,c			;9789	41		A
	ld a,054h		;978a	3e 54		> T
	ld d,a			;978c	57		W
	ld e,e			;978d	5b		[
	ld b,d			;978e	42		B
	sub d			;978f	92		.
	ld d,l			;9790	55		U
	ld e,b			;9791	58		X
	cp b			;9792	b8		.
	and b			;9793	a0		.
	sbc a,h			;9794	9c		.
	ld d,(hl)		;9795	56		V
	ld l,(hl)		;9796	6e		n
	ld e,d			;9797	5a		Z
	dec (hl)		;9798	35		5
	ld (hl),038h		;9799	36 38		6 8
	sub e			;979b	93		.
	sbc a,a			;979c	9f		.
	scf			;979d	37		7
	nop			;979e	00		.
	nop			;979f	00		.
	dec b			;97a0	05		.
	dec b			;97a1	05		.
	dec a			;97a2	3d		=
	sbc a,l			;97a3	9d		.
	sub e			;97a4	93		.
	sbc a,(hl)		;97a5	9e		.
	ld b,c			;97a6	41		A
	ld a,054h		;97a7	3e 54		> T
	ld d,a			;97a9	57		W
	ld e,e			;97aa	5b		[
	ld b,d			;97ab	42		B
	sub d			;97ac	92		.
	ld d,l			;97ad	55		U
	ld e,b			;97ae	58		X
	ld e,c			;97af	59		Y
	sub d			;97b0	92		.
	sbc a,h			;97b1	9c		.
	ld d,(hl)		;97b2	56		V
	jp 0355ah		;97b3	c3 5a 35	. Z 5
	ld (hl),038h		;97b6	36 38		6 8
	rst 0			;97b8	c7		.
	sbc a,a			;97b9	9f		.
	scf			;97ba	37		7
	nop			;97bb	00		.
	nop			;97bc	00		.
	dec b			;97bd	05		.
	dec b			;97be	05		.
	dec a			;97bf	3d		=
	sbc a,l			;97c0	9d		.
	rst 0			;97c1	c7		.
	sbc a,(hl)		;97c2	9e		.
	ld b,c			;97c3	41		A
	ld a,054h		;97c4	3e 54		> T
	sub a			;97c6	97		.
	ld e,e			;97c7	5b		[
	ld b,d			;97c8	42		B
	and b			;97c9	a0		.
	cp c			;97ca	b9		.
	nop			;97cb	00		.
	cp c			;97cc	b9		.
	and b			;97cd	a0		.
	sbc a,h			;97ce	9c		.
	ld d,(hl)		;97cf	56		V
	ret z			;97d0	c8		.
	ld e,d			;97d1	5a		Z
	dec (hl)		;97d2	35		5
	ld (hl),038h		;97d3	36 38		6 8
	rst 0			;97d5	c7		.
	sbc a,a			;97d6	9f		.
	scf			;97d7	37		7
	nop			;97d8	00		.
	nop			;97d9	00		.
	dec b			;97da	05		.
	rrca			;97db	0f		.
	nop			;97dc	00		.
	nop			;97dd	00		.
	nop			;97de	00		.
	nop			;97df	00		.
	nop			;97e0	00		.
	nop			;97e1	00		.
	nop			;97e2	00		.
	nop			;97e3	00		.
	nop			;97e4	00		.
	ld bc,00302h		;97e5	01 02 03	. . .
	inc b			;97e8	04		.
	dec b			;97e9	05		.
	ld b,000h		;97ea	06 00		. .
	nop			;97ec	00		.
	nop			;97ed	00		.
	nop			;97ee	00		.
	ld de,01312h		;97ef	11 12 13	. . .
	ld d,b			;97f2	50		P
	ld d,c			;97f3	51		Q
	ld d,d			;97f4	52		R
	ld d,d			;97f5	52		R
	ld d,e			;97f6	53		S
	ld d,h			;97f7	54		T
	ld d,l			;97f8	55		U
	ld d,(hl)		;97f9	56		V
	nop			;97fa	00		.
	ld d,017h		;97fb	16 17		. .
	ld h,c			;97fd	61		a
	ld h,d			;97fe	62		b
	ld h,e			;97ff	63		c
	ld h,h			;9800	64		d
	ld h,l			;9801	65		e
	ld h,(hl)		;9802	66		f
	ld h,a			;9803	67		g
	ld l,b			;9804	68		h
	ld l,c			;9805	69		i
	ld l,d			;9806	6a		j
	ld l,e			;9807	6b		k
	ld d,d			;9808	52		R
	add hl,de		;9809	19		.
	ld (hl),l		;980a	75		u
	ld a,(de)		;980b	1a		.
	halt			;980c	76		v
	dec de			;980d	1b		.
	inc e			;980e	1c		.
	dec e			;980f	1d		.
	ld e,01fh		;9810	1e 1f		. .
	jr nz,l9835h		;9812	20 21		  !
	ld (02020h),hl		;9814	22 20 20	"    
	ld (00026h),hl		;9817	22 26 00	" & .
	nop			;981a	00		.
	nop			;981b	00		.
	nop			;981c	00		.
	daa			;981d	27		'
	nop			;981e	00		.
	nop			;981f	00		.
	nop			;9820	00		.
	nop			;9821	00		.
	nop			;9822	00		.
	nop			;9823	00		.
	nop			;9824	00		.
	nop			;9825	00		.
	nop			;9826	00		.
	nop			;9827	00		.
	nop			;9828	00		.
	inc b			;9829	04		.
	dec c			;982a	0d		.
	rlca			;982b	07		.
	ex af,af'		;982c	08		.
	add hl,bc		;982d	09		.
	ld a,(bc)		;982e	0a		.
	dec bc			;982f	0b		.
	dec b			;9830	05		.
	inc c			;9831	0c		.
	dec c			;9832	0d		.
	ld c,00fh		;9833	0e 0f		. .
l9835h:
	djnz l9837h		;9835	10 00		. .
l9837h:
	nop			;9837	00		.
	ld d,d			;9838	52		R
	ld d,a			;9839	57		W
	ld e,b			;983a	58		X
	ld e,c			;983b	59		Y
	ld e,d			;983c	5a		Z
	ld e,e			;983d	5b		[
	ld e,h			;983e	5c		\
	ld e,l			;983f	5d		]
	ld e,(hl)		;9840	5e		^
	ld e,a			;9841	5f		_
	ld h,b			;9842	60		`
	inc d			;9843	14		.
	dec d			;9844	15		.
	ld h,a			;9845	67		g
	ld l,h			;9846	6c		l
	ld l,l			;9847	6d		m
	ld l,(hl)		;9848	6e		n
	ld h,a			;9849	67		g
	ld l,a			;984a	6f		o
	ld (hl),b		;984b	70		p
	ld (hl),c		;984c	71		q
	ld (hl),d		;984d	72		r
	ld e,a			;984e	5f		_
	ld (hl),e		;984f	73		s
	ld (hl),h		;9850	74		t
	jr l9875h		;9851	18 22		. "
	inc hl			;9853	23		#
	nop			;9854	00		.
	inc hl			;9855	23		#
	jr nz,$+38		;9856	20 24		  $
	ld (hl),a		;9858	77		w
	ld a,b			;9859	78		x
	ld a,c			;985a	79		y
	ld a,d			;985b	7a		z
	ld a,e			;985c	7b		{
	ld a,h			;985d	7c		|
	nop			;985e	00		.
	nop			;985f	00		.
	nop			;9860	00		.
	dec b			;9861	05		.
	rrca			;9862	0f		.
	ld h,000h		;9863	26 00		& .
	nop			;9865	00		.
	nop			;9866	00		.
	nop			;9867	00		.
	daa			;9868	27		'
	nop			;9869	00		.
	nop			;986a	00		.
	nop			;986b	00		.
	nop			;986c	00		.
	nop			;986d	00		.
	nop			;986e	00		.
	nop			;986f	00		.
	nop			;9870	00		.
	nop			;9871	00		.
	add hl,de		;9872	19		.
	ld (hl),l		;9873	75		u
	ld a,(de)		;9874	1a		.
l9875h:
	halt			;9875	76		v
	dec de			;9876	1b		.
	inc e			;9877	1c		.
	dec e			;9878	1d		.
	ld e,01fh		;9879	1e 1f		. .
	jr nz,l989eh		;987b	20 21		  !
	rra			;987d	1f		.
	jr nz,l98a0h		;987e	20 20		   
	ld (01600h),hl		;9880	22 00 16	" . .
	rla			;9883	17		.
	ld h,c			;9884	61		a
	ld h,d			;9885	62		b
	ld h,e			;9886	63		c
	ld h,h			;9887	64		d
	ld h,l			;9888	65		e
	ld h,(hl)		;9889	66		f
	ld h,a			;988a	67		g
	ld l,b			;988b	68		h
	ld l,c			;988c	69		i
	ld l,d			;988d	6a		j
	ld l,e			;988e	6b		k
	ld d,d			;988f	52		R
	nop			;9890	00		.
	nop			;9891	00		.
	nop			;9892	00		.
	nop			;9893	00		.
	ld de,01312h		;9894	11 12 13	. . .
	ld d,b			;9897	50		P
l9898h:
	ld d,c			;9898	51		Q
	ld d,d			;9899	52		R
	ld d,d			;989a	52		R
	ld d,e			;989b	53		S
	ld d,h			;989c	54		T
	ld d,l			;989d	55		U
l989eh:
	ld d,(hl)		;989e	56		V
	nop			;989f	00		.
l98a0h:
	nop			;98a0	00		.
	nop			;98a1	00		.
	nop			;98a2	00		.
	nop			;98a3	00		.
	nop			;98a4	00		.
	nop			;98a5	00		.
	nop			;98a6	00		.
	nop			;98a7	00		.
	ld bc,00302h		;98a8	01 02 03	. . .
	inc b			;98ab	04		.
	dec b			;98ac	05		.
	ld b,000h		;98ad	06 00		. .
	nop			;98af	00		.
	inc b			;98b0	04		.
	dec c			;98b1	0d		.
	ld (00023h),hl		;98b2	22 23 00	" # .
	inc hl			;98b5	23		#
	jr nz,l98dch		;98b6	20 24		  $
	ld (hl),a		;98b8	77		w
	ld a,b			;98b9	78		x
	ld a,c			;98ba	79		y
	ld a,d			;98bb	7a		z
	ld a,e			;98bc	7b		{
	ld a,h			;98bd	7c		|
	nop			;98be	00		.
	ld h,a			;98bf	67		g
	ld l,h			;98c0	6c		l
	ld l,l			;98c1	6d		m
	ld l,(hl)		;98c2	6e		n
	ld h,a			;98c3	67		g
	ld l,a			;98c4	6f		o
	ld (hl),b		;98c5	70		p
	ld (hl),c		;98c6	71		q
	ld (hl),d		;98c7	72		r
	ld e,a			;98c8	5f		_
	ld (hl),e		;98c9	73		s
	ld (hl),h		;98ca	74		t
	jr l991fh		;98cb	18 52		. R
	ld d,a			;98cd	57		W
	ld e,b			;98ce	58		X
	ld e,c			;98cf	59		Y
	ld e,d			;98d0	5a		Z
	ld e,e			;98d1	5b		[
	ld e,h			;98d2	5c		\
	ld e,l			;98d3	5d		]
	ld e,(hl)		;98d4	5e		^
	ld e,a			;98d5	5f		_
	ld h,b			;98d6	60		`
	inc d			;98d7	14		.
	dec d			;98d8	15		.
	rlca			;98d9	07		.
	ex af,af'		;98da	08		.
	add hl,bc		;98db	09		.
l98dch:
	ld a,(bc)		;98dc	0a		.
	dec bc			;98dd	0b		.
	dec b			;98de	05		.
	inc c			;98df	0c		.
	dec c			;98e0	0d		.
	ld c,00fh		;98e1	0e 0f		. .
	djnz l98e5h		;98e3	10 00		. .
l98e5h:
	nop			;98e5	00		.
	nop			;98e6	00		.
	nop			;98e7	00		.
	djnz l98f4h		;98e8	10 0a		. .
	nop			;98ea	00		.
	nop			;98eb	00		.
	nop			;98ec	00		.
	nop			;98ed	00		.
	nop			;98ee	00		.
	nop			;98ef	00		.
	nop			;98f0	00		.
	dec h			;98f1	25		%
l98f2h:
	ld a,l			;98f2	7d		}
	nop			;98f3	00		.
l98f4h:
	ld a,(hl)		;98f4	7e		~
	ld a,a			;98f5	7f		.
	add a,b			;98f6	80		.
	ld h,a			;98f7	67		g
	add a,c			;98f8	81		.
	add a,d			;98f9	82		.
	add a,e			;98fa	83		.
	add a,h			;98fb	84		.
	add a,l			;98fc	85		.
	ld a,(03b00h)		;98fd	3a 00 3b	: . ;
	add a,(hl)		;9900	86		.
	add a,a			;9901	87		.
	adc a,b			;9902	88		.
	adc a,c			;9903	89		.
	adc a,d			;9904	8a		.
	adc a,e			;9905	8b		.
	add a,l			;9906	85		.
	ld a,(00000h)		;9907	3a 00 00	: . .
	jr z,l9898h		;990a	28 8c		( .
	adc a,l			;990c	8d		.
	adc a,(hl)		;990d	8e		.
	ld (hl),h		;990e	74		t
	adc a,a			;990f	8f		.
	sub b			;9910	90		.
	nop			;9911	00		.
	nop			;9912	00		.
	nop			;9913	00		.
	nop			;9914	00		.
	sub c			;9915	91		.
	sub d			;9916	92		.
	sub e			;9917	93		.
	sub h			;9918	94		.
	sub l			;9919	95		.
	sub (hl)		;991a	96		.
	sub a			;991b	97		.
	nop			;991c	00		.
	nop			;991d	00		.
	nop			;991e	00		.
l991fh:
	sbc a,b			;991f	98		.
	sbc a,c			;9920	99		.
	sbc a,d			;9921	9a		.
	sbc a,e			;9922	9b		.
	sbc a,h			;9923	9c		.
	sbc a,l			;9924	9d		.
	sbc a,(hl)		;9925	9e		.
	nop			;9926	00		.
	nop			;9927	00		.
	nop			;9928	00		.
	sbc a,a			;9929	9f		.
	and b			;992a	a0		.
	and c			;992b	a1		.
	and d			;992c	a2		.
	and e			;992d	a3		.
	ld d,e			;992e	53		S
	add hl,hl		;992f	29		)
	nop			;9930	00		.
	nop			;9931	00		.
	nop			;9932	00		.
	and h			;9933	a4		.
	and l			;9934	a5		.
	and l			;9935	a5		.
	and l			;9936	a5		.
	and l			;9937	a5		.
	and (hl)		;9938	a6		.
	add hl,hl		;9939	29		)
	nop			;993a	00		.
	nop			;993b	00		.
	nop			;993c	00		.
	and h			;993d	a4		.
	and l			;993e	a5		.
	and l			;993f	a5		.
	and l			;9940	a5		.
	and l			;9941	a5		.
	and (hl)		;9942	a6		.
	add hl,hl		;9943	29		)
	nop			;9944	00		.
	nop			;9945	00		.
	nop			;9946	00		.
	and h			;9947	a4		.
	cp c			;9948	b9		.
	cp d			;9949	ba		.
	and d			;994a	a2		.
	and e			;994b	a3		.
	ld d,e			;994c	53		S
	add hl,hl		;994d	29		)
	nop			;994e	00		.
	nop			;994f	00		.
	nop			;9950	00		.
	sbc a,b			;9951	98		.
	sbc a,d			;9952	9a		.
	cp e			;9953	bb		.
	cp e			;9954	bb		.
	sbc a,e			;9955	9b		.
	sbc a,l			;9956	9d		.
	sbc a,(hl)		;9957	9e		.
	nop			;9958	00		.
	nop			;9959	00		.
	nop			;995a	00		.
	add a,a			;995b	87		.
	sbc a,c			;995c	99		.
	sbc a,c			;995d	99		.
	sbc a,e			;995e	9b		.
	sub l			;995f	95		.
	sub (hl)		;9960	96		.
	sub a			;9961	97		.
	nop			;9962	00		.
	nop			;9963	00		.
	jr z,l98f2h		;9964	28 8c		( .
	cp b			;9966	b8		.
	sub d			;9967	92		.
	add a,d			;9968	82		.
	adc a,a			;9969	8f		.
	sub b			;996a	90		.
	nop			;996b	00		.
	nop			;996c	00		.
	dec sp			;996d	3b		;
	add a,(hl)		;996e	86		.
	add a,a			;996f	87		.
	adc a,b			;9970	88		.
	adc a,c			;9971	89		.
l9972h:
	adc a,d			;9972	8a		.
	adc a,e			;9973	8b		.
	add a,l			;9974	85		.
	ld a,(07f7eh)		;9975	3a 7e 7f	: ~ .
	add a,b			;9978	80		.
	ld h,a			;9979	67		g
	add a,c			;997a	81		.
	add a,d			;997b	82		.
	add a,e			;997c	83		.
	add a,h			;997d	84		.
	add a,l			;997e	85		.
	ld a,(00000h)		;997f	3a 00 00	: . .
	nop			;9982	00		.
	nop			;9983	00		.
	nop			;9984	00		.
	nop			;9985	00		.
	nop			;9986	00		.
	dec h			;9987	25		%
	ld a,l			;9988	7d		}
	nop			;9989	00		.
	nop			;998a	00		.
	nop			;998b	00		.
	ex af,af'		;998c	08		.
	inc bc			;998d	03		.
	nop			;998e	00		.
	nop			;998f	00		.
	jr z,l9992h		;9990	28 00		( .
l9992h:
	ld l,0a7h		;9992	2e a7		. .
	cpl			;9994	2f		/
	xor b			;9995	a8		.
	xor c			;9996	a9		.
	ld hl,(0cb36h)		;9997	2a 36 cb	* 6 .
	ld hl,(0cb36h)		;999a	2a 36 cb	* 6 .
	cpl			;999d	2f		/
	xor b			;999e	a8		.
	xor c			;999f	a9		.
	nop			;99a0	00		.
	ld l,0a7h		;99a1	2e a7		. .
	nop			;99a3	00		.
	nop			;99a4	00		.
	jr z,l99a7h		;99a5	28 00		( .
l99a7h:
	ld bc,00208h		;99a7	01 08 02	. . .
	nop			;99aa	00		.
	jr z,l99ddh		;99ab	28 30		( 0
	xor l			;99ad	ad		.
	xor (hl)		;99ae	ae		.
	xor a			;99af	af		.
	or b			;99b0	b0		.
	res 6,b			;99b1	cb b0		. .
	res 5,(hl)		;99b3	cb ae		. .
	xor a			;99b5	af		.
	jr nc,$-81		;99b6	30 ad		0 .
	nop			;99b8	00		.
	jr z,l99bbh		;99b9	28 00		( .
l99bbh:
	ld bc,00208h		;99bb	01 08 02	. . .
	dec (hl)		;99be	35		5
	jr c,l9972h		;99bf	38 b1		8 .
	or d			;99c1	b2		.
	or e			;99c2	b3		.
	or h			;99c3	b4		.
	or l			;99c4	b5		.
	res 6,l			;99c5	cb b5		. .
	res 6,e			;99c7	cb b3		. .
	or h			;99c9	b4		.
	or c			;99ca	b1		.
	or d			;99cb	b2		.
	dec (hl)		;99cc	35		5
	jr c,l99cfh		;99cd	38 00		8 .
l99cfh:
	nop			;99cf	00		.
	ex af,af'		;99d0	08		.
	inc bc			;99d1	03		.
	nop			;99d2	00		.
	ld (03137h),a		;99d3	32 37 31	2 7 1
	or (hl)			;99d6	b6		.
	or a			;99d7	b7		.
	inc sp			;99d8	33		3
	inc (hl)		;99d9	34		4
	call z,00000h		;99da	cc 00 00	. . .
l99ddh:
	rlc b			;99dd	cb 00		. .
	nop			;99df	00		.
	defb 0cbh,033h ;sli e	;99e0	cb 33		. 3
	inc (hl)		;99e2	34		4
	call z,0b631h		;99e3	cc 31 b6	. 1 .
	or a			;99e6	b7		.
	nop			;99e7	00		.
	ld (00037h),a		;99e8	32 37 00	2 7 .
	nop			;99eb	00		.
	ex af,af'		;99ec	08		.
	inc bc			;99ed	03		.
	xor d			;99ee	aa		.
	dec hl			;99ef	2b		+
	inc l			;99f0	2c		,
	dec l			;99f1	2d		-
	xor e			;99f2	ab		.
	xor h			;99f3	ac		.
	nop			;99f4	00		.
	add hl,sp		;99f5	39		9
	call 00000h		;99f6	cd 00 00	. . .
	rlc b			;99f9	cb 00		. .
	nop			;99fb	00		.
	rlc b			;99fc	cb 00		. .
	add hl,sp		;99fe	39		9
	call 0ab2dh		;99ff	cd 2d ab	. - .
	xor h			;9a02	ac		.
	xor d			;9a03	aa		.
	dec hl			;9a04	2b		+
	inc l			;9a05	2c		,
	nop			;9a06	00		.
	nop			;9a07	00		.
	ld bc,00001h		;9a08	01 01 00	. . .
	nop			;9a0b	00		.
	nop			;9a0c	00		.
	ld c,001h		;9a0d	0e 01		. .
	call nz,000c5h		;9a0f	c4 c5 00	. . .
	nop			;9a12	00		.
	nop			;9a13	00		.
	nop			;9a14	00		.
	nop			;9a15	00		.
	nop			;9a16	00		.
	nop			;9a17	00		.
	nop			;9a18	00		.
	nop			;9a19	00		.
	nop			;9a1a	00		.
	ret			;9a1b	c9		.
	jp z,00000h		;9a1c	ca 00 00	. . .
	ld c,001h		;9a1f	0e 01		. .
	call nz,0c6c5h		;9a21	c4 c5 c6	. . .
	rst 0			;9a24	c7		.
	nop			;9a25	00		.
	nop			;9a26	00		.
	nop			;9a27	00		.
	nop			;9a28	00		.
	nop			;9a29	00		.
	nop			;9a2a	00		.
	rst 0			;9a2b	c7		.
	ret z			;9a2c	c8		.
	ret			;9a2d	c9		.
	jp z,00000h		;9a2e	ca 00 00	. . .
	ld c,001h		;9a31	0e 01		. .
	call nz,0c6c5h		;9a33	c4 c5 c6	. . .
	rst 0			;9a36	c7		.
	ret z			;9a37	c8		.
	ret			;9a38	c9		.
	nop			;9a39	00		.
	nop			;9a3a	00		.
	push bc			;9a3b	c5		.
	add a,0c7h		;9a3c	c6 c7		. .
	ret z			;9a3e	c8		.
	ret			;9a3f	c9		.
	jp z,00000h		;9a40	ca 00 00	. . .
	ld c,001h		;9a43	0e 01		. .
	call nz,0c6c5h		;9a45	c4 c5 c6	. . .
	rst 0			;9a48	c7		.
	ret z			;9a49	c8		.
	ret			;9a4a	c9		.
	jp z,0c5c4h		;9a4b	ca c4 c5	. . .
	add a,0c7h		;9a4e	c6 c7		. .
	ret z			;9a50	c8		.
	ret			;9a51	c9		.
	jp z,00000h		;9a52	ca 00 00	. . .
	ld c,001h		;9a55	0e 01		. .
	jp z,0c5c4h		;9a57	ca c4 c5	. . .
	add a,0c7h		;9a5a	c6 c7		. .
	ret z			;9a5c	c8		.
	ret			;9a5d	c9		.
	jp z,0c5c4h		;9a5e	ca c4 c5	. . .
	add a,0c7h		;9a61	c6 c7		. .
	ret z			;9a63	c8		.
	ret			;9a64	c9		.
	nop			;9a65	00		.
	nop			;9a66	00		.
	ld c,001h		;9a67	0e 01		. .
	ret			;9a69	c9		.
	jp z,0c5c4h		;9a6a	ca c4 c5	. . .
	add a,0c7h		;9a6d	c6 c7		. .
	ret z			;9a6f	c8		.
	ret			;9a70	c9		.
	jp z,0c5c4h		;9a71	ca c4 c5	. . .
	add a,0c7h		;9a74	c6 c7		. .
	ret z			;9a76	c8		.
	nop			;9a77	00		.
	nop			;9a78	00		.
	inc c			;9a79	0c		.
	ld bc,000c6h		;9a7a	01 c6 00	. . .
	nop			;9a7d	00		.
	nop			;9a7e	00		.
	nop			;9a7f	00		.
	nop			;9a80	00		.
	nop			;9a81	00		.
	nop			;9a82	00		.
	nop			;9a83	00		.
	nop			;9a84	00		.
	nop			;9a85	00		.
	jp z,00000h		;9a86	ca 00 00	. . .
	inc c			;9a89	0c		.
	ld bc,0c7c6h		;9a8a	01 c6 c7	. . .
	ret z			;9a8d	c8		.
	nop			;9a8e	00		.
	nop			;9a8f	00		.
	nop			;9a90	00		.
	nop			;9a91	00		.
	nop			;9a92	00		.
	nop			;9a93	00		.
	ret z			;9a94	c8		.
	ret			;9a95	c9		.
	jp z,00000h		;9a96	ca 00 00	. . .
	inc c			;9a99	0c		.
	ld bc,0c7c6h		;9a9a	01 c6 c7	. . .
	ret z			;9a9d	c8		.
	ret			;9a9e	c9		.
	jp z,00000h		;9a9f	ca 00 00	. . .
	add a,0c7h		;9aa2	c6 c7		. .
l9aa4h:
	ret z			;9aa4	c8		.
	ret			;9aa5	c9		.
	jp z,00000h		;9aa6	ca 00 00	. . .
	inc c			;9aa9	0c		.
	ld bc,0c7c6h		;9aaa	01 c6 c7	. . .
	ret z			;9aad	c8		.
	ret			;9aae	c9		.
	jp z,0c5c4h		;9aaf	ca c4 c5	. . .
	add a,0c7h		;9ab2	c6 c7		. .
	ret z			;9ab4	c8		.
	ret			;9ab5	c9		.
	jp z,00000h		;9ab6	ca 00 00	. . .
	inc c			;9ab9	0c		.
	ld bc,0c6c5h		;9aba	01 c5 c6	. . .
	rst 0			;9abd	c7		.
	ret z			;9abe	c8		.
	ret			;9abf	c9		.
	jp z,0c5c4h		;9ac0	ca c4 c5	. . .
	add a,0c7h		;9ac3	c6 c7		. .
	ret z			;9ac5	c8		.
	ret			;9ac6	c9		.
	nop			;9ac7	00		.
	nop			;9ac8	00		.
	inc c			;9ac9	0c		.
	ld bc,0c5c4h		;9aca	01 c4 c5	. . .
	add a,0c7h		;9acd	c6 c7		. .
	ret z			;9acf	c8		.
	ret			;9ad0	c9		.
	jp z,0c5c4h		;9ad1	ca c4 c5	. . .
	add a,0c7h		;9ad4	c6 c7		. .
	ret z			;9ad6	c8		.
	dec b			;9ad7	05		.
	sbc a,e			;9ad8	9b		.
	add hl,de		;9ad9	19		.
	sbc a,e			;9ada	9b		.
	dec l			;9adb	2d		-
	sbc a,e			;9adc	9b		.
	ld b,c			;9add	41		A
	sbc a,e			;9ade	9b		.
	ld d,l			;9adf	55		U
	sbc a,e			;9ae0	9b		.
	ld l,c			;9ae1	69		i
	sbc a,e			;9ae2	9b		.
	ld a,l			;9ae3	7d		}
	sbc a,e			;9ae4	9b		.
	adc a,l			;9ae5	8d		.
	sbc a,e			;9ae6	9b		.
	sbc a,c			;9ae7	99		.
	sbc a,e			;9ae8	9b		.
	and c			;9ae9	a1		.
	sbc a,e			;9aea	9b		.
	or l			;9aeb	b5		.
	sbc a,e			;9aec	9b		.
	ret			;9aed	c9		.
	sbc a,e			;9aee	9b		.
	pop af			;9aef	f1		.
	sbc a,d			;9af0	9a		.
	inc bc			;9af1	03		.
	defb 0fdh,002h,008h ;illegal sequence	;9af2	fd 02 08	. . .
	jr nz,l9aa4h		;9af5	20 ad		  .
	or e			;9af7	b3		.
	dec hl			;9af8	2b		+
	ld d,(hl)		;9af9	56		V
	cp e			;9afa	bb		.
	or l			;9afb	b5		.
	ld c,e			;9afc	4b		K
	rla			;9afd	17		.
	inc h			;9afe	24		$
	inc e			;9aff	1c		.
	ld (0474dh),hl		;9b00	22 4d 47	" M G
	ld c,a			;9b03	4f		O
	ld b,d			;9b04	42		B
	nop			;9b05	00		.
	nop			;9b06	00		.
	inc b			;9b07	04		.
	inc b			;9b08	04		.
	sub h			;9b09	94		.
	sbc a,e			;9b0a	9b		.
	sbc a,h			;9b0b	9c		.
	sub h			;9b0c	94		.
	sub l			;9b0d	95		.
	sub (hl)		;9b0e	96		.
	sub (hl)		;9b0f	96		.
	sbc a,(hl)		;9b10	9e		.
	sub a			;9b11	97		.
	sbc a,b			;9b12	98		.
	and c			;9b13	a1		.
	and b			;9b14	a0		.
	sbc a,c			;9b15	99		.
	sbc a,d			;9b16	9a		.
	and e			;9b17	a3		.
	and d			;9b18	a2		.
	nop			;9b19	00		.
	nop			;9b1a	00		.
	inc b			;9b1b	04		.
	inc b			;9b1c	04		.
	xor e			;9b1d	ab		.
	xor h			;9b1e	ac		.
	or l			;9b1f	b5		.
	or h			;9b20	b4		.
	xor c			;9b21	a9		.
	xor d			;9b22	aa		.
	or e			;9b23	b3		.
	or d			;9b24	b2		.
	and a			;9b25	a7		.
	xor b			;9b26	a8		.
	xor b			;9b27	a8		.
	or b			;9b28	b0		.
	and (hl)		;9b29	a6		.
	xor l			;9b2a	ad		.
	xor (hl)		;9b2b	ae		.
	and (hl)		;9b2c	a6		.
	nop			;9b2d	00		.
	nop			;9b2e	00		.
	ex af,af'		;9b2f	08		.
	ld (bc),a		;9b30	02		.
	call z,000cdh		;9b31	cc cd 00	. . .
	nop			;9b34	00		.
	nop			;9b35	00		.
	nop			;9b36	00		.
	nop			;9b37	00		.
	nop			;9b38	00		.
	nop			;9b39	00		.
	nop			;9b3a	00		.
	nop			;9b3b	00		.
	nop			;9b3c	00		.
	nop			;9b3d	00		.
	nop			;9b3e	00		.
	call z,000cdh		;9b3f	cc cd 00	. . .
	nop			;9b42	00		.
	ex af,af'		;9b43	08		.
	ld (bc),a		;9b44	02		.
	call z,0cccdh		;9b45	cc cd cc	. . .
	call 00000h		;9b48	cd 00 00	. . .
	nop			;9b4b	00		.
	nop			;9b4c	00		.
	nop			;9b4d	00		.
	nop			;9b4e	00		.
	nop			;9b4f	00		.
	nop			;9b50	00		.
	call z,0cccdh		;9b51	cc cd cc	. . .
	call 00000h		;9b54	cd 00 00	. . .
	ex af,af'		;9b57	08		.
	ld (bc),a		;9b58	02		.
	call z,0cccdh		;9b59	cc cd cc	. . .
	call 0cdcch		;9b5c	cd cc cd	. . .
	nop			;9b5f	00		.
	nop			;9b60	00		.
	nop			;9b61	00		.
	nop			;9b62	00		.
	call z,0cccdh		;9b63	cc cd cc	. . .
	call 0cdcch		;9b66	cd cc cd	. . .
	nop			;9b69	00		.
	nop			;9b6a	00		.
	ex af,af'		;9b6b	08		.
	ld (bc),a		;9b6c	02		.
	call z,0cccdh		;9b6d	cc cd cc	. . .
	call 0cdcch		;9b70	cd cc cd	. . .
	call z,0cccdh		;9b73	cc cd cc	. . .
	call 0cdcch		;9b76	cd cc cd	. . .
	call z,0cccdh		;9b79	cc cd cc	. . .
	call 00001h		;9b7c	cd 01 00	. . .
	ld b,002h		;9b7f	06 02		. .
	call z,0cccdh		;9b81	cc cd cc	. . .
	call 0cdcch		;9b84	cd cc cd	. . .
	call z,0cccdh		;9b87	cc cd cc	. . .
	call 0cdcch		;9b8a	cd cc cd	. . .
	ld (bc),a		;9b8d	02		.
	nop			;9b8e	00		.
	inc b			;9b8f	04		.
	ld (bc),a		;9b90	02		.
	call z,0cccdh		;9b91	cc cd cc	. . .
	call 0cdcch		;9b94	cd cc cd	. . .
	call z,003cdh		;9b97	cc cd 03	. . .
	nop			;9b9a	00		.
	ld (bc),a		;9b9b	02		.
	ld (bc),a		;9b9c	02		.
l9b9dh:
	call z,0cccdh		;9b9d	cc cd cc	. . .
	call 00000h		;9ba0	cd 00 00	. . .
l9ba3h:
	ex af,af'		;9ba3	08		.
	ld (bc),a		;9ba4	02		.
	add a,b			;9ba5	80		.
	add a,e			;9ba6	83		.
	nop			;9ba7	00		.
	nop			;9ba8	00		.
	nop			;9ba9	00		.
	nop			;9baa	00		.
	nop			;9bab	00		.
	nop			;9bac	00		.
	nop			;9bad	00		.
	nop			;9bae	00		.
	nop			;9baf	00		.
	nop			;9bb0	00		.
	nop			;9bb1	00		.
	nop			;9bb2	00		.
	add a,b			;9bb3	80		.
	add a,e			;9bb4	83		.
	nop			;9bb5	00		.
	nop			;9bb6	00		.
	ex af,af'		;9bb7	08		.
	ld (bc),a		;9bb8	02		.
	add a,c			;9bb9	81		.
	add a,h			;9bba	84		.
	nop			;9bbb	00		.
	nop			;9bbc	00		.
	nop			;9bbd	00		.
	nop			;9bbe	00		.
	nop			;9bbf	00		.
	nop			;9bc0	00		.
	nop			;9bc1	00		.
	nop			;9bc2	00		.
	nop			;9bc3	00		.
	nop			;9bc4	00		.
	nop			;9bc5	00		.
	nop			;9bc6	00		.
	add a,c			;9bc7	81		.
	add a,h			;9bc8	84		.
	nop			;9bc9	00		.
	nop			;9bca	00		.
	ex af,af'		;9bcb	08		.
	ld (bc),a		;9bcc	02		.
	add a,d			;9bcd	82		.
	add a,l			;9bce	85		.
	nop			;9bcf	00		.
	nop			;9bd0	00		.
	nop			;9bd1	00		.
	nop			;9bd2	00		.
	nop			;9bd3	00		.
	nop			;9bd4	00		.
	nop			;9bd5	00		.
	nop			;9bd6	00		.
	nop			;9bd7	00		.
	nop			;9bd8	00		.
	nop			;9bd9	00		.
	nop			;9bda	00		.
	add a,d			;9bdb	82		.
	add a,l			;9bdc	85		.
	and h			;9bdd	a4		.
	cp c			;9bde	b9		.
	inc c			;9bdf	0c		.
	cp d			;9be0	ba		.
	jr l9b9dh		;9be1	18 ba		. .
	inc h			;9be3	24		$
	cp d			;9be4	ba		.
	jr nc,$-68		;9be5	30 ba		0 .
	jr c,l9ba3h		;9be7	38 ba		8 .
	ld b,b			;9be9	40		@
	cp d			;9bea	ba		.
	ld d,(hl)		;9beb	56		V
	cp d			;9bec	ba		.
	ld l,b			;9bed	68		h
	cp d			;9bee	ba		.
	ld a,h			;9bef	7c		|
	cp d			;9bf0	ba		.
	sub b			;9bf1	90		.
	cp d			;9bf2	ba		.
	sbc a,l			;9bf3	9d		.
	cp d			;9bf4	ba		.
	or e			;9bf5	b3		.
	cp d			;9bf6	ba		.
	ret			;9bf7	c9		.
	cp d			;9bf8	ba		.
	ret c			;9bf9	d8		.
	cp d			;9bfa	ba		.
	jp p,00cbah		;9bfb	f2 ba 0c	. . .
	cp e			;9bfe	bb		.
	ld c,e			;9bff	4b		K
	sbc a,l			;9c00	9d		.
	ld a,a			;9c01	7f		.
	sbc a,l			;9c02	9d		.
	or e			;9c03	b3		.
	sbc a,l			;9c04	9d		.
	rst 28h			;9c05	ef		.
	sbc a,l			;9c06	9d		.
	inc bc			;9c07	03		.
	sbc a,(hl)		;9c08	9e		.
	cpl			;9c09	2f		/
	sbc a,(hl)		;9c0a	9e		.
	ld h,e			;9c0b	63		c
	sbc a,(hl)		;9c0c	9e		.
	sbc a,a			;9c0d	9f		.
	sbc a,(hl)		;9c0e	9e		.
	ex (sp),hl		;9c0f	e3		.
	and (hl)		;9c10	a6		.
	ld b,c			;9c11	41		A
	and a			;9c12	a7		.
	ld a,a			;9c13	7f		.
	sbc a,h			;9c14	9c		.
	jp 0079ch		;9c15	c3 9c 07	. . .
	sbc a,l			;9c18	9d		.
	ccf			;9c19	3f		?
	sbc a,h			;9c1a	9c		.
	ld b,a			;9c1b	47		G
	sbc a,h			;9c1c	9c		.
	ld c,a			;9c1d	4f		O
	sbc a,h			;9c1e	9c		.
	ld d,a			;9c1f	57		W
	sbc a,h			;9c20	9c		.
	ld e,a			;9c21	5f		_
	sbc a,h			;9c22	9c		.
	ld h,a			;9c23	67		g
	sbc a,h			;9c24	9c		.
	ld l,a			;9c25	6f		o
	sbc a,h			;9c26	9c		.
	ld (hl),a		;9c27	77		w
	sbc a,h			;9c28	9c		.
	inc d			;9c29	14		.
	cp e			;9c2a	bb		.
	ret nz			;9c2b	c0		.
	cp e			;9c2c	bb		.
	add a,h			;9c2d	84		.
	cp h			;9c2e	bc		.
	ld h,b			;9c2f	60		`
	cp l			;9c30	bd		.
	or d			;9c31	b2		.
	cp l			;9c32	bd		.
	inc b			;9c33	04		.
	cp (hl)			;9c34	be		.
	ld d,(hl)		;9c35	56		V
	cp (hl)			;9c36	be		.
	xor b			;9c37	a8		.
	cp (hl)			;9c38	be		.
	jp m,04cbeh		;9c39	fa be 4c	. . L
	cp a			;9c3c	bf		.
	sbc a,(hl)		;9c3d	9e		.
	cp a			;9c3e	bf		.
	nop			;9c3f	00		.
	nop			;9c40	00		.
	ld (bc),a		;9c41	02		.
	ld (bc),a		;9c42	02		.
	cp (hl)			;9c43	be		.
	cp a			;9c44	bf		.
	ld bc,00002h		;9c45	01 02 00	. . .
	nop			;9c48	00		.
	ld (bc),a		;9c49	02		.
	ld (bc),a		;9c4a	02		.
	ret nz			;9c4b	c0		.
	pop bc			;9c4c	c1		.
	ld bc,00002h		;9c4d	01 02 00	. . .
	nop			;9c50	00		.
	ld (bc),a		;9c51	02		.
	ld (bc),a		;9c52	02		.
	jp 001c2h		;9c53	c3 c2 01	. . .
	ld (bc),a		;9c56	02		.
	nop			;9c57	00		.
	nop			;9c58	00		.
	ld (bc),a		;9c59	02		.
	ld (bc),a		;9c5a	02		.
	push bc			;9c5b	c5		.
	call nz,00201h		;9c5c	c4 01 02	. . .
	nop			;9c5f	00		.
	nop			;9c60	00		.
	ld (bc),a		;9c61	02		.
	ld (bc),a		;9c62	02		.
	inc bc			;9c63	03		.
	inc b			;9c64	04		.
	add a,0c7h		;9c65	c6 c7		. .
	nop			;9c67	00		.
	nop			;9c68	00		.
	ld (bc),a		;9c69	02		.
	ld (bc),a		;9c6a	02		.
	inc bc			;9c6b	03		.
	inc b			;9c6c	04		.
	ret z			;9c6d	c8		.
	ret			;9c6e	c9		.
	nop			;9c6f	00		.
	nop			;9c70	00		.
	ld (bc),a		;9c71	02		.
	ld (bc),a		;9c72	02		.
	inc bc			;9c73	03		.
	inc b			;9c74	04		.
	set 1,d			;9c75	cb ca		. .
	nop			;9c77	00		.
	nop			;9c78	00		.
	ld (bc),a		;9c79	02		.
	ld (bc),a		;9c7a	02		.
	inc bc			;9c7b	03		.
	inc b			;9c7c	04		.
	call 0fdcch		;9c7d	cd cc fd	. . .
	defb 0fdh,008h,008h ;illegal sequence	;9c80	fd 08 08	. . .
	nop			;9c83	00		.
	xor c			;9c84	a9		.
	xor h			;9c85	ac		.
	ld b,e			;9c86	43		C
	ld b,e			;9c87	43		C
	cp l			;9c88	bd		.
	cp d			;9c89	ba		.
	nop			;9c8a	00		.
	or l			;9c8b	b5		.
	xor b			;9c8c	a8		.
	ld b,(hl)		;9c8d	46		F
	ld b,h			;9c8e	44		D
	ld b,h			;9c8f	44		D
	ld b,(hl)		;9c90	46		F
	cp c			;9c91	b9		.
	xor (hl)		;9c92	ae		.
	ld a,054h		;9c93	3e 54		> T
	ld d,l			;9c95	55		U
	ld b,l			;9c96	45		E
	ld b,l			;9c97	45		E
	ld d,l			;9c98	55		U
	ld d,h			;9c99	54		T
	or b			;9c9a	b0		.
	ld c,c			;9c9b	49		I
	ld b,b			;9c9c	40		@
	ld c,e			;9c9d	4b		K
	inc de			;9c9e	13		.
	cpl			;9c9f	2f		/
	ld c,e			;9ca0	4b		K
	ld b,b			;9ca1	40		@
	ld l,h			;9ca2	6c		l
	nop			;9ca3	00		.
	ld c,c			;9ca4	49		I
	ld c,e			;9ca5	4b		K
	dec d			;9ca6	15		.
	ld sp,0404bh		;9ca7	31 4b 40	1 K @
	ld l,h			;9caa	6c		l
	nop			;9cab	00		.
	nop			;9cac	00		.
	scf			;9cad	37		7
	ld b,d			;9cae	42		B
	ld b,d			;9caf	42		B
	ld c,d			;9cb0	4a		J
	ld b,a			;9cb1	47		G
	or h			;9cb2	b4		.
	nop			;9cb3	00		.
	nop			;9cb4	00		.
	nop			;9cb5	00		.
	jr nc,l9cf9h		;9cb6	30 41		0 A
	ld c,b			;9cb8	48		H
	or (hl)			;9cb9	b6		.
	or a			;9cba	b7		.
	nop			;9cbb	00		.
	nop			;9cbc	00		.
	nop			;9cbd	00		.
	nop			;9cbe	00		.
	jr nc,l9ce9h		;9cbf	30 28		0 (
	cp b			;9cc1	b8		.
	nop			;9cc2	00		.
	defb 0fdh,0fdh,008h ;illegal sequence	;9cc3	fd fd 08	. . .
	ex af,af'		;9cc6	08		.
	nop			;9cc7	00		.
	xor c			;9cc8	a9		.
	xor h			;9cc9	ac		.
	ld b,e			;9cca	43		C
	ld b,e			;9ccb	43		C
	cp l			;9ccc	bd		.
	cp d			;9ccd	ba		.
	nop			;9cce	00		.
	sbc a,l			;9ccf	9d		.
	xor b			;9cd0	a8		.
	ld b,(hl)		;9cd1	46		F
	ld b,h			;9cd2	44		D
	ld b,h			;9cd3	44		D
	ld b,(hl)		;9cd4	46		F
	cp c			;9cd5	b9		.
	and h			;9cd6	a4		.
	sbc a,a			;9cd7	9f		.
	ld d,h			;9cd8	54		T
	ld d,l			;9cd9	55		U
	ld b,l			;9cda	45		E
	ld b,l			;9cdb	45		E
	ld d,l			;9cdc	55		U
	ld d,h			;9cdd	54		T
	ld (0406ch),hl		;9cde	22 6c 40	" l @
	ld c,e			;9ce1	4b		K
	inc de			;9ce2	13		.
	cpl			;9ce3	2f		/
	ld c,e			;9ce4	4b		K
	ld b,b			;9ce5	40		@
	ld l,a			;9ce6	6f		o
	ld l,h			;9ce7	6c		l
	ld b,b			;9ce8	40		@
l9ce9h:
	ld c,e			;9ce9	4b		K
	dec d			;9cea	15		.
	ld sp,06f4bh		;9ceb	31 4b 6f	1 K o
	nop			;9cee	00		.
	and e			;9cef	a3		.
	ld b,a			;9cf0	47		G
	ld c,d			;9cf1	4a		J
	ld b,d			;9cf2	42		B
	ld b,d			;9cf3	42		B
	dec de			;9cf4	1b		.
	nop			;9cf5	00		.
	nop			;9cf6	00		.
	and (hl)		;9cf7	a6		.
	and l			;9cf8	a5		.
l9cf9h:
	ld c,b			;9cf9	48		H
	ld b,c			;9cfa	41		A
	inc d			;9cfb	14		.
	nop			;9cfc	00		.
	nop			;9cfd	00		.
	nop			;9cfe	00		.
	nop			;9cff	00		.
	and a			;9d00	a7		.
	inc c			;9d01	0c		.
	inc d			;9d02	14		.
	nop			;9d03	00		.
	nop			;9d04	00		.
	nop			;9d05	00		.
	nop			;9d06	00		.
	defb 0fdh,0fdh,008h ;illegal sequence	;9d07	fd fd 08	. . .
	ex af,af'		;9d0a	08		.
	nop			;9d0b	00		.
	nop			;9d0c	00		.
	nop			;9d0d	00		.
	dec bc			;9d0e	0b		.
	ld b,e			;9d0f	43		C
	cp l			;9d10	bd		.
	cp d			;9d11	ba		.
	nop			;9d12	00		.
	nop			;9d13	00		.
	nop			;9d14	00		.
	dec bc			;9d15	0b		.
	ld b,h			;9d16	44		D
	ld b,h			;9d17	44		D
	ld b,(hl)		;9d18	46		F
	cp c			;9d19	b9		.
	xor (hl)		;9d1a	ae		.
	nop			;9d1b	00		.
	dec bc			;9d1c	0b		.
	ld d,l			;9d1d	55		U
	ld b,l			;9d1e	45		E
	ld b,l			;9d1f	45		E
	ld d,l			;9d20	55		U
	ld d,h			;9d21	54		T
	or b			;9d22	b0		.
	dec bc			;9d23	0b		.
	ld b,b			;9d24	40		@
	ld c,e			;9d25	4b		K
	inc de			;9d26	13		.
	cpl			;9d27	2f		/
	ld c,e			;9d28	4b		K
	ld b,b			;9d29	40		@
	ld l,h			;9d2a	6c		l
	ld l,h			;9d2b	6c		l
	ld b,b			;9d2c	40		@
	ld c,e			;9d2d	4b		K
	dec d			;9d2e	15		.
	ld sp,0404bh		;9d2f	31 4b 40	1 K @
	ld l,h			;9d32	6c		l
	and e			;9d33	a3		.
	ld b,a			;9d34	47		G
	ld c,d			;9d35	4a		J
	ld b,d			;9d36	42		B
	ld b,d			;9d37	42		B
	ld c,d			;9d38	4a		J
	ld b,a			;9d39	47		G
	or h			;9d3a	b4		.
	and (hl)		;9d3b	a6		.
	and l			;9d3c	a5		.
	ld c,b			;9d3d	48		H
	ld b,c			;9d3e	41		A
	ld b,c			;9d3f	41		A
	ld c,b			;9d40	48		H
	or (hl)			;9d41	b6		.
	or a			;9d42	b7		.
	nop			;9d43	00		.
	and (hl)		;9d44	a6		.
	sbc a,h			;9d45	9c		.
	ld l,l			;9d46	6d		m
	ld l,l			;9d47	6d		m
	xor l			;9d48	ad		.
	or a			;9d49	b7		.
	nop			;9d4a	00		.
	nop			;9d4b	00		.
	nop			;9d4c	00		.
	dec b			;9d4d	05		.
	ex af,af'		;9d4e	08		.
	nop			;9d4f	00		.
	or l			;9d50	b5		.
	jr nc,l9d5fh		;9d51	30 0c		0 .
	dec de			;9d53	1b		.
	ld sp,000b7h		;9d54	31 b7 00	1 . .
	nop			;9d57	00		.
	cp c			;9d58	b9		.
	ld (03e2fh),hl		;9d59	22 2f 3e	" / >
	scf			;9d5c	37		7
	sbc a,h			;9d5d	9c		.
	nop			;9d5e	00		.
l9d5fh:
	nop			;9d5f	00		.
	cp b			;9d60	b8		.
	ld d,h			;9d61	54		T
	ld d,l			;9d62	55		U
	ld l,l			;9d63	6d		m
	ld l,h			;9d64	6c		l
	sbc a,l			;9d65	9d		.
	nop			;9d66	00		.
	nop			;9d67	00		.
	or h			;9d68	b4		.
	ld b,007h		;9d69	06 07		. .
	dec d			;9d6b	15		.
	inc d			;9d6c	14		.
	or (hl)			;9d6d	b6		.
	nop			;9d6e	00		.
	nop			;9d6f	00		.
	nop			;9d70	00		.
	cp d			;9d71	ba		.
	dec b			;9d72	05		.
	inc de			;9d73	13		.
	sbc a,a			;9d74	9f		.
	nop			;9d75	00		.
	nop			;9d76	00		.
	nop			;9d77	00		.
	nop			;9d78	00		.
	nop			;9d79	00		.
	nop			;9d7a	00		.
	nop			;9d7b	00		.
	nop			;9d7c	00		.
	nop			;9d7d	00		.
	nop			;9d7e	00		.
	nop			;9d7f	00		.
	nop			;9d80	00		.
	ld b,008h		;9d81	06 08		. .
	or l			;9d83	b5		.
	ld c,l			;9d84	4d		M
	ld e,a			;9d85	5f		_
	ld h,b			;9d86	60		`
	ld h,c			;9d87	61		a
	ld e,a			;9d88	5f		_
	ld l,a			;9d89	6f		o
	or a			;9d8a	b7		.
	nop			;9d8b	00		.
	or l			;9d8c	b5		.
	jr nc,l9d9bh		;9d8d	30 0c		0 .
	dec de			;9d8f	1b		.
	ld sp,000b7h		;9d90	31 b7 00	1 . .
	nop			;9d93	00		.
	cp c			;9d94	b9		.
	ld (03e2fh),hl		;9d95	22 2f 3e	" / >
	scf			;9d98	37		7
	sbc a,h			;9d99	9c		.
	nop			;9d9a	00		.
l9d9bh:
	nop			;9d9b	00		.
	cp b			;9d9c	b8		.
	ld d,h			;9d9d	54		T
	ld d,l			;9d9e	55		U
	ld l,l			;9d9f	6d		m
	ld l,h			;9da0	6c		l
	sbc a,l			;9da1	9d		.
	nop			;9da2	00		.
	nop			;9da3	00		.
	or h			;9da4	b4		.
	ld b,007h		;9da5	06 07		. .
	dec d			;9da7	15		.
	inc d			;9da8	14		.
	or (hl)			;9da9	b6		.
	nop			;9daa	00		.
	nop			;9dab	00		.
	nop			;9dac	00		.
	cp d			;9dad	ba		.
	dec b			;9dae	05		.
	inc de			;9daf	13		.
	sbc a,a			;9db0	9f		.
	nop			;9db1	00		.
	nop			;9db2	00		.
	nop			;9db3	00		.
	nop			;9db4	00		.
	rlca			;9db5	07		.
	ex af,af'		;9db6	08		.
	or l			;9db7	b5		.
	ld c,l			;9db8	4d		M
	ld e,a			;9db9	5f		_
	ld h,b			;9dba	60		`
	ld h,c			;9dbb	61		a
	ld e,a			;9dbc	5f		_
	ld l,a			;9dbd	6f		o
	or a			;9dbe	b7		.
	nop			;9dbf	00		.
	or l			;9dc0	b5		.
	jr nc,l9dcfh		;9dc1	30 0c		0 .
	dec de			;9dc3	1b		.
	ld sp,000b7h		;9dc4	31 b7 00	1 . .
	nop			;9dc7	00		.
	nop			;9dc8	00		.
	and a			;9dc9	a7		.
	xor b			;9dca	a8		.
	xor c			;9dcb	a9		.
	cp l			;9dcc	bd		.
	nop			;9dcd	00		.
	nop			;9dce	00		.
l9dcfh:
	nop			;9dcf	00		.
	cp c			;9dd0	b9		.
	and e			;9dd1	a3		.
	and h			;9dd2	a4		.
	and l			;9dd3	a5		.
	and (hl)		;9dd4	a6		.
	sbc a,h			;9dd5	9c		.
	nop			;9dd6	00		.
	nop			;9dd7	00		.
	ld c,d			;9dd8	4a		J
	ld c,e			;9dd9	4b		K
	ld b,a			;9dda	47		G
	ld b,c			;9ddb	41		A
	ld b,l			;9ddc	45		E
	ld b,h			;9ddd	44		D
	nop			;9dde	00		.
	nop			;9ddf	00		.
	ld c,b			;9de0	48		H
	ld b,(hl)		;9de1	46		F
	dec hl			;9de2	2b		+
	add hl,hl		;9de3	29		)
	ld b,b			;9de4	40		@
	ld b,d			;9de5	42		B
	nop			;9de6	00		.
	nop			;9de7	00		.
	or h			;9de8	b4		.
	ld c,c			;9de9	49		I
	ld hl,(04328h)		;9dea	2a 28 43	* ( C
	or (hl)			;9ded	b6		.
	nop			;9dee	00		.
	nop			;9def	00		.
	nop			;9df0	00		.
	ld (bc),a		;9df1	02		.
	ex af,af'		;9df2	08		.
	nop			;9df3	00		.
	or l			;9df4	b5		.
	jr nc,l9e03h		;9df5	30 0c		0 .
	dec de			;9df7	1b		.
	ld sp,000b7h		;9df8	31 b7 00	1 . .
	nop			;9dfb	00		.
	nop			;9dfc	00		.
	xor h			;9dfd	ac		.
	xor l			;9dfe	ad		.
	xor (hl)		;9dff	ae		.
	or b			;9e00	b0		.
	nop			;9e01	00		.
	nop			;9e02	00		.
l9e03h:
	ld (bc),a		;9e03	02		.
	nop			;9e04	00		.
	dec b			;9e05	05		.
	ex af,af'		;9e06	08		.
	nop			;9e07	00		.
	nop			;9e08	00		.
	cp d			;9e09	ba		.
	dec b			;9e0a	05		.
	inc de			;9e0b	13		.
	sbc a,a			;9e0c	9f		.
	nop			;9e0d	00		.
	nop			;9e0e	00		.
	nop			;9e0f	00		.
	or h			;9e10	b4		.
	ld b,007h		;9e11	06 07		. .
	dec d			;9e13	15		.
	inc d			;9e14	14		.
	or (hl)			;9e15	b6		.
	nop			;9e16	00		.
	nop			;9e17	00		.
	cp b			;9e18	b8		.
	ld d,h			;9e19	54		T
	ld d,l			;9e1a	55		U
	ld l,l			;9e1b	6d		m
	ld l,h			;9e1c	6c		l
	sbc a,l			;9e1d	9d		.
	nop			;9e1e	00		.
	nop			;9e1f	00		.
	cp c			;9e20	b9		.
	ld (03e2fh),hl		;9e21	22 2f 3e	" / >
	scf			;9e24	37		7
	sbc a,h			;9e25	9c		.
	nop			;9e26	00		.
	nop			;9e27	00		.
	or l			;9e28	b5		.
	jr nc,l9e37h		;9e29	30 0c		0 .
	dec de			;9e2b	1b		.
	ld sp,000b7h		;9e2c	31 b7 00	1 . .
	ld bc,00600h		;9e2f	01 00 06	. . .
	ex af,af'		;9e32	08		.
	nop			;9e33	00		.
	nop			;9e34	00		.
	cp d			;9e35	ba		.
	dec b			;9e36	05		.
l9e37h:
	inc de			;9e37	13		.
	sbc a,a			;9e38	9f		.
	nop			;9e39	00		.
	nop			;9e3a	00		.
	nop			;9e3b	00		.
	or h			;9e3c	b4		.
	ld b,007h		;9e3d	06 07		. .
	dec d			;9e3f	15		.
	inc d			;9e40	14		.
	or (hl)			;9e41	b6		.
	nop			;9e42	00		.
	nop			;9e43	00		.
	cp b			;9e44	b8		.
	ld d,h			;9e45	54		T
	ld d,l			;9e46	55		U
	ld l,l			;9e47	6d		m
	ld l,h			;9e48	6c		l
	sbc a,l			;9e49	9d		.
	nop			;9e4a	00		.
	nop			;9e4b	00		.
	cp c			;9e4c	b9		.
	ld (03e2fh),hl		;9e4d	22 2f 3e	" / >
	scf			;9e50	37		7
	sbc a,h			;9e51	9c		.
	nop			;9e52	00		.
	nop			;9e53	00		.
	or l			;9e54	b5		.
	jr nc,l9e63h		;9e55	30 0c		0 .
	dec de			;9e57	1b		.
	ld sp,000b7h		;9e58	31 b7 00	1 . .
	or l			;9e5b	b5		.
	ld c,l			;9e5c	4d		M
	ld e,a			;9e5d	5f		_
	ld h,b			;9e5e	60		`
	ld h,c			;9e5f	61		a
	ld e,a			;9e60	5f		_
	ld l,a			;9e61	6f		o
	or a			;9e62	b7		.
l9e63h:
	nop			;9e63	00		.
	nop			;9e64	00		.
	rlca			;9e65	07		.
	ex af,af'		;9e66	08		.
	nop			;9e67	00		.
	or h			;9e68	b4		.
	ld c,c			;9e69	49		I
	ld hl,(04328h)		;9e6a	2a 28 43	* ( C
	or (hl)			;9e6d	b6		.
	nop			;9e6e	00		.
	nop			;9e6f	00		.
	ld c,b			;9e70	48		H
	ld b,(hl)		;9e71	46		F
	dec hl			;9e72	2b		+
	add hl,hl		;9e73	29		)
	ld b,b			;9e74	40		@
	ld b,d			;9e75	42		B
	nop			;9e76	00		.
	nop			;9e77	00		.
	ld c,d			;9e78	4a		J
	ld c,e			;9e79	4b		K
	ld b,a			;9e7a	47		G
	ld b,c			;9e7b	41		A
	ld b,l			;9e7c	45		E
	ld b,h			;9e7d	44		D
	nop			;9e7e	00		.
	nop			;9e7f	00		.
	cp c			;9e80	b9		.
	and e			;9e81	a3		.
	and h			;9e82	a4		.
	and l			;9e83	a5		.
	and (hl)		;9e84	a6		.
	sbc a,h			;9e85	9c		.
	nop			;9e86	00		.
	nop			;9e87	00		.
	nop			;9e88	00		.
	and a			;9e89	a7		.
	xor b			;9e8a	a8		.
	xor c			;9e8b	a9		.
	cp l			;9e8c	bd		.
	nop			;9e8d	00		.
	nop			;9e8e	00		.
	nop			;9e8f	00		.
	or l			;9e90	b5		.
	jr nc,l9e9fh		;9e91	30 0c		0 .
	dec de			;9e93	1b		.
	ld sp,000b7h		;9e94	31 b7 00	1 . .
	or l			;9e97	b5		.
	ld c,l			;9e98	4d		M
	ld e,a			;9e99	5f		_
	ld h,b			;9e9a	60		`
	ld h,c			;9e9b	61		a
	ld e,a			;9e9c	5f		_
	ld l,a			;9e9d	6f		o
	or a			;9e9e	b7		.
l9e9fh:
	dec b			;9e9f	05		.
	nop			;9ea0	00		.
	ld (bc),a		;9ea1	02		.
	ex af,af'		;9ea2	08		.
	nop			;9ea3	00		.
	nop			;9ea4	00		.
	xor h			;9ea5	ac		.
	xor l			;9ea6	ad		.
	xor (hl)		;9ea7	ae		.
	or b			;9ea8	b0		.
	nop			;9ea9	00		.
	nop			;9eaa	00		.
	nop			;9eab	00		.
	or l			;9eac	b5		.
	jr nc,l9ebbh		;9ead	30 0c		0 .
	dec de			;9eaf	1b		.
	ld sp,000b7h		;9eb0	31 b7 00	1 . .
	dec l			;9eb3	2d		-
	and d			;9eb4	a2		.
	ld b,b			;9eb5	40		@
	and d			;9eb6	a2		.
	or l			;9eb7	b5		.
	and c			;9eb8	a1		.
	pop af			;9eb9	f1		.
	and c			;9eba	a1		.
l9ebbh:
	ld d,e			;9ebb	53		S
	and d			;9ebc	a2		.
	rlca			;9ebd	07		.
	and e			;9ebe	a3		.
	ld b,e			;9ebf	43		C
	and e			;9ec0	a3		.
	ld a,a			;9ec1	7f		.
	and e			;9ec2	a3		.
l9ec3h:
	ld b,e			;9ec3	43		C
	and h			;9ec4	a4		.
	ld e,a			;9ec5	5f		_
	and h			;9ec6	a4		.
	ld a,e			;9ec7	7b		{
	and h			;9ec8	a4		.
	sub a			;9ec9	97		.
	and h			;9eca	a4		.
	or e			;9ecb	b3		.
	and h			;9ecc	a4		.
	cp e			;9ecd	bb		.
	and h			;9ece	a4		.
	jp 0cba4h		;9ecf	c3 a4 cb	. . .
	and h			;9ed2	a4		.
	rst 10h			;9ed3	d7		.
	and h			;9ed4	a4		.
	rst 20h			;9ed5	e7		.
	and h			;9ed6	a4		.
	rst 30h			;9ed7	f7		.
	and h			;9ed8	a4		.
	dec de			;9ed9	1b		.
	and l			;9eda	a5		.
	inc de			;9edb	13		.
	and l			;9edc	a5		.
	dec bc			;9edd	0b		.
	and l			;9ede	a5		.
	inc hl			;9edf	23		#
	and l			;9ee0	a5		.
	dec hl			;9ee1	2b		+
	and l			;9ee2	a5		.
	inc sp			;9ee3	33		3
	and l			;9ee4	a5		.
	dec sp			;9ee5	3b		;
	and l			;9ee6	a5		.
	ld b,e			;9ee7	43		C
	and l			;9ee8	a5		.
	ld c,a			;9ee9	4f		O
	and l			;9eea	a5		.
	ld e,a			;9eeb	5f		_
	and l			;9eec	a5		.
	ld (hl),e		;9eed	73		s
	and l			;9eee	a5		.
	adc a,e			;9eef	8b		.
	and l			;9ef0	a5		.
	and a			;9ef1	a7		.
	and l			;9ef2	a5		.
	rst 0			;9ef3	c7		.
	and l			;9ef4	a5		.
	rst 20h			;9ef5	e7		.
	and l			;9ef6	a5		.
	rlca			;9ef7	07		.
	and (hl)		;9ef8	a6		.
	inc de			;9ef9	13		.
	and (hl)		;9efa	a6		.
	rra			;9efb	1f		.
	and (hl)		;9efc	a6		.
	inc de			;9efd	13		.
	and (hl)		;9efe	a6		.
	rlca			;9eff	07		.
	and (hl)		;9f00	a6		.
	jp (hl)			;9f01	e9		.
	and b			;9f02	a0		.
	add hl,bc		;9f03	09		.
	and c			;9f04	a1		.
	add hl,hl		;9f05	29		)
	and c			;9f06	a1		.
	ld c,c			;9f07	49		I
	and c			;9f08	a1		.
	ld a,h			;9f09	7c		|
	and (hl)		;9f0a	a6		.
	adc a,a			;9f0b	8f		.
	and (hl)		;9f0c	a6		.
	xor a			;9f0d	af		.
	and (hl)		;9f0e	a6		.
	ex (sp),hl		;9f0f	e3		.
	and (hl)		;9f10	a6		.
	ld b,c			;9f11	41		A
	and a			;9f12	a7		.
	scf			;9f13	37		7
	sbc a,a			;9f14	9f		.
	inc a			;9f15	3c		<
	sbc a,a			;9f16	9f		.
	ld b,l			;9f17	45		E
	sbc a,a			;9f18	9f		.
	ld d,e			;9f19	53		S
	sbc a,a			;9f1a	9f		.
	ld h,(hl)		;9f1b	66		f
	sbc a,a			;9f1c	9f		.
	ld a,(hl)		;9f1d	7e		~
	sbc a,a			;9f1e	9f		.
	sbc a,e			;9f1f	9b		.
	sbc a,a			;9f20	9f		.
	cp l			;9f21	bd		.
	sbc a,a			;9f22	9f		.
	call po,0109fh		;9f23	e4 9f 10	. . .
	and b			;9f26	a0		.
	scf			;9f27	37		7
	sbc a,a			;9f28	9f		.
	ld b,c			;9f29	41		A
	and b			;9f2a	a0		.
	ld c,d			;9f2b	4a		J
	and b			;9f2c	a0		.
	ld e,b			;9f2d	58		X
	and b			;9f2e	a0		.
	ld l,e			;9f2f	6b		k
	and b			;9f30	a0		.
	add a,e			;9f31	83		.
	and b			;9f32	a0		.
	and b			;9f33	a0		.
	and b			;9f34	a0		.
	jp nz,000a0h		;9f35	c2 a0 00	. . .
	nop			;9f38	00		.
	ld bc,00001h		;9f39	01 01 00	. . .
	rst 38h			;9f3c	ff		.
	nop			;9f3d	00		.
	ld bc,00205h		;9f3e	01 05 02	. . .
	xor (hl)		;9f41	ae		.
	xor a			;9f42	af		.
	sbc a,c			;9f43	99		.
	sbc a,d			;9f44	9a		.
	cp 000h			;9f45	fe 00		. .
	ld (bc),a		;9f47	02		.
	dec b			;9f48	05		.
	ld (bc),a		;9f49	02		.
	xor (hl)		;9f4a	ae		.
	xor a			;9f4b	af		.
	sbc a,c			;9f4c	99		.
	sbc a,d			;9f4d	9a		.
	dec de			;9f4e	1b		.
	sub a			;9f4f	97		.
	sbc a,b			;9f50	98		.
	sbc a,e			;9f51	9b		.
	sbc a,h			;9f52	9c		.
	defb 0fdh,000h,003h ;illegal sequence	;9f53	fd 00 03	. . .
	dec b			;9f56	05		.
	ld (bc),a		;9f57	02		.
	xor (hl)		;9f58	ae		.
	xor a			;9f59	af		.
	sbc a,c			;9f5a	99		.
	sbc a,d			;9f5b	9a		.
	dec de			;9f5c	1b		.
	sub a			;9f5d	97		.
	sbc a,b			;9f5e	98		.
	sbc a,e			;9f5f	9b		.
	sbc a,h			;9f60	9c		.
	inc e			;9f61	1c		.
	sbc a,l			;9f62	9d		.
	sbc a,(hl)		;9f63	9e		.
	sbc a,c			;9f64	99		.
	sbc a,d			;9f65	9a		.
	call m,00400h		;9f66	fc 00 04	. . .
	dec b			;9f69	05		.
	ld (bc),a		;9f6a	02		.
	xor (hl)		;9f6b	ae		.
	xor a			;9f6c	af		.
	sbc a,c			;9f6d	99		.
	sbc a,d			;9f6e	9a		.
	dec de			;9f6f	1b		.
	sub a			;9f70	97		.
	sbc a,b			;9f71	98		.
	sbc a,e			;9f72	9b		.
	sbc a,h			;9f73	9c		.
	inc e			;9f74	1c		.
	sbc a,l			;9f75	9d		.
	sbc a,(hl)		;9f76	9e		.
	sbc a,c			;9f77	99		.
	sbc a,d			;9f78	9a		.
	dec de			;9f79	1b		.
	sub a			;9f7a	97		.
	sbc a,b			;9f7b	98		.
	sbc a,e			;9f7c	9b		.
	sbc a,h			;9f7d	9c		.
	ei			;9f7e	fb		.
	nop			;9f7f	00		.
	dec b			;9f80	05		.
	dec b			;9f81	05		.
	ld (bc),a		;9f82	02		.
	xor (hl)		;9f83	ae		.
	xor a			;9f84	af		.
	sbc a,c			;9f85	99		.
	sbc a,d			;9f86	9a		.
	dec de			;9f87	1b		.
	sub a			;9f88	97		.
	sbc a,b			;9f89	98		.
	sbc a,e			;9f8a	9b		.
	sbc a,h			;9f8b	9c		.
	inc e			;9f8c	1c		.
	sbc a,l			;9f8d	9d		.
	sbc a,(hl)		;9f8e	9e		.
	sbc a,c			;9f8f	99		.
	sbc a,d			;9f90	9a		.
	dec de			;9f91	1b		.
	sub a			;9f92	97		.
	sbc a,b			;9f93	98		.
	sbc a,e			;9f94	9b		.
	sbc a,h			;9f95	9c		.
	inc e			;9f96	1c		.
	sbc a,l			;9f97	9d		.
	sbc a,(hl)		;9f98	9e		.
	sbc a,c			;9f99	99		.
	sbc a,d			;9f9a	9a		.
	jp m,00600h		;9f9b	fa 00 06	. . .
	dec b			;9f9e	05		.
	ld (bc),a		;9f9f	02		.
	xor (hl)		;9fa0	ae		.
	xor a			;9fa1	af		.
	sbc a,c			;9fa2	99		.
	sbc a,d			;9fa3	9a		.
	dec de			;9fa4	1b		.
	sub a			;9fa5	97		.
	sbc a,b			;9fa6	98		.
	sbc a,e			;9fa7	9b		.
	sbc a,h			;9fa8	9c		.
	inc e			;9fa9	1c		.
	sbc a,l			;9faa	9d		.
	sbc a,(hl)		;9fab	9e		.
	sbc a,c			;9fac	99		.
	sbc a,d			;9fad	9a		.
	dec de			;9fae	1b		.
	sub a			;9faf	97		.
	sbc a,b			;9fb0	98		.
	sbc a,e			;9fb1	9b		.
	sbc a,h			;9fb2	9c		.
	inc e			;9fb3	1c		.
	sbc a,l			;9fb4	9d		.
	sbc a,(hl)		;9fb5	9e		.
	sbc a,c			;9fb6	99		.
	sbc a,d			;9fb7	9a		.
	dec de			;9fb8	1b		.
	sub a			;9fb9	97		.
	sbc a,b			;9fba	98		.
	sbc a,e			;9fbb	9b		.
	sbc a,h			;9fbc	9c		.
	ld sp,hl		;9fbd	f9		.
	nop			;9fbe	00		.
	rlca			;9fbf	07		.
	dec b			;9fc0	05		.
	ld (bc),a		;9fc1	02		.
	xor (hl)		;9fc2	ae		.
	xor a			;9fc3	af		.
	sbc a,c			;9fc4	99		.
	sbc a,d			;9fc5	9a		.
	dec de			;9fc6	1b		.
	sub a			;9fc7	97		.
	sbc a,b			;9fc8	98		.
	sbc a,e			;9fc9	9b		.
	sbc a,h			;9fca	9c		.
	inc e			;9fcb	1c		.
	sbc a,l			;9fcc	9d		.
	sbc a,(hl)		;9fcd	9e		.
	sbc a,c			;9fce	99		.
	sbc a,d			;9fcf	9a		.
	dec de			;9fd0	1b		.
	sub a			;9fd1	97		.
	sbc a,b			;9fd2	98		.
	sbc a,e			;9fd3	9b		.
	sbc a,h			;9fd4	9c		.
	inc e			;9fd5	1c		.
	sbc a,l			;9fd6	9d		.
	sbc a,(hl)		;9fd7	9e		.
	sbc a,c			;9fd8	99		.
	sbc a,d			;9fd9	9a		.
	dec de			;9fda	1b		.
	sub a			;9fdb	97		.
	sbc a,b			;9fdc	98		.
	sbc a,e			;9fdd	9b		.
	sbc a,h			;9fde	9c		.
	inc e			;9fdf	1c		.
	sbc a,l			;9fe0	9d		.
	sbc a,(hl)		;9fe1	9e		.
	sbc a,c			;9fe2	99		.
	sbc a,d			;9fe3	9a		.
	ret m			;9fe4	f8		.
	nop			;9fe5	00		.
	ex af,af'		;9fe6	08		.
	dec b			;9fe7	05		.
	ld (bc),a		;9fe8	02		.
	xor (hl)		;9fe9	ae		.
	xor a			;9fea	af		.
	sbc a,c			;9feb	99		.
	sbc a,d			;9fec	9a		.
	dec de			;9fed	1b		.
	sub a			;9fee	97		.
	sbc a,b			;9fef	98		.
	sbc a,e			;9ff0	9b		.
	sbc a,h			;9ff1	9c		.
	inc e			;9ff2	1c		.
	sbc a,l			;9ff3	9d		.
	sbc a,(hl)		;9ff4	9e		.
	sbc a,c			;9ff5	99		.
	sbc a,d			;9ff6	9a		.
	dec de			;9ff7	1b		.
	sub a			;9ff8	97		.
	sbc a,b			;9ff9	98		.
	sbc a,e			;9ffa	9b		.
	sbc a,h			;9ffb	9c		.
	inc e			;9ffc	1c		.
	sbc a,l			;9ffd	9d		.
	sbc a,(hl)		;9ffe	9e		.
	sbc a,c			;9fff	99		.
