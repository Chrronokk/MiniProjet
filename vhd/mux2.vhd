library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux2 is

  port (
    a, b : in  std_logic_vector(31 downto 0);   -- entrées
    sel  : in  std_logic;                       -- selection
    s    : out std_logic_vector(31 downto 0));  -- sortie

end entity mux2;

architecture A of mux2 is

  s <= (others => '0');

begin  -- architecture A

  combi : process (a, b, sel) is
  begin  -- process combi
    case sel is
      when '0' =>
        s <=a;
      when '1' =>
        s <=b;
    end case;
  end process combi;

end architecture A;
