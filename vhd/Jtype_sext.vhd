library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Jtype_sext is
  
  port (
    input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
    output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended

end entity Jtype_sext;


architecture A of Jtype_sext is

begin  -- architecture A

  -- purpose: récupère l'immediat et le renvoie sur 32 bit en sign extended
  -- type   : combinational
  -- inputs : input
  -- outputs: output
  combi : process (input) is
  begin  -- process combi
    output              <= (others => input(31));
    output(20 downto 1) <= input(31) & input(19 downto 12) & input(20) & input(30 downto 21);
  end process combi;

end architecture A;
