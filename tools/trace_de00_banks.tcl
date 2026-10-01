set throttle off
set renderer none
namespace eval smde {
 variable bank -1; variable bank6 -1; variable counts
 array set counts {}
 proc bankhit {} {variable bank; set bank $::wp_last_value}
 proc bank6hit {} {variable bank6; set bank6 $::wp_last_value}
 proc readhit {} {variable bank; variable bank6; variable counts; set pc [reg PC]; set b [expr {$pc < 0x8000 ? $bank6 : $bank}]; set k [format "%02X:%04X" $b $pc]; if {![info exists counts($k)]} {set counts($k) 0}; incr counts($k)}
 proc arm {} {debug set_watchpoint write_mem {0x9000 0x9000} {} {smde::bankhit}; debug set_watchpoint write_mem {0x7000 0x7000} {} {smde::bank6hit}; debug set_watchpoint read_mem {0xDE00 0xDEFF} {} {smde::readhit}}
 proc done {} {variable counts; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/de00_banks.txt" w]; foreach k [lsort [array names counts]] {puts $f "$k $counts($k)"}; close $f; exit}
 proc fire {} {if {[machine_info time] < 101} {type " "; after time 0.12 {smde::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smde::fire}; after time 97.9 {smde::arm}; after time 101 {smde::done}
}
