LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
  
ENTITY Tb_alu IS
END Tb_alu;
  
ARCHITECTURE behavior OF Tb_alu IS
  
 -- Component Declaration for the Unit Under Test (UUT)
  
 COMPONENT alu
 PORT(
 a,b : in std_logic_vector(31 downto 0);
 sel : IN std_logic_vector(3 downto 0);
 sortie : OUT std_logic_vector(31 downto 0)
 );
 END COMPONENT;
  
 
 --Inputs
 signal siga : std_logic_vector(31 downto 0) := (others => '0');
 signal sigb : std_logic_vector(31 downto 0) := (others => '0');
 signal sigsel : std_logic_vector(3 downto 0) := (others => '0');
 
 --Outputs
 signal sigs : std_logic_vector(31 downto 0);
  
BEGIN
  
 -- Instantiate the Unit Under Test (UUT)
 bench_alu: alu PORT MAP (
 a => siga,
 b => sigb,
 sel => sigsel,
 sortie => sigs
 );
 
 -- Stimulus process
 stim_proc: processbegin
 -- hold reset state for 100 ns.
 wait for 100 ns; 
 
 -- insert stimulus here 
 
 siga(6 downto 0) <= "1011001";
 sigb(6 downto 0) <= "1101111";
  
 sigsel <= "0000";
 wait for 100 ns;
 sigsel <= "0001";
 wait for 100 ns;
 sigsel <= "0010";
 wait for 100 ns;
 sigsel <= "0011";
 wait for 100 ns;
 sigsel <= "0100";
 wait for 100 ns;
 sigsel <= "0101";
 wait for 100 ns;
 sigsel <= "0110";
 wait for 100 ns;
 sigsel <= "0111";
  wait for 100 ns;
 sigsel <= "1000";
  wait for 100 ns;
 sigsel <= "1001";
  wait for 100 ns;
 sigsel <= "1010";
  wait for 100 ns;
 sigsel <= "1011";
  wait for 100 ns;
 sigsel <= "1100";
  wait for 100 ns;
 sigsel <= "1101";
 end process;
 
END;
