set throttle off
set renderer none
namespace eval smfire {
 variable f ""
 variable seen
 proc scan {} {
  variable f; variable seen
  set t [machine_info time]
  for {set i 0} {$i < 18} {incr i} {
   set a [expr {0xD460 + $i * 0x20}]
   set typ [peek $a]
   if {$typ == 0x60 || $typ == 0x61 || $typ == 0x67 || $typ == 0x70 || $typ == 0x11} {
    set sig [format "%02X:%02X:%02X:%04X:%04X:%02X:%02X:%02X" $typ [peek [expr {$a+1}]] [peek [expr {$a+5}]] [peek16 [expr {$a+9}]] [peek16 [expr {$a+7}]] [peek [expr {$a+0x15}]] [peek [expr {$a+0x17}]] [peek [expr {$a+0x18}]]]
    if {![info exists seen($i)] || $seen($i) ne $sig} {
     set seen($i) $sig
     puts $f [format "OBJ %.6f %02d %s" $t $i $sig]
    }
   } else {unset -nocomplain seen($i)}
  }
  flush $f
  if {$t < 115.0} {after time 0.016667 {smfire::scan}} else {close $f; exit}
 }
 proc request {} {
  variable f
  puts $f [format "SFX %.6f %02X" [machine_info time] [reg A]]
  flush $f
 }
 proc start {} {
  variable f
  set f [open "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/enemy_fire_trace.txt" w]
  catch {trainer "Space Manbow" 9 22}
  debug set_bp 0x6003 {} {smfire::request}
  smfire::scan
 }
 after time 8.0 {type " "}
 after time 10.0 {type " "}
 after time 12.0 {type " "}
 after time 14.0 {type " "}
 after time 15.0 {smfire::start}
}