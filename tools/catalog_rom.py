#!/usr/bin/env python3
"""Reproducible Space Manbow inventory. Physical ranges are half-open.

Only traced/loader-rooted structures are classified. Linear disassembly and
successful speculative parsing never constitute proof of executable code.
"""
import argparse
import hashlib
import json
import struct
import zlib
from pathlib import Path

BANK = 0x2000

def sha(data):
    return hashlib.sha256(data).hexdigest()

def png(path, width, height, pixels):
    def chunk(kind, data):
        return struct.pack('>I', len(data)) + kind + data + struct.pack('>I', zlib.crc32(kind + data))
    rows = b''.join(b'\0' + pixels[y*width*3:(y+1)*width*3] for y in range(height))
    path.write_bytes(b'\x89PNG\r\n\x1a\n' + chunk(b'IHDR', struct.pack('>IIBBBBB', width, height, 8, 2, 0, 0, 0)) + chunk(b'IDAT', zlib.compress(rows)) + chunk(b'IEND', b''))

class Catalog:
    def __init__(self, rom, out):
        if len(rom) != 32 * BANK or rom[:2] != b'AB':
            raise ValueError('expected a 256 KiB AB-header Space Manbow cartridge')
        self.rom, self.out = rom, out
        self.entries, self.rles, self.errors = [], {}, []
        self.graphics_roots = {0x83fd}
        for name in ('banks', 'raw', 'decoded', 'previews', 'tables'):
            (out/name).mkdir(parents=True, exist_ok=True)

    def read(self, offset, size):
        if offset < 0 or size < 0 or offset + size > len(self.rom):
            raise ValueError('ROM range overflow')
        return self.rom[offset:offset+size]

    def cpu(self, bank, address, origin):
        if not origin <= address < origin + BANK:
            raise ValueError(f'address {address:04X} outside bank window {origin:04X}')
        return bank * BANK + address - origin

    def word(self, offset):
        return int.from_bytes(self.read(offset, 2), 'little')

    def add(self, name, start, end, kind, confidence, evidence, **extra):
        data = self.read(start, end-start)
        path = f'raw/{name}.bin'
        (self.out/path).write_bytes(data)
        entry = dict(id=name, start=start, end=end, length=end-start,
                     bank_decimal=start//BANK, bank_hex=f'{start//BANK:02X}',
                     kind=kind, confidence=confidence, evidence=evidence,
                     raw=path, sha256=sha(data), **extra)
        self.entries.append(entry)
        return entry

    def table(self, name, value):
        path = f'tables/{name}.json'
        (self.out/path).write_text(json.dumps(value, indent=2) + '\n')
        return path

    def rle(self, pointer, selector, ref):
        h = pointer >> 8
        bits = h & 0xe0
        bank = 12 + selector + ((bits << 3 | bits >> 5) & 255)
        start = bank*BANK + (pointer & 0x1fff)
        if start in self.rles:
            self.rles[start]['references'].append(ref)
            return self.rles[start]
        p, data = start, bytearray()
        while True:
            control = self.read(p, 1)[0]; p += 1
            if control == 0:
                break
            count = control & 127
            if not count:
                continue  # Original $829D/$829E treats $80 as a no-op packet.
            if control & 128:
                data.extend(self.read(p, count)); p += count
            else:
                data.extend(self.read(p, 1)*count); p += 1
            if len(data) > 0x20000:
                raise ValueError('RLE output overflow')
        name = f'rle_{start:06X}'
        entry = self.add(name, start, p, 'compressed_graphics', 'decoded',
                         'bank10 loader $827B/$8290/$82BA; src/assets.cpp',
                         references=[ref], decoded=f'decoded/{name}.bin',
                         decoded_length=len(data), decoded_sha256=sha(data))
        (self.out/entry['decoded']).write_bytes(data)
        # Monochrome strips are source bitplanes, not palette-correct tiles.
        if data:
            width, height = 128, ((len(data)+127)//128)*8
            pixels = bytearray(width*height*3)
            for i, byte in enumerate(data):
                tx, ty = i//8 % 16, i//128
                y = ty*8 + i%8
                for x in range(8):
                    v = 255 if byte & (128 >> x) else 0
                    k = (y*width+tx*8+x)*3
                    pixels[k:k+3] = bytes((v,v,v))
            entry['preview'] = f'previews/{name}.png'
            png(self.out/entry['preview'], width, height, pixels)
        self.rles[start] = entry
        return entry

    def sprites(self, address):
        start = p = self.cpu(10, address, 0x8000)
        records = []
        for _ in range(256):
            d = self.read(p, 1)[0]
            if not d:
                p += 1; break
            if p + 6 > 11*BANK:
                raise ValueError('sprite table crosses bank')
            d = self.read(p, 6)
            ref = f'sprite_table_{address:04X}@{p:06X}'
            rle = self.rle(int.from_bytes(d[2:4], 'little'), d[4], ref)
            records.append(dict(offset=p, mask=d[0], pattern_base=d[1],
                                object_type=d[5], source=rle['id']))
            p += 6
        else:
            raise ValueError('unterminated sprite table')
        self.add(f'sprite_table_{address:04X}', start, p, 'sprite_upload_table',
                 'decoded', 'bank10 $8389; table roots $92B8 and $83C0',
                 table=self.table(f'sprite_table_{address:04X}', records))

    def group(self, address, confidence='decoded'):
        start = self.cpu(10, address, 0x8000)
        if self.read(start, 1) != b'\xff':
            raise ValueError('group must start at resolved FF preamble end')
        p, records = start+1, []
        for _ in range(256):
            destinations, destination = [[] for _ in range(8)], 0
            while True:
                if p >= 11*BANK:
                    raise ValueError('destination lists cross bank')
                x = self.read(p, 1)[0]; p += 1
                if x == 255: break
                destination += 1
                if x > 8:
                    raise ValueError('invalid destination list')
                if x: destinations[x-1].append(destination)
            while True:
                marker = self.read(p, 1)[0]
                if marker == 255:
                    p += 1
                    self.add(f'graphics_group_{address:04X}', start, p, 'graphics_upload_table',
                             confidence, 'bank10 $818F/$81C2; src/assets.cpp',
                             table=self.table(f'graphics_group_{address:04X}', records))
                    return
                if marker == 254:
                    p += 1; break
                if p+8 > 11*BANK: raise ValueError('descriptor crosses bank')
                d = self.read(p, 8)
                sources = []
                for plane in range(2):
                    ptr = int.from_bytes(d[3+plane*2:5+plane*2], 'little')
                    sources.append(self.rle(ptr, d[7], f'group_{address:04X}@{p:06X}/plane{plane}')['id'])
                records.append(dict(offset=p, flags=d[0], mask=d[1], tile_offset=d[2],
                                    destinations=destinations, sources=sources))
                p += 8
        raise ValueError('unterminated graphics group')

    def structures(self):
        self.add('cartridge_header', 0, 16, 'cartridge_header', 'decoded',
                 'MSX AB header', init_address=self.word(2))
        for address, count, name in ((0x8165,9,'graphics_stage_pointers'),
                                    (0x8177,9,'graphics_context_pointers'),
                                    (0x8189,3,'graphics_extra_pointers'),
                                    (0x83c0,9,'sprite_stage_pointers')):
            start = self.cpu(10, address, 0x8000)
            pointers = [self.word(start+i*2) for i in range(count)]
            self.add(name, start, start+count*2, 'pointer_table', 'inferred',
                     'bank10 $815F/$800F/$8000/$83B6; extent from adjacent labels',
                     table=self.table(name, pointers))
            if address != 0x83c0:
                self.graphics_roots.update(pointers)
            if address == 0x83c0:
                for ptr in sorted(set(pointers)):
                    try: self.sprites(ptr)
                    except ValueError as e: self.errors.append(dict(root=f'{ptr:04X}', error=str(e)))
        self.sprites(0x92b8)
        for address in (0x840b,0x8458,0x8666):
            self.group(address)
        known = {0x840b, 0x8458, 0x8666}
        candidates = []
        for root in sorted(self.graphics_roots):
            p = self.cpu(10, root, 0x8000)
            begin = p
            while p < 11*BANK and self.read(p,1)[0] < 0xf0:
                p += 2  # $4D01 consumes two packed palette bytes.
            terminal = self.read(p,1)[0] if p < 11*BANK else None
            resolved = 0x8000 + p - 10*BANK
            record = dict(root=root, preamble_end=resolved, terminal=terminal,
                          status='unresolved', reason='preamble terminator requires further loader analysis')
            if terminal == 255:
                if p > begin:
                    self.add(f'palette_preamble_{root:04X}', begin, p,
                             'palette_script', 'inferred', 'fixed $4CE0/$4D01: packed pairs until control byte')
                if resolved not in known:
                    # Trial parsing is transactional: failed candidates classify no bytes.
                    before = len(self.entries)
                    previous = set(self.rles)
                    references = {key:list(value['references']) for key,value in self.rles.items()}
                    try:
                        self.group(resolved, 'inferred')
                        known.add(resolved)
                    except ValueError as e:
                        for entry in self.entries[before:]:
                            for field in ('raw','decoded','preview','table'):
                                if field in entry: (self.out/entry[field]).unlink(missing_ok=True)
                        del self.entries[before:]
                        for key in set(self.rles)-previous: del self.rles[key]
                        for key, refs in references.items(): self.rles[key]['references'] = refs
                        record['reason'] = str(e)
                if resolved in known:
                    record.update(status='parsed', reason='loader-rooted group; non-stage0 groups need VRAM comparison')
            candidates.append(record)
        self.table('graphics_roots', candidates)
        start = self.cpu(4, 0x64d1, 0x6000)
        records = [dict(type=i+1, continuation=self.word(start+i*4), handler=self.word(start+i*4+2)) for i in range(124)]
        self.add('enemy_dispatch', start, start+124*4, 'object_dispatch', 'decoded',
                 'tools/extract_enemy_dispatch.py; notes/enemy_dispatch.tsv',
                 table=self.table('enemy_dispatch', records))
        start = self.cpu(2,0x93b8,0x8000)
        self.add('stage0_spawn_pointer',start,start+2,'pointer_table','decoded','src/spawn.cpp')
        p = begin = self.cpu(2,self.word(start),0x8000)
        records=[]
        end=min(3*BANK,p+0x600)
        while p < end and self.read(p,1)[0]:
            d=self.read(p,4); length=d[3]&127
            if length<4 or p+length>end: raise ValueError('invalid spawn length')
            records.append(dict(offset=p, trigger=((d[0]&127)<<8)|d[1],
                                type=d[2]&127, trigger_flag=bool(d[0]&128),
                                type_flag=bool(d[2]&128), control=d[3],
                                payload=list(self.read(p+4,length-4))))
            p+=length
        if p>=end: raise ValueError('spawn terminator missing')
        self.add('stage0_spawns',begin,p+1,'spawn_stream','decoded','src/spawn.cpp',
                 table=self.table('stage0_spawns',records))
        start=self.cpu(25,0xa000,0xa000)
        self.add('stage0_metatiles',start,start+4096,'metatile_definitions','decoded',
                 'src/level.cpp: 256 definitions, 4x4 bytes', decoded='decoded/stage0_metatiles.bin')
        (self.out/'decoded/stage0_metatiles.bin').write_bytes(self.read(start,4096))
        # Decode stream record boundaries, preserving commands rather than flattening
        # branches/waits into a fabricated full-level map.
        presets = self.cpu(9,0x78ff,0x6000)
        self.add('scroll_presets',presets,presets+12*12,'scroll_preset_table',
                 'inferred','tools/disasm_stage0_stream.py; preset count from commands < $0C')
        p = begin = self.cpu(27,0xa000,0xa000)
        mode, records = 0, []
        payloads={0x10:2,0x11:2,0x12:36,0x13:2,0x17:1,0x19:1,0x1c:2,0x1f:1}
        while p < 28*BANK:
            address=p
            first=self.read(p,1)[0]
            if first == 254:
                records.append(dict(offset=p,kind='skip')); p+=1; continue
            if first == 255:
                command=self.read(p+1,1)[0]
                if command >= 0x20 or 0x0c <= command < 0x10:
                    raise ValueError('unknown stream command')
                n=payloads.get(command,0)
                records.append(dict(offset=p,kind='command',command=command,payload=list(self.read(p+2,n))))
                p+=2+n
                if command<12: mode=self.read(presets+command*12+8,1)[0]
                if command==0x12: mode=2
                if command==0x16: break
            else:
                n={0:6,2:6,1:15,4:15,3:8}.get(mode)
                if n is None: raise ValueError('unknown stream mode')
                records.append(dict(offset=p,kind='tiles',mode=mode,data=list(self.read(p,n))))
                p+=n
        else: raise ValueError('stage0 gate missing')
        self.add('stage0_background_stream',begin,p,'background_stream','decoded',
                 'tools/disasm_stage0_stream.py; stops at first fight gate',
                 table=self.table('stage0_background_stream',records))
        for address in (0xa43a,0xa44d):
            p=begin=self.cpu(27,address,0xa000)
            while p<28*BANK and self.read(p,1)[0]<0xf0: p+=2
            self.add(f'palette_script_{address:04X}',begin,p,'palette_script','decoded',
                     'src/assets.cpp apply_palette_script; terminator excluded')
        for address in (0x5e4b,0x5e6b):
            start=self.cpu(0,address,0x4000)
            self.add(f'fast_ground_{address:04X}',start,start+32,'tile_sequence','decoded','notes/stage0_pipeline.md')

    def finish(self):
        coverage = []
        for bank in range(32):
            start,end=bank*BANK,(bank+1)*BANK
            points={start,end}
            for e in self.entries:
                if e['start']<end and e['end']>start:
                    points.update((max(start,e['start']),min(end,e['end'])))
            points=sorted(points)
            for a,b in zip(points,points[1:]):
                owners=[e['id'] for e in self.entries if e['start']<=a and e['end']>=b]
                coverage.append(dict(start=a,end=b,bank_decimal=bank,bank_hex=f'{bank:02X}',
                                     status='classified' if owners else 'unknown', entries=owners))
        assert sum(r['end']-r['start'] for r in coverage)==len(self.rom)
        classified=sum(r['end']-r['start'] for r in coverage if r['entries'])
        code_ids={e['id'] for e in self.entries if e['kind']=='reviewed_collision_code'}
        reviewed_code=sum(r['end']-r['start'] for r in coverage if code_ids.intersection(r['entries']))
        summary=dict(rom_bytes=len(self.rom),classified_bytes=classified,
                     reviewed_code_bytes=reviewed_code,other_classified_bytes=classified-reviewed_code,
                     unknown_bytes=len(self.rom)-classified,asset_entries=len(self.entries),
                     unique_rle_streams=len(self.rles),parse_errors=len(self.errors))
        manifest=dict(schema_version=1,rom_sha256=sha(self.rom),
                      address_convention='physical offsets and half-open ranges; bank decimal plus hex',
                      confidence_convention={'decoded':'parsed using an existing decoder or loader analysis; does not prove complete runtime behavior',
                                             'inferred':'structure or extent inferred from code; needs reference verification'},
                      summary=summary, entries=self.entries,coverage=coverage,errors=self.errors)
        (self.out/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
        lines=['bank_decimal\tbank_hex\tstart_hex\tend_exclusive_hex\tstatus\tentries']
        lines.extend(f"{r['bank_decimal']}\t{r['bank_hex']}\t{r['start']:06X}\t{r['end']:06X}\t{r['status']}\t{','.join(r['entries'])}" for r in coverage)
        (self.out/'coverage.tsv').write_text('\n'.join(lines)+'\n')
        lines=['bank_decimal\tbank_hex\tclassified_bytes\tunknown_bytes\tclassified_percent']
        for bank in range(32):
            count=sum(r['end']-r['start'] for r in coverage if r['bank_decimal']==bank and r['entries'])
            lines.append(f'{bank}\t{bank:02X}\t{count}\t{BANK-count}\t{100*count/BANK:.2f}')
        (self.out/'banks.tsv').write_text('\n'.join(lines)+'\n')

        for b in range(32):
            (self.out/f'banks/bank_{b:02X}.bin').write_bytes(self.read(b*BANK,BANK))
        return summary

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('rom',type=Path,nargs='?',default=Path('space_manbow.rom'))
    parser.add_argument('--out',type=Path,default=Path('assets'))
    parser.add_argument('--group',action='append',default=[],type=lambda s:int(s,16),help='additional resolved graphics-group FF address (hex)')
    args=parser.parse_args()
    cat=Catalog(args.rom.read_bytes(),args.out)
    cat.structures()
    from catalog_entrypoints import extend
    extend(cat)
    from catalog_objects import extend as extend_objects
    extend_objects(cat)
    from catalog_collision import extend as extend_collision
    extend_collision(cat)
    from catalog_audio import extend as extend_audio
    extend_audio(cat)
    from catalog_screen_domains import extend as extend_screen_domains
    extend_screen_domains(cat)
    for address in args.group: cat.group(address,'inferred')
    print(json.dumps(cat.finish(),indent=2))

if __name__=='__main__': main()
