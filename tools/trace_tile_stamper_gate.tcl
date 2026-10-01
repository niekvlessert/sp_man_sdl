set throttle off
set renderer none
namespace eval smtg {
 variable f ""
 proc hit {} {
  variable f
  set ix [reg IX]
  if {$ix < 0xCE80 || $ix >= 0xD380} {return}
  set typ [peek $ix]
  puts $f [format "%.9f PC=%04X IX=%04X slot=%d type=%02X st=%02X f5=%02X f6=%02X A=%02X B=%02X C=%02X x=%04X y=%04X C0CA=%04X CA34=%04X" [machine_info time] [reg PC] $ix [expr {($ix-0xCE80)/0x40}] $typ [peek [expr {$ix+1}]] [peek [expr {$ix+5}]] [peek [expr {$ix+6}]] [reg A] [reg B] [reg C] [peek16 [expr {$ix+9}]] [peek16 [expr {$ix+7}]] [peek16 0xC0CA] [peek16 0xCA34]]
  flush $f
 }
 proc start {} {variable f; set f [open /tmp/tile_stamper_gate.txt w]; debug set_bp 0x7AC0 {} {smtg::hit}}
 proc done {} {variable f; close $f; exit}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 150 {smtg::start}; after time 153 {smtg::done}
}
