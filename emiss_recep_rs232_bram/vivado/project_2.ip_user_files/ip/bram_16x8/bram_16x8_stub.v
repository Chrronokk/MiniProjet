// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Fri Apr 13 14:54:40 2018
// Host        : ocaepc24 running 64-bit Debian GNU/Linux 7.11 (wheezy)
// Command     : write_verilog -force -mode synth_stub
//               /cime-fmr/rollandl-fmr/xilinx/zedboard/emiss_recep_rs232_bram/vivado/project_2.srcs/sources_1/ip/bram_16x8/bram_16x8_stub.v
// Design      : bram_16x8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *)
module bram_16x8(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[3:0],dina[7:0],clkb,addrb[3:0],doutb[7:0]" */;
  input clka;
  input [0:0]wea;
  input [3:0]addra;
  input [7:0]dina;
  input clkb;
  input [3:0]addrb;
  output [7:0]doutb;
endmodule
