library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_VHDL;
use lib_VHDL.all;

entity muxBench is
end muxBench;

architecture arch of muxBench is


  signal sigA, sigB, sigC, sigD, sigE, sigF : std_logic_vector(31 downto 0);
  signal sigSel                             : std_logic_vector(2 downto 0);
  signal sigS                               : std_logic_vector (31 downto 0);

  component mux
    port (
      a, b, c, d, e, f : in  std_logic_vector;
      s                : out std_logic_vector;
      sel              : in  std_logic_vector(2 downto 0))
  end component;
  
begin  -- arch

  mux : mux6
    port map (
      s   => sigS,
      a   => sigA,
      b   => sigB,
      c   => sigC,
      d   => sigC,
      e   => sigE,
      f   => sigF,
      sel => sigSel);

  simulation : process

  begin


    sigA <= x"AAAAA";
    sigB <= x"BBBBB";
    sigC <= x"CCCCC";
    sigD <= x"DDDDD";
    sigE <= x"EEEEE";
    sigF <= x"FFFFF";

    sigSel <= "000";
    after 20 ns;
    sigSel <= "001";
    after 20 ns;
    sigSel <= "010";
    after 20 ns;
    sigSel <= "011";
    after 20 ns;
    sigSel <= "100";
    after 20 ns;
    sigSel <= "101";
    after 20 ns;
    sigSel <= "000";
    after 20 ns;
    
  end simulation;


  
  

  
end arch;

