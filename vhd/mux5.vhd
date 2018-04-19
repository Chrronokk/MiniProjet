library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux5 is

  port (
    a, b, c, d, e : in  std_logic_vector(31 downto 0);   -- entrées
    sel           : in  std_logic_vector(2 downto 0);    -- selection
    s             : out std_logic_vector(31 downto 0));  -- sortie

end entity mux5;

architecture A of mux5 is

 

begin  -- architecture A 

  combi : process (a, b, c, d, e, sel) is
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
      when others =>
        s <= e;
    end case;
  end process combi;




end architecture A;
