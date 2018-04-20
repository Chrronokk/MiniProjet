-------------------------------------------------------------------------------
-- Title      : Decoder
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-01
-- Last update: 2018-04-19
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Decodes the instruction data and generates control signals
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-01  1.0      antoine Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity decoder is

  port (code : in std_logic_vector (31 downto 0);
        clk  : in std_logic;
        rst  : in std_logic;

        --ALU control signals
        aluSel : out std_logic_vector(3 downto 0);


        --Regfile control signals
        reqRead1 : inout std_logic;     -- Requests a read on regfile
        reqRead2 : inout std_logic;     -- Requests a second read on regfile
        reqWrite : inout std_logic;     -- Requests a write on regfile






        
        selRegIn : out std_logic_vector(1 downto 0);  -- Selects which signal writes into the regfile

        --Memory control signals
        mem_access : out std_logic;     -- Requests an access to the memory
        memRW      : out std_logic;     -- 0 for Read / 1 for Write
        memSize    : out std_logic_vector(1 downto 0);  -- Size of the memory access
        memSign    : out std_logic;     -- 0 if unsigned, 1 if signed


        --Unclassified control signals
        aluE1Sel  : out std_logic;      -- Selects which signal enters E1
        aluE2Sel  : out std_logic_vector(1 downto 0);  -- Selects which signal enters E2
        JBsel     : out std_logic_vector(1 downto 0);
        pcSel     : out std_logic;      --Defines how the next PC is calculated
        jalr_Type : out std_logic;

        bpE1 : out std_logic_vector(1 downto 0);
        bpE2 : out std_logic_vector(1 downto 0);


        bubbleReq   : inout std_logic;  --Requests a bubble generation for next cycle
        panicBubble : inout std_logic := '0'

        );

end entity decoder;

-------------------------------------------------------------------------------

architecture arch of decoder is


  --Internal signals
  signal opcode   : std_logic_vector(6 downto 0);
  signal func3    : std_logic_vector(2 downto 0);
  signal loadType : std_logic;

  signal rs1 : std_logic_vector(4 downto 0);
  signal rs2 : std_logic_vector(4 downto 0);
  signal rd  : std_logic_vector(4 downto 0);

  signal prev_write_1  : std_logic_vector(4 downto 0);
  signal prev_write_2  : std_logic_vector(4 downto 0);
  signal loadTypePrev  : std_logic;
  signal loadTypePrev2 : std_logic;

  signal bpT2E1next : std_logic;
  signal bpT2E2next : std_logic;
  signal branchType : std_logic;
  signal jumpType   : std_logic;


  --Bypass control signals

  signal bpT1E1 : std_logic;            -- Bypass T+1 E1 enable
  signal bpT1E2 : std_logic;            -- Bypass T+1 E2 enable
  signal bpT2E1 : std_logic;            -- Bypass T+2 E1 enable
  signal bpT2E2 : std_logic;            -- Bypass T+2 E2 enable

begin  -- architecture str





  -- purpose: Initializes the value of rs1,rs2,rd
  -- type   : combinational
  -- inputs : opcode
  -- outputs: rs1,rs2,rd
  initReg : process (code, reqRead1, reqRead2, reqWrite)

  begin  -- process initReg

    opcode <= code(6 downto 0);
    func3  <= code(14 downto 12);

    if reqRead1 = '1' then
      rs1 <= code(19 downto 15);
    else
      rs1 <= "00000";
    end if;

    if reqRead2 = '1' then
      rs2 <= code(24 downto 20);
    else
      rs2 <= "00000";
    end if;

    if reqWrite = '1' then
      rd <= code (11 downto 7);
    else
      rd <= "00000";
    end if;
  end process initReg;



  decode : process(branchType, bubbleReq, code, func3, jumpType, loadTypePrev2,
                   opcode, panicBubble, prev_write_2, rs1, rs2) is  --Process combinatoire de décodage

  begin

    --Default signal values
    --Internal
    jumpType   <= '0';
    branchType <= '0';
    loadType   <= '0';
    jalr_type  <= '0';

    --Regfile
    reqWrite <= '1';
    reqRead1 <= '1';
    reqRead2 <= '1';
    selRegIn <= "00";

    --ALU
    aluSel <= "0001";

    --Memory
    mem_access <= '0';
    memRW      <= '0';
    memSize    <= "01";
    memSign    <= '1';

    --MUX
    aluE1Sel <= '1';
    aluE2Sel <= "00";
    JBSel    <= "00";



    --Request bubble generation for next clock cycle
    if branchType = '1' or jumpType = '1' then
      bubbleReq <= '1';
    else
      bubbleReq <= '0';
    end if;



    if loadTypePrev = '1' and rs1 = prev_write_1 then
      panicBubble <= '1';
    elsif loadTypePrev = '1' and rs2 = prev_write_1 then
      panicBubble <= '1';
    else
      panicBubble <= '0';
    end if;



    if panicBubble = '1' or bubbleReq = '1' then
      pcSel <= '1';
    else
      pcSel <= '0';
    end if;


    if panicBubble = '1' or code = "00000000000000000000000000000000" then
      --NOP Control signals
      reqRead2 <= '0';
      aluE1Sel <= '1';
      aluE2Sel <= "10";

      
    else
      case opcode is

        when "1100011" =>               --Branch type
          reqWrite   <= '0';
          branchType <= '1';
          JBsel      <= "10";
          case func3 is
            when "000" =>               --BEQ
              aluSel <= "1001";
            when "001" =>               --BNE
              aluSel <= "1001";
            when "100" =>               --BLT
              aluSel <= "1011";
            when "101" =>               --BGE
              aluSel <= "1010";
            when "110" =>               --BLTU
              aluSel <= "1101";
            when "111" =>               --BGEU
              aluSel <= "1100";
            when others =>
              null;
          end case;
          
        when "1101111" =>               --JAL
          JBsel      <= "01";
          jumpType <= '1';
          aluSel   <= "0000";
          reqRead1 <= '0';
          reqRead2 <= '0';
          selRegIn <= "10";
        when "1100111" =>               --JALR
          JBsel      <= "01";
          jumpType  <= '1';
          jalr_type <= '1';
          aluSel    <= "1110";
          aluE2Sel  <= "01";
          reqRead2  <= '0';
          selRegIn  <= "10";
        when "0110111" =>               --LUI
          aluSel   <= "0000";
          reqRead1 <= '0';
          reqRead2 <= '0';
          aluE2Sel <= "01";
        when "0010111" =>               --AUIPC
          reqRead1 <= '0';
          reqRead2 <= '0';
          aluE1Sel <= '0';
          aluE2Sel <= "01";
          
        when "0000011" =>               --Load type
          LoadType   <= '1';
          reqRead2   <= '0';
          mem_access <= '1';
          selRegIn   <= "01";
          aluE2Sel   <= "10";
          case func3 is
            when "000" =>               --LB
            when "001" =>               --LH
              memSize <= "10";
            when "010" =>               --LW
              memSize <= "11";
            when "100" =>               --LBU
              memSign <= '0';
            when "101" =>               --LHU
              memSize <= "10";
              memSign <= '0';
            when others =>
              null;
          end case;
          
        when "0100011" =>               --Store type
          reqWrite   <= '0';
          mem_access <= '1';
          aluE2Sel   <= "11";
          memRW      <= '1';
          case func3 is
            when "000" =>               -- SB
            when "001" =>               -- SH
              memSize <= "10";
            when "010" =>               -- SW
              memSize <= "11";
            when others =>
              null;
          end case;
          
        when "0010011" =>               --I_imm type
          reqRead2 <= '0';
          aluE2Sel <= "10";
          case func3 is
            when "000" =>               -- ADDI
            when "001" =>               -- SLLI
              aluSel <= "0110";
            when "010" =>               -- SLTI
              aluSel <= "1011";
            when "011" =>               -- SLTIU
              aluSel <= "1101";
            when "100" =>               -- XORI
              aluSel <= "0101";
            when "101" =>
              aluE2Sel <= "01";
              if code(30) = '0' then    --SRLI
                aluSel <= "0111";
              else                      --SRAI
                aluSel <= "1000";
              end if;
              
            when "110" =>               -- ORI
              aluSel <= "0100";
            when "111" =>               -- ANDI
              aluSel <= "0011";
            when others =>
              null;
          end case;
        when "0110011" =>               --Register type
          case func3 is
            when "000" =>
              if code(30) = '0' then    --ADD
                else                    --SUB
                     aluSel <= "0010";
              end if;
            when "001" =>               --SLL
              aluSel <= "0110";
            when "010" =>               --SLT
              aluSel <= "1011";
            when "011" =>               --SLTU
              aluSel <= "1101";
            when "100" =>               --XOR
              aluSel <= "0101";
            when "101" =>
              if code(30) = '0' then    --SRL
                aluSel <= "0111";
              else                      --SRA
                aluSel <= "1000";
              end if;
            when "110" =>               --OR
              aluSel <= "0100";
            when "111" =>               --AND
              aluSel <= "0011";
            when others =>
              null;
          end case;
          
        when others =>
          null;
      end case;
    end if;
    
  end process decode;




                                        -- purpose: Remembers previous signals
                                        -- type   : sequential
                                        -- inputs : clk, rst
                                        -- outputs: 
  updateSeq : process (clk, rst) is
  begin  -- process updateSeq
    if rst = '0' then                   -- asynchronous reset (active low)
      prev_write_1 <= "00000";
      prev_write_2 <= "00000";
      loadTypePrev <= '0';
      loadTypePrev2 <= '0';


      
    elsif clk'event and clk = '1' then  -- rising clock edge


                                        --Updating the registers
      prev_write_2 <= prev_write_1;
      prev_write_1 <= rd;

      loadTypePrev2 <= loadTypePrev;
      loadTypePrev  <= loadType;
      
    end if;
  end process updateSeq;



  -- purpose: Send control signals to BP MUX
  -- type   : combinational
  -- inputs : 
  -- outputs: BpEx
  enableBP : process (bpT1E1, bpT1E2, bpT2E1, bpT2E2, prev_write_1,
                      prev_write_2, rs1, rs2)
  begin  -- process enableBP

    if rs1 = prev_write_1 and rs1 /= "00000" then
      bpT1E1 <= '1';
    else
      bpT1E1 <= '0';
    end if;

    if rs2 = prev_write_1 and rs2 /= "00000" then
      bpT1E2 <= '1';
    else
      bpT1E2 <= '0';
    end if;

    if rs1 = prev_write_2 and rs1 /= "00000" then
      bpT2E1 <= '1';
    else
      bpt2E1 <= '0';
    end if;

    if rs2 = prev_write_2 and rs2 /= "00000" then
      bpT2E2 <= '1';
    else
      bpT2E2 <= '0';
    end if;


    if bpT1E1 = '0' and bpT2E1 = '0' then
      bpE1 <= "00";
    elsif bpT1E1 = '1' and bpT2E1 = '0' then
      bpE1 <= "01";
    elsif bpT1E1 = '0' and bpT2E1 = '1' then
      bpE1 <= "10";
    else
      bpE1 <= "01";
    end if;

    if bpT1E2 = '0' and bpT2E2 = '0' then
      bpE2 <= "00";
    elsif bpT1E2 = '1' and bpT2E2 = '0' then
      bpE2 <= "01";
    elsif bpT1E2 = '0' and bpT2E2 = '1' then
      bpE2 <= "10";
    else
      bpE2 <= "01";
    end if;

    
    
    
    
    
    
  end process enableBP;
  
end arch;


