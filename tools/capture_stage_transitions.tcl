set throttle off
namespace eval smtr {
  variable out "/Volumes/EXT_SSD/AI/dma9938/RPMSX/space_manbow_sdl/tools/probe_out/stage_transitions"
  proc shot {tag} {
    variable out
    file mkdir $out
    screenshot -raw -size auto [file join $out "$tag.png"]
    set f [open [file join $out "$tag.txt"] w]
    puts $f [format "t=%.6f ptr=%04X X=%06X Y=%06X mode=%02X d5=%02X trig=%04X" [machine_info time] [peek16 0xC0CA] [expr {[peek16 0xC0BA]|([peek 0xC0BC]<<16)}] [expr {[peek16 0xC0C0]|([peek 0xC0C2]<<16)}] [peek 0xC0CE] [peek 0xC0D5] [peek16 0xCA34]]
    close $f
  }
  after time 8.0 {type " "}
  after time 10.0 {type " "}
  after time 12.0 {type " "}
  after time 14.0 {type " "}
  after time 99.0 {smtr::shot t099}
  after time 101.0 {smtr::shot t101}
  after time 103.0 {smtr::shot t103}
  after time 106.0 {smtr::shot t106}
  after time 109.0 {smtr::shot t109}
  after time 112.0 {smtr::shot t112}
  after time 115.0 {smtr::shot t115}
  after time 118.0 {smtr::shot t118}
  after time 121.0 {smtr::shot t121}
  after time 124.0 {smtr::shot t124}
  after time 126.0 {exit}
}
