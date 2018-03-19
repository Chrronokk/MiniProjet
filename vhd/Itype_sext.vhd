library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I_type_sext is
  
  port (
    input : in  std_logic_vector(31 downto 0)  --code de l'instructionen entrée
    ouput : out std_logic_vector(31 downt)o 0); -- immédiat en sign extended

end entity I_type_sext;


architecture A of I_type_sext is

begin  -- architecture A

  -- purpose: récupère l'immediat et le renvoie sur 32 bit en sign extended
  -- type   : combinational
  -- inputs : input
  -- outputs: output
  combi: process (input) is
  begin  -- process combi
    output <= (others => '0');
    output(31) <= input(31);
    ouput(10 downto 0) <= input(30 downto 20);
  end process combi;

end architecture A;
