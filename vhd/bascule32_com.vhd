library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bascule32_com is

  port(
    clk      : in  std_logic;
    rst      : in  std_logic;
    commande : in  std_logic;
    input    : in  std_logic_vector(31 downto 0);
    output   : out std_logic_vector(31 downto 0));


end entity bascule32_com;

architecture A of bascule32_com is
begin
  process (clk, input, rst, commande) is
  begin
    if rst = '0' then
      output <= (others => '0');
    else
      if (commande = '0') then
        if rising_edge(clk) then
          output <= input;
        end if;
      end if;
    end if;
  end process;
end architecture A;
