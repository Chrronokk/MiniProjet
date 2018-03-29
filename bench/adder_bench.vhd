library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_VHDL;
use lib_VHDL.all;

entity Tb_adder is
end Tb_adder;

architecture behavior of Tb_adder is

  -- Component Declaration for the Unit Under Test (UUT)
  
  component adder
    port(
      pc, jump : in  std_logic_vector(31 downto 0);
      next_pc  : out std_logic_vector(31 downto 0)
      );
  end component;


  --Inputs
  signal sigpc   : std_logic_vector(31 downto 0) := (others => '0');
  signal sigjump : std_logic_vector(31 downto 0) := (others => '0');

  --Outputs
  signal sigs : std_logic_vector(31 downto 0);
  
begin

  -- Instantiate the Unit Under Test (UUT)
  adder_bench : adder port map (
    pc      => sigpc,
    jump    => sigjump,
    next_pc => sigs
    );

  bench : process
  begin  -- process bench

    sigpc(3 downto 0) <= "1001";
    sigjump(3 downto 0) <= "0001";
    wait for 100 ns;
    sigpc(3 downto 0) <= "1001";
    sigjump(3 downto 0) <= "0011";
    wait for 100 ns;

  end process bench;
  

end;
