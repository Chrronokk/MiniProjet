library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity inc is

  port (
    pc  : in  std_logic_vector(31 downto 0);   -- pc n
    npc : out std_logic_vector(31 downto 0));  -- nouveau pc

end entity inc;

architecture A of inc is

  constant inc : std_logic_vector(31 downto 0) : "00000000000000000000000000000100";  -- inc

begin  -- architecture A

  combi : process (pc) is
  begin  -- process combi
    npc = pc + inc;
  end process combi;

end architecture A;
