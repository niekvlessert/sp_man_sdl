set throttle off
set renderer none
namespace eval smret {
 variable f ""
 proc hit {} {
  variable f
  set ix [reg IX]; if {$ix < 0xCE80 || $ix >= 0xD380} {return}
  set sp [reg SP]; set ret [peek16 $sp]
  puts $f [format "%.9f ret=%04X slot=%d type=%02X st=%02X f5=%02X f6=%02X AF=%04X BC=%04X DE=%04X HL=%04X x=%04X y=%04X" [machine_info time] $ret [expr {($ix-0xCE80)/0x40}] [peek $ix] [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [peek [expr {$ix+6}]] [reg AF] [reg BC] [reg DE] [reg HL] [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]]]; flush $f
 }
 proc start {} {variable f; set f [open /tmp/gate_7ac0_returns.txt w]; debug set_bp 0x7AC0 {} {smret::hit}}
 proc done {} {variable f; close $f; exit}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 152.48 {smret::start}; after time 152.51 {smret::done}
}
