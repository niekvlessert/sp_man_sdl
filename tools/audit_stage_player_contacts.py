#!/usr/bin/env python3
"""Re-execute original player collision scans for selected stage actor poses."""
import argparse, hashlib, json, os, subprocess, tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--stages',type=int,nargs='+',choices=range(1,10),default=[1,2,3])
    parser.add_argument('--out',type=Path,default=project/'notes/fixtures/stage-player-contact')
    args=parser.parse_args()
    rom=project/'space_manbow.rom'
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    source=project/'tools/probe_out/all_enemies_audit_verified'
    target=args.out.resolve()
    target.mkdir(parents=True,exist_ok=True)
    jobs=[];terrain=[];counts={};hashes={}
    def positioned(e,x,y):
        e=bytearray(e);e[7:9]=(y&65535).to_bytes(2,'little');e[9:11]=(x&65535).to_bytes(2,'little')
        return e
    for stage in args.stages:
        path=source/f'stage-{stage}.log';hashes[path.name]=hashlib.sha256(path.read_bytes()).hexdigest()
        poses={};tables={};types=set()
        for line in path.read_text().splitlines():
            if not line.startswith('PAIR '):continue
            fields=line.split();e=bytes.fromhex(fields[5]);types.add(e[0]);tables.setdefault(fields[11],set()).add(e[0])
            key=tuple(e[i] for i in (0,5,0x13,0x14,0x15))
            poses.setdefault(key,e)
        for properties,table_types in sorted(tables.items()):
            t=bytes.fromhex(properties)
            if stage<=3:
                context=('vehicle' if t[1]==0x47 else 'main' if t[0x11]==0 else 'boss') if stage==1 else ('main' if t[0x50]==0 else 'boss')
            else:
                bosses={4:0x14,5:0x77,6:0x7b,7:0x43,8:0x78,9:0x79}
                context='boss' if bosses[stage] in table_types else 'main'
                if stage==6 and 0x0e in table_types:context='barriers'
            terrain.append(f'{stage} {context} {properties}')
        # Include all observed actor poses, whether hostile, decorative or dead.
        subjects=[('object',e) for e in poses.values()]
        for typ in (0x60,0x61,0x67):
            for flags in (0x21,0x31):
                for frame in range(4 if typ==0x67 else 1):
                    e=bytearray(64);e[0]=typ;e[5]=frame;e[0x13]=e[0x14]=4;e[0x15]=flags
                    subjects.append(('bullet',e))
        # One-pixel boundaries and wider separation around each axis.
        offsets=[(x,7) for x in (-24,-16,-8,-1,0,1,3,4,5,7,8,9,15,16,24,32,48)]
        offsets += [(4,y) for y in (-24,-16,-8,-1,0,1,3,4,5,6,7,8,9,15,16,24,32,48)]
        offsets += [(-16,-16),(0,0),(16,16),(32,32)]
        for domain,e in subjects:
            for pose in range(3):
                player=bytearray(64);player[0]=1;player[5]=pose;player[0x13]=3;player[0x14]=0x83;player[0x15]=0x39
                player=positioned(player,0x1000,0x0800)
                for dx,dy in offsets:
                    enemy=positioned(e,0x1000+dx*32,0x0800+dy*32)
                    jobs.append((stage,domain,player,enemy))
        counts[stage]=dict(types=sorted(types),poses=len(poses),cases=sum(j[0]==stage for j in jobs))
    with tempfile.TemporaryDirectory(prefix='sm-stage-contact-') as tmp:
        out=Path(tmp);plan=['set ::smcollision::plan {']
        for i,(stage,domain,p,e) in enumerate(jobs):
            base=0xce80 if domain=='object' else 0xd460
            writes={0xca40+n:v for n,v in enumerate(p)}
            writes.update({base+n:v for n,v in enumerate(e)});writes[0xca44]=170
            pairs=' '.join(f'{k} {v}' for k,v in writes.items())
            pc=0x8039 if domain=='object' else 0x8280
            plan.append(f'{{c{i} {pc} 7 8 {{IY 51776}} {{{pairs}}} {{51780}}}}')
        plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
        (out/'share').mkdir();(out/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
        env=dict(os.environ,OPENMSX_HOME=tmp,OPENMSX_USER_DATA=str(out/'share'),
                 OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                 SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_COLLISION_CAPTURE=tmp)
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(rom),
                            '-script',str(project/'tools/validate_collision_routines.tcl')],
                           cwd=project,env=env,capture_output=True,text=True,timeout=120)
        if run.returncode:raise RuntimeError(run.stdout+run.stderr)
        result=(out/'execution.log').read_text().splitlines()
        if len(result)!=len(jobs)+1 or result[-1]!='COMPLETE':raise RuntimeError('Incomplete ROM scan')
        lines=[]
        for i,(job,line) in enumerate(zip(jobs,result)):
            ident,value=line.split();assert ident==f'c{i}'
            stage,domain,p,e=job
            lines.append(f'{stage} {domain} {p.hex()} {e.hex()} {int(int(value)!=170)}')
        (target/'rom-contacts.tsv').write_text('\n'.join(lines)+'\n')
    (target/'rom-terrain.tsv').write_text('\n'.join(terrain)+'\n')
    (target/'provenance.json').write_text(json.dumps(dict(
        rom_sha256=hashlib.sha256(rom.read_bytes()).hexdigest(),
        emulator_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        natural_trace_sha256=hashes,stages=counts,total=len(jobs),
        method='Unpatched bank07 $8039/$8280 execution; observed actor poses relocated for boundary sweeps; projectile metadata and launch flags; natural DE00 captures',
        limitations='Synthetic boundary sweeps are not complete natural playthrough parity; terrain probe footprint uses ROM shapes and solid-property semantics'),indent=2)+'\n')
    print(f'Captured {len(jobs)} original-ROM contacts and {len(terrain)} terrain contexts',flush=True)
if __name__=='__main__':main()
