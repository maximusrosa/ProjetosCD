onerror {exit -code 1}
vlib work
vlog -work work teste_mux8x1.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.teste_mux8x1_vlg_vec_tst -voptargs="+acc"
vcd file -direction teste_mux8x1.msim.vcd
vcd add -internal teste_mux8x1_vlg_vec_tst/*
vcd add -internal teste_mux8x1_vlg_vec_tst/i1/*
run -all
quit -f
