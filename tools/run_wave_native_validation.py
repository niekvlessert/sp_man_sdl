#!/usr/bin/env python3
"""Compare native W-shot initialization with the original Z80 helper."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/wave_native';out.mkdir(parents=True,exist_ok=True)
    jobs=[];native=[];plan=['set ::smplayer::plan {']
    for power in (0,1,9,16):
        for x,y in [(0x500,0x800),(0x1000,0x400)]:
            ident=f'wave_{len(jobs)}';level=0 if power==0 else (1 if power<9 else 2)
            writes={0xca47:y&255,0xca48:y>>8,0xca49:x&255,0xca4a:x>>8,
                    0xcb08:power,0xcb40:1,0xcb41:10}
            fields=[0,3,5,6,7,8,9,10,11,12,13,14,0x13,0x14]
            values=' '.join(str(v) for pair in writes.items() for v in pair)
            addresses=' '.join(str(0xcc40+i) for i in fields)
            plan.append('{'+f'{ident} {0x8c47} {{{values}}} {{{addresses}}}'+'}')
            native.append(f'{ident} primary 0 {level} {x} {y}')
            jobs.append(dict(id=ident,power=power,x=x,y=y))
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
        limitations='Original bank02 $8C47 W-shot initializer, fields including power damage and sprite selection. No full weapon lifetime or terrain collision proof.')
    (project/'notes/wave_native_validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Native W initializer: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('native player mismatch')
if __name__=='__main__':main()
