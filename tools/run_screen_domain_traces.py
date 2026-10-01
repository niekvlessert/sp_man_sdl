#!/usr/bin/env python3
"""Collect audio/mapper first-80-second traces for each saved stage index."""
import sys
import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/screen_domains'
    out.mkdir(parents=True,exist_ok=True)
    for stage,mode in enumerate(sys.argv[1:] or ('title_demo','ending')):
        directory=out/mode;directory.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix='sm-stage-') as temp:
            user=Path(temp);(user/'share').mkdir()
            (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
            env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                     OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                     SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',
                     SM_SCREEN_CAPTURE=str(directory),SM_SCREEN_MODE=mode)
            run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
                                '-script',str(project/'tools/trace_screen_domains.tcl')],
                               cwd=project,env=env,capture_output=True,text=True,timeout=60)
            (directory/'process.log').write_text(run.stdout+run.stderr)
            if run.returncode: raise RuntimeError(f'stage {stage} failed')
        lines=(directory/'trace.log').read_text().splitlines()
        print(f'stage {stage}: {len(lines)} trace records; {lines[-1]}',flush=True)
    provenance=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
                    openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
                    machine='Panasonic_FS-A1WSX',title_demo_duration_seconds=600,ending_seconds_after_transition=160,
                    interventions='title_demo: no input; ending: existing stage8 selector/invincibility/pending-damage assistance, then original ending runs; no ROM patches')
    (out/'provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')

if __name__=='__main__':main()
