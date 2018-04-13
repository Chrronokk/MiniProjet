library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux3 is

  port (
    a, b, c : in  std_logic_vector(31 downto 0);   -- entrées
    sel     : in  std_logic_vector(1 downto 0);    -- selection
    s       : out std_logic_vector(31 downto 0));  -- sortie

end entity mux3;

architecture A of mux3 is

  s <= (others => '0');

begin  -- architecture A 

  combi : process (a, b, c, sel) is
  begin  -- process combi
    case sel is
      when "00" =>
        s <= a;
      when "01" =>
        s <= b;
      when others =>
        s <= c;
    end case;
  end process combi;




end architecture A;
