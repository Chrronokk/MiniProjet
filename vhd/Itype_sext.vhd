library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Itype_sext is
  
  port (
    input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
    output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended

    end entity Itype_sext;


    architecture A of Itype_sext is

    begin  -- architecture A

      -- purpose: récupère l'immediat et le renvoie sur 32 bit en sign extended
      -- type   : combinational
      -- inputs : input
      -- outputs: output
      combi : process (input) is
      begin  -- process combi
        output              <= (others => input(31));
        output(31)          <= input(31);
        output(10 downto 0) <= input(30 downto 20);
      end process combi;

    end architecture A;
