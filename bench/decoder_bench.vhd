-------------------------------------------------------------------------------
-- Title      : decoder bench
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder_bench.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-29
-- Last update: 2018-04-05
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

  signal sigInstruction : std_logic_vector(31 downto 0);

  --Internal signals
  signal sigOpcode      : std_logic_vector(6 downto 0);
  signal sigFunc3       : std_logic_vector(2 downto 0);
  signal sigJumpType    : std_logic;
  signal sigBranchType  : std_logic;
  signal sigLoadType    : std_logic;
  signal sigBubbleCount : integer;


  --ALU control signals
  signal sigAluSel : std_logic_vector(3 downto 0);  -- Selects the ALU operation


  --Regfile control signals
  signal sigReqRead1 : std_logic;       -- Requests a read on regfile
  signal sigReqRead2 : std_logic;       -- Requests a second read on regfile
  signal sigReqWrite : std_logic;       -- Requests a write on regfile
  signal sigRs1      : std_logic_vector(4 downto 0);
  signal sigRs2      : std_logic_vector(4 downto 0);
  signal sigRd       : std_logic_vector(4 downto 0);
  signal sigSelRegIn : std_logic;  -- Selects which signal writes into the regfile

  --Memory control signals
  signal sigMem_access : std_logic;     -- Requests an access to the memory
  signal sigMemRW      : std_logic;     -- 0 for Read / 1 for Write
  signal sigMemSize    : std_logic_vector(1 downto 0);  -- Size of the memory access
  signal sigMemSign    : std_logic;     -- 0 if unsigned, 1 if signed


  --Unclassified control signals
  signal sigAluE1Sel : std_logic_vector(2 downto 0);  -- Selects which signal enters E1
  signal sigAluE2Sel : std_logic_vector(1 downto 0);  -- Selects which signal enters E2

  --Bypass control signals
  signal sigBpT1E1 : std_logic;         -- Bypass T+1 E1 enable
  signal sigBpT1E2 : std_logic;         -- Bypass T+1 E2 enable
  signal sigBpT2E1 : std_logic;         -- Bypass T+2 E1 enable
  signal sigBpT2E2 : std_logic;         -- Bypass T+2 E2 enable





  component decoder
    port (instruction : in std_logic_vector (31 downto 0);

          --ALU control signals
          aluSel : out std_logic_vector(3 downto 0);


          --Regfile control signals
          reqRead1 : out std_logic;     -- Requests a read on regfile
          reqRead2 : out std_logic;     -- Requests a second read on regfile
          reqWrite : out std_logic;     -- Requests a write on regfile
          rs1      : out std_logic_vector(4 downto 0);
          rs2      : out std_logic_vector(4 downto 0);
          rd       : out std_logic_vector(4 downto 0);
          selRegIn : out std_logic;  -- Selects which signal writes into the regfile

          --Memory control signals
          mem_access : out std_logic;   -- Requests an access to the memory
          memRW      : out std_logic;   -- 0 for Read / 1 for Write
          memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
          memSign    : out std_logic;   -- 0 if unsigned, 1 if signed


          --Unclassified control signals
          aluE1Sel : out std_logic_vector(2 downto 0);  -- Selects which signal enters E1
          aluE2Sel : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2

          --Bypass control signals
          bpT1E1 : out std_logic;       -- Bypass T+1 E1 enable
          bpT1E2 : out std_logic;       -- Bypass T+1 E2 enable
          bpT2E1 : out std_logic;       -- Bypass T+2 E1 enable
          bpT2E2 : out std_logic;       -- Bypass T+2 E2 enable
          );
  end component;


begin  -- architecture arch

  

  dec1 : decoder
    port map (instruction => sigInstruction,
               aluSel     => sigAluSel,
               reqRead1   => sigReqRead1,
               reqRead2   => sigReqRead2,
               reqWrite   => sigReqRead,
               rs1        => sigRs1,
               rs2        => sigRs2,
               rd         => sigRd,
               selRegIn   => sigRegIn,
               mem_access => sigMem_access,
               memRW      => sigMemRW,
               memSize    => sigMemSize,
               aluE1Sel   => sigAluE1Sel,
               aluE2Sel   => sigAluE2Sel,
               bpT1E1     => sigBpT1E1,
               bpT1E2     => sigBpT1E2,
               bpT2E1     => sigBpT2E1,
               bpT2E2     => sigBpT2E2,
               );

  sigClk <= not(sigClk) after 10 ns;

  simulation : process

  begin

    wait until clk'event and clk = '1';

    sigInstruction <= "00000000000000000000000000000000"
    
    wait until clk'event and clk = '1';


    wait until clk'event and clk = '1';


    wait until clk'event and clk = '1';


    wait until clk'event and clk = '1';


    wait until clk'event and clk = '1';


    wait until clk'event and clk = '1';





  end architecture arch;
