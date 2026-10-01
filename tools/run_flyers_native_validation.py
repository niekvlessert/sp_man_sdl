#!/usr/bin/env python3
"""Compare native ship movement/basic shot initialization with original Z80."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path

def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/flyers_native';out.mkdir(parents=True,exist_ok=True)
    jobs=[];native=[];plan=['set ::smplayer::plan {']
    for kind,type,pc,params in [('flyer',0x10,0x5288,[0]),('flyer',0x12,0x534e,[0,1]),('flyer',0x15,0x8000,[1,5]),('flyer',0x18,0x54c1,[0,1,2,3,0xc3])]:
        for param in params:
            x,y=0x1f00,0x200
            ident=f'flyer_{len(jobs)}'
            writes={0xca02:0,0xca19:0,0xca10:0,0xca47:0,0xca48:8,0xca49:0,0xca4a:5,
                0xce80:type,0xce87:y&255,0xce88:y>>8,0xce89:x&255,0xce8a:x>>8,
                0xceaf:1,0xceb1:0,0xceb2:0xf4,0xceb8:1,0xf400:1,0xf401:param}
            fields=[0,1,5,7,8,9,10,11,12,13,14,15,16,17,18,0x17,0x18,0x20,0x21,0x22,0x23]
            values=' '.join(str(v) for pair in writes.items() for v in pair)
            addresses=' '.join(str(0xce80+i) for i in fields)
            plan.append('{'+f'{ident} {pc} {{{values}}} {{{addresses}}}'+'}')
            native.append(f'{ident} flyer {type} {param} {x} {y}')
            jobs.append(dict(id=ident,type=type,param=param))
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
            '-script',str(project/'tools/validate_flyers_native.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
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
        limitations='Original flight initializers only; not a full natural enemy behavior comparison.')
    (project/'notes/flyers_native_validation.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Native flyers: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('native player mismatch')
if __name__=='__main__':main()
