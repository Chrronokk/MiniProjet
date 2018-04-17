library IEEE;
use IEEE .STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity PROCESSEUR is

  port (
    CLK : in std_logic;                 -- CLOCK
    RST : in std_logic);                -- RESET7

end entity PROCESSEUR;




architecture A of PROCESSEUR is

  component ALU is

    port (
      a, b   : in  std_logic_vector(31 downto 0);   -- sel
      sel    : in  std_logic_vector(3 downto 0);    -- selection
      sortie : out std_logic_vector(31 downto 0));  -- sortie

  end component ALU;


  component adder is

    port (
      pc      : in  std_logic_vector(31 downto 0);   -- pc
      jump    : in  std_logic_vector(31 downto 0);   -- saut ou branchement
      next_pc : out std_logic_vector(31 downto 0));  -- nouvelle valeur de pc

  end component adder;

  component bascule32 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0));

  end component bascule32;

  component bascule32 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0));

  end component bascule32;

  component bascule32 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0));

  end component bascule32;

  component bascule1 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic;
      output : out std_logic);

  end component bascule1;

  component bascule2 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(1 downto 0);
      output : out std_logic_vector(1 downto 0));

  end component bascule2;

  component bascule3 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(2 downto 0);
      output : out std_logic_vector(2 downto 0));

  end component bascule3;

  component bascule4 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(3 downto 0);
      output : out std_logic_vector(3 downto 0));

  end component bascule4;

  component bascule5 is

    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(4 downto 0);
      output : out std_logic_vector(4 downto 0));

  end component bascule5;

  component B_type_sext is

    input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
    output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended

  end component B_type_sext;

  component decoder is

    port (
      code : in std_logic_vector (31 downto 0);
      clk  : in std_logic;
      rst  : in std_logic;

      --ALU control signals
      aluSel : out std_logic_vector(3 downto 0);


      --Regfile control signals
      reqRead1 : out   std_logic;       -- Requests a read on regfile
      reqRead2 : out   std_logic;       -- Requests a second read on regfile
      reqWrite : out   std_logic;       -- Requests a write on regfile
      rs1      : inout std_logic_vector(4 downto 0);
      rs2      : inout std_logic_vector(4 downto 0);
      rd       : inout std_logic_vector(4 downto 0);
      selRegIn : out   std_logic;  -- Selects which signal writes into the regfile

      --Memory control signals
      mem_access : out std_logic;       -- Requests an access to the memory
      memRW      : out std_logic;       -- 0 for Read / 1 for Write
      memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
      memSign    : out std_logic;       -- 0 if unsigned, 1 if signed


      --Unclassified control signals
      aluE1Sel : out std_logic_vector(2 downto 0);  -- Selects which signal enters E1
      aluE2Sel : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2

      --Bypass control signals
      bpT1E1 : out std_logic;           -- Bypass T+1 E1 enable
      bpT1E2 : out std_logic;           -- Bypass T+1 E2 enable
      bpT2E1 : out std_logic;           -- Bypass T+2 E1 enable
      bpT2E2 : out std_logic            -- Bypass T+2 E2 enable

      );

  end component decoder;

  component inc is

    port (
      pc  : in  std_logic_vector(31 downto 0);   -- pc n
      npc : out std_logic_vector(31 downto 0));  -- nouveau pc

  end component inc;

  component I_type_sext is

    port (
      input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
      output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended

  end component I_type_sext;

  component J_type_sext is

    port (
      input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
      output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended

  end component J_type_sext;


  component mux2 is

    port (
      a, b : in  std_logic_vector(31 downto 0);   -- entrées
      sel  : in  std_logic;                       -- selection
      s    : out std_logic_vector(31 downto 0));  -- sortie

  end component mux2;

  component mux3 is

    port (
      a, b, c : in  std_logic_vector(31 downto 0);   -- entrées
      sel     : in  std_logic(1 downto 0);           -- selection
      s       : out std_logic_vector(31 downto 0));  -- sortie

  end component mux3;

  component mux4 is

    port (
      a, b, c, d : in  std_logic_vector(31 downto 0);   -- entrées
      sel        : in  std_logic(1 downto 0);           -- selection
      s          : out std_logic_vector(31 downto 0));  -- sortie

  end component mux4;

  component mux5 is

    port (
      a, b, c, d, e : in  std_logic_vector(31 downto 0);   -- entrées
      sel           : in  std_logic(2 downto 0);           -- selection
      s             : out std_logic_vector(31 downto 0));  -- sortie

  end component mux5;



  component regFile is
    port (
      codeInstRead  : in std_logic_vector (31 downto 0);
      codeInstWrite : in std_logic_vector (31 downto 0);

      reqRead1 : in std_logic;
      reqRead2 : in std_logic;
      reqWrite : in std_logic;

      dataIn   : in  std_logic_vector (31 downto 0);
      dataOut1 : out std_logic_vector (31 downto 0);
      dataOut2 : out std_logic_vector (31 downto 0);

      rst : in std_logic;
      clk : in std_logic);

  end regFile;


  component program_memory is

    port (
      rst         : in  std_logic;      -- reset
      pc          : in  std_logic_vector(3 downto 0);    -- ligne à lire
      instruction : out std_logic_vector(31 downto 0));  -- code binaire de l'instruction

  end component program_memory;

  component memoire is
    port (
      rst        : in  std_logic;       --reset
      mem_access : in  std_logic;       -- utilisation de la mémoire
      read_write : in  std_logic;       -- 0 pour read 1 pour write
      adresse    : in  std_logic_vector(3 downto 0);  -- adresse d'accès mémoire
      data_in    : in  std_logic_vector(31 downto 0);  -- données à charger dans la mémoire
      data_out   : out std_logic_vector(31 downto 0);  -- données à charger dans le registre
      size       : in  std_logic_vector(1 downto 0);  -- signal de sélection des extentions de données
      sign       : in  std_logic);      -- signal de sélection sur le signe

  end component memoire;

  signal instruction1, instruction11, instruction2, instruction3, instruction4, instruction5    : std_logic_vector(31 downto 0);
  signal pc1, pc2, pc3, pc4, pc5                                                                : std_logic_vector(31 downto 0);
  signal pc41, pc42, pc43, pc44, pc45                                                           : std_logic_vector(31 downto 0);
  signal bubbleReq                                                                              : std_logic;
  signal aluSel, aluSel2                                                                        : std_logic_vector(3 downto 0);
  signal reqRead1,reqRead12, reqRead2,reqRead22, reqWrite,reqWrite selRegIn                                                 : std_logic;
  signal rs1, rs2, rd                                                                           : std_logic_vector(4 downto 0);
  signal mem_access, mem_acces2, mem_acces3, memRW, memRW2, memRW3, memSign, memSign2, memSign3 : std_logic;
  signal memSize, memSize2, memSize3                                                            : std_logic_vector(1 downto 0);
  signal aluE1Sel, aluE1Sel2                                                                    : std_logic_vector(2 downto 0);
  signal aluE2Sel, aluE2Sel2                                                                    : std_logic_vector(1 downto 0);
  signal bpT1E1, bpT1E2, bpT2E1, bpT2E2, bpT1E12, bpT1E22, bpT2E12, bpT2E22                     : std_logic;



begin  -- architecture A


  --Fetch

  U1 : program_memory port map (
    rst         => rst,
    pc          => pc1,
    instruction => instruction1);

  U2 : inc port map (
    pc  => pc1,
    npc => pc41);

  U3 : mux2 port map (
    a   => instruction1,
    b   => nop,
    sel => bubleReq,
    s   => instruction11);

  U4 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => instruction11,
    output => instruction2);


  U5 : bascule32 port map (
    CLK    => CLK,
    rst    => rst,
    input  => pc1,
    output => pc2);

  U6 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => pc41,
    output => pc42);

  

    

--Decodeur

  U : decoder port map (
    code       => instruction2,
    clk        => clk,
    rst        => rst,
    alusel     => alusel,
    reqRead1   => reqRead1,
    reqRead2   => reqRead2,
    reqWrite   => reqWrite,
    rs1        => rs1,
    rs2        => rs2,
    rd         => rd,
    selRegIn   => selRegIn,
    mem_access => mem_access,
    memRW      => memRW,
    memSize    => memSize,
    memsign    => memSign,
    aluE1Sel   => aluE1Sel,
    aluE2Sel   => aluE2Sel,
    bpT1E1     => bpT1E1,
    bpT1E2     => bpT1E2,
    bpT2E1     => bpT2E1,
    bpT2E2     => bpT2E2,
    bubbleReq  => bubbleReq);

  U8: bascule32 port map (
    clk => clk,
    rst => rst,
    input => instruction2,
    output => instruction3);

  U9 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => pc2,
    output => pc3);

  U10 : 







end architecture A;
