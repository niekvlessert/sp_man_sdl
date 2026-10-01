#!/usr/bin/env python3
"""Compare native ship movement/basic shot initialization with original Z80."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/player_native';out.mkdir(parents=True,exist_ok=True)
    jobs=[];native=[];plan=['set ::smplayer::plan {']
    positions=[(0x500,0x800),(0x80,0),(0x1d7f,0x13ff),(0x7f,0xffff),(0x1d80,0x1400)]
    for kind in ('move','shot'):
        for x,y in positions:
            for speed in (range(5) if kind=='move' else (0,)):
                for direction in (range(16) if kind=='move' else (0,)):
                    ident=f'{kind}_{len(jobs)}';writes={0xca47:y&255,0xca48:y>>8,0xca49:x&255,0xca4a:x>>8}
                    if kind=='move':
                        writes.update({0xc908:direction,0xcb01:speed})
                        pc=0x8108;base=0xca40;fields=[5,7,8,9,10,11,12,13,14]
                    else:
                        writes.update({0xcb40:1,0xcb08:0})
                        pc=0x8ccd;base=0xcc40;fields=[0,3,5,7,8,9,10,11,12,13,14,0x13,0x14]
                    values=' '.join(str(v) for pair in writes.items() for v in pair)
                    addresses=' '.join(str(base+i) for i in fields)
                    plan.append('{'+f'{ident} {pc} {{{values}}} {{{addresses}}}'+'}')
                    native.append(f'{ident} {kind} {direction} {speed} {x} {y}')
                    jobs.append(dict(id=ident,kind=kind,direction=direction,speed=speed,x=x,y=y))
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    (out/'native.txt').write_text('\n'.join(native)+'\n')
    run=subprocess.run([str(project/'build/space-manbow-player-test'),str(project/'space_manbow.rom'),str(out/'native.txt')],capture_output=True,text=True,check=True)
    expected=dict(line.split() for line in run.stdout.splitlines())
    with tempfile.TemporaryDirectory(prefix='sm-player-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_PLAYER_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/validate_player_native.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('original player execution failed')
    lines=(out/'execution.log').read_text().splitlines()
    if len(lines)!=len(jobs)+1 or lines[-1]!='COMPLETE':raise RuntimeError('incomplete player fixtures')
    results=[]
    for job,line in zip(jobs,lines):
        ident,actual=line.split()
        if ident!=job['id']:raise RuntimeError('fixture identity mismatch')
        results.append(dict(**job,native=expected[ident],original=actual,exact=actual==expected[ident]))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        passed=sum(r['exact'] for r in results),total=len(results),results=results,
        limitations='Original $820D sprite selector then $8108 movement helper, and $8CCD basic shot initializer. No natural input cadence, combat, background collision or upgraded weapon proof.')
    (project/'notes/player_native_validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Native player: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('native player mismatch')
if __name__=='__main__':main()
