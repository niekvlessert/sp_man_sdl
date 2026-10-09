// npm install --prefix /tmp/manbow-web-test playwright@1.58.2
// NODE_PATH=/tmp/manbow-web-test/node_modules node tools/test_web.cjs dist [ROM]
const { chromium } = require('playwright');
const assert = require('node:assert/strict');
const { spawn } = require('node:child_process');
const path = require('node:path');
const { once } = require('node:events');
(async () => {
  const root = path.resolve(process.argv[2]);
  const server = spawn('python3', ['-u', '-m', 'http.server', '0', '--bind', '127.0.0.1', '--directory', root]);
  let browser;
  try {
    const [output] = await Promise.race([
      once(server.stdout, 'data'),
      once(server, 'exit').then(([code]) => { throw new Error('HTTP server exited: ' + code); }),
    ]);
    const port = /port (\d+)/.exec(output.toString())[1];
    browser = await chromium.launch({ headless: true, args: ['--enable-unsafe-swiftshader'] });
    const page = await browser.newPage();
    const errors = [];
    const requests = [];
    page.on('pageerror', error => errors.push(error.message));
    page.on('console', message => console.log('Browser:', message.type(), message.text()));
    page.on('request', request => requests.push({ url: request.url(), method: request.method() }));
    await page.goto(`http://127.0.0.1:${port}/`);
    assert(await page.locator('#start').isDisabled());
    assert(await page.locator('#player').isHidden());
    await page.locator('#rom').setInputFiles({ name: 'wrong.rom', mimeType: 'application/octet-stream', buffer: Buffer.from('wrong') });
    await page.waitForFunction(() => document.getElementById('status').textContent.includes('256 KiB'));
    assert(await page.locator('#start').isDisabled());
    await page.locator('#rom').setInputFiles({ name: 'wrong.rom', mimeType: 'application/octet-stream', buffer: Buffer.alloc(262144) });
    await page.waitForFunction(() => document.getElementById('status').textContent.includes('not the supported'));
    assert(await page.locator('#start').isDisabled());
    assert(!requests.some(r => /game\.(data|wasm)$/.test(r.url)), 'Game loaded before valid ROM');
    if (process.argv[3]) {
      await page.locator('#rom').setInputFiles(path.resolve(process.argv[3]));
      await page.waitForFunction(() => !document.getElementById('start').disabled);
      await page.locator('#start').click();
      await page.waitForFunction(() => document.getElementById('loader').hidden, null, { timeout: 120000 });
      await page.waitForTimeout(3000);
      console.log('After start:', await page.evaluate(() => ({title:document.title, status:document.getElementById('status').textContent, canvas:[document.getElementById('canvas').width,document.getElementById('canvas').height]})));
      await page.screenshot({ path: '/tmp/manbow-web-smoke.png' });
      // Wait for actual SDL presentation, not just a resolved module factory.
      await page.waitForFunction(() => {
        const canvas = document.getElementById('canvas');
        const gl = canvas.getContext('webgl2') || canvas.getContext('webgl');
        if (!gl) return false;
        const pixel = new Uint8Array(4);
        for (let y = 50; y < canvas.height; y += 70) for (let x = 50; x < canvas.width; x += 70) {
          gl.readPixels(x, y, 1, 1, gl.RGBA, gl.UNSIGNED_BYTE, pixel);
          if (pixel[0] + pixel[1] + pixel[2] > 30 && Math.max(...pixel.slice(0, 3)) - Math.min(...pixel.slice(0, 3)) > 20) return true;
        }
        return false;
      }, null, { timeout: 60000 });
      await page.screenshot({ path: '/tmp/manbow-web-smoke.png' });
      await page.keyboard.press('Space');
      await page.waitForTimeout(6000); // complete Space Manbow logo after skip
      await page.keyboard.press('Space'); // open graphics menu
      await page.keyboard.press('Space'); // start enhanced game
      await page.keyboard.down('ArrowRight');
      await page.waitForTimeout(600);
      await page.keyboard.up('ArrowRight');
      await page.keyboard.press('Space');
      await page.waitForTimeout(1000);
      await page.screenshot({ path: '/tmp/manbow-web-game.png' });
      await page.keyboard.press('p');
      await page.waitForFunction(() => document.title === 'Space Manbow - paused');
      await page.keyboard.press('p');
      await page.keyboard.press('Escape');
      await page.keyboard.press('y');
      await page.keyboard.press('ArrowDown'); // options
      await page.keyboard.press('Space');
      await page.keyboard.type('debug');
      await page.waitForTimeout(400);
      await page.screenshot({ path: '/tmp/manbow-web-debug.png' });
      await page.keyboard.press('Escape');
      assert(!(await page.locator('#status').innerText()).includes('Unable to start'));
      assert(!requests.some(r => r.method !== 'GET'), 'ROM sent to a server');
    }
    assert.deepEqual(errors, []);
    console.log('Browser PASS: ROM gate, invalid size/hash, ' + (process.argv[3] ? 'valid ROM and rendered game, ' : '') + 'no page errors');
  } finally {
    if (browser) await browser.close();
    server.kill();
  }
})().catch(error => { console.error(error); process.exitCode = 1; });
