#!/usr/bin/env python3
"""Record stage0 gate with and without one explicit pending-damage intervention."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


def main():
    project=Path(__file__).resolve().parent.parent
    binary=project.parent/'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    out=project/'tools/probe_out/boss_gate_validation';out.mkdir(parents=True,exist_ok=True)
    for assist in (0,1):
        directory=out/('assisted' if assist else 'control');directory.mkdir(exist_ok=True)
        with tempfile.TemporaryDirectory(prefix='sm-gate-') as temp:
            user=Path(temp);(user/'share').mkdir()
            (user/'share/systemroms').symlink_to(Path.home()/'.openMSX/share/systemroms',target_is_directory=True)
            env=dict(os.environ,OPENMSX_HOME=str(user),OPENMSX_USER_DATA=str(user/'share'),
                OPENMSX_SYSTEM_DATA=str(project.parent/'third_party/openMSX/share'),
                SDL_VIDEODRIVER='dummy',SDL_AUDIODRIVER='dummy',
                SM_GATE_CAPTURE=str(directory),SM_GATE_ASSIST=str(assist))
            run=subprocess.run([str(binary),'-machine','Panasonic_FS-A1WSX','-cart',str(project/'space_manbow.rom'),
                '-script',str(project/'tools/trace_boss_gate.tcl')],cwd=project,env=env,
                capture_output=True,text=True,timeout=60)
            (directory/'process.log').write_text(run.stdout+run.stderr)
            if run.returncode: raise RuntimeError(f'gate run failed: {directory}')
        lines=(directory/'trace.log').read_text().splitlines()
        if not lines or not lines[-1].startswith('DONE '):raise RuntimeError('incomplete gate trace')
        print(f'{directory.name}: {len(lines)} records; {lines[-1]}',flush=True)
    provenance=dict(rom_sha256=hashlib.sha256((project/'space_manbow.rom').read_bytes()).hexdigest(),
        openmsx_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
        machine='Panasonic_FS-A1WSX',duration_seconds=230,
        interventions='Both: start space at8/10/12/14, CA53/54 invincibility after15, no firing. Assisted only: pending damage FF to first damage-enabled type64 after155; no ROM patches.')
    (out/'provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')

if __name__=='__main__':main()
