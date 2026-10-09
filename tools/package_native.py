#!/usr/bin/env python3
"""Package the native game and runtime assets, never the cartridge."""
import argparse
import shutil
from pathlib import Path
parser = argparse.ArgumentParser()
parser.add_argument('executable', type=Path)
parser.add_argument('destination', type=Path)
parser.add_argument('--platform', choices=['windows', 'linux', 'macos'], required=True)
args = parser.parse_args()
root = Path(__file__).resolve().parent.parent
out = args.destination
out.mkdir(parents=True, exist_ok=True)
shutil.copy2(args.executable, out / args.executable.name)
for folder in ['title', 'attract', 'ending', 'enhanced', 'audio']:
    shutil.copytree(root / 'assets' / folder, out / 'assets' / folder, dirs_exist_ok=True)
(out / 'README.txt').write_text('Space Manbow\n\nProvide your own Space Manbow ROM. It is not included.\n'
    'Run the launch script with the ROM path as its first argument, or place\n'
    'space_manbow.rom beside it. Arrow keys move; Space/Z fires; P pauses.\n'
    'Linux: install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libpng16-16 fonts-dejavu-core.\n'
    'macOS: this build is ad-hoc signed, not notarized.\n')
if args.platform == 'windows':
    (out / 'play.cmd').write_text('@echo off\nset "SM_ASSET_ROOT=%~dp0"\n'
        'if "%~1"=="" (\n  "%~dp0space-manbow-game.exe" "%~dp0space_manbow.rom"\n'
        ') else (\n  "%~dp0space-manbow-game.exe" "%~1"\n)\n')
else:
    launch = out / 'play.sh'
    launch.write_text('#!/bin/sh\nset -eu\n'
        'root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)\n'
        'export SM_ASSET_ROOT="$root"\n'
        'exec "$root/space-manbow-game" "${1:-$root/space_manbow.rom}"\n')
    launch.chmod(0o755)
assert not list(out.rglob('*.rom'))
print(f'Packaged {args.platform}: {out}')
