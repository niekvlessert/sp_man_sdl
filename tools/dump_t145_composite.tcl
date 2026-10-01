set throttle off
set renderer none
proc wb {path data} {set f [open $path wb]; fconfigure $f -translation binary; puts -nonewline $f $data; close $f}
after time 8 {type " "}
after time 10 {type " "}
after time 12 {type " "}
after time 14 {type " "}
after time 15 {catch {trainer "Space Manbow" 9 22}}
proc fireloop {} {if {[machine_info time] < 146} {type " "; after time 0.12 fireloop}}
after time 15 {fireloop}
after time 145 {
 set d "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out"
 wb "$d/t145_ring.bin" [debug read_block memory 0xE000 0x800]
 wb "$d/t145_d988.bin" [debug read_block memory 0xD988 0x480]
 set f [open "$d/t145_state.txt" w]
 puts $f [format "C0CA=%04X C0CC=%04X R4=%02X R10=%02X R23=%02X" [peek16 0xC0CA] [peek16 0xC0CC] [vdpreg 4] [vdpreg 10] [vdpreg 23]]
 close $f
 exit
}
