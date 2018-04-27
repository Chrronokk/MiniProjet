library ieee;
use ieee.std_logic_1164.all;


entity CondTest is
  
  port (
    aluLSB : in  std_logic;
    JBsel  : in  std_logic_vector(1 downto 0);
    PCcom  : out std_logic);

end CondTest;


architecture arch of CondTest is

begin  -- arch


  testCond : process(JBsel, aluLSB)
  begin  -- process testCond
    if JBsel = "01" then
      PCcom <= '1';
    ELSIF JBSEL = "10" AND ALULSB = '1' THEN
      PCCOM <='1';
    elsif JBsel="10" and aluLSB ='0' then
      PCcom <= '0';
    else
      PCcom <= '0';
    end if;
    
	end process testCond;
  end arch;
