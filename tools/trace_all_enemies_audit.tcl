# Natural handler-entry/return traces for every enemy reached in a stage.
# SM_ENEMY_STAGE is zero based; SM_ENEMY_OUT is the trace path.
set throttle off
set renderer none
source tools/openmsx_real_gameplay.tcl
set stage $::env(SM_ENEMY_STAGE)
set f [open $::env(SM_ENEMY_OUT) w]
set smen_pending {}
array set smen_samples {}
array set smen_counts {}
proc smen_protect {} {poke 0xca53 3;poke 0xca54 3;after time 0.1 smen_protect}
proc smen_begin {} {
 smen_protect
 after time 330 smen_finish
}
proc smen_enter {} {
 if {![smreal::active] || [peek 0xca10]!=$::stage} {return}
 set ix [reg IX]
 if {$ix<0xce80 || $ix>=0xd380 || ($ix&63)!=0} {return}
 set typ [peek $ix];set state [peek [expr {$ix+1}]]
 set key "$typ,$state"
 incr ::smen_counts($key)
 set near [expr {[peek [expr {$ix+0x17}]]<=2 || [peek [expr {$ix+0x18}]]<=2}]
 set samplekey "$key,$near"
 if {![info exists ::smen_samples($samplekey)]} {set ::smen_samples($samplekey) 0}
 if {$::smen_samples($samplekey)>=4} {set ::smen_pending {};return}
 incr ::smen_samples($samplekey)
 set ::smen_pending [list [reg SP] $ix $typ [peek 0xca02] [peek 0xca19] \
  [binary encode hex [debug read_block memory $ix 64]] \
  [binary encode hex [debug read_block memory 0xca40 64]] \
  [peek 0xc917] [peek 0xc918] \
  [binary encode hex [debug read_block memory 0xce80 1280]] \
  [binary encode hex [debug read_block memory 0xca00 64]] \
  [binary encode hex [debug read_block memory 0xde00 256]] \
  [binary encode hex [debug read_block memory 0xe000 2048]]]
}
proc smen_leave {} {
 if {[llength $::smen_pending]==0} {return}
 if {[reg SP]!=[expr {[lindex $::smen_pending 0]+2}]} {return}
 set ix [lindex $::smen_pending 1]
 puts $::f "PAIR [join [lrange $::smen_pending 1 end] { }] [binary encode hex [debug read_block memory $ix 64]]"
 set ::smen_pending {}
}
proc smen_finish {} {
 foreach key [lsort [array names ::smen_counts]] {puts $::f "COUNT $key $::smen_counts($key)"}
 puts $::f COMPLETE
 close $::f;exit
}
debug set_bp 0x64d0 {[peek 0xf0f1]==4} smen_enter
foreach addr {0x66c2 0x6dd3 0x6de1 0x6df5 0x6e09 0x6e1d 0x6e35 0x6e44} {
 debug set_bp $addr {[peek 0xf0f1]==4} smen_leave
}
smreal::init $stage smen_begin
after time 370 {smen_finish}
