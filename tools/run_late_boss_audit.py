#!/usr/bin/env python3
"""Capture natural Stage 6–9 boss cycles from the original ROM in OpenMSX."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--stages', nargs='+', type=int, choices=range(6, 10), default=list(range(6, 10)))
    parser.add_argument('--updates', type=int, default=800)
    parser.add_argument('--out', type=Path)
    args = parser.parse_args()
    if args.updates <= 0:
        parser.error('--updates must be positive')
    project = Path(__file__).resolve().parent.parent
    out = args.out or project / 'tools/probe_out/late_boss_audit'
    out.mkdir(parents=True, exist_ok=True)
    binary = project.parent / 'third_party/openMSX/derived/aarch64-darwin-opt/bin/openmsx'
    rom = project / 'space_manbow.rom'
    captures = []
    for stage in args.stages:
        target = (out / f'original-boss-{stage}.log').resolve()
        with tempfile.TemporaryDirectory(prefix='sm-boss-audit-') as temp:
            user = Path(temp)
            (user / 'share').mkdir()
            (user / 'share/systemroms').symlink_to(Path.home() / '.openMSX/share/systemroms')
            env = dict(os.environ, OPENMSX_HOME=temp, OPENMSX_USER_DATA=str(user / 'share'),
                       OPENMSX_SYSTEM_DATA=str(project.parent / 'third_party/openMSX/share'),
                       SDL_VIDEODRIVER='dummy', SDL_AUDIODRIVER='dummy',
                       SM_AUDIT_STAGE=str(stage - 1), SM_AUDIT_UPDATES=str(args.updates), SM_AUDIT_OUT=str(target))
            result = subprocess.run([str(binary), '-machine', 'Panasonic_FS-A1WSX', '-cart', str(rom),
                                     '-script', str(project / 'tools/trace_late_boss_audit.tcl')],
                                    cwd=project, env=env, capture_output=True, text=True, timeout=60)
            (out / f'stage-{stage}-process.log').write_text(result.stdout + result.stderr)
            if result.returncode:
                raise RuntimeError(f'OpenMSX failed for stage {stage}')
        lines = target.read_text().splitlines()
        if len(lines) != args.updates:
            raise RuntimeError(f'Stage {stage}: expected {args.updates} updates, got {len(lines)}')
        captures.append(dict(stage=stage, updates=len(lines), trace_sha256=hashlib.sha256(target.read_bytes()).hexdigest()))
        print(f'Stage {stage}: {len(lines)} original handler-entry snapshots captured', flush=True)
    provenance = dict(rom_sha256=hashlib.sha256(rom.read_bytes()).hexdigest(),
                      openmsx_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
                      machine='Panasonic_FS-A1WSX', captures=captures,
                      interventions='F0FC stage selector before gameplay; space starts menus; CA53/54 player invincibility; no firing, no damage injection, no ROM patches',
                      fields='handler index, emulated time, CA02 engine counter, CA19 difficulty, 64-byte boss record')
    (out / 'provenance.json').write_text(json.dumps(provenance, indent=2) + '\n')


if __name__ == '__main__':
    main()
