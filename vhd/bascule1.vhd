library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bascule1 is
  port
    (
      clk : in std_logic;

      rst : in std_logic;

      input : in std_logic;

      output : out std_logic
      );
end entity bascule1;

architecture A of bascule1 is
begin
  process (clk, input, rst) is
  begin
    if (rst = '0') then
      output <= '0';
    else 
      if rising_edge(clk) then
        output <= input;
      end if;
    end if;
  end process;
end architecture A;
