onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /mp2_cpu/thedatapath/reset_l
add wave -noupdate -format Logic /mp2_cpu/controlunit/start_h
add wave -noupdate -format Logic /mp2_cpu/controlunit/clk
add wave -noupdate -format Literal /mp2_cpu/thedatapath/pcout
add wave -noupdate -format Literal /mp2_cpu/thedatapath/address
add wave -noupdate -format Logic /mp2_cpu/controlunit/mwriteh_l
add wave -noupdate -format Logic /mp2_cpu/controlunit/mwritel_l
add wave -noupdate -format Logic /mp2_cpu/controlunit/mread_l
add wave -noupdate -format Literal /mp2_cpu/thedatapath/datain
add wave -noupdate -format Literal /mp2_cpu/thedatapath/dataout
add wave -noupdate -format Literal -expand /mp2_cpu/thedatapath/aregfile/ram
add wave -noupdate -format Literal /mp2_cpu/controlunit/current_state
add wave -noupdate -format Logic /mp2_cpu/n
add wave -noupdate -format Logic /mp2_cpu/p
add wave -noupdate -format Logic /mp2_cpu/z
add wave -noupdate -format Logic /mp2_cpu/checkn
add wave -noupdate -format Logic /mp2_cpu/checkp
add wave -noupdate -format Logic /mp2_cpu/checkz
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3218 ns} 0}
configure wave -namecolwidth 289
configure wave -valuecolwidth 50
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
WaveRestoreZoom {2653 ns} {3485 ns}
