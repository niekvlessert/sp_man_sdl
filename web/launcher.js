'use strict';
const input = document.getElementById('rom');
const start = document.getElementById('start');
const status = document.getElementById('status');
const canvas = document.getElementById('canvas');
const expectedHash = 'bca5696ebbf4a3493bb226baa03ba8f8c5cc4876a4ad0eaa9722f583a42192b0';
let romBytes;
let selection = 0;
let running = false;

input.addEventListener('change', async () => {
  const current = ++selection;
  start.disabled = true;
  romBytes = undefined;
  const file = input.files[0];
  if (!file) { status.textContent = 'Choose a ROM to begin.'; return; }
  status.textContent = 'Checking ROM…';
  try {
    if (file.size !== 262144) throw new Error('Expected the 256 KiB Space Manbow ROM.');
    const bytes = new Uint8Array(await file.arrayBuffer());
    const digest = await crypto.subtle.digest('SHA-256', bytes);
    const hash = Array.from(new Uint8Array(digest), b => b.toString(16).padStart(2, '0')).join('');
    if (hash !== expectedHash) throw new Error('This ROM is not the supported Space Manbow release.');
    if (current !== selection) return;
    romBytes = bytes;
    status.textContent = 'ROM ready. Press Start game.';
    start.disabled = false;
  } catch (error) {
    if (current === selection) status.textContent = error.message;
  }
});

start.addEventListener('click', async () => {
  if (!romBytes || running) return;
  running = true;
  start.disabled = true;
  input.disabled = true;
  status.textContent = 'Loading game…';
  document.getElementById('player').hidden = false;
  const fail = message => {
    status.textContent = 'Unable to start: ' + message + ' Reload this page to try again.';
  };
  try {
    const game = await createSpaceManbow({
      canvas,
      noInitialRun: true,
      locateFile: path => new URL(path, document.baseURI).href,
      print: text => console.log(text),
      printErr: text => { console.error(text); },
      onAbort: fail,
      onExit: code => { if (code) fail('Game exited with code ' + code); },
      setStatus: text => { if (text) status.textContent = text; },
    });
    game.FS.writeFile('/space_manbow.rom', romBytes);
    romBytes = undefined;
    document.getElementById('loader').hidden = true;
    document.body.classList.add('playing');
    status.textContent = '';
    canvas.focus();
    game.callMain(['/space_manbow.rom']);
  } catch (error) { fail(error.message || String(error)); }
});

canvas.addEventListener('click', () => canvas.focus());
canvas.addEventListener('keydown', event => {
  if (['ArrowUp', 'ArrowDown', 'ArrowLeft', 'ArrowRight', ' ', 'Tab'].includes(event.key)) event.preventDefault();
});
document.getElementById('fullscreen').addEventListener('click', async () => {
  try { await canvas.requestFullscreen(); canvas.focus(); }
  catch { status.textContent = 'Fullscreen is unavailable in this browser.'; }
});
