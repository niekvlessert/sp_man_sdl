set throttle off
set renderer none
namespace eval smf6late {
 variable f ""
 proc hit {} {
  variable f
  set a $::wp_last_address; set off [expr {($a-0xCE80)&0x3F}]
  if {$off != 6} {return}
  set base [expr {$a-$off}]
  if {[peek $base] != 0x20} {return}
  puts $f [format "%.9f slot=%d addr=%04X val=%02X PC=%04X st=%02X x=%04X y=%04X b5=%02X b6=%02X b17=%02X b18=%02X b20=%02X C0CA=%04X C0CC=%04X" [machine_info time] [expr {($base-0xCE80)/0x40}] $a $::wp_last_value [reg PC] [peek [expr {$base+1}]] [peek16 [expr {$base+9}]] [peek16 [expr {$base+7}]] [peek [expr {$base+5}]] [peek [expr {$base+6}]] [peek [expr {$base+0x17}]] [peek [expr {$base+0x18}]] [peek [expr {$base+0x20}]] [peek16 0xC0CA] [peek16 0xC0CC]]; flush $f
 }
 proc start {} {variable f; set f [open /tmp/type20_frame6_late.txt w]; debug set_watchpoint write_mem {0xCE80 0xD37F} {} {smf6late::hit}}
 proc done {} {variable f; close $f; exit}
 foreach t {8 10 12 14} {after time $t {type " "}}
 after time 106 {smf6late::start}; after time 115 {smf6late::done}
}
