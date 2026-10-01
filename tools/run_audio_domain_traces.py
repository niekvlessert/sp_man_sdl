#!/usr/bin/env python3
"""Collect audio/mapper first-80-second traces for each saved stage index."""
import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/audio_domains'
    out.mkdir(parents=True,exist_ok=True)
    for stage in range(9):
        directory=out/f'stage_{stage:02X}';directory.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix='sm-stage-') as temp:
            user=Path(temp);(user/'share').mkdir()
            (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
            env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                     OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                     SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',
                     SM_AUDIO_CAPTURE=str(directory),SM_AUDIO_STAGE=str(stage))
            run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
                                '-script',str(project/'tools/trace_audio_domains.tcl')],
                               cwd=project,env=env,capture_output=True,text=True,timeout=60)
            (directory/'process.log').write_text(run.stdout+run.stderr)
            if run.returncode: raise RuntimeError(f'stage {stage} failed')
        lines=(directory/'trace.log').read_text().splitlines()
        print(f'stage {stage}: {len(lines)} trace records; {lines[-1]}',flush=True)
    provenance=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
                    openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
                    machine='Panasonic_FS-A1WSX',duration_seconds=80,
                    interventions='F0FC saved-stage selector before start; CA53/CA54 invincibility after t=15; repeated space key')
    (out/'provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')

if __name__=='__main__':main()
