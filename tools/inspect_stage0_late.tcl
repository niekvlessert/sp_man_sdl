# Diagnostic screenshots only: unpatched ROM and RAM-only invincibility.
# SDLGL-PP can retain stale frames even after throttle is enabled. Validate
# screenshots against fresh RAM/VRAM captures before using them as evidence.
# One logged pending-damage injection allows observation past the type-$64 gate.
set throttle off
set renderer SDLGL-PP
set minframeskip 0
set maxframeskip 0
catch {set scale_factor 1}
namespace eval lateaudit {
 variable out $::env(SM_LATE_CAPTURE)
 variable f [open [file join $out states.tsv] w]
 variable first -1
 variable injected 0
 proc protect {} {
  poke 0xca53 3; poke 0xca54 3
  after time 0.1 {lateaudit::protect}
 }
 proc damage {} {
  variable first; variable injected; variable f
  set ix [reg IX]
  if {[peek 0xca10]!=0 || $ix<0xce80 || $ix>=0xd380 || [peek $ix]!=0x64} {return}
  set t [machine_info time]
  if {$first<0} {set first $t}
  if {!$injected && $t>$first+20 && ([peek [expr {$ix+0x14}]]&128)} {
   set amount [expr {[peek [expr {$ix+0x16}]]+1}]
   poke [expr {$ix+4}] $amount
   puts $f "# INJECT t=$t type=64 pending=$amount"; flush $f
   set injected 1
  }
 }
 proc request_snap {} {
  # Unthrottled OpenMSX paints at 10 wall-clock fps even with maxframeskip=0.
  # Allow 0.25 seconds of throttled frames; this does not guarantee freshness.
  set throttle on
  after time 0.25 {lateaudit::snap}
 }
 proc snap {} {
  variable out; variable f
  set t [machine_info time]
  set tag [format "%.2f" [expr {floor($t*2)/2}]]
  screenshot -raw -size auto [file join $out "frame_$tag.png"]
  set x [expr {([peek16 0xc0ba]|([peek 0xc0bc]<<16))>>8}]
  set y [expr {[peek16 0xc0c0]|([peek 0xc0c2]<<16)}]
  if {$y&0x800000} {set y [expr {$y-0x1000000}]}; set y [expr {$y>>8}]
  set actors {}
  for {set i 0} {$i<20} {incr i} {
   set b [expr {0xce80+$i*64}]
   if {[peek $b]} {append actors [format "%02X:%02X:%02X:%02X:%04X:%04X:%02X," [peek $b] [peek [expr {$b+1}]] [peek [expr {$b+5}]] [peek [expr {$b+6}]] [peek16 [expr {$b+9}]] [peek16 [expr {$b+7}]] [peek [expr {$b+0x16}]]]}
  }
  puts $f [format "%s\t%d\t%d\t%04X\t%04X\t%02X\t%02X\t%02X\t%02X\t%s" $tag $x $y [peek16 0xc0ca] [peek16 0xca34] [peek 0xc0ce] [peek 0xca10] [peek 0xca19] [vdpreg 23] $actors]
  puts $f "# CAPTURE actual_time=$t tag=$tag"
  flush $f
  set throttle off
  if {$t<215} {after time 0.25 {lateaudit::request_snap}} else {close $f;exit}
 }
 puts $f "time\tx\ty\tsource\ttrigger\tmode\tstage\tdifficulty\tr23\tactors"
 debug set_bp 0x7c63 {[peek 0xf0f1]==4} {lateaudit::damage}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 15 {lateaudit::protect}
 after time 100 {lateaudit::request_snap}
}
