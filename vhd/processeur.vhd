library IEEE;
use IEEE .STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity PROCESSEUR is

  port (
    CLK : in std_logic;                 -- CLOCK
    RST : in std_logic);                -- RESET7

end entity PROCESSEUR;




architecture A of PROCESSEUR is

  constant nop : std_logic_vector(31 downto 0) := (others => '0');


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





  component Btype_sext is
    port(
      input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
      output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended
  end component Btype_sext;




  component decoder is

    port (code : in std_logic_vector (31 downto 0);
          clk  : in std_logic;
          rst  : in std_logic;

          --ALU control signals
          aluSel : out std_logic_vector(3 downto 0);


          --Regfile control signals
          reqRead1 : inout std_logic;   -- Requests a read on regfile
          reqRead2 : inout std_logic;   -- Requests a second read on regfile
          reqWrite : inout std_logic;   -- Requests a write on regfile

          selRegIn : out std_logic_vector(1 downto 0);  -- Selects which signal writes into the regfile

          --Memory control signals
          mem_access : out std_logic;   -- Requests an access to the memory
          memRW      : out std_logic;   -- 0 for Read / 1 for Write
          memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
          memSign    : out std_logic;   -- 0 if unsigned, 1 if signed


          --Unclassified control signals
          aluE1Sel  : out std_logic;    -- Selects which signal enters E1
          aluE2Sel  : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2
          JBsel     : out std_logic_vector(1 downto 0);
          pcSel     : out std_logic;    --Defines how the next PC is calculated
          jalr_Type : out std_logic;

          bpE1 : out std_logic_vector(1 downto 0);
          bpE2 : out std_logic_vector(1 downto 0);


          bubbleReq   : inout std_logic;  --Requests a bubble generation for next cycle
          panicBubble : inout std_logic := '0');


  end component decoder;




  component inc is
    port (
      pc  : in  std_logic_vector(31 downto 0);   -- pc n
      npc : out std_logic_vector(31 downto 0));  -- nouveau pc
  end component inc;




  component Itype_sext is
    port (
      input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
      output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended
  end component Itype_sext;




  component Jtype_sext is
    port (
      input  : in  std_logic_vector(31 downto 0);  --code de l'instructionen entrée
      output : out std_logic_vector(31 downto 0));  -- immédiat en sign extended
  end component Jtype_sext;





  component mux2 is
    port (
      a, b : in  std_logic_vector(31 downto 0);   -- entrées
      sel  : in  std_logic;                       -- selection
      s    : out std_logic_vector(31 downto 0));  -- sortie
  end component mux2;




  component mux3 is
    port (
      a, b, c : in  std_logic_vector(31 downto 0);   -- entrées
      sel     : in  std_logic_vector(1 downto 0);    -- selection
      s       : out std_logic_vector(31 downto 0));  -- sortie
  end component mux3;





  component mux4 is
    port (
      a, b, c, d : in  std_logic_vector(31 downto 0);   -- entrées
      sel        : in  std_logic_vector(1 downto 0);    -- selection
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


  component program_memory
    port (
      rst         : in  std_logic;
      pc          : in  std_logic_vector(31 downto 0);
      instruction : out std_logic_vector(31 downto 0));
  end component;


  component ou
    port (
      a, b : in  std_logic;
      s    : out std_logic);
  end component;





  component memoire is
    port (
      rst        : in  std_logic;       --reset
      mem_access : in  std_logic;       -- utilisation de la mémoire
      read_write : in  std_logic;       -- 0 pour read 1 pour write
      adresse    : in  std_logic_vector(31 downto 0);  -- adresse d'accès mémoire
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
      PCcom  : out std_logic);
  end component CondTest;


  component Stype_sext
    port (
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0));
  end component;

  component Utype_sext
    port (
      input  : in  std_logic_vector(31 downto 0);
      output : out std_logic_vector(31 downto 0));
  end component;




--signaux internes


  --Fetch

  signal instruction1, instruction11 : std_logic_vector(31 downto 0);
  signal pc1, pc41                   : std_logic_vector(31 downto 0);

  --Decode

  signal instruction2, instruction22                          : std_logic_vector(31 downto 0);
  signal pc2, pc42                                            : std_logic_vector(31 downto 0);
  signal bubbleReq, panicBubble, bubbleReq2, bubbleReqDelayed : std_logic;
  signal aluSel                                               : std_logic_vector(3 downto 0);
  signal reqRead1, reqRead2, reqWrite                         : std_logic;
  signal mem_access, memRW, memSign                           : std_logic;
  signal memSize                                              : std_logic_vector(1 downto 0);
  signal aluE1Sel                                             : std_logic;
  signal aluE2Sel                                             : std_logic_vector(1 downto 0);
  signal PCsel                                                : std_logic;
  signal JBsel                                                : std_logic_vector(1 downto 0);
  signal bpE1, bpE2                                           : std_logic_vector(1 downto 0);
  signal jalr_type                                            : std_logic;
  signal selRegIn                                             : std_logic_vector(1 downto 0);




--Execute

  signal instruction3                      : std_logic_vector(31 downto 0);
  signal pc3, pc43                         : std_logic_vector(31 downto 0);
  signal aluSel2                           : std_logic_vector(3 downto 0);
  signal reqRead12, reqRead22, reqWrite2   : std_logic;
  signal mem_access2, memRW2, memSign2     : std_logic;
  signal memSize2                          : std_logic_vector(1 downto 0);
  signal aluE1Sel2                         : std_logic;
  signal aluE2Sel2                         : std_logic_vector(1 downto 0);
  signal s_imm, i_imm, u_imm, b_imm, j_imm : std_logic_vector(31 downto 0);
  signal Reg1, Reg2, R1, R2, E1, E2        : std_logic_vector(31 downto 0);
  signal aluOut                            : std_logic_vector(31 downto 0);
  signal PCcom                             : std_logic;
  signal JBsel2                            : std_logic_vector(1 downto 0);
  signal bpE12, bpE22                      : std_logic_vector(1 downto 0);
  signal jalr_type2                        : std_logic;
  signal jb_imm, jb_add, address_j         : std_logic_vector(31 downto 0);
  signal pc_temp, npc                      : std_logic_vector(31 downto 0);
  signal selRegIn2                         : std_logic_vector(1 downto 0);


  --Memory

  signal instruction4                   : std_logic_vector(31 downto 0);
  signal pc44                           : std_logic_vector(31 downto 0);
  signal selRegIn3                      : std_logic_vector(1 downto 0);
  signal mem_access3, memRW3, memSign3  : std_logic;
  signal memSize3                       : std_logic_vector(1 downto 0);
  signal result1, resultMemory, resultW : std_logic_vector(31 downto 0);
  signal reqWrite3                      : std_logic;
  signal R22                            : std_logic_vector(31 downto 0);



  -- Writeback

  signal instruction5         : std_logic_vector(31 downto 0);
  signal result2              : std_logic_vector(31 downto 0);
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

 U62 : ou port map (
   a => bubbleReq,
   b => bubbleReq2,
   s => bubbleReqDelayed);
  
  U3 : mux2 port map (
    a   => instruction1,
    b   => nop,
    sel => bubbleReqDelayed,
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
    selRegIn    => selRegIn,
    mem_access  => mem_access,
    memRW       => memRW,
    memSize     => memSize,
    memsign     => memSign,
    aluE1Sel    => aluE1Sel,
    aluE2Sel    => aluE2Sel,
    bpE1        => bpE1,
    bpE2        => bpE2,
    bubbleReq   => bubbleReq,
    panicBubble => panicBubble,
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


  U15 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => selRegIn,
    output => selRegIn2);


  U16 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => mem_access,
    output => mem_access2);


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

  U60 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => aluE2sel,
    output => aluE2sel2);


  U21 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => bpE1,
    output => bpE12);


  U22 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => bpE2,
    output => bpE22);


  U23 : mux2 port map (
    a   => instruction2,
    b   => nop,
    sel => panicBubble,
    s   => instruction22);

  U24 : bascule2 port map (
    clk    => clk,
    rst    => rst,
    input  => JBsel,
    output => JBsel2);

  U25 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => jalr_type,
    output => jalr_type2);


  U61 : bascule1 port map (
    clk    => clk,
    rst    => rst,
    input  => bubbleReq,
    output => bubbleReq2);





-- Execute

  U26 : Stype_sext port map (
    input  => instruction3,
    output => s_imm);


  U27 : Itype_sext port map (
    input  => instruction3,
    output => i_imm);


  U28 : Jtype_sext port map (
    input  => instruction3,
    output => j_imm);


  U29 : Utype_sext port map (
    input  => instruction3,
    output => u_imm);


  U30 : Btype_sext port map (
    input  => instruction3,
    output => b_imm);


  U31 : regFile port map (
    codeInstRead  => instruction3,
    codeInstWrite => instruction5,
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
    sel => bpE12,
    s   => R1);


  U33 : mux3 port map (
    a   => Reg2,
    b   => result1,
    c   => result2,
    sel => bpE22,
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
    sel => aluE2Sel2,
    s   => E2);


  U36 : ALU port map (
    a      => E1,
    b      => E2,
    sel    => aluSel2,
    sortie => aluOut);

  U37 : mux2 port map (
    a   => j_imm,
    b   => b_imm,
    sel => JBsel2(1),
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
    sel => PCsel,
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
    output => mem_access3);


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


  U53 : bascule2 port map (
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
    data_in    => R22,
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
