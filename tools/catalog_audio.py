"""Rooted PSG/SCC audio tables and a conservative sequence control-flow graph."""
from collections import deque
from pathlib import Path
import hashlib
import json

BANK = 8192
COMMAND_LENGTHS = {
    **{i:1 for i in range(0xd0,0xe0)},0xd6:3,0xd7:3,0xdb:2,0xdd:3,
    **{i:1 for i in range(0xe0,0xff)},0xe0:2,0xe1:2,0xe2:2,0xe3:2,
    0xe4:2,0xe5:4,0xe6:3,0xe7:2,0xe9:2,0xea:2,0xeb:3,0xed:2,
    0xee:2,0xf1:2,0xf2:2,0xf7:2,0xf8:2,0xf9:3,0xfb:2,0xfc:4,0xfd:3,0xfe:2,
}


def physical(address, group):
    if not 0x6000 <= address < 0xc000:
        raise ValueError('audio pointer outside mapped ROM')
    bank = 28 if address < 0x8000 else 29 if address < 0xa000 else group
    return bank*BANK + (address & 8191)


def sequence_graph(rom, roots):
    # State: PC, A000 bank, mode09, low2 mode0D, flags0E, saved flags0E,
    # single call return, repeat marker, instrument-pattern context.
    pending=deque((pc,group,0,0,0,0,0,0,False) for pc,group in roots)
    visited=set();nodes={};unresolved=[]
    while pending:
        state=pending.popleft()
        if state in visited:continue
        visited.add(state)
        if len(visited)>100000:raise ValueError('audio graph state limit')
        pc,group,mode,form,flags,saved,ret,mark,pattern=state
        try:offset=physical(pc,group)
        except ValueError:
            unresolved.append(dict(state=list(state),reason='target outside audio ROM'));continue
        def word(address):
            return rom[physical(address,group)] | rom[physical(address+1,group)]<<8
        op=rom[offset];length=1;edges=[];dependencies=[]
        if op==0xff:
            kind='end'
        elif op<0xd0:
            kind='note'
            if mode&1:length=1
            elif mode&2:length=1 if form in (0,1) or flags&0x60 else 2
            elif mode&0x1c:length=1
            else:
                unresolved.append(dict(state=list(state),reason='note mode not initialized'));continue
            if mode&0x1c and not mode&3:
                # Actual table choice depends on octave selector +29, which is
                # independent of the sequence length. Retain both rooted tables.
                for table in (0x9b00,0x9bf3):
                    address=table+(op>>4)*2
                    p=word(address)
                    dependencies.append(dict(kind='instrument_pattern',table=table,selector=op>>4,target=p))
                    pending.append((p,group,2,form,flags,saved,0,0,True))
            edges.append(pc+length)
        else:
            kind='command';length=COMMAND_LENGTHS[op]
            if pc+length>0xc000:
                unresolved.append(dict(state=list(state),reason='truncated command operands'));continue
            arg=rom[physical(pc+1,group)] if length>1 else 0
            if op in (0xe0,0xe1,0xe2,0xe3):
                flags &= ~0x40;form=op&3
                if not form:length=1
            if op==0xf8:
                length=3 if arg&128 else 2
            if op==0xfe:
                previous=mode;mode=arg
                if mode==1 and previous!=1:saved=flags;flags=0
                elif previous==1 and mode!=1:flags=saved
            if op==0xf4:flags|=0x40
            if op==0xf0:flags&=0xe2
            if op==0xf6:flags&=0x9f
            if op==0xf1:flags|=0x14
            if op==0xf2:flags|=0x0c
            if op==0xf3:flags&=~8
            if op==0xf7:flags|=128
            if op==0xde:
                if mode&2:flags|=0x20
                else:mark=pc+1
            if op==0xdf:flags&=127
            if op==0xf5:mark=pc+1
            next_pc=pc+length
            if op==0xfd:
                edges=[word(pc+1)]
            elif op==0xf9:
                ret=next_pc;edges=[word(pc+1)]
            elif op==0xfa:
                if ret:edges=[ret]
                else:unresolved.append(dict(state=list(state),reason='single return slot absent'))
            elif op==0xfb:
                edges=[next_pc]
                if mark:edges.append(mark)
                else:unresolved.append(dict(state=list(state),reason='repeat marker absent'))
            elif op==0xfc:
                edges=[next_pc,word(pc+2)]
            else:edges=[next_pc]
        if pc+length>0xc000:
            unresolved.append(dict(state=list(state),reason='instruction crosses mapped ROM end'));continue
        key=(offset,length,mode,form,flags,pattern)
        node=dict(offset=offset,bank=offset//BANK,address=pc,opcode=op,length=length,
            bytes=[rom[physical(pc+i,group)] for i in range(length)],
            source_offsets=[physical(pc+i,group) for i in range(length)],kind=kind,group=group,mode=mode,
            form=form,flags=flags,input_mode=state[2],input_form=state[3],input_flags=state[4],pattern=pattern,edges=edges,dependencies=dependencies)
        if key in nodes:
            node['edges']=sorted(set(node['edges'])|set(nodes[key]['edges']))
        nodes[key]=node
        for target in edges:pending.append((target,group,mode,form,flags,saved,ret,mark,pattern))
    return dict(nodes=sorted(nodes.values(),key=lambda n:(n['offset'],n['length'],n['mode'],n['form'],n['flags'],n['pattern'])),
                unresolved=unresolved,states=len(visited))


def extend(cat):
    group_begin=cat.cpu(28,0x690f,0x6000)
    groups=list(cat.read(group_begin,26))
    cat.add('audio_music_bank_selectors',group_begin,group_begin+26,'audio_bank_table','decoded',
        'bank1C $68FA bounds IDs39..52 inclusive then indexes $690F',
        table=cat.table('audio_music_banks',[dict(id=0x39+i,bank=b) for i,b in enumerate(groups)]))
    begin=cat.cpu(28,0x7a00,0x6000)
    # IDs01..55 have structurally valid descriptors. 00 is skipped by $693F;
    # 56 is pointer-like but points into the table and remains unresolved.
    cat.add('audio_sound_pointers',begin,begin+0x57*2,'audio_pointer_table','inferred',
        '$6967 indexes ID*2; inferred table boundary before sequence $7A72; IDs00 and56 are not promoted to playable sounds')
    sounds=[];roots=[];seen=set()
    for ident in range(1,0x56):
        pointer=cat.word(begin+ident*2);start=physical(pointer,30)
        mask,priority=cat.read(start,2)
        if mask==8:channels=[3]
        elif mask==12:channels=[2,3]
        elif mask==0xf3:channels=[0,1,4,5,6,7]
        else:channels=list(range(8))
        length=2+len(channels)*2
        if pointer not in seen:
            cat.add(f'audio_descriptor_{pointer:04X}',start,start+length,'audio_descriptor','decoded',
                '$6973 reads flags/priority; $6979/$697E select1/2 channels; $699B F3 selects6; otherwise8; $69F2 installs stream pointer')
            seen.add(pointer)
        streams=[dict(channel=c,address=cat.word(start+2+2*i)) for i,c in enumerate(channels)]
        possible_groups=[groups[ident-0x39]] if 0x39<=ident<0x53 else [23,24,30]
        for stream in streams:
            candidates=possible_groups if stream['address']>=0xa000 else [30]
            roots.extend((stream['address'],g) for g in candidates)
        sounds.append(dict(id=ident,address=pointer,flags=mask,priority=priority,
            streams=streams,possible_A000_banks=possible_groups,
            bank_rule='explicit selector' if 0x39<=ident<0x53 else 'retained previous audio bank; alternatives are conservative'))
    cat.table('audio_sounds',dict(sounds=sounds,unresolved_ids=[0x56],
        skipped_id=0,limitations='Descriptor flags are routing classes, not track titles. Retained-bank variants may be unreachable naturally. IDs>=57 are not inferred as table entries.'))
    graph=sequence_graph(cat.rom,roots)
    cat.table('audio_sequence_graph',graph)
    used=set()
    for n in graph['nodes']:used.update(n['source_offsets'])
    segments=[]
    for offset in sorted(used):
        if segments and segments[-1][1]==offset and offset//BANK==segments[-1][0]//BANK:segments[-1][1]+=1
        else:segments.append([offset,offset+1])
    for start,end in segments:
        cat.add(f'audio_sequence_{start:06X}',start,end,'audio_sequence','inferred',
            'Rooted bytecode graph from sound descriptors; explicit note modes and command operands; loops/calls followed; ambiguous instrument tables retained as alternatives')
    # 112 waveform pointers end exactly where the first32-byte source begins.
    start=cat.cpu(28,0x6442,0x6000);waves=[];seen=set()
    cat.add('audio_waveform_pointers',start,start+224,'audio_waveform_pointer_table','inferred',
        '$74B1 indexes masked7F selector*2; prefix ends at first source $6522; not proof selectors112..127 are legal')
    for selector in range(112):
        pointer=cat.word(start+selector*2);offset=physical(pointer,30)
        if pointer not in seen:
            cat.add(f'audio_waveform_{pointer:04X}',offset,offset+32,'scc_waveform','decoded',
                '$63FD copies32 bytes to SCC wave RAM; sources can overlap')
            seen.add(pointer)
        data=cat.read(offset,32)
        waves.append(dict(selector=selector,address=pointer,samples=[b if b<128 else b-256 for b in data]))
    cat.table('audio_waveforms',dict(waves=waves,unique_sources=len(seen),
        limitations='Raw32-byte SCC wave sources; dynamic stepping and modulation are not reconstructed.'))
    cat.table('audio_summary',dict(sound_descriptors=len({s['address'] for s in sounds}),
        sound_ids=len(sounds),sequence_states=graph['states'],sequence_nodes=len(graph['nodes']),
        sequence_bytes=len(used),sequence_ranges=len(segments),unresolved=len(graph['unresolved']),
        unique_waveforms=len(seen),limitations='Static rooted extraction, requires runtime boundary validation; no complete audio synthesizer or final track exports.'))

    for name in ('audio_assets_validation','audio_domains_validation'):
        path=Path(__file__).resolve().parent.parent/'notes'/f'{name}.json'
        if not path.exists():continue
        evidence=json.loads(path.read_text())
        if evidence['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest():raise ValueError('audio evidence ROM mismatch')
        if name=='audio_assets_validation' and evidence['passed']!=evidence['total']:raise ValueError('failed audio asset evidence')
        if name=='audio_domains_validation' and evidence['failures']:raise ValueError('failed audio domain evidence')
        cat.table(name,evidence)
