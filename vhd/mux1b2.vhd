library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux1b2 is

  port (
    a, b : in  std_logic;   -- entrées
    sel  : in  std_logic;                       -- selection
    s    : out std_logic);  -- sortie

    end  entity;

    architecture A of mux1b2 is

      

    begin  -- architecture A



      combi : process (a, b, sel) is
      begin  -- process combi


        s <= '0';

        case sel is
          when '0' =>
            s <= a;
          when others =>
            s <= b;
        end case;
      end process combi;

    end architecture A;



    
