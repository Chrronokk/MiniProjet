vlib work
vlib msim

vlib msim/blk_mem_gen_v8_3_6
vlib msim/xil_defaultlib

vmap blk_mem_gen_v8_3_6 msim/blk_mem_gen_v8_3_6
vmap xil_defaultlib msim/xil_defaultlib

vlog -work blk_mem_gen_v8_3_6 -64 -incr \
"../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../project_2.srcs/sources_1/ip/bram_16x8/sim/bram_16x8.v" \


vlog -work xil_defaultlib \
"glbl.v"

