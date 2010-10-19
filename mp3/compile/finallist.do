onerror {resume}
add list -hex -notrig /mp2_cpu/dram/pmdataout
add list -hex -notrig /mp2_cpu/dram/pmaddress
add list /mp2_cpu/dram/pmwrite_l
configure list -usestrobe 0
configure list -strobestart {0 ns} -strobeperiod {0 ns}
configure list -usesignaltrigger 1
configure list -delta all
configure list -signalnamewidth 0
configure list -datasetprefix 0
configure list -namelimit 5
