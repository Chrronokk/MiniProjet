library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.programme.all;


entity program_memory is

  port (
    rst         : in  std_logic;        -- reset
    pc          : in  std_logic_vector(3 downto 0);   -- ligne à lire
    instruction : out std_logic_vector(31 downto 0));  -- code binaire de l'instruction

end entity program_memory;


architecture A of program_memory is


  signal i      : integer := 0;         -- variable de boucle
begin  -- architecture A

  -- purpose: renvoie la bonne ligne d'instruction
  -- type   : combinational
  -- inputs : pc,rst
  -- outputs: instruction

  comb : process (pc, rst) is
  begin  -- process comb
    if rst = '0' then
      instruction <= (others => '0');
    else
      instruction <= prog(to_integer(unsigned(pc)));
    end if;

  end process comb;

  


end architecture A;
