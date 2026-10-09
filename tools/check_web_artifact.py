#!/usr/bin/env python3
"""Check the published file set and reject accidentally bundled cartridges."""
import hashlib
import sys
from pathlib import Path
root = Path(sys.argv[1])
expected = {'index.html', 'launcher.js', 'game.js', 'game.wasm', 'game.data', '.nojekyll'}
files = {p.name for p in root.iterdir()}
assert files in (expected, expected | {'FONT-LICENSE.txt'}), 'Unexpected Pages artifact contents'
rom_hash = 'bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0'
for path in root.iterdir():
    assert path.stat().st_size or path.name == '.nojekyll', f'Empty file: {path}'
    assert hashlib.sha256(path.read_bytes()).hexdigest() != rom_hash, 'Cartridge in artifact'
loader = (root / 'launcher.js').read_text()
assert 'noInitialRun: true' in loader and "game.FS.writeFile('/space_manbow.rom', romBytes)" in loader
print('Web artifact PASS: upload gate, expected file set, no cartridge file')
