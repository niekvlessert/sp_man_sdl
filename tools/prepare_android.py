#!/usr/bin/env python3
"""Prepare SDL Java glue and game assets for the Android Gradle build."""
import argparse
import shutil
from pathlib import Path
parser = argparse.ArgumentParser()
parser.add_argument('sdl_source', type=Path)
parser.add_argument('font', type=Path)
parser.add_argument('font_license', type=Path)
args = parser.parse_args()
root = Path(__file__).resolve().parent.parent
shutil.copytree(args.sdl_source / 'android-project/app/src/main/java', root / 'android/sdl-java', dirs_exist_ok=True)
assets = root / 'android/game-assets/assets'
for folder in ['title', 'attract', 'ending', 'enhanced', 'audio']:
    shutil.copytree(root / 'assets' / folder, assets / folder, dirs_exist_ok=True)
(assets / 'fonts').mkdir(parents=True, exist_ok=True)
shutil.copy2(args.font, assets / 'fonts/debug.ttf')
shutil.copy2(args.font_license, assets / 'fonts/LICENSE.txt')
assert not list(assets.rglob('*.rom'))
