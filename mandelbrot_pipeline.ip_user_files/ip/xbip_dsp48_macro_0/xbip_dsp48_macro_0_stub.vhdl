-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 17 19:28:09 2018
-- Host        : MACCHI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jeremie/Dropbox/Master/Cours/Semestre2/LPSC/Labo/Labo/mse_mandelbrot_no_bram/mse_mandelbrot.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.vhdl
-- Design      : xbip_dsp48_macro_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xbip_dsp48_macro_0 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 17 downto 0 );
    B : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );

end xbip_dsp48_macro_0;

architecture stub of xbip_dsp48_macro_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[17:0],B[17:0],P[35:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_15,Vivado 2017.4";
begin
end;
