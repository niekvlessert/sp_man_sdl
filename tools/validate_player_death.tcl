set throttle off
set renderer none
set out [open /tmp/player-death-helper.log w]
set count 0
proc nextframe {} {
 incr ::count
 reg IX 0xca40;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
 reg PC 0x80da
}
proc returned {} {
 puts $::out "$::count [binary encode hex [debug read_block memory 0xca40 32]]"
 if {$::count==40} {close $::out;exit}
 nextframe
}
proc startdeath {} {
 foreach {port mirror bank} {0x7000 0xf0f1 4 0x9000 0xf0f2 2 0xb000 0xf0f3 3} {poke $port $bank;poke $mirror $bank}
 for {set i 0} {$i<32} {incr i} {poke [expr {0xca40+$i}] 0}
 foreach {a v} {0xca40 1 0xca48 8 0xca4a 5 0xca55 57 0xca53 3 0xca54 131} {poke $a $v}
 reg IFF 0;reg IX 0xca40;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
 debug set_bp 0x4000 {} returned
 reg PC 0x809d
}
after time 20 startdeath
