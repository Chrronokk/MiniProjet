library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity memoire is

  port (
    rst        : in  std_logic;         --reset
    mem_access : in  std_logic;         -- utilisation de la mémoire
    read_write : in  std_logic;         -- 0 pour read 1 pour write
    adresse    : in  std_logic_vector(3 downto 0);  -- adresse d'accès mémoire
    data_in    : in  std_logic_vector(31 downto 0);  -- données à charger dans la mémoire
    data_out   : out std_logic_vector(31 downto 0);  -- données à charger dans le registre
    size       : in  std_logic_vector(1 downto 0);  -- signal de sélection des extentions de données
    sign       : in  std_logic);        -- signal de sélection sur le signe

end entity memoire;

architecture A of memoire is

  type B32 is array (0 to 8) of std_logic_vector(31 downto 0);  -- mémoire interne

  signal memory : B32;                  -- signal mémoire
  signal i      : integer := 0;         -- variable de boucle

begin  -- architecture


  -- purpose: gere les accès mémoire
  -- type   : combinational
  -- inputs : read_write,data_in,rst,mem_access,adresse,size,sign
  -- outputs: data_out

  

  comb : process (read_write, data_in, rst, mem_access, adresse, size, sign) is

  begin  -- process comb
    if rst = '0' then
      for i in 0 to 8 loop
        memory(i) <= (others => '0');
      end loop;  -- i
      data_out <= (others => '0');
    else
      if mem_access = '1' then
        data_out <= (others => '0');
        if read_write = '0' then        -- lecture
          if size = "01" then           -- 8 bits
            if sign = '0' then          
              data_out(7 downto 0) <= memory(to_integer(unsigned(adresse)))(7 downto 0);
            else
              data_out(31)         <= memory(to_integer(unsigned(adresse)))(7);
              data_out(6 downto 0) <= memory(to_integer(unsigned(adresse)))(6 downto 0);
            end if;
          elsif size = "10" then        -- 16 bits
            if sign = '0' then
              data_out(15 downto 0) <= memory(to_integer(unsigned(adresse)))(15 downto 0);
            else
              data_out(31)          <= memory(to_integer(unsigned(adresse)))(15);
              data_out(14 downto 0) <= memory(to_integer(unsigned(adresse)))(14 downto 0);
            end if;
          else                          -- 32 bits
            data_out <= memory(to_integer(unsigned(adresse)));
          end if;

        else                            --ecriture
          if size = "01" then
            memory(to_integer(unsigned(adresse)))(7 downto 0) <= data_in(7 downto 0);
          elsif size = "10" then
            memory(to_integer(unsigned(adresse)))(15 downto 0) <= data_in(15 downto 0);
          else
            memory(to_integer(unsigned(adresse))) <= data_in;
          end if;
        end if;

      else                              --attente du signal d'accès
        data_out <= (others => '0');
      end if;
    end if;

  end process comb;

  
end architecture A;
