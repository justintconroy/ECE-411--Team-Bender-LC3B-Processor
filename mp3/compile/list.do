onerror {resume}
add list -width 18 /mp2_cpu/dataout
add list /mp2_cpu/address
add list /mp2_cpu/mwriteh_l
add list /mp2_cpu/mwritel_l
configure list -usestrobe 0
configure list -strobestart {0 ns} -strobeperiod {0 ns}
configure list -usesignaltrigger 1
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
