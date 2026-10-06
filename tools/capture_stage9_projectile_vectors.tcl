set throttle off
set renderer none
set angle 64
# Runs the original launch arithmetic at every angle, without changing ROM.
# Output: 64 entries, each VY/VX/AY/AX (four signed little-endian words).
set f [open $::env(SM_PROJECTILE_VECTORS_OUT) wb];fconfigure $f -translation binary
proc next {} {
 foreach {port mirror bank} {0x7000 0xf0f1 4 0x9000 0xf0f2 5 0xb000 0xf0f3 6} {poke $port $bank;poke $mirror $bank}
 debug write_block memory 0xeb00 [string repeat [binary format c 0] 64]
 poke 0xeb00 0x5e;poke 0xca26 14;poke 0xca19 2
 reg IFF 0;reg SP 0xf300;poke 0xf300 0;poke 0xf301 0x40
 reg IX 0xeb00;reg A $::angle;reg PC 0xb6f3
}
proc returned {} {
 puts -nonewline $::f [debug read_block memory 0xeb0b 8]
 incr ::angle
 if {$::angle>=128} {close $::f;exit}
 next
}
proc start {} {debug set_bp 0x4000 {} returned;next}
after time 20 start
after time 22 exit
