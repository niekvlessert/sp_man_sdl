"""Object data rooted in the original initializer and destruction routines."""
from catalog_rom import BANK
import hashlib
import json
from pathlib import Path


def extend(cat):
    # The dispatch table contains types 01..7C. Do not promote the adjacent
    # padding/default pointers to additional implemented object types.
    count = 0x7c
    base = cat.cpu(2, 0x9100, 0x8000)
    roots = [cat.word(base + i*2) for i in range(count)]
    cat.add('object_metadata_pointers', base, base+count*2, 'object_pointer_table',
            'decoded', 'bank04 $66F7/$6704: (type-1)*2; dispatch $64D1 has 124 types')
    definitions = {}
    objects = []
    death = cat.cpu(4, 0x7e74, 0x6000)
    score = cat.cpu(4, 0x7cf6, 0x6000)
    bonuses = [cat.word(score+i*2) for i in range(10)]
    cat.add('destruction_score_values', score, score+20, 'bcd_score_table', 'decoded',
            'bank04 $7CE0 selects word; $7E03 adds it with DAA to CB0B..CB0D')
    cat.add('object_destruction_records', death, death+(count+1)*3,
            'destruction_table', 'decoded', 'bank04 $7D0A/$7DD8: type*3, includes type00')
    for typ, pointer in enumerate(roots, 1):
        if not 0x8000 <= pointer <= 0xbffc:
            raise ValueError('object metadata outside bank02/03')
        offset = 2*BANK + pointer-0x8000
        raw = list(cat.read(offset, 4))
        if pointer not in definitions:
            definitions[pointer] = cat.add(f'object_metadata_{pointer:04X}', offset, offset+4,
                'object_metadata', 'decoded', 'bank04 $6707..$6715 copies to object +13..+16',
                types=[], bytes=raw)
        definitions[pointer]['types'].append(typ)
        replacement, sound, selector = cat.read(death+typ*3, 3)
        if not 1 <= selector <= len(bonuses):
            raise ValueError('destruction score selector outside table')
        value = bonuses[selector-1]
        objects.append(dict(type=typ, metadata_address=pointer, metadata=raw,
            damage_enabled=bool(raw[1]&0x80), initial_hp=raw[3],
            replacement_type=replacement, sound_id=sound, score_selector=selector,
            score_bcd_word=value, score_bonus=None if value&255==255 else
                sum(((value >> (i*4))&15)*10**i for i in range(4))))
    cat.table('objects', dict(objects=objects, score_values=bonuses,
        field_layout={'0x13':'vertical coarse extent in bank07 player collision; raw byte',
                      '0x14':'horizontal coarse extent masked7F in bank07; bit7 enables ordinary damage; other paths use different masks',
                      '0x15':'render/behavior flags; retained raw', '0x16':'initial HP'},
        damage_rule='ordinary $7C44 consumes +04 only when +14 bit7 set; death callers use subtraction carry (damage > HP), not HP == 0',
        limitations='Custom boss damage and parent/child behavior need separate analysis. Sound IDs are references, not decoded audio.'))

    def table(name, address, size, kind, evidence):
        begin=cat.cpu(6,address,0xa000)
        raw=cat.read(begin,size)
        cat.add(name,begin,begin+size,kind,'decoded',evidence)
        return raw

    # CALL $461A consumes its return address as an inline dispatch table.
    if cat.read(cat.cpu(6,0xa2ec,0xa000),6) != bytes.fromhex('dd7e01cd1a46'):
        raise ValueError('type64 state dispatch opcode mismatch')
    raw=table('type64_state_dispatch',0xa2f2,14,'object_state_pointer_table',
              'bank06 $A2EC reads +01; fixed $461A indexed jump; seven targets before $A300')
    targets=[int.from_bytes(raw[i:i+2],'little') for i in range(0,14,2)]
    motion=table('type64_phase_records',0xa3b0,20,'object_phase_table',
                 'bank06 $A38E: (state-2)*4; states2..6 copy +11,+12,+17,+20')
    direct=table('type64_sprite_by_tile',0xa486,6,'animation_index_table',
                 'bank06 $A45C: tile indices1..4; indices0/5 use directional table')
    directional=table('type64_directional_sprite',0xa48c,8,'animation_index_table',
                      'bank06 $A472..$A482: (direction+2)&7 indexes sprite frame')
    stamp_scripts(cat, 0x64, 6, 0xa000, 0xa494, 7)
    stamp_scripts(cat, 0x6a, 5, 0x8000, 0x9b0a, 8)
    stamp_scripts(cat, 0x78, 6, 0xa000, 0xacde, 10)
    boss_states=[]
    for typ,bank,origin,address,count,call_address in (
            (0x43,5,0x8000,0x8e8c,4,0x8e89),
            (0x77,6,0xa000,0xb0d7,6,0xb0d4),
            (0x78,6,0xa000,0xaa36,9,0xaa33)):
        if cat.read(cat.cpu(bank,call_address,origin),3)!=bytes.fromhex('cd1a46'):
            raise ValueError('boss state dispatch opcode mismatch')
        start=cat.cpu(bank,address,origin)
        boss_targets=[cat.word(start+i*2) for i in range(count)]
        cat.add(f'type{typ:02X}_state_dispatch',start,start+count*2,'object_state_pointer_table',
                'decoded',f'bank{bank:02X} ${call_address:04X} calls fixed $461A; state bounds from handler branches')
        boss_states.append(dict(type=typ,bank=bank,address=address,targets=boss_targets))
    begin=cat.cpu(6,0xb3db,0xa000)
    children=[list(cat.read(begin+i*6,6)) for i in range(12)]
    cat.add('type77_child_records',begin,begin+72,'object_child_table','decoded',
            'bank06 $B3A0 selects six-byte records; initial indices0..7 and $B447 indices8..11',
            table=cat.table('type77_child_records',children))
    cat.table('boss_handler_paths',dict(state_tables=boss_states,
        paths=[dict(stage=4,type=0x77,condition='child relationship count +37 must reach0 before damage-enable',
                    children_type=0x76,evidence='bank06 $B12B..$B15B; $B3A0 creates children'),
               dict(stage=6,type=0x43,damage_counter_offset=2,damage_routine=0x8ef5,
                    completion_pc=0x8f3e,evidence='bank05 $8EF5 subtracts +04 from +02; +16 is not this counter'),
               dict(stage=7,type=0x78,damage_entry=0x7c6b,completion_pc=0xabcd,
                    evidence='bank06 $AC2C/$AC39 gates damage with +29/+2B; $AC3F sets CE76'),
               dict(stage=8,type=0x79,completion_pc=0x6044,
                    evidence='bank04 $6035 boss-presence latch; observed completion follows type79 destruction')],
        limitations='Controlled assisted transitions. Collision geometry, natural encounter timing and complete ending remain separate work.'))
    cat.table('type6A_handler', dict(type=0x6a, handler_bank=5, handler=0x9ad7,
        tile_selector_domain=list(range(8)), matrix_index_domain=list(range(5)),
        transitions=['state0 stamps and advances tile selector modulo8',
                     'on wrap, calls $7058/$7523, sets timer30h/state1 and immediately executes state1 timer body',
                     'state1 decrements timer; on zero sets CA0F=1 then removes object'],
        evidence='bank05 $9AD7..$9B09; bank04 $6AC2/$6AD2; fixed $440F returns2 when CA0F !=0',
        limitations='Stage0-to-stage1 transition traced with one logged pending-damage intervention. Completion at $9B04 is also traced for stages1..5; detailed per-boss animation timing remains unverified.'))
    controller_tables={}
    for name,address,count,call_address in (('main',0x6267,5,0x6264),('gameplay',0x62ca,3,0x62c7)):
        if cat.read(cat.cpu(1,call_address,0x6000),3)!=bytes.fromhex('cd1a46'):
            raise ValueError('stage controller dispatch opcode mismatch')
        start=cat.cpu(1,address,0x6000)
        controller_tables[name]=[cat.word(start+i*2) for i in range(count)]
        cat.add(f'stage_controller_{name}_pointers',start,start+count*2,
                'engine_state_pointer_table','decoded',
                f'bank01 ${call_address:04X}; CA00 main state or CA01 gameplay substate, fixed $461A')
    cat.table('stage_controller',dict(bank=1,dispatch_targets=controller_tables,
        completion_path=['fixed $440F: CA0F!=0 returns A=2',
                         'bank01 $62E8..$62FD: completed update advances CA01 to2',
                         'bank01 $6308..$632A: clears CA0F, increments CA10, initializes next stage'],
        stage_limit=9,limitation='All nine assisted stage-selection paths and the final-stage state4 branch observed; complete ending and other state paths remain unverified.'))
    cat.table('type64_handler',dict(type=0x64,handler_bank=6,handler=0xa2d8,
        state_targets=targets,phase_records=[list(motion[i:i+4]) for i in range(0,20,4)],
        tile_initial_frame=6,tile_handler_domain=list(range(7)),tile_cycle_domain=list(range(6)),
        sprite_active_domain=sorted(set(directional)|set(direct[1:5])),
        sprite_by_tile=list(direct),directional_sprite=list(directional),
        transitions=['0 initializes tile6, position and child objects; advances to1',
                     '1 advances to2 and loads phase0',
                     '2 waits for phase timer, enables damage and advances to3',
                     '3..5 advance on timer completion', '6 returns to3 on timer completion'],
        evidence={'tile_increment':'$A3CE..$A3D5 stops before6',
                  'tile_decrement':'$A3E9..$A3EF stops at0',
                  'phase_selector':'$A38E..$A3AC', 'sprite_selector':'$A45C..$A482'},
        limitations='Domains describe this handler, not all death/reset overrides. Custom stamps use matrix indices distinct from the tile selector. Stage0 death transition is documented in tables/boss_gate_validation.json when evidence is present.'))
    for filename,table_name in (('boss_gate_observed_transition.json','boss_gate_validation'),
                               ('all_stage_boss_observed_transitions.json','all_stage_boss_validation'),
                               ('checkpoint_selectors_validation.json','checkpoint_validation')):
        evidence_path=Path(__file__).resolve().parent.parent/'notes'/filename
        if evidence_path.exists():
            evidence=json.loads(evidence_path.read_text())
            if evidence['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest():
                raise ValueError(f'{table_name} evidence ROM hash mismatch')
            if evidence['passed']!=evidence['total']:
                raise ValueError(f'{table_name} evidence contains failed checks')
            cat.table(table_name,evidence)


def stamp_scripts(cat, typ, bank, origin, pointer_address, count):
    prefix=f'type{typ:02X}'
    begin=cat.cpu(bank,pointer_address,origin)
    roots=[cat.word(begin+i*2) for i in range(count)]
    cat.add(f'{prefix}_stamp_pointers',begin,begin+count*2,'object_pointer_table','decoded',
            f'bank{bank:02X} ${pointer_address:04X}; bank04 $7B65 selects with object +06')
    stamps=[];exported=set()
    for index,address in enumerate(roots):
        offset=cat.cpu(bank,address,origin);size=cat.read(offset,1)[0]
        raw=cat.read(offset,size)
        if address not in exported:
            cat.add(f'{prefix}_stamp_{address:04X}',offset,offset+size,'object_stamp_script','decoded',
                    'bank04 $7C01 copies length-1 bytes to D700 before mapping bank07/08')
            exported.add(address)
        if size<4:raise ValueError('truncated object stamp')
        p=3;origin_pair=list(raw[1:3]);commands=[]
        while p<size:
            control=raw[p];p+=1
            if control==255:break
            if control==254:
                if p+2>size:raise ValueError('truncated stamp origin')
                origin_pair=list(raw[p:p+2]);p+=2;continue
            n=control&127;length=1 if control&128 else n
            frames=list(raw[p:p+length]);p+=length
            if not n or len(frames)!=length:raise ValueError('invalid object stamp count')
            commands.append(dict(relative_origin=origin_pair,repeat=bool(control&128),
                                 count=n,matrix_indices=frames))
        if p!=size or raw[-1]!=255:raise ValueError('object stamp length/terminator mismatch')
        stamps.append(dict(tile_selector=index,address=address,size=size,commands=commands))
    cat.table(f'{prefix}_stamp_scripts',stamps)
    return stamps
