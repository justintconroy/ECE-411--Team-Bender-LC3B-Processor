onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /mp2_cpu/controlunit/current_state
add wave -noupdate -format Literal /mp2_cpu/dram/cache_cont/current_state
add wave -noupdate -format Literal -expand /mp2_cpu/thedatapath/aregfile/ram
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way0write
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way0/adataarray/data
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way0/atagarray/tag
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/way1write
add wave -noupdate -format Literal -expand /mp2_cpu/dram/cache_dp/way1/adataarray/data
add wave -noupdate -format Literal /mp2_cpu/dram/pmdatain
add wave -noupdate -format Literal /mp2_cpu/dram/pmdataout
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/lruout
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/hit
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/miss
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way1/atagarray/tag
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wcdata
add wave -noupdate -format Logic /mp2_cpu/dram/pmresp_h
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/hitgate
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/evicttag
add wave -noupdate -format Literal /mp2_cpu/dram/pmaddress
add wave -noupdate -format Logic /mp2_cpu/dram/pmread_l
add wave -noupdate -format Logic /mp2_cpu/dram/pmwrite_l
add wave -noupdate -format Literal /mp2_cpu/address
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_idlehit
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_load
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/in_writeback
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/mresp_h
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/prehit0
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/prehit1
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/protohit
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way0/adirtyarray/dirty
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way1/adirtyarray/dirty
add wave -noupdate -format Logic /mp2_cpu/thedatapath/reset_l
add wave -noupdate -format Logic /mp2_cpu/start_h
add wave -noupdate -format Logic /mp2_cpu/thedatapath/clk
add wave -noupdate -format Literal /mp2_cpu/thedatapath/pcout
add wave -noupdate -format Logic /mp2_cpu/mwritel_l
add wave -noupdate -format Logic /mp2_cpu/mwriteh_l
add wave -noupdate -format Logic /mp2_cpu/mread_l
add wave -noupdate -format Literal /mp2_cpu/thedatapath/datain
add wave -noupdate -format Literal /mp2_cpu/thedatapath/dataout
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/aaccess
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/addrindex
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/addroffset
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/addrtag
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/dirty
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/onesig
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/tag_comp0
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/tag_comp1
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/valid0
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/valid1
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way_data
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way_data0
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way_data1
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/way_datain
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout1
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout2
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout3
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout4
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout5
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout6
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout7
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wayout8
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/waytag0
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/waytag1
add wave -noupdate -format Literal /mp2_cpu/dram/cache_dp/wbaddr
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/writeaccess
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/writeaccess0
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/writeaccess1
add wave -noupdate -format Logic /mp2_cpu/dram/cache_dp/zerosig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5504 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 151
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
WaveRestoreZoom {4315 ns} {5153 ns}
