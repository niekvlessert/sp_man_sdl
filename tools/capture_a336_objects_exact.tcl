set throttle off
set renderer none
namespace eval sma336o {
  variable stage 0
  proc save {name addr size} {set d "/tmp/sm_a336_objects"; file mkdir $d; set f [open [file join $d $name] wb]; fconfigure $f -translation binary; puts -nonewline $f [debug read_block memory $addr $size]; close $f}
  proc rawcopy {} {variable stage; if {$stage != 0 || [peek16 0xC0CA] != 0xA336} {return}; set stage 1}
  proc precomp {} {variable stage; if {$stage != 1} {return}; set stage 2}
  proc final {} {
    variable stage; if {$stage != 2} {return}
    sma336o::save objects.bin 0xCE80 0x500
    sma336o::save d988.bin 0xD988 0x480
    set f [open /tmp/sm_a336_objects/state.txt w]; puts $f [format "time=%.9f PC=%04X C0CA=%04X C0CC=%04X XLO=%04X YLO=%04X" [machine_info time] [reg PC] [peek16 0xC0CA] [peek16 0xC0CC] [peek16 0xC0BA] [peek16 0xC0C0]]; close $f
    set stage 3; exit
  }
  proc arm {} {debug set_bp 0x6DBC {} {sma336o::rawcopy}; debug set_bp 0x6EE7 {} {sma336o::precomp}; debug set_bp 0x771D {} {sma336o::final}}
  foreach t {8 10 12 14} {after time $t {type " "}}
  after time 100 {sma336o::arm}; after time 140 {exit}
}
