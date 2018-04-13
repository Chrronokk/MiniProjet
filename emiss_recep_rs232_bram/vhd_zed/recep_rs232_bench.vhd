-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/05/2018 11:04:35"
                                                            
-- Vhdl Test Bench template for design  :  recep_rs232
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY recep_rs232_vhd_tst IS
END recep_rs232_vhd_tst;
ARCHITECTURE recep_rs232_arch OF recep_rs232_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bit_load : STD_LOGIC;
SIGNAL Clk : STD_LOGIC:='0';
SIGNAL data_load : STD_LOGIC;
SIGNAL data_mem : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL err_parite : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL rxd : STD_LOGIC;
-- SIGNAL wraddress_bram : unsigned(3 DOWNTO 0);
COMPONENT recep_rs232
	PORT (
	bit_load : OUT STD_LOGIC;
	Clk : IN STD_LOGIC;
	data_load : OUT STD_LOGIC;
	data_mem : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	err_parite : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	rxd : IN STD_LOGIC
--	wraddress_bram : OUT unsigned(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : recep_rs232
	PORT MAP (
-- list connections between master ports and signals
	bit_load => bit_load,
	Clk => Clk,
	data_load => data_load,
	data_mem => data_mem,
	err_parite => err_parite,
	rst => rst,
	rxd => rxd
--	wraddress_bram => wraddress_bram
	);

CLK <= not CLK after 5ns;

rst <= '1' ,
		 '0' after 40ns;
		
rxd <=	'0' after 40 ns,   -- start bit 
 
							'1' after 8700 ns,   -- B0	niveau haut = '1' 
							'0' after 17700 ns,   -- B1
							'0' after 26100 ns,   -- B2
							'0' after 34800 ns,   -- B3
							'1' after 43500 ns,   -- B4
							'1' after 52200 ns,   -- B5
							'0' after 60900 ns,   -- B6
							'0' after 69600 ns,   -- B7
							'0' after 78300 ns,   -- stop bit	
							'1' after 87000 ns;   -- FIN
	

END recep_rs232_arch;
