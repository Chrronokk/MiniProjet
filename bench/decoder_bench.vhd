-------------------------------------------------------------------------------
-- Title      : decoder bench
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder_bench.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-29
-- Last update: 2018-04-18
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Testfile for decoder
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-29  1.0      antoine Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library lib_VHDL;
use lib_VHDL.all;

entity decoderBench is
end entity decoderBench;

architecture arch of decoderBench is

  signal sigCode : std_logic_vector(31 downto 0);

  -- signal sigJumpType   : std_logic;
  -- signal sigBranchType : std_logic;
  -- signal sigLoadType   : std_logic;


  --ALU control signals
  signal sigAluSel : std_logic_vector(3 downto 0);  -- Selects the ALU operation


  --Regfile control signals
  signal sigReqRead1 : std_logic;       -- Requests a read on regfile
  signal sigReqRead2 : std_logic;       -- Requests a second read on regfile
  signal sigReqWrite : std_logic;       -- Requests a write on regfile
  signal sigSelRegIn : std_logic_vector(1 downto 0);  -- Selects which signal writes into the regfile

  --Memory control signals
  signal sigMem_access : std_logic;     -- Requests an access to the memory
  signal sigMemRW      : std_logic;     -- 0 for Read / 1 for Write
  signal sigMemSize    : std_logic_vector(1 downto 0);  -- Size of the memory access
  signal sigMemSign    : std_logic;     -- 0 if unsigned, 1 if signed


  --Unclassified control signals
  signal sigAluE1Sel : std_logic;       -- Selects which signal enters E1
  signal sigAluE2Sel : std_logic_vector(1 downto 0);  -- Selects which signal enters E2
  signal sigJBsel    : std_logic;

  --Bypass control signals
  signal sigBpT1E1 : std_logic;         -- Bypass T+1 E1 enable
  signal sigBpT1E2 : std_logic;         -- Bypass T+1 E2 enable
  signal sigBpT2E1 : std_logic;         -- Bypass T+2 E1 enable
  signal sigBpT2E2 : std_logic;         -- Bypass T+2 E2 enable

  signal sigBubbleReq   : std_logic;
  signal sigPanicBubble : std_logic;

  signal sigClk : std_logic := '0';
  signal sigRst : std_logic;






  component decoder
    port (code : in std_logic_vector (31 downto 0);

          --ALU control signals
          aluSel : out std_logic_vector(3 downto 0);


          --Regfile control signals
          reqRead1 : inout std_logic;   -- Requests a read on regfile
          reqRead2 : inout std_logic;   -- Requests a second read on regfile
          reqWrite : inout std_logic;   -- Requests a write on regfile
          selRegIn : out   std_logic_vector(1 downto 0);  -- Selects which signal writes into the regfile

          --Memory control signals
          mem_access : out std_logic;   -- Requests an access to the memory
          memRW      : out std_logic;   -- 0 for Read / 1 for Write
          memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
          memSign    : out std_logic;   -- 0 if unsigned, 1 if signed


          --Unclassified control signals
          aluE1Sel : out std_logic;     -- Selects which signal enters E1
          aluE2Sel : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2
          JBsel    : out std_logic;
          pcSel    : out std_logic_vector(1 downto 0);  --Defines how the next PC is calculated
          pcCom    : out std_logic_vector(1 downto 0);  --Defines which PC value is next


          --Bypass control signals
          bpT1E1 : out std_logic;       -- Bypass T+1 E1 enable
          bpT1E2 : out std_logic;       -- Bypass T+1 E2 enable
          bpT2E1 : out std_logic;       -- Bypass T+2 E1 enable
          bpT2E2 : out std_logic;       -- Bypass T+2 E2 enable

          bubbleReq   : inout std_logic;
          panicBubble : inout std_logic;


          clk : in std_logic;
          rst : in std_logic


          );
  end component;


begin  -- architecture arch

  

  dec1 : decoder
    port map (code        => sigCode,
              aluSel      => sigAluSel,
              reqRead1    => sigReqRead1,
              reqRead2    => sigReqRead2,
              reqWrite    => sigReqWrite,
              selRegIn    => sigSelRegIn,
              mem_access  => sigMem_access,
              memRW       => sigMemRW,
              memSize     => sigMemSize,
              memSign     => sigMemSign,
              aluE1Sel    => sigAluE1Sel,
              aluE2Sel    => sigAluE2Sel,
              JBsel       => sigJBsel,
              bpT1E1      => sigBpT1E1,
              bpT1E2      => sigBpT1E2,
              bpT2E1      => sigBpT2E1,
              bpT2E2      => sigBpT2E2,
              bubbleReq   => sigBubbleReq,
              panicBubble => sigPanicBubble,
              clk         => sigClk,
              rst         => sigRst
              );

  sigClk <= not(sigClk) after 10 ns;

  simulation : process

  begin

    sigRst <= '0';

    wait for 30 ns;

    sigRst <= '1';

    wait until sigClk'event and sigClk = '1';
    --LUI imm -> r4
    sigCode <= "00000000000000000000001000110111";

    wait until sigClk'event and sigClk = '1';
    --AUIPC imm -> r12
    sigCode <= "00000000000000000000011000010111";

    wait until sigClk'event and sigClk = '1';
    --JALR r8->r20
    sigCode <= "00000000000001000000101001100111";

    wait until sigClk'event and sigClk = '1';
    --SLL r5,r12 -> r21
    sigCode <= "00000000010101100001101010110011";

    wait until sigClk'event and sigClk = '1';
    --LB r12->r11 Active le bypass T2E1
    sigCode <= "00000000000001100000010110000011";

    wait until sigClk'event and sigClk = '1';
    --LHU r4->r16
    sigCode <= "00000000000000100101100000000011";

    wait until sigClk'event and sigClk = '1';
    --SW r3 r12
    sigCode <= "00000000110000011010000000100011";

    wait until sigClk'event and sigClk = '1';
    --ADDI r11->r4
    sigCode <= "00000000000001011000001000010011";

    wait until sigClk'event and sigClk = '1';
    --ANDI r4->r0 --Active le bypass T1E1
    sigCode <= "00000000000000100111000000010011";

    wait until sigClk'event and sigClk = '1';
    --BGEU r7,r10 
    sigCode <= "00000000011101010111000001100011";

    wait until sigClk'event and sigClk = '1';
    --NOP
    sigCode <= "00000000000000000000000000000000";

    wait until sigClk'event and sigClk = '1';
    --NOP
    sigCode <= "00000000000000000000000000000000";

    wait until sigClk'event and sigClk = '1';
    --LB r2->r11 
    sigCode <= "00000000000000010000010110000011";

    wait until sigClk'event and sigClk = '1';
    --NOP
    sigCode <= "00000000000000000000000000000000";

    wait until sigClk'event and sigClk = '1';
    --OR r11 r10 -> r14  --Genère une bulle puis active le bypass T2E2
    sigCode <= "00000000101101010110011100110011";

    wait until sigClk'event and sigClk = '1';
    --NOP
    sigCode <= "00000000000000000000000000000000";


    wait until sigClk'event and sigClk = '1';


    assert false report "Simulation terminee" severity failure;
    
  end process simulation;
end architecture arch;
