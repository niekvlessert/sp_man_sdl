#!/usr/bin/env python3
"""Collect guarded natural ROM enemy-handler traces for all nine stages."""
import argparse, concurrent.futures, hashlib, json, os, subprocess, tempfile
from pathlib import Path

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--stages',type=int,nargs='+',choices=range(1,10),default=list(range(1,10)))
    parser.add_argument('--out',type=Path,default=Path('tools/probe_out/all_enemies_audit'))
    args=parser.parse_args();project=Path(__file__).resolve().parent.parent
    out=args.out.resolve();out.mkdir(parents=True,exist_ok=True)
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    rom=project/'space_manbow.rom'
    def run(stage):
        target=out/f'stage-{stage}.log'
        with tempfile.TemporaryDirectory(prefix='sm-enemies-') as temp:
            user=Path(temp);(user/'share').mkdir()
            (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms')
            env=dict(os.environ,OPENMSX_HOME=temp,OPENMSX_USER_DATA=str(user/'share'),
                OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',
                SM_ENEMY_STAGE=str(stage-1),SM_ENEMY_OUT=str(target))
            result=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(rom),
                '-script',str(project/'tools/trace_all_enemies_audit.tcl')],cwd=project,env=env,
                capture_output=True,text=True,timeout=60)
            (out/f'stage-{stage}-process.log').write_text(result.stdout+result.stderr)
            if result.returncode or not target.exists():raise RuntimeError(f'Stage {stage} failed')
        lines=target.read_text().splitlines()
        if not lines or lines[-1]!='COMPLETE':raise RuntimeError(f'Stage {stage} incomplete')
        counts={};pairs=0
        for line in lines:
            if line.startswith('PAIR '):pairs+=1
            if line.startswith('COUNT '):
                _,key,count=line.split();typ,state=map(int,key.split(','))
                counts.setdefault(f'{typ:02X}',{})[str(state)]=int(count)
        print(f'Stage {stage}: {len(counts)} types, {pairs} before/after pairs',flush=True)
        return dict(stage=stage,types=counts,pairs=pairs,trace_sha256=hashlib.sha256(target.read_bytes()).hexdigest())
    with concurrent.futures.ThreadPoolExecutor(max_workers=3) as executor:
        captures=list(executor.map(run,args.stages))
    (out/'provenance.json').write_text(json.dumps(dict(rom_sha256=hashlib.sha256(rom.read_bytes()).hexdigest(),
        machine='Panasonic_FS-A1WSX',captures=captures,
        interventions='Guarded F0FC stage selection and player invincibility; no gameplay fire, damage injection or ROM changes'),indent=2)+'\n')
if __name__=='__main__':main()
