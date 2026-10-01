set throttle off
set renderer none
namespace eval smb {
 variable bank8 -1; variable f ""
 proc bw {} {variable bank8; set bank8 $::wp_last_value}
 proc hit {} {
  variable bank8; variable f
  set ix [reg IX]
  if {$ix < 0xCE80 || $ix > 0xD37F || [peek $ix] != 0x24} {return}
  puts $f [format "%.9f bank8=%02X IX=%04X state=%02X f05=%02X HL=%04X BC=%04X DE=%04X" [machine_info time] $bank8 $ix [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [reg HL] [reg BC] [reg DE]]
  flush $f
 }
 proc arm {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type24_bank.txt" w]; debug set_watchpoint write_mem {0x9000 0x9000} {} {smb::bw}; debug set_bp 0x7AC0 {} {smb::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 94} {type " "; after time 0.08 {smb::fire}}}
 after time 0.1 {smb::arm}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {smb::fire}; after time 94 {smb::done}
}
