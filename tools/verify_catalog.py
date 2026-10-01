#!/usr/bin/env python3
"""Verify provenance, full coverage and optional stage0 VRAM reference."""
import argparse
import hashlib
import json
from pathlib import Path


def apply_upload(root, entries, entry, before):
    """Apply one exported original upload table to a supplied VRAM image."""
    vram=bytearray(before)
    if len(vram)!=0x20000: raise ValueError('expected 128 KiB VRAM')
    def upload(address,data):
        for i,v in enumerate(data): vram[(address+i)&0x1ffff]=v
    def source(name): return (root/entries[name]['decoded']).read_bytes()
    records=json.loads((root/entry['table']).read_text())
    if entry['kind']=='graphics_upload_table':
        for d in records:
            for plane,name in enumerate(d['sources']):
                data=bytearray(source(name))
                if d['flags']&1:
                    for i in range(0,len(data)-len(data)%8,8): data[i:i+8]=data[i:i+8][::-1]
                if d['flags']&2 and plane==0:
                    data=bytearray(int(f'{v:08b}'[::-1],2) for v in data)
                for li,destinations in enumerate(d['destinations']):
                    if not d['mask']&(128>>li): continue
                    for dest in destinations:
                        a=dest-1; upper=a>=12
                        if upper: a-=12
                        h=((((a&0xfc)<<4)&255)+((a&3)<<3))&255
                        logical=(0x10000 if upper else 0)+(h<<8)+d['tile_offset']*8+plane*0x2000
                        upload(logical,data)
    elif entry['kind']=='sprite_upload_table':
        for d in records:
            for plane in range(3):
                if d['mask']&(1<<plane): upload(0xc800+d['pattern_base']*8+plane*0x800,source(d['source']))
    else: raise ValueError('not an upload table')
    return bytes(vram)


def reconstruct_stage0(root, manifest):
    entries={e['id']:e for e in manifest['entries']}
    vram=bytes(0x20000)
    for name in ('graphics_group_840B','graphics_group_8458','graphics_group_8666',
                 'sprite_table_92B8','sprite_table_92D7'):
        vram=apply_upload(root,entries,entries[name],vram)
    return vram


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('rom',type=Path,nargs='?',default=Path('space_manbow.rom'))
    p.add_argument('--assets',type=Path,default=Path('assets'))
    p.add_argument('--stage0-vram',type=Path)
    args=p.parse_args()
    r=args.rom.read_bytes(); root=args.assets
    m=json.loads((root/'manifest.json').read_text())
    assert hashlib.sha256(r).hexdigest()==m['rom_sha256']
    cursor=0
    for c in m['coverage']:
        assert c['start']==cursor and c['end']>cursor
        expected=[e['id'] for e in m['entries'] if e['start']<=cursor and e['end']>=c['end']]
        assert c['entries']==expected
        cursor=c['end']
    assert cursor==len(r)
    for e in m['entries']:
        raw=(root/e['raw']).read_bytes()
        assert raw==r[e['start']:e['end']]
        assert hashlib.sha256(raw).hexdigest()==e['sha256']
        if 'decoded_sha256' in e:
            data=(root/e['decoded']).read_bytes()
            assert len(data)==e['decoded_length']
            assert hashlib.sha256(data).hexdigest()==e['decoded_sha256']
    banks=b''.join((root/f'banks/bank_{b:02X}.bin').read_bytes() for b in range(32))
    assert banks==r
    if args.stage0_vram:
        assert reconstruct_stage0(root,m)==args.stage0_vram.read_bytes(), 'stage0 VRAM mismatch'
        print('stage0 VRAM: 131072/131072 bytes match reference')
    print(f"catalog PASS: {len(m['entries'])} entries; complete contiguous ROM coverage")

if __name__=='__main__': main()
