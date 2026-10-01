set throttle off
set renderer none
namespace eval smr {
  variable done 0
  proc hit {} {
    variable done
    if {$done || [peek16 0xC0CA] != 0xA31A} {return}
    set done 1
    set out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/raster_program_a31a.bin"
    set f [open $out wb]; fconfigure $f -translation binary
    puts -nonewline $f [debug read_block memory 0xC980 0xC0]
    close $f
    set s [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/raster_program_a31a.txt" w]
    puts $s [format "PC=%04X ptr=%04X C0BB=%02X D2=%02X R2=%02X R18=%02X R23=%02X" [reg PC] [peek16 0xC0CA] [peek 0xC0BB] [peek 0xC0D2] [vdpreg 2] [vdpreg 18] [vdpreg 23]]
    close $s
    exit
  }
  after time 8.0 {type " "}; after time 10.0 {type " "}; after time 12.0 {type " "}; after time 14.0 {type " "}
  after time 95.0 {debug set_bp 0x6E60 {} {smr::hit}}
  after time 120.0 {exit}
}
