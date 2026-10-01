"""Loader-rooted entrypoint analysis; inferred animation extents stay explicit."""
from collections import deque
import hashlib
import json
from pathlib import Path

BANK=8192
PAYLOADS={0x10:2,0x11:2,0x12:36,0x13:2,0x17:1,0x19:1,0x1c:2,0x1f:1}
COMMANDS={0x10:'branch_if_CE4C',0x11:'graphics_raster_context',0x12:'enter_mode2',
          0x13:'palette_script',0x14:'reset_scroll_arm',0x15:'conditional_preset7',
          0x16:'fight_gate',0x17:'stage_job',0x18:'clear_ring_compositor',
          0x19:'event',0x1a:'stage_counter',0x1b:'align_phase',
          0x1c:'conditional_palette_script',0x1d:'wait_CA33_zero',
          0x1e:'stop_scroll_arm',0x1f:'countdown'}
# Byte advances are taken from the mode dispatch at bank09:$7C5B and each
# writer's returned DE. Mode8 returns DE=0 and needs runtime intervention.
RECORD_SIZE={0:6,1:15,2:6,3:8,4:15,5:15,6:8,7:8}


def parse_background(cat, roots):
    preset_base=cat.cpu(9,0x78ff,0x6000)
    queue=deque((root,0) for root in sorted(set(roots)))
    nodes={}; unresolved=[]; scripts=set()
    while queue:
        address,mode=queue.popleft()
        key=(address,mode)
        if key in nodes: continue
        if not 0xa000<=address<0xc000:
            unresolved.append(dict(address=address,mode=mode,reason='outside stream bank'))
            continue
        offset=cat.cpu(27,address,0xa000)
        first=cat.read(offset,1)[0]
        node=dict(address=address,offset=offset,mode=mode,edges=[])
        edges=node['edges']
        next_mode=mode
        if first==0xfe:
            size=1; node['kind']='skip'
        elif first==0xff:
            command=cat.read(offset+1,1)[0]
            if command not in COMMANDS and not command<12:
                unresolved.append(dict(address=address,mode=mode,reason=f'unsupported command {command:02X}'))
                continue
            size=2+PAYLOADS.get(command,0)
            if address+size>0xc000:
                unresolved.append(dict(address=address,mode=mode,reason='truncated command'))
                continue
            payload=cat.read(offset+2,size-2)
            node.update(kind='command',command=command,name=COMMANDS.get(command,'preset'),payload=list(payload))
            if command<12:
                next_mode=cat.read(preset_base+command*12+8,1)[0]
                node['next_mode']=next_mode
            elif command==0x12: next_mode=2
            elif command==0x10:
                target=int.from_bytes(payload,'little')
                edges.append(dict(target=target,mode=mode,condition='CE4C != 0'))
            elif command in (0x13,0x1c):
                target=int.from_bytes(payload,'little');scripts.add(target)
                node['palette_target']=target
            elif command==0x15:
                edges.append(dict(target=address,mode=7,condition='EF60 != 0; command retried',
                                  opaque=True,reason='wait path changes runtime mode; resume requires engine state'))
            elif command==0x1d:
                edges.append(dict(target=address,mode=mode,condition='CA33 != 0; wait'))
        else:
            size=RECORD_SIZE.get(mode)
            if size is None:
                unresolved.append(dict(address=address,mode=mode,reason='zero-advance mode8 requires runtime state'))
                continue
            if address+size>0xc000:
                unresolved.append(dict(address=address,mode=mode,reason='truncated tile record'))
                continue
            node.update(kind='tiles',data=list(cat.read(offset,size)))
        node['size']=size
        # Gates hand control to object/state code. Adjacent bytes are frequently
        # palette scripts, so no invented fallthrough across the fight boundary.
        if node.get('command') == 0x16 or node.get('command') == 7:
            node['stop']='external object/state transition'
        else:
            condition='next stream event'
            if node.get('command')==0x10: condition='CE4C == 0'
            if node.get('command')==0x15: condition='EF60 == 0'
            if node.get('command')==0x1d: condition='CA33 == 0'
            if node.get('command')==0x1e: condition='engine transition after stop; not ordinary scrolling'
            edges.append(dict(target=address+size,mode=next_mode,condition=condition))
        nodes[key]=node
        for edge in edges:
            if not edge.get('opaque'): queue.append((edge['target'],edge['mode']))
    # Classify only contiguous decoded bytes; do not fill gaps between paths.
    intervals=sorted(set((n['offset'],n['offset']+n['size']) for n in nodes.values()))
    merged=[]
    for begin,end in intervals:
        if merged and begin<=merged[-1][1]: merged[-1][1]=max(end,merged[-1][1])
        else: merged.append([begin,end])
    for begin,end in merged:
        cat.add(f'background_records_{begin:06X}',begin,end,'background_stream','decoded',
                'bank09 $7858 command dispatcher; $7C5B writer dispatch; checkpoint roots',
                graph='tables/background_graph.json')
    graph=dict(roots=sorted(set(roots)),initial_mode=0,
               limitation='Static possible paths, not a gameplay timeline. Gate/stop transitions remain external.',
               nodes=[nodes[key] for key in sorted(nodes)],unresolved=unresolved)
    cat.table('background_graph',graph)
    for target in sorted(scripts):
        if not 0xa000<=target<0xc000:
            unresolved.append(dict(address=target,reason='palette pointer outside bank27'));continue
        begin=p=cat.cpu(27,target,0xa000)
        while p<28*BANK and cat.read(p,1)[0]<0xf0: p+=2
        if p>=28*BANK:
            unresolved.append(dict(address=target,reason='palette terminator missing'));continue
        if p==begin: continue
        cat.add(f'level_palette_{target:04X}',begin,p,'palette_script','decoded',
                'stream commands $13/$1C call fixed $4CE0/$4CDC; packed color pairs')
    cat.table('background_graph',graph)
    return graph


def parse_spawns(cat, pointer):
    # ROM banks02/03 occupy 8000-BFFF for the original $6236 LDIR.
    if not 0x8000<=pointer<0xc000: raise ValueError('spawn pointer outside bank02/03')
    begin=p=2*BANK+pointer-0x8000
    end=min(4*BANK,p+0x600)
    records=[]
    while p<end and cat.read(p,1)[0]:
        header=cat.read(p,4);size=header[3]&127
        if size<4 or p+size>end: raise ValueError('invalid spawn record length')
        records.append(dict(offset=p,cpu_address=0x8000+p-2*BANK,
                            trigger=((header[0]&127)<<8)|header[1],type=header[2]&127,
                            trigger_flag=bool(header[0]&128),type_flag=bool(header[2]&128),
                            control=header[3],payload=list(cat.read(p+4,size-4))))
        p+=size
    if p>=end: raise ValueError('spawn terminator missing in copied 0x600 bytes')
    return begin,p+1,records


def animations(cat, kind, table_address, observations, types=128):
    table=cat.cpu(7,table_address,0x8000)
    roots=[cat.word(table+i*2) for i in range(types)]
    cat.add(f'{kind}_type_pointers',table,table+types*2,'animation_pointer_table','decoded',
            'bank04 $7A43/$7A70 (tiles); bank07 $8178 (sprite/collision frames)',
            table=cat.table(f'{kind}_type_pointers',roots))
    lower=0x8000 if kind=='tile' else 0xa000
    unique=sorted(set(x for x in roots if lower<=x<0xc000))
    lists=[];definitions={}
    for index,root in enumerate(unique):
        # Pointer lists have no stored lengths. Keep a conservative parse prefix,
        # bounded by another root or the earliest definition discovered in it.
        boundary=unique[index+1] if index+1<len(unique) else 0xc000
        observed=[f for f in observations if f['kind']==kind and roots[f['type']-1]==root]
        required=max((f['frame']+1 for f in observed),default=0)
        required_end=root+required*2
        boundary=max(boundary,required_end)
        observed_indices={f['frame'] for f in observed}
        p=root;frames=[];unresolved_indices=[];stop='inferred adjacent root boundary'

        while p+2<=boundary:
            physical=7*BANK+p-0x8000
            ptr=cat.word(physical)
            if not lower<=ptr<0xc000:
                stop='invalid/null frame pointer';break
            offset=7*BANK+ptr-0x8000
            if kind=='tile':
                d=cat.read(offset,4);rows,cols=d[2:4]
                size=4+rows*cols
                valid=bool(rows and cols and rows*cols<=256 and ptr+size<=0xc000)
                definition=dict(y_offset=d[0]-256 if d[0]>127 else d[0],
                                x_offset=d[1]-256 if d[1]>127 else d[1],rows=rows,cols=cols)
            else:
                header=cat.read(offset,1)[0];count=header&127;size=1+count*6
                valid=count<=32 and ptr+size<=0xc000
                definition=dict(header=header,header_flags=header&128,component_count=count,components=[list(cat.read(offset+1+j*6,6)) for j in range(count)] if valid else [])
            if not valid:
                if len(frames)<required and len(frames) not in observed_indices:
                    unresolved_indices.append(dict(frame=len(frames),pointer=ptr,
                                                   reason='unobserved hole or alternative structure; not decoded as a matrix'))
                    frames.append(ptr);p+=2;continue
                stop='frame definition failed bounds/shape checks';break
            if root<ptr<boundary and ptr>=required_end: boundary=ptr
            if p+2>boundary:
                stop='definition intersects list prefix';break
            frames.append(ptr)
            if ptr not in definitions:
                definition.update(address=ptr,offset=offset,length=size)
                definitions[ptr]=definition
            p+=2
            if len(frames)>256:
                stop='frame index byte limit';break
        record=dict(address=root,types=[i+1 for i,x in enumerate(roots) if x==root],
                    frames=frames,parsed_prefix_count=len(frames),observed_minimum_count=required,
                    observed_frames=sorted(observed_indices),unresolved_indices=unresolved_indices,
                    extent='inferred prefix with observed minimum; not a proven runtime frame count',stop_reason=stop)
        if len(frames)<required: raise ValueError(f'{kind} root {root:04X}: observed frame outside parsed prefix')
        lists.append(record)
        if frames:
            begin=7*BANK+root-0x8000
            cat.add(f'{kind}_frame_list_{root:04X}',begin,begin+len(frames)*2,
                    'animation_frame_list','inferred','bounds from adjacent roots and first pointed definition',
                    types=record['types'],frames=frames,observed_minimum_count=required,
                    observed_frame_evidence=observed)
    for ptr,d in sorted(definitions.items()):
        cat.add(f'{kind}_frame_{ptr:04X}',d['offset'],d['offset']+d['length'],
                'tile_matrix' if kind=='tile' else 'sprite_frame_definition','inferred',
                'reachable from a parsed frame-list prefix; runtime frame reachability still unproven')
    cat.table(f'{kind}_animations',dict(lists=lists,definitions=list(definitions.values()),
                                      limitations='List prefixes include traced minimum extents but still need complete handler/frame-index analysis. Sprite component fields retained raw. Custom raw stamp paths are separate.'))
    return lists,definitions


def stage_metatiles(cat, stages, graph):
    nodes={(n['address'],n['mode']):n for n in graph['nodes']}
    definitions={};stage_maps=[]
    for stage in stages:
        todo=deque((cp['stream_address'],0) for cp in stage['checkpoints'])
        seen=set();identifiers=set()
        while todo:
            key=todo.popleft()
            if key in seen or key not in nodes:continue
            seen.add(key);node=nodes[key]
            if node['kind']=='tiles':identifiers.update(node['data'])
            if node.get('command')==0x12: identifiers.update(node['payload'])
            for edge in node['edges']:
                if not edge.get('opaque'):todo.append((edge['target'],edge['mode']))
        mapping=[]
        for identifier in sorted(identifiers):
            address=stage['metatile_base']+identifier*16
            # $7C48 maps decimal bank25 at 8000; writers temporarily map
            # decimal bank26 at A000 ($7DDE/$7E7E/$7F29) before table reads.
            if not 0x8000<=address or address+16>0xc000:
                raise ValueError('metatile definition crosses mapped table span')
            offset=25*BANK+address-0x8000
            name=f'metatile_{offset:06X}'
            reference=dict(stage=stage['stage_index'],metatile_id=identifier,cpu_address=address)
            mapping.append(dict(id=identifier,definition=name))
            if offset not in definitions:
                entry=cat.add(name,offset,offset+16,'metatile_definition','decoded',
                              'bank09 $7C48/$7DDE/$7E7E/$7F29; 4x4 final tile indices',
                              references=[],tiles=list(cat.read(offset,16)))
                definitions[offset]=entry
            definitions[offset]['references'].append(reference)
        stage_maps.append(dict(stage=stage['stage_index'],definitions=mapping,
                               limitation='IDs reachable in static checkpoint/branch paths; external gate continuations remain outside this map.'))
    cat.table('stage_metatiles',stage_maps)
    return len(definitions)


def extend(cat):
    stages=[]
    spawns=cat.cpu(2,0x93b8,0x8000)
    checkpoints=cat.cpu(9,0x7c8c,0x6000)
    metatiles=cat.cpu(9,0x7d76,0x6000)
    for name,begin in (('spawn_stage_pointers',spawns),('background_checkpoint_pointers',checkpoints),('metatile_stage_bases',metatiles)):
        cat.add(name,begin,begin+18,'pointer_table','decoded',
                'bank04 $6222; bank09 $77FC; fixed $4639; nine adjacent entries')
    roots=set()
    for stage in range(9):
        pointer=cat.word(spawns+stage*2)
        begin,end,records=parse_spawns(cat,pointer)
        name=f'stage_{stage:02X}_spawns'
        cat.add(name,begin,end,'spawn_stream','decoded','bank04 $6222/$6236; original 0x600-byte copied span',
                table=cat.table(name,records))
        cp=cat.word(checkpoints+stage*2);offset=cat.cpu(9,cp,0x6000)
        pairs=[dict(stream_address=cat.word(offset+i*4),trigger=cat.word(offset+i*4+2)) for i in range(6)]
        cat.add(f'stage_{stage:02X}_checkpoints',offset,offset+24,'checkpoint_table','decoded',
                'bank09 $7812 selects stage; CA1E selects a four-byte record using fixed $4639')
        roots.update(p['stream_address'] for p in pairs)
        stages.append(dict(stage_index=stage,spawn_address=pointer,spawn_records=len(records),
                           checkpoint_table=cp,checkpoints=pairs,metatile_base=cat.word(metatiles+stage*2),
                           graphics_root=cat.word(cat.cpu(10,0x8165,0x8000)+stage*2),
                           sprite_root=cat.word(cat.cpu(10,0x83c0,0x8000)+stage*2)))
    cat.table('stage_entrypoints',stages)
    graph=parse_background(cat,roots)
    metatile_count=stage_metatiles(cat,stages,graph)
    evidence_path=Path(__file__).resolve().parent.parent/'notes/animation_observed_frames.json'
    observations=[]
    if evidence_path.exists():
        evidence=json.loads(evidence_path.read_text())
        if evidence['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest():
            raise ValueError('animation trace provenance ROM hash mismatch')
        observations=evidence['frames']
        cat.table('animation_observed_frames',evidence)
    results={}
    for kind,address in (('tile',0x8596),('sprite',0x8496)):
        lists,defs=animations(cat,kind,address,observations)
        results[kind]=dict(unique_roots=len(lists),parsed_lists=sum(bool(x['frames']) for x in lists),definitions=len(defs))
    cat.table('entrypoint_summary',dict(stage_indices=9,checkpoints=54,unique_background_roots=len(roots),
                                      background_nodes=len(graph['nodes']),unique_metatile_definitions=metatile_count,unresolved_background=graph['unresolved'],animations=results))
