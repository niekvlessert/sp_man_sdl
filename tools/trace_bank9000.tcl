set throttle off
set renderer none
namespace eval smb {
 variable f ""
 proc hit {} {variable f; puts $f [format "%.9f PC=%04X val=%02X" [machine_info time] [reg PC] $::wp_last_value]}
 proc arm {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/bank9000.txt" w]; debug set_watchpoint write_mem {0x9000 0x9000} {} {smb::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 99} {type " "; after time 0.12 {smb::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smb::fire}; after time 98 {smb::arm}; after time 99 {smb::done}
}
