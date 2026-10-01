"""Collision shapes rooted in bank07 component evaluator, with bounded, reviewed collision routines."""
import hashlib
import json
from pathlib import Path


def extend(cat):
    begin=cat.cpu(7,0x8219,0x8000)
    raw=cat.read(begin,84)
    shapes=[]
    for selector in range(21):
        y,ys,x,xs=raw[selector*4:selector*4+4]
        shapes.append(dict(selector=selector,enabled=selector!=0,y_offset=y,
            y_extent=ys,x_offset=x,x_extent=xs))
    cat.add('sprite_collision_shapes',begin,begin+84,'collision_shape_table','decoded',
        'bank07 $81E0/$81FF indexes four-byte records; selector0 skips collision; next code starts $826D',
        table=cat.table('collision_shapes',shapes))
    callback_tables=[]
    for name,address in (('type27_collision_impulses',0x820d),('type4D_collision_velocities',0x9637)):
        start=cat.cpu(5,address,0x8000)
        raw=cat.read(start,16)
        records=[dict(selector=i,x=int.from_bytes(raw[4*i:4*i+2],'little'),
            y=int.from_bytes(raw[4*i+2:4*i+4],'little')) for i in range(4)]
        cat.add(name,start,start+16,'collision_velocity_table','decoded',
            'bank05 collision callback selects attacker+12 <4, times4; X word then Y word',
            table=cat.table(name,records))
        callback_tables.append(name)
    cat.table('collision_callbacks',dict(dispatch='bank04 $6459 saves mapper7/8, maps5/6, calls $6472 and restores original banks',
        types={'0x03':'fixed $5100 returns without changes',
               '0x27':'bank05 $81AA; type4/7 arithmetic-shift incoming velocity twice and add to own velocity; type5/6 use selected impulse',
               '0x4D':'bank05 $95DD; type4/7 arithmetic-shift incoming velocity once; type5/6 use selected velocity; status+03 masks05/0A inhibit Y/X replacement'},
        tables=callback_tables,other_types='return without changes',
        limitations='These callbacks alter velocity, not HP; broader custom handlers and natural encounters remain separate.'))
    animations=json.loads((cat.out/'tables/sprite_animations.json').read_text())
    frames=[]
    for definition in animations['definitions']:
        components=[]
        for index,component in enumerate(definition['components']):
            selector=component[5]
            if selector>=len(shapes):raise ValueError('sprite collision selector outside shape table')
            shape=shapes[selector]
            components.append(dict(component=index,selector=selector,enabled=shape['enabled'],
                relative_y=(component[1]+shape['y_offset'])&255 if selector else None,
                relative_x=(component[2]+shape['x_offset'])&255 if selector else None,
                y_extent=shape['y_extent'] if selector else 0,x_extent=shape['x_extent'] if selector else 0))
        frames.append(dict(address=definition['address'],header=definition['header'],components=components))
    cat.table('sprite_collision_frames',dict(frames=frames,
        coordinate_rule='pixel byte = ((fixed8_8 <<3)>>8)&255; component and shape offsets added modulo256',
        overlap_rule='Each axis: ((source_position-target_position+source_extent)&255) < ((target_extent+source_extent)&255); strict, byte arithmetic',
        coarse_fields={'0x13':'vertical coarse extent; raw byte in bank07 $8083',
                       '0x14':'horizontal coarse extent masked7F; bit7 is damage-enable',
                       '0x15':'player-vs-object scan requires (flags & B0)==B0'},
        evidence='bank07 $8039..$8094 coarse scan; $80D0 two-axis test; $81E0 component geometry',
        limitations='Existing inferred sprite-frame prefixes, not all runtime frames. Renderer masks headerbit7 but collision lookup returns raw header; high-header collision eligibility remains unresolved.'))
    cat.table('object_relationships',dict(pool_base=0xce80,slot_size=64,slot_count=20,
        fields={'0x2D':'one-based slot identity', '0x34':'relationship: low6 parent identity, bit7 child-mark traversal, bit6 invalid/removal marker, bit5 early exit in cleanup',
                '0x35':'neighbor reference; bit7 marks invalid', '0x36':'neighbor reference; bit7 marks invalid',
                '0x37':'live-child counter', '0x3B':'additional death-child counter',
                '0x3D':'conditional last-child marker; death cleanup reads returned IY and writes removed IX'},
        removal='bank04 $7D3E -> $7D54 decrements parent+37 on a valid relationship; death $7D5E decrements returned IY+3B; neighbor lookup may replace the parent pointer',
        marking='bank04 $7D89 sets bit6 on child+34 entries equal to removed slot ID; $7DA6 sets bit7 in referenced neighbors+35/+36',
        damage='bank07 $813F writes damage to directly collided object+04; generic relationship cleanup contains no parent-HP subtraction',
        limitations='Generic link routines, not proof every custom handler lacks forwarding. Death cleanup decrements returned IY+3B even after stale identity rejection; valid neighbor lookup can redirect this decrement to a neighbor. Other invalid relationships and special collision callbacks remain separate.'))
    evidence_path=Path(__file__).resolve().parent.parent/'notes/collision_routines_validation.json'
    if evidence_path.exists():
        evidence=json.loads(evidence_path.read_text())
        if evidence['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest() or evidence['passed']!=evidence['total']:
            raise ValueError('collision evidence provenance/check mismatch')
        cat.table('collision_validation',evidence)
        categories={r['category'] for r in evidence['results']}
        if {'fine_scan','player_pool_scan','collision_callback'} <= categories:
            ranges=[('player_object_collision_scan',7,0x8039,0x80a5,0x8000),
                    ('sprite_component_collision_code',7,0x80e9,0x8219,0x8000),
                    ('collision_callback_dispatch_code',4,0x6459,0x6485,0x6000),
                    ('type27_collision_callback_code',5,0x81aa,0x820d,0x8000),
                    ('type4D_collision_callback_code',5,0x95dd,0x9637,0x8000)]
            routines=[]
            for name,bank,start,end,origin in ranges:
                begin=cat.cpu(bank,start,origin)
                cat.add(name,begin,begin+end-start,'reviewed_collision_code','decoded',
                    'Manually reviewed original control flow from rooted call to terminal returns; synthetic original-ROM scan/callback tests in collision_validation.json',
                    cpu_start=start,cpu_end_exclusive=end,validation='tables/collision_validation.json')
                routines.append(dict(id=name,bank=bank,cpu_start=start,cpu_end_exclusive=end))
            cat.table('collision_code_ranges',dict(routines=routines,
                scope='Bounded reviewed collision routines, not entire banks or speculative linear disassembly',
                limitations='Classified executable structure is not proof every branch or natural combat context is covered.'))
