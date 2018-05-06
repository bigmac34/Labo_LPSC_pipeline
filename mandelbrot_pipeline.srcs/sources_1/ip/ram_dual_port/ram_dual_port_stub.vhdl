-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Apr 17 17:52:31 2018
-- Host        : MACCHI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Jeremie/Dropbox/Master/Cours/Semestre2/LPSC/Labo/Labo/mse_mandelbrot_no_bram/mse_mandelbrot.srcs/sources_1/ip/ram_dual_port/ram_dual_port_stub.vhdl
-- Design      : ram_dual_port
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram_dual_port is
  Port ( 
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 19 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end ram_dual_port;

architecture stub of ram_dual_port is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,wea[0:0],addra[19:0],dina[6:0],clkb,addrb[19:0],doutb[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_1,Vivado 2017.4";
begin
end;
