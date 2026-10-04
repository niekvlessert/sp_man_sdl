set throttle off
set renderer none
namespace eval smpcm {
 variable clips {{stage0 59 180} {stage1 60 180} {boss 57 180} {shot 2 1} {wave_shot 3 1} {power_shot 4 1} {explosion 16 2} {hit 22 1} {enemy_shot 21 1} {pickup 9 1} {powerup 10 1} {option_mode 8 1} {missile_launch 12 1} {tower_explosion 77 3} {turret_explosion 17 2} {heavy_vehicle_explosion 19 2} {large_cannon_explosion 20 2} {boss_hit 37 1} {platform_explosion 51 2} {platform_burst 52 2} {platform_rumble 53 2} {cannon_shot 25 1} {claw_close 38 2} {claw_open 39 2} {terrain_hit 30 1} {terrain_break 31 1} {bomb_expand 13 2} {bomb_blast 14 2} {carrier_launch 26 3} {hatch_shot 23 2} {stage3_arm_extend 42 2} {stage3_arm_retract 43 2} {stage6_open 46 2} {stage6_close 47 2}}
 variable current {}
 variable phase init
 variable ticks 0
 variable deadline 0
 proc call {pc {a 0}} {
  foreach {port mirror bank} {0x7000 0xf0f1 28 0x9000 0xf0f2 29} {poke $port $bank;poke $mirror $bank}
  reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
  reg A $a;reg PC $pc
 }
 proc next {} {
  variable clips;variable current;variable phase
  if {![llength $clips]} {
   set f [open [file join $::env(SM_PCM_OUT) complete.txt] w];puts $f COMPLETE;close $f
   exit
  }
  set current [lindex $clips 0];set clips [lrange $clips 1 end];set phase init
  poke 0xb000 30;poke 0xf0f3 30;poke 0xc8c8 30
  for {set i 0} {$i<0x300} {incr i} {poke [expr {0xc600+$i}] 0}
  call 0x6000
 }
 proc returned {} {
  variable current;variable phase;variable ticks;variable deadline
  lassign $current name id duration
  if {$phase eq "init"} {
   soundlog start [file join $::env(SM_PCM_OUT) "$name.wav"]
   set phase request;call 0x6003 $id;return
  }
  if {$phase eq "request"} {
   set phase update;set ticks 0;set deadline [machine_info time]
  } else {incr ticks}
  reg IFF 0;reg PC 0xf200
  if {$ticks >= $duration*60} {soundlog stop;after time 0.05 {smpcm::next};return}
  # Fixed deadlines avoid adding the driver's execution time to every tick.
  set deadline [expr {$deadline+1.0/60.0}]
  after time [expr {max(0.0,$deadline-[machine_info time])}] {smpcm::call 0x6006}
 }
 proc start {} {
  vdpreg 0 [expr {[vdpreg 0]&0xef}];vdpreg 1 [expr {[vdpreg 1]&0xdf}]
  poke 0xf200 0x18;poke 0xf201 0xfe
  debug set_bp 0x4000 {} {smpcm::returned}
  next
 }
 after time 20 {smpcm::start}
 after time 700 {exit}
}
