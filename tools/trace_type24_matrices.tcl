set throttle off
set renderer none
namespace eval sm24 {
 variable f ""; variable last ""
 proc hexblock {addr n} {binary scan [debug read_block "memory" $addr $n] H* h; return [string toupper $h]}
 proc hit {} {
  variable f; variable last
  set ix [reg IX]
  if {$ix < 0xCE80 || $ix > 0xD37F || [peek $ix] != 0x24} {return}
  set hl [reg HL]; set bc [reg BC]; set de [reg DE]
  set sig [format "%04X:%04X:%04X:%04X:%02X" $ix $hl $bc $de [peek [expr {$ix+5}]]]
  if {$sig eq $last} {return}; set last $sig
  puts $f [format "%.9f IX=%04X state=%02X f05=%02X xy=%04X,%04X HL=%04X BC=%04X DE=%04X bytes=%s" [machine_info time] $ix [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [peek16 [expr {$ix+7}]] [peek16 [expr {$ix+9}]] $hl $bc $de [hexblock $hl 24]]
  flush $f
 }
 proc arm {} {variable f; set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type24_matrices.txt" w]; debug set_bp 0x7AC0 {} {sm24::hit}}
 proc done {} {variable f; close $f; exit}
 proc fire {} {if {[machine_info time] < 116} {type " "; after time 0.08 {sm24::fire}}}
 after time 8 {type " "}; after time 10 {type " "}; after time 12 {type " "}; after time 14 {type " "}
 after time 15 {sm24::fire}; after time 83 {sm24::arm}
 after time 116 {sm24::done}
}
