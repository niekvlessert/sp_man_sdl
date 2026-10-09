"""VDP scroll regression checks, independent of the captured cartridge frames."""
import unittest
import numpy as np
from export_attract_presentation import decode, STRIDE, W, H

class ScrollTests(unittest.TestCase):
    def setUp(self):
        self.s=np.zeros(STRIDE,dtype=np.uint8)
        r=self.s[-32:];r[0]=6;r[1]=64;r[8]=2;r[9]=128;r[18]=112
        # A vertical stripe: color 1 in the left nibble of byte 10 (x=20).
        self.s[10:128*212:128]=16
        self.s[0x20002:0x20004]=[0x70,0]
        self.lookup=np.zeros(512,dtype=np.uint8);self.lookup[448]=1
    def test_fine_scroll_background(self):
        before=decode(self.s,self.lookup).reshape(H,W)
        self.s[-5]=3 # R27
        after=decode(self.s,self.lookup).reshape(H,W)
        self.assertEqual(np.flatnonzero(before[100]).tolist(),[20])
        self.assertEqual(np.flatnonzero(after[100]).tolist(),[23])
    def test_coarse_scroll(self):
        self.s[-6]=1 # R26 rotates background left by eight pixels.
        self.assertEqual(np.flatnonzero(decode(self.s,self.lookup).reshape(H,W)[100]).tolist(),[12])
    def test_border_mask(self):
        self.s[0]=16;self.s[-7]=2 # R25: conceal left eight pixels.
        row=decode(self.s,self.lookup).reshape(H,W)[0]
        self.assertFalse(row[:8].any());self.assertEqual(row[20],1)
    def test_scroll_does_not_move_sprite_plane(self):
        r=self.s[-32:];r[8]=0;r[5]=4;r[6]=2
        # Attribute mask $027F, attribute table $0200, color table $0000.
        self.s[512:520]=[9,40,0,0,216,0,0,0]
        self.s[0:8]=1;self.s[4096:4104]=128
        self.s[10:128*212:128]=0
        before=decode(self.s,self.lookup).reshape(H,W)
        r[27]=7
        after=decode(self.s,self.lookup).reshape(H,W)
        self.assertEqual(before[10,40],1);self.assertEqual(after[10,40],1)

if __name__=='__main__':unittest.main()
