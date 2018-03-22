library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity program_memory is

  port (
    rst         : in  std_logic;                        -- reset
    pc          : in  std_logic_vector(31 downto 0);   -- ligne à lire
    instruction : out std_logic_vector(31 downto 0));  -- code binaire de l'instruction

end entity program_memory;


architecture A of program_memory is

  type   B32 is array (0 to 1024) of std_logic_vector(31 downto 0);  -- mémoire interne
  signal memory : B32;                  -- mémoire

begin  -- architecture A

  -- purpose: renvoie la bonne ligne d'instruction
  -- type   : combinational
  -- inputs : pc,rst
  -- outputs: instruction

  comb : process (pc, rst) is
  begin  -- process comb
    if rst = '0' then
      B32         <= (other => '0');
      instruction <= (other => '0');
    else
      instruction <= memory(to_integer(unsigned(pc)));
    end if;

  end process comb;

  


end architecture A;
