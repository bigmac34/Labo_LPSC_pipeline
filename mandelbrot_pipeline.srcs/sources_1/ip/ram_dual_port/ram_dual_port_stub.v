// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Apr 17 17:52:31 2018
// Host        : MACCHI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Jeremie/Dropbox/Master/Cours/Semestre2/LPSC/Labo/Labo/mse_mandelbrot_no_bram/mse_mandelbrot.srcs/sources_1/ip/ram_dual_port/ram_dual_port_stub.v
// Design      : ram_dual_port
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module ram_dual_port(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[19:0],dina[6:0],clkb,addrb[19:0],doutb[6:0]" */;
  input clka;
  input [0:0]wea;
  input [19:0]addra;
  input [6:0]dina;
  input clkb;
  input [19:0]addrb;
  output [6:0]doutb;
endmodule
