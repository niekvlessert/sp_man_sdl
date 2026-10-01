set throttle off
set renderer none
namespace eval sm26 {
 proc hit {} {
  if {[reg PC] != 0x6715} {return}
  set a $::wp_last_address
  set off [expr {($a - 0xCE80) & 0x3F}]
  if {$off != 0x16} {return}
  set base [expr {$a - $off}]
  if {[peek $base] != 0x26} {return}
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type26_init.bin" wb]
  fconfigure $f -translation binary
  puts -nonewline $f [debug read_block "memory" $base 0x40]
  close $f
  set t [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/type26_init.txt" w]
  puts $t [format "t=%.9f base=%04X hpwrite=%02X" [machine_info time] $base $::wp_last_value]
  close $t
  exit
 }
 proc arm {} {debug set_watchpoint write_mem {0xCE80 0xD37F} {} {sm26::hit}}
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 90 {sm26::arm}
 after time 110 {exit}
}
