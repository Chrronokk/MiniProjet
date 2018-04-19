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




  component bascule4 is
    port(
      clk    : in  std_logic;
      rst    : in  std_logic;
      input  : in  std_logic_vector(3 downto 0);
      output : out std_logic_vector(3 downto 0));
  end component bascule4;





  component B_type_sext is
   port(
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
      sel     : in  std_logic_vector(1 downto 0);           -- selection
      s       : out std_logic_vector(31 downto 0));  -- sortie
  end component mux3;





  component mux4 is
    port (
      a, b, c, d : in  std_logic_vector(31 downto 0);   -- entrées
      sel        : in  std_logic_vector(1 downto 0);           -- selection
      s          : out std_logic_vector(31 downto 0));  -- sortie
  end component mux4;






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
  end component regFile;




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
      JBsel  : in  std_logic_vector(1 downto 0);
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
  signal aluSel                                 : std_logic_vector(3 downto 0);
  signal reqRead1, reqRead2, reqWrite, selRegIn : std_logic;
  signal mem_access, memRW, memSign             : std_logic;
  signal memSize                                : std_logic_vector(1 downto 0);
  signal aluE1Sel                               : std_logic;
  signal aluE2Sel                               : std_logic_vector(1 downto 0);
<<<<<<< HEAD
  signal PCsel, JBsel                           : std_logic;
  signal aluE1Sel                               : std_logic;
  signal aluE2Sel                               : std_logic_vector(1 downto 0);

=======
  signal PCsel                           : std_logic;
>>>>>>> 02e25886264bfd0e622bcd1bedd84b8e262300d4


--Execute

  signal instruction3                               : std_logic_vector(31 downto 0);
  signal pc3, pc43                                  : std_logic_vector(31 downto 0);
  signal aluSel2                                    : std_logic_vector(3 downto 0);
  signal reqRead12, reqRead22, reqWrite2, selRegIn2 : std_logic;
  signal mem_access2, memRW2, memSign2              : std_logic;
  signal memSize2                                   : std_logic_vector(1 downto 0);
  signal aluE1Sel2                                  : std_logic;
  signal aluE2Sel2                                  : std_logic_vector(1 downto 0);
  signal s_imm, i_imm, u_imm, b_imm, j_imm          : std_logic_vector(31 downto 0);
  signal Reg1, Reg2, R1, R2, E1, E2                 : std_logic_vector(31 downto o);
  signal aluOut                                     : std_logic_vector(31 downto 0);
  signal PCsel2, JBsel2, PCcom                      : std_logic;


  --Memory

  signal instruction4                   : std_logic_vector(31 downto 0);
  signal pc4, pc44                      : std_logic_vector(31 downto 0);
  signal selRegIn3                      : std_logic;
  signal mem_acces3s, memRW3, memSign3  : std_logic;
  signal memSize3                       : std_logic_vector(1 downto 0);
  signal result1, resultMemory, resultW : std_logic_vector(31 downto 0);
  signal reqWrite3                      : std_logic;
  signal R22                            : std_logic_vector(31 downto 0);



  -- Writeback

  signal instruction5         : std_logic_vector(31 downto 0);
  signal pc5, pc45            : std_logic_vector(31 downto 0);
  signal result2              : std_logic_vector(31 dataIn 0);
  signal reqWrite4, selRegIn4 : std_logic;

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
    bpE1        => bpE1,
    bpE2        => bpE2, ,
    bubbleReq   => bubbleReq,
    panicBubble => panicBubble
    JBsel       => JBsel,
    PCsel       => PCsel,
    jalr_type   => jalr_type);

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
    input  => bpE1,
    output => bpE12);


  U22 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bpE2,
    output => bpE22);


  U23 : mux2 port map (
    a   => instruction2,
    b   => nop,
    sel => panicBubble,
    s   => instruction22);

  U24 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => JBsel,
    output => JBsel2);

  U25 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => jalr_type,
    output => jalr_type2);
  -- Execute

  U26 : S_type_sext port map (
    input  => instruction3,
    output => s_imm);


  U27 : I_type_sext port map (
    input  => instruction3,
    output => i_imm);


  U28 : J_type_sext port map (
    input  => instruction3,
    output => j_imm);


  U29 : U_type_sext port map (
    input  => instruction3,
    output => u_imm);


  U30 : B_type_sext port map (
    input  => instruction3,
    output => b_imm);


  U31 : regFile port map (
    codeInstRead  => instruction3,
    codeInstWrite => instrction5,
    reqRead1      => reqRead12,
    reqRead2      => reqRead22,
    reqWrite      => reqWrite4,
    dataIn        => result2,
    dataOut1      => Reg1,
    dataOut2      => Reg2,
    clk           => clk,
    rst           => rst);


  U32 : mux3 port map (
    a   => Reg1,
    b   => result1,
    c   => result2,
    sel => bpE1,
    s   => R1);


  U33 : mux3 port map (
    a   => Reg2,
    b   => result1,
    c   => result2,
    sel => bpE2,
    s   => R2);

  U34 : mux2 port map (
    a   => pc3,
    b   => R1,
    sel => aluE1Sel2,
    s   => E1);


  U35 : mux4 port map (
    a   => R2,
    b   => u_imm,
    c   => i_imm,
    d   => s_imm,
    sel => aluE2Sel,
    s   => E2);


  U36 : ALU port map (
    a   => E1,
    b   => E2,
    sel => aluSel,
    s   => aluOut);

  U37 : mux2 port map (
    a   => j_imm,
    b   => b_imm,
    sel => JBsel2,
    s   => jb_imm);

  U38 : adder port map (
    pc      => pc3,
    jump    => jb_imm,
    next_pc => jb_add);


  U39 : mux2 port map (
    a   => jb_add,
    b   => aluOut,
    sel => jalr_type2,
    s   => address_j);


  U40 : mux2 port map (
    a   => pc41,
    b   => pc1,
    sel => PCsel2,
    s   => pc_temp);

  U41 : mux2 port map (
    a   => pc_temp,
    b   => address_j,
    sel => PCcom,
    s   => npc);

  U42 : CondTest port map (
    aluLSB => aluOut(0),
    JBsel  => JBsel2,
    PCcom  => PCcom);

  U43 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => aluOut,
    output => result1);

  U44 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => npc,
    output => pc1);

  U45 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => instruction3,
    output => instruction4);


  U46 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => pc43,
    output => pc44);


  U47 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => memSize2,
    output => memSize3);


  U48 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => mem_access2,
    output => mem_acces3);


  U49 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => memRW2,
    output => memRW3);


  U50 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => memSign2,
    output => memSign3);


  U51 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => R2,
    output => R22);

  U52 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqWrite2,
    output => reqWrite3);


  U53 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => selRegIn2,
    output => selRegIn3);


  -- Memory

  U54 : memoire port map (
    rst        => rst,
    mem_access => mem_access3,
    read_write => memRW3,
    adresse    => result1,
    dataIn     => R22,
    data_out   => resultMemory,
    size       => memSize3,
    sign       => memSign3);


  U55 : mux3 port map (
    a   => result1,
    b   => resultMemory,
    c   => pc44,
    sel => selRegIn3,
    s   => resultW);



  U56 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqWrite3,
    output => reqWrite4);


  U57 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => instruction4,
    output => instruction5);



  U58 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => reqWrite2,
    output => reqWrite3);



  U59 : bascule32 port map (
    clk    => clk,
    rst    => rst,
    input  => resultW,
    output => result2);




end architecture A;
