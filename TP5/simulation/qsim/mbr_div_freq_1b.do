onerror {exit -code 1}
vlib work
vlog -work work mbr_div_freq_1b.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mbr_div_freq_1b_vlg_vec_tst -voptargs="+acc"
vcd file -direction mbr_div_freq_1b.msim.vcd
vcd add -internal mbr_div_freq_1b_vlg_vec_tst/*
vcd add -internal mbr_div_freq_1b_vlg_vec_tst/i1/*
run -all
quit -f
