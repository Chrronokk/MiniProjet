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
end entity bascule;

architecture A of bascule1 is
begin
  process (clk, input, rst) is
  begin
    if rising_edge(clk) then
      if (rst = '0') then
        q <= '0';
      else
        q <= d;
      end if;
    end if;
  end process;
end architecture A;
