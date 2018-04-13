// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Tue Mar  6 14:09:42 2018
// Host        : ocaepc21 running 64-bit unknown
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /cime-fmr/rollandl-fmr/xilinx/pynk/emiss_recep_rs232_bram/vivado/project_2.sim/sim_1/synth/timing/recep_rs232_vhd_tst_time_synth.v
// Design      : emiss_recep_rs232_bram
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* CHECK_LICENSE_TYPE = "bram_16x8,blk_mem_gen_v8_3_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
module bram_16x8
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_16x8.mem" *) 
  (* C_INIT_FILE_NAME = "bram_16x8.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bram_16x8__blk_mem_gen_v8_3_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* NotValidForBitStream *)
module emiss_recep_rs232_bram
   (Clk,
    rst,
    sw,
    ledr,
    txd_obs,
    txd_out,
    wren_obs,
    rxd);
  input Clk;
  input rst;
  input [7:0]sw;
  output [7:0]ledr;
  output txd_obs;
  output txd_out;
  output wren_obs;
  input rxd;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [7:0]data_bram;
  wire [7:0]ledr;
  wire [7:0]ledr_OBUF;
  wire [7:0]q_bram;
  wire [3:0]raddress_bram;
  wire rst;
  wire rst_IBUF;
  wire rxd;
  wire [7:0]sw;
  wire [6:0]sw_IBUF;
  wire txd_obs;
  wire txd_obs_OBUF;
  wire txd_out;
  wire txd_out_OBUF;
  wire wren_obs;
  wire wren_obs_OBUF;

initial begin
 $sdf_annotate("recep_rs232_vhd_tst_time_synth.sdf",,,,"tool_control");
end
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  emiss_rs232 U1
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q(raddress_bram),
        .SR(rst_IBUF),
        .doutb(q_bram),
        .ledr_OBUF(ledr_OBUF[0]),
        .sw_IBUF(sw_IBUF[6]),
        .txd_obs_OBUF(txd_obs_OBUF));
  recep_rs232 U2
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .Q(data_bram),
        .SR(rst_IBUF),
        .ledr_OBUF(ledr_OBUF[2:1]),
        .sw_IBUF(sw_IBUF[0]),
        .txd_out_OBUF(txd_out_OBUF),
        .wea(wren_obs_OBUF));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
  bram_16x8 U3
       (.addra({1'b0,1'b0,1'b0,1'b0}),
        .addrb(raddress_bram),
        .clka(Clk_IBUF_BUFG),
        .clkb(Clk_IBUF_BUFG),
        .dina(data_bram),
        .doutb(q_bram),
        .wea(wren_obs_OBUF));
  OBUF \ledr_OBUF[0]_inst 
       (.I(ledr_OBUF[0]),
        .O(ledr[0]));
  OBUF \ledr_OBUF[1]_inst 
       (.I(ledr_OBUF[1]),
        .O(ledr[1]));
  OBUF \ledr_OBUF[2]_inst 
       (.I(ledr_OBUF[2]),
        .O(ledr[2]));
  OBUF \ledr_OBUF[3]_inst 
       (.I(1'b1),
        .O(ledr[3]));
  OBUF \ledr_OBUF[4]_inst 
       (.I(1'b1),
        .O(ledr[4]));
  OBUF \ledr_OBUF[5]_inst 
       (.I(1'b1),
        .O(ledr[5]));
  OBUF \ledr_OBUF[6]_inst 
       (.I(1'b1),
        .O(ledr[6]));
  OBUF \ledr_OBUF[7]_inst 
       (.I(ledr_OBUF[7]),
        .O(ledr[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \ledr_OBUF[7]_inst_i_1 
       (.I0(txd_out_OBUF),
        .O(ledr_OBUF[7]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF rxd_IBUF_inst
       (.I(rxd),
        .O(txd_out_OBUF));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(sw_IBUF[6]));
  OBUF txd_obs_OBUF_inst
       (.I(txd_obs_OBUF),
        .O(txd_obs));
  OBUF txd_out_OBUF_inst
       (.I(txd_out_OBUF),
        .O(txd_out));
  OBUF wren_obs_OBUF_inst
       (.I(wren_obs_OBUF),
        .O(wren_obs));
endmodule

module emiss_rs232
   (txd_obs_OBUF,
    ledr_OBUF,
    Q,
    sw_IBUF,
    Clk_IBUF_BUFG,
    SR,
    doutb);
  output txd_obs_OBUF;
  output [0:0]ledr_OBUF;
  output [3:0]Q;
  input [0:0]sw_IBUF;
  input Clk_IBUF_BUFG;
  input [0:0]SR;
  input [7:0]doutb;

  wire \/FSM_sequential_Current_State[0]_i_1_n_0 ;
  wire \/FSM_sequential_Current_State[1]_i_1_n_0 ;
  wire \/FSM_sequential_Current_State[2]_i_1_n_0 ;
  wire \/FSM_sequential_Current_State[3]_i_2_n_0 ;
  wire \/i___5_n_0 ;
  wire Clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [3:0]Current_State;
  wire \FSM_sequential_Current_State[3]_i_1_n_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \ad_bram[0]_i_1_n_0 ;
  wire \ad_bram[1]_i_1_n_0 ;
  wire \ad_bram[2]_i_1_n_0 ;
  wire \ad_bram[3]_i_1_n_0 ;
  wire [15:0]baud_time;
  wire \baud_time[0]_i_1_n_0 ;
  wire \baud_time[10]_i_1_n_0 ;
  wire \baud_time[11]_i_1_n_0 ;
  wire \baud_time[12]_i_1_n_0 ;
  wire \baud_time[13]_i_1_n_0 ;
  wire \baud_time[14]_i_1_n_0 ;
  wire \baud_time[15]_i_1_n_0 ;
  wire \baud_time[1]_i_1_n_0 ;
  wire \baud_time[2]_i_1_n_0 ;
  wire \baud_time[3]_i_1_n_0 ;
  wire \baud_time[4]_i_1_n_0 ;
  wire \baud_time[5]_i_1_n_0 ;
  wire \baud_time[6]_i_1_n_0 ;
  wire \baud_time[7]_i_1_n_0 ;
  wire \baud_time[8]_i_1_n_0 ;
  wire \baud_time[9]_i_1_n_0 ;
  wire [15:0]burst;
  wire \burst[0]_i_1_n_0 ;
  wire \burst[10]_i_1_n_0 ;
  wire \burst[11]_i_1_n_0 ;
  wire \burst[12]_i_1_n_0 ;
  wire \burst[13]_i_1_n_0 ;
  wire \burst[14]_i_1_n_0 ;
  wire \burst[15]_i_1_n_0 ;
  wire \burst[1]_i_1_n_0 ;
  wire \burst[2]_i_1_n_0 ;
  wire \burst[3]_i_1_n_0 ;
  wire \burst[4]_i_1_n_0 ;
  wire \burst[5]_i_1_n_0 ;
  wire \burst[6]_i_1_n_0 ;
  wire \burst[7]_i_1_n_0 ;
  wire \burst[8]_i_1_n_0 ;
  wire \burst[9]_i_1_n_0 ;
  wire [7:0]doutb;
  wire \dp_ram2[0]_i_1_n_0 ;
  wire \dp_ram2[1]_i_1_n_0 ;
  wire \dp_ram2[2]_i_1_n_0 ;
  wire \dp_ram2[3]_i_1_n_0 ;
  wire \dp_ram2[4]_i_1_n_0 ;
  wire \dp_ram2[5]_i_1_n_0 ;
  wire \dp_ram2[6]_i_1_n_0 ;
  wire \dp_ram2[7]_i_1_n_0 ;
  wire eqOp;
  wire \eqOp_inferred__0/i__n_0 ;
  wire i___0_i_1_n_0;
  wire i___0_i_2_n_0;
  wire i___0_i_3_n_0;
  wire i___0_i_4_n_0;
  wire i___0_i_5_n_0;
  wire i___0_i_6_n_0;
  wire i___0_i_7_n_0;
  wire i___2_i_1_n_0;
  wire i___2_i_2_n_0;
  wire i___2_i_3_n_0;
  wire i___2_i_4_n_0;
  wire i___2_i_5_n_0;
  wire i___3_i_1_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__i_2_n_0;
  wire i__i_3_n_0;
  wire i__i_4_n_0;
  wire [3:0]ind_txd;
  wire \ind_txd[0]_i_1_n_0 ;
  wire \ind_txd[1]_i_1_n_0 ;
  wire \ind_txd[2]_i_1_n_0 ;
  wire \ind_txd[3]_i_1_n_0 ;
  wire [0:0]ledr_OBUF;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire next_ad_bram;
  wire next_baud_time;
  wire next_burst;
  wire next_dp_ram2;
  wire next_ind_txd;
  wire next_tempo;
  wire next_txd;
  wire [7:0]p_0_in;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire sw9_sync;
  wire [0:0]sw_IBUF;
  wire [23:0]tempo;
  wire \tempo[0]_i_1_n_0 ;
  wire \tempo[10]_i_1_n_0 ;
  wire \tempo[11]_i_1_n_0 ;
  wire \tempo[12]_i_1_n_0 ;
  wire \tempo[13]_i_1_n_0 ;
  wire \tempo[14]_i_1_n_0 ;
  wire \tempo[15]_i_1_n_0 ;
  wire \tempo[16]_i_1_n_0 ;
  wire \tempo[17]_i_1_n_0 ;
  wire \tempo[18]_i_1_n_0 ;
  wire \tempo[19]_i_1_n_0 ;
  wire \tempo[1]_i_1_n_0 ;
  wire \tempo[20]_i_1_n_0 ;
  wire \tempo[21]_i_1_n_0 ;
  wire \tempo[22]_i_1_n_0 ;
  wire \tempo[23]_i_1_n_0 ;
  wire \tempo[2]_i_1_n_0 ;
  wire \tempo[3]_i_1_n_0 ;
  wire \tempo[4]_i_1_n_0 ;
  wire \tempo[5]_i_1_n_0 ;
  wire \tempo[6]_i_1_n_0 ;
  wire \tempo[7]_i_1_n_0 ;
  wire \tempo[8]_i_1_n_0 ;
  wire \tempo[9]_i_1_n_0 ;
  wire txd_i_1_n_0;
  wire txd_obs_OBUF;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h676F2763676F2760)) 
    \/FSM_sequential_Current_State[0]_i_1 
       (.I0(i___2_i_1_n_0),
        .I1(Current_State[0]),
        .I2(Current_State[1]),
        .I3(Current_State[2]),
        .I4(Current_State[3]),
        .I5(sw9_sync),
        .O(\/FSM_sequential_Current_State[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1145114500455545)) 
    \/FSM_sequential_Current_State[1]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[1]),
        .I2(i___3_i_1_n_0),
        .I3(Current_State[0]),
        .I4(Current_State[2]),
        .I5(i___2_i_1_n_0),
        .O(\/FSM_sequential_Current_State[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3CC80CC8)) 
    \/FSM_sequential_Current_State[2]_i_1 
       (.I0(\eqOp_inferred__0/i__n_0 ),
        .I1(Current_State[2]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .I4(i___2_i_1_n_0),
        .O(\/FSM_sequential_Current_State[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCECEC000)) 
    \/FSM_sequential_Current_State[3]_i_2 
       (.I0(eqOp),
        .I1(Current_State[0]),
        .I2(Current_State[1]),
        .I3(Current_State[2]),
        .I4(Current_State[3]),
        .O(\/FSM_sequential_Current_State[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3000000B)) 
    \/i_ 
       (.I0(eqOp),
        .I1(Current_State[3]),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(Current_State[0]),
        .O(next_ad_bram));
  LUT6 #(
    .INIT(64'h0000100010101000)) 
    \/i___0 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(Current_State[3]),
        .I3(eqOp),
        .I4(Current_State[0]),
        .I5(i___0_i_1_n_0),
        .O(next_tempo));
  LUT6 #(
    .INIT(64'h1010001000000010)) 
    \/i___1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(Current_State[3]),
        .I3(eqOp),
        .I4(Current_State[0]),
        .I5(i___0_i_1_n_0),
        .O(next_burst));
  LUT6 #(
    .INIT(64'h000000C0055FFFF0)) 
    \/i___2 
       (.I0(i___2_i_1_n_0),
        .I1(i___0_i_1_n_0),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(Current_State[1]),
        .I5(Current_State[3]),
        .O(next_baud_time));
  LUT5 #(
    .INIT(32'h00015501)) 
    \/i___3 
       (.I0(Current_State[1]),
        .I1(i___3_i_1_n_0),
        .I2(Current_State[3]),
        .I3(Current_State[0]),
        .I4(Current_State[2]),
        .O(next_ind_txd));
  LUT6 #(
    .INIT(64'h003323F0003F23F0)) 
    \/i___4 
       (.I0(i___0_i_1_n_0),
        .I1(Current_State[2]),
        .I2(Current_State[0]),
        .I3(Current_State[3]),
        .I4(Current_State[1]),
        .I5(i___2_i_1_n_0),
        .O(next_txd));
  LUT6 #(
    .INIT(64'h05050005EAAFEAAF)) 
    \/i___5 
       (.I0(Current_State[2]),
        .I1(p_0_in[7]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .I4(i___0_i_1_n_0),
        .I5(Current_State[3]),
        .O(\/i___5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000505058085)) 
    \/i___7 
       (.I0(Current_State[3]),
        .I1(i___0_i_1_n_0),
        .I2(Current_State[0]),
        .I3(i___3_i_1_n_0),
        .I4(Current_State[1]),
        .I5(Current_State[2]),
        .O(next_dp_ram2));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_Current_State[3]_i_1 
       (.I0(SR),
        .O(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Current_State_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\/FSM_sequential_Current_State[0]_i_1_n_0 ),
        .Q(Current_State[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Current_State_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\/FSM_sequential_Current_State[1]_i_1_n_0 ),
        .Q(Current_State[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Current_State_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\/FSM_sequential_Current_State[2]_i_1_n_0 ),
        .Q(Current_State[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Current_State_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\/FSM_sequential_Current_State[3]_i_2_n_0 ),
        .Q(Current_State[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \ad_bram[0]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(Q[0]),
        .O(\ad_bram[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \ad_bram[1]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\ad_bram[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04444000)) 
    \ad_bram[2]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\ad_bram[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \ad_bram[3]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\ad_bram[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ad_bram_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ad_bram),
        .D(\ad_bram[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ad_bram_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ad_bram),
        .D(\ad_bram[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ad_bram_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ad_bram),
        .D(\ad_bram[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ad_bram_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ad_bram),
        .D(\ad_bram[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022203223)) 
    \baud_time[0]_i_1 
       (.I0(Current_State[1]),
        .I1(baud_time[0]),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[10]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__1_n_6),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[11]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__1_n_5),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[12]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__1_n_4),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[13]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__2_n_7),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[14]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__2_n_6),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[15]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__2_n_5),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[1]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry_n_7),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04DF)) 
    \baud_time[2]_i_1 
       (.I0(Current_State[0]),
        .I1(i___2_i_1_n_0),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(minusOp_carry_n_6),
        .I5(Current_State[3]),
        .O(\baud_time[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[3]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry_n_5),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[4]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry_n_4),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04DF)) 
    \baud_time[5]_i_1 
       (.I0(Current_State[0]),
        .I1(i___2_i_1_n_0),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(minusOp_carry__0_n_7),
        .I5(Current_State[3]),
        .O(\baud_time[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04DF)) 
    \baud_time[6]_i_1 
       (.I0(Current_State[0]),
        .I1(i___2_i_1_n_0),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(minusOp_carry__0_n_6),
        .I5(Current_State[3]),
        .O(\baud_time[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008880C88C)) 
    \baud_time[7]_i_1 
       (.I0(Current_State[1]),
        .I1(minusOp_carry__0_n_5),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .I4(i___2_i_1_n_0),
        .I5(Current_State[3]),
        .O(\baud_time[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04DF)) 
    \baud_time[8]_i_1 
       (.I0(Current_State[0]),
        .I1(i___2_i_1_n_0),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(minusOp_carry__0_n_4),
        .I5(Current_State[3]),
        .O(\baud_time[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF04DF)) 
    \baud_time[9]_i_1 
       (.I0(Current_State[0]),
        .I1(i___2_i_1_n_0),
        .I2(Current_State[2]),
        .I3(Current_State[1]),
        .I4(minusOp_carry__1_n_7),
        .I5(Current_State[3]),
        .O(\baud_time[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[0]_i_1_n_0 ),
        .Q(baud_time[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[10]_i_1_n_0 ),
        .Q(baud_time[10]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[11]_i_1_n_0 ),
        .Q(baud_time[11]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[12]_i_1_n_0 ),
        .Q(baud_time[12]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[13]_i_1_n_0 ),
        .Q(baud_time[13]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[14]_i_1_n_0 ),
        .Q(baud_time[14]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[15]_i_1_n_0 ),
        .Q(baud_time[15]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[1]_i_1_n_0 ),
        .Q(baud_time[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[2]_i_1_n_0 ),
        .Q(baud_time[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[3]_i_1_n_0 ),
        .Q(baud_time[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[4]_i_1_n_0 ),
        .Q(baud_time[4]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[5]_i_1_n_0 ),
        .Q(baud_time[5]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[6]_i_1_n_0 ),
        .Q(baud_time[6]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[7]_i_1_n_0 ),
        .Q(baud_time[7]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[8]_i_1_n_0 ),
        .Q(baud_time[8]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \baud_time_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_baud_time),
        .D(\baud_time[9]_i_1_n_0 ),
        .Q(baud_time[9]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \burst[0]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(burst[0]),
        .I3(Current_State[0]),
        .O(\burst[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[10]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__1_n_6 ),
        .I3(Current_State[0]),
        .O(\burst[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[11]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__1_n_5 ),
        .I3(Current_State[0]),
        .O(\burst[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[12]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__1_n_4 ),
        .I3(Current_State[0]),
        .O(\burst[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[13]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__2_n_7 ),
        .I3(Current_State[0]),
        .O(\burst[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[14]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__2_n_6 ),
        .I3(Current_State[0]),
        .O(\burst[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[15]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__2_n_5 ),
        .I3(Current_State[0]),
        .O(\burst[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[1]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry_n_7 ),
        .I3(Current_State[0]),
        .O(\burst[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[2]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry_n_6 ),
        .I3(Current_State[0]),
        .O(\burst[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[3]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry_n_5 ),
        .I3(Current_State[0]),
        .O(\burst[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[4]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry_n_4 ),
        .I3(Current_State[0]),
        .O(\burst[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[5]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__0_n_7 ),
        .I3(Current_State[0]),
        .O(\burst[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[6]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__0_n_6 ),
        .I3(Current_State[0]),
        .O(\burst[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[7]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__0_n_5 ),
        .I3(Current_State[0]),
        .O(\burst[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[8]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__0_n_4 ),
        .I3(Current_State[0]),
        .O(\burst[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \burst[9]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__1/i__carry__1_n_7 ),
        .I3(Current_State[0]),
        .O(\burst[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[0]_i_1_n_0 ),
        .Q(burst[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[10]_i_1_n_0 ),
        .Q(burst[10]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[11]_i_1_n_0 ),
        .Q(burst[11]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[12]_i_1_n_0 ),
        .Q(burst[12]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[13]_i_1_n_0 ),
        .Q(burst[13]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[14]_i_1_n_0 ),
        .Q(burst[14]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[15]_i_1_n_0 ),
        .Q(burst[15]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[1]_i_1_n_0 ),
        .Q(burst[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[2]_i_1_n_0 ),
        .Q(burst[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[3]_i_1_n_0 ),
        .Q(burst[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[4]_i_1_n_0 ),
        .Q(burst[4]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[5]_i_1_n_0 ),
        .Q(burst[5]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[6]_i_1_n_0 ),
        .Q(burst[6]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[7]_i_1_n_0 ),
        .Q(burst[7]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[8]_i_1_n_0 ),
        .Q(burst[8]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \burst_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_burst),
        .D(\burst[9]_i_1_n_0 ),
        .Q(burst[9]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[0]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[0]),
        .I2(p_0_in[0]),
        .I3(Current_State[3]),
        .O(\dp_ram2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[1]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[1]),
        .I2(p_0_in[1]),
        .I3(Current_State[3]),
        .O(\dp_ram2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[2]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[2]),
        .I2(p_0_in[2]),
        .I3(Current_State[3]),
        .O(\dp_ram2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[3]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[3]),
        .I2(p_0_in[3]),
        .I3(Current_State[3]),
        .O(\dp_ram2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[4]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[4]),
        .I2(p_0_in[4]),
        .I3(Current_State[3]),
        .O(\dp_ram2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[5]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[5]),
        .I2(p_0_in[5]),
        .I3(Current_State[3]),
        .O(\dp_ram2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[6]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[6]),
        .I2(p_0_in[6]),
        .I3(Current_State[3]),
        .O(\dp_ram2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E4)) 
    \dp_ram2[7]_i_1 
       (.I0(Current_State[2]),
        .I1(doutb[7]),
        .I2(p_0_in[7]),
        .I3(Current_State[3]),
        .O(\dp_ram2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[0]_i_1_n_0 ),
        .Q(p_0_in[7]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[1]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[2]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[3]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[4]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[5]_i_1_n_0 ),
        .Q(p_0_in[4]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[6]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dp_ram2_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_dp_ram2),
        .D(\dp_ram2[7]_i_1_n_0 ),
        .Q(p_0_in[6]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \eqOp_inferred__0/i_ 
       (.I0(ind_txd[2]),
        .I1(ind_txd[3]),
        .I2(ind_txd[0]),
        .I3(ind_txd[1]),
        .O(\eqOp_inferred__0/i__n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    i___0_i_1
       (.I0(i___0_i_2_n_0),
        .I1(i___0_i_3_n_0),
        .I2(i___0_i_4_n_0),
        .I3(i___0_i_5_n_0),
        .I4(i___0_i_6_n_0),
        .I5(i___0_i_7_n_0),
        .O(i___0_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i___0_i_2
       (.I0(tempo[15]),
        .I1(tempo[14]),
        .I2(tempo[13]),
        .I3(tempo[12]),
        .O(i___0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i___0_i_3
       (.I0(tempo[11]),
        .I1(tempo[10]),
        .I2(tempo[9]),
        .I3(tempo[8]),
        .O(i___0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i___0_i_4
       (.I0(tempo[1]),
        .I1(tempo[0]),
        .I2(tempo[3]),
        .I3(tempo[2]),
        .O(i___0_i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i___0_i_5
       (.I0(tempo[7]),
        .I1(tempo[6]),
        .I2(tempo[5]),
        .I3(tempo[4]),
        .O(i___0_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i___0_i_6
       (.I0(tempo[18]),
        .I1(tempo[19]),
        .I2(tempo[20]),
        .I3(tempo[21]),
        .O(i___0_i_6_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    i___0_i_7
       (.I0(tempo[23]),
        .I1(sw9_sync),
        .I2(tempo[22]),
        .I3(tempo[16]),
        .I4(tempo[17]),
        .O(i___0_i_7_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    i___2_i_1
       (.I0(i___2_i_2_n_0),
        .I1(i___2_i_3_n_0),
        .I2(i___2_i_4_n_0),
        .I3(i___2_i_5_n_0),
        .O(i___2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i___2_i_2
       (.I0(baud_time[9]),
        .I1(baud_time[8]),
        .I2(baud_time[11]),
        .I3(baud_time[10]),
        .O(i___2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i___2_i_3
       (.I0(baud_time[14]),
        .I1(baud_time[15]),
        .I2(baud_time[13]),
        .I3(baud_time[12]),
        .O(i___2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i___2_i_4
       (.I0(baud_time[7]),
        .I1(baud_time[6]),
        .I2(baud_time[5]),
        .I3(baud_time[4]),
        .O(i___2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i___2_i_5
       (.I0(baud_time[3]),
        .I1(baud_time[2]),
        .I2(baud_time[1]),
        .I3(baud_time[0]),
        .O(i___2_i_5_n_0));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    i___3_i_1
       (.I0(ind_txd[1]),
        .I1(ind_txd[0]),
        .I2(ind_txd[3]),
        .I3(ind_txd[2]),
        .I4(Current_State[2]),
        .O(i___3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1
       (.I0(tempo[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1__0
       (.I0(burst[8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2
       (.I0(tempo[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2__0
       (.I0(burst[7]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3
       (.I0(tempo[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3__0
       (.I0(burst[6]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4
       (.I0(tempo[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4__0
       (.I0(burst[5]),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1
       (.I0(tempo[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1__0
       (.I0(burst[12]),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2
       (.I0(tempo[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2__0
       (.I0(burst[11]),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3
       (.I0(tempo[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3__0
       (.I0(burst[10]),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_4
       (.I0(tempo[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_4__0
       (.I0(burst[9]),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_1
       (.I0(tempo[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_1__0
       (.I0(burst[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_2
       (.I0(tempo[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_2__0
       (.I0(burst[14]),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_3
       (.I0(tempo[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_3__0
       (.I0(burst[13]),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_4
       (.I0(tempo[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_1
       (.I0(tempo[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_2
       (.I0(tempo[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_3
       (.I0(tempo[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_4
       (.I0(tempo[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_1
       (.I0(tempo[23]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_2
       (.I0(tempo[22]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_3
       (.I0(tempo[21]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1
       (.I0(tempo[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1__0
       (.I0(burst[4]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2
       (.I0(tempo[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2__0
       (.I0(burst[3]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3
       (.I0(tempo[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3__0
       (.I0(burst[2]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(tempo[1]),
        .O(i__carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4__0
       (.I0(burst[1]),
        .O(i__carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__i_1
       (.I0(i__i_2_n_0),
        .I1(burst[14]),
        .I2(burst[15]),
        .I3(burst[13]),
        .I4(burst[12]),
        .I5(i__i_3_n_0),
        .O(eqOp));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_2
       (.I0(burst[9]),
        .I1(burst[8]),
        .I2(burst[11]),
        .I3(burst[10]),
        .O(i__i_2_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    i__i_3
       (.I0(burst[2]),
        .I1(burst[3]),
        .I2(burst[0]),
        .I3(burst[1]),
        .I4(i__i_4_n_0),
        .O(i__i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i__i_4
       (.I0(burst[7]),
        .I1(burst[6]),
        .I2(burst[5]),
        .I3(burst[4]),
        .O(i__i_4_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    \ind_txd[0]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(ind_txd[0]),
        .O(\ind_txd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4004)) 
    \ind_txd[1]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(ind_txd[0]),
        .I3(ind_txd[1]),
        .O(\ind_txd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44400004)) 
    \ind_txd[2]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[2]),
        .I2(ind_txd[1]),
        .I3(ind_txd[0]),
        .I4(ind_txd[2]),
        .O(\ind_txd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444444445)) 
    \ind_txd[3]_i_1 
       (.I0(Current_State[3]),
        .I1(Current_State[0]),
        .I2(ind_txd[2]),
        .I3(ind_txd[0]),
        .I4(ind_txd[1]),
        .I5(ind_txd[3]),
        .O(\ind_txd[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ind_txd_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ind_txd),
        .D(\ind_txd[0]_i_1_n_0 ),
        .Q(ind_txd[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ind_txd_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ind_txd),
        .D(\ind_txd[1]_i_1_n_0 ),
        .Q(ind_txd[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ind_txd_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ind_txd),
        .D(\ind_txd[2]_i_1_n_0 ),
        .Q(ind_txd[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ind_txd_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_ind_txd),
        .D(\ind_txd[3]_i_1_n_0 ),
        .Q(ind_txd[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ledr_OBUF[0]_inst_i_1 
       (.I0(txd_obs_OBUF),
        .O(ledr_OBUF));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(baud_time[0]),
        .DI(baud_time[4:1]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(baud_time[8:5]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(baud_time[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(baud_time[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(baud_time[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(baud_time[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(baud_time[12:9]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(baud_time[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(baud_time[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(baud_time[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(baud_time[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,baud_time[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(baud_time[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(baud_time[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(baud_time[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(baud_time[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(baud_time[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(baud_time[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(baud_time[1]),
        .O(minusOp_carry_i_4_n_0));
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(tempo[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED [3],\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .S({1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(burst[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__2_CO_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__2_O_UNCONNECTED [3],\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .S({1'b0,i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    sw9_sync_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sw_IBUF),
        .Q(sw9_sync),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \tempo[0]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(Current_State[0]),
        .I3(tempo[0]),
        .O(\tempo[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[10]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__1_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[11]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__1_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[12]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__1_n_4 ),
        .I3(Current_State[0]),
        .O(\tempo[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[13]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__2_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[14]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__2_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[15]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__2_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[16]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__2_n_4 ),
        .I3(Current_State[0]),
        .O(\tempo[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[17]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__3_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[18]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__3_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[19]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__3_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[1]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[20]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__3_n_4 ),
        .I3(Current_State[0]),
        .O(\tempo[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[21]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__4_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[22]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__4_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[23]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__4_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[2]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[3]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[4]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry_n_4 ),
        .I3(Current_State[0]),
        .O(\tempo[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[5]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__0_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[6]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__0_n_6 ),
        .I3(Current_State[0]),
        .O(\tempo[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[7]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__0_n_5 ),
        .I3(Current_State[0]),
        .O(\tempo[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[8]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__0_n_4 ),
        .I3(Current_State[0]),
        .O(\tempo[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \tempo[9]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[1]),
        .I2(\plusOp_inferred__0/i__carry__1_n_7 ),
        .I3(Current_State[0]),
        .O(\tempo[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[0]_i_1_n_0 ),
        .Q(tempo[0]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[10]_i_1_n_0 ),
        .Q(tempo[10]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[11]_i_1_n_0 ),
        .Q(tempo[11]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[12]_i_1_n_0 ),
        .Q(tempo[12]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[13]_i_1_n_0 ),
        .Q(tempo[13]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[14]_i_1_n_0 ),
        .Q(tempo[14]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[15]_i_1_n_0 ),
        .Q(tempo[15]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[16]_i_1_n_0 ),
        .Q(tempo[16]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[17]_i_1_n_0 ),
        .Q(tempo[17]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[18]_i_1_n_0 ),
        .Q(tempo[18]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[19]_i_1_n_0 ),
        .Q(tempo[19]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[1]_i_1_n_0 ),
        .Q(tempo[1]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[20]_i_1_n_0 ),
        .Q(tempo[20]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[21]_i_1_n_0 ),
        .Q(tempo[21]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[22]_i_1_n_0 ),
        .Q(tempo[22]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[23]_i_1_n_0 ),
        .Q(tempo[23]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[2]_i_1_n_0 ),
        .Q(tempo[2]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[3]_i_1_n_0 ),
        .Q(tempo[3]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[4]_i_1_n_0 ),
        .Q(tempo[4]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[5]_i_1_n_0 ),
        .Q(tempo[5]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[6]_i_1_n_0 ),
        .Q(tempo[6]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[7]_i_1_n_0 ),
        .Q(tempo[7]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[8]_i_1_n_0 ),
        .Q(tempo[8]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tempo_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(next_tempo),
        .D(\tempo[9]_i_1_n_0 ),
        .Q(tempo[9]),
        .R(\FSM_sequential_Current_State[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    txd_i_1
       (.I0(\/i___5_n_0 ),
        .I1(next_txd),
        .I2(txd_obs_OBUF),
        .O(txd_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    txd_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(txd_i_1_n_0),
        .Q(txd_obs_OBUF),
        .S(\FSM_sequential_Current_State[3]_i_1_n_0 ));
endmodule

module recep_rs232
   (ledr_OBUF,
    wea,
    Q,
    SR,
    txd_out_OBUF,
    Clk_IBUF_BUFG,
    sw_IBUF);
  output [1:0]ledr_OBUF;
  output [0:0]wea;
  output [7:0]Q;
  input [0:0]SR;
  input txd_out_OBUF;
  input Clk_IBUF_BUFG;
  input [0:0]sw_IBUF;

  wire Clk_IBUF_BUFG;
  wire [2:0]Current_State;
  wire \Current_State[0]_i_1_n_0 ;
  wire \Current_State[1]_i_1_n_0 ;
  wire \Current_State[2]_i_1_n_0 ;
  wire \Current_State[2]_i_2_n_0 ;
  wire [15:0]Next_Tap_Number;
  wire Next_Tap_Number0_carry__0_i_1_n_0;
  wire Next_Tap_Number0_carry__0_i_2_n_0;
  wire Next_Tap_Number0_carry__0_i_3_n_0;
  wire Next_Tap_Number0_carry__0_i_4_n_0;
  wire Next_Tap_Number0_carry__0_n_0;
  wire Next_Tap_Number0_carry__0_n_1;
  wire Next_Tap_Number0_carry__0_n_2;
  wire Next_Tap_Number0_carry__0_n_3;
  wire Next_Tap_Number0_carry__1_i_1_n_0;
  wire Next_Tap_Number0_carry__1_i_2_n_0;
  wire Next_Tap_Number0_carry__1_i_3_n_0;
  wire Next_Tap_Number0_carry__1_i_4_n_0;
  wire Next_Tap_Number0_carry__1_n_0;
  wire Next_Tap_Number0_carry__1_n_1;
  wire Next_Tap_Number0_carry__1_n_2;
  wire Next_Tap_Number0_carry__1_n_3;
  wire Next_Tap_Number0_carry__2_i_1_n_0;
  wire Next_Tap_Number0_carry__2_i_2_n_0;
  wire Next_Tap_Number0_carry__2_i_3_n_0;
  wire Next_Tap_Number0_carry__2_n_2;
  wire Next_Tap_Number0_carry__2_n_3;
  wire Next_Tap_Number0_carry_i_1_n_0;
  wire Next_Tap_Number0_carry_i_2_n_0;
  wire Next_Tap_Number0_carry_i_3_n_0;
  wire Next_Tap_Number0_carry_i_4_n_0;
  wire Next_Tap_Number0_carry_n_0;
  wire Next_Tap_Number0_carry_n_1;
  wire Next_Tap_Number0_carry_n_2;
  wire Next_Tap_Number0_carry_n_3;
  wire [3:0]Next_ind_w1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [15:0]Tap_Number;
  wire \Tap_Number[15]_i_1_n_0 ;
  wire \Tap_Number[15]_i_3_n_0 ;
  wire \Tap_Number[15]_i_4_n_0 ;
  wire \Tap_Number[15]_i_5_n_0 ;
  wire \Tap_Number[15]_i_6_n_0 ;
  wire \Tap_Number[2]_i_1_n_0 ;
  wire \Tap_Number[5]_i_1_n_0 ;
  wire \Tap_Number[6]_i_1_n_0 ;
  wire \Tap_Number[8]_i_1_n_0 ;
  wire \Tap_Number[9]_i_1_n_0 ;
  wire [15:1]data0;
  wire data_ld_i_1_n_0;
  wire ind_w10;
  wire \ind_w1[1]_i_1_n_0 ;
  wire \ind_w1_reg_n_0_[0] ;
  wire \ind_w1_reg_n_0_[1] ;
  wire \ind_w1_reg_n_0_[2] ;
  wire \ind_w1_reg_n_0_[3] ;
  wire [1:0]ledr_OBUF;
  wire \ledr_OBUF[1]_inst_i_2_n_0 ;
  wire [10:1]nxt_w10_out;
  wire [2:2]p_0_in;
  wire rxd_syn;
  wire [0:0]sw_IBUF;
  wire txd_out_OBUF;
  wire [10:1]w1;
  wire [10:10]w2;
  wire \w2[10]_i_1_n_0 ;
  wire [0:0]wea;
  wire [3:2]NLW_Next_Tap_Number0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_Next_Tap_Number0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h0300A1AD)) 
    \Current_State[0]_i_1 
       (.I0(rxd_syn),
        .I1(Current_State[1]),
        .I2(Current_State[2]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .I4(Current_State[0]),
        .O(\Current_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h22220030)) 
    \Current_State[1]_i_1 
       (.I0(\Current_State[2]_i_2_n_0 ),
        .I1(Current_State[2]),
        .I2(Current_State[0]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .I4(Current_State[1]),
        .O(\Current_State[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F22)) 
    \Current_State[2]_i_1 
       (.I0(Current_State[1]),
        .I1(\Current_State[2]_i_2_n_0 ),
        .I2(Current_State[0]),
        .I3(Current_State[2]),
        .O(\Current_State[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFFFFF)) 
    \Current_State[2]_i_2 
       (.I0(\ind_w1_reg_n_0_[0] ),
        .I1(\ind_w1_reg_n_0_[2] ),
        .I2(\ind_w1_reg_n_0_[3] ),
        .I3(\ind_w1_reg_n_0_[1] ),
        .I4(Current_State[0]),
        .O(\Current_State[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Current_State_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Current_State[0]_i_1_n_0 ),
        .Q(Current_State[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Current_State_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Current_State[1]_i_1_n_0 ),
        .Q(Current_State[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Current_State_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\Current_State[2]_i_1_n_0 ),
        .Q(Current_State[2]),
        .R(SR));
  CARRY4 Next_Tap_Number0_carry
       (.CI(1'b0),
        .CO({Next_Tap_Number0_carry_n_0,Next_Tap_Number0_carry_n_1,Next_Tap_Number0_carry_n_2,Next_Tap_Number0_carry_n_3}),
        .CYINIT(Tap_Number[0]),
        .DI(Tap_Number[4:1]),
        .O(data0[4:1]),
        .S({Next_Tap_Number0_carry_i_1_n_0,Next_Tap_Number0_carry_i_2_n_0,Next_Tap_Number0_carry_i_3_n_0,Next_Tap_Number0_carry_i_4_n_0}));
  CARRY4 Next_Tap_Number0_carry__0
       (.CI(Next_Tap_Number0_carry_n_0),
        .CO({Next_Tap_Number0_carry__0_n_0,Next_Tap_Number0_carry__0_n_1,Next_Tap_Number0_carry__0_n_2,Next_Tap_Number0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Tap_Number[8:5]),
        .O(data0[8:5]),
        .S({Next_Tap_Number0_carry__0_i_1_n_0,Next_Tap_Number0_carry__0_i_2_n_0,Next_Tap_Number0_carry__0_i_3_n_0,Next_Tap_Number0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__0_i_1
       (.I0(Tap_Number[8]),
        .O(Next_Tap_Number0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__0_i_2
       (.I0(Tap_Number[7]),
        .O(Next_Tap_Number0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__0_i_3
       (.I0(Tap_Number[6]),
        .O(Next_Tap_Number0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__0_i_4
       (.I0(Tap_Number[5]),
        .O(Next_Tap_Number0_carry__0_i_4_n_0));
  CARRY4 Next_Tap_Number0_carry__1
       (.CI(Next_Tap_Number0_carry__0_n_0),
        .CO({Next_Tap_Number0_carry__1_n_0,Next_Tap_Number0_carry__1_n_1,Next_Tap_Number0_carry__1_n_2,Next_Tap_Number0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Tap_Number[12:9]),
        .O(data0[12:9]),
        .S({Next_Tap_Number0_carry__1_i_1_n_0,Next_Tap_Number0_carry__1_i_2_n_0,Next_Tap_Number0_carry__1_i_3_n_0,Next_Tap_Number0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__1_i_1
       (.I0(Tap_Number[12]),
        .O(Next_Tap_Number0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__1_i_2
       (.I0(Tap_Number[11]),
        .O(Next_Tap_Number0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__1_i_3
       (.I0(Tap_Number[10]),
        .O(Next_Tap_Number0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__1_i_4
       (.I0(Tap_Number[9]),
        .O(Next_Tap_Number0_carry__1_i_4_n_0));
  CARRY4 Next_Tap_Number0_carry__2
       (.CI(Next_Tap_Number0_carry__1_n_0),
        .CO({NLW_Next_Tap_Number0_carry__2_CO_UNCONNECTED[3:2],Next_Tap_Number0_carry__2_n_2,Next_Tap_Number0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Tap_Number[14:13]}),
        .O({NLW_Next_Tap_Number0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,Next_Tap_Number0_carry__2_i_1_n_0,Next_Tap_Number0_carry__2_i_2_n_0,Next_Tap_Number0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__2_i_1
       (.I0(Tap_Number[15]),
        .O(Next_Tap_Number0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__2_i_2
       (.I0(Tap_Number[14]),
        .O(Next_Tap_Number0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry__2_i_3
       (.I0(Tap_Number[13]),
        .O(Next_Tap_Number0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry_i_1
       (.I0(Tap_Number[4]),
        .O(Next_Tap_Number0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry_i_2
       (.I0(Tap_Number[3]),
        .O(Next_Tap_Number0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry_i_3
       (.I0(Tap_Number[2]),
        .O(Next_Tap_Number0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    Next_Tap_Number0_carry_i_4
       (.I0(Tap_Number[1]),
        .O(Next_Tap_Number0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \Tap_Number[0]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(Current_State[1]),
        .I2(Current_State[0]),
        .I3(Tap_Number[0]),
        .O(Next_Tap_Number[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[10]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[10]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[11]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[11]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[12]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[12]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[13]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[13]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[14]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[14]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[14]));
  LUT4 #(
    .INIT(16'h003D)) 
    \Tap_Number[15]_i_1 
       (.I0(rxd_syn),
        .I1(Current_State[0]),
        .I2(Current_State[1]),
        .I3(Current_State[2]),
        .O(\Tap_Number[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[15]_i_2 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[15]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \Tap_Number[15]_i_3 
       (.I0(\Tap_Number[15]_i_4_n_0 ),
        .I1(Tap_Number[11]),
        .I2(Tap_Number[2]),
        .I3(Tap_Number[10]),
        .I4(Tap_Number[1]),
        .I5(\Tap_Number[15]_i_5_n_0 ),
        .O(\Tap_Number[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Tap_Number[15]_i_4 
       (.I0(Tap_Number[4]),
        .I1(Tap_Number[5]),
        .I2(Tap_Number[7]),
        .I3(Tap_Number[6]),
        .O(\Tap_Number[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Tap_Number[15]_i_5 
       (.I0(Tap_Number[3]),
        .I1(Tap_Number[8]),
        .I2(Tap_Number[0]),
        .I3(Tap_Number[9]),
        .I4(\Tap_Number[15]_i_6_n_0 ),
        .O(\Tap_Number[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Tap_Number[15]_i_6 
       (.I0(Tap_Number[14]),
        .I1(Tap_Number[12]),
        .I2(Tap_Number[15]),
        .I3(Tap_Number[13]),
        .O(\Tap_Number[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF111)) 
    \Tap_Number[1]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(\Tap_Number[15]_i_3_n_0 ),
        .I3(data0[1]),
        .O(Next_Tap_Number[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \Tap_Number[2]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(data0[2]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(\Tap_Number[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \Tap_Number[3]_i_1 
       (.I0(\Tap_Number[15]_i_3_n_0 ),
        .I1(data0[3]),
        .I2(Current_State[1]),
        .I3(Current_State[0]),
        .O(Next_Tap_Number[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF111)) 
    \Tap_Number[4]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(\Tap_Number[15]_i_3_n_0 ),
        .I3(data0[4]),
        .O(Next_Tap_Number[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    \Tap_Number[5]_i_1 
       (.I0(Current_State[1]),
        .I1(Current_State[0]),
        .I2(data0[5]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(\Tap_Number[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \Tap_Number[6]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(data0[6]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(\Tap_Number[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF111)) 
    \Tap_Number[7]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(\Tap_Number[15]_i_3_n_0 ),
        .I3(data0[7]),
        .O(Next_Tap_Number[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    \Tap_Number[8]_i_1 
       (.I0(Current_State[1]),
        .I1(Current_State[0]),
        .I2(data0[8]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(\Tap_Number[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \Tap_Number[9]_i_1 
       (.I0(Current_State[0]),
        .I1(Current_State[1]),
        .I2(data0[9]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(\Tap_Number[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[0]),
        .Q(Tap_Number[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[10]),
        .Q(Tap_Number[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[11]),
        .Q(Tap_Number[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[12]),
        .Q(Tap_Number[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[13]),
        .Q(Tap_Number[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[14]),
        .Q(Tap_Number[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[15]),
        .Q(Tap_Number[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[1]),
        .Q(Tap_Number[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(\Tap_Number[2]_i_1_n_0 ),
        .Q(Tap_Number[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[3]),
        .Q(Tap_Number[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[4]),
        .Q(Tap_Number[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(\Tap_Number[5]_i_1_n_0 ),
        .Q(Tap_Number[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(\Tap_Number[6]_i_1_n_0 ),
        .Q(Tap_Number[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(Next_Tap_Number[7]),
        .Q(Tap_Number[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(\Tap_Number[8]_i_1_n_0 ),
        .Q(Tap_Number[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Tap_Number_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\Tap_Number[15]_i_1_n_0 ),
        .D(\Tap_Number[9]_i_1_n_0 ),
        .Q(Tap_Number[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    data_ld_i_1
       (.I0(Current_State[1]),
        .I1(Current_State[0]),
        .I2(Current_State[2]),
        .I3(ledr_OBUF[1]),
        .O(data_ld_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_ld_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data_ld_i_1_n_0),
        .Q(ledr_OBUF[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ind_w1[0]_i_1 
       (.I0(Current_State[1]),
        .I1(\ind_w1_reg_n_0_[0] ),
        .O(Next_ind_w1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \ind_w1[1]_i_1 
       (.I0(\ind_w1_reg_n_0_[1] ),
        .I1(\ind_w1_reg_n_0_[0] ),
        .I2(Current_State[1]),
        .O(\ind_w1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \ind_w1[2]_i_1 
       (.I0(Current_State[1]),
        .I1(\ind_w1_reg_n_0_[0] ),
        .I2(\ind_w1_reg_n_0_[1] ),
        .I3(\ind_w1_reg_n_0_[2] ),
        .O(Next_ind_w1[2]));
  LUT5 #(
    .INIT(32'h80808082)) 
    \ind_w1[3]_i_1 
       (.I0(\Current_State[2]_i_2_n_0 ),
        .I1(Current_State[0]),
        .I2(Current_State[1]),
        .I3(Current_State[2]),
        .I4(rxd_syn),
        .O(ind_w10));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \ind_w1[3]_i_2 
       (.I0(Current_State[1]),
        .I1(\ind_w1_reg_n_0_[1] ),
        .I2(\ind_w1_reg_n_0_[0] ),
        .I3(\ind_w1_reg_n_0_[2] ),
        .I4(\ind_w1_reg_n_0_[3] ),
        .O(Next_ind_w1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \ind_w1_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(ind_w10),
        .D(Next_ind_w1[0]),
        .Q(\ind_w1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ind_w1_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(ind_w10),
        .D(\ind_w1[1]_i_1_n_0 ),
        .Q(\ind_w1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ind_w1_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(ind_w10),
        .D(Next_ind_w1[2]),
        .Q(\ind_w1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ind_w1_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(ind_w10),
        .D(Next_ind_w1[3]),
        .Q(\ind_w1_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \ledr_OBUF[1]_inst_i_1 
       (.I0(w2),
        .I1(\ledr_OBUF[1]_inst_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[0]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(ledr_OBUF[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \ledr_OBUF[1]_inst_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\ledr_OBUF[1]_inst_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    rxd_syn_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(txd_out_OBUF),
        .Q(rxd_syn),
        .S(SR));
  LUT4 #(
    .INIT(16'h88B8)) 
    \w1[10]_i_1 
       (.I0(Current_State[2]),
        .I1(Current_State[0]),
        .I2(Current_State[1]),
        .I3(\Tap_Number[15]_i_3_n_0 ),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[10]_i_2 
       (.I0(rxd_syn),
        .I1(Current_State[2]),
        .O(nxt_w10_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[1]_i_1 
       (.I0(w1[2]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[2]_i_1 
       (.I0(w1[3]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[3]_i_1 
       (.I0(w1[4]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[4]_i_1 
       (.I0(w1[5]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[5]_i_1 
       (.I0(w1[6]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[6]_i_1 
       (.I0(w1[7]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[7]_i_1 
       (.I0(w1[8]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[8]_i_1 
       (.I0(w1[9]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \w1[9]_i_1 
       (.I0(w1[10]),
        .I1(Current_State[2]),
        .O(nxt_w10_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[10]),
        .Q(w1[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[1]),
        .Q(w1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[2]),
        .Q(w1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[3]),
        .Q(w1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[4]),
        .Q(w1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[5]),
        .Q(w1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[6]),
        .Q(w1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[7]),
        .Q(w1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[8]),
        .Q(w1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w1_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(nxt_w10_out[9]),
        .Q(w1[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \w2[10]_i_1 
       (.I0(rxd_syn),
        .I1(Current_State[2]),
        .I2(Current_State[0]),
        .O(\w2[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[9]),
        .Q(w2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \w2_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\w2[10]_i_1_n_0 ),
        .D(w1[8]),
        .Q(Q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wren_obs_OBUF_inst_i_1
       (.I0(sw_IBUF),
        .I1(ledr_OBUF[1]),
        .O(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module bram_16x8__blk_mem_gen_generic_cstr
   (doutb,
    clkb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clkb;
  input clka;
  input [0:0]wea;
  input [3:0]addrb;
  input [3:0]addra;
  input [7:0]dina;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  bram_16x8__blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module bram_16x8__blk_mem_gen_prim_width
   (doutb,
    clkb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clkb;
  input clka;
  input [0:0]wea;
  input [3:0]addrb;
  input [3:0]addra;
  input [7:0]dina;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  bram_16x8__blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module bram_16x8__blk_mem_gen_prim_wrapper_init
   (doutb,
    clkb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clkb;
  input clka;
  input [0:0]wea;
  input [3:0]addrb;
  input [3:0]addra;
  input [7:0]dina;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0100010301000102010001010100010001000003010000030100000201000001),
    .INIT_01(256'h0100030301000302010003010100030001000203010002020100020101000200),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ,doutb[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ,doutb[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ,doutb[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ,doutb[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(1'b1),
        .ENBWREN(wea),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module bram_16x8__blk_mem_gen_top
   (doutb,
    clkb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clkb;
  input clka;
  input [0:0]wea;
  input [3:0]addrb;
  input [3:0]addra;
  input [7:0]dina;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  bram_16x8__blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "4" *) (* C_ADDRB_WIDTH = "4" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "bram_16x8.mem" *) 
(* C_INIT_FILE_NAME = "bram_16x8.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16" *) (* C_READ_DEPTH_B = "16" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "16" *) (* C_WRITE_DEPTH_B = "16" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_6" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bram_16x8__blk_mem_gen_v8_3_6
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [3:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [3:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bram_16x8__blk_mem_gen_v8_3_6_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_6_synth" *) 
module bram_16x8__blk_mem_gen_v8_3_6_synth
   (doutb,
    clkb,
    clka,
    wea,
    addrb,
    addra,
    dina);
  output [7:0]doutb;
  input clkb;
  input clka;
  input [0:0]wea;
  input [3:0]addrb;
  input [3:0]addra;
  input [7:0]dina;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;

  bram_16x8__blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
