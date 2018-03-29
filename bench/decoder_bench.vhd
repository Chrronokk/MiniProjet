-------------------------------------------------------------------------------
-- Title      : decoder bench
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder_bench.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-29
-- Last update: 2018-03-29
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Testfile for decoder
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-29  1.0      antoine	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_VHDL;
use lib_VHDL.all;

entity decoderBench is
end entity decoderBench;

architecture arch of decoderBench is

begin  -- architecture arch

  signal sigCode : std_logic_vector(31 downto 0);    -- Code de l'instruction

end architecture arch;
