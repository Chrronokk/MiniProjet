-------------------------------------------------------------------------------
-- Title      : Register File
-- Project    : 
-------------------------------------------------------------------------------
-- File       : register_file.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-08
-- Last update: 2018-04-26
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description:
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-08  1.0      antoine	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------

entity regFile is


  port (codeInstRead: in std_logic_vector (31 downto 0);
        codeInstWrite: in std_logic_vector (31 downto 0);
        
        reqRead1: in std_logic;
        reqRead2: in std_logic;
        reqWrite: in std_logic;
        
        dataIn: in std_logic_vector (31 downto 0);
        dataOut1: out std_logic_vector (31 downto 0);
        dataOut2: out std_logic_vector (31 downto 0);

        rst: in std_logic;
        clk: in std_logic);
  
end entity regFile;

architecture A of regFile is
constant zero : std_logic_vector(31 downto 0) := (others => '0');
  type B32_array is array (0 to 31) of std_logic_vector (31 downto 0);
  signal regArray : B32_array;

  signal RegSelRead1 : std_logic_vector (4 downto 0);
  signal RegSelRead2 : std_logic_vector (4 downto 0);
  signal RegSelWrite : std_logic_vector (4 downto 0);
  
begin  -- architecture A

  regSelRead1 <= codeInstRead (19 downto 15);
  regSelRead2 <= codeInstRead (24 downto 20);
  regSelWrite <= codeInstWrite (11 downto 7);

  -- purpose: Writes and reads into the regfile
  -- type   : sequential
  -- inputs : clk, rst
  -- outputs: 
  regIO: process (RegSelRead1, RegSelRead2, clk, regArray, rst,reqRead1,reqRead2) is
  begin  -- process regIO
    if rst = '0' then  -- asynchronous reset (active low)
      dataOut1 <= zero;
      dataOut2 <=  zero;
      for I in 0 to 31 loop
        regArray(I) <=zero;
      end loop;  -- I
      
    elsif clk'event and clk = '1' then  -- rising clock edge
      if reqWrite='1' and regSelWrite /= "00000" then 
        regArray(to_integer(unsigned(regSelWrite))) <= dataIn;
      else
        regArray(to_integer(unsigned(regSelWrite))) <=  regArray(to_integer(unsigned(regSelWrite)));
      end if;
    end if;

    if reqRead1='1' then
        dataOut1 <= regArray(to_integer(unsigned(RegSelRead1)));
      else
        dataOut1 <= zero;
      end if;
      if reqRead2='1' then
        dataOut2 <= regArray(to_integer(unsigned(RegSelRead2)));
      else
        dataOut2 <= zero;
      end if;
  end process regIO;

  
end architecture A;
