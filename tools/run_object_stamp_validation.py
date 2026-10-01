#!/usr/bin/env python3
"""Validate exported composed stamps against all 1536 original RAM buffer bytes."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


def compose(root, script, matrices, before, x, y, fx, fy):
    result=bytearray(before)
    for command in script['commands']:
        origin_y,origin_x=command['relative_origin']
        indices=command['matrix_indices']*command['count'] if command['repeat'] else command['matrix_indices']
        for index in indices:
            matrix=matrices[index]
            raw=(root/f"raw/tile_frame_{matrix['address']:04X}.bin").read_bytes()
            # The original adds matrix offsets into CA29, retaining them for
            # subsequent matrices in this command until another FE origin.
            origin_y=(origin_y+raw[0])&255;origin_x=(origin_x+raw[1])&255
            row=((y>>8)+origin_y+int((y&255)+fy>255))&255
            col=((x>>8)+origin_x+int((x&255)+fx>255))&255
            row=(row+8)&255;col=(col+8)&255
            if row>=32 or col>=40:continue
            dest=row*48+col
            for dy in range(raw[2]):
                if dest+dy*48>=len(result):break
                for dx in range(raw[3]):
                    target=dest+dy*48+dx
                    if target>=len(result):break
                    value=raw[4+dy*raw[3]+dx]
                    if value:result[target]=value
    return bytes(result)


def main():
    project=Path(__file__).resolve().parent.parent;root=project/'assets'
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/composed_stamp_validation';out.mkdir(parents=True,exist_ok=True)
    animations=json.loads((root/'tables/tile_animations.json').read_text())
    definitions={d['address']:d for d in animations['definitions']}
    positions=[(0x1200,0x0c00,0,0),(0,0,0,0),(0xfb00,0x0800,0,0),
               (0x1f00,0x1700,0,0),(0x1200,0xf900,0,0),
               (0x11e0,0x0be0,0x40,0x80),(0x2000,0x2000,0,0)]
    jobs=[];expected=[];before=bytes(i*17&255 for i in range(0x600))
    for typ,pointer_address in ((0x64,0xa494),(0x6a,0x9b0a),(0x78,0xacde)):
        scripts=json.loads((root/f'tables/type{typ:02X}_stamp_scripts.json').read_text())
        pointers=next(a['frames'] for a in animations['lists'] if typ in a['types'])
        matrices={i:definitions[p] for i,p in enumerate(pointers)}
        for script in scripts:
            for position_index,(x,y,fx,fy) in enumerate(positions):
                tile=script['tile_selector'];ident=f'stamp_{typ:02X}_{tile}_{position_index}'
                jobs.append((ident,typ,tile,x,y,fx,fy,pointer_address))
                expected.append(compose(root,script,matrices,before,x,y,fx,fy))
    (out/'plan.tcl').write_text('set ::smstamp::plan {\n'+
        '\n'.join('{'+ ' '.join(map(str,j))+'}' for j in jobs)+'\n}\n')
    with tempfile.TemporaryDirectory(prefix='sm-stamps-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
            SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_STAMP_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
            '-script',str(project/'tools/validate_object_stamps.tcl')],cwd=project,env=env,
            capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError('OpenMSX failed; see process.log')
    log=(out/'execution.log').read_text()
    if not log.endswith('COMPLETE\n'):raise RuntimeError('incomplete stamp execution')
    results=[]
    for job,wanted in zip(jobs,expected):
        if f'RETURN {job[0]}\n' not in log:raise RuntimeError('missing stamp return')
        actual=(out/f'{job[0]}.bin').read_bytes()
        if len(actual)!=len(wanted):raise RuntimeError('incomplete RAM capture')
        mismatches=sum(a!=b for a,b in zip(actual,wanted))
        results.append(dict(job=job,mismatched_bytes=mismatches,exact=mismatches==0,
            expected_sha256=hashlib.sha256(wanted).hexdigest(),actual_sha256=hashlib.sha256(actual).hexdigest()))
    report=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        method='Original $7B65 composed stamp calls; fixtures only; no ROM patch; all D800..DDFF bytes',
        passed=sum(r['exact'] for r in results),total=len(results),results=results)
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Composed object stamps: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']:raise RuntimeError('stamp mismatch; inspect comparison.json')

if __name__=='__main__':main()
