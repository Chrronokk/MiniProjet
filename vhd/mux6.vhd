library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux6 is

  port (
    a, b, c, d, e, f : in  std_logic_vector(31 downto 0);   -- entrées
    sel              : in  std_logic_vector(2 downto 0);    -- selection
    s                : out std_logic_vector(31 downto 0));  -- sortie

end entity mux6;

architecture A of mux6 is

 

begin  -- architecture A 

  combi : process (a, b, c, d, e, f, sel) is
  begin  -- process combi

 s <= (others => '0');
    case sel is
      when "000" =>
        s <= a;
      when "001" =>
        s <= b;
      when "010" =>
        s <= c;
      when "011" =>
        s <= d;
      when "100" =>
        s <= e;
      when others =>
        s <= f;
    end case;
  end process combi;




end architecture A;
