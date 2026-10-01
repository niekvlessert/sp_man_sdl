; z80dasm 1.2.0
; command line: z80dasm -a -t -l -g 0x4000 -o /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/disasm/bank00_4000.asm /Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/banks/bank00.bin

	org 04000h

	ld b,c			;4000	41		A
	ld b,d			;4001	42		B
	inc sp			;4002	33		3
	ld b,b			;4003	40		@
	nop			;4004	00		.
	nop			;4005	00		.
	nop			;4006	00		.
	nop			;4007	00		.
	nop			;4008	00		.
	nop			;4009	00		.
	nop			;400a	00		.
	nop			;400b	00		.
	nop			;400c	00		.
	nop			;400d	00		.
	nop			;400e	00		.
	nop			;400f	00		.
	ld b,e			;4010	43		C
	ld b,h			;4011	44		D
	rlca			;4012	07		.
	ld l,b			;4013	68		h
	ret m			;4014	f8		.
	nop			;4015	00		.
	ret			;4016	c9		.
	ld bc,0ca10h		;4017	01 10 ca	. . .
	rlca			;401a	07		.
	rrca			;401b	0f		.
	rlc b			;401c	cb 00		. .
	nop			;401e	00		.
	nop			;401f	00		.
	nop			;4020	00		.
	nop			;4021	00		.
	nop			;4022	00		.
	nop			;4023	00		.
	nop			;4024	00		.
	nop			;4025	00		.
	nop			;4026	00		.
	nop			;4027	00		.
	nop			;4028	00		.
	nop			;4029	00		.
	add a,d			;402a	82		.
	ld (bc),a		;402b	02		.
	ld bc,00002h		;402c	01 02 00	. . .
	nop			;402f	00		.
	ld l,02fh		;4030	2e 2f		. /
l4032h:
	rst 38h			;4032	ff		.
	di			;4033	f3		.
	im 1			;4034	ed 56		. V
	call 00138h		;4036	cd 38 01	. 8 .
	rrca			;4039	0f		.
	rrca			;403a	0f		.
	and 003h		;403b	e6 03		. .
	ld c,a			;403d	4f		O
	ld b,000h		;403e	06 00		. .
	ld hl,0fcc1h		;4040	21 c1 fc	! . .
	add hl,bc		;4043	09		.
	ld a,(hl)		;4044	7e		~
	and 080h		;4045	e6 80		. .
	or c			;4047	b1		.
	ld c,a			;4048	4f		O
	inc hl			;4049	23		#
	inc hl			;404a	23		#
	inc hl			;404b	23		#
	inc hl			;404c	23		#
	ld a,(hl)		;404d	7e		~
	and 00ch		;404e	e6 0c		. .
	or c			;4050	b1		.
	ld h,080h		;4051	26 80		& .
	call 00024h		;4053	cd 24 00	. $ .
	ld hl,0d500h		;4056	21 00 d5	! . .
	ld de,0d501h		;4059	11 01 d5	. . .
	ld bc,00800h		;405c	01 00 08	. . .
	ld (hl),000h		;405f	36 00		6 .
	ldir			;4061	ed b0		. .
	ld hl,0c000h		;4063	21 00 c0	! . .
	ld de,0c001h		;4066	11 01 c0	. . .
	ld bc,030efh		;4069	01 ef 30	. . 0
	ld (hl),000h		;406c	36 00		6 .
	ldir			;406e	ed b0		. .
	ld sp,0f0f0h		;4070	31 f0 f0	1 . .
	di			;4073	f3		.
	ld a,0c3h		;4074	3e c3		> .
	ld (0fd9ah),a		;4076	32 9a fd	2 . .
	ld hl,l4110h		;4079	21 10 41	! . A
	ld (0fd9bh),hl		;407c	22 9b fd	" . .
	ei			;407f	fb		.
	jp l42f2h		;4080	c3 f2 42	. . B
sub_4083h:
	di			;4083	f3		.
	ld a,0c3h		;4084	3e c3		> .
	ld (0fd9ah),a		;4086	32 9a fd	2 . .
	ld hl,l4270h		;4089	21 70 42	! p B
	ld (0fd9bh),hl		;408c	22 9b fd	" . .
	ret			;408f	c9		.
	rst 38h			;4090	ff		.
	rst 38h			;4091	ff		.
	rst 38h			;4092	ff		.
	rst 38h			;4093	ff		.
	rst 38h			;4094	ff		.
	rst 38h			;4095	ff		.
	rst 38h			;4096	ff		.
	rst 38h			;4097	ff		.
	rst 38h			;4098	ff		.
	rst 38h			;4099	ff		.
	rst 38h			;409a	ff		.
	rst 38h			;409b	ff		.
	rst 38h			;409c	ff		.
	rst 38h			;409d	ff		.
	rst 38h			;409e	ff		.
	rst 38h			;409f	ff		.
	rst 38h			;40a0	ff		.
	rst 38h			;40a1	ff		.
	rst 38h			;40a2	ff		.
	rst 38h			;40a3	ff		.
	rst 38h			;40a4	ff		.
	rst 38h			;40a5	ff		.
	rst 38h			;40a6	ff		.
	rst 38h			;40a7	ff		.
	rst 38h			;40a8	ff		.
	rst 38h			;40a9	ff		.
	rst 38h			;40aa	ff		.
	rst 38h			;40ab	ff		.
	rst 38h			;40ac	ff		.
	rst 38h			;40ad	ff		.
	rst 38h			;40ae	ff		.
	rst 38h			;40af	ff		.
	rst 38h			;40b0	ff		.
	rst 38h			;40b1	ff		.
	rst 38h			;40b2	ff		.
	rst 38h			;40b3	ff		.
	rst 38h			;40b4	ff		.
	rst 38h			;40b5	ff		.
	rst 38h			;40b6	ff		.
	rst 38h			;40b7	ff		.
	rst 38h			;40b8	ff		.
	rst 38h			;40b9	ff		.
	rst 38h			;40ba	ff		.
	rst 38h			;40bb	ff		.
	rst 38h			;40bc	ff		.
	rst 38h			;40bd	ff		.
	rst 38h			;40be	ff		.
	rst 38h			;40bf	ff		.
	rst 38h			;40c0	ff		.
	rst 38h			;40c1	ff		.
	rst 38h			;40c2	ff		.
	rst 38h			;40c3	ff		.
	rst 38h			;40c4	ff		.
	rst 38h			;40c5	ff		.
	rst 38h			;40c6	ff		.
	rst 38h			;40c7	ff		.
	rst 38h			;40c8	ff		.
	rst 38h			;40c9	ff		.
	rst 38h			;40ca	ff		.
	rst 38h			;40cb	ff		.
	rst 38h			;40cc	ff		.
	rst 38h			;40cd	ff		.
	rst 38h			;40ce	ff		.
	rst 38h			;40cf	ff		.
	rst 38h			;40d0	ff		.
	rst 38h			;40d1	ff		.
	rst 38h			;40d2	ff		.
	rst 38h			;40d3	ff		.
	rst 38h			;40d4	ff		.
	rst 38h			;40d5	ff		.
	rst 38h			;40d6	ff		.
	rst 38h			;40d7	ff		.
	rst 38h			;40d8	ff		.
	rst 38h			;40d9	ff		.
	rst 38h			;40da	ff		.
	rst 38h			;40db	ff		.
	rst 38h			;40dc	ff		.
	rst 38h			;40dd	ff		.
	rst 38h			;40de	ff		.
	rst 38h			;40df	ff		.
	rst 38h			;40e0	ff		.
	rst 38h			;40e1	ff		.
	rst 38h			;40e2	ff		.
	rst 38h			;40e3	ff		.
	rst 38h			;40e4	ff		.
	rst 38h			;40e5	ff		.
	rst 38h			;40e6	ff		.
	rst 38h			;40e7	ff		.
	rst 38h			;40e8	ff		.
	rst 38h			;40e9	ff		.
	rst 38h			;40ea	ff		.
	rst 38h			;40eb	ff		.
	rst 38h			;40ec	ff		.
	rst 38h			;40ed	ff		.
	rst 38h			;40ee	ff		.
	rst 38h			;40ef	ff		.
	rst 38h			;40f0	ff		.
	rst 38h			;40f1	ff		.
	rst 38h			;40f2	ff		.
	rst 38h			;40f3	ff		.
	rst 38h			;40f4	ff		.
	rst 38h			;40f5	ff		.
	rst 38h			;40f6	ff		.
	rst 38h			;40f7	ff		.
	rst 38h			;40f8	ff		.
	rst 38h			;40f9	ff		.
	rst 38h			;40fa	ff		.
	rst 38h			;40fb	ff		.
	rst 38h			;40fc	ff		.
	rst 38h			;40fd	ff		.
	rst 38h			;40fe	ff		.
	rst 38h			;40ff	ff		.
	jp l438eh		;4100	c3 8e 43	. . C
	jp l4492h		;4103	c3 92 44	. . D
sub_4106h:
	jp l4452h		;4106	c3 52 44	. R D
	jp l458bh		;4109	c3 8b 45	. . E
	ld e,b			;410c	58		X
	ld b,c			;410d	41		A
	ld (hl),b		;410e	70		p
	ld b,d			;410f	42		B
l4110h:
	ld hl,0c914h		;4110	21 14 c9	! . .
	inc (hl)		;4113	34		4
	bit 0,(hl)		;4114	cb 46		. F
	call nz,sub_4a6ah	;4116	c4 6a 4a	. j J
	call sub_4d6eh		;4119	cd 6e 4d	. n M
	ld hl,0c906h		;411c	21 06 c9	! . .
	ld a,(hl)		;411f	7e		~
	and a			;4120	a7		.
	ld (hl),001h		;4121	36 01		6 .
	jp nz,l414eh		;4123	c2 4e 41	. N A
	ld bc,(0f0f0h)		;4126	ed 4b f0 f0	. K . .
	ld de,(0f0f2h)		;412a	ed 5b f2 f0	. [ . .
	push bc			;412e	c5		.
	push de			;412f	d5		.
	ei			;4130	fb		.
	call sub_4b4ah		;4131	cd 4a 4b	. J K
	pop de			;4134	d1		.
	pop bc			;4135	c1		.
	ld (0f0f2h),de		;4136	ed 53 f2 f0	. S . .
	ld (0f0f0h),bc		;413a	ed 43 f0 f0	. C . .
	ld a,b			;413e	78		x
	ld (07000h),a		;413f	32 00 70	2 . p
	ld a,e			;4142	7b		{
	ld (09000h),a		;4143	32 00 90	2 . .
	ld a,d			;4146	7a		z
	ld (0b000h),a		;4147	32 00 b0	2 . .
	xor a			;414a	af		.
	ld (0c906h),a		;414b	32 06 c9	2 . .
l414eh:
	di			;414e	f3		.
	ld a,(00006h)		;414f	3a 06 00	: . .
	ld c,a			;4152	4f		O
	inc c			;4153	0c		.
	in a,(c)		;4154	ed 78		. x
	ei			;4156	fb		.
	ret			;4157	c9		.
	call l4270h		;4158	cd 70 42	. p B
	ld a,(0c90ah)		;415b	3a 0a c9	: . .
	and 010h		;415e	e6 10		. .
	ret z			;4160	c8		.
	di			;4161	f3		.
	ld a,(0c906h)		;4162	3a 06 c9	: . .
	or a			;4165	b7		.
	ret nz			;4166	c0		.
	ld bc,(0c945h)		;4167	ed 4b 45 c9	. K E .
	ld (0c900h),bc		;416b	ed 43 00 c9	. C . .
	call sub_4083h		;416f	cd 83 40	. . @
	ld sp,0f0f0h		;4172	31 f0 f0	1 . .
	call sub_4c7ah		;4175	cd 7a 4c	. z L
	call sub_4b78h		;4178	cd 78 4b	. x K
	call sub_474bh		;417b	cd 4b 47	. K G
	ld a,055h		;417e	3e 55		> U
	call 04aebh		;4180	cd eb 4a	. . J
	call sub_4b31h		;4183	cd 31 4b	. 1 K
	jp l4357h		;4186	c3 57 43	. W C
sub_4189h:
	ld a,(0c940h)		;4189	3a 40 c9	: @ .
	dec a			;418c	3d		=
	ret m			;418d	f8		.
	jr z,l41a7h		;418e	28 17		( .
	ld a,(0c09ch)		;4190	3a 9c c0	: . .
	or a			;4193	b7		.
	call nz,sub_41c7h	;4194	c4 c7 41	. . A
sub_4197h:
	xor a			;4197	af		.
	ld (0c09dh),a		;4198	32 9d c0	2 . .
	ld hl,(0c0aeh)		;419b	2a ae c0	* . .
	ld a,(hl)		;419e	7e		~
	inc hl			;419f	23		#
	or a			;41a0	b7		.
	ret z			;41a1	c8		.
	ld b,a			;41a2	47		G
	ld c,d			;41a3	4a		J
	otir			;41a4	ed b3		. .
	ret			;41a6	c9		.
l41a7h:
	call sub_41c2h		;41a7	cd c2 41	. . A
	call sub_4197h		;41aa	cd 97 41	. . A
	ld c,d			;41ad	4a		J
	ld a,(0f3dfh)		;41ae	3a df f3	: . .
	set 4,a			;41b1	cb e7		. .
	ld b,a			;41b3	47		G
	ld (0f3dfh),a		;41b4	32 df f3	2 . .
	out (c),a		;41b7	ed 79		. y
	ld a,080h		;41b9	3e 80		> .
	out (c),a		;41bb	ed 79		. y
	ld hl,0c940h		;41bd	21 40 c9	! @ .
	inc (hl)		;41c0	34		4
	ret			;41c1	c9		.
sub_41c2h:
	ld a,(0c09bh)		;41c2	3a 9b c0	: . .
	jr l41d7h		;41c5	18 10		. .
sub_41c7h:
	ld a,(0c0b5h)		;41c7	3a b5 c0	: . .
	or a			;41ca	b7		.
	call nz,sub_41fah	;41cb	c4 fa 41	. . A
	ld hl,0c09bh		;41ce	21 9b c0	! . .
	inc (hl)		;41d1	34		4
	xor a			;41d2	af		.
	ld (0c09ch),a		;41d3	32 9c c0	2 . .
	ld a,(hl)		;41d6	7e		~
l41d7h:
	push de			;41d7	d5		.
	ld hl,0c9a8h		;41d8	21 a8 c9	! . .
	ld bc,0c948h		;41db	01 48 c9	. H .
	ld de,0c9beh		;41de	11 be c9	. . .
	rrca			;41e1	0f		.
	jr c,l41edh		;41e2	38 09		8 .
	ld hl,0c9d4h		;41e4	21 d4 c9	! . .
	ld bc,0c978h		;41e7	01 78 c9	. x .
	ld de,0c9eah		;41ea	11 ea c9	. . .
l41edh:
	ld (0c0a4h),bc		;41ed	ed 43 a4 c0	. C . .
	ld (0c0ach),de		;41f1	ed 53 ac c0	. S . .
	ld (0c0aeh),hl		;41f5	22 ae c0	" . .
	pop de			;41f8	d1		.
	ret			;41f9	c9		.
sub_41fah:
	push de			;41fa	d5		.
	and 07fh		;41fb	e6 7f		. .
	ld (0c0b4h),a		;41fd	32 b4 c0	2 . .
	call sub_4e82h		;4200	cd 82 4e	. . N
	push ix			;4203	dd e5		. .
	and 001h		;4205	e6 01		. .
	push hl			;4207	e5		.
	push af			;4208	f5		.
	ld de,02000h		;4209	11 00 20	. .  
	add hl,de		;420c	19		.
	push bc			;420d	c5		.
	ld b,006h		;420e	06 06		. .
l4210h:
	sra a			;4210	cb 2f		. /
	rr h			;4212	cb 1c		. .
	rr l			;4214	cb 1d		. .
	djnz l4210h		;4216	10 f8		. .
	pop bc			;4218	c1		.
	ld a,000h		;4219	3e 00		> .
	or h			;421b	b4		.
	ld h,a			;421c	67		g
	ld a,07fh		;421d	3e 7f		> .
	or l			;421f	b5		.
	ld l,a			;4220	6f		o
	or h			;4221	b4		.
	ld a,(00007h)		;4222	3a 07 00	: . .
	inc a			;4225	3c		<
	ld c,a			;4226	4f		O
	ld a,h			;4227	7c		|
	out (c),a		;4228	ed 79		. y
	ld a,08ah		;422a	3e 8a		> .
	out (c),a		;422c	ed 79		. y
	ld a,l			;422e	7d		}
	out (c),a		;422f	ed 79		. y
	ld a,083h		;4231	3e 83		> .
	out (c),a		;4233	ed 79		. y
	pop af			;4235	f1		.
	pop hl			;4236	e1		.
	push bc			;4237	c5		.
	ld b,003h		;4238	06 03		. .
l423ah:
	sra a			;423a	cb 2f		. /
	rr h			;423c	cb 1c		. .
	rr l			;423e	cb 1d		. .
	djnz l423ah		;4240	10 f8		. .
	pop bc			;4242	c1		.
	ld a,h			;4243	7c		|
	or 003h			;4244	f6 03		. .
	ld a,a			;4246	7f		.
	out (c),a		;4247	ed 79		. y
	ld a,084h		;4249	3e 84		> .
	out (c),a		;424b	ed 79		. y
	xor a			;424d	af		.
	ld (0c0b5h),a		;424e	32 b5 c0	2 . .
	pop ix			;4251	dd e1		. .
	pop de			;4253	d1		.
	ret			;4254	c9		.
l4255h:
	ld c,d			;4255	4a		J
	xor a			;4256	af		.
	out (c),a		;4257	ed 79		. y
	ld a,08fh		;4259	3e 8f		> .
	out (c),a		;425b	ed 79		. y
	ld c,e			;425d	4b		K
	in a,(c)		;425e	ed 78		. x
	rlca			;4260	07		.
	ret nc			;4261	d0		.
	call sub_4189h		;4262	cd 89 41	. . A
	ld c,d			;4265	4a		J
	xor a			;4266	af		.
	out (c),a		;4267	ed 79		. y
	ld a,08fh		;4269	3e 8f		> .
	out (c),a		;426b	ed 79		. y
	jp l4110h		;426d	c3 10 41	. . A
l4270h:
	di			;4270	f3		.
	ld de,(00006h)		;4271	ed 5b 06 00	. [ . .
	inc d			;4275	14		.
	inc e			;4276	1c		.
	ld c,d			;4277	4a		J
	ld a,001h		;4278	3e 01		> .
	out (c),a		;427a	ed 79		. y
	ld a,08fh		;427c	3e 8f		> .
	out (c),a		;427e	ed 79		. y
	ld c,e			;4280	4b		K
	in a,(c)		;4281	ed 78		. x
	rrca			;4283	0f		.
	jr nc,l4255h		;4284	30 cf		0 .
	ld a,(0c09dh)		;4286	3a 9d c0	: . .
	or a			;4289	b7		.
	jp nz,l42bfh		;428a	c2 bf 42	. . B
	inc a			;428d	3c		<
	ld (0c09dh),a		;428e	32 9d c0	2 . .
	ld hl,(0c0ach)		;4291	2a ac c0	* . .
	ld a,(hl)		;4294	7e		~
	inc hl			;4295	23		#
	or a			;4296	b7		.
	jr z,l42b3h		;4297	28 1a		( .
	ld b,a			;4299	47		G
	ld c,d			;429a	4a		J
	ld a,002h		;429b	3e 02		> .
	out (c),a		;429d	ed 79		. y
	ld a,08fh		;429f	3e 8f		> .
	out (c),a		;42a1	ed 79		. y
	ld c,e			;42a3	4b		K
l42a4h:
	in a,(c)		;42a4	ed 78		. x
	bit 5,a			;42a6	cb 6f		. o
	jr z,l42a4h		;42a8	28 fa		( .
l42aah:
	in a,(c)		;42aa	ed 78		. x
	bit 5,a			;42ac	cb 6f		. o
	jr nz,l42aah		;42ae	20 fa		  .
	ld c,d			;42b0	4a		J
	otir			;42b1	ed b3		. .
l42b3h:
	ld c,d			;42b3	4a		J
	xor a			;42b4	af		.
	out (c),a		;42b5	ed 79		. y
	ld a,08fh		;42b7	3e 8f		> .
	out (c),a		;42b9	ed 79		. y
	ld c,e			;42bb	4b		K
	in a,(c)		;42bc	ed 78		. x
	ret			;42be	c9		.
l42bfh:
	ld hl,(0c0a4h)		;42bf	2a a4 c0	* . .
	ld a,(hl)		;42c2	7e		~
	inc hl			;42c3	23		#
	or a			;42c4	b7		.
	jr z,l42e6h		;42c5	28 1f		( .
	ld b,a			;42c7	47		G
	ld c,d			;42c8	4a		J
	ld a,002h		;42c9	3e 02		> .
	out (c),a		;42cb	ed 79		. y
	ld a,08fh		;42cd	3e 8f		> .
	out (c),a		;42cf	ed 79		. y
	ld c,e			;42d1	4b		K
l42d2h:
	in a,(c)		;42d2	ed 78		. x
	bit 5,a			;42d4	cb 6f		. o
	jr z,l42d2h		;42d6	28 fa		( .
l42d8h:
	in a,(c)		;42d8	ed 78		. x
	bit 5,a			;42da	cb 6f		. o
	jr nz,l42d8h		;42dc	20 fa		  .
	ld a,007h		;42de	3e 07		> .
l42e0h:
	dec a			;42e0	3d		=
	jr nz,l42e0h		;42e1	20 fd		  .
	ld c,d			;42e3	4a		J
	otir			;42e4	ed b3		. .
l42e6h:
	ld c,d			;42e6	4a		J
	xor a			;42e7	af		.
	out (c),a		;42e8	ed 79		. y
	ld a,08fh		;42ea	3e 8f		> .
	out (c),a		;42ec	ed 79		. y
	ld c,e			;42ee	4b		K
	in a,(c)		;42ef	ed 78		. x
	ret			;42f1	c9		.
l42f2h:
	di			;42f2	f3		.
	xor a			;42f3	af		.
	ld (0f0fch),a		;42f4	32 fc f0	2 . .
	ld (0f0fdh),a		;42f7	32 fd f0	2 . .
	ld (0ca10h),a		;42fa	32 10 ca	2 . .
	ld (0c914h),a		;42fd	32 14 c9	2 . .
	ld (0c900h),a		;4300	32 00 c9	2 . .
	ld (0cb0fh),a		;4303	32 0f cb	2 . .
	ei			;4306	fb		.
l4307h:
	ld a,(0c914h)		;4307	3a 14 c9	: . .
	cp 002h			;430a	fe 02		. .
	jr c,l4307h		;430c	38 f9		8 .
	ld a,001h		;430e	3e 01		> .
	ld (0c900h),a		;4310	32 00 c9	2 . .
l4313h:
	ld a,(0c914h)		;4313	3a 14 c9	: . .
	cp 005h			;4316	fe 05		. .
	jr c,l4313h		;4318	38 f9		8 .
	ld a,002h		;431a	3e 02		> .
	ld (0c900h),a		;431c	32 00 c9	2 . .
l431fh:
	ld a,(0c914h)		;431f	3a 14 c9	: . .
	cp 007h			;4322	fe 07		. .
	jr c,l431fh		;4324	38 f9		8 .
	di			;4326	f3		.
	ld a,0c3h		;4327	3e c3		> .
	ld (0fd9ah),a		;4329	32 9a fd	2 . .
	ld hl,l4270h		;432c	21 70 42	! p B
	ld (0fd9bh),hl		;432f	22 9b fd	" . .
	xor a			;4332	af		.
	ld (0c900h),a		;4333	32 00 c9	2 . .
	ld a,(0ca10h)		;4336	3a 10 ca	: . .
	or a			;4339	b7		.
	jr z,l4340h		;433a	28 04		( .
	dec a			;433c	3d		=
	ld (0f0fch),a		;433d	32 fc f0	2 . .
l4340h:
	ld a,(0cb0fh)		;4340	3a 0f cb	: . .
	ld (0f0fdh),a		;4343	32 fd f0	2 . .
	ld hl,0c000h		;4346	21 00 c0	! . .
	ld de,0c001h		;4349	11 01 c0	. . .
	ld bc,030efh		;434c	01 ef 30	. . 0
	ld (hl),000h		;434f	36 00		6 .
	ldir			;4351	ed b0		. .
	call sub_49e3h		;4353	cd e3 49	. . I
	ei			;4356	fb		.
l4357h:
	xor a			;4357	af		.
	ld (0c914h),a		;4358	32 14 c9	2 . .
	call sub_4a7ah		;435b	cd 7a 4a	. z J
	call sub_4a58h		;435e	cd 58 4a	. X J
	ld a,(0c90ch)		;4361	3a 0c c9	: . .
	and 080h		;4364	e6 80		. .
	jr nz,l42f2h		;4366	20 8a		  .
	call sub_4b95h		;4368	cd 95 4b	. . K
	call 06000h		;436b	cd 00 60	. . `
	ld a,001h		;436e	3e 01		> .
	ld (0c942h),a		;4370	32 42 c9	2 B .
	ld a,(0c900h)		;4373	3a 00 c9	: . .
	cp 002h			;4376	fe 02		. .
	ld a,000h		;4378	3e 00		> .
	jr c,l437eh		;437a	38 02		8 .
	ld a,002h		;437c	3e 02		> .
l437eh:
	ld hl,0c914h		;437e	21 14 c9	! . .
	ld bc,00000h		;4381	01 00 00	. . .
l4384h:
	inc bc			;4384	03		.
	cp (hl)			;4385	be		.
	jr nc,l4384h		;4386	30 fc		0 .
	ld (0c915h),bc		;4388	ed 43 15 c9	. C . .
	jr l4357h		;438c	18 c9		. .
l438eh:
	call sub_4453h		;438e	cd 53 44	. S D
l4391h:
	push hl			;4391	e5		.
	ld hl,0f0fah		;4392	21 fa f0	! . .
	ld (hl),000h		;4395	36 00		6 .
	pop hl			;4397	e1		.
	call sub_4b95h		;4398	cd 95 4b	. . K
	call 06003h		;439b	cd 03 60	. . `
	push hl			;439e	e5		.
	ld hl,0f0fah		;439f	21 fa f0	! . .
	ld (hl),001h		;43a2	36 01		6 .
	pop hl			;43a4	e1		.
	call sub_4bdfh		;43a5	cd df 4b	. . K
	call 06d15h		;43a8	cd 15 6d	. . m
	push hl			;43ab	e5		.
	ld hl,0f0fah		;43ac	21 fa f0	! . .
	ld (hl),002h		;43af	36 02		6 .
	pop hl			;43b1	e1		.
	call sub_4befh		;43b2	cd ef 4b	. . K
	push hl			;43b5	e5		.
	ld hl,0f0fah		;43b6	21 fa f0	! . .
	ld (hl),006h		;43b9	36 06		6 .
	pop hl			;43bb	e1		.
	call sub_4b99h		;43bc	cd 99 4b	. . K
	call 06006h		;43bf	cd 06 60	. . `
	push hl			;43c2	e5		.
	ld hl,0f0fah		;43c3	21 fa f0	! . .
	ld (hl),005h		;43c6	36 05		6 .
	pop hl			;43c8	e1		.
	call 06000h		;43c9	cd 00 60	. . `
	call sub_4befh		;43cc	cd ef 4b	. . K
	push hl			;43cf	e5		.
	ld hl,0f0fah		;43d0	21 fa f0	! . .
	ld (hl),003h		;43d3	36 03		6 .
	pop hl			;43d5	e1		.
	call 08000h		;43d6	cd 00 80	. . .
	ld a,(0ca41h)		;43d9	3a 41 ca	: A .
	or a			;43dc	b7		.
	call z,08006h		;43dd	cc 06 80	. . .
	push hl			;43e0	e5		.
	ld hl,0f0fah		;43e1	21 fa f0	! . .
	ld (hl),008h		;43e4	36 08		6 .
	pop hl			;43e6	e1		.
	call sub_4bb0h		;43e7	cd b0 4b	. . K
	call 08000h		;43ea	cd 00 80	. . .
	push hl			;43ed	e5		.
	ld hl,0f0fah		;43ee	21 fa f0	! . .
	ld (hl),009h		;43f1	36 09		6 .
	pop hl			;43f3	e1		.
	call sub_4bdfh		;43f4	cd df 4b	. . K
	call 06d12h		;43f7	cd 12 6d	. . m
	push hl			;43fa	e5		.
	ld hl,0f0fah		;43fb	21 fa f0	! . .
	ld (hl),00ah		;43fe	36 0a		6 .
	pop hl			;4400	e1		.
	call sub_4b95h		;4401	cd 95 4b	. . K
	push hl			;4404	e5		.
	ld hl,0f0fah		;4405	21 fa f0	! . .
	ld (hl),00bh		;4408	36 0b		6 .
	pop hl			;440a	e1		.
	call sub_440fh		;440b	cd 0f 44	. . D
	ret			;440e	c9		.
sub_440fh:
	ld a,(0ca0fh)		;440f	3a 0f ca	: . .
	or a			;4412	b7		.
	ld a,002h		;4413	3e 02		> .
	ret nz			;4415	c0		.
	ld a,(0ca40h)		;4416	3a 40 ca	: @ .
	or a			;4419	b7		.
	ld a,001h		;441a	3e 01		> .
	ret z			;441c	c8		.
	xor a			;441d	af		.
	ld a,(l4032h)		;441e	3a 32 40	: 2 @
	inc a			;4421	3c		<
	ret z			;4422	c8		.
	ld a,(0c90ch)		;4423	3a 0c c9	: . .
	bit 3,a			;4426	cb 5f		. _
	ld a,000h		;4428	3e 00		> .
	ret z			;442a	c8		.
	xor a			;442b	af		.
	ld (0e900h),a		;442c	32 00 e9	2 . .
	ld a,002h		;442f	3e 02		> .
	ret			;4431	c9		.
	ld a,(0c90ch)		;4432	3a 0c c9	: . .
	bit 2,a			;4435	cb 57		. W
	ret z			;4437	c8		.
	ld a,(0ca1eh)		;4438	3a 1e ca	: . .
	inc a			;443b	3c		<
	cp 006h			;443c	fe 06		. .
	jr c,l4441h		;443e	38 01		8 .
	xor a			;4440	af		.
l4441h:
	ld (0ca1eh),a		;4441	32 1e ca	2 . .
	ld a,(0cb0fh)		;4444	3a 0f cb	: . .
	add a,001h		;4447	c6 01		. .
	daa			;4449	27		'
	ld (0cb0fh),a		;444a	32 0f cb	2 . .
	ld a,001h		;444d	3e 01		> .
	jp l469fh		;444f	c3 9f 46	. . F
l4452h:
	ret			;4452	c9		.
sub_4453h:
	ld a,(0c900h)		;4453	3a 00 c9	: . .
	cp 005h			;4456	fe 05		. .
	ret z			;4458	c8		.
	ld a,(0ca41h)		;4459	3a 41 ca	: A .
	or a			;445c	b7		.
	ret nz			;445d	c0		.
	ld a,(0c90ch)		;445e	3a 0c c9	: . .
	bit 0,a			;4461	cb 47		. G
	ret z			;4463	c8		.
	ld a,082h		;4464	3e 82		> .
	call 04aebh		;4466	cd eb 4a	. . J
	call sub_4b31h		;4469	cd 31 4b	. 1 K
l446ch:
	call sub_4a7ah		;446c	cd 7a 4a	. z J
	call sub_4a58h		;446f	cd 58 4a	. X J
	ld bc,01000h		;4472	01 00 10	. . .
l4475h:
	dec bc			;4475	0b		.
	ld a,b			;4476	78		x
	or c			;4477	b1		.
	jr nz,l4475h		;4478	20 fb		  .
	ld a,(0c90ch)		;447a	3a 0c c9	: . .
	bit 1,a			;447d	cb 4f		. O
	push af			;447f	f5		.
	pop af			;4480	f1		.
	bit 0,a			;4481	cb 47		. G
	jr z,l446ch		;4483	28 e7		( .
	ld a,081h		;4485	3e 81		> .
	call 04aebh		;4487	cd eb 4a	. . J
	ret			;448a	c9		.
	ld hl,0ca02h		;448b	21 02 ca	! . .
	inc (hl)		;448e	34		4
	jp l4391h		;448f	c3 91 43	. . C
l4492h:
	dec a			;4492	3d		=
	jr z,l44ach		;4493	28 17		( .
	dec a			;4495	3d		=
	jp z,l44b3h		;4496	ca b3 44	. . D
	jp p,l44cfh		;4499	f2 cf 44	. . D
	call sub_4598h		;449c	cd 98 45	. . E
	call sub_44e9h		;449f	cd e9 44	. . D
	call sub_453dh		;44a2	cd 3d 45	. = E
	call sub_44d9h		;44a5	cd d9 44	. . D
	call sub_4577h		;44a8	cd 77 45	. w E
	ret			;44ab	c9		.
l44ach:
	call sub_44e9h		;44ac	cd e9 44	. . D
	call sub_456dh		;44af	cd 6d 45	. m E
	ret			;44b2	c9		.
l44b3h:
	ld a,(0cb08h)		;44b3	3a 08 cb	: . .
	sub 002h		;44b6	d6 02		. .
	jr nc,l44bbh		;44b8	30 01		0 .
	xor a			;44ba	af		.
l44bbh:
	ld (0cb08h),a		;44bb	32 08 cb	2 . .
	dec a			;44be	3d		=
	ld (0cb07h),a		;44bf	32 07 cb	2 . .
	call sub_44e9h		;44c2	cd e9 44	. . D
	call sub_453dh		;44c5	cd 3d 45	. = E
	call sub_44d9h		;44c8	cd d9 44	. . D
	call sub_4581h		;44cb	cd 81 45	. . E
	ret			;44ce	c9		.
l44cfh:
	call sub_4598h		;44cf	cd 98 45	. . E
	call sub_44e9h		;44d2	cd e9 44	. . D
	call sub_4555h		;44d5	cd 55 45	. U E
	ret			;44d8	c9		.
sub_44d9h:
	ld a,(0f0fdh)		;44d9	3a fd f0	: . .
	or a			;44dc	b7		.
	jr nz,l44e1h		;44dd	20 02		  .
	ld a,002h		;44df	3e 02		> .
l44e1h:
	ld (0cb0fh),a		;44e1	32 0f cb	2 . .
	xor a			;44e4	af		.
	ld (0f0fdh),a		;44e5	32 fd f0	2 . .
	ret			;44e8	c9		.
sub_44e9h:
	ld a,(0ca03h)		;44e9	3a 03 ca	: . .
	bit 1,a			;44ec	cb 4f		. O
	jr nz,l44f4h		;44ee	20 04		  .
	xor a			;44f0	af		.
	ld (0e900h),a		;44f1	32 00 e9	2 . .
l44f4h:
	call sub_4106h		;44f4	cd 06 41	. . A
	push hl			;44f7	e5		.
	ld hl,0f0fah		;44f8	21 fa f0	! . .
	ld (hl),000h		;44fb	36 00		6 .
	pop hl			;44fd	e1		.
	call sub_4b99h		;44fe	cd 99 4b	. . K
	call 06009h		;4501	cd 09 60	. . `
	push hl			;4504	e5		.
	ld hl,0f0fah		;4505	21 fa f0	! . .
	ld (hl),001h		;4508	36 01		6 .
	pop hl			;450a	e1		.
	call sub_4befh		;450b	cd ef 4b	. . K
	call 06003h		;450e	cd 03 60	. . `
	push hl			;4511	e5		.
	ld hl,0f0fah		;4512	21 fa f0	! . .
	ld (hl),002h		;4515	36 02		6 .
	pop hl			;4517	e1		.
	call sub_4bdfh		;4518	cd df 4b	. . K
	call 06d0fh		;451b	cd 0f 6d	. . m
	call sub_4b95h		;451e	cd 95 4b	. . K
	call 06006h		;4521	cd 06 60	. . `
	ld a,055h		;4524	3e 55		> U
	call 04aebh		;4526	cd eb 4a	. . J
	call sub_4b31h		;4529	cd 31 4b	. 1 K
	call sub_4b95h		;452c	cd 95 4b	. . K
	ld a,(0ca10h)		;452f	3a 10 ca	: . .
	ld hl,l4ae2h		;4532	21 e2 4a	! . J
	call sub_4600h		;4535	cd 00 46	. . F
	ld a,(hl)		;4538	7e		~
	call sub_4af5h		;4539	cd f5 4a	. . J
	ret			;453c	c9		.
sub_453dh:
	push hl			;453d	e5		.
	ld hl,0f0fah		;453e	21 fa f0	! . .
	ld (hl),003h		;4541	36 03		6 .
	pop hl			;4543	e1		.
	call sub_4befh		;4544	cd ef 4b	. . K
	call 08003h		;4547	cd 03 80	. . .
	call sub_4b95h		;454a	cd 95 4b	. . K
	push hl			;454d	e5		.
	ld hl,0f0fah		;454e	21 fa f0	! . .
	ld (hl),005h		;4551	36 05		6 .
	pop hl			;4553	e1		.
	ret			;4554	c9		.
sub_4555h:
	push hl			;4555	e5		.
	ld hl,0f0fah		;4556	21 fa f0	! . .
	ld (hl),003h		;4559	36 03		6 .
	pop hl			;455b	e1		.
	call sub_4befh		;455c	cd ef 4b	. . K
	call 08012h		;455f	cd 12 80	. . .
	call sub_4b95h		;4562	cd 95 4b	. . K
	push hl			;4565	e5		.
	ld hl,0f0fah		;4566	21 fa f0	! . .
	ld (hl),005h		;4569	36 05		6 .
	pop hl			;456b	e1		.
	ret			;456c	c9		.
sub_456dh:
	call sub_4befh		;456d	cd ef 4b	. . K
	call 08018h		;4570	cd 18 80	. . .
	call sub_4b95h		;4573	cd 95 4b	. . K
	ret			;4576	c9		.
sub_4577h:
	call sub_4befh		;4577	cd ef 4b	. . K
	call 06018h		;457a	cd 18 60	. . `
	call sub_4b95h		;457d	cd 95 4b	. . K
	ret			;4580	c9		.
sub_4581h:
	call sub_4befh		;4581	cd ef 4b	. . K
	call 0601bh		;4584	cd 1b 60	. . `
	call sub_4b95h		;4587	cd 95 4b	. . K
	ret			;458a	c9		.
l458bh:
	call sub_4b99h		;458b	cd 99 4b	. . K
	call 06000h		;458e	cd 00 60	. . `
	call 06012h		;4591	cd 12 60	. . `
	call sub_4bdfh		;4594	cd df 4b	. . K
	ret			;4597	c9		.
sub_4598h:
	ld a,(0c900h)		;4598	3a 00 c9	: . .
	cp 005h			;459b	fe 05		. .
	ret z			;459d	c8		.
	xor a			;459e	af		.
	ld (0ca1eh),a		;459f	32 1e ca	2 . .
	ret			;45a2	c9		.
	nop			;45a3	00		.
	rst 38h			;45a4	ff		.
	rst 38h			;45a5	ff		.
	rst 38h			;45a6	ff		.
	rst 38h			;45a7	ff		.
	rst 38h			;45a8	ff		.
	rst 38h			;45a9	ff		.
	rst 38h			;45aa	ff		.
	rst 38h			;45ab	ff		.
	rst 38h			;45ac	ff		.
	rst 38h			;45ad	ff		.
	rst 38h			;45ae	ff		.
	rst 38h			;45af	ff		.
	rst 38h			;45b0	ff		.
	rst 38h			;45b1	ff		.
	rst 38h			;45b2	ff		.
	rst 38h			;45b3	ff		.
	rst 38h			;45b4	ff		.
	rst 38h			;45b5	ff		.
	rst 38h			;45b6	ff		.
	rst 38h			;45b7	ff		.
	rst 38h			;45b8	ff		.
	rst 38h			;45b9	ff		.
	rst 38h			;45ba	ff		.
	rst 38h			;45bb	ff		.
	rst 38h			;45bc	ff		.
	rst 38h			;45bd	ff		.
	rst 38h			;45be	ff		.
	rst 38h			;45bf	ff		.
	rst 38h			;45c0	ff		.
	rst 38h			;45c1	ff		.
	rst 38h			;45c2	ff		.
	rst 38h			;45c3	ff		.
	rst 38h			;45c4	ff		.
	rst 38h			;45c5	ff		.
	rst 38h			;45c6	ff		.
	rst 38h			;45c7	ff		.
	rst 38h			;45c8	ff		.
	rst 38h			;45c9	ff		.
	rst 38h			;45ca	ff		.
	rst 38h			;45cb	ff		.
	rst 38h			;45cc	ff		.
	rst 38h			;45cd	ff		.
	rst 38h			;45ce	ff		.
	rst 38h			;45cf	ff		.
	rst 38h			;45d0	ff		.
	rst 38h			;45d1	ff		.
	rst 38h			;45d2	ff		.
	rst 38h			;45d3	ff		.
	rst 38h			;45d4	ff		.
	rst 38h			;45d5	ff		.
	rst 38h			;45d6	ff		.
	rst 38h			;45d7	ff		.
	rst 38h			;45d8	ff		.
	rst 38h			;45d9	ff		.
	rst 38h			;45da	ff		.
	rst 38h			;45db	ff		.
	rst 38h			;45dc	ff		.
	rst 38h			;45dd	ff		.
	rst 38h			;45de	ff		.
	rst 38h			;45df	ff		.
	rst 38h			;45e0	ff		.
	rst 38h			;45e1	ff		.
	rst 38h			;45e2	ff		.
	rst 38h			;45e3	ff		.
	rst 38h			;45e4	ff		.
	rst 38h			;45e5	ff		.
	rst 38h			;45e6	ff		.
	rst 38h			;45e7	ff		.
	rst 38h			;45e8	ff		.
	rst 38h			;45e9	ff		.
	rst 38h			;45ea	ff		.
	rst 38h			;45eb	ff		.
	rst 38h			;45ec	ff		.
	rst 38h			;45ed	ff		.
	rst 38h			;45ee	ff		.
	rst 38h			;45ef	ff		.
	rst 38h			;45f0	ff		.
	rst 38h			;45f1	ff		.
	rst 38h			;45f2	ff		.
	rst 38h			;45f3	ff		.
	rst 38h			;45f4	ff		.
	rst 38h			;45f5	ff		.
	rst 38h			;45f6	ff		.
	rst 38h			;45f7	ff		.
	rst 38h			;45f8	ff		.
	rst 38h			;45f9	ff		.
	rst 38h			;45fa	ff		.
	rst 38h			;45fb	ff		.
	rst 38h			;45fc	ff		.
	rst 38h			;45fd	ff		.
	rst 38h			;45fe	ff		.
	rst 38h			;45ff	ff		.
sub_4600h:
	add a,l			;4600	85		.
	ld l,a			;4601	6f		o
	ret nc			;4602	d0		.
	inc h			;4603	24		$
	ret			;4604	c9		.
	add a,e			;4605	83		.
	ld e,a			;4606	5f		_
	ret nc			;4607	d0		.
	inc d			;4608	14		.
	ret			;4609	c9		.
sub_460ah:
	ld a,d			;460a	7a		z
	cpl			;460b	2f		/
	ld d,a			;460c	57		W
	ld a,e			;460d	7b		{
	cpl			;460e	2f		/
	ld e,a			;460f	5f		_
	inc de			;4610	13		.
	ret			;4611	c9		.
sub_4612h:
	ld a,h			;4612	7c		|
	cpl			;4613	2f		/
	ld h,a			;4614	67		g
	ld a,l			;4615	7d		}
	cpl			;4616	2f		/
	ld l,a			;4617	6f		o
	inc hl			;4618	23		#
	ret			;4619	c9		.
sub_461ah:
	pop hl			;461a	e1		.
	add a,a			;461b	87		.
	call sub_4600h		;461c	cd 00 46	. . F
	ld a,(hl)		;461f	7e		~
	inc hl			;4620	23		#
	ld h,(hl)		;4621	66		f
	ld l,a			;4622	6f		o
	jp (hl)			;4623	e9		.
	ld l,a			;4624	6f		o
	ld h,000h		;4625	26 00		& .
	add hl,hl		;4627	29		)
	add hl,de		;4628	19		.
	ld e,(hl)		;4629	5e		^
	inc hl			;462a	23		#
	ld d,(hl)		;462b	56		V
	ex de,hl		;462c	eb		.
	ret			;462d	c9		.
	add a,a			;462e	87		.
	add a,l			;462f	85		.
	ld l,a			;4630	6f		o
	jr nc,l4634h		;4631	30 01		0 .
	inc h			;4633	24		$
l4634h:
	ld e,(hl)		;4634	5e		^
	inc hl			;4635	23		#
	ld d,(hl)		;4636	56		V
	ex de,hl		;4637	eb		.
	ret			;4638	c9		.
	ld l,a			;4639	6f		o
	ld h,000h		;463a	26 00		& .
	add hl,hl		;463c	29		)
	add hl,hl		;463d	29		)
	add hl,de		;463e	19		.
	ld e,(hl)		;463f	5e		^
	inc hl			;4640	23		#
	ld d,(hl)		;4641	56		V
	inc hl			;4642	23		#
	ld a,(hl)		;4643	7e		~
	inc hl			;4644	23		#
	ld h,(hl)		;4645	66		f
	ld l,a			;4646	6f		o
	ret			;4647	c9		.
l4648h:
	xor a			;4648	af		.
sub_4649h:
	ld d,h			;4649	54		T
	ld e,l			;464a	5d		]
	ld (hl),a		;464b	77		w
	inc de			;464c	13		.
	ldir			;464d	ed b0		. .
	ret			;464f	c9		.
sub_4650h:
	ld a,h			;4650	7c		|
	cp d			;4651	ba		.
	ret nz			;4652	c0		.
	ld a,l			;4653	7d		}
	cp e			;4654	bb		.
	ret			;4655	c9		.
	push ix			;4656	dd e5		. .
	push iy			;4658	fd e5		. .
	pop ix			;465a	dd e1		. .
	pop iy			;465c	fd e1		. .
	ret			;465e	c9		.
	call 00138h		;465f	cd 38 01	. 8 .
	rrca			;4662	0f		.
	rrca			;4663	0f		.
	and 003h		;4664	e6 03		. .
	ld c,a			;4666	4f		O
	ld b,000h		;4667	06 00		. .
	ld hl,0fcc1h		;4669	21 c1 fc	! . .
	add hl,bc		;466c	09		.
	or (hl)			;466d	b6		.
	ld c,a			;466e	4f		O
	inc hl			;466f	23		#
	inc hl			;4670	23		#
	inc hl			;4671	23		#
	inc hl			;4672	23		#
	ld a,(hl)		;4673	7e		~
	and 00ch		;4674	e6 0c		. .
	or c			;4676	b1		.
	ret			;4677	c9		.
sub_4678h:
	push hl			;4678	e5		.
	push bc			;4679	c5		.
	ld bc,(0c917h)		;467a	ed 4b 17 c9	. K . .
	ld h,046h		;467e	26 46		& F
	ld l,c			;4680	69		i
	ld a,(hl)		;4681	7e		~
	xor b			;4682	a8		.
	inc h			;4683	24		$
	xor (hl)		;4684	ae		.
	ld b,a			;4685	47		G
	inc c			;4686	0c		.
	ld (0c917h),bc		;4687	ed 43 17 c9	. C . .
	pop bc			;468b	c1		.
	pop hl			;468c	e1		.
	ret			;468d	c9		.
	add a,a			;468e	87		.
	add a,l			;468f	85		.
	ld l,a			;4690	6f		o
	jr nc,l4694h		;4691	30 01		0 .
	inc h			;4693	24		$
l4694h:
	ld a,(hl)		;4694	7e		~
	inc hl			;4695	23		#
	ld h,(hl)		;4696	66		f
	ld l,a			;4697	6f		o
	ret			;4698	c9		.
	inc sp			;4699	33		3
	inc sp			;469a	33		3
	inc sp			;469b	33		3
	inc sp			;469c	33		3
	inc sp			;469d	33		3
	inc sp			;469e	33		3
l469fh:
	inc sp			;469f	33		3
	inc sp			;46a0	33		3
	ret			;46a1	c9		.
	ret			;46a2	c9		.
sub_46a3h:
	ex de,hl		;46a3	eb		.
	ld a,c			;46a4	79		y
	or a			;46a5	b7		.
	ld a,b			;46a6	78		x
	ld b,c			;46a7	41		A
	ret z			;46a8	c8		.
	inc a			;46a9	3c		<
	ret			;46aa	c9		.
l46abh:
	ld a,0afh		;46ab	3e af		> .
	ex de,hl		;46ad	eb		.
	call sub_46f0h		;46ae	cd f0 46	. . F
	call sub_46a3h		;46b1	cd a3 46	. . F
	ex af,af'		;46b4	08		.
	ld a,(00007h)		;46b5	3a 07 00	: . .
	ld c,a			;46b8	4f		O
	ex af,af'		;46b9	08		.
l46bah:
	otir			;46ba	ed b3		. .
	dec a			;46bc	3d		=
	jr nz,l46bah		;46bd	20 fb		  .
	ret			;46bf	c9		.
	push de			;46c0	d5		.
	ld d,0afh		;46c1	16 af		. .
	jr l46c8h		;46c3	18 03		. .
	push de			;46c5	d5		.
	ld d,000h		;46c6	16 00		. .
l46c8h:
	push af			;46c8	f5		.
	ld a,d			;46c9	7a		z
	call sub_46f0h		;46ca	cd f0 46	. . F
	ld d,c			;46cd	51		Q
	ld a,c			;46ce	79		y
	or a			;46cf	b7		.
	jr z,l46d3h		;46d0	28 01		( .
	inc b			;46d2	04		.
l46d3h:
	ld a,(00007h)		;46d3	3a 07 00	: . .
	ld c,a			;46d6	4f		O
	pop af			;46d7	f1		.
l46d8h:
	out (c),a		;46d8	ed 79		. y
	dec d			;46da	15		.
	jr nz,l46d8h		;46db	20 fb		  .
	djnz l46d8h		;46dd	10 f9		. .
	pop de			;46df	d1		.
	ret			;46e0	c9		.
l46e1h:
	push bc			;46e1	c5		.
	push af			;46e2	f5		.
	xor a			;46e3	af		.
	call sub_46f0h		;46e4	cd f0 46	. . F
	ld a,(00007h)		;46e7	3a 07 00	: . .
	ld c,a			;46ea	4f		O
	pop af			;46eb	f1		.
	out (c),a		;46ec	ed 79		. y
	pop bc			;46ee	c1		.
	ret			;46ef	c9		.
sub_46f0h:
	push bc			;46f0	c5		.
	push af			;46f1	f5		.
	ld a,(00007h)		;46f2	3a 07 00	: . .
	inc a			;46f5	3c		<
	ld c,a			;46f6	4f		O
	pop af			;46f7	f1		.
	rrca			;46f8	0f		.
	ld a,h			;46f9	7c		|
	rla			;46fa	17		.
	rla			;46fb	17		.
	rla			;46fc	17		.
	and 007h		;46fd	e6 07		. .
	di			;46ff	f3		.
	out (c),a		;4700	ed 79		. y
	ld a,08eh		;4702	3e 8e		> .
	out (c),a		;4704	ed 79		. y
	ld a,l			;4706	7d		}
	out (c),a		;4707	ed 79		. y
	ld a,h			;4709	7c		|
	and 03fh		;470a	e6 3f		. ?
	or 040h			;470c	f6 40		. @
	out (c),a		;470e	ed 79		. y
	pop bc			;4710	c1		.
	ei			;4711	fb		.
	ret			;4712	c9		.
	ld a,c			;4713	79		y
	ex af,af'		;4714	08		.
	ld a,(00007h)		;4715	3a 07 00	: . .
	inc a			;4718	3c		<
	ld c,a			;4719	4f		O
	ld a,b			;471a	78		x
	di			;471b	f3		.
	out (c),a		;471c	ed 79		. y
	ex af,af'		;471e	08		.
	or 080h			;471f	f6 80		. .
	ei			;4721	fb		.
	out (c),a		;4722	ed 79		. y
	ret			;4724	c9		.
	call sub_4758h		;4725	cd 58 47	. X G
	call sub_474bh		;4728	cd 4b 47	. K G
	ld hl,00000h		;472b	21 00 00	! . .
	ld bc,00000h		;472e	01 00 00	. . .
	xor a			;4731	af		.
	ld d,000h		;4732	16 00		. .
	call sub_47fch		;4734	cd fc 47	. . G
	ld b,000h		;4737	06 00		. .
	ld c,017h		;4739	0e 17		. .
	call 00047h		;473b	cd 47 00	. G .
sub_473eh:
	ld a,(0f3e0h)		;473e	3a e0 f3	: . .
	or 040h			;4741	f6 40		. @
	ld b,a			;4743	47		G
	ld c,001h		;4744	0e 01		. .
	call 00047h		;4746	cd 47 00	. G .
	ret			;4749	c9		.
	ret			;474a	c9		.
sub_474bh:
	ld a,(0f3e0h)		;474b	3a e0 f3	: . .
	and 0bfh		;474e	e6 bf		. .
	ld b,a			;4750	47		G
	ld c,001h		;4751	0e 01		. .
	call 00047h		;4753	cd 47 00	. G .
	jr l4760h		;4756	18 08		. .
sub_4758h:
	ld hl,0f600h		;4758	21 00 f6	! . .
	ld a,0d8h		;475b	3e d8		> .
	jp l46e1h		;475d	c3 e1 46	. . F
l4760h:
	ld a,(0ffe7h)		;4760	3a e7 ff	: . .
	or 002h			;4763	f6 02		. .
	ld b,a			;4765	47		G
	ld c,008h		;4766	0e 08		. .
	jp 00047h		;4768	c3 47 00	. G .
	ld a,(0ffe7h)		;476b	3a e7 ff	: . .
	and 0fdh		;476e	e6 fd		. .
	ld b,a			;4770	47		G
	ld c,008h		;4771	0e 08		. .
	jp 00047h		;4773	c3 47 00	. G .
sub_4776h:
	push bc			;4776	c5		.
	push hl			;4777	e5		.
	ld b,a			;4778	47		G
	ld a,(00007h)		;4779	3a 07 00	: . .
	inc a			;477c	3c		<
	ld c,a			;477d	4f		O
	di			;477e	f3		.
	out (c),b		;477f	ed 41		. A
	ld a,090h		;4781	3e 90		> .
	out (c),a		;4783	ed 79		. y
	inc c			;4785	0c		.
	out (c),d		;4786	ed 51		. Q
	push af			;4788	f5		.
	pop af			;4789	f1		.
	out (c),e		;478a	ed 59		. Y
	pop hl			;478c	e1		.
	pop bc			;478d	c1		.
	ei			;478e	fb		.
	ret			;478f	c9		.
sub_4790h:
	ld hl,l47a4h		;4790	21 a4 47	! . G
	ld b,010h		;4793	06 10		. .
	ld a,000h		;4795	3e 00		> .
l4797h:
	ld d,(hl)		;4797	56		V
	inc hl			;4798	23		#
	ld e,(hl)		;4799	5e		^
	inc hl			;479a	23		#
	push af			;479b	f5		.
	call sub_4776h		;479c	cd 76 47	. v G
	pop af			;479f	f1		.
	inc a			;47a0	3c		<
	djnz l4797h		;47a1	10 f4		. .
	ret			;47a3	c9		.
l47a4h:
	nop			;47a4	00		.
	nop			;47a5	00		.
	nop			;47a6	00		.
	nop			;47a7	00		.
	ld de,03306h		;47a8	11 06 33	. . 3
	rlca			;47ab	07		.
	rla			;47ac	17		.
	ld bc,00327h		;47ad	01 27 03	. ' .
	ld d,c			;47b0	51		Q
	ld bc,00627h		;47b1	01 27 06	. ' .
	ld (hl),c		;47b4	71		q
	ld bc,00373h		;47b5	01 73 03	. s .
	ld h,c			;47b8	61		a
	ld b,064h		;47b9	06 64		. d
	ld b,011h		;47bb	06 11		. .
	inc b			;47bd	04		.
	ld h,l			;47be	65		e
	ld (bc),a		;47bf	02		.
	ld d,l			;47c0	55		U
	dec b			;47c1	05		.
	ld (hl),a		;47c2	77		w
	rlca			;47c3	07		.
l47c4h:
	ld a,(hl)		;47c4	7e		~
	inc hl			;47c5	23		#
	inc a			;47c6	3c		<
	ret z			;47c7	c8		.
	dec a			;47c8	3d		=
	ld d,(hl)		;47c9	56		V
	inc hl			;47ca	23		#
	ld e,(hl)		;47cb	5e		^
	inc hl			;47cc	23		#
	call sub_4776h		;47cd	cd 76 47	. v G
	jr l47c4h		;47d0	18 f2		. .
l47d2h:
	ld a,002h		;47d2	3e 02		> .
	call sub_47dch		;47d4	cd dc 47	. . G
	rra			;47d7	1f		.
	jp c,l47d2h		;47d8	da d2 47	. . G
	ret			;47db	c9		.
sub_47dch:
	push bc			;47dc	c5		.
	push hl			;47dd	e5		.
	ld hl,(00006h)		;47de	2a 06 00	* . .
	inc h			;47e1	24		$
	inc l			;47e2	2c		,
	ld c,h			;47e3	4c		L
	di			;47e4	f3		.
	out (c),a		;47e5	ed 79		. y
	ld a,08fh		;47e7	3e 8f		> .
	out (c),a		;47e9	ed 79		. y
	ld c,l			;47eb	4d		M
	in a,(c)		;47ec	ed 78		. x
	push af			;47ee	f5		.
	xor a			;47ef	af		.
	ld c,h			;47f0	4c		L
	out (c),a		;47f1	ed 79		. y
	ld a,08fh		;47f3	3e 8f		> .
	out (c),a		;47f5	ed 79		. y
	pop af			;47f7	f1		.
	pop hl			;47f8	e1		.
	pop bc			;47f9	c1		.
	ei			;47fa	fb		.
	ret			;47fb	c9		.
sub_47fch:
	ex af,af'		;47fc	08		.
	call l47d2h		;47fd	cd d2 47	. . G
	push bc			;4800	c5		.
	ld a,(00007h)		;4801	3a 07 00	: . .
	inc a			;4804	3c		<
	ld c,a			;4805	4f		O
	ld a,024h		;4806	3e 24		> $
	di			;4808	f3		.
	out (c),a		;4809	ed 79		. y
	ld a,091h		;480b	3e 91		> .
	out (c),a		;480d	ed 79		. y
	inc c			;480f	0c		.
	inc c			;4810	0c		.
	out (c),h		;4811	ed 61		. a
	xor a			;4813	af		.
	out (c),a		;4814	ed 79		. y
	out (c),l		;4816	ed 69		. i
	out (c),d		;4818	ed 51		. Q
	pop hl			;481a	e1		.
	out (c),h		;481b	ed 61		. a
	cp h			;481d	bc		.
	jr nz,l4821h		;481e	20 01		  .
	inc a			;4820	3c		<
l4821h:
	out (c),a		;4821	ed 79		. y
	xor a			;4823	af		.
	out (c),l		;4824	ed 69		. i
	cp l			;4826	bd		.
	jr nz,l482ah		;4827	20 01		  .
	inc a			;4829	3c		<
l482ah:
	out (c),a		;482a	ed 79		. y
	ex af,af'		;482c	08		.
	out (c),a		;482d	ed 79		. y
	xor a			;482f	af		.
	out (c),a		;4830	ed 79		. y
	ld a,0c0h		;4832	3e c0		> .
	out (c),a		;4834	ed 79		. y
	ei			;4836	fb		.
	ret			;4837	c9		.
sub_4838h:
	ex af,af'		;4838	08		.
	call l47d2h		;4839	cd d2 47	. . G
	push bc			;483c	c5		.
	ld a,(00007h)		;483d	3a 07 00	: . .
	inc a			;4840	3c		<
	ld c,a			;4841	4f		O
	ld a,020h		;4842	3e 20		>  
	di			;4844	f3		.
	out (c),a		;4845	ed 79		. y
	ld a,091h		;4847	3e 91		> .
	out (c),a		;4849	ed 79		. y
	inc c			;484b	0c		.
	inc c			;484c	0c		.
	out (c),h		;484d	ed 61		. a
	xor a			;484f	af		.
	out (c),a		;4850	ed 79		. y
	out (c),l		;4852	ed 69		. i
	ex af,af'		;4854	08		.
	ld l,a			;4855	6f		o
	and 003h		;4856	e6 03		. .
	out (c),a		;4858	ed 79		. y
	out (c),d		;485a	ed 51		. Q
	xor a			;485c	af		.
	out (c),a		;485d	ed 79		. y
	out (c),e		;485f	ed 59		. Y
	ld a,l			;4861	7d		}
	rra			;4862	1f		.
	rra			;4863	1f		.
	and 003h		;4864	e6 03		. .
	out (c),a		;4866	ed 79		. y
	pop hl			;4868	e1		.
	out (c),h		;4869	ed 61		. a
	xor a			;486b	af		.
	out (c),a		;486c	ed 79		. y
	out (c),l		;486e	ed 69		. i
	out (c),a		;4870	ed 79		. y
	out (c),a		;4872	ed 79		. y
	out (c),a		;4874	ed 79		. y
	ld a,0d0h		;4876	3e d0		> .
	out (c),a		;4878	ed 79		. y
	ei			;487a	fb		.
	ret			;487b	c9		.
sub_487ch:
	ex af,af'		;487c	08		.
	call l47d2h		;487d	cd d2 47	. . G
	push bc			;4880	c5		.
	ld a,(00007h)		;4881	3a 07 00	: . .
	inc a			;4884	3c		<
	ld c,a			;4885	4f		O
	ld a,020h		;4886	3e 20		>  
	di			;4888	f3		.
	out (c),a		;4889	ed 79		. y
	ld a,091h		;488b	3e 91		> .
	out (c),a		;488d	ed 79		. y
	inc c			;488f	0c		.
	inc c			;4890	0c		.
	out (c),h		;4891	ed 61		. a
	xor a			;4893	af		.
	out (c),a		;4894	ed 79		. y
	out (c),l		;4896	ed 69		. i
	ex af,af'		;4898	08		.
	rlca			;4899	07		.
	rlca			;489a	07		.
	ld l,a			;489b	6f		o
	and 003h		;489c	e6 03		. .
	out (c),a		;489e	ed 79		. y
	out (c),d		;48a0	ed 51		. Q
	xor a			;48a2	af		.
	out (c),a		;48a3	ed 79		. y
	out (c),e		;48a5	ed 59		. Y
	ld a,l			;48a7	7d		}
	ld e,a			;48a8	5f		_
	rlca			;48a9	07		.
	rlca			;48aa	07		.
	and 003h		;48ab	e6 03		. .
	out (c),a		;48ad	ed 79		. y
	pop hl			;48af	e1		.
	out (c),h		;48b0	ed 61		. a
	xor a			;48b2	af		.
	out (c),a		;48b3	ed 79		. y
	out (c),l		;48b5	ed 69		. i
	out (c),a		;48b7	ed 79		. y
	out (c),a		;48b9	ed 79		. y
	out (c),a		;48bb	ed 79		. y
	ld a,e			;48bd	7b		{
	rra			;48be	1f		.
	rra			;48bf	1f		.
	and 00fh		;48c0	e6 0f		. .
	or 090h			;48c2	f6 90		. .
	out (c),a		;48c4	ed 79		. y
	ei			;48c6	fb		.
	ret			;48c7	c9		.
	ld (0faf5h),a		;48c8	32 f5 fa	2 . .
	ld d,a			;48cb	57		W
	add a,a			;48cc	87		.
	ld l,a			;48cd	6f		o
	add a,a			;48ce	87		.
	add a,a			;48cf	87		.
	add a,a			;48d0	87		.
	ld e,a			;48d1	5f		_
	add a,a			;48d2	87		.
	ld h,a			;48d3	67		g
	ld a,(0f3e1h)		;48d4	3a e1 f3	: . .
	and 01fh		;48d7	e6 1f		. .
	or h			;48d9	b4		.
	ld b,a			;48da	47		G
	ld c,002h		;48db	0e 02		. .
	call 00047h		;48dd	cd 47 00	. G .
	ld a,(0ffe9h)		;48e0	3a e9 ff	: . .
	and 001h		;48e3	e6 01		. .
	or l			;48e5	b5		.
	ld b,a			;48e6	47		G
	ld c,00ah		;48e7	0e 0a		. .
	call 00047h		;48e9	cd 47 00	. G .
	ld a,(0f3e3h)		;48ec	3a e3 f3	: . .
	and 00fh		;48ef	e6 0f		. .
	or e			;48f1	b3		.
	ld b,a			;48f2	47		G
	ld c,004h		;48f3	0e 04		. .
	call 00047h		;48f5	cd 47 00	. G .
	ld b,d			;48f8	42		B
	ld c,00bh		;48f9	0e 0b		. .
	call 00047h		;48fb	cd 47 00	. G .
	ld a,(0f3e5h)		;48fe	3a e5 f3	: . .
	and 00fh		;4901	e6 0f		. .
	or e			;4903	b3		.
	ld b,a			;4904	47		G
	ld c,006h		;4905	0e 06		. .
	call 00047h		;4907	cd 47 00	. G .
	ret			;490a	c9		.
sub_490bh:
	push de			;490b	d5		.
	ld b,008h		;490c	06 08		. .
l490eh:
	push bc			;490e	c5		.
	ld bc,00004h		;490f	01 04 00	. . .
	xor a			;4912	af		.
	call l46abh+1		;4913	cd ac 46	. . F
	ex de,hl		;4916	eb		.
	ld bc,00080h		;4917	01 80 00	. . .
	add hl,bc		;491a	09		.
	ex de,hl		;491b	eb		.
	pop bc			;491c	c1		.
	djnz l490eh		;491d	10 ef		. .
	pop de			;491f	d1		.
	ret			;4920	c9		.
	push de			;4921	d5		.
l4922h:
	push bc			;4922	c5		.
	ld b,000h		;4923	06 00		. .
	call sub_4933h		;4925	cd 33 49	. 3 I
	ex de,hl		;4928	eb		.
	ld bc,00080h		;4929	01 80 00	. . .
	add hl,bc		;492c	09		.
	ex de,hl		;492d	eb		.
	pop bc			;492e	c1		.
	djnz l4922h		;492f	10 f1		. .
	pop de			;4931	d1		.
	ret			;4932	c9		.
sub_4933h:
	ld a,(0c91bh)		;4933	3a 1b c9	: . .
	or a			;4936	b7		.
	jp z,l46abh+1		;4937	ca ac 46	. . F
	jp l46abh		;493a	c3 ab 46	. . F
l493dh:
	push bc			;493d	c5		.
	call sub_490bh		;493e	cd 0b 49	. . I
	ld a,004h		;4941	3e 04		> .
	add a,e			;4943	83		.
	cp 080h			;4944	fe 80		. .
	jr nz,l494dh		;4946	20 05		  .
	ld a,004h		;4948	3e 04		> .
	add a,d			;494a	82		.
	ld d,a			;494b	57		W
	xor a			;494c	af		.
l494dh:
	ld e,a			;494d	5f		_
	pop bc			;494e	c1		.
	djnz l493dh		;494f	10 ec		. .
	ret			;4951	c9		.
	push de			;4952	d5		.
	ld b,010h		;4953	06 10		. .
l4955h:
	push bc			;4955	c5		.
	ld bc,00008h		;4956	01 08 00	. . .
	call l46abh+1		;4959	cd ac 46	. . F
	ex de,hl		;495c	eb		.
	ld bc,00080h		;495d	01 80 00	. . .
	add hl,bc		;4960	09		.
	ex de,hl		;4961	eb		.
	pop bc			;4962	c1		.
	djnz l4955h		;4963	10 f0		. .
	pop de			;4965	d1		.
	ret			;4966	c9		.
l4967h:
	ld c,0ffh		;4967	0e ff		. .
	jr l496dh		;4969	18 02		. .
	ld c,000h		;496b	0e 00		. .
l496dh:
	ld d,(hl)		;496d	56		V
	inc hl			;496e	23		#
	ld e,(hl)		;496f	5e		^
	inc hl			;4970	23		#
l4971h:
	ld a,(hl)		;4971	7e		~
	inc hl			;4972	23		#
	ld b,a			;4973	47		G
	inc b			;4974	04		.
	ret z			;4975	c8		.
	inc b			;4976	04		.
	jr z,l4967h		;4977	28 ee		( .
	and c			;4979	a1		.
	call sub_4983h		;497a	cd 83 49	. . I
	ld a,d			;497d	7a		z
	add a,008h		;497e	c6 08		. .
	ld d,a			;4980	57		W
	jr l4971h		;4981	18 ee		. .
sub_4983h:
	push bc			;4983	c5		.
	push hl			;4984	e5		.
	push de			;4985	d5		.
	call sub_49cbh		;4986	cd cb 49	. . I
	ld bc,00808h		;4989	01 08 08	. . .
	ld a,001h		;498c	3e 01		> .
	call sub_4838h		;498e	cd 38 48	. 8 H
	pop de			;4991	d1		.
	pop hl			;4992	e1		.
	pop bc			;4993	c1		.
	ret			;4994	c9		.
	push bc			;4995	c5		.
	push hl			;4996	e5		.
	push de			;4997	d5		.
	call sub_49cbh		;4998	cd cb 49	. . I
	ld bc,00808h		;499b	01 08 08	. . .
	ld a,001h		;499e	3e 01		> .
	call sub_4838h		;49a0	cd 38 48	. 8 H
	pop de			;49a3	d1		.
	pop hl			;49a4	e1		.
	pop bc			;49a5	c1		.
	ret			;49a6	c9		.
	push bc			;49a7	c5		.
	push hl			;49a8	e5		.
	push de			;49a9	d5		.
	call sub_49cbh		;49aa	cd cb 49	. . I
	ld bc,00808h		;49ad	01 08 08	. . .
	ld a,048h		;49b0	3e 48		> H
	call sub_487ch		;49b2	cd 7c 48	. | H
	pop de			;49b5	d1		.
	pop hl			;49b6	e1		.
	pop bc			;49b7	c1		.
	ret			;49b8	c9		.
	push bc			;49b9	c5		.
	push hl			;49ba	e5		.
	push de			;49bb	d5		.
	call sub_49cbh		;49bc	cd cb 49	. . I
	ld bc,00808h		;49bf	01 08 08	. . .
	ld a,005h		;49c2	3e 05		> .
	call sub_4838h		;49c4	cd 38 48	. 8 H
	pop de			;49c7	d1		.
	pop hl			;49c8	e1		.
	pop bc			;49c9	c1		.
	ret			;49ca	c9		.
sub_49cbh:
	ld b,a			;49cb	47		G
	and 01fh		;49cc	e6 1f		. .
	add a,a			;49ce	87		.
	add a,a			;49cf	87		.
	add a,a			;49d0	87		.
	ld h,a			;49d1	67		g
	ld a,b			;49d2	78		x
	and 0e0h		;49d3	e6 e0		. .
	rrca			;49d5	0f		.
	rrca			;49d6	0f		.
	ld l,a			;49d7	6f		o
	ret			;49d8	c9		.
	ld a,d			;49d9	7a		z
	add a,008h		;49da	c6 08		. .
	ld d,a			;49dc	57		W
	ret nz			;49dd	c0		.
	ld a,e			;49de	7b		{
	add a,008h		;49df	c6 08		. .
	ld e,a			;49e1	5f		_
	ret			;49e2	c9		.
sub_49e3h:
	call sub_4bc8h		;49e3	cd c8 4b	. . K
	ld a,0b8h		;49e6	3e b8		> .
	call 06000h		;49e8	cd 00 60	. . `
	call sub_4b95h		;49eb	cd 95 4b	. . K
	ld a,055h		;49ee	3e 55		> U
	call sub_4af5h		;49f0	cd f5 4a	. . J
	ld a,00fh		;49f3	3e 0f		> .
	ld (0f3ebh),a		;49f5	32 eb f3	2 . .
	ld hl,l4a30h		;49f8	21 30 4a	! 0 J
	call sub_4a1dh		;49fb	cd 1d 4a	. . J
	call sub_4790h		;49fe	cd 90 47	. . G
	call l4760h		;4a01	cd 60 47	. ` G
	xor a			;4a04	af		.
	ld h,a			;4a05	67		g
	ld l,a			;4a06	6f		o
	ld b,a			;4a07	47		G
	ld c,a			;4a08	4f		O
	ld d,a			;4a09	57		W
	call sub_47fch		;4a0a	cd fc 47	. . G
	xor a			;4a0d	af		.
	ld h,a			;4a0e	67		g
	ld l,a			;4a0f	6f		o
	ld b,a			;4a10	47		G
	ld c,a			;4a11	4f		O
	ld d,001h		;4a12	16 01		. .
	call sub_47fch		;4a14	cd fc 47	. . G
	call sub_473eh		;4a17	cd 3e 47	. > G
	jp l4760h		;4a1a	c3 60 47	. ` G
sub_4a1dh:
	ld b,(hl)		;4a1d	46		F
	inc hl			;4a1e	23		#
	call l47d2h		;4a1f	cd d2 47	. . G
l4a22h:
	push bc			;4a22	c5		.
	ld c,(hl)		;4a23	4e		N
	inc hl			;4a24	23		#
	ld b,(hl)		;4a25	46		F
	inc hl			;4a26	23		#
	push hl			;4a27	e5		.
	call 00047h		;4a28	cd 47 00	. G .
	pop hl			;4a2b	e1		.
	pop bc			;4a2c	c1		.
	djnz l4a22h		;4a2d	10 f3		. .
	ret			;4a2f	c9		.
l4a30h:
	add hl,bc		;4a30	09		.
	nop			;4a31	00		.
	ld b,001h		;4a32	06 01		. .
	ld (01f02h),hl		;4a34	22 02 1f	" . .
	dec b			;4a37	05		.
	rst 28h			;4a38	ef		.
	ld b,01fh		;4a39	06 1f		. .
	rlca			;4a3b	07		.
	rrca			;4a3c	0f		.
	ex af,af'		;4a3d	08		.
	ex af,af'		;4a3e	08		.
	add hl,bc		;4a3f	09		.
	add a,b			;4a40	80		.
	dec bc			;4a41	0b		.
	ld bc,00007h		;4a42	01 07 00	. . .
	inc b			;4a45	04		.
	ld bc,00262h		;4a46	01 62 02	. b .
	ld c,003h		;4a49	0e 03		. .
	ld a,a			;4a4b	7f		.
	inc b			;4a4c	04		.
	inc bc			;4a4d	03		.
	rlca			;4a4e	07		.
	rrca			;4a4f	0f		.
	ld a,(bc)		;4a50	0a		.
	ld bc,08ccdh		;4a51	01 cd 8c	. . .
	ld c,d			;4a54	4a		J
	call sub_4a60h		;4a55	cd 60 4a	. ` J
sub_4a58h:
	call sub_4ac8h		;4a58	cd c8 4a	. . J
	ld hl,0c90dh		;4a5b	21 0d c9	! . .
	jr l4a63h		;4a5e	18 03		. .
sub_4a60h:
	ld hl,0c908h		;4a60	21 08 c9	! . .
l4a63h:
	ld c,(hl)		;4a63	4e		N
	ld (hl),a		;4a64	77		w
	xor c			;4a65	a9		.
	and (hl)		;4a66	a6		.
	dec hl			;4a67	2b		+
	ld (hl),a		;4a68	77		w
	ret			;4a69	c9		.
sub_4a6ah:
	call sub_4a8ch		;4a6a	cd 8c 4a	. . J
	ld hl,0c909h		;4a6d	21 09 c9	! . .
	ld c,(hl)		;4a70	4e		N
	ld (hl),a		;4a71	77		w
	xor c			;4a72	a9		.
	and (hl)		;4a73	a6		.
	inc hl			;4a74	23		#
	ld (hl),a		;4a75	77		w
	inc hl			;4a76	23		#
	or (hl)			;4a77	b6		.
	ld (hl),a		;4a78	77		w
	ret			;4a79	c9		.
sub_4a7ah:
	di			;4a7a	f3		.
	ld a,(0c909h)		;4a7b	3a 09 c9	: . .
	ld (0c908h),a		;4a7e	32 08 c9	2 . .
	ld hl,0c90bh		;4a81	21 0b c9	! . .
	ld a,(hl)		;4a84	7e		~
	ld (hl),000h		;4a85	36 00		6 .
	ld (0c907h),a		;4a87	32 07 c9	2 . .
	ei			;4a8a	fb		.
	ret			;4a8b	c9		.
sub_4a8ch:
	ld e,08fh		;4a8c	1e 8f		. .
	ld a,00fh		;4a8e	3e 0f		> .
	call 00093h		;4a90	cd 93 00	. . .
	ld a,00eh		;4a93	3e 0e		> .
	di			;4a95	f3		.
	call 00096h		;4a96	cd 96 00	. . .
	ei			;4a99	fb		.
	cpl			;4a9a	2f		/
	and 03fh		;4a9b	e6 3f		. ?
	push af			;4a9d	f5		.
	ld a,004h		;4a9e	3e 04		> .
	call 00141h		;4aa0	cd 41 01	. A .
	cpl			;4aa3	2f		/
	and 00ch		;4aa4	e6 0c		. .
	jr z,l4aaah		;4aa6	28 02		( .
	ld a,020h		;4aa8	3e 20		>  
l4aaah:
	ld e,a			;4aaa	5f		_
	ld a,008h		;4aab	3e 08		> .
	call 00141h		;4aad	cd 41 01	. A .
	cpl			;4ab0	2f		/
	rrca			;4ab1	0f		.
	rrca			;4ab2	0f		.
	ld b,a			;4ab3	47		G
	and 004h		;4ab4	e6 04		. .
	or e			;4ab6	b3		.
	ld c,a			;4ab7	4f		O
	ld a,b			;4ab8	78		x
	rrca			;4ab9	0f		.
	rrca			;4aba	0f		.
	ld b,a			;4abb	47		G
	and 018h		;4abc	e6 18		. .
	or c			;4abe	b1		.
	ld c,a			;4abf	4f		O
	ld a,b			;4ac0	78		x
	rrca			;4ac1	0f		.
	and 003h		;4ac2	e6 03		. .
	or c			;4ac4	b1		.
	pop bc			;4ac5	c1		.
	or b			;4ac6	b0		.
	ret			;4ac7	c9		.
sub_4ac8h:
	ld a,006h		;4ac8	3e 06		> .
	call 00141h		;4aca	cd 41 01	. A .
	cpl			;4acd	2f		/
	and 0e0h		;4ace	e6 e0		. .
	ld e,a			;4ad0	5f		_
	ld a,007h		;4ad1	3e 07		> .
	call 00141h		;4ad3	cd 41 01	. A .
	cpl			;4ad6	2f		/
	and 003h		;4ad7	e6 03		. .
	or e			;4ad9	b3		.
	rlca			;4ada	07		.
	rlca			;4adb	07		.
	rlca			;4adc	07		.
	and 01fh		;4add	e6 1f		. .
	ret			;4adf	c9		.
l4ae0h:
	ret			;4ae0	c9		.
	ret			;4ae1	c9		.
l4ae2h:
	dec sp			;4ae2	3b		;
	inc a			;4ae3	3c		<
	dec a			;4ae4	3d		=
	ld a,03fh		;4ae5	3e 3f		> ?
	ld b,b			;4ae7	40		@
	ld b,c			;4ae8	41		A
	ld b,e			;4ae9	43		C
	ld a,(00ec5h)		;4aea	3a c5 0e	: . .
	rra			;4aed	1f		.
	jr l4af8h		;4aee	18 08		. .
l4af0h:
	push bc			;4af0	c5		.
	ld c,017h		;4af1	0e 17		. .
	jr l4af8h		;4af3	18 03		. .
sub_4af5h:
	push bc			;4af5	c5		.
	ld c,017h		;4af6	0e 17		. .
l4af8h:
	di			;4af8	f3		.
	ld b,a			;4af9	47		G
	push hl			;4afa	e5		.
	push de			;4afb	d5		.
	ld hl,0c947h		;4afc	21 47 c9	! G .
	bit 0,(hl)		;4aff	cb 46		. F
	jp nz,l4b2bh		;4b01	c2 2b 4b	. + K
	ld hl,0c882h		;4b04	21 82 c8	! . .
	ld a,(hl)		;4b07	7e		~
	inc hl			;4b08	23		#
	cp c			;4b09	b9		.
	jr nc,l4b2bh		;4b0a	30 1f		0 .
	or a			;4b0c	b7		.
	jr z,l4b25h		;4b0d	28 16		( .
	ld c,a			;4b0f	4f		O
	ld a,b			;4b10	78		x
	ld b,000h		;4b11	06 00		. .
	cpir			;4b13	ed b1		. .
	jr nz,l4b26h		;4b15	20 0f		  .
	ex af,af'		;4b17	08		.
	ld a,c			;4b18	79		y
	or a			;4b19	b7		.
	jr z,l4b2bh		;4b1a	28 0f		( .
	ex af,af'		;4b1c	08		.
	ld d,h			;4b1d	54		T
	ld e,l			;4b1e	5d		]
	dec de			;4b1f	1b		.
	ldir			;4b20	ed b0		. .
	ld (de),a		;4b22	12		.
	jr l4b2bh		;4b23	18 06		. .
l4b25h:
	ld a,b			;4b25	78		x
l4b26h:
	ld (hl),a		;4b26	77		w
	ld hl,0c882h		;4b27	21 82 c8	! . .
	inc (hl)		;4b2a	34		4
l4b2bh:
	pop de			;4b2b	d1		.
	pop hl			;4b2c	e1		.
	pop bc			;4b2d	c1		.
	ei			;4b2e	fb		.
	ret			;4b2f	c9		.
	di			;4b30	f3		.
sub_4b31h:
	ld hl,0c906h		;4b31	21 06 c9	! . .
	ld (hl),001h		;4b34	36 01		6 .
	call sub_4bc8h		;4b36	cd c8 4b	. . K
	ld hl,0c942h		;4b39	21 42 c9	! B .
	ld (hl),000h		;4b3c	36 00		6 .
	call sub_4b5bh		;4b3e	cd 5b 4b	. [ K
	call 06006h		;4b41	cd 06 60	. . `
	ld hl,0c906h		;4b44	21 06 c9	! . .
	ld (hl),000h		;4b47	36 00		6 .
	ret			;4b49	c9		.
sub_4b4ah:
	call sub_4bc8h		;4b4a	cd c8 4b	. . K
	ld hl,0c942h		;4b4d	21 42 c9	! B .
	ld a,(hl)		;4b50	7e		~
	or a			;4b51	b7		.
	ld (hl),000h		;4b52	36 00		6 .
	call nz,sub_4b5bh	;4b54	c4 5b 4b	. [ K
	call 06006h		;4b57	cd 06 60	. . `
	ret			;4b5a	c9		.
sub_4b5bh:
	ld hl,0c882h		;4b5b	21 82 c8	! . .
	ld b,020h		;4b5e	06 20		.  
	ld a,(hl)		;4b60	7e		~
	or a			;4b61	b7		.
	ret z			;4b62	c8		.
l4b63h:
	inc hl			;4b63	23		#
	ld a,(hl)		;4b64	7e		~
	or a			;4b65	b7		.
	push bc			;4b66	c5		.
	push hl			;4b67	e5		.
	call nz,06003h		;4b68	c4 03 60	. . `
	pop hl			;4b6b	e1		.
	pop bc			;4b6c	c1		.
	djnz l4b63h		;4b6d	10 f4		. .
	ld hl,0c882h		;4b6f	21 82 c8	! . .
	ld bc,00020h		;4b72	01 20 00	.   .
	jp l4648h		;4b75	c3 48 46	. H F
sub_4b78h:
	di			;4b78	f3		.
	ld hl,0c940h		;4b79	21 40 c9	! @ .
	ld bc,000bfh		;4b7c	01 bf 00	. . .
	call l4648h		;4b7f	cd 48 46	. H F
	ld a,(0f3dfh)		;4b82	3a df f3	: . .
	res 4,a			;4b85	cb a7		. .
	ld b,a			;4b87	47		G
	ld c,000h		;4b88	0e 00		. .
	call 00047h		;4b8a	cd 47 00	. G .
	ei			;4b8d	fb		.
	ret			;4b8e	c9		.
	ld a,001h		;4b8f	3e 01		> .
	ld (0c940h),a		;4b91	32 40 c9	2 @ .
	ret			;4b94	c9		.
sub_4b95h:
	ld a,001h		;4b95	3e 01		> .
	jr l4b9bh		;4b97	18 02		. .
sub_4b99h:
	ld a,004h		;4b99	3e 04		> .
l4b9bh:
	ld (0f0f1h),a		;4b9b	32 f1 f0	2 . .
	ld (07000h),a		;4b9e	32 00 70	2 . p
	inc a			;4ba1	3c		<
	ld (0f0f2h),a		;4ba2	32 f2 f0	2 . .
	ld (09000h),a		;4ba5	32 00 90	2 . .
	inc a			;4ba8	3c		<
	ld (0f0f3h),a		;4ba9	32 f3 f0	2 . .
	ld (0b000h),a		;4bac	32 00 b0	2 . .
	ret			;4baf	c9		.
sub_4bb0h:
	ld a,004h		;4bb0	3e 04		> .
	ld (0f0f1h),a		;4bb2	32 f1 f0	2 . .
	ld (07000h),a		;4bb5	32 00 70	2 . p
	ld a,007h		;4bb8	3e 07		> .
	ld (0f0f2h),a		;4bba	32 f2 f0	2 . .
	ld (09000h),a		;4bbd	32 00 90	2 . .
	inc a			;4bc0	3c		<
	ld (0f0f3h),a		;4bc1	32 f3 f0	2 . .
	ld (0b000h),a		;4bc4	32 00 b0	2 . .
	ret			;4bc7	c9		.
sub_4bc8h:
	ld a,01ch		;4bc8	3e 1c		> .
	ld (0f0f1h),a		;4bca	32 f1 f0	2 . .
	ld (07000h),a		;4bcd	32 00 70	2 . p
	inc a			;4bd0	3c		<
	ld (0f0f2h),a		;4bd1	32 f2 f0	2 . .
	ld (09000h),a		;4bd4	32 00 90	2 . .
	inc a			;4bd7	3c		<
	ld (0f0f3h),a		;4bd8	32 f3 f0	2 . .
	ld (0b000h),a		;4bdb	32 00 b0	2 . .
	ret			;4bde	c9		.
sub_4bdfh:
	ld a,009h		;4bdf	3e 09		> .
	ld (0f0f1h),a		;4be1	32 f1 f0	2 . .
	ld (07000h),a		;4be4	32 00 70	2 . p
	inc a			;4be7	3c		<
	ld (0f0f2h),a		;4be8	32 f2 f0	2 . .
	ld (09000h),a		;4beb	32 00 90	2 . .
	ret			;4bee	c9		.
sub_4befh:
	ld a,004h		;4bef	3e 04		> .
	ld (0f0f1h),a		;4bf1	32 f1 f0	2 . .
	ld (07000h),a		;4bf4	32 00 70	2 . p
	ld a,002h		;4bf7	3e 02		> .
	ld (0f0f2h),a		;4bf9	32 f2 f0	2 . .
	ld (09000h),a		;4bfc	32 00 90	2 . .
	inc a			;4bff	3c		<
	ld (0f0f3h),a		;4c00	32 f3 f0	2 . .
	ld (0b000h),a		;4c03	32 00 b0	2 . .
	ret			;4c06	c9		.
	ld (0f0f1h),a		;4c07	32 f1 f0	2 . .
	ld (07000h),a		;4c0a	32 00 70	2 . p
	ret			;4c0d	c9		.
	ld (0f0f1h),a		;4c0e	32 f1 f0	2 . .
	ld (07000h),a		;4c11	32 00 70	2 . p
	inc a			;4c14	3c		<
	ld (0f0f2h),a		;4c15	32 f2 f0	2 . .
	ld (09000h),a		;4c18	32 00 90	2 . .
	ret			;4c1b	c9		.
	ld (0f0f2h),a		;4c1c	32 f2 f0	2 . .
	ld (09000h),a		;4c1f	32 00 90	2 . .
	inc a			;4c22	3c		<
	ld (0f0f3h),a		;4c23	32 f3 f0	2 . .
	ld (0b000h),a		;4c26	32 00 b0	2 . .
	ret			;4c29	c9		.
	exx			;4c2a	d9		.
	ex af,af'		;4c2b	08		.
	pop de			;4c2c	d1		.
	ld hl,00005h		;4c2d	21 05 00	! . .
	add hl,de		;4c30	19		.
	push hl			;4c31	e5		.
	ld a,(0f0f1h)		;4c32	3a f1 f0	: . .
	push af			;4c35	f5		.
	ld bc,(0f0f2h)		;4c36	ed 4b f2 f0	. K . .
	push bc			;4c3a	c5		.
	ex de,hl		;4c3b	eb		.
	di			;4c3c	f3		.
	ld a,(hl)		;4c3d	7e		~
	inc hl			;4c3e	23		#
	ld (0f0f1h),a		;4c3f	32 f1 f0	2 . .
	ld c,(hl)		;4c42	4e		N
	inc hl			;4c43	23		#
	ld b,(hl)		;4c44	46		F
	inc hl			;4c45	23		#
	ld (0f0f2h),bc		;4c46	ed 43 f2 f0	. C . .
	ld e,(hl)		;4c4a	5e		^
	inc hl			;4c4b	23		#
	ld d,(hl)		;4c4c	56		V
	ei			;4c4d	fb		.
	ld (07000h),a		;4c4e	32 00 70	2 . p
	ld a,c			;4c51	79		y
	ld (09000h),a		;4c52	32 00 90	2 . .
	ld a,b			;4c55	78		x
	ld (0b000h),a		;4c56	32 00 b0	2 . .
	ld hl,l4c61h		;4c59	21 61 4c	! a L
	push hl			;4c5c	e5		.
	push de			;4c5d	d5		.
	exx			;4c5e	d9		.
	ex af,af'		;4c5f	08		.
	ret			;4c60	c9		.
l4c61h:
	exx			;4c61	d9		.
	ex af,af'		;4c62	08		.
	pop bc			;4c63	c1		.
	ld (0f0f2h),bc		;4c64	ed 43 f2 f0	. C . .
	ld a,c			;4c68	79		y
	ld (09000h),a		;4c69	32 00 90	2 . .
	ld a,b			;4c6c	78		x
	ld (0b000h),a		;4c6d	32 00 b0	2 . .
	pop af			;4c70	f1		.
	ld (0f0f1h),a		;4c71	32 f1 f0	2 . .
	ld (07000h),a		;4c74	32 00 70	2 . p
	exx			;4c77	d9		.
	ex af,af'		;4c78	08		.
	ret			;4c79	c9		.
sub_4c7ah:
	call sub_474bh		;4c7a	cd 4b 47	. K G
	di			;4c7d	f3		.
	ld hl,0ef00h		;4c7e	21 00 ef	! . .
	ld de,0ef00h		;4c81	11 00 ef	. . .
	ld bc,00060h		;4c84	01 60 00	. ` .
	ld a,010h		;4c87	3e 10		> .
	call sub_4649h		;4c89	cd 49 46	. I F
	call sub_4da9h		;4c8c	cd a9 4d	. . M
	call sub_473eh		;4c8f	cd 3e 47	. > G
	ei			;4c92	fb		.
	ret			;4c93	c9		.
l4c94h:
	ld a,(0ef60h)		;4c94	3a 60 ef	: ` .
	ei			;4c97	fb		.
	and 03fh		;4c98	e6 3f		. ?
	jr nz,l4c94h		;4c9a	20 f8		  .
l4c9ch:
	ld a,(hl)		;4c9c	7e		~
	cp 0f0h			;4c9d	fe f0		. .
	jr nc,l4ca7h		;4c9f	30 06		0 .
	call sub_4cafh		;4ca1	cd af 4c	. . L
	jp l4c9ch		;4ca4	c3 9c 4c	. . L
l4ca7h:
	call sub_4da9h		;4ca7	cd a9 4d	. . M
	xor a			;4caa	af		.
	ld (0ef60h),a		;4cab	32 60 ef	2 ` .
	ret			;4cae	c9		.
sub_4cafh:
	call sub_4d5fh		;4caf	cd 5f 4d	. _ M
	push bc			;4cb2	c5		.
	call sub_4d5fh		;4cb3	cd 5f 4d	. _ M
	pop de			;4cb6	d1		.
	ld a,b			;4cb7	78		x
	add a,a			;4cb8	87		.
	add a,b			;4cb9	80		.
	add a,a			;4cba	87		.
	push hl			;4cbb	e5		.
	ld hl,0ef00h		;4cbc	21 00 ef	! . .
	call sub_4600h		;4cbf	cd 00 46	. . F
	ld a,d			;4cc2	7a		z
	call sub_4cd0h		;4cc3	cd d0 4c	. . L
	ld a,c			;4cc6	79		y
	call sub_4cd0h		;4cc7	cd d0 4c	. . L
	ld a,e			;4cca	7b		{
	call sub_4cd0h		;4ccb	cd d0 4c	. . L
	pop hl			;4cce	e1		.
	ret			;4ccf	c9		.
sub_4cd0h:
	add a,a			;4cd0	87		.
	add a,a			;4cd1	87		.
	add a,a			;4cd2	87		.
	add a,a			;4cd3	87		.
	add a,a			;4cd4	87		.
	or 010h			;4cd5	f6 10		. .
	ld (hl),a		;4cd7	77		w
	inc hl			;4cd8	23		#
	ld (hl),a		;4cd9	77		w
	inc hl			;4cda	23		#
	ret			;4cdb	c9		.
	xor a			;4cdc	af		.
	ld (0ef60h),a		;4cdd	32 60 ef	2 ` .
l4ce0h:
	ld a,(0ef60h)		;4ce0	3a 60 ef	: ` .
	ei			;4ce3	fb		.
	and 03fh		;4ce4	e6 3f		. ?
	jr nz,l4ce0h		;4ce6	20 f8		  .
	ld a,(hl)		;4ce8	7e		~
	cp 0f0h			;4ce9	fe f0		. .
	jp c,l4cfbh		;4ceb	da fb 4c	. . L
	inc a			;4cee	3c		<
	ld a,080h		;4cef	3e 80		> .
	ld (0ef60h),a		;4cf1	32 60 ef	2 ` .
	ret			;4cf4	c9		.
l4cf5h:
	ld a,020h		;4cf5	3e 20		>  
	ld (0ef60h),a		;4cf7	32 60 ef	2 ` .
	ret			;4cfa	c9		.
l4cfbh:
	call sub_4d01h		;4cfb	cd 01 4d	. . M
	jp l4ce0h		;4cfe	c3 e0 4c	. . L
sub_4d01h:
	push hl			;4d01	e5		.
	call sub_4d99h		;4d02	cd 99 4d	. . M
	pop hl			;4d05	e1		.
	call sub_4d5fh		;4d06	cd 5f 4d	. _ M
	push bc			;4d09	c5		.
	call sub_4d5fh		;4d0a	cd 5f 4d	. _ M
	pop de			;4d0d	d1		.
	ld a,b			;4d0e	78		x
	add a,a			;4d0f	87		.
	add a,b			;4d10	80		.
	add a,a			;4d11	87		.
	push hl			;4d12	e5		.
	ld hl,0ef00h		;4d13	21 00 ef	! . .
	call sub_4600h		;4d16	cd 00 46	. . F
	ld a,d			;4d19	7a		z
	call sub_4d46h		;4d1a	cd 46 4d	. F M
	ld a,c			;4d1d	79		y
	call sub_4d46h		;4d1e	cd 46 4d	. F M
	ld a,e			;4d21	7b		{
	call sub_4d46h		;4d22	cd 46 4d	. F M
	pop hl			;4d25	e1		.
	ret			;4d26	c9		.
	ld d,000h		;4d27	16 00		. .
	jr l4d2fh		;4d29	18 04		. .
	ld d,007h		;4d2b	16 07		. .
	jr l4d2fh		;4d2d	18 00		. .
l4d2fh:
	ld hl,0ef00h		;4d2f	21 00 ef	! . .
	ld b,010h		;4d32	06 10		. .
l4d34h:
	push bc			;4d34	c5		.
	ld a,d			;4d35	7a		z
	call sub_4d46h		;4d36	cd 46 4d	. F M
	ld a,d			;4d39	7a		z
	call sub_4d46h		;4d3a	cd 46 4d	. F M
	ld a,d			;4d3d	7a		z
	call sub_4d46h		;4d3e	cd 46 4d	. F M
	pop bc			;4d41	c1		.
	djnz l4d34h		;4d42	10 f0		. .
	jr l4cf5h		;4d44	18 af		. .
sub_4d46h:
	push de			;4d46	d5		.
	ld e,a			;4d47	5f		_
	ld a,(hl)		;4d48	7e		~
	and 0e0h		;4d49	e6 e0		. .
	ld (hl),a		;4d4b	77		w
	inc hl			;4d4c	23		#
	ld (hl),a		;4d4d	77		w
	dec hl			;4d4e	2b		+
	rlca			;4d4f	07		.
	rlca			;4d50	07		.
	rlca			;4d51	07		.
	ld d,a			;4d52	57		W
	ld a,e			;4d53	7b		{
	sub d			;4d54	92		.
	and 01fh		;4d55	e6 1f		. .
	xor 010h		;4d57	ee 10		. .
	or (hl)			;4d59	b6		.
	ld (hl),a		;4d5a	77		w
	inc hl			;4d5b	23		#
	inc hl			;4d5c	23		#
	pop de			;4d5d	d1		.
	ret			;4d5e	c9		.
sub_4d5fh:
	ld a,(hl)		;4d5f	7e		~
	inc hl			;4d60	23		#
	ld c,a			;4d61	4f		O
	and 0f0h		;4d62	e6 f0		. .
	rrca			;4d64	0f		.
	rrca			;4d65	0f		.
	rrca			;4d66	0f		.
	rrca			;4d67	0f		.
	ld b,a			;4d68	47		G
	ld a,c			;4d69	79		y
	and 00fh		;4d6a	e6 0f		. .
	ld c,a			;4d6c	4f		O
	ret			;4d6d	c9		.
sub_4d6eh:
	ld a,(0ef60h)		;4d6e	3a 60 ef	: ` .
	and 03fh		;4d71	e6 3f		. ?
	ret z			;4d73	c8		.
	dec a			;4d74	3d		=
	push af			;4d75	f5		.
	call sub_4e14h		;4d76	cd 14 4e	. . N
	call sub_4da9h		;4d79	cd a9 4d	. . M
	pop af			;4d7c	f1		.
	ld (0ef60h),a		;4d7d	32 60 ef	2 ` .
	call z,sub_4d84h	;4d80	cc 84 4d	. . M
	ret			;4d83	c9		.
sub_4d84h:
	ld hl,0ef01h		;4d84	21 01 ef	! . .
	ld de,0ef00h		;4d87	11 00 ef	. . .
	ld b,030h		;4d8a	06 30		. 0
l4d8ch:
	ld a,(hl)		;4d8c	7e		~
	and 0e0h		;4d8d	e6 e0		. .
	or 010h			;4d8f	f6 10		. .
	ld (de),a		;4d91	12		.
	inc hl			;4d92	23		#
	inc de			;4d93	13		.
	inc hl			;4d94	23		#
	inc de			;4d95	13		.
	djnz l4d8ch		;4d96	10 f4		. .
	ret			;4d98	c9		.
sub_4d99h:
	ld b,030h		;4d99	06 30		. 0
	ld hl,0ef01h		;4d9b	21 01 ef	! . .
l4d9eh:
	ld a,(hl)		;4d9e	7e		~
	and 0e0h		;4d9f	e6 e0		. .
	or 010h			;4da1	f6 10		. .
	ld (hl),a		;4da3	77		w
	inc hl			;4da4	23		#
	inc hl			;4da5	23		#
	djnz l4d9eh		;4da6	10 f6		. .
	ret			;4da8	c9		.
sub_4da9h:
	ld bc,01000h		;4da9	01 00 10	. . .
	ld hl,0ef01h		;4dac	21 01 ef	! . .
l4dafh:
	ld a,(hl)		;4daf	7e		~
	and 0e0h		;4db0	e6 e0		. .
	rrca			;4db2	0f		.
	ld d,a			;4db3	57		W
	inc hl			;4db4	23		#
	inc hl			;4db5	23		#
	ld a,(hl)		;4db6	7e		~
	and 0e0h		;4db7	e6 e0		. .
	rlca			;4db9	07		.
	rlca			;4dba	07		.
	rlca			;4dbb	07		.
	ld e,a			;4dbc	5f		_
	inc hl			;4dbd	23		#
	inc hl			;4dbe	23		#
	ld a,(hl)		;4dbf	7e		~
	and 0e0h		;4dc0	e6 e0		. .
	rlca			;4dc2	07		.
	rlca			;4dc3	07		.
	rlca			;4dc4	07		.
	or d			;4dc5	b2		.
	ld d,a			;4dc6	57		W
	inc hl			;4dc7	23		#
	inc hl			;4dc8	23		#
	ld a,c			;4dc9	79		y
	inc c			;4dca	0c		.
	push af			;4dcb	f5		.
	push hl			;4dcc	e5		.
	push bc			;4dcd	c5		.
	call sub_4776h		;4dce	cd 76 47	. v G
	pop bc			;4dd1	c1		.
	pop hl			;4dd2	e1		.
	pop af			;4dd3	f1		.
	djnz l4dafh		;4dd4	10 d9		. .
	ret			;4dd6	c9		.
	ld bc,01000h		;4dd7	01 00 10	. . .
	ld hl,0ef01h		;4dda	21 01 ef	! . .
l4dddh:
	ld a,(hl)		;4ddd	7e		~
	and 0e0h		;4dde	e6 e0		. .
	call sub_4e0eh		;4de0	cd 0e 4e	. . N
	rrca			;4de3	0f		.
	ld d,a			;4de4	57		W
	inc hl			;4de5	23		#
	inc hl			;4de6	23		#
	ld a,(hl)		;4de7	7e		~
	and 0e0h		;4de8	e6 e0		. .
	call sub_4e0eh		;4dea	cd 0e 4e	. . N
	rlca			;4ded	07		.
	rlca			;4dee	07		.
	rlca			;4def	07		.
	ld e,a			;4df0	5f		_
	inc hl			;4df1	23		#
	inc hl			;4df2	23		#
	ld a,(hl)		;4df3	7e		~
	and 0e0h		;4df4	e6 e0		. .
	call sub_4e0eh		;4df6	cd 0e 4e	. . N
	rlca			;4df9	07		.
	rlca			;4dfa	07		.
	rlca			;4dfb	07		.
	or d			;4dfc	b2		.
	ld d,a			;4dfd	57		W
	inc hl			;4dfe	23		#
	inc hl			;4dff	23		#
	ld a,c			;4e00	79		y
	inc c			;4e01	0c		.
	push af			;4e02	f5		.
	push hl			;4e03	e5		.
	push bc			;4e04	c5		.
	call sub_4776h		;4e05	cd 76 47	. v G
	pop bc			;4e08	c1		.
	pop hl			;4e09	e1		.
	pop af			;4e0a	f1		.
	djnz l4dddh		;4e0b	10 d0		. .
	ret			;4e0d	c9		.
sub_4e0eh:
	add a,080h		;4e0e	c6 80		. .
	ret nc			;4e10	d0		.
	ld a,0e0h		;4e11	3e e0		> .
	ret			;4e13	c9		.
sub_4e14h:
	ld b,010h		;4e14	06 10		. .
	ld hl,0ef00h		;4e16	21 00 ef	! . .
l4e19h:
	ld a,(hl)		;4e19	7e		~
	and 01fh		;4e1a	e6 1f		. .
	add a,0f0h		;4e1c	c6 f0		. .
	inc hl			;4e1e	23		#
	add a,(hl)		;4e1f	86		.
	ld (hl),a		;4e20	77		w
	inc hl			;4e21	23		#
	ld a,(hl)		;4e22	7e		~
	and 01fh		;4e23	e6 1f		. .
	add a,0f0h		;4e25	c6 f0		. .
	inc hl			;4e27	23		#
	add a,(hl)		;4e28	86		.
	ld (hl),a		;4e29	77		w
	inc hl			;4e2a	23		#
	ld a,(hl)		;4e2b	7e		~
	and 01fh		;4e2c	e6 1f		. .
	add a,0f0h		;4e2e	c6 f0		. .
	inc hl			;4e30	23		#
	add a,(hl)		;4e31	86		.
	ld (hl),a		;4e32	77		w
	inc hl			;4e33	23		#
	djnz l4e19h		;4e34	10 e3		. .
	ret			;4e36	c9		.
	ld de,01f00h		;4e37	11 00 1f	. . .
	ld a,(0c0cdh)		;4e3a	3a cd c0	: . .
	add a,d			;4e3d	82		.
	and 03fh		;4e3e	e6 3f		. ?
	ld d,a			;4e40	57		W
	ld a,(0c0cch)		;4e41	3a cc c0	: . .
	add a,e			;4e44	83		.
	and 01fh		;4e45	e6 1f		. .
	ld e,a			;4e47	5f		_
	jr l4e4eh		;4e48	18 04		. .
	ld de,(0c0cch)		;4e4a	ed 5b cc c0	. [ . .
l4e4eh:
	ld a,d			;4e4e	7a		z
	and 03fh		;4e4f	e6 3f		. ?
	ld c,a			;4e51	4f		O
	ld a,e			;4e52	7b		{
	and 01fh		;4e53	e6 1f		. .
	add a,a			;4e55	87		.
	add a,a			;4e56	87		.
	ld l,a			;4e57	6f		o
	ld h,000h		;4e58	26 00		& .
	ld b,h			;4e5a	44		D
	add hl,hl		;4e5b	29		)
	add hl,hl		;4e5c	29		)
	add hl,hl		;4e5d	29		)
	add hl,hl		;4e5e	29		)
	add hl,bc		;4e5f	09		.
	ld bc,0e000h		;4e60	01 00 e0	. . .
	add hl,bc		;4e63	09		.
	ret			;4e64	c9		.
	ld a,004h		;4e65	3e 04		> .
	ld (0c0d8h),a		;4e67	32 d8 c0	2 . .
	ret			;4e6a	c9		.
	add a,019h		;4e6b	c6 19		. .
	ld b,a			;4e6d	47		G
	ld c,006h		;4e6e	0e 06		. .
	jp 00047h		;4e70	c3 47 00	. G .
	ld a,001h		;4e73	3e 01		> .
	ld (0c0d4h),a		;4e75	32 d4 c0	2 . .
	ret			;4e78	c9		.
	or a			;4e79	b7		.
	ret z			;4e7a	c8		.
	cp 009h			;4e7b	fe 09		. .
	ld a,001h		;4e7d	3e 01		> .
	ret c			;4e7f	d8		.
	inc a			;4e80	3c		<
	ret			;4e81	c9		.
sub_4e82h:
	add a,a			;4e82	87		.
	add a,a			;4e83	87		.
	push af			;4e84	f5		.
	xor a			;4e85	af		.
	ld (0c93eh),a		;4e86	32 3e c9	2 > .
	pop af			;4e89	f1		.
	call sub_4ea9h		;4e8a	cd a9 4e	. . N
	push bc			;4e8d	c5		.
	push af			;4e8e	f5		.
	and 0fch		;4e8f	e6 fc		. .
	add a,a			;4e91	87		.
	add a,a			;4e92	87		.
	add a,a			;4e93	87		.
	add a,a			;4e94	87		.
	ld c,a			;4e95	4f		O
	pop af			;4e96	f1		.
	and 003h		;4e97	e6 03		. .
	add a,a			;4e99	87		.
	add a,a			;4e9a	87		.
	add a,a			;4e9b	87		.
	add a,c			;4e9c	81		.
	pop bc			;4e9d	c1		.
	ld h,a			;4e9e	67		g
	ld l,000h		;4e9f	2e 00		. .
	add hl,de		;4ea1	19		.
	ld a,(0c93eh)		;4ea2	3a 3e c9	: > .
	add a,h			;4ea5	84		.
	ld h,a			;4ea6	67		g
	ld a,c			;4ea7	79		y
	ret			;4ea8	c9		.
sub_4ea9h:
	ld c,000h		;4ea9	0e 00		. .
	ld e,c			;4eab	59		Y
	ld d,000h		;4eac	16 00		. .
	cp 00ch			;4eae	fe 0c		. .
	ret c			;4eb0	d8		.
	sub 00ch		;4eb1	d6 0c		. .
	ld c,0ffh		;4eb3	0e ff		. .
	ld d,000h		;4eb5	16 00		. .
	ret			;4eb7	c9		.
	nop			;4eb8	00		.
	rst 38h			;4eb9	ff		.
	rst 38h			;4eba	ff		.
	rst 38h			;4ebb	ff		.
	rst 38h			;4ebc	ff		.
	rst 38h			;4ebd	ff		.
	rst 38h			;4ebe	ff		.
	rst 38h			;4ebf	ff		.
	rst 38h			;4ec0	ff		.
	rst 38h			;4ec1	ff		.
	rst 38h			;4ec2	ff		.
	rst 38h			;4ec3	ff		.
	rst 38h			;4ec4	ff		.
	rst 38h			;4ec5	ff		.
	rst 38h			;4ec6	ff		.
	rst 38h			;4ec7	ff		.
	rst 38h			;4ec8	ff		.
	rst 38h			;4ec9	ff		.
	rst 38h			;4eca	ff		.
	rst 38h			;4ecb	ff		.
	rst 38h			;4ecc	ff		.
	rst 38h			;4ecd	ff		.
	rst 38h			;4ece	ff		.
	rst 38h			;4ecf	ff		.
	rst 38h			;4ed0	ff		.
	rst 38h			;4ed1	ff		.
	rst 38h			;4ed2	ff		.
	rst 38h			;4ed3	ff		.
	rst 38h			;4ed4	ff		.
	rst 38h			;4ed5	ff		.
	rst 38h			;4ed6	ff		.
	rst 38h			;4ed7	ff		.
	rst 38h			;4ed8	ff		.
	rst 38h			;4ed9	ff		.
	rst 38h			;4eda	ff		.
	rst 38h			;4edb	ff		.
	rst 38h			;4edc	ff		.
	rst 38h			;4edd	ff		.
	rst 38h			;4ede	ff		.
	rst 38h			;4edf	ff		.
	rst 38h			;4ee0	ff		.
	rst 38h			;4ee1	ff		.
	rst 38h			;4ee2	ff		.
	rst 38h			;4ee3	ff		.
	rst 38h			;4ee4	ff		.
	rst 38h			;4ee5	ff		.
	rst 38h			;4ee6	ff		.
	rst 38h			;4ee7	ff		.
	rst 38h			;4ee8	ff		.
	rst 38h			;4ee9	ff		.
	rst 38h			;4eea	ff		.
	rst 38h			;4eeb	ff		.
	rst 38h			;4eec	ff		.
	rst 38h			;4eed	ff		.
	rst 38h			;4eee	ff		.
	rst 38h			;4eef	ff		.
	rst 38h			;4ef0	ff		.
	rst 38h			;4ef1	ff		.
	rst 38h			;4ef2	ff		.
	rst 38h			;4ef3	ff		.
	rst 38h			;4ef4	ff		.
	rst 38h			;4ef5	ff		.
	rst 38h			;4ef6	ff		.
	rst 38h			;4ef7	ff		.
	rst 38h			;4ef8	ff		.
	rst 38h			;4ef9	ff		.
	rst 38h			;4efa	ff		.
	rst 38h			;4efb	ff		.
	rst 38h			;4efc	ff		.
	rst 38h			;4efd	ff		.
	rst 38h			;4efe	ff		.
	rst 38h			;4eff	ff		.
	ld a,(ix+001h)		;4f00	dd 7e 01	. ~ .
	inc a			;4f03	3c		<
	ld (ix+001h),a		;4f04	dd 77 01	. w .
	cp 002h			;4f07	fe 02		. .
	ret c			;4f09	d8		.
	jp 06e98h		;4f0a	c3 98 6e	. . n
	ld a,(ix+001h)		;4f0d	dd 7e 01	. ~ .
	dec a			;4f10	3d		=
	ret z			;4f11	c8		.
	xor a			;4f12	af		.
	ld (0df0dh),a		;4f13	32 0d df	2 . .
	ld hl,0ff80h		;4f16	21 80 ff	! . .
	jp 06bf3h		;4f19	c3 f3 6b	. . k
	ld a,001h		;4f1c	3e 01		> .
	call 06c5ch		;4f1e	cd 5c 6c	. \ l
	call 06754h		;4f21	cd 54 67	. T g
	ld (ix+017h),032h	;4f24	dd 36 17 32	. 6 . 2
	ld a,(ix+008h)		;4f28	dd 7e 08	. ~ .
	cp 008h			;4f2b	fe 08		. .
	ret c			;4f2d	d8		.
	ld (ix+006h),004h	;4f2e	dd 36 06 04	. 6 . .
	ret			;4f32	c9		.
	call sub_4f58h		;4f33	cd 58 4f	. X O
	ld a,(ix+004h)		;4f36	dd 7e 04	. ~ .
	or a			;4f39	b7		.
	ld a,016h		;4f3a	3e 16		> .
	call nz,sub_4af5h	;4f3c	c4 f5 4a	. . J
	call 07cach		;4f3f	cd ac 7c	. . |
	ret nc			;4f42	d0		.
	ld a,(ix+006h)		;4f43	dd 7e 06	. ~ .
	ld (ix+005h),a		;4f46	dd 77 05	. w .
	ld (ix+006h),008h	;4f49	dd 36 06 08	. 6 . .
	set 7,(ix+014h)		;4f4d	dd cb 14 fe	. . . .
	ld (ix+001h),004h	;4f51	dd 36 01 04	. 6 . .
	jp 07cbeh		;4f55	c3 be 7c	. . |
sub_4f58h:
	ld a,(ix+001h)		;4f58	dd 7e 01	. ~ .
	cp 007h			;4f5b	fe 07		. .
	jp nc,l4ae0h		;4f5d	d2 e0 4a	. . J
	call sub_461ah		;4f60	cd 1a 46	. . F
	ld (hl),c		;4f63	71		q
	ld c,a			;4f64	4f		O
	add a,l			;4f65	85		.
	ld c,a			;4f66	4f		O
	sub d			;4f67	92		.
	ld c,a			;4f68	4f		O
	sbc a,b			;4f69	98		.
	ld c,a			;4f6a	4f		O
	jp z,0d34fh		;4f6b	ca 4f d3	. O .
	ld c,a			;4f6e	4f		O
	ret			;4f6f	c9		.
	ld c,a			;4f70	4f		O
	dec (ix+017h)		;4f71	dd 35 17	. 5 .
	ret nz			;4f74	c0		.
	inc (ix+006h)		;4f75	dd 34 06	. 4 .
	ld (ix+017h),006h	;4f78	dd 36 17 06	. 6 . .
	ld a,026h		;4f7c	3e 26		> &
	call sub_4af5h		;4f7e	cd f5 4a	. . J
l4f81h:
	inc (ix+001h)		;4f81	dd 34 01	. 4 .
	ret			;4f84	c9		.
	dec (ix+017h)		;4f85	dd 35 17	. 5 .
	ret nz			;4f88	c0		.
	inc (ix+006h)		;4f89	dd 34 06	. 4 .
	ld (ix+017h),006h	;4f8c	dd 36 17 06	. 6 . .
	jr l4f81h		;4f90	18 ef		. .
	dec (ix+017h)		;4f92	dd 35 17	. 5 .
	ret nz			;4f95	c0		.
	jr l4f81h		;4f96	18 e9		. .
	ld a,(0ca02h)		;4f98	3a 02 ca	: . .
	and 00bh		;4f9b	e6 0b		. .
	ret nz			;4f9d	c0		.
sub_4f9eh:
	bit 2,(ix+006h)		;4f9e	dd cb 06 56	. . . V
	jr nz,l4fb5h		;4fa2	20 11		  .
	ld a,(ix+008h)		;4fa4	dd 7e 08	. ~ .
	push af			;4fa7	f5		.
	add a,006h		;4fa8	c6 06		. .
	ld (ix+008h),a		;4faa	dd 77 08	. w .
	call l4fb5h		;4fad	cd b5 4f	. . O
	pop af			;4fb0	f1		.
	ld (ix+008h),a		;4fb1	dd 77 08	. w .
	ret			;4fb4	c9		.
l4fb5h:
	ld a,(ix+00ah)		;4fb5	dd 7e 0a	. ~ .
	push af			;4fb8	f5		.
	add a,003h		;4fb9	c6 03		. .
	ld (ix+00ah),a		;4fbb	dd 77 0a	. w .
	ld iy,0ca40h		;4fbe	fd 21 40 ca	. ! @ .
	call 07110h		;4fc2	cd 10 71	. . q
	pop af			;4fc5	f1		.
	ld (ix+00ah),a		;4fc6	dd 77 0a	. w .
	ret			;4fc9	c9		.
	res 4,(ix+015h)		;4fca	dd cb 15 a6	. . . .
	inc (ix+006h)		;4fce	dd 34 06	. 4 .
	jr l4f81h		;4fd1	18 ae		. .
	ld a,(ix+005h)		;4fd3	dd 7e 05	. ~ .
	inc a			;4fd6	3c		<
	ld (ix+006h),a		;4fd7	dd 77 06	. w .
	ld hl,0ca19h		;4fda	21 19 ca	! . .
	ld a,(hl)		;4fdd	7e		~
	push af			;4fde	f5		.
	srl a			;4fdf	cb 3f		. ?
	ld (hl),a		;4fe1	77		w
	call sub_4f9eh		;4fe2	cd 9e 4f	. . O
	call sub_4f9eh		;4fe5	cd 9e 4f	. . O
	call sub_4f9eh		;4fe8	cd 9e 4f	. . O
	pop af			;4feb	f1		.
	ld (0ca19h),a		;4fec	32 19 ca	2 . .
	jr l4f81h		;4fef	18 90		. .
	ld a,(ix+001h)		;4ff1	dd 7e 01	. ~ .
	cp 007h			;4ff4	fe 07		. .
	jp nc,l4ae0h		;4ff6	d2 e0 4a	. . J
	call sub_461ah		;4ff9	cd 1a 46	. . F
	add hl,de		;4ffc	19		.
	ld d,b			;4ffd	50		P
	ld h,050h		;4ffe	26 50		& P
	add hl,sp		;5000	39		9
	ld d,b			;5001	50		P
	ld c,c			;5002	49		I
	ld d,b			;5003	50		P
	ld d,e			;5004	53		S
	ld d,b			;5005	50		P
	ld d,h			;5006	54		T
	ld d,b			;5007	50		P
	ld l,a			;5008	6f		o
	ld d,b			;5009	50		P
	call 06796h		;500a	cd 96 67	. . g
	ld (ix+003h),a		;500d	dd 77 03	. w .
	ld (ix+001h),005h	;5010	dd 36 01 05	. 6 . .
	xor a			;5014	af		.
	ld (ix+015h),a		;5015	dd 77 15	. w .
	ret			;5018	c9		.
	dec (ix+017h)		;5019	dd 35 17	. 5 .
	ret nz			;501c	c0		.
	ld de,0ff20h		;501d	11 20 ff	.   .
	call 06bfdh		;5020	cd fd 6b	. . k
	jp 06c1dh		;5023	c3 1d 6c	. . l
	ld a,(ix+00ah)		;5026	dd 7e 0a	. ~ .
	cp 002h			;5029	fe 02		. .
	ret nc			;502b	d0		.
	set 1,(ix+005h)		;502c	dd cb 05 ce	. . . .
	ld de,00060h		;5030	11 60 00	. ` .
	call 06bfdh		;5033	cd fd 6b	. . k
	jp 06c1dh		;5036	c3 1d 6c	. . l
	call 0509fh		;5039	cd 9f 50	. . P
	ret c			;503c	d8		.
	ld iy,0ca40h		;503d	fd 21 40 ca	. ! @ .
	ld a,012h		;5041	3e 12		> .
	call 06b6ch		;5043	cd 6c 6b	. l k
	jp 06c1dh		;5046	c3 1d 6c	. . l
	call sub_50c3h		;5049	cd c3 50	. . P
	cp (ix+002h)		;504c	dd be 02	. . .
	ret z			;504f	c8		.
	jp 06c1dh		;5050	c3 1d 6c	. . l
	ret			;5053	c9		.
	ld a,(ix+003h)		;5054	dd 7e 03	. ~ .
	ld hl,l509ch		;5057	21 9c 50	! . P
	call sub_4600h		;505a	cd 00 46	. . F
	ld a,(hl)		;505d	7e		~
	ld (ix+021h),a		;505e	dd 77 21	. w !
	add a,003h		;5061	c6 03		. .
	ld (ix+022h),003h	;5063	dd 36 22 03	. 6 " .
	ld (ix+018h),00ah	;5067	dd 36 18 0a	. 6 . .
	inc (ix+001h)		;506b	dd 34 01	. 4 .
	ret			;506e	c9		.
	dec (ix+018h)		;506f	dd 35 18	. 5 .
	ret nz			;5072	c0		.
	ld (ix+018h),00eh	;5073	dd 36 18 0e	. 6 . .
	push ix			;5077	dd e5		. .
	push ix			;5079	dd e5		. .
	ld a,021h		;507b	3e 21		> !
	call 069a3h		;507d	cd a3 69	. . i
	pop iy			;5080	fd e1		. .
	jp c,l5093h		;5082	da 93 50	. . P
	ld a,(iy+021h)		;5085	fd 7e 21	. ~ !
	ld (ix+008h),a		;5088	dd 77 08	. w .
	ld (ix+00ah),01fh	;508b	dd 36 0a 1f	. 6 . .
	ld (ix+017h),001h	;508f	dd 36 17 01	. 6 . .
l5093h:
	pop ix			;5093	dd e1		. .
	dec (ix+022h)		;5095	dd 35 22	. 5 "
	ret nz			;5098	c0		.
	jp 06e98h		;5099	c3 98 6e	. . n
l509ch:
	inc b			;509c	04		.
	dec bc			;509d	0b		.
	ld de,06ccdh		;509e	11 cd 6c	. . l
	ld (hl),l		;50a1	75		u
	call sub_50c3h		;50a2	cd c3 50	. . P
	ld (ix+002h),a		;50a5	dd 77 02	. w .
	bit 7,d			;50a8	cb 7a		. z
	call nz,sub_460ah	;50aa	c4 0a 46	. . F
	bit 7,h			;50ad	cb 7c		. |
	jr z,l50b9h		;50af	28 08		( .
	call sub_4612h		;50b1	cd 12 46	. . F
	call l50b9h		;50b4	cd b9 50	. . P
	ccf			;50b7	3f		?
	ret			;50b8	c9		.
l50b9h:
	ex de,hl		;50b9	eb		.
	ld b,h			;50ba	44		D
	ld c,l			;50bb	4d		M
	add hl,hl		;50bc	29		)
	add hl,bc		;50bd	09		.
	ex de,hl		;50be	eb		.
	or a			;50bf	b7		.
	sbc hl,de		;50c0	ed 52		. R
	ret			;50c2	c9		.
sub_50c3h:
	ld a,h			;50c3	7c		|
	rrca			;50c4	0f		.
	and 040h		;50c5	e6 40		. @
	ld c,a			;50c7	4f		O
	ld a,d			;50c8	7a		z
	and 080h		;50c9	e6 80		. .
	or c			;50cb	b1		.
	ret			;50cc	c9		.
	jp 06e98h		;50cd	c3 98 6e	. . n
	ld a,(ix+001h)		;50d0	dd 7e 01	. ~ .
	or a			;50d3	b7		.
	jr nz,l50f0h		;50d4	20 1a		  .
	xor a			;50d6	af		.
	ld d,a			;50d7	57		W
	ld e,a			;50d8	5f		_
	ld h,a			;50d9	67		g
	ld l,a			;50da	6f		o
	call sub_50f1h		;50db	cd f1 50	. . P
	inc d			;50de	14		.
	call sub_50f1h		;50df	cd f1 50	. . P
	inc h			;50e2	24		$
	call sub_50f1h		;50e3	cd f1 50	. . P
	dec d			;50e6	15		.
	call sub_50f1h		;50e7	cd f1 50	. . P
	inc (ix+001h)		;50ea	dd 34 01	. 4 .
	call 06fcdh		;50ed	cd cd 6f	. . o
l50f0h:
	ret			;50f0	c9		.
sub_50f1h:
	push de			;50f1	d5		.
	push hl			;50f2	e5		.
	call 075c2h		;50f3	cd c2 75	. . u
	or a			;50f6	b7		.
	pop hl			;50f7	e1		.
	pop de			;50f8	d1		.
	ret z			;50f9	c8		.
	call 06e98h		;50fa	cd 98 6e	. . n
	jp l469fh		;50fd	c3 9f 46	. . F
	ret			;5100	c9		.
	call 06f8ch		;5101	cd 8c 6f	. . o
	ld hl,0ce44h		;5104	21 44 ce	! D .
	inc (hl)		;5107	34		4
	ld (ix+000h),000h	;5108	dd 36 00 00	. 6 . .
	ld (ix+015h),000h	;510c	dd 36 15 00	. 6 . .
	ret			;5110	c9		.
	ret			;5111	c9		.
	ld a,(ix+001h)		;5112	dd 7e 01	. ~ .
	dec a			;5115	3d		=
	jr z,l512bh		;5116	28 13		( .
	dec a			;5118	3d		=
	jr z,l5135h		;5119	28 1a		( .
	dec a			;511b	3d		=
	jr z,l514bh		;511c	28 2d		( -
	ld hl,0000eh		;511e	21 0e 00	! . .
	call 06c0ch		;5121	cd 0c 6c	. . l
	ld (ix+018h),004h	;5124	dd 36 18 04	. 6 . .
	jp 06c1dh		;5128	c3 1d 6c	. . l
l512bh:
	call 06a9ah		;512b	cd 9a 6a	. . j
	call 06adfh		;512e	cd df 6a	. . j
	ret nz			;5131	c0		.
	jp 06c1dh		;5132	c3 1d 6c	. . l
l5135h:
	ld a,(0ca19h)		;5135	3a 19 ca	: . .
	cp 004h			;5138	fe 04		. .
	ld de,0ff40h		;513a	11 40 ff	. @ .
	jr c,l5142h		;513d	38 03		8 .
	ld de,0fee0h		;513f	11 e0 fe	. . .
l5142h:
	ld hl,00000h		;5142	21 00 00	! . .
	call 06bebh		;5145	cd eb 6b	. . k
	jp 06c1dh		;5148	c3 1d 6c	. . l
l514bh:
	ret			;514b	c9		.
	ld a,(ix+001h)		;514c	dd 7e 01	. ~ .
	cp 005h			;514f	fe 05		. .
	jp nc,l4ae0h		;5151	d2 e0 4a	. . J
	call sub_461ah		;5154	cd 1a 46	. . F
	jp m,00151h		;5157	fa 51 01	. Q .
	ld d,d			;515a	52		R
	ld sp,hl		;515b	f9		.
	ld d,c			;515c	51		Q
	and b			;515d	a0		.
	ld d,c			;515e	51		Q
	xor l			;515f	ad		.
	ld d,c			;5160	51		Q
	ld a,(ix+015h)		;5161	dd 7e 15	. ~ .
	and 004h		;5164	e6 04		. .
	ld (ix+015h),a		;5166	dd 77 15	. w .
	call 06796h		;5169	cd 96 67	. . g
	ld (ix+008h),a		;516c	dd 77 08	. w .
	call 06796h		;516f	cd 96 67	. . g
	ld (ix+00ah),a		;5172	dd 77 0a	. w .
	ld b,008h		;5175	06 08		. .
	ld (ix+017h),000h	;5177	dd 36 17 00	. 6 . .
l517bh:
	call sub_51b2h		;517b	cd b2 51	. . Q
	jr c,l5198h		;517e	38 18		8 .
	ld b,006h		;5180	06 06		. .
	ld (ix+017h),000h	;5182	dd 36 17 00	. 6 . .
l5186h:
	call sub_51c0h		;5186	cd c0 51	. . Q
	jr c,l51a5h		;5189	38 1a		8 .
	ld (ix+017h),001h	;518b	dd 36 17 01	. 6 . .
	ld (ix+018h),000h	;518f	dd 36 18 00	. 6 . .
	ld (ix+001h),002h	;5193	dd 36 01 02	. 6 . .
	ret			;5197	c9		.
l5198h:
	ld (ix+024h),b		;5198	dd 70 24	. p $
	ld (ix+001h),003h	;519b	dd 36 01 03	. 6 . .
	ret			;519f	c9		.
	ld b,(ix+024h)		;51a0	dd 46 24	. F $
	jr l517bh		;51a3	18 d6		. .
l51a5h:
	ld (ix+024h),b		;51a5	dd 70 24	. p $
	ld (ix+001h),004h	;51a8	dd 36 01 04	. 6 . .
	ret			;51ac	c9		.
	ld b,(ix+024h)		;51ad	dd 46 24	. F $
	jr l5186h		;51b0	18 d4		. .
sub_51b2h:
	ld (ix+021h),035h	;51b2	dd 36 21 35	. 6 ! 5
	ld (ix+003h),005h	;51b6	dd 36 03 05	. 6 . .
	ld (ix+018h),003h	;51ba	dd 36 18 03	. 6 . .
	jr l51cch		;51be	18 0c		. .
sub_51c0h:
	ld (ix+021h),026h	;51c0	dd 36 21 26	. 6 ! &
	ld (ix+003h),0f6h	;51c4	dd 36 03 f6	. 6 . .
	ld (ix+018h),002h	;51c8	dd 36 18 02	. 6 . .
l51cch:
	push bc			;51cc	c5		.
	call sub_51d9h		;51cd	cd d9 51	. . Q
	jr c,l51d7h		;51d0	38 05		8 .
	pop bc			;51d2	c1		.
	djnz l51cch		;51d3	10 f7		. .
	or a			;51d5	b7		.
	ret			;51d6	c9		.
l51d7h:
	pop bc			;51d7	c1		.
	ret			;51d8	c9		.
sub_51d9h:
	call 0682ah		;51d9	cd 2a 68	. * h
	ld (iy+008h),018h	;51dc	fd 36 08 18	. 6 . .
	ld a,(ix+017h)		;51e0	dd 7e 17	. ~ .
	add a,(ix+018h)		;51e3	dd 86 18	. . .
	ld (ix+017h),a		;51e6	dd 77 17	. w .
	ld (iy+017h),a		;51e9	fd 77 17	. w .
	ld a,(ix+021h)		;51ec	dd 7e 21	. ~ !
	ld (iy+021h),a		;51ef	fd 77 21	. w !
	ld a,(ix+003h)		;51f2	dd 7e 03	. ~ .
	ld (iy+003h),a		;51f5	fd 77 03	. w .
	ret			;51f8	c9		.
	ret			;51f9	c9		.
	dec (ix+017h)		;51fa	dd 35 17	. 5 .
	ret nz			;51fd	c0		.
	jp 06c1dh		;51fe	c3 1d 6c	. . l
	call sub_5276h		;5201	cd 76 52	. v R
	call 068deh		;5204	cd de 68	. . h
	ret c			;5207	d8		.
	ld a,(iy+001h)		;5208	fd 7e 01	. ~ .
	cp 002h			;520b	fe 02		. .
	ret nz			;520d	c0		.
	ld a,(ix+017h)		;520e	dd 7e 17	. ~ .
	add a,(ix+003h)		;5211	dd 86 03	. . .
	ld (ix+017h),a		;5214	dd 77 17	. w .
	call 074efh		;5217	cd ef 74	. . t
	call sub_5254h		;521a	cd 54 52	. T R
	ld e,(iy+007h)		;521d	fd 5e 07	. ^ .
	ld d,(iy+008h)		;5220	fd 56 08	. V .
	add hl,de		;5223	19		.
	ld (ix+007h),l		;5224	dd 75 07	. u .
	ld (ix+008h),h		;5227	dd 74 08	. t .
	ld a,(ix+017h)		;522a	dd 7e 17	. ~ .
	call 074edh		;522d	cd ed 74	. . t
	call sub_5254h		;5230	cd 54 52	. T R
	ld e,(iy+009h)		;5233	fd 5e 09	. ^ .
	ld d,(iy+00ah)		;5236	fd 56 0a	. V .
	add hl,de		;5239	19		.
	ld (ix+009h),l		;523a	dd 75 09	. u .
	ld (ix+00ah),h		;523d	dd 74 0a	. t .
	ld a,(ix+005h)		;5240	dd 7e 05	. ~ .
	inc a			;5243	3c		<
	and 003h		;5244	e6 03		. .
	ld (ix+005h),a		;5246	dd 77 05	. w .
	ld a,(ix+008h)		;5249	dd 7e 08	. ~ .
	sub 01eh		;524c	d6 1e		. .
	cp 001h			;524e	fe 01		. .
	ret nc			;5250	d0		.
	jp 06e98h		;5251	c3 98 6e	. . n
sub_5254h:
	bit 7,h			;5254	cb 7c		. |
	jr nz,l526ch		;5256	20 14		  .
	ld h,l			;5258	65		e
sub_5259h:
	ld e,(ix+021h)		;5259	dd 5e 21	. ^ !
	call 072b0h		;525c	cd b0 72	. . r
	srl h			;525f	cb 3c		. <
	rr l			;5261	cb 1d		. .
	srl h			;5263	cb 3c		. <
	rr l			;5265	cb 1d		. .
	srl h			;5267	cb 3c		. <
	rr l			;5269	cb 1d		. .
	ret			;526b	c9		.
l526ch:
	ld a,l			;526c	7d		}
	neg			;526d	ed 44		. D
	ld h,a			;526f	67		g
	call sub_5259h		;5270	cd 59 52	. Y R
	jp sub_4612h		;5273	c3 12 46	. . F
sub_5276h:
	ld a,(ix+035h)		;5276	dd 7e 35	. ~ 5
	or (ix+036h)		;5279	dd b6 36	. . 6
	rlca			;527c	07		.
	ret nc			;527d	d0		.
	ld a,(0ca02h)		;527e	3a 02 ca	: . .
	and 007h		;5281	e6 07		. .
	ret nz			;5283	c0		.
	call 07143h		;5284	cd 43 71	. C q
	ret			;5287	c9		.
	ld a,(ix+001h)		;5288	dd 7e 01	. ~ .
	dec a			;528b	3d		=
	jr z,$+72		;528c	28 46		( F
	dec a			;528e	3d		=
	jr z,l52e9h		;528f	28 58		( X
	ld a,(0ca02h)		;5291	3a 02 ca	: . .
	and 00fh		;5294	e6 0f		. .
	ld l,a			;5296	6f		o
	ld h,000h		;5297	26 00		& .
	ld de,l52ech		;5299	11 ec 52	. . R
	add hl,de		;529c	19		.
	ld a,(hl)		;529d	7e		~
	ld (ix+008h),a		;529e	dd 77 08	. w .
	ld a,01fh		;52a1	3e 1f		> .
	ld (ix+00ah),a		;52a3	dd 77 0a	. w .
	ld a,(0ca48h)		;52a6	3a 48 ca	: H .
	sub (ix+008h)		;52a9	dd 96 08	. . .
	ld hl,00010h		;52ac	21 10 00	! . .
	jr nc,l52b4h		;52af	30 03		0 .
	ld hl,0fff0h		;52b1	21 f0 ff	! . .
l52b4h:
	call 06c0ch		;52b4	cd 0c 6c	. . l
	ld a,(0ca19h)		;52b7	3a 19 ca	: . .
	cp 006h			;52ba	fe 06		. .
	ld a,018h		;52bc	3e 18		> .
	jr c,l52c2h		;52be	38 02		8 .
	ld a,020h		;52c0	3e 20		>  
l52c2h:
	ld iy,0ca40h		;52c2	fd 21 40 ca	. ! @ .
	call 06b6ch		;52c6	cd 6c 6b	. l k
	ld de,l52d2h		;52c9	11 d2 52	. . R
	call 06aach		;52cc	cd ac 6a	. . j
	jp 06c1dh		;52cf	c3 1d 6c	. . l
l52d2h:
	nop			;52d2	00		.
	ld bc,04a3ah		;52d3	01 3a 4a	. : J
	jp z,016feh		;52d6	ca fe 16	. . .
	jp nc,06c1dh		;52d9	d2 1d 6c	. . l
	sub (ix+00ah)		;52dc	dd 96 0a	. . .
	jr nc,l52e3h		;52df	30 02		0 .
	neg			;52e1	ed 44		. D
l52e3h:
	cp 008h			;52e3	fe 08		. .
	ret nc			;52e5	d0		.
	inc (ix+001h)		;52e6	dd 34 01	. 4 .
l52e9h:
	jp 06a9ah		;52e9	c3 9a 6a	. . j
l52ech:
	ld (bc),a		;52ec	02		.
	ld b,008h		;52ed	06 08		. .
	djnz l5303h		;52ef	10 12		. .
	ld a,(bc)		;52f1	0a		.
	dec c			;52f2	0d		.
	ld b,006h		;52f3	06 06		. .
	inc bc			;52f5	03		.
	call 06ab8h		;52f6	cd b8 6a	. . j
	ld a,(ix+001h)		;52f9	dd 7e 01	. ~ .
	dec a			;52fc	3d		=
	jr z,l531ah		;52fd	28 1b		( .
	dec a			;52ff	3d		=
	jr z,l534dh		;5300	28 4b		( K
	dec a			;5302	3d		=
l5303h:
	jr z,l5337h		;5303	28 32		( 2
	ld a,(ix+008h)		;5305	dd 7e 08	. ~ .
	add a,0fdh		;5308	c6 fd		. .
	ld (ix+008h),a		;530a	dd 77 08	. w .
	ld hl,0ff40h		;530d	21 40 ff	! @ .
	call 06bf3h		;5310	cd f3 6b	. . k
	set 2,(ix+015h)		;5313	dd cb 15 d6	. . . .
	jp 06c1dh		;5317	c3 1d 6c	. . l
l531ah:
	call 06ad2h		;531a	cd d2 6a	. . j
	ret nz			;531d	c0		.
	ld a,(0ca19h)		;531e	3a 19 ca	: . .
	cp 004h			;5321	fe 04		. .
	ld a,012h		;5323	3e 12		> .
	jr c,l5329h		;5325	38 02		8 .
	ld a,020h		;5327	3e 20		>  
l5329h:
	ld iy,0ca40h		;5329	fd 21 40 ca	. ! @ .
	call 06b6ch		;532d	cd 6c 6b	. l k
	res 2,(ix+015h)		;5330	dd cb 15 96	. . . .
	jp 06c1dh		;5334	c3 1d 6c	. . l
l5337h:
	ld a,(ix+026h)		;5337	dd 7e 26	. ~ &
	sub (ix+008h)		;533a	dd 96 08	. . .
	bit 7,a			;533d	cb 7f		. .
	jr nz,l5343h		;533f	20 02		  .
	neg			;5341	ed 44		. D
l5343h:
	cp 002h			;5343	fe 02		. .
	ret nc			;5345	d0		.
	ld (ix+001h),001h	;5346	dd 36 01 01	. 6 . .
	inc (ix+017h)		;534a	dd 34 17	. 4 .
l534dh:
	ret			;534d	c9		.
	ld a,(ix+001h)		;534e	dd 7e 01	. ~ .
	dec a			;5351	3d		=
	jr z,$+44		;5352	28 2a		( *
	dec a			;5354	3d		=
	jr z,l53a2h		;5355	28 4b		( K
	dec a			;5357	3d		=
	jr z,l539bh		;5358	28 41		( A
	call 06796h		;535a	cd 96 67	. . g
	ld (ix+020h),a		;535d	dd 77 20	. w  
	and a			;5360	a7		.
	ld hl,00060h		;5361	21 60 00	! ` .
	ld de,0ff40h		;5364	11 40 ff	. @ .
	jr z,l536ch		;5367	28 03		( .
	ld hl,0ffa0h		;5369	21 a0 ff	! . .
l536ch:
	call 06bebh		;536c	cd eb 6b	. . k
	ld (ix+017h),004h	;536f	dd 36 17 04	. 6 . .
	ld de,l537ch		;5373	11 7c 53	. | S
	call 06aach		;5376	cd ac 6a	. . j
	jp 06c1dh		;5379	c3 1d 6c	. . l
l537ch:
	nop			;537c	00		.
	ld bc,07eddh		;537d	01 dd 7e	. . ~
	ld a,(bc)		;5380	0a		.
	cp 003h			;5381	fe 03		. .
	jp c,l539ch		;5383	da 9c 53	. . S
	ld a,(ix+008h)		;5386	dd 7e 08	. ~ .
	cp 001h			;5389	fe 01		. .
	ret c			;538b	d8		.
	cp 013h			;538c	fe 13		. .
	ccf			;538e	3f		?
	ret nc			;538f	d0		.
	call 06b43h		;5390	cd 43 6b	. C k
	ld a,001h		;5393	3e 01		> .
	xor (ix+020h)		;5395	dd ae 20	. .  
	ld (ix+020h),a		;5398	dd 77 20	. w  
l539bh:
	ret			;539b	c9		.
l539ch:
	call 06be6h		;539c	cd e6 6b	. . k
	jp 06c1dh		;539f	c3 1d 6c	. . l
l53a2h:
	call 06ad2h		;53a2	cd d2 6a	. . j
	ret nz			;53a5	c0		.
	ld a,(ix+020h)		;53a6	dd 7e 20	. ~  
	and a			;53a9	a7		.
	ld hl,0ffe0h		;53aa	21 e0 ff	! . .
	ld de,00100h		;53ad	11 00 01	. . .
	jr z,l53b5h		;53b0	28 03		( .
	ld hl,00020h		;53b2	21 20 00	!   .
l53b5h:
	call 06bebh		;53b5	cd eb 6b	. . k
	jp 06c1dh		;53b8	c3 1d 6c	. . l
	ld (ix+00ah),014h	;53bb	dd 36 0a 14	. 6 . .
	ld (ix+008h),010h	;53bf	dd 36 08 10	. 6 . .
	ret			;53c3	c9		.
	ld a,(ix+001h)		;53c4	dd 7e 01	. ~ .
	dec a			;53c7	3d		=
	jr z,$+36		;53c8	28 22		( "
	dec a			;53ca	3d		=
	jr z,l53f2h		;53cb	28 25		( %
	jp p,l5416h		;53cd	f2 16 54	. . T
	call 06bf0h		;53d0	cd f0 6b	. . k
	ld de,0ff80h		;53d3	11 80 ff	. . .
	call 06bfdh		;53d6	cd fd 6b	. . k
	ld (ix+017h),00ah	;53d9	dd 36 17 0a	. 6 . .
	ld de,l53e7h		;53dd	11 e7 53	. . S
	call 06aach		;53e0	cd ac 6a	. . j
l53e3h:
	inc (ix+001h)		;53e3	dd 34 01	. 4 .
	ret			;53e6	c9		.
l53e7h:
	nop			;53e7	00		.
	nop			;53e8	00		.
	nop			;53e9	00		.
	nop			;53ea	00		.
	ld bc,022cdh		;53eb	01 cd 22	. . "
	ld d,h			;53ee	54		T
	inc (ix+001h)		;53ef	dd 34 01	. 4 .
l53f2h:
	dec (ix+017h)		;53f2	dd 35 17	. 5 .
	ret nz			;53f5	c0		.
	call 0755dh		;53f6	cd 5d 75	. ] u
	rl e			;53f9	cb 13		. .
	ld hl,00040h		;53fb	21 40 00	! @ .
	call c,sub_4612h	;53fe	dc 12 46	. . F
	call 06bf3h		;5401	cd f3 6b	. . k
	ld de,00060h		;5404	11 60 00	. ` .
	call 06bfdh		;5407	cd fd 6b	. . k
	ld de,0fff1h		;540a	11 f1 ff	. . .
	call 06c16h		;540d	cd 16 6c	. . l
	ld (ix+017h),016h	;5410	dd 36 17 16	. 6 . .
	jr l53e3h		;5414	18 cd		. .
l5416h:
	call 06a9ah		;5416	cd 9a 6a	. . j
	dec (ix+017h)		;5419	dd 35 17	. 5 .
	ret nz			;541c	c0		.
	ld (ix+001h),000h	;541d	dd 36 01 00	. 6 . .
	ret			;5421	c9		.
	ld a,(0ca19h)		;5422	3a 19 ca	: . .
	call 0750fh		;5425	cd 0f 75	. . u
	ret c			;5428	d8		.
	jp 07143h		;5429	c3 43 71	. C q
	ld a,(ix+001h)		;542c	dd 7e 01	. ~ .
	dec a			;542f	3d		=
	jr z,l5456h		;5430	28 24		( $
	dec a			;5432	3d		=
	jr z,l5460h		;5433	28 2b		( +
	dec a			;5435	3d		=
	jr z,l5479h		;5436	28 41		( A
	ld a,(ix+020h)		;5438	dd 7e 20	. ~  
	and a			;543b	a7		.
	ld hl,0fffch		;543c	21 fc ff	! . .
	jr z,l5444h		;543f	28 03		( .
	ld hl,00004h		;5441	21 04 00	! . .
l5444h:
	call 06c0ch		;5444	cd 0c 6c	. . l
	ld (ix+018h),010h	;5447	dd 36 18 10	. 6 . .
	ld (ix+017h),0c0h	;544b	dd 36 17 c0	. 6 . .
	set 2,(ix+015h)		;544f	dd cb 15 d6	. . . .
	jp 06c1dh		;5453	c3 1d 6c	. . l
l5456h:
	call 06a9ah		;5456	cd 9a 6a	. . j
	call 06adfh		;5459	cd df 6a	. . j
	ret nz			;545c	c0		.
	jp 06c1dh		;545d	c3 1d 6c	. . l
l5460h:
	ld iy,0ca40h		;5460	fd 21 40 ca	. ! @ .
	ld a,(0ca19h)		;5464	3a 19 ca	: . .
	cp 004h			;5467	fe 04		. .
	ld a,010h		;5469	3e 10		> .
	jr c,l546fh		;546b	38 02		8 .
	ld a,014h		;546d	3e 14		> .
l546fh:
	call 06b6ch		;546f	cd 6c 6b	. l k
	ld (ix+018h),018h	;5472	dd 36 18 18	. 6 . .
	jp 06c1dh		;5476	c3 1d 6c	. . l
l5479h:
	ld a,(0ca04h)		;5479	3a 04 ca	: . .
	and a			;547c	a7		.
	ret z			;547d	c8		.
	call 06adfh		;547e	cd df 6a	. . j
	ret nz			;5481	c0		.
	call 06ad2h		;5482	cd d2 6a	. . j
	ret z			;5485	c8		.
	res 2,(ix+015h)		;5486	dd cb 15 96	. . . .
	call 0755dh		;548a	cd 5d 75	. ] u
	ld a,e			;548d	7b		{
	bit 7,a			;548e	cb 7f		. .
	ld hl,00040h		;5490	21 40 00	! @ .
	jr z,l549ah		;5493	28 05		( .
	neg			;5495	ed 44		. D
	ld hl,0ffc0h		;5497	21 c0 ff	! . .
l549ah:
	cp 002h			;549a	fe 02		. .
	jr c,l54a4h		;549c	38 06		8 .
	ld de,00000h		;549e	11 00 00	. . .
	jp 06bebh		;54a1	c3 eb 6b	. . k
l54a4h:
	ld a,d			;54a4	7a		z
	bit 7,a			;54a5	cb 7f		. .
	ld de,00080h		;54a7	11 80 00	. . .
	jr z,l54afh		;54aa	28 03		( .
	ld de,0ff80h		;54ac	11 80 ff	. . .
l54afh:
	ld hl,00000h		;54af	21 00 00	! . .
	call 06bebh		;54b2	cd eb 6b	. . k
	jp 06c1dh		;54b5	c3 1d 6c	. . l
	and 02fh		;54b8	e6 2f		. /
	ret nz			;54ba	c0		.
	inc (ix+02ah)		;54bb	dd 34 2a	. 4 *
	jp 07143h		;54be	c3 43 71	. C q
	ld a,(ix+001h)		;54c1	dd 7e 01	. ~ .
	dec a			;54c4	3d		=
	jr z,l5525h		;54c5	28 5e		( ^
	dec a			;54c7	3d		=
	ret z			;54c8	c8		.
	call 06796h		;54c9	cd 96 67	. . g
	ld b,a			;54cc	47		G
	ld (ix+021h),a		;54cd	dd 77 21	. w !
	and 003h		;54d0	e6 03		. .
	add a,a			;54d2	87		.
	ld l,a			;54d3	6f		o
	add a,a			;54d4	87		.
	add a,l			;54d5	85		.
	ld l,a			;54d6	6f		o
	ld h,000h		;54d7	26 00		& .
	ld de,0550dh		;54d9	11 0d 55	. . U
	add hl,de		;54dc	19		.
	ld e,(hl)		;54dd	5e		^
	inc hl			;54de	23		#
	ld d,(hl)		;54df	56		V
	ex de,hl		;54e0	eb		.
	call 06c0ch		;54e1	cd 0c 6c	. . l
	ex de,hl		;54e4	eb		.
	inc hl			;54e5	23		#
	ld e,(hl)		;54e6	5e		^
	inc hl			;54e7	23		#
	ld d,(hl)		;54e8	56		V
	call 06bfdh		;54e9	cd fd 6b	. . k
	inc hl			;54ec	23		#
	ld a,(hl)		;54ed	7e		~
	ld (ix+022h),a		;54ee	dd 77 22	. w "
	inc hl			;54f1	23		#
	ld a,(hl)		;54f2	7e		~
	ld (ix+023h),a		;54f3	dd 77 23	. w #
	ld a,b			;54f6	78		x
	rlca			;54f7	07		.
	call c,06b53h		;54f8	dc 53 6b	. S k
	ld (ix+017h),017h	;54fb	dd 36 17 17	. 6 . .
	ld de,l5508h		;54ff	11 08 55	. . U
	call 06aach		;5502	cd ac 6a	. . j
	jp 06c1dh		;5505	c3 1d 6c	. . l
l5508h:
	nop			;5508	00		.
	nop			;5509	00		.
	nop			;550a	00		.
	nop			;550b	00		.
	ld bc,00010h		;550c	01 10 00	. . .
	ld b,b			;550f	40		@
	rst 38h			;5510	ff		.
	ret nz			;5511	c0		.
	nop			;5512	00		.
	jr l5515h		;5513	18 00		. .
l5515h:
	ld b,b			;5515	40		@
	rst 38h			;5516	ff		.
	and b			;5517	a0		.
	nop			;5518	00		.
	djnz l551bh		;5519	10 00		. .
l551bh:
	ld b,b			;551b	40		@
	rst 38h			;551c	ff		.
	ret nz			;551d	c0		.
	nop			;551e	00		.
	inc b			;551f	04		.
	nop			;5520	00		.
	ret nz			;5521	c0		.
	rst 38h			;5522	ff		.
	ld h,b			;5523	60		`
	nop			;5524	00		.
l5525h:
	call sub_554bh		;5525	cd 4b 55	. K U
	call 06a9ah		;5528	cd 9a 6a	. . j
	ld e,(ix+022h)		;552b	dd 5e 22	. ^ "
	ld d,(ix+023h)		;552e	dd 56 23	. V #
	call 06b07h		;5531	cd 07 6b	. . k
	jp nc,06b23h		;5534	d2 23 6b	. # k
	ld a,(0ca04h)		;5537	3a 04 ca	: . .
	and a			;553a	a7		.
	ret z			;553b	c8		.
	call 06ad2h		;553c	cd d2 6a	. . j
	ret nz			;553f	c0		.
	ld (ix+017h),017h	;5540	dd 36 17 17	. 6 . .
	call 0750fh		;5544	cd 0f 75	. . u
	ret c			;5547	d8		.
	jp 07143h		;5548	c3 43 71	. C q
sub_554bh:
	ld a,(ix+021h)		;554b	dd 7e 21	. ~ !
	ld b,a			;554e	47		G
	rlca			;554f	07		.
	rlca			;5550	07		.
	ret nc			;5551	d0		.
	ld a,b			;5552	78		x
	rlca			;5553	07		.
	ld a,(ix+00ah)		;5554	dd 7e 0a	. ~ .
	jr c,l555eh		;5557	38 05		8 .
	cp 003h			;5559	fe 03		. .
	jr c,l5561h		;555b	38 04		8 .
	ret			;555d	c9		.
l555eh:
	cp 01ch			;555e	fe 1c		. .
	ret c			;5560	d8		.
l5561h:
	ld iy,0ca40h		;5561	fd 21 40 ca	. ! @ .
	ld a,(ix+021h)		;5565	dd 7e 21	. ~ !
	and 003h		;5568	e6 03		. .
	ld l,a			;556a	6f		o
	ld h,000h		;556b	26 00		& .
	ld de,l5578h		;556d	11 78 55	. x U
	add hl,de		;5570	19		.
	ld a,(hl)		;5571	7e		~
	call 06b6ch		;5572	cd 6c 6b	. l k
	jp 06c1dh		;5575	c3 1d 6c	. . l
l5578h:
	jr $+34			;5578	18 20		.  
	jr z,$+42		;557a	28 28		( (
	ld a,(ix+001h)		;557c	dd 7e 01	. ~ .
	call sub_461ah		;557f	cd 1a 46	. . F
	sub d			;5582	92		.
	ld d,l			;5583	55		U
	cp c			;5584	b9		.
	ld d,l			;5585	55		U
	call po,0f355h		;5586	e4 55 f3	. U .
	ld d,l			;5589	55		U
	ld d,056h		;558a	16 56		. V
	dec e			;558c	1d		.
	ld d,(hl)		;558d	56		V
	ld b,d			;558e	42		B
	ld d,(hl)		;558f	56		V
	ld b,d			;5590	42		B
	ld d,(hl)		;5591	56		V
	call 06796h		;5592	cd 96 67	. . g
	ld d,a			;5595	57		W
	and 07fh		;5596	e6 7f		. .
	ld (ix+008h),a		;5598	dd 77 08	. w .
	call 06796h		;559b	cd 96 67	. . g
	ld (ix+00ah),a		;559e	dd 77 0a	. w .
	ld a,d			;55a1	7a		z
	rlca			;55a2	07		.
	jr nc,l55a8h		;55a3	30 03		0 .
	inc (ix+022h)		;55a5	dd 34 22	. 4 "
l55a8h:
	call sub_5705h		;55a8	cd 05 57	. . W
	call sub_5723h		;55ab	cd 23 57	. # W
	ld (ix+020h),040h	;55ae	dd 36 20 40	. 6   @
	ld (ix+018h),010h	;55b2	dd 36 18 10	. 6 . .
	jp 06c1dh		;55b6	c3 1d 6c	. . l
	call sub_56d8h		;55b9	cd d8 56	. . V
	and a			;55bc	a7		.
	jp z,l569fh		;55bd	ca 9f 56	. . V
	call sub_5715h		;55c0	cd 15 57	. . W
	call 06adfh		;55c3	cd df 6a	. . j
	ld a,003h		;55c6	3e 03		> .
	jr z,l5612h		;55c8	28 48		( H
	call sub_572fh		;55ca	cd 2f 57	. / W
	jr nz,l55dah		;55cd	20 0b		  .
	jp c,l56b6h		;55cf	da b6 56	. . V
	dec (ix+020h)		;55d2	dd 35 20	. 5  
	ret nz			;55d5	c0		.
	ld (ix+020h),040h	;55d6	dd 36 20 40	. 6   @
l55dah:
	ld b,010h		;55da	06 10		. .
	ld (ix+017h),b		;55dc	dd 70 17	. p .
	ld a,002h		;55df	3e 02		> .
	jp l5612h		;55e1	c3 12 56	. . V
	call sub_56edh		;55e4	cd ed 56	. . V
	ret nz			;55e7	c0		.
	call sub_5705h		;55e8	cd 05 57	. . W
	call sub_5723h		;55eb	cd 23 57	. # W
	ld a,001h		;55ee	3e 01		> .
	jp l5612h		;55f0	c3 12 56	. . V
	call 06b94h		;55f3	cd 94 6b	. . k
	ld (ix+024h),c		;55f6	dd 71 24	. q $
	ld a,c			;55f9	79		y
	add a,002h		;55fa	c6 02		. .
	and 004h		;55fc	e6 04		. .
	ld b,a			;55fe	47		G
	ld a,(ix+022h)		;55ff	dd 7e 22	. ~ "
	and 004h		;5602	e6 04		. .
	cp b			;5604	b8		.
	ld a,005h		;5605	3e 05		> .
	jr z,l560ah		;5607	28 01		( .
	dec a			;5609	3d		=
l560ah:
	ld (ix+017h),004h	;560a	dd 36 17 04	. 6 . .
	ld (ix+021h),004h	;560e	dd 36 21 04	. 6 ! .
l5612h:
	ld (ix+001h),a		;5612	dd 77 01	. w .
	ret			;5615	c9		.
	call sub_56edh		;5616	cd ed 56	. . V
	ret nz			;5619	c0		.
	jp 06c1dh		;561a	c3 1d 6c	. . l
	call 06be6h		;561d	cd e6 6b	. . k
	dec (ix+021h)		;5620	dd 35 21	. 5 !
	ret nz			;5623	c0		.
	call 07143h		;5624	cd 43 71	. C q
	call sub_5705h		;5627	cd 05 57	. . W
	ld a,(0ca19h)		;562a	3a 19 ca	: . .
	cp 006h			;562d	fe 06		. .
	ld a,020h		;562f	3e 20		>  
	jr c,l5635h		;5631	38 02		8 .
	ld a,010h		;5633	3e 10		> .
l5635h:
	add a,(ix+02dh)		;5635	dd 86 2d	. . -
	ld (ix+018h),a		;5638	dd 77 18	. w .
	call sub_5723h		;563b	cd 23 57	. # W
	ld a,001h		;563e	3e 01		> .
	jr l5612h		;5640	18 d0		. .
	ld (ix+03dh),001h	;5642	dd 36 3d 01	. 6 = .
	call sub_5663h		;5646	cd 63 56	. c V
	ld de,00100h		;5649	11 00 01	. . .
	ld hl,002c0h		;564c	21 c0 02	! . .
	call 0759ah		;564f	cd 9a 75	. . u
	cp 003h			;5652	fe 03		. .
	ret nz			;5654	c0		.
	call 06bf0h		;5655	cd f0 6b	. . k
	call sub_5688h		;5658	cd 88 56	. . V
	call sub_5705h		;565b	cd 05 57	. . W
	ld a,001h		;565e	3e 01		> .
	jp l5612h		;5660	c3 12 56	. . V
sub_5663h:
	ld l,(ix+00fh)		;5663	dd 6e 0f	. n .
	ld h,(ix+010h)		;5666	dd 66 10	. f .
	ld e,(ix+00bh)		;5669	dd 5e 0b	. ^ .
	ld d,(ix+00ch)		;566c	dd 56 0c	. V .
	add hl,de		;566f	19		.
	ld a,h			;5670	7c		|
	and a			;5671	a7		.
	jp m,l5681h		;5672	fa 81 56	. . V
	ld de,00100h		;5675	11 00 01	. . .
	call sub_4650h		;5678	cd 50 46	. P F
	jr c,l5681h		;567b	38 04		8 .
	ex de,hl		;567d	eb		.
	call 06bfah		;567e	cd fa 6b	. . k
l5681h:
	ld (ix+00bh),l		;5681	dd 75 0b	. u .
	ld (ix+00ch),h		;5684	dd 74 0c	. t .
	ret			;5687	c9		.
sub_5688h:
	ld d,(ix+00ah)		;5688	dd 56 0a	. V .
	inc d			;568b	14		.
	ld e,(ix+008h)		;568c	dd 5e 08	. ^ .
	inc e			;568f	1c		.
	inc e			;5690	1c		.
	call 0753ch		;5691	cd 3c 75	. < u
	ld a,(0ca1ah)		;5694	3a 1a ca	: . .
	ld (ix+007h),a		;5697	dd 77 07	. w .
	ret nz			;569a	c0		.
	inc (ix+008h)		;569b	dd 34 08	. 4 .
	ret			;569e	c9		.
l569fh:
	ld hl,0ff00h		;569f	21 00 ff	! . .
	ld de,0ffc0h		;56a2	11 c0 ff	. . .
	ld a,(ix+022h)		;56a5	dd 7e 22	. ~ "
	and a			;56a8	a7		.
	jr z,l56aeh		;56a9	28 03		( .
	ld de,00060h		;56ab	11 60 00	. ` .
l56aeh:
	call 06bebh		;56ae	cd eb 6b	. . k
	ld hl,00040h		;56b1	21 40 00	! @ .
	jr l56cbh		;56b4	18 15		. .
l56b6h:
	ld hl,0fec0h		;56b6	21 c0 fe	! . .
	ld de,0ffe0h		;56b9	11 e0 ff	. . .
	ld a,(ix+022h)		;56bc	dd 7e 22	. ~ "
	and a			;56bf	a7		.
	jr z,l56c5h		;56c0	28 03		( .
	ld de,00040h		;56c2	11 40 00	. @ .
l56c5h:
	call 06bebh		;56c5	cd eb 6b	. . k
	ld hl,00020h		;56c8	21 20 00	!   .
l56cbh:
	call 06c0ch		;56cb	cd 0c 6c	. . l
	ld a,018h		;56ce	3e 18		> .
	call sub_4af5h		;56d0	cd f5 4a	. . J
	ld a,006h		;56d3	3e 06		> .
	jp l5612h		;56d5	c3 12 56	. . V
sub_56d8h:
	ld a,(ix+022h)		;56d8	dd 7e 22	. ~ "
	and a			;56db	a7		.
	ld de,0ffe0h		;56dc	11 e0 ff	. . .
	ld hl,002e0h		;56df	21 e0 02	! . .
	jr z,l56eah		;56e2	28 06		( .
	ld de,002e0h		;56e4	11 e0 02	. . .
	ld hl,002e0h		;56e7	21 e0 02	! . .
l56eah:
	jp 0759ah		;56ea	c3 9a 75	. . u
sub_56edh:
	call 06be6h		;56ed	cd e6 6b	. . k
	ld (ix+005h),004h	;56f0	dd 36 05 04	. 6 . .
	call 06ad2h		;56f4	cd d2 6a	. . j
	ret nz			;56f7	c0		.
	ld a,(ix+022h)		;56f8	dd 7e 22	. ~ "
	xor 001h		;56fb	ee 01		. .
	ld (ix+022h),a		;56fd	dd 77 22	. w "
	call sub_5723h		;5700	cd 23 57	. # W
	xor a			;5703	af		.
	ret			;5704	c9		.
sub_5705h:
	ld hl,00060h		;5705	21 60 00	! ` .
	ld de,0ffc0h		;5708	11 c0 ff	. . .
	ld a,(ix+022h)		;570b	dd 7e 22	. ~ "
	and a			;570e	a7		.
	jr z,l5712h		;570f	28 01		( .
	ex de,hl		;5711	eb		.
l5712h:
	jp 06bfdh		;5712	c3 fd 6b	. . k
sub_5715h:
	ld a,(0ca02h)		;5715	3a 02 ca	: . .
	rrca			;5718	0f		.
	ret c			;5719	d8		.
	ld a,(ix+005h)		;571a	dd 7e 05	. ~ .
	xor 001h		;571d	ee 01		. .
	ld (ix+005h),a		;571f	dd 77 05	. w .
	ret			;5722	c9		.
sub_5723h:
	ld a,(ix+022h)		;5723	dd 7e 22	. ~ "
	and a			;5726	a7		.
	jr z,l572bh		;5727	28 02		( .
	ld a,002h		;5729	3e 02		> .
l572bh:
	ld (ix+005h),a		;572b	dd 77 05	. w .
	ret			;572e	c9		.
sub_572fh:
	ld de,l575bh		;572f	11 5b 57	. [ W
	call sub_573fh		;5732	cd 3f 57	. ? W
	ret z			;5735	c8		.
	ld de,l575fh		;5736	11 5f 57	. _ W
	call sub_573fh		;5739	cd 3f 57	. ? W
	ret nz			;573c	c0		.
	scf			;573d	37		7
	ret			;573e	c9		.
sub_573fh:
	ld a,(ix+022h)		;573f	dd 7e 22	. ~ "
	and a			;5742	a7		.
	ld a,000h		;5743	3e 00		> .
	jr nz,l5748h		;5745	20 01		  .
	inc a			;5747	3c		<
l5748h:
	ld l,a			;5748	6f		o
	ld h,000h		;5749	26 00		& .
	add hl,hl		;574b	29		)
	add hl,de		;574c	19		.
	ld a,(hl)		;574d	7e		~
	add a,(ix+008h)		;574e	dd 86 08	. . .
	ld e,a			;5751	5f		_
	inc hl			;5752	23		#
	ld a,(hl)		;5753	7e		~
	add a,(ix+00ah)		;5754	dd 86 0a	. . .
	ld d,a			;5757	57		W
	jp 0753ch		;5758	c3 3c 75	. < u
l575bh:
	ld bc,00103h		;575b	01 03 01	. . .
	rst 38h			;575e	ff		.
l575fh:
	ei			;575f	fb		.
	inc bc			;5760	03		.
	ei			;5761	fb		.
	rst 38h			;5762	ff		.
	ld a,(ix+001h)		;5763	dd 7e 01	. ~ .
	dec a			;5766	3d		=
	jr z,l576dh		;5767	28 04		( .
	dec a			;5769	3d		=
	jr z,l578ah		;576a	28 1e		( .
	ret			;576c	c9		.
l576dh:
	ld a,(ix+020h)		;576d	dd 7e 20	. ~  
	and a			;5770	a7		.
	ld a,002h		;5771	3e 02		> .
	jr nz,l5776h		;5773	20 01		  .
	inc a			;5775	3c		<
l5776h:
	ld (ix+024h),a		;5776	dd 77 24	. w $
	call sub_57a9h		;5779	cd a9 57	. . W
	inc (ix+017h)		;577c	dd 34 17	. 4 .
	ld a,(ix+023h)		;577f	dd 7e 23	. ~ #
	and 001h		;5782	e6 01		. .
	ld (ix+023h),a		;5784	dd 77 23	. w #
	jp 06c1dh		;5787	c3 1d 6c	. . l
l578ah:
	call sub_5837h		;578a	cd 37 58	. 7 X
	call sub_57c8h		;578d	cd c8 57	. . W
	call sub_5822h		;5790	cd 22 58	. " X
	call sub_57dfh		;5793	cd df 57	. . W
	inc (ix+025h)		;5796	dd 34 25	. 4 %
	ld a,(ix+025h)		;5799	dd 7e 25	. ~ %
	cp 00ah			;579c	fe 0a		. .
	ret nz			;579e	c0		.
	ld (ix+025h),000h	;579f	dd 36 25 00	. 6 % .
	call sub_5856h		;57a3	cd 56 58	. V X
	call c,sub_5883h	;57a6	dc 83 58	. . X
sub_57a9h:
	ld l,(ix+024h)		;57a9	dd 6e 24	. n $
	ld h,000h		;57ac	26 00		& .
	add hl,hl		;57ae	29		)
	add hl,hl		;57af	29		)
	ld de,l58ach		;57b0	11 ac 58	. . X
	add hl,de		;57b3	19		.
	ld a,(hl)		;57b4	7e		~
	ld (ix+00bh),a		;57b5	dd 77 0b	. w .
	inc hl			;57b8	23		#
	ld a,(hl)		;57b9	7e		~
	ld (ix+00ch),a		;57ba	dd 77 0c	. w .
	inc hl			;57bd	23		#
	ld a,(hl)		;57be	7e		~
	ld (ix+00dh),a		;57bf	dd 77 0d	. w .
	inc hl			;57c2	23		#
	ld a,(hl)		;57c3	7e		~
	ld (ix+00eh),a		;57c4	dd 77 0e	. w .
	ret			;57c7	c9		.
sub_57c8h:
	ld a,(ix+016h)		;57c8	dd 7e 16	. ~ .
	cp 010h			;57cb	fe 10		. .
	ret nc			;57cd	d0		.
	ld (ix+027h),008h	;57ce	dd 36 27 08	. 6 ' .
	ld a,(ix+028h)		;57d2	dd 7e 28	. ~ (
	and a			;57d5	a7		.
	ret nz			;57d6	c0		.
	inc (ix+028h)		;57d7	dd 34 28	. 4 (
	ld a,024h		;57da	3e 24		> $
	jp sub_4af5h		;57dc	c3 f5 4a	. . J
sub_57dfh:
	ld a,(ix+027h)		;57df	dd 7e 27	. ~ '
	and a			;57e2	a7		.
	ret nz			;57e3	c0		.
	call 06ad2h		;57e4	cd d2 6a	. . j
	ret nz			;57e7	c0		.
	call 0755dh		;57e8	cd 5d 75	. ] u
	ld a,d			;57eb	7a		z
	bit 7,a			;57ec	cb 7f		. .
	jr z,l57f2h		;57ee	28 02		( .
	neg			;57f0	ed 44		. D
l57f2h:
	cp 00ah			;57f2	fe 0a		. .
	ret nc			;57f4	d0		.
	cp 004h			;57f5	fe 04		. .
	ret c			;57f7	d8		.
	ld a,e			;57f8	7b		{
	bit 7,a			;57f9	cb 7f		. .
	jr z,l57ffh		;57fb	28 02		( .
	neg			;57fd	ed 44		. D
l57ffh:
	cp 00ah			;57ff	fe 0a		. .
	ret nc			;5801	d0		.
	cp 004h			;5802	fe 04		. .
	ret c			;5804	d8		.
	ld (ix+017h),010h	;5805	dd 36 17 10	. 6 . .
	ld hl,0ce6bh		;5809	21 6b ce	! k .
	inc (hl)		;580c	34		4
	ld a,(hl)		;580d	7e		~
	rrca			;580e	0f		.
	ret c			;580f	d8		.
	ld b,016h		;5810	06 16		. .
	ld a,(0ca19h)		;5812	3a 19 ca	: . .
	cp 004h			;5815	fe 04		. .
	jr nc,l581bh		;5817	30 02		0 .
	ld b,012h		;5819	06 12		. .
l581bh:
	ld a,b			;581b	78		x
	ld (0ca26h),a		;581c	32 26 ca	2 & .
	jp 0714ah		;581f	c3 4a 71	. J q
sub_5822h:
	ld a,(ix+023h)		;5822	dd 7e 23	. ~ #
	xor 001h		;5825	ee 01		. .
	ld (ix+023h),a		;5827	dd 77 23	. w #
	ld b,a			;582a	47		G
	ld a,(ix+024h)		;582b	dd 7e 24	. ~ $
	add a,a			;582e	87		.
	add a,b			;582f	80		.
	add a,(ix+027h)		;5830	dd 86 27	. . '
	ld (ix+005h),a		;5833	dd 77 05	. w .
	ret			;5836	c9		.
sub_5837h:
	ld a,(0ca02h)		;5837	3a 02 ca	: . .
	xor (ix+02dh)		;583a	dd ae 2d	. . -
	and 003h		;583d	e6 03		. .
	ret nz			;583f	c0		.
	ld e,(ix+008h)		;5840	dd 5e 08	. ^ .
	ld d,(ix+00ah)		;5843	dd 56 0a	. V .
	inc d			;5846	14		.
	inc e			;5847	1c		.
	call 0753ch		;5848	cd 3c 75	. < u
	ret c			;584b	d8		.
	ret z			;584c	c8		.
	ld (ix+016h),000h	;584d	dd 36 16 00	. 6 . .
	ld (ix+004h),001h	;5851	dd 36 04 01	. 6 . .
	ret			;5855	c9		.
sub_5856h:
	call sub_585eh		;5856	cd 5e 58	. ^ X
	sub 0b6h		;5859	d6 b6		. .
	cp 00dh			;585b	fe 0d		. .
	ret			;585d	c9		.
sub_585eh:
	ld de,(0ca1ch)		;585e	ed 5b 1c ca	. [ . .
	ld a,d			;5862	7a		z
	and 003h		;5863	e6 03		. .
	ld d,a			;5865	57		W
	ld a,(ix+009h)		;5866	dd 7e 09	. ~ .
	add a,e			;5869	83		.
	ld a,(ix+00ah)		;586a	dd 7e 0a	. ~ .
	adc a,002h		;586d	ce 02		. .
	add a,d			;586f	82		.
	and 0fch		;5870	e6 fc		. .
	sub d			;5872	92		.
	ld d,a			;5873	57		W
	ld a,(ix+008h)		;5874	dd 7e 08	. ~ .
	inc a			;5877	3c		<
	and 0fch		;5878	e6 fc		. .
	ld e,a			;587a	5f		_
	inc d			;587b	14		.
	inc e			;587c	1c		.
	call 07b18h		;587d	cd 18 7b	. . {
	ld a,(de)		;5880	1a		.
	ccf			;5881	3f		?
	ret			;5882	c9		.
sub_5883h:
	call sub_4bb0h		;5883	cd b0 4b	. . K
	call sub_588ch		;5886	cd 8c 58	. . X
	jp sub_4b99h		;5889	c3 99 4b	. . K
sub_588ch:
	ld l,(ix+021h)		;588c	dd 6e 21	. n !
	ld h,000h		;588f	26 00		& .
	add hl,hl		;5891	29		)
	ld de,08400h		;5892	11 00 84	. . .
	add hl,de		;5895	19		.
	ld e,(hl)		;5896	5e		^
	inc hl			;5897	23		#
	ld d,(hl)		;5898	56		V
	ld l,(ix+022h)		;5899	dd 6e 22	. n "
	ld h,000h		;589c	26 00		& .
	add hl,de		;589e	19		.
	ld a,(hl)		;589f	7e		~
	inc a			;58a0	3c		<
	ret z			;58a1	c8		.
	dec a			;58a2	3d		=
	and 003h		;58a3	e6 03		. .
	ld (ix+024h),a		;58a5	dd 77 24	. w $
	inc (ix+022h)		;58a8	dd 34 22	. 4 "
	ret			;58ab	c9		.
l58ach:
	nop			;58ac	00		.
	nop			;58ad	00		.
	ld h,b			;58ae	60		`
	nop			;58af	00		.
	nop			;58b0	00		.
	nop			;58b1	00		.
	and b			;58b2	a0		.
	rst 38h			;58b3	ff		.
	ld h,b			;58b4	60		`
	nop			;58b5	00		.
	nop			;58b6	00		.
	nop			;58b7	00		.
	and b			;58b8	a0		.
	rst 38h			;58b9	ff		.
	nop			;58ba	00		.
	nop			;58bb	00		.
sub_58bch:
	ld a,(ix+008h)		;58bc	dd 7e 08	. ~ .
	cp 00bh			;58bf	fe 0b		. .
	ret nc			;58c1	d0		.
	ld a,(ix+024h)		;58c2	dd 7e 24	. ~ $
	and a			;58c5	a7		.
	jr z,l58cch		;58c6	28 04		( .
	dec (ix+024h)		;58c8	dd 35 24	. 5 $
	ret			;58cb	c9		.
l58cch:
	inc (ix+025h)		;58cc	dd 34 25	. 4 %
	ld a,(ix+025h)		;58cf	dd 7e 25	. ~ %
	cp 004h			;58d2	fe 04		. .
	ret nc			;58d4	d0		.
	ld (ix+024h),008h	;58d5	dd 36 24 08	. 6 $ .
	ld a,068h		;58d9	3e 68		> h
	call 0684ch		;58db	cd 4c 68	. L h
	ret c			;58de	d8		.
	ld de,00602h		;58df	11 02 06	. . .
	ld l,(ix+008h)		;58e2	dd 6e 08	. n .
	ld h,(ix+00ah)		;58e5	dd 66 0a	. f .
	add hl,de		;58e8	19		.
	ld (iy+008h),l		;58e9	fd 75 08	. u .
	ld (iy+00ah),h		;58ec	fd 74 0a	. t .
	ret			;58ef	c9		.
	call sub_58ffh		;58f0	cd ff 58	. . X
	call 059aah		;58f3	cd aa 59	. . Y
	call sub_59d0h		;58f6	cd d0 59	. . Y
	ld de,05a19h		;58f9	11 19 5a	. . Z
	jp 07b65h		;58fc	c3 65 7b	. e {
sub_58ffh:
	ld a,(ix+001h)		;58ff	dd 7e 01	. ~ .
	call sub_461ah		;5902	cd 1a 46	. . F
	ld de,03559h		;5905	11 59 35	. Y 5
	ld e,c			;5908	59		Y
	ld b,a			;5909	47		G
	ld e,c			;590a	59		Y
	ld h,(hl)		;590b	66		f
	ld e,c			;590c	59		Y
	ld l,a			;590d	6f		o
	ld e,c			;590e	59		Y
	add a,e			;590f	83		.
	ld e,c			;5910	59		Y
	call 06754h		;5911	cd 54 67	. T g
	ld (ix+022h),d		;5914	dd 72 22	. r "
	call 06796h		;5917	cd 96 67	. . g
	ld b,a			;591a	47		G
	and 07fh		;591b	e6 7f		. .
	ld (ix+020h),a		;591d	dd 77 20	. w  
	ld a,b			;5920	78		x
	rlca			;5921	07		.
	jr nc,l5927h		;5922	30 03		0 .
	inc (ix+021h)		;5924	dd 34 21	. 4 !
l5927h:
	call sub_4678h		;5927	cd 78 46	. x F
	and 007h		;592a	e6 07		. .
	jr nz,l592fh		;592c	20 01		  .
	inc a			;592e	3c		<
l592fh:
	ld (ix+023h),a		;592f	dd 77 23	. w #
	jp 06c1dh		;5932	c3 1d 6c	. . l
	ld a,(ix+00ah)		;5935	dd 7e 0a	. ~ .
	cp (ix+020h)		;5938	dd be 20	. .  
	ret nz			;593b	c0		.
	inc (ix+017h)		;593c	dd 34 17	. 4 .
	ld a,01ah		;593f	3e 1a		> .
	call sub_4af5h		;5941	cd f5 4a	. . J
	jp 06c1dh		;5944	c3 1d 6c	. . l
	call sub_58bch		;5947	cd bc 58	. . X
	call 06ad2h		;594a	cd d2 6a	. . j
	ret nz			;594d	c0		.
	call sub_5984h		;594e	cd 84 59	. . Y
	ld a,(ix+008h)		;5951	dd 7e 08	. ~ .
	dec (ix+008h)		;5954	dd 35 08	. 5 .
	ld a,(ix+021h)		;5957	dd 7e 21	. ~ !
	and a			;595a	a7		.
	ret z			;595b	c8		.
	ld a,(ix+023h)		;595c	dd 7e 23	. ~ #
	cp (ix+008h)		;595f	dd be 08	. . .
	ret c			;5962	d8		.
	jp 06c1dh		;5963	c3 1d 6c	. . l
	ld a,(ix+00ah)		;5966	dd 7e 0a	. ~ .
	cp 006h			;5969	fe 06		. .
	ret nc			;596b	d0		.
	jp 06c1dh		;596c	c3 1d 6c	. . l
	call 06ad2h		;596f	cd d2 6a	. . j
	ret nz			;5972	c0		.
	ld (ix+017h),006h	;5973	dd 36 17 06	. 6 . .
	inc (ix+008h)		;5977	dd 34 08	. 4 .
	ld a,(ix+008h)		;597a	dd 7e 08	. ~ .
	cp (ix+022h)		;597d	dd be 22	. . "
	jp z,06c1dh		;5980	ca 1d 6c	. . l
	ret			;5983	c9		.
sub_5984h:
	ld a,(ix+022h)		;5984	dd 7e 22	. ~ "
	sub (ix+008h)		;5987	dd 96 08	. . .
	ld b,001h		;598a	06 01		. .
	jr c,l5996h		;598c	38 08		8 .
	ld l,a			;598e	6f		o
	ld h,000h		;598f	26 00		& .
	ld de,l599ah		;5991	11 9a 59	. . Y
	add hl,de		;5994	19		.
	ld b,(hl)		;5995	46		F
l5996h:
	ld (ix+017h),b		;5996	dd 70 17	. p .
	ret			;5999	c9		.
l599ah:
	rlca			;599a	07		.
	ld b,005h		;599b	06 05		. .
	inc b			;599d	04		.
	inc bc			;599e	03		.
	inc bc			;599f	03		.
	ld (bc),a		;59a0	02		.
	ld (bc),a		;59a1	02		.
	ld (bc),a		;59a2	02		.
	ld (bc),a		;59a3	02		.
	ld (bc),a		;59a4	02		.
	ld bc,00101h		;59a5	01 01 01	. . .
	ld bc,00101h		;59a8	01 01 01	. . .
	inc bc			;59ab	03		.
	dec b			;59ac	05		.
	ld a,(ix+022h)		;59ad	dd 7e 22	. ~ "
	sub (ix+008h)		;59b0	dd 96 08	. . .
	ld d,a			;59b3	57		W
	cp b			;59b4	b8		.
	jr nc,l59b8h		;59b5	30 01		0 .
	ld b,a			;59b7	47		G
l59b8h:
	ld (ix+006h),b		;59b8	dd 70 06	. p .
	ld a,(0ca02h)		;59bb	3a 02 ca	: . .
	rrca			;59be	0f		.
	ld b,000h		;59bf	06 00		. .
	jr c,l59cch		;59c1	38 09		8 .
	ld a,d			;59c3	7a		z
	sub c			;59c4	91		.
	jr c,l59cch		;59c5	38 05		8 .
	ld b,001h		;59c7	06 01		. .
	jr z,l59cch		;59c9	28 01		( .
	inc b			;59cb	04		.
l59cch:
	ld (ix+005h),b		;59cc	dd 70 05	. p .
	ret			;59cf	c9		.
sub_59d0h:
	ld a,(0ca02h)		;59d0	3a 02 ca	: . .
	xor (ix+02dh)		;59d3	dd ae 2d	. . -
	and 00fh		;59d6	e6 0f		. .
	ret nz			;59d8	c0		.
	call 06b94h		;59d9	cd 94 6b	. . k
	ld l,c			;59dc	69		i
	srl l			;59dd	cb 3d		. =
	ld h,000h		;59df	26 00		& .
	add hl,hl		;59e1	29		)
	ld de,l5a11h		;59e2	11 11 5a	. . Z
	add hl,de		;59e5	19		.
	ld c,(hl)		;59e6	4e		N
	inc hl			;59e7	23		#
	ld b,(hl)		;59e8	46		F
	ld l,(ix+008h)		;59e9	dd 6e 08	. n .
	ld h,(ix+00ah)		;59ec	dd 66 0a	. f .
	push hl			;59ef	e5		.
	add hl,bc		;59f0	09		.
	call sub_5a0ah		;59f1	cd 0a 5a	. . Z
	ld l,(ix+007h)		;59f4	dd 6e 07	. n .
	ld h,(ix+008h)		;59f7	dd 66 08	. f .
	ld e,(ix+009h)		;59fa	dd 5e 09	. ^ .
	ld d,(ix+00ah)		;59fd	dd 56 0a	. V .
	ld bc,00c00h		;5a00	01 00 0c	. . .
	call 07725h		;5a03	cd 25 77	. % w
	call nc,07143h		;5a06	d4 43 71	. C q
	pop hl			;5a09	e1		.
sub_5a0ah:
	ld (ix+008h),l		;5a0a	dd 75 08	. u .
	ld (ix+00ah),h		;5a0d	dd 74 0a	. t .
	ret			;5a10	c9		.
l5a11h:
	call m,0fc0ah		;5a11	fc 0a fc	. . .
	ld a,(bc)		;5a14	0a		.
	inc b			;5a15	04		.
	ld a,(bc)		;5a16	0a		.
	inc bc			;5a17	03		.
	ld bc,l5a25h		;5a18	01 25 5a	. % Z
	jr nc,l5a77h		;5a1b	30 5a		0 Z
	ld b,l			;5a1d	45		E
	ld e,d			;5a1e	5a		Z
	ld e,d			;5a1f	5a		Z
	ld e,d			;5a20	5a		Z
	ld l,a			;5a21	6f		o
	ld e,d			;5a22	5a		Z
	ld l,a			;5a23	6f		o
	ld e,d			;5a24	5a		Z
l5a25h:
	dec bc			;5a25	0b		.
	call m,00100h		;5a26	fc 00 01	. . .
	nop			;5a29	00		.
	cp 0fch			;5a2a	fe fc		. .
	rlca			;5a2c	07		.
	ld bc,0ff01h		;5a2d	01 01 ff	. . .
	dec d			;5a30	15		.
	call m,00100h		;5a31	fc 00 01	. . .
	nop			;5a34	00		.
	cp 0fch			;5a35	fe fc		. .
	rlca			;5a37	07		.
	ld bc,0fe01h		;5a38	01 01 fe	. . .
	ld bc,00100h		;5a3b	01 00 01	. . .
	ld (bc),a		;5a3e	02		.
	cp 001h			;5a3f	fe 01		. .
	rlca			;5a41	07		.
	ld bc,0ff06h		;5a42	01 06 ff	. . .
	dec d			;5a45	15		.
	call m,00100h		;5a46	fc 00 01	. . .
	nop			;5a49	00		.
	cp 0fch			;5a4a	fe fc		. .
	rlca			;5a4c	07		.
	ld bc,0fe01h		;5a4d	01 01 fe	. . .
	ld bc,00100h		;5a50	01 00 01	. . .
	inc bc			;5a53	03		.
	cp 001h			;5a54	fe 01		. .
	rlca			;5a56	07		.
	ld bc,0ff07h		;5a57	01 07 ff	. . .
	dec d			;5a5a	15		.
	call m,00100h		;5a5b	fc 00 01	. . .
	nop			;5a5e	00		.
	cp 0fch			;5a5f	fe fc		. .
	rlca			;5a61	07		.
	ld bc,0fe01h		;5a62	01 01 fe	. . .
	ld bc,00100h		;5a65	01 00 01	. . .
	inc b			;5a68	04		.
	cp 001h			;5a69	fe 01		. .
	rlca			;5a6b	07		.
	ld bc,0ff08h		;5a6c	01 08 ff	. . .
	dec d			;5a6f	15		.
	call m,00100h		;5a70	fc 00 01	. . .
	nop			;5a73	00		.
	cp 0fch			;5a74	fe fc		. .
	rlca			;5a76	07		.
l5a77h:
	ld bc,0fe01h		;5a77	01 01 fe	. . .
	ld bc,00100h		;5a7a	01 00 01	. . .
	dec b			;5a7d	05		.
	cp 001h			;5a7e	fe 01		. .
	rlca			;5a80	07		.
	ld bc,0ff09h		;5a81	01 09 ff	. . .
	ld a,(ix+001h)		;5a84	dd 7e 01	. ~ .
	dec a			;5a87	3d		=
	jr z,l5aa1h		;5a88	28 17		( .
	call 06754h		;5a8a	cd 54 67	. T g
	ld hl,00010h		;5a8d	21 10 00	! . .
	ld a,d			;5a90	7a		z
	rlca			;5a91	07		.
	jr nc,l5a97h		;5a92	30 03		0 .
	ld hl,0fff0h		;5a94	21 f0 ff	! . .
l5a97h:
	call 06bf3h		;5a97	cd f3 6b	. . k
	ld (ix+03dh),001h	;5a9a	dd 36 3d 01	. 6 = .
	jp 06c1dh		;5a9e	c3 1d 6c	. . l
l5aa1h:
	ret			;5aa1	c9		.
	ld a,(ix+001h)		;5aa2	dd 7e 01	. ~ .
	dec a			;5aa5	3d		=
	jr z,l5ad2h		;5aa6	28 2a		( *
	call 06796h		;5aa8	cd 96 67	. . g
	ld b,a			;5aab	47		G
	and 07fh		;5aac	e6 7f		. .
	jr nz,l5ab2h		;5aae	20 02		  .
	ld a,0fch		;5ab0	3e fc		> .
l5ab2h:
	ld (ix+024h),a		;5ab2	dd 77 24	. w $
	ld a,b			;5ab5	78		x
	rlca			;5ab6	07		.
	ld c,000h		;5ab7	0e 00		. .
	jr nc,l5abch		;5ab9	30 01		0 .
	inc c			;5abb	0c		.
l5abch:
	call 06796h		;5abc	cd 96 67	. . g
	ld d,a			;5abf	57		W
	and 07fh		;5ac0	e6 7f		. .
	ld (ix+00ah),a		;5ac2	dd 77 0a	. w .
	ld a,d			;5ac5	7a		z
	rlca			;5ac6	07		.
	ld a,c			;5ac7	79		y
	jr nc,l5acch		;5ac8	30 02		0 .
	add a,002h		;5aca	c6 02		. .
l5acch:
	call sub_5affh		;5acc	cd ff 5a	. . Z
	jp 06c1dh		;5acf	c3 1d 6c	. . l
l5ad2h:
	ld l,(ix+021h)		;5ad2	dd 6e 21	. n !
	ld h,(ix+022h)		;5ad5	dd 66 22	. f "
	ld e,(ix+023h)		;5ad8	dd 5e 23	. ^ #
	ld d,(ix+024h)		;5adb	dd 56 24	. V $
	add hl,de		;5ade	19		.
	ld (ix+023h),l		;5adf	dd 75 23	. u #
	ld (ix+024h),h		;5ae2	dd 74 24	. t $
	ld (ix+008h),h		;5ae5	dd 74 08	. t .
	ld a,l			;5ae8	7d		}
	and a			;5ae9	a7		.
	ld a,001h		;5aea	3e 01		> .
	jp p,l5af0h		;5aec	f2 f0 5a	. . Z
	dec a			;5aef	3d		=
l5af0h:
	ld (ix+005h),a		;5af0	dd 77 05	. w .
	ld (ix+006h),a		;5af3	dd 77 06	. w .
	ld a,h			;5af6	7c		|
	and a			;5af7	a7		.
	ret m			;5af8	f8		.
	cp 018h			;5af9	fe 18		. .
	ret c			;5afb	d8		.
	jp 06e98h		;5afc	c3 98 6e	. . n
sub_5affh:
	ld l,a			;5aff	6f		o
	ld h,000h		;5b00	26 00		& .
	add hl,hl		;5b02	29		)
	ld de,l5b11h		;5b03	11 11 5b	. . [
	add hl,de		;5b06	19		.
	ld e,(hl)		;5b07	5e		^
	inc hl			;5b08	23		#
	ld d,(hl)		;5b09	56		V
	ld (ix+021h),e		;5b0a	dd 73 21	. s !
	ld (ix+022h),d		;5b0d	dd 72 22	. r "
	ret			;5b10	c9		.
l5b11h:
	ld b,b			;5b11	40		@
	nop			;5b12	00		.
	ret nz			;5b13	c0		.
	rst 38h			;5b14	ff		.
	jr nz,l5b17h		;5b15	20 00		  .
l5b17h:
	ret po			;5b17	e0		.
	rst 38h			;5b18	ff		.
	ld a,(ix+001h)		;5b19	dd 7e 01	. ~ .
	dec a			;5b1c	3d		=
	jr z,l5b2ah		;5b1d	28 0b		( .
	dec (ix+017h)		;5b1f	dd 35 17	. 5 .
	ret nz			;5b22	c0		.
	set 4,(ix+015h)		;5b23	dd cb 15 e6	. . . .
	inc (ix+001h)		;5b27	dd 34 01	. 4 .
l5b2ah:
	ret			;5b2a	c9		.
	ld a,(ix+001h)		;5b2b	dd 7e 01	. ~ .
	dec a			;5b2e	3d		=
	jr z,l5b46h		;5b2f	28 15		( .
	ld (ix+008h),00dh	;5b31	dd 36 08 0d	. 6 . .
	ld a,(0ce4ch)		;5b35	3a 4c ce	: L .
	and a			;5b38	a7		.
	jp z,06e98h		;5b39	ca 98 6e	. . n
	call sub_5b62h		;5b3c	cd 62 5b	. b [
	ld hl,0ce4dh		;5b3f	21 4d ce	! M .
	inc (hl)		;5b42	34		4
	jp 06c1dh		;5b43	c3 1d 6c	. . l
l5b46h:
	ld de,l5b67h		;5b46	11 67 5b	. g [
	call 07b65h		;5b49	cd 65 7b	. e {
	call 06ad2h		;5b4c	cd d2 6a	. . j
	ret nz			;5b4f	c0		.
	call sub_5b62h		;5b50	cd 62 5b	. b [
	ld b,007h		;5b53	06 07		. .
	call 06ac2h		;5b55	cd c2 6a	. . j
	jp z,06e98h		;5b58	ca 98 6e	. . n
	dec a			;5b5b	3d		=
	ld a,034h		;5b5c	3e 34		> 4
	jp z,sub_4af5h		;5b5e	ca f5 4a	. . J
	ret			;5b61	c9		.
sub_5b62h:
	ld (ix+017h),002h	;5b62	dd 36 17 02	. 6 . .
	ret			;5b66	c9		.
l5b67h:
	sub b			;5b67	90		.
	ld e,e			;5b68	5b		[
	and b			;5b69	a0		.
	ld e,e			;5b6a	5b		[
	sub b			;5b6b	90		.
	ld e,e			;5b6c	5b		[
	and b			;5b6d	a0		.
	ld e,e			;5b6e	5b		[
	sub b			;5b6f	90		.
	ld e,e			;5b70	5b		[
	add a,b			;5b71	80		.
	ld e,e			;5b72	5b		[
	ld (hl),l		;5b73	75		u
	ld e,e			;5b74	5b		[
	dec bc			;5b75	0b		.
	rlca			;5b76	07		.
	add hl,bc		;5b77	09		.
	ld bc,0fe00h		;5b78	01 00 fe	. . .
	add hl,bc		;5b7b	09		.
	inc de			;5b7c	13		.
	ld bc,0ff01h		;5b7d	01 01 ff	. . .
	djnz $+9		;5b80	10 07		. .
	dec b			;5b82	05		.
	ld bc,0fe02h		;5b83	01 02 fe	. . .
	dec b			;5b86	05		.
	rrca			;5b87	0f		.
	ld bc,0fe03h		;5b88	01 03 fe	. . .
	add hl,bc		;5b8b	09		.
	add hl,de		;5b8c	19		.
	ld bc,0ff04h		;5b8d	01 04 ff	. . .
	djnz l5b97h		;5b90	10 05		. .
	inc bc			;5b92	03		.
	ld bc,0fe05h		;5b93	01 05 fe	. . .
	inc bc			;5b96	03		.
l5b97h:
	dec c			;5b97	0d		.
	ld bc,0fe06h		;5b98	01 06 fe	. . .
	ld b,017h		;5b9b	06 17		. .
	ld bc,0ff07h		;5b9d	01 07 ff	. . .
	dec d			;5ba0	15		.
	ld bc,00100h		;5ba1	01 00 01	. . .
	ex af,af'		;5ba4	08		.
	cp 000h			;5ba5	fe 00		. .
	ld a,(bc)		;5ba7	0a		.
	ld bc,0fe09h		;5ba8	01 09 fe	. . .
	ld bc,00114h		;5bab	01 14 01	. . .
	ld a,(bc)		;5bae	0a		.
	cp 006h			;5baf	fe 06		. .
	dec de			;5bb1	1b		.
	ld bc,0ff0bh		;5bb2	01 0b ff	. . .
	ld (ix+001h),002h	;5bb5	dd 36 01 02	. 6 . .
	ld (ix+015h),000h	;5bb9	dd 36 15 00	. 6 . .
	ld (ix+003h),0ffh	;5bbd	dd 36 03 ff	. 6 . .
	ret			;5bc1	c9		.
	ld a,(ix+001h)		;5bc2	dd 7e 01	. ~ .
	dec a			;5bc5	3d		=
	jr z,l5be9h		;5bc6	28 21		( !
	jp p,l5c84h		;5bc8	f2 84 5c	. . \
	ld (ix+018h),01eh	;5bcb	dd 36 18 1e	. 6 . .
	inc (ix+001h)		;5bcf	dd 34 01	. 4 .
	ld de,0fff8h		;5bd2	11 f8 ff	. . .
	call sub_4678h		;5bd5	cd 78 46	. x F
	rrca			;5bd8	0f		.
	ld hl,00008h		;5bd9	21 08 00	! . .
	call c,sub_4612h	;5bdc	dc 12 46	. . F
	call 06c04h		;5bdf	cd 04 6c	. . l
	ld de,0ff60h		;5be2	11 60 ff	. ` .
	call 06bfdh		;5be5	cd fd 6b	. . k
	ret			;5be8	c9		.
l5be9h:
	call sub_5c52h		;5be9	cd 52 5c	. R \
	ld de,000a0h		;5bec	11 a0 00	. . .
	ld hl,000a0h		;5bef	21 a0 00	! . .
	call 06caeh		;5bf2	cd ae 6c	. . l
	ld a,(ix+018h)		;5bf5	dd 7e 18	. ~ .
	or a			;5bf8	b7		.
	ld bc,00030h		;5bf9	01 30 00	. 0 .
	ld de,00030h		;5bfc	11 30 00	. 0 .
	jr z,l5c0bh		;5bff	28 0a		( .
	dec a			;5c01	3d		=
	ld (ix+018h),a		;5c02	dd 77 18	. w .
	ld bc,00040h		;5c05	01 40 00	. @ .
	ld de,00080h		;5c08	11 80 00	. . .
l5c0bh:
	push de			;5c0b	d5		.
	call sub_5c31h		;5c0c	cd 31 5c	. 1 \
	pop bc			;5c0f	c1		.
	ld h,(ix+00ah)		;5c10	dd 66 0a	. f .
	ld l,(ix+009h)		;5c13	dd 6e 09	. n .
	ld a,(0ca4ah)		;5c16	3a 4a ca	: J .
	sub (ix+00ah)		;5c19	dd 96 0a	. . .
	inc a			;5c1c	3c		<
	sra a			;5c1d	cb 2f		. /
	or a			;5c1f	b7		.
	ret z			;5c20	c8		.
	jp p,l5c29h		;5c21	f2 29 5c	. ) \
	or a			;5c24	b7		.
	sbc hl,bc		;5c25	ed 42		. B
	jr l5c2ah		;5c27	18 01		. .
l5c29h:
	add hl,bc		;5c29	09		.
l5c2ah:
	ld (ix+00ah),h		;5c2a	dd 74 0a	. t .
	ld (ix+009h),l		;5c2d	dd 75 09	. u .
	ret			;5c30	c9		.
sub_5c31h:
	ld h,(ix+008h)		;5c31	dd 66 08	. f .
	ld l,(ix+007h)		;5c34	dd 6e 07	. n .
	ld a,(0ca48h)		;5c37	3a 48 ca	: H .
	sub (ix+008h)		;5c3a	dd 96 08	. . .
	inc a			;5c3d	3c		<
	sra a			;5c3e	cb 2f		. /
	or a			;5c40	b7		.
	ret z			;5c41	c8		.
	jp p,l5c4ah		;5c42	f2 4a 5c	. J \
	or a			;5c45	b7		.
	sbc hl,bc		;5c46	ed 42		. B
	jr l5c4bh		;5c48	18 01		. .
l5c4ah:
	add hl,bc		;5c4a	09		.
l5c4bh:
	ld (ix+008h),h		;5c4b	dd 74 08	. t .
	ld (ix+007h),l		;5c4e	dd 75 07	. u .
	ret			;5c51	c9		.
sub_5c52h:
	ld a,(0ca02h)		;5c52	3a 02 ca	: . .
	xor (ix+007h)		;5c55	dd ae 07	. . .
	and 01fh		;5c58	e6 1f		. .
	call z,07143h		;5c5a	cc 43 71	. C q
	ld a,(0ca4ah)		;5c5d	3a 4a ca	: J .
	sub (ix+00ah)		;5c60	dd 96 0a	. . .
	add a,002h		;5c63	c6 02		. .
	cp 004h			;5c65	fe 04		. .
	ret			;5c67	c9		.
	ld b,(ix+008h)		;5c68	dd 46 08	. F .
	ld c,(ix+007h)		;5c6b	dd 4e 07	. N .
	add hl,bc		;5c6e	09		.
	ld (ix+008h),h		;5c6f	dd 74 08	. t .
	ld (ix+007h),l		;5c72	dd 75 07	. u .
	ex de,hl		;5c75	eb		.
	ld b,(ix+00ah)		;5c76	dd 46 0a	. F .
	ld c,(ix+009h)		;5c79	dd 4e 09	. N .
	add hl,bc		;5c7c	09		.
	ld (ix+00ah),h		;5c7d	dd 74 0a	. t .
	ld (ix+009h),l		;5c80	dd 75 09	. u .
	ret			;5c83	c9		.
l5c84h:
	ld a,(0ca34h)		;5c84	3a 34 ca	: 4 .
	and 00fh		;5c87	e6 0f		. .
	call z,sub_5cb4h	;5c89	cc b4 5c	. . \
	ld a,(0ca02h)		;5c8c	3a 02 ca	: . .
	and (ix+003h)		;5c8f	dd a6 03	. . .
	ret nz			;5c92	c0		.
	push ix			;5c93	dd e5		. .
	push ix			;5c95	dd e5		. .
	push de			;5c97	d5		.
	push af			;5c98	f5		.
	ld a,01bh		;5c99	3e 1b		> .
	call 069a3h		;5c9b	cd a3 69	. . i
	pop bc			;5c9e	c1		.
	pop de			;5c9f	d1		.
	pop iy			;5ca0	fd e1		. .
	jp c,l5cb1h		;5ca2	da b1 5c	. . \
	call sub_4678h		;5ca5	cd 78 46	. x F
	and 00fh		;5ca8	e6 0f		. .
	ld (ix+008h),a		;5caa	dd 77 08	. w .
	ld (ix+00ah),01fh	;5cad	dd 36 0a 1f	. 6 . .
l5cb1h:
	pop ix			;5cb1	dd e1		. .
	ret			;5cb3	c9		.
sub_5cb4h:
	ld a,(0ca34h)		;5cb4	3a 34 ca	: 4 .
	and 0f0h		;5cb7	e6 f0		. .
	ret z			;5cb9	c8		.
	rrca			;5cba	0f		.
	rrca			;5cbb	0f		.
	rrca			;5cbc	0f		.
	rrca			;5cbd	0f		.
	cp 008h			;5cbe	fe 08		. .
	jp z,06e98h		;5cc0	ca 98 6e	. . n
	dec a			;5cc3	3d		=
	ld hl,l5ccfh		;5cc4	21 cf 5c	! . \
	call sub_4600h		;5cc7	cd 00 46	. . F
	ld a,(hl)		;5cca	7e		~
	ld (ix+003h),a		;5ccb	dd 77 03	. w .
	ret			;5cce	c9		.
l5ccfh:
	scf			;5ccf	37		7
	ld l,a			;5cd0	6f		o
	scf			;5cd1	37		7
	dec de			;5cd2	1b		.
	dec de			;5cd3	1b		.
	inc sp			;5cd4	33		3
	add hl,de		;5cd5	19		.
	dec c			;5cd6	0d		.
	ld b,006h		;5cd7	06 06		. .
	ld (bc),a		;5cd9	02		.
	ld (bc),a		;5cda	02		.
	ld b,006h		;5cdb	06 06		. .
	ld b,006h		;5cdd	06 06		. .
	call 06754h		;5cdf	cd 54 67	. T g
	call 06796h		;5ce2	cd 96 67	. . g
	ld (ix+003h),a		;5ce5	dd 77 03	. w .
	and 001h		;5ce8	e6 01		. .
	ld (ix+005h),a		;5cea	dd 77 05	. w .
	ld hl,0ff60h		;5ced	21 60 ff	! ` .
	jp 06bf3h		;5cf0	c3 f3 6b	. . k
	call sub_5d3dh		;5cf3	cd 3d 5d	. = ]
	ld d,(ix+00ah)		;5cf6	dd 56 0a	. V .
	dec d			;5cf9	15		.
	ld e,(ix+008h)		;5cfa	dd 5e 08	. ^ .
	ld a,(0ca1ah)		;5cfd	3a 1a ca	: . .
	add a,(ix+007h)		;5d00	dd 86 07	. . .
	jr nc,l5d06h		;5d03	30 01		0 .
	inc e			;5d05	1c		.
l5d06h:
	ld a,(0ca1ch)		;5d06	3a 1c ca	: . .
	add a,(ix+009h)		;5d09	dd 86 09	. . .
	jr nc,l5d0fh		;5d0c	30 01		0 .
	inc d			;5d0e	14		.
l5d0fh:
	inc d			;5d0f	14		.
	ld a,(ix+003h)		;5d10	dd 7e 03	. ~ .
	or a			;5d13	b7		.
	jr nz,l5d18h		;5d14	20 02		  .
	inc e			;5d16	1c		.
	inc e			;5d17	1c		.
l5d18h:
	call 07b29h		;5d18	cd 29 7b	. ) {
	ex de,hl		;5d1b	eb		.
	ret nc			;5d1c	d0		.
	ld d,0deh		;5d1d	16 de		. .
	ld a,(ix+003h)		;5d1f	dd 7e 03	. ~ .
	or a			;5d22	b7		.
	ld bc,0002fh		;5d23	01 2f 00	. / .
	jr z,l5d2bh		;5d26	28 03		( .
	ld bc,0ffcfh		;5d28	01 cf ff	. . .
l5d2bh:
	ld e,(hl)		;5d2b	5e		^
	ld a,(de)		;5d2c	1a		.
	cp 003h			;5d2d	fe 03		. .
	ret z			;5d2f	c8		.
	ld (hl),0cch		;5d30	36 cc		6 .
	inc hl			;5d32	23		#
	ld (hl),0cdh		;5d33	36 cd		6 .
	add hl,bc		;5d35	09		.
	ld a,h			;5d36	7c		|
	cp 0deh			;5d37	fe de		. .
	ret nc			;5d39	d0		.
	jp l5d2bh		;5d3a	c3 2b 5d	. + ]
sub_5d3dh:
	ld a,(ix+001h)		;5d3d	dd 7e 01	. ~ .
	cp 002h			;5d40	fe 02		. .
	jp nc,l4ae0h		;5d42	d2 e0 4a	. . J
	call sub_461ah		;5d45	cd 1a 46	. . F
	ld c,h			;5d48	4c		L
	ld e,l			;5d49	5d		]
	ld h,e			;5d4a	63		c
	ld e,l			;5d4b	5d		]
	call sub_5d80h		;5d4c	cd 80 5d	. . ]
	ret z			;5d4f	c8		.
	inc (ix+001h)		;5d50	dd 34 01	. 4 .
	ld hl,00100h		;5d53	21 00 01	! . .
	call 06bf3h		;5d56	cd f3 6b	. . k
	ld a,(ix+003h)		;5d59	dd 7e 03	. ~ .
	or a			;5d5c	b7		.
	ret z			;5d5d	c8		.
	ld a,01bh		;5d5e	3e 1b		> .
	jp l4af0h		;5d60	c3 f0 4a	. . J
	call sub_5d7bh		;5d63	cd 7b 5d	. { ]
	ret z			;5d66	c8		.
	ld (ix+001h),000h	;5d67	dd 36 01 00	. 6 . .
	ld hl,0ff60h		;5d6b	21 60 ff	! ` .
	call 06bf3h		;5d6e	cd f3 6b	. . k
	ld a,(ix+003h)		;5d71	dd 7e 03	. ~ .
	or a			;5d74	b7		.
	ret nz			;5d75	c0		.
	ld a,01bh		;5d76	3e 1b		> .
	jp l4af0h		;5d78	c3 f0 4a	. . J
sub_5d7bh:
	ld hl,00500h		;5d7b	21 00 05	! . .
	jr l5d83h		;5d7e	18 03		. .
sub_5d80h:
	ld hl,0ff00h		;5d80	21 00 ff	! . .
l5d83h:
	ld de,00100h		;5d83	11 00 01	. . .
	call 075aah		;5d86	cd aa 75	. . u
	ret			;5d89	c9		.
	ld a,(0ca33h)		;5d8a	3a 33 ca	: 3 .
	or a			;5d8d	b7		.
	jp z,06e98h		;5d8e	ca 98 6e	. . n
	ld hl,l5e4bh		;5d91	21 4b 5e	! K ^
	jr l5d99h		;5d94	18 03		. .
sub_5d96h:
	ld hl,l5e6bh		;5d96	21 6b 5e	! k ^
l5d99h:
	ld (ix+011h),l		;5d99	dd 75 11	. u .
	ld (ix+012h),h		;5d9c	dd 74 12	. t .
	ret			;5d9f	c9		.
	ld a,(0c0d4h)		;5da0	3a d4 c0	: . .
	or a			;5da3	b7		.
	jr z,l5dbch		;5da4	28 16		( .
	call 06c3ah		;5da6	cd 3a 6c	. : l
	ld a,(ix+00ah)		;5da9	dd 7e 0a	. ~ .
	or a			;5dac	b7		.
	jr z,l5dbch		;5dad	28 0d		( .
	ld (ix+00ah),000h	;5daf	dd 36 0a 00	. 6 . .
	neg			;5db3	ed 44		. D
	ld hl,0ca3ah		;5db5	21 3a ca	! : .
	add a,(hl)		;5db8	86		.
	and 007h		;5db9	e6 07		. .
	ld (hl),a		;5dbb	77		w
l5dbch:
	ld hl,(0ca34h)		;5dbc	2a 34 ca	* 4 .
	ld de,010c0h		;5dbf	11 c0 10	. . .
	or a			;5dc2	b7		.
	sbc hl,de		;5dc3	ed 52		. R
	call nc,sub_5e3dh	;5dc5	d4 3d 5e	. = ^
	ld a,(0c0b4h)		;5dc8	3a b4 c0	: . .
	cp 006h			;5dcb	fe 06		. .
	call z,sub_5d96h	;5dcd	cc 96 5d	. . ]
	ld a,(0c0b5h)		;5dd0	3a b5 c0	: . .
	cp 006h			;5dd3	fe 06		. .
	call z,sub_5d96h	;5dd5	cc 96 5d	. . ]
	ld hl,0ca1dh		;5dd8	21 1d ca	! . .
	ld a,(0ca3ah)		;5ddb	3a 3a ca	: : .
	inc a			;5dde	3c		<
	and 007h		;5ddf	e6 07		. .
	ld (0ca3ah),a		;5de1	32 3a ca	2 : .
	add a,(hl)		;5de4	86		.
	and 007h		;5de5	e6 07		. .
	ld (0ca3bh),a		;5de7	32 3b ca	2 ; .
	ld h,(ix+012h)		;5dea	dd 66 12	. f .
	ld l,(ix+011h)		;5ded	dd 6e 11	. n .
	call sub_4600h		;5df0	cd 00 46	. . F
	ld a,(0ca1bh)		;5df3	3a 1b ca	: . .
	neg			;5df6	ed 44		. D
	cp 003h			;5df8	fe 03		. .
	ret nc			;5dfa	d0		.
	push hl			;5dfb	e5		.
	ld c,a			;5dfc	4f		O
	add a,a			;5dfd	87		.
	add a,c			;5dfe	81		.
	add a,a			;5dff	87		.
	add a,a			;5e00	87		.
	add a,a			;5e01	87		.
	add a,a			;5e02	87		.
	ld e,a			;5e03	5f		_
	ld d,000h		;5e04	16 00		. .
	ld hl,0dd78h		;5e06	21 78 dd	! x .
	add hl,de		;5e09	19		.
	ex de,hl		;5e0a	eb		.
	pop hl			;5e0b	e1		.
	push de			;5e0c	d5		.
	push hl			;5e0d	e5		.
	call sub_5e1dh		;5e0e	cd 1d 5e	. . ^
	pop hl			;5e11	e1		.
	pop de			;5e12	d1		.
	ld bc,00010h		;5e13	01 10 00	. . .
	add hl,bc		;5e16	09		.
	ex de,hl		;5e17	eb		.
	ld bc,00030h		;5e18	01 30 00	. 0 .
	add hl,bc		;5e1b	09		.
	ex de,hl		;5e1c	eb		.
sub_5e1dh:
	call sub_5e26h		;5e1d	cd 26 5e	. & ^
	call sub_5e26h		;5e20	cd 26 5e	. & ^
	call sub_5e26h		;5e23	cd 26 5e	. & ^
sub_5e26h:
	ld a,d			;5e26	7a		z
	cp 0deh			;5e27	fe de		. .
	ret nc			;5e29	d0		.
	push hl			;5e2a	e5		.
	ldi			;5e2b	ed a0		. .
	ldi			;5e2d	ed a0		. .
	ldi			;5e2f	ed a0		. .
	ldi			;5e31	ed a0		. .
	ldi			;5e33	ed a0		. .
	ldi			;5e35	ed a0		. .
	ldi			;5e37	ed a0		. .
	ldi			;5e39	ed a0		. .
	pop hl			;5e3b	e1		.
	ret			;5e3c	c9		.
sub_5e3dh:
	bit 7,(ix+003h)		;5e3d	dd cb 03 7e	. . . ~
	ret nz			;5e41	c0		.
	set 7,(ix+003h)		;5e42	dd cb 03 fe	. . . .
	ld a,002h		;5e46	3e 02		> .
	jp 06c5ch		;5e48	c3 5c 6c	. \ l
l5e4bh:
	cp h			;5e4b	bc		.
	jp nz,0babbh		;5e4c	c2 bb ba	. . .
	cp l			;5e4f	bd		.
	cp (hl)			;5e50	be		.
	cp e			;5e51	bb		.
	cp d			;5e52	ba		.
	cp h			;5e53	bc		.
	jp nz,0babbh		;5e54	c2 bb ba	. . .
	cp l			;5e57	bd		.
	cp (hl)			;5e58	be		.
	cp e			;5e59	bb		.
	cp d			;5e5a	ba		.
	call nz,0c1c0h		;5e5b	c4 c0 c1	. . .
	push bc			;5e5e	c5		.
	call nz,0bfc3h		;5e5f	c4 c3 bf	. . .
	push bc			;5e62	c5		.
	call nz,0c1c0h		;5e63	c4 c0 c1	. . .
	push bc			;5e66	c5		.
	call nz,0bfc3h		;5e67	c4 c3 bf	. . .
	push bc			;5e6a	c5		.
l5e6bh:
	sub d			;5e6b	92		.
	add a,c			;5e6c	81		.
	sub e			;5e6d	93		.
	sub h			;5e6e	94		.
	sub b			;5e6f	90		.
	sub c			;5e70	91		.
	sub e			;5e71	93		.
	sub h			;5e72	94		.
	sub d			;5e73	92		.
	add a,c			;5e74	81		.
	sub e			;5e75	93		.
	sub h			;5e76	94		.
	sub b			;5e77	90		.
	sub c			;5e78	91		.
	sub e			;5e79	93		.
	sub h			;5e7a	94		.
	ld a,a			;5e7b	7f		.
	ld a,(hl)		;5e7c	7e		~
	add a,b			;5e7d	80		.
	ld e,a			;5e7e	5f		_
	ld a,a			;5e7f	7f		.
	ld a,(l5f7ch)		;5e80	3a 7c 5f	: | _
	ld a,a			;5e83	7f		.
	ld a,(hl)		;5e84	7e		~
	add a,b			;5e85	80		.
	ld e,a			;5e86	5f		_
	ld a,a			;5e87	7f		.
	ld a,(l5f7ch)		;5e88	3a 7c 5f	: | _
	rst 38h			;5e8b	ff		.
	rst 38h			;5e8c	ff		.
	rst 38h			;5e8d	ff		.
	rst 38h			;5e8e	ff		.
	rst 38h			;5e8f	ff		.
	rst 38h			;5e90	ff		.
	rst 38h			;5e91	ff		.
	rst 38h			;5e92	ff		.
	rst 38h			;5e93	ff		.
	rst 38h			;5e94	ff		.
	rst 38h			;5e95	ff		.
	rst 38h			;5e96	ff		.
	rst 38h			;5e97	ff		.
	rst 38h			;5e98	ff		.
	rst 38h			;5e99	ff		.
	rst 38h			;5e9a	ff		.
	rst 38h			;5e9b	ff		.
	rst 38h			;5e9c	ff		.
	rst 38h			;5e9d	ff		.
	rst 38h			;5e9e	ff		.
	rst 38h			;5e9f	ff		.
	rst 38h			;5ea0	ff		.
	rst 38h			;5ea1	ff		.
	rst 38h			;5ea2	ff		.
	rst 38h			;5ea3	ff		.
	rst 38h			;5ea4	ff		.
	rst 38h			;5ea5	ff		.
	rst 38h			;5ea6	ff		.
	rst 38h			;5ea7	ff		.
	rst 38h			;5ea8	ff		.
	rst 38h			;5ea9	ff		.
	rst 38h			;5eaa	ff		.
	rst 38h			;5eab	ff		.
	rst 38h			;5eac	ff		.
	rst 38h			;5ead	ff		.
	rst 38h			;5eae	ff		.
	rst 38h			;5eaf	ff		.
	rst 38h			;5eb0	ff		.
	rst 38h			;5eb1	ff		.
	rst 38h			;5eb2	ff		.
	rst 38h			;5eb3	ff		.
	rst 38h			;5eb4	ff		.
	rst 38h			;5eb5	ff		.
	rst 38h			;5eb6	ff		.
	rst 38h			;5eb7	ff		.
	rst 38h			;5eb8	ff		.
	rst 38h			;5eb9	ff		.
	rst 38h			;5eba	ff		.
	rst 38h			;5ebb	ff		.
	rst 38h			;5ebc	ff		.
	rst 38h			;5ebd	ff		.
	rst 38h			;5ebe	ff		.
	rst 38h			;5ebf	ff		.
	rst 38h			;5ec0	ff		.
	rst 38h			;5ec1	ff		.
	rst 38h			;5ec2	ff		.
	rst 38h			;5ec3	ff		.
	rst 38h			;5ec4	ff		.
	rst 38h			;5ec5	ff		.
	rst 38h			;5ec6	ff		.
	rst 38h			;5ec7	ff		.
	rst 38h			;5ec8	ff		.
	rst 38h			;5ec9	ff		.
	rst 38h			;5eca	ff		.
	rst 38h			;5ecb	ff		.
	rst 38h			;5ecc	ff		.
	rst 38h			;5ecd	ff		.
	rst 38h			;5ece	ff		.
	rst 38h			;5ecf	ff		.
	rst 38h			;5ed0	ff		.
	rst 38h			;5ed1	ff		.
	rst 38h			;5ed2	ff		.
	rst 38h			;5ed3	ff		.
	rst 38h			;5ed4	ff		.
	rst 38h			;5ed5	ff		.
	rst 38h			;5ed6	ff		.
	rst 38h			;5ed7	ff		.
	rst 38h			;5ed8	ff		.
	rst 38h			;5ed9	ff		.
	rst 38h			;5eda	ff		.
	rst 38h			;5edb	ff		.
	rst 38h			;5edc	ff		.
	rst 38h			;5edd	ff		.
	rst 38h			;5ede	ff		.
	rst 38h			;5edf	ff		.
	rst 38h			;5ee0	ff		.
	rst 38h			;5ee1	ff		.
	rst 38h			;5ee2	ff		.
	rst 38h			;5ee3	ff		.
	rst 38h			;5ee4	ff		.
	rst 38h			;5ee5	ff		.
	rst 38h			;5ee6	ff		.
	rst 38h			;5ee7	ff		.
	rst 38h			;5ee8	ff		.
	rst 38h			;5ee9	ff		.
	rst 38h			;5eea	ff		.
	rst 38h			;5eeb	ff		.
	rst 38h			;5eec	ff		.
	rst 38h			;5eed	ff		.
	rst 38h			;5eee	ff		.
	rst 38h			;5eef	ff		.
	rst 38h			;5ef0	ff		.
	rst 38h			;5ef1	ff		.
	rst 38h			;5ef2	ff		.
	rst 38h			;5ef3	ff		.
	rst 38h			;5ef4	ff		.
	rst 38h			;5ef5	ff		.
	rst 38h			;5ef6	ff		.
	rst 38h			;5ef7	ff		.
	rst 38h			;5ef8	ff		.
	rst 38h			;5ef9	ff		.
	rst 38h			;5efa	ff		.
	rst 38h			;5efb	ff		.
	rst 38h			;5efc	ff		.
	rst 38h			;5efd	ff		.
	rst 38h			;5efe	ff		.
	rst 38h			;5eff	ff		.
	rst 38h			;5f00	ff		.
	rst 38h			;5f01	ff		.
	rst 38h			;5f02	ff		.
	rst 38h			;5f03	ff		.
	rst 38h			;5f04	ff		.
	rst 38h			;5f05	ff		.
	rst 38h			;5f06	ff		.
	rst 38h			;5f07	ff		.
	rst 38h			;5f08	ff		.
	rst 38h			;5f09	ff		.
	rst 38h			;5f0a	ff		.
	rst 38h			;5f0b	ff		.
	rst 38h			;5f0c	ff		.
	rst 38h			;5f0d	ff		.
	rst 38h			;5f0e	ff		.
	rst 38h			;5f0f	ff		.
	rst 38h			;5f10	ff		.
	rst 38h			;5f11	ff		.
	rst 38h			;5f12	ff		.
	rst 38h			;5f13	ff		.
	rst 38h			;5f14	ff		.
	rst 38h			;5f15	ff		.
	rst 38h			;5f16	ff		.
	rst 38h			;5f17	ff		.
	rst 38h			;5f18	ff		.
	rst 38h			;5f19	ff		.
	rst 38h			;5f1a	ff		.
	rst 38h			;5f1b	ff		.
	rst 38h			;5f1c	ff		.
	rst 38h			;5f1d	ff		.
	rst 38h			;5f1e	ff		.
	rst 38h			;5f1f	ff		.
	rst 38h			;5f20	ff		.
	rst 38h			;5f21	ff		.
	rst 38h			;5f22	ff		.
	rst 38h			;5f23	ff		.
	rst 38h			;5f24	ff		.
	rst 38h			;5f25	ff		.
	rst 38h			;5f26	ff		.
	rst 38h			;5f27	ff		.
	rst 38h			;5f28	ff		.
	rst 38h			;5f29	ff		.
	rst 38h			;5f2a	ff		.
	rst 38h			;5f2b	ff		.
	rst 38h			;5f2c	ff		.
	rst 38h			;5f2d	ff		.
	rst 38h			;5f2e	ff		.
	rst 38h			;5f2f	ff		.
	rst 38h			;5f30	ff		.
	rst 38h			;5f31	ff		.
	rst 38h			;5f32	ff		.
	rst 38h			;5f33	ff		.
	rst 38h			;5f34	ff		.
	rst 38h			;5f35	ff		.
	rst 38h			;5f36	ff		.
	rst 38h			;5f37	ff		.
	rst 38h			;5f38	ff		.
	rst 38h			;5f39	ff		.
	rst 38h			;5f3a	ff		.
	rst 38h			;5f3b	ff		.
	rst 38h			;5f3c	ff		.
	rst 38h			;5f3d	ff		.
	rst 38h			;5f3e	ff		.
	rst 38h			;5f3f	ff		.
	rst 38h			;5f40	ff		.
	rst 38h			;5f41	ff		.
	rst 38h			;5f42	ff		.
	rst 38h			;5f43	ff		.
	rst 38h			;5f44	ff		.
	rst 38h			;5f45	ff		.
	rst 38h			;5f46	ff		.
	rst 38h			;5f47	ff		.
	rst 38h			;5f48	ff		.
	rst 38h			;5f49	ff		.
	rst 38h			;5f4a	ff		.
	rst 38h			;5f4b	ff		.
	rst 38h			;5f4c	ff		.
	rst 38h			;5f4d	ff		.
	rst 38h			;5f4e	ff		.
	rst 38h			;5f4f	ff		.
	rst 38h			;5f50	ff		.
	rst 38h			;5f51	ff		.
	rst 38h			;5f52	ff		.
	rst 38h			;5f53	ff		.
	rst 38h			;5f54	ff		.
	rst 38h			;5f55	ff		.
	rst 38h			;5f56	ff		.
	rst 38h			;5f57	ff		.
	rst 38h			;5f58	ff		.
	rst 38h			;5f59	ff		.
	rst 38h			;5f5a	ff		.
	rst 38h			;5f5b	ff		.
	rst 38h			;5f5c	ff		.
	rst 38h			;5f5d	ff		.
	rst 38h			;5f5e	ff		.
	rst 38h			;5f5f	ff		.
	rst 38h			;5f60	ff		.
	rst 38h			;5f61	ff		.
	rst 38h			;5f62	ff		.
	rst 38h			;5f63	ff		.
	rst 38h			;5f64	ff		.
	rst 38h			;5f65	ff		.
	rst 38h			;5f66	ff		.
	rst 38h			;5f67	ff		.
	rst 38h			;5f68	ff		.
	rst 38h			;5f69	ff		.
	rst 38h			;5f6a	ff		.
	rst 38h			;5f6b	ff		.
	rst 38h			;5f6c	ff		.
	rst 38h			;5f6d	ff		.
	rst 38h			;5f6e	ff		.
	rst 38h			;5f6f	ff		.
	rst 38h			;5f70	ff		.
	rst 38h			;5f71	ff		.
	rst 38h			;5f72	ff		.
	rst 38h			;5f73	ff		.
	rst 38h			;5f74	ff		.
	rst 38h			;5f75	ff		.
	rst 38h			;5f76	ff		.
	rst 38h			;5f77	ff		.
	rst 38h			;5f78	ff		.
	rst 38h			;5f79	ff		.
	rst 38h			;5f7a	ff		.
	rst 38h			;5f7b	ff		.
l5f7ch:
	rst 38h			;5f7c	ff		.
	rst 38h			;5f7d	ff		.
	rst 38h			;5f7e	ff		.
	rst 38h			;5f7f	ff		.
	rst 38h			;5f80	ff		.
	rst 38h			;5f81	ff		.
	rst 38h			;5f82	ff		.
	rst 38h			;5f83	ff		.
	rst 38h			;5f84	ff		.
	rst 38h			;5f85	ff		.
	rst 38h			;5f86	ff		.
	rst 38h			;5f87	ff		.
	rst 38h			;5f88	ff		.
	rst 38h			;5f89	ff		.
	rst 38h			;5f8a	ff		.
	rst 38h			;5f8b	ff		.
	rst 38h			;5f8c	ff		.
	rst 38h			;5f8d	ff		.
	rst 38h			;5f8e	ff		.
	rst 38h			;5f8f	ff		.
	rst 38h			;5f90	ff		.
	rst 38h			;5f91	ff		.
	rst 38h			;5f92	ff		.
	rst 38h			;5f93	ff		.
	rst 38h			;5f94	ff		.
	rst 38h			;5f95	ff		.
	rst 38h			;5f96	ff		.
	rst 38h			;5f97	ff		.
	rst 38h			;5f98	ff		.
	rst 38h			;5f99	ff		.
	rst 38h			;5f9a	ff		.
	rst 38h			;5f9b	ff		.
	rst 38h			;5f9c	ff		.
	rst 38h			;5f9d	ff		.
	rst 38h			;5f9e	ff		.
	rst 38h			;5f9f	ff		.
	rst 38h			;5fa0	ff		.
	rst 38h			;5fa1	ff		.
	rst 38h			;5fa2	ff		.
	rst 38h			;5fa3	ff		.
	rst 38h			;5fa4	ff		.
	rst 38h			;5fa5	ff		.
	rst 38h			;5fa6	ff		.
	rst 38h			;5fa7	ff		.
	rst 38h			;5fa8	ff		.
	rst 38h			;5fa9	ff		.
	rst 38h			;5faa	ff		.
	rst 38h			;5fab	ff		.
	rst 38h			;5fac	ff		.
	rst 38h			;5fad	ff		.
	rst 38h			;5fae	ff		.
	rst 38h			;5faf	ff		.
	rst 38h			;5fb0	ff		.
	rst 38h			;5fb1	ff		.
	rst 38h			;5fb2	ff		.
	rst 38h			;5fb3	ff		.
	rst 38h			;5fb4	ff		.
	rst 38h			;5fb5	ff		.
	rst 38h			;5fb6	ff		.
	rst 38h			;5fb7	ff		.
	rst 38h			;5fb8	ff		.
	rst 38h			;5fb9	ff		.
	rst 38h			;5fba	ff		.
	rst 38h			;5fbb	ff		.
	rst 38h			;5fbc	ff		.
	rst 38h			;5fbd	ff		.
	rst 38h			;5fbe	ff		.
	rst 38h			;5fbf	ff		.
	rst 38h			;5fc0	ff		.
	rst 38h			;5fc1	ff		.
	rst 38h			;5fc2	ff		.
	rst 38h			;5fc3	ff		.
	rst 38h			;5fc4	ff		.
	rst 38h			;5fc5	ff		.
	rst 38h			;5fc6	ff		.
	rst 38h			;5fc7	ff		.
	rst 38h			;5fc8	ff		.
	rst 38h			;5fc9	ff		.
	rst 38h			;5fca	ff		.
	rst 38h			;5fcb	ff		.
	rst 38h			;5fcc	ff		.
	rst 38h			;5fcd	ff		.
	rst 38h			;5fce	ff		.
	rst 38h			;5fcf	ff		.
	rst 38h			;5fd0	ff		.
	rst 38h			;5fd1	ff		.
	rst 38h			;5fd2	ff		.
	rst 38h			;5fd3	ff		.
	rst 38h			;5fd4	ff		.
	rst 38h			;5fd5	ff		.
	rst 38h			;5fd6	ff		.
	rst 38h			;5fd7	ff		.
	rst 38h			;5fd8	ff		.
	rst 38h			;5fd9	ff		.
	rst 38h			;5fda	ff		.
	rst 38h			;5fdb	ff		.
	rst 38h			;5fdc	ff		.
	rst 38h			;5fdd	ff		.
	rst 38h			;5fde	ff		.
	rst 38h			;5fdf	ff		.
	rst 38h			;5fe0	ff		.
	rst 38h			;5fe1	ff		.
	rst 38h			;5fe2	ff		.
	rst 38h			;5fe3	ff		.
	rst 38h			;5fe4	ff		.
	rst 38h			;5fe5	ff		.
	rst 38h			;5fe6	ff		.
	rst 38h			;5fe7	ff		.
	rst 38h			;5fe8	ff		.
	rst 38h			;5fe9	ff		.
	rst 38h			;5fea	ff		.
	rst 38h			;5feb	ff		.
	rst 38h			;5fec	ff		.
	rst 38h			;5fed	ff		.
	rst 38h			;5fee	ff		.
	rst 38h			;5fef	ff		.
	rst 38h			;5ff0	ff		.
	rst 38h			;5ff1	ff		.
	rst 38h			;5ff2	ff		.
	rst 38h			;5ff3	ff		.
	rst 38h			;5ff4	ff		.
	rst 38h			;5ff5	ff		.
	rst 38h			;5ff6	ff		.
	rst 38h			;5ff7	ff		.
	rst 38h			;5ff8	ff		.
	rst 38h			;5ff9	ff		.
	rst 38h			;5ffa	ff		.
	rst 38h			;5ffb	ff		.
	rst 38h			;5ffc	ff		.
	rst 38h			;5ffd	ff		.
	rst 38h			;5ffe	ff		.
	rst 38h			;5fff	ff		.
