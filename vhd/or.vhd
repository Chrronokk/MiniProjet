library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ou is
  
  port (
    a, b : in  std_logic;
    s    : out std_logic);

end ou;


architecture A of ou is

begin  -- A

  process (a, b)
  begin  -- process
    s <= a or b;
  end process;

end A;
