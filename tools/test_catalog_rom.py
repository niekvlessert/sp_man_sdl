#!/usr/bin/env python3
"""Boundary and inventory checks; no SDL dependency."""
import tempfile
import unittest
from pathlib import Path
from catalog_rom import BANK, Catalog
from catalog_entrypoints import parse_spawns, parse_background, animations
from catalog_objects import stamp_scripts
from catalog_audio import sequence_graph
from catalog_screen_domains import expand_strip, demo_stream

class CatalogTests(unittest.TestCase):
    def test_stamp_alias_and_repeat_control(self):
        data=self.cartridge()
        data[5*BANK:5*BANK+4]=bytes.fromhex('00810081')
        start=5*BANK+0x100
        data[start:start+9]=bytes((9,0,0,0x83,2,0xfe,1,2,0xff))
        cat=Catalog(bytes(data),self.out)
        scripts=stamp_scripts(cat,0x6a,5,0x8000,0x8000,2)
        self.assertEqual(len(cat.entries),2) # pointer table plus one shared script
        self.assertEqual([s['tile_selector'] for s in scripts],[0,1])
        self.assertEqual(scripts[0]['commands'][0],dict(relative_origin=[0,0],
            repeat=True,count=3,matrix_indices=[2]))

    def test_truncated_stamp_origin_rejected(self):
        data=self.cartridge()
        data[5*BANK:5*BANK+2]=bytes.fromhex('0081')
        start=5*BANK+0x100
        data[start:start+5]=bytes((5,0,0,0xfe,0xff))
        cat=Catalog(bytes(data),self.out)
        with self.assertRaisesRegex(ValueError,'truncated stamp origin'):
            stamp_scripts(cat,0x6a,5,0x8000,0x8000,1)

    def test_audio_shared_call_keeps_both_returns(self):
        data=self.cartridge()
        def put(pc,values):data[28*BANK+pc-0x6000:28*BANK+pc-0x6000+len(values)]=bytes(values)
        put(0x7b00,[0xfe,1,0xf9,0x40,0x7b,0xff])
        put(0x7b10,[0xfe,1,0xf9,0x40,0x7b,0xff])
        put(0x7b40,[0x11,0xfa])
        graph=sequence_graph(bytes(data),[(0x7b00,30),(0x7b10,30)])
        self.assertFalse(graph['unresolved'])
        returns=[n for n in graph['nodes'] if n['address']==0x7b41]
        self.assertEqual(returns[0]['edges'],[0x7b05,0x7b15])

    def test_audio_compact_frequency_changes_note_boundaries(self):
        data=self.cartridge();start=28*BANK+0x1b00
        data[start:start+10]=bytes([0xfe,2,0xe2,1,0x10,0x20,0xde,0x30,0x40,0xff])
        graph=sequence_graph(bytes(data),[(0x7b00,30)])
        notes=[n for n in graph['nodes'] if n['kind']=='note']
        self.assertEqual([(n['address'],n['length']) for n in notes],[(0x7b04,2),(0x7b07,1),(0x7b08,1)])

    def test_audio_operands_follow_mapped_bank_boundary(self):
        data=self.cartridge()
        data[29*BANK+0x1ffd:29*BANK+0x2000]=bytes([0xfe,1,0xfd])
        data[23*BANK:23*BANK+2]=bytes([0x10,0xa0])
        data[23*BANK+0x10]=0xff
        graph=sequence_graph(bytes(data),[(0x9ffd,23)])
        jump=next(n for n in graph['nodes'] if n['address']==0x9fff)
        self.assertEqual(jump['bytes'],[0xfd,0x10,0xa0])
        self.assertEqual(jump['edges'],[0xa010])
        self.assertEqual(jump['source_offsets'],[30*BANK-1,23*BANK,23*BANK+1])

    def test_audio_uninitialized_mode_is_not_guessed(self):
        data=self.cartridge();data[28*BANK+0x1b00]=0x10
        graph=sequence_graph(bytes(data),[(0x7b00,30)])
        self.assertFalse(graph['nodes'])
        self.assertEqual(graph['unresolved'][0]['reason'],'note mode not initialized')

    def test_planar_three_plane_pixel_order_and_nibble_packing(self):
        raw=bytes([0x80,0x40,0x20]*8)
        self.assertEqual(expand_strip(raw,3,bytes(range(8))),bytes([0x12,0x40,0,0]*8))
        with self.assertRaisesRegex(ValueError,'partial planar'):
            expand_strip(raw[:-1],3,bytes(range(8)))

    def test_demo_zero_duration_and_aligned_terminal(self):
        rom=self.cartridge();start=31*BANK
        rom[start:start+12]=bytes([0,1,2,1]+[255]*8)
        end,records=demo_stream(bytes(rom),0xa000)
        self.assertEqual(end,start+12)
        self.assertEqual(records[0]['countdown_frames'],256)
        self.assertEqual(records[0]['input_C908'],1)

    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.out = Path(self.temp.name)

    def cartridge(self):
        data = bytearray(32*BANK)
        data[:2] = b'AB'
        return data

    def test_cross_bank_rle_and_shared_source(self):
        data = self.cartridge()
        start = 13*BANK-2
        data[start:start+8] = bytes((0x83,1,2,3,2,9,0,0))
        cat = Catalog(bytes(data),self.out)
        entry = cat.rle(0x1ffe,0,'first')
        self.assertEqual((self.out/entry['decoded']).read_bytes(),bytes((1,2,3,9,9)))
        self.assertEqual(entry['end'],start+7)
        self.assertIs(cat.rle(0x1ffe,0,'second'),entry)
        self.assertEqual(entry['references'],['first','second'])

    def test_truncated_rle_is_rejected(self):
        data = self.cartridge()
        data[-1] = 0x83
        cat = Catalog(bytes(data),self.out)
        with self.assertRaisesRegex(ValueError,'overflow'):
            cat.rle(0x1fff,19,'truncated')

    def test_invalid_header_and_bank_address(self):
        with self.assertRaises(ValueError): Catalog(bytes(32*BANK),self.out)
        cat = Catalog(bytes(self.cartridge()),self.out)
        with self.assertRaises(ValueError): cat.cpu(7,0xa000,0x8000)

    def test_coverage_counts_union_not_duplicate_references(self):
        cat = Catalog(bytes(self.cartridge()),self.out)
        cat.add('a',100,120,'test','inferred','test')
        cat.add('b',110,130,'test','inferred','test')
        cat.add('code',115,125,'reviewed_collision_code','decoded','test')
        summary = cat.finish()
        self.assertEqual(summary['reviewed_code_bytes'],10)
        self.assertEqual(summary['other_classified_bytes'],20)
        self.assertEqual(summary['classified_bytes'],30)
        self.assertEqual(summary['unknown_bytes'],32*BANK-30)

    def test_rle_80_is_original_loader_noop(self):
        data=self.cartridge()
        data[12*BANK:12*BANK+5]=bytes((128,2,7,128,0))
        cat=Catalog(bytes(data),self.out)
        entry=cat.rle(0,0,'no-op')
        self.assertEqual((self.out/entry['decoded']).read_bytes(),b'\x07\x07')

    def test_spawn_copy_crosses_bank02_into_bank03(self):
        data=self.cartridge()
        start=3*BANK-2
        data[start:start+7]=bytes((0x10,0x80,0x24,6,0x12,0,0))
        cat=Catalog(bytes(data),self.out)
        begin,end,records=parse_spawns(cat,0x9ffe)
        self.assertEqual((begin,end),(start,start+7))
        self.assertEqual(records[0]['payload'],[0x12,0])

    def test_wait_mode_is_opaque_and_gate_has_no_palette_fallthrough(self):
        data=self.cartridge()
        data[27*BANK:27*BANK+8]=bytes((255,0x15,255,0x16,0x01,0x02,255,255))
        cat=Catalog(bytes(data),self.out)
        graph=parse_background(cat,[0xa000])
        self.assertEqual(len(graph['nodes']),2)
        self.assertFalse(graph['unresolved'])
        wait=graph['nodes'][0]
        self.assertTrue(wait['edges'][0]['opaque'])
        self.assertFalse(graph['nodes'][1]['edges'])

    def test_observed_animation_extent_crosses_alias_and_keeps_hole(self):
        data=self.cartridge()
        table=7*BANK+0x596
        data[table:table+4]=bytes((0,0x90,4,0x90))
        # First list crosses the second list root. Its unobserved index1 is
        # pointer-like data, not a valid tile matrix, and must remain a hole.
        root=7*BANK+0x1000
        data[root:root+6]=bytes((0,0x91,0,0x92,8,0x91))
        matrix=7*BANK+0x1100
        data[matrix:matrix+5]=bytes((0,0,1,1,5))
        data[matrix+8:matrix+13]=bytes((0,0,1,1,6))
        cat=Catalog(bytes(data),self.out)
        lists,definitions=animations(cat,'tile',0x8596,[dict(kind='tile',type=1,frame=2)],types=2)
        first=lists[0]
        self.assertEqual(first['observed_minimum_count'],3)
        self.assertEqual(first['frames'],[0x9100,0x9200,0x9108])
        self.assertEqual(first['unresolved_indices'][0]['frame'],1)
        self.assertNotIn(0x9200,definitions)

if __name__=='__main__': unittest.main()
