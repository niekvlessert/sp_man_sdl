"""Observed planar strips and rooted attract-demo input streams."""
import hashlib,json
from catalog_rom import png
from pathlib import Path


def expand_strip(raw,planes,colors):
    if len(raw)%(8*planes):raise ValueError('partial planar tile strip')
    packed=bytearray()
    for row in range(0,len(raw),planes):
        values=[sum(((raw[row+p]>>(7-bit))&1)<<p for p in range(planes)) for bit in range(8)]
        pixels=[colors[v]&15 for v in values]
        packed.extend((pixels[i]<<4)|pixels[i+1] for i in range(0,8,2))
    return bytes(packed)


def mapped_source(address,banks):
    if not 0x6000<=address<0xc000:raise ValueError('strip source outside mapped ROM')
    return banks[(address-0x6000)//8192]*8192+(address&8191)


def demo_stream(rom,root):
    start=31*8192+root-0xa000
    records=[];p=start
    while p+9<=32*8192:
        if rom[p:p+9]==bytes([1]+[255]*8):return p+9,records
        duration,first,second=rom[p:p+3]
        records.append(dict(address=0xa000+p-31*8192,duration=duration,
                            countdown_frames=duration or 256,input_C908=first,input_C907=second))
        p+=3
    raise ValueError('demo terminal marker absent')


def extend(cat):
    start=cat.cpu(1,0x7877,0x6000);descriptors=[]
    cat.add('attract_demo_selectors',start,start+12,'demo_selector_table','decoded',
            'bank01 $7863 wraps index modulo3; $784D loads stage/checkpoint and stream root')
    for i in range(3):
        stage,checkpoint=cat.read(start+4*i,2);root=cat.word(start+4*i+2)
        end,records=demo_stream(cat.rom,root);offset=cat.cpu(31,root,0xa000)
        cat.add(f'attract_demo_stream_{root:04X}',offset,end,'demo_input_stream','decoded',
            'bank01 $789C countdown and triple reads via $78D4 bank1F; nine-byte01+FF terminal fence matches $77F0 lookahead',
            table=cat.table(f'attract_demo_stream_{root:04X}',dict(records=records,terminal_address=0xa000+end-31*8192-9,
                terminal_bytes=[1]+[255]*8,frames=sum(r['countdown_frames'] for r in records))))
        descriptors.append(dict(index=i,stage=stage,checkpoint=checkpoint,root=root,records=len(records),
                                frames=sum(r['countdown_frames'] for r in records)))
    cat.table('attract_demos',dict(demos=descriptors,bank=31,
        limitations='Stored input playback, not proof all three demos finish naturally; external lookahead terminates attract mode.'))
    project=Path(__file__).resolve().parent.parent
    trace_directory=project/'tools/probe_out/screen_domains'
    provenance=trace_directory/'provenance.json'
    if not provenance.exists():return
    evidence=json.loads(provenance.read_text())
    if evidence['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest():raise ValueError('screen trace provenance mismatch')
    strips=[];sources={};checks=[];trace_sources=[];demo_reads=0
    for context in ('title_demo','ending'):
        path=trace_directory/context/'trace.log';raw_log=path.read_bytes();lines=raw_log.decode().splitlines()
        if lines[-1]!='COMPLETE':raise ValueError('screen trace incomplete')
        trace_sources.append(dict(context=context,path=str(path.relative_to(project)),sha256=hashlib.sha256(raw_log).hexdigest()))
        for line_no,line in enumerate(lines,1):
            fields=line.split()
            if fields[0]=='DEMO':
                address,value=map(int,fields[1:]);assert cat.rom[mapped_source(address,[1,2,31])]==value;demo_reads+=1
            if fields[0]!='EXPAND':continue
            address,count,planes=map(int,fields[1:4]);banks=list(map(int,fields[4].split(',')))
            colors=bytes.fromhex(fields[5]);raw=bytes.fromhex(fields[6]);expected=bytes.fromhex(fields[7])
            offsets=[mapped_source(address+i,banks) for i in range(len(raw))]
            if bytes(cat.rom[p] for p in offsets)!=raw:raise ValueError('strip source provenance mismatch')
            actual=expand_strip(raw,planes,colors)
            if actual!=expected:raise ValueError('original strip expansion mismatch')
            name=f'planar_strip_{offsets[0]:06X}_{planes}bpp_{count:02X}'
            if name not in sources:
                # Observed pair mappings are consecutive; never silently bridge an unmapped gap.
                if offsets!=list(range(offsets[0],offsets[0]+len(raw))):raise ValueError('noncontiguous strip needs split export')
                sources[name]=cat.add(name,offsets[0],offsets[-1]+1,'planar_graphics_strip','decoded',
                    'Original bank03 $AF3A/$AF93/$AFF4 observed source and byte-exact CB00 expansion',planes=planes,tiles=count)
            ident=f'screen_strip_{len(strips):03d}'
            out=f'decoded/{ident}.bin';(cat.out/out).write_bytes(actual)
            palette=bytes.fromhex(fields[8]) if len(fields)>8 else None
            preview=None
            if palette:
                rgb=[]
                for i in range(16):
                    rb,g=palette[2*i:2*i+2]
                    rgb.append(tuple((v*255+3)//7 for v in ((rb>>4)&7,g&7,rb&7)))
                tiles_per_row=min(count,32)
                preview_width=tiles_per_row*8;preview_height=((count+tiles_per_row-1)//tiles_per_row)*8
                pixels=bytearray(preview_width*preview_height*3)
                for tile in range(count):
                    for y in range(8):
                        for pair in range(4):
                            value=actual[(tile*8+y)*4+pair]
                            for side,index in enumerate((value>>4,value&15)):
                                x=(tile%tiles_per_row)*8+pair*2+side
                                atlas_y=(tile//tiles_per_row)*8+y;offset=(atlas_y*preview_width+x)*3
                                pixels[offset:offset+3]=bytes(rgb[index])
                preview=f'previews/{ident}.png'
                png(cat.out/preview,preview_width,preview_height,pixels)
            strips.append(dict(id=ident,source=name,context=context,address=address,banks=banks,
                               tiles=count,planes=planes,color_indices=list(colors),decoded=out,
                               decoded_sha256=hashlib.sha256(actual).hexdigest(),width=count*8,height=8,
                               preview=preview,preview_layout='tile atlas, at most32 columns; not a composed screen',palette_bytes=list(palette) if palette else None,
                               layout='tile-major; each tile eight rows of eight pixels; packed4bpp nibbles'))
            checks.append(dict(context=context,line=line_no,source_offset=offsets[0],bytes=len(raw),expanded_bytes=len(actual),exact=True))
    cat.table('screen_planar_strips',dict(strips=strips,
        limitations='Observed source strips and color-index mapping; palette timing/composed screen placement remain separate.'))
    validation=dict(**evidence,sources=trace_sources,strip_calls=len(checks),checks=checks,
        demo_byte_reads=demo_reads,unique_strip_sources=len(sources),
        limitations='Natural title/demo and assisted ending contexts; only observed strips. End-screen placement and complete demo timing remain separate.')
    cat.table('screen_domains_validation',validation)
    (project/'notes/screen_domains_validation.json').write_text(json.dumps(validation,indent=2)+'\n')
    path=project/'notes/demo_playback_validation.json'
    if path.exists():
        report=json.loads(path.read_text())
        if report['rom_sha256']!=hashlib.sha256(cat.rom).hexdigest() or report['passed']!=report['total']:raise ValueError('demo playback validation mismatch')
        cat.table('demo_playback_validation',report)
