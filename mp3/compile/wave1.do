onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /mp2_cpu/thedatapath/clk
add wave -noupdate -format Literal /mp2_cpu/controlunit/current_state
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/hitgate
add wave -noupdate -format Logic /mp2_cpu/dram/pmresp_h
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_load
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_idlehit
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_writeback
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/hit
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/miss
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way0write
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way1write
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way0writeandout
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way1writeandout
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirt
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirty
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirty0
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirty1
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirty_internal
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirtyin
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way0/adirtyarray/dirty
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way1/adirtyarray/dirty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4167 ns} 0}
configure wave -namecolwidth 195
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
WaveRestoreZoom {49060 ns} {50371 ns}
