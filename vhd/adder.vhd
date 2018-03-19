library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity adder is
  
  port (
    pc      : in  std_logic_vector(31 downto 0);   -- pc
    jump    : in  std_logic_vector(31 downto 0);   -- saut ou branchement
    next_pc : out std_logic_vector(31 downto 0));  -- nouvelle valeur de pc

end entity adder;

architecture A of adder is

begin  -- architecture A

  -- purpose: additionne les deux entrées
  -- type   : combinational
  -- inputs : pc,jump
  -- outputs: next_pc
  comb: process (pc,jump) is
  begin  -- process comb
    next_pc <=pc+jump;
  end process comb;

end architecture A;
