library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_VHDL;
use lib_VHDL.all;

entity Tb_alu is
end Tb_alu;

architecture behavior of Tb_alu is

  -- Component Declaration for the Unit Under Test (UUT)
  
  component alu
    port(
      a, b   : in  std_logic_vector(31 downto 0);
      sel    : in  std_logic_vector(3 downto 0);
      sortie : out std_logic_vector(31 downto 0)
      );
  end component;


  --Inputs
  signal siga   : std_logic_vector(31 downto 0) := (others => '0');
  signal sigb   : std_logic_vector(31 downto 0) := (others => '0');
  signal sigsel : std_logic_vector(3 downto 0)  := (others => '0');

  --Outputs
  signal sigs : std_logic_vector(31 downto 0);
  
begin

  -- Instantiate the Unit Under Test (UUT)
  bench_alu : alu port map (
    a      => siga,
    b      => sigb,
    sel    => sigsel,
    sortie => sigs
    );

  bench : process
  begin  -- process bench

    siga(3 downto 0) <= "1001";
    sigb(3 downto 0) <= "0001";
    wait for 100 ns;
    sigsel           <= "0000";
    wait for 100 ns;
    sigsel           <= "0001";
    wait for 100 ns;
    sigsel           <= "0010";
    wait for 100 ns;
    sigsel           <= "0011";
    wait for 100 ns;
    sigsel           <= "0100";
    wait for 100 ns;
    sigsel           <= "0101";
    wait for 100 ns;
    sigsel           <= "0110";
    wait for 100 ns;
    sigsel           <= "0111";
    wait for 100 ns;
    sigsel           <= "1000";
    wait for 100 ns;
    sigsel           <= "1001";
    wait for 100 ns;
    sigsel           <= "1010";
    wait for 100 ns;
    sigsel           <= "1011";
    wait for 100 ns;
    sigsel           <= "1100";
    wait for 100 ns;
    sigsel           <= "1101";
    wait for 100 ns;
    sigsel           <= "1101";

  end process bench;
  

end;
