# Natural Stage-6 barrier audit. Set SM_BARRIER_OUT to the output log.
# Run from the project root with the original cartridge; no firing or ROM patches.
set throttle off
set renderer none
set f [open $::env(SM_BARRIER_OUT) w]
set count 0
set shots 0
source tools/openmsx_real_gameplay.tcl
proc protect {} {poke 0xca53 3;poke 0xca54 3;after time 0.1 protect}
proc capture {} {
 if {![smreal::active] || [peek 0xca10]!=5 || [peek [reg IX]]!=14} {return}
 puts $::f [format "STATE %02X %s" [peek 0xca02] [binary encode hex [debug read_block memory [reg IX] 64]]]
 incr ::count
 if {$::count>=180} {puts $::f "COMPLETE shots=$::shots";close $::f;exit}
}
proc shot {} {
 if {![smreal::active] || [peek 0xca10]!=5 || [peek [reg IX]]!=14} {return}
 puts $::f [format "SHOT %02X state=%d frame=%d x=%02X y=%02X" [peek 0xca02] [peek [expr {[reg IX]+1}]] [peek [expr {[reg IX]+6}]] [peek [expr {[reg IX]+10}]] [peek [expr {[reg IX]+8}]]]
 incr ::shots
}
debug set_bp 0x4f33 {} capture
debug set_bp 0x7110 {[peek 0xf0f1]==4} shot
smreal::init 5 protect
after time 240 {puts $::f TIMEOUT;close $::f;exit}
