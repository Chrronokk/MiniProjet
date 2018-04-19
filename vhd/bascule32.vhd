library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bascule32 is

  port(
    clk    : in  std_logic;
    rst    : in  std_logic;
    input  : in  std_logic_vector(31 downto 0);
    output : out std_logic_vector(31 downto 0));


end entity bascule32;

architecture A of bascule32 is
begin
  process (clk, input, rst) is
  begin
    if (rst = '0') then
      output <= (others => '0');
    else 
      if rising_edge(clk) then
        output <= input;
      end if;
    end if;
  end process;
end architecture A;
