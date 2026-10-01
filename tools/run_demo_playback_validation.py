#!/usr/bin/env python3
"""Compare every stored demo playback frame with original $789C calls."""
import hashlib,json,os,subprocess,tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/demo_playback_validation';out.mkdir(parents=True,exist_ok=True)
    demos=json.loads((project/'assets/tables/attract_demos.json').read_text())['demos']
    jobs=[];plan=['set ::smdemoval::plan {']
    for demo in demos:
        ident=f"demo_{demo['index']}";wanted=bytearray()
        data=json.loads((project/f"assets/tables/attract_demo_stream_{demo['root']:04X}.json").read_text())
        for record in data['records']:
            pointer=record['address']+3
            for frame in range(record['countdown_frames']):
                wanted.extend(((record['duration']-frame)&255,pointer&255,pointer>>8,record['input_C908'],record['input_C907']))
        (out/f'{ident}_expected.bin').write_bytes(wanted)
        plan.append('{'+f"{ident} {demo['root']} {demo['frames']}"+'}')
        jobs.append(dict(id=ident,frames=demo['frames'],bytes=len(wanted),root=demo['root']))
    plan.append('}');(out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    with tempfile.TemporaryDirectory(prefix='sm-demo-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),SDL_VIDEODRIVER='dummy',
            SDL_AUDIODRIVER='dummy',SM_DEMO_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/validate_demo_playback.tcl')],cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('demo playback execution failed')
    results=[]
    for job in jobs:
        actual=(out/f"{job['id']}.bin").read_bytes();wanted=(out/f"{job['id']}_expected.bin").read_bytes()
        results.append(dict(**job,exact=actual==wanted,actual_sha256=hashlib.sha256(actual).hexdigest(),expected_sha256=hashlib.sha256(wanted).hexdigest()))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        method='Original bank01 $789C called once per playback frame; ROM data, countdown, pointer and input bytes compared; RAM fixtures, no ROM patch',
        passed=sum(r['frames'] for r in results if r['exact']),total=sum(r['frames'] for r in results),results=results,
        limitations='Playback helper timing, not full-game attract reachability or final outer lookahead termination.')
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Demo playback: {report['passed']}/{report['total']} frames exact")
    if report['passed']!=report['total']:raise RuntimeError('demo playback mismatch')
    (project/'notes/demo_playback_validation.json').write_text(json.dumps(report,indent=2)+'\n')

if __name__=='__main__':main()
