#!/usr/bin/env python3
"""Run the original-ROM upload checks in an isolated OpenMSX user directory."""
import argparse
import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path
from verify_catalog import apply_upload


def main():
    project=Path(__file__).resolve().parent.parent
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--openmsx',type=Path,default=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx')
    p.add_argument('--machine',default='Panasonic_FS-A1WSX')
    p.add_argument('--out',type=Path,default=project/'tools/probe_out/catalog_validation')
    args=p.parse_args()
    root=project/'assets';rom=project/'space_manbow.rom'
    m=json.loads((root/'manifest.json').read_text());entries={e['id']:e for e in m['entries']}
    args.out=args.out.resolve();args.out.mkdir(parents=True,exist_ok=True)
    jobs=[e for e in m['entries'] if e['kind'] in ('graphics_upload_table','sprite_upload_table')]
    plan=['set ::smcatalog::plan {']
    for e in jobs:
        address=0x8000+e['start']-10*8192
        kind='graphics' if e['kind']=='graphics_upload_table' else 'sprites'
        plan.append(f"{{{e['id']} {address} {kind}}}")
    plan.append('}')
    (args.out/'plan.tcl').write_text('\n'.join(plan)+'\n')
    with tempfile.TemporaryDirectory(prefix='sm-openmsx-') as temp:
        user=Path(temp);(user/'share').mkdir()
        (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
        env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                 OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                 SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',SM_CATALOG_CAPTURE=str(args.out))
        command=[str(args.openmsx.resolve()),'-machine',args.machine,'-cart',str(rom),
                 '-script',str(project/'tools/validate_catalog_openmsx.tcl')]
        run=subprocess.run(command,cwd=project,env=env,capture_output=True,text=True,timeout=60)
        (args.out/'process.log').write_text(run.stdout+run.stderr)
        if run.returncode: raise RuntimeError(f'OpenMSX failed: {run.returncode}; see process.log')
    log=(args.out/'execution.log').read_text()
    if not log.endswith('COMPLETE\n'): raise RuntimeError('incomplete loader execution')
    results=[]
    for e in jobs:
        if f"RETURN {e['id']} " not in log: raise RuntimeError(f"missing return for {e['id']}")
        before=(args.out/f"{e['id']}_before.bin").read_bytes()
        after=(args.out/f"{e['id']}_after.bin").read_bytes()
        expected=apply_upload(root,entries,e,before)
        if len(after)!=len(expected): raise RuntimeError('truncated VRAM capture')
        mismatches=[i for i,(a,b) in enumerate(zip(expected,after)) if a!=b]
        results.append(dict(id=e['id'],match=not mismatches,mismatched_bytes=len(mismatches),
                            first_mismatches=mismatches[:16],before_sha256=hashlib.sha256(before).hexdigest(),
                            after_sha256=hashlib.sha256(after).hexdigest()))
    report=dict(rom_sha256=m['rom_sha256'],machine=args.machine,
                openmsx_binary_sha256=hashlib.sha256(args.openmsx.read_bytes()).hexdigest(),
                method='synthetic calls to original ROM loader after normal boot; resolved groups omit palette preambles; VDP IRQs disabled',
                limitation='Validates upload bytes, not natural gameplay group selection, palette cadence or raster timing.',results=results)
    (args.out/'comparison.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"original loader: {sum(r['match'] for r in results)}/{len(results)} tables exact (128 KiB compared per call)")
    if any(not r['match'] for r in results): raise SystemExit(1)

if __name__=='__main__':main()
