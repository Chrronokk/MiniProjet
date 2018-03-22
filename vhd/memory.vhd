library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memory is
  
  port (
    read_write : in  std_logic;                      -- 0 pour read 1 pour write
    adresse    : in  std_logic_vector(31 downto 0)   -- adresse d'accès mémoire
    data_in    : in  std_logic_vector(31 downto 0;   -- données à charger dans la mémoire
    data_out   : out std_logic_vector(31 downto 0);  -- données à charger dans le registre
    ex         : in  std_logic_vector(1 downto 0));  -- signal de sélection des extentions de données
    sign       : in  std_logic;                      -- signal de sélection sur
                                                     -- le signe

    end entity memory;

    architecture A of memory is

    begin  -- architecture A
  type B32 is array (0 to 2048) of std_logic_vector(31 downto 0);  -- mémoire interne
  signal memory : B32;                  -- mémoire
      -- purpose: gere les accès mémoire
      -- type   : combinational
      -- inputs : read_write,data_in,sel_signex
      -- outputs: data_out
      comb: process (read_write,data_in,ex,sign) is
          begin  -- process comb
        data_out <= (others => '0');        
        if read_write = '1' then -- lecture
          if ex = "01" then
            if sign='0' then
                  data_out(7 downto 0) <= memory(to_integer(unsiged(adresse))(7 downto 0);
            else
                  data_out(31)<= memory(to_integer(unsiged(adresse))(7);
                  data_out(6 downto 0) <= memory(to_integer(unsiged(adresse))(6 downto 0);
            end if;
          elsif ex = "10" then
            if sign='0' then
                  data_out(15 downto 0) <= memory(to_integer(unsiged(adresse))(15 downto 0);
            else
                  data_out(31)<= memory(to_integer(unsiged(adresse))(15);
                  data_out(14 downto 0) <= memory(to_integer(unsiged(adresse))(14 downto 0);
            end if;
          else
            data_out<=memory(to_integer(unsiged(adresse));           
          end if;



          else --ecriture
            if ex = "01" then
              if sign='0' then
                  memory(to_integer(unsiged(adresse))(7 downto 0) <= data_in(7 downto 0) ;
            else
                  memory(to_integer(unsiged(adresse))(31) <= data_in(7) ;
                  memory(to_integer(unsiged(adresse))(6 downto 0) <= data_in(6 downto 0) ;
            end if;
          elsif ex = "10" then
            if sign='0' then
                  memory(to_integer(unsiged(adresse))(15 downto 0) <= data_in(15 downto 0) ;
            else
                  memory(to_integer(unsiged(adresse))(31) <= data_in(15) ;
                  memory(to_integer(unsiged(adresse))(14 downto 0) <= data_in(14 downto 0) ;
            end if;
          else
                  memory(to_integer(unsiged(adresse)) <= data_in ;
          end if;
                    
        end if;
      end process comb;

    end architecture A;
