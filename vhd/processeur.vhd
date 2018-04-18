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
      reqRead1 : out std_logic;         -- Requests a read on regfile
      reqRead2 : out std_logic;         -- Requests a second read on regfile
      reqWrite : out std_logic;         -- Requests a write on regfile
      selRegIn : out std_logic;  -- Selects which signal writes into the regfile

      --Memory control signals
      mem_access : out std_logic;       -- Requests an access to the memory
      memRW      : out std_logic;       -- 0 for Read / 1 for Write
      memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
      memSign    : out std_logic;       -- 0 if unsigned, 1 if signed


      --Unclassified control signals
      aluE1Sel : out std_logic_vector(2 downto 0);  -- Selects which signal enters E1
      aluE2Sel : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2
      JBsel    : out std_logic;

      --Bypass control signals
      bpT1E1 : out std_logic;           -- Bypass T+1 E1 enable
      bpT1E2 : out std_logic;           -- Bypass T+1 E2 enable
      bpT2E1 : out std_logic;           -- Bypass T+2 E1 enable
      bpT2E2 : out std_logic;           -- Bypass T+2 E2 enable

      bubleReq    : out   std_logic;
      panicBubble : inout std_logic
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



  component bascule32_com is
    port (
      clk      : in  std_logic;
      rst      : in  std_logic;
      commande : in  std_logic;
      input    : in  std_logic_vector(31 downto 0);
      output   : out std_logic_vector(31 downto 0));
  end component bascule32_com;



  component CondTest is
    port (
      aluLSB : in  std_logic;
      PCsel  : in  std_logic_vector(1 downto 0);
      PCcom  : out std_logic_vector(1 downto 0));
  end component CondTest;





--signaux internes


  --Fetch

  signal instruction1, instruction11 : std_logic_vector(31 downto 0);
  signal pc1, pc41                   : std_logic_vector(31 downto 0);

  --Decode

  signal instruction2, instruction22            : std_logic_vector(31 downto 0);
  signal pc2, pc42                              : std_logic_vector(31 downto 0);
  signal bubbleReq, panicBubble                 : std_logic;
  signal JBsel                                  : std_logic;
  signal aluSel                                 : std_logic(3 downto 0);
  signal reqRead1, reqRead2, reqWrite, selRegIn : std_logic;
  signal mem_access, memRW, memSign             : std_logic;
  signal memSize                                : std_logic_vector(1 downto 0);
  signal aluE1Sel                               : std_logic;
  signal aluE2Sel                               : std_logic_vector(1 downto 0);
  signal bpT1E1, bpT1E2, bpT2E1, bpT2E2         : std_logic;

  --Execute

  signal instruction3                               : std_logic_vector(31 downto 0);
  signal pc3, pc43                                  : std_logic_vector(31 downto 0);
  signal aluSel2                                    : std_logic_vector(3 downto 0);
  signal reqRead12, reqRead22, reqWrite2, selRegIn2 : std_logic;
  signal mem_access2, memRW2, memSign2              : std_logic;
  signal memSize2                                   : std_logic_vector(1 downto 0);
  signal aluE1Sel2                                  : std_logic;
  signal aluE2Sel2                                  : std_logic_vector(1 downto 0);
  signal bpT1E12, bpT1E22, bpT2E12, bpT2E22         : std_logic;
  signal s_imm, i_imm, u_imm, b_imm, j_imm          : std_logic_vector(31 downto 0);

  --Memory

  signal instruction4                  : std_logic_vector(31 downto 0);
  signal pc4, pc44                     : std_logic_vector(31 downto 0);
  signal selRegIn3                     : std_logic;
  signal mem_acces3s, memRW3, memSign3 : std_logic;
  signal memSize3                      : std_logic_vector(1 downto 0);

  -- Writeback
  signal instruction5 : std_logic_vector(31 downto 0);
  signal pc5, pc45    : std_logic_vector(31 downto 0);
  signal selRegIn4    : std_logic;



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


  U4 : bascule32_com port map (
    clk      => clk,
    rst      => rst,
    commande => panicBubble,
    input    => instruction11,
    output   => instruction2);


  U5 : bascule32_com port map (
    clk      => clk,
    rst      => rst,
    commande => panicBubble,
    input    => pc1,
    output   => pc2);


  U6 : bascule32_com port map (
    clk      => clk,
    rst      => rst,
    commande => panicBubble,
    input    => pc41,
    output   => pc42);





--Decodeur

  U7 : decoder port map (
    code        => instruction2,
    clk         => clk,
    rst         => rst,
    alusel      => alusel,
    reqRead1    => reqRead1,
    reqRead2    => reqRead2,
    reqWrite    => reqWrite,
    rs1         => rs1,
    rs2         => rs2,
    rd          => rd,
    selRegIn    => selRegIn,
    mem_access  => mem_access,
    memRW       => memRW,
    memSize     => memSize,
    memsign     => memSign,
    aluE1Sel    => aluE1Sel,
    aluE2Sel    => aluE2Sel,
    bpT1E1      => bpT1E1,
    bpT1E2      => bpT1E2,
    bpT2E1      => bpT2E1,
    bpT2E2      => bpT2E2,
    bubbleReq   => bubbleReq,
    panicBubble => panicBubble);

  U8 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => instruction22,
    output => instruction3);


  U9 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => pc2,
    output => pc3);


  U10 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => pc42,
    output => pc43);


  U11 : bascule4 port map (
    clk    => clk,
    rst    => rst,
    input  => aluSel,
    output => aluSel2);


  U12 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqRead1,
    output => reqRead12);


  U13 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqRead2,
    output => reqRead22);


  U14 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqWrite,
    output => reqWrite2);


  U15 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => selRegIn,
    output => selRegIn2);


  U16 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => mem_access,
    output => mem_acces2);


  U16 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => mem_access,
    output => mem_acces2);


  U16 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => mem_access,
    output => mem_acces2);


  U17 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => memRW,
    output => memRW2);


  U18 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => memSign,
    output => memSign2);


  U19 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => memSize,
    output => memSize2);


  U20 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => aluE1sel,
    output => aluE1sel2);


  U21 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bpT1E1,
    output => bpT1E12);


  U22 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bpT1E2,
    output => bpT1E22);


  U23 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bpT2E1,
    output => bpT2E12);


  U24 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bpT2E2,
    output => bpT2E22);


  U25 : mux2 port map (
    a   => instruction2,
    b   => nop,
    sel => panicBubble,
    s   => instruction22);


  -- Execute

  U26 : S_type_sext port map (
    input  => instruction3,
    output => s_imm);
  
















end architecture A;
