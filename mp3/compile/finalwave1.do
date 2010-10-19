onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way0/adataarray/data
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way0/atagarray/tag
add wave -noupdate -format Literal /mp2_cpu/thedatapath/pcout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ns} {1 us}
