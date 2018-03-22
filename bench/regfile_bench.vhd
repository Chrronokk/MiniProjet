-------------------------------------------------------------------------------
-- Title      : Regiter file bench
-- Project    : 
-------------------------------------------------------------------------------
-- File       : regfile_bench.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-15
-- Last update: 2018-03-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Testfile for regfile
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-15  1.0      antoine Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_VHDL;
use lib_VHDL.all;

entity regBench is
end entity regBench;

architecture arch of regBench is

  signal sigCodeInstRead, sigCodeInstWrite     : std_logic_vector(31 downto 0);
  signal sigReqRead1, sigReqRead2, sigReqWrite : std_logic;
  signal sigDataIn, sigDataOut1, sigDataOut2   : std_logic_vector(31 downto 0);
  signal sigRst                                : std_logic := '0';
  signal sigClk                                : std_logic := '0';
  component regfile
    port (codeInstRead  : in std_logic_vector (31 downto 0);
          codeInstWrite : in std_logic_vector (31 downto 0);

          reqRead1 : in std_logic;
          reqRead2 : in std_logic;
          reqWrite : in std_logic;

          dataIn   : in  std_logic_vector (31 downto 0);
          dataOut1 : out std_logic_vector (31 downto 0);
          dataOut2 : out std_logic_vector (31 downto 0);

          rst : in std_logic;
          clk : in std_logic);
  end component;
  
begin  -- architecture arch

  sigClk <= not(sigClk) after 10 ns;

  reg1 : regFile
    port map (codeInstRead  => sigCodeInstRead,
              codeInstWrite => sigCodeInstWrite,

              reqRead1 => sigReqRead1,
              reqRead2 => sigReqRead2,
              reqWrite => sigReqWrite,

              dataIn => sigDataIn,
              dataOut1 => sigDataOut1,
              dataOut2 => sigDataOut2,

              rst => sigRst,
              clk => sigClk);


  simulation : process

  begin
    sigCodeInstRead  <= "00000000000000000000000000000000";  -- rs1=30, rs2=31
    sigCodeInstWrite <= "00000000000000000000101010000000";  -- rd=21
    sigReqRead1      <= '0';
    sigReqRead2      <= '0';
    sigReqWrite      <= '0';
    sigDataIn        <= X"AAAAAAAA";

    wait for 10 ns;

    sigRst <= '1';
    
    wait for 20 ns;

    sigReqWrite <= '1';                                                -- On ecrit AAA sur r21

    wait for 20 ns;

    sigReqWrite <= '0';

    wait for 20 ns;

    sigReqWrite <= '1';
    sigCodeInstWrite <= "00000000000000000000100100000000";  --rd=18
    sigDataIn <= X"BBBBBBBB";                                         --On ecrit BBB sur r18

    wait for 20 ns;

    sigReqWrite <= '1';
    sigCodeInstWrite <= "00000000000000000000000000000000";  --rd=18
    sigDataIn <= X"55555555";                                          --Tentative d'écriture sur r0
    

    wait for 20 ns;

    sigCodeInstWrite <= "00000000000000000000000100000000";  --rd=2 
    sigDataIn <= X"CCCCCCCC";                                           --On ecrit CCC sur r2

    sigReqRead1 <= '1';
    sigReqRead2 <= '1';

    sigCodeInstRead <= "00000001001010101000000000000000";  --rs1=21  rs2=18 

    
    wait for 100 ns;

    assert false report "Simulation Finished Successfully" severity failure;

  end process;




end architecture arch;


