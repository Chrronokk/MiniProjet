library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bascule2 is

  port(
    clk    : in  std_logic;
    rst    : in  std_logic;
    input  : in  std_logic_vector(1 downto 0);
    output : out std_logic_vector(1 downto 0));

end entity bascule2;

architecture A of bascule2 is
begin
  process (clk, input, rst) is
  begin
    if rising_edge(clk) then
      if (rst = '0') then
        output <= (others => '0');
      else
        output <= input;
      end if;
    end if;
  end process;
end architecture A;
