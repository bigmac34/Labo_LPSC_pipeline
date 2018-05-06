// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Apr 17 19:28:09 2018
// Host        : MACCHI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Jeremie/Dropbox/Master/Cours/Semestre2/LPSC/Labo/Labo/mse_mandelbrot_no_bram/mse_mandelbrot.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "35" *) (* C_REG_CONFIG = "00000000000000000000000000000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [35:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_15_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nBlnHi3Kp5ztG6vZNdMONLkWpVVpg2r7ZP2rdZEfioM4XUkRew1oDSrAozd60ivTx8PLiOPPRAJo
pOZd0llK5g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kcs1MQe5BgqnN7tbrZMcEiZZSCl175bCFWu5jwqWj4RFDG/n9GjuiwAuZ9v2vQZcAxVE3h5w+TBc
Bk1lc9zc7T3tnbm4qpXepckPAqiTqMURQNO28XRRz5BSiTktDkY/dUGVSA0qxTdPGlkYZSpuFpl6
PjievZtLxEtp4cSEwJE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aG1w9h5Ae0N98iRQuCMUHQUwBA2KqP2Fbb/SCJOtosbKahOePVIWiIrkhbLMsr1/omYs/Q6fEj2G
uYHIEBLZLRANmjJt9kQu/jIzWAf0nK3OJkUCAMefyflw5y403PkpWIAHXqlArlaCVW2gWxzVxt9G
js0j3l7Y2dpahAMg2LgLgWyMj2rS0kjr+fbTwgci9As5Ndo6CDyXo7EcixOTvkWvqwxJaYFbtcFF
K1j0WC1jYCLSiEJ2ZB5/ODVnSmn3AWSksydgQ3iYMKpYPNlAwFN7t7HacZ95HxO8MGoNyjnDje35
EzrNZrAA4vUP8Y6En1JgkF6RLt8PJJfLc+wq+g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BYWKn+AL7Gth8aEXuzL+rpOrNP6Ug8Hc9TpmOLZLrPZ4boPFPd89qpRHOY6mfox3M09mZK4TuSx+
5DykxgtH7Gu2DHCqtg3Tg7eFTAzurR/EqXoPhuHQIzs5Y1T/5WlIb0c4l9CNWdc5TBVfbmKR+x4N
A259tw/6q69OtmAqFiB+p9GY8lyjNDWu07DJlxI2l6wSRYy8YqD7K1OrLRXxY6gaTqDWDXlcO+ia
T5/harPHjTiNAFO8U6YTfRQtNJUrOnNfSAnAtjrlegYGNcEl6u4sqYE/X/Pajk2n+1+KvJ6PR8L9
bdrCByV81f1z88nc1Twl6LUe54VQdfe5W+EOpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iJnLIMkUEl7Btn7IVUeqK6xbyk9c7fsISctkfj2c6osS1GvgHXWHkJPpNPHTeIth7zUvkUlYB/Jd
M5kNK3leJJj5TaqOLOh+cyWqEGY64EruHImVJasbLaVn3LUh67wEEMFoKhP9/KjqLsL3oFrKnU4i
JzYtVgZoCfaHBaIyRC6wms7z/YKP2Khya0dzmYHMmbdm9k2rL27fVLJcCEMSO1Dsz2D/qXnCFI8T
NHnM3Fv/xF2jOhtDIDqWGakvXk7l+ddg95MJ+5A578jqVX81M0WJwbHlaIJIG5uwIzTI46+pYw0Z
4sgDMkrl/aXSFYB5PU2L4hhVeq7e6c0dqUOVSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sdiBszQspScY+UIwuaohSbs1PAZL6bemuOZlFLGklUXNsz7r1265PlclnSy9m0ilIWxY0HJkGEtl
Rs/zfRlF9Ag/CEiBQ4lStxiXa4cbOvNwkp9j1BXCYCAbMsw83x+ZvpyoQTXRfcBBvSAbtpFDJ7ar
qlJbO6erRjpDP373GIY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUV1ae8Aw6l0UtyVDuKmrMQwdVI8vrJTYSKwNJ+/x3fs7qy5B2fVzNE8tFRcie7NykwBpJV9lQNN
iNNcReVBjS/oh7txKer0RVLuw2jQCeQBSixWXwdIra9CsrIF5V2GUuY3dDh9ofaqsgbKSlDNLzzm
0lHhjAw4Nbk9kwoo5NP9xZYaLPCNo4Qqi0A9Px++Zu3V7DcbPDDDQnNEzgQhcN8ilscDyGVOeiHu
/xJbo1lLkpyrDciztvHYqwj9O/kSyF1PikDg8xEaOx1QQVvaz7r51DlXlPCpqCUyFGEeiIrPCMHf
8rf7t9DpvBEVPF3eaofCDfiW9vWmbfgffwtMYg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WKfMpa78RPVCm1cCt5jncqD4M4UBlgR+s4lFavNgBtSiKOvM2TuSfPiv/lM016Avo1xPuP042l+C
BbT2M3K++ndlbsdVSZtgFyC1kiEVdRxRiMiA6jwaEYvo7DoOeXaV5TteBZDBDRWfBBFjOu1WyJOi
2C9peEVrbx0gGU0nYWfgsB8obZUQ9/GpjtQrH4K13+pukC4py1KgXAwJPw8u7oQ9u+P5AOCW9GSO
sxnf5OGrZt3UE3Q2ZEfZp6EurTf+qhc2Y/t+qXBy/9WcmKKA5S2ayNN0hUbyRpwLqFthftXw9DgU
NIrKTFxvAJ2WPug3gXXu49VhOkEqoA+cKI5usg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2bEHSVzEEqc2bQVaWj8U9YQ2M2fsjkw5CrXh39YbwXc2VKIJP+0Rmuo0Cz/mgIwrJPdMxMkfaTlk
7H1l3aOSrk4oD06A+zLU9GmmED83HRrqlLvtC/srrJWIPCfS0a7H7OAe90Y6jY37zXkXWRq4UKR7
zHkmUqlRTgVvX++JMFGcrk191Ucxe3T++BQDCLJjAEyKiq+E8N9l67TOOBbVRTfj5m972iSinf9B
+P5XvfxNRMrwN9vTr+tvWY9s1cet6ev51qWULD19O0o5AuOpHPxn48WwtORAwBA54UgOz/nuo2aq
PCUUL2mW7/ymknsDhGeItEBxRV6192+K7g7DMw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9136)
`pragma protect data_block
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
Or7AylUlYwAPfmp3qU7MNg==
`pragma protect end_protected
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
