#!/usr/bin/env python3
"""Compare initializer, destruction lookup, damage and BCD score to original ROM."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


def main():
    project=Path(__file__).resolve().parent.parent
    rom=project/'space_manbow.rom'
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/object_validation';out.mkdir(parents=True,exist_ok=True)
    manifest=json.loads((project/'assets/manifest.json').read_text())
    digest=hashlib.sha256(rom.read_bytes()).hexdigest()
    if digest != manifest['rom_sha256']: raise ValueError('catalogue ROM hash mismatch')
    objects=json.loads((project/'assets/tables/objects.json').read_text())
    jobs=[];expected=[]
    jobs.append(('death',0,0,0));expected.append('7e74')
    for obj in objects['objects']:
        typ=obj['type']
        jobs.append(('metadata',typ,0,0));expected.append(bytes(obj['metadata']).hex())
        jobs.append(('death',typ,0,0));expected.append(f'{0x7e74+typ*3:04x}')
    # Equality must not carry. Disabled damage must leave pending damage intact.
    for damage,hp,enabled in ((0,7,128),(1,7,128),(7,7,128),(8,7,128),
                              (1,0,128),(255,255,128),(255,254,128),(8,7,0)):
        jobs.append(('damage',damage,hp,enabled))
        consumed=bool(enabled and damage)
        expected.append(f'{(hp-damage)&255 if consumed else hp:02x},{0 if enabled else damage:02x},{int(consumed and damage>hp)}')
    for word in objects['score_values'][1:]:
        jobs.append(('score',word,0,0));expected.append(bytes((word&255,word>>8,0)).hex())
    for word,initial,result in ((0x20,0x90,'100100'),(0x60,0x9999,'590001')):
        jobs.append(('score',word,initial,0));expected.append(result)
    handler=json.loads((project/'assets/tables/type64_handler.json').read_text())
    for state,record in enumerate(handler['phase_records'],2):
        jobs.append(('phase',state,0,0));expected.append(bytes(record).hex())
    for frame in range(1,5):
        jobs.append(('sprite',frame,0,0));expected.append(f"{handler['sprite_by_tile'][frame]:02x}")
    rom_bytes=rom.read_bytes()
    for stamp in json.loads((project/'assets/tables/type64_stamp_scripts.json').read_text()):
        address=stamp['address'];size=stamp['size']-1;offset=6*8192+address-0xa000+1
        jobs.append(('stamp',address,size,0));expected.append(rom_bytes[offset:offset+size].hex())
    (out/'plan.tcl').write_text('set ::smobjects::plan {\n'+
        '\n'.join('{'+ ' '.join(map(str,j))+'}' for j in jobs)+'\n}\n')
    with tempfile.TemporaryDirectory(prefix='sm-objects-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
            OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
            SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_OBJECT_CAPTURE=str(out))
        run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(rom),
            '-script',str(project/'tools/validate_objects_openmsx.tcl')],cwd=project,env=env,
            capture_output=True,text=True,timeout=60)
        (out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode: raise RuntimeError('OpenMSX failed; see process.log')
    lines=(out/'execution.log').read_text().splitlines()
    if not lines or lines[-1]!='COMPLETE' or len(lines)!=len(jobs)+1:
        raise RuntimeError('incomplete object validation')
    results=[]
    for job,wanted,line in zip(jobs,expected,lines):
        fields=line.split()
        if fields[:4]!=list(map(str,job)): raise RuntimeError('job identity mismatch')
        results.append(dict(job=job,expected=wanted,actual=fields[-1],exact=fields[-1]==wanted))
    report=dict(rom_sha256=digest,openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        machine='Panasonic_FS-A1WSX',method='Synthetic calls to original routines; RAM fixtures; no ROM patch; VDP IRQ disabled',
        passed=sum(r['exact'] for r in results),total=len(results),results=results)
    (out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"Original object routines: {report['passed']}/{report['total']} exact")
    if report['passed']!=report['total']: raise RuntimeError('object validation mismatch')


if __name__=='__main__': main()
