# Natural boss cycles; no firing or damage injection. RAM-only stage selection
# before gameplay and player invincibility; original cartridge code is untouched.
set throttle off
set renderer none
set stage $::env(SM_AUDIT_STAGE)
set f [open $::env(SM_AUDIT_OUT) w]
set n 0
proc traceboss {} {
 set ix [reg IX]
 if {[peek 0xca10]!=$::stage || [peek $ix]!=[lindex {123 67 120 121} [expr {$::stage-5}]]} {return}
 puts $::f [format "%d %.9f %02X %02X %s" $::n [machine_info time] [peek 0xca02] [peek 0xca19] [binary encode hex [debug read_block memory $ix 64]]]
 incr ::n
 if {$::n>=$::env(SM_AUDIT_UPDATES)} {
 foreach {name device address size} {regs "VDP regs" 0 64 palette "VDP palette" 0 32 vram VRAM 0 131072} {
  set q [open "$::env(SM_AUDIT_OUT)-$name.bin" wb];fconfigure $q -translation binary;puts -nonewline $q [debug read_block $device $address $size];close $q
 }
 close $::f;exit
}
}
foreach t {2 4 6 7.9} {after time $t {poke 0xf0fc $::stage}}
foreach t {8 10 12 14} {after time $t {type " "}}
proc protect {} {poke 0xca53 3;poke 0xca54 3;after time 0.1 protect}
after time 15 protect
set handler [lindex {0xb513 0x8e81 0xaa1c 0x96ac} [expr {$stage-5}]]
set bank [lindex {6 5 6 5} [expr {$stage-5}]]
set mirror [expr {$bank==5?0xf0f2:0xf0f3}]
debug set_bp $handler [format {[peek %d]==%d} $mirror $bank] traceboss
after time 450 {close $::f;exit}
