library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bascule5 is

  port(
    clk    : in  std_logic;
    rst    : in  std_logic;
    input  : in  std_logic_vector(4 downto 0);
    output : out std_logic_vector(4 downto 0));

end entity bascule5;

architecture A of bascule5 is
begin
  process (clk, input, rst) is
  begin
    if rising_edge(clk) then
      if (rst = '0') then
        q <= (others => '0');
      else
        q <= d;
      end if;
    end if;
  end process;
end architecture A;
