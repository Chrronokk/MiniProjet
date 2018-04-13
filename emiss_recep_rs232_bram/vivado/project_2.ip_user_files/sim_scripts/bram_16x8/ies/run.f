-makelib ies/xil_defaultlib -sv \
  "/softslin/vivado_17.1/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/softl2/XILINX/vivado_17.1/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_6 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../project_2.srcs/sources_1/ip/bram_16x8/sim/bram_16x8.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

