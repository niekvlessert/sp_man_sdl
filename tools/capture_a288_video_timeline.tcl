set throttle off
catch {set renderer none}
namespace eval sma288v {
 variable outdir "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/a288_video_timeline"
 variable f ""
 variable seq 0
 variable armed 0
 proc save {path space addr len} {
  set q [open $path wb]; fconfigure $q -translation binary
  puts -nonewline $q [debug read_block $space $addr $len]; close $q
 }
 proc x24 {} { return [expr {([peek 0xC0BC]<<16)|([peek 0xC0BB]<<8)|[peek 0xC0BA]}] }
 proc tick {} {
  variable outdir; variable f; variable seq; variable armed
  set ptr [peek16 0xC0CA]
  if {!$armed && $ptr >= 0xA25F} { set armed 1 }
  if {$armed} {
   set tag [format "%03d" $seq]
   set x [x24]
   puts $f [format "%s t=%.9f PC=%04X X=%06X ptr=%04X C0CC=%04X D2=%02X C09B=%02X B4=%02X B5=%02X E8=%04X R2=%02X R4=%02X R10=%02X R18=%02X R23=%02X" $tag [machine_info time] [reg PC] $x $ptr [peek16 0xC0CC] [peek 0xC0D2] [peek 0xC09B] [peek 0xC0B4] [peek 0xC0B5] [peek16 0xC0E8] [vdpreg 2] [vdpreg 4] [vdpreg 10] [vdpreg 18] [vdpreg 23]]
   flush $f
   save [file join $outdir "d988_${tag}.bin"] memory 0xD988 0x480
   save [file join $outdir "nt_${tag}.bin"] "physical VRAM" 0xC000 0x800
   save [file join $outdir "obj_${tag}.bin"] memory 0xCE80 0x500
   incr seq
   if {$seq >= 56 || $ptr > 0xA294} { close $f; exit }
  }
  after time 0.016667 {sma288v::tick}
 }
 proc fire {} {
  if {[machine_info time] < 110} {type " "; after time 0.12 {sma288v::fire}}
 }
 proc start {} {
  variable outdir; variable f
  file delete -force $outdir; file mkdir $outdir
  set f [open [file join $outdir state.txt] w]
  sma288v::tick
 }
 after time 8 {type " "}
 after time 10 {type " "}
 after time 12 {type " "}
 after time 14 {type " "}
 after time 15 {sma288v::fire}
 after time 90 {sma288v::start}
}