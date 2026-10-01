set throttle off
set renderer none
namespace eval smgm {
 variable f ""
 proc log {tag} {
  variable f
  set ix [reg IX]; if {$ix < 0xCE80 || $ix >= 0xD380} {return}
  set sp [reg SP]; set ret [peek16 $sp]
  puts $f [format "%.9f %s ret=%04X IX=%04X slot=%d type=%02X st=%02X f5=%02X f6=%02X A=%02X B=%02X C=%02X DE=%04X HL=%04X x=%04X y=%04X" [machine_info time] $tag $ret $ix [expr {($ix-0xCE80)/0x40}] [peek $ix] [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [peek [expr {$ix+6}]] [reg A] [reg B] [reg C] [reg DE] [reg HL] [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]]]; flush $f
 }
 proc start {} {variable f; set f [open /tmp/gate_matrix_calls.txt w]; debug set_bp 0x7A43 {} {smgm::log 7A43}; debug set_bp 0x7A96 {} {smgm::log 7A96}}
 proc done {} {variable f; close $f; exit}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 152.45 {smgm::start}; after time 152.55 {smgm::done}
}
