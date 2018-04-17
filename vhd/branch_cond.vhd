library ieee;
use ieee.std_logic_1164.all;


entity CondTest is
  
  port (
    aluLSB : in std_logic;
    PCsel  : in std_logic_vector(1 downto 0);

    PCcom : out std_logic_vector(1 downto 0)
    );
    
end CondTest;


architecture arch of CondTest is

begin  -- arch


  testCond: process
  begin  -- process testCond
    if PCsel = "00" then                --If Type=Bubble
      PCcom <= "00";
      
    elsif PCsel = "01" then             --If Type=Jump
      PCcom <= "11";
      
    elsif PCsel = "10" then             --If Type=Branch
      if aluLSB = '1' then              --Si la condition est verifiée
        PCcom <= "11";
      else
        PCcom <= "01";      
      end if;

    else
      PCcom <= "01";

end arch;
