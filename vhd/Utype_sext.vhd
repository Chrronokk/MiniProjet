library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity U_type_sext is
  
  port (
    input : in  std_logic_vector(31 downto 0)   --code de l'instructionen entrée
    ouput : out std_logic_vector(31 downt)o 0); -- immédiat

end entity U_type_sext;


architecture A of U_type_sext is

begin  -- architecture A

  -- purpose: récupère l'immediat et le renvoie sur 32 bit
  -- type   : combinational
  -- inputs : input
  -- outputs: output
  combi: process (input) is
  begin  -- process combi
    output <= (others => '0');
    ouput(31 downto 12) <= input(31 downto 12);
    end process combi;

end architecture A;
