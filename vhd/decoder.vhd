-------------------------------------------------------------------------------
-- Title      : Decoder
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-01
-- Last update: 2018-04-04
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

  generic (
    );

  port (instruction : in std_logic_vector (31 downto 0);

   --TODO: Ajouter tous les signaux de commande
        );

end entity decoder;

-------------------------------------------------------------------------------

architecture arch of decoder is


  --Internal signals
  signal opcode      : std_logic_vector(6 downto 0);
  signal func3       : std_logic_vector(2 downto 0);
  signal jumpType    : std_logic;
  signal branchType  : std_logic;
  signal loadType    : std_logic;
  signal bubbleCount : integer;


  --ALU control signals
  signal aluSel : std_logic_vector(3 downto 0);  -- Selects the ALU operation


  --Regfile control signals
  signal reqRead1 : std_logic;          -- Requests a read on regfile
  signal reqRead2 : std_logic;          -- Requests a second read on regfile
  signal reqWrite : std_logic;          -- Requests a write on regfile
  signal rs1      : std_logic_vector(4 downto 0);
  signal rs2      : std_logic_vector(4 downto 0);
  signal rd       : std_logic_vector(4 downto 0);

  --Memory control signals
  signal mem_access : std_logic;        -- Requests an access to the memory
  signal memRW      : std_logic;        -- 0 for Read / 1 for Write
  signal memSize    : std_logic_vector(1 downto 0);  -- Size of the memory access
  signal memSign    : std_logic;        -- 0 if unsigned, 1 if signed


  --Unclassified control signals
  signal aluE1Sel : std_logic_vector(2 downto 0);  -- Selects which signal enters E1
  signal aluE2Sel : std_logic_vector(1 downto 0);  -- Selects which signal enters E2

  --Bypass control signals
  signal bp1e : std_logic;              -- Bypass 1 enable
  signal bp2e : std_logic;              -- Bypass 2 enable
  
begin  -- architecture str



  opcode <= code(6 downto 0);
  func3  <= code(14 downto 12);
  rs1    <= code(19 downto 15);
  rs2    <= code(24 downto 20);
  rd     <= code (11 downto 7);


  decode : process is                   --Process combinatoire de décodage

  begin

    --Default signal values
    --Internal
    jumpType   <= '0';
    branchType <= '0';
    loadType   <= '0';

    --Regfile
    reqWrite <= '1';
    reqRead1 <= '1';
    reqRead2 <= '1';

    --ALU
    aluSel <= "0001";

    --Memory
    mem_access <= '0';
    memRW      <= '0';
    memSize    <= "01";
    memSign    <= '1';

    --Others
    aluE1Sel <= "011";
    aluE2Sel <= "00";



    case opcode is

      when "1100011" =>                 --Branch type
        reqWrite   <= '0';
        branchType <= '1';
        case func3 is
          when "000" =>                 --BEQ
            aluSel <= "1001";
          when "001" =>                 --BNE
            aluSel <= "1001";
          when "100" =>                 --BLT
            aluSel <= "1011";
          when "101" =>                 --BGE
            aluSel <= "1010";
          when "110" =>                 --BLTU
            aluSel <= "1101";
          when "111" =>                 --BGEU
            aluSel <= "1100";
        end case;
        
      when "1101111" =>                 --JAL
        jumpType <= '1';
        aluSel   <= "0000";
        reqRead1 <= '0';
        reqRead2 <= '0';
        aluE1Sel <= "010";
      when "1100111" =>                 --JALR
        jumpType <= '1';
        aluSel   <= "0000";
        reqRead2 <= '0';
        aluE1Sel <= "010";
      when "0110111" =>                 --LUI
        aluSel   <= "0000";
        reqRead1 <= '0';
        reqRead2 <= '0';
        aluE2Sel <= "01";
      when "0010111" =>                 --AUIPC
        reqRead1 <= '0';
        reqRead2 <= '0';
        aluE1Sel <= "001";
        aluE2Sel <= "01";
        
      when "0000011" =>                 --Load type
        LoadType   <= '1';
        reqRead2   <= '0';
        aluE1Sel   <= "101";
        mem_access <= '1';
        case func3 is
          when "000" =>                 --LB
          when "001" =>                 --LH
            memSize <= "10";
          when "010" =>                 --LW
            memSize <= "11";
          when "100" =>                 --LBU
            memSign <= '0';
          when "101" =>                 --LHU
            memSize <= "10";
            memSign <= '0';
        end case;
        
      when "0100011" =>                 --Store type
        reqWrite   <= '0';
        aluE1Sel   <= "100";
        mem_access <= '1';
        memRW      <= '1';
        case func3 is
          when "000" =>                 -- SB
          when "001" =>                 -- SH
            memSize <= "10";
          when "010" =>                 -- SW
            memSize <= "11";
        end case;
        
      when "0010011" =>                 --I_imm type
        reqRead2 <= '0';
        case func3 is
          when "000" =>                 -- ADDI
            aluE1Sel <= "101";
          when "001" =>                 -- SLLI
            aluSel   <= "0110";
            aluE2Sel <= "01";
          when "010" =>                 -- SLTI
            aluSel   <= "1011";
            aluE1Sel <= "001";
          when "011" =>                 -- SLTIU
            aluSel   <= "1101";
            aluE1Sel <= "001";
          when "100" =>                 -- XORI
            aluSel   <= "0101";
            aluE1Sel <= "001";
          when "101" =>
            aluE2Sel <= "01";
            if code(30) = '0' then      --SRLI
              aluSel <= "0111";
            else                        --SRAI
              aluSel <= "1000";
            end if;
            
          when "110" =>                 -- ORI
            aluSel   <= "0100";
            aluE1Sel <= "001";
          when "111" =>                 -- ANDI
            aluSel   <= "0011";
            aluE1Sel <= "001";
        end case;
      when "0110011" =>                 --Register type
        case func3 is
          when "000" =>
            if code(30) = '0' then      --ADD
              else                      --SUB
                     aluSel <= "0010";
            end if;
          when "001" =>                 --SLL
            aluSel <= "0110";
          when "010" =>                 --SLT
            aluSel <= "1011";
          when "011" =>                 --SLTU
            aluSel <= "1101";
          when "100" =>                 --XOR
            aluSel <= "0101";
          when "101" =>
            if code(30) = '0' then      --SRL
              aluSel <= "0111";
            else                        --SRA
              aluSel <= "1000";
            end if;
          when "110" =>                 --OR
            aluSel <= "0100";
          when "111" =>                 --AND
            aluSel <= "0011";

        end case;
    -- Rajouter les syscalls
    end case;
  end process decode;



  -- purpose: Inserts a bubble into the pipeline if necessary
  -- type   : sequential
  -- inputs : clk, rst
  -- outputs: 
  bubbleGen : process (clk, rst) is
  begin  -- process bubbleGen
    if rst = '0' then                   -- asynchronous reset (active low)

    elsif clk'event and clk = '1' then  -- rising clock edge
      loadTypePrev <= loadType;
      --Jump or Branch instruction
      if jumpType = '1' or loadType = '1' then
        bubbleCount <= 1;
      else
        bubbleCount <= 0;
      end if;
    --
    --TODO: Other bubble-generating issues
    --
    end process bubbleGen;


      -- purpose: Send control signals to bypasses
      -- type   : sequential
      -- inputs : clk, rst
      -- outputs: bp1e,bp2e
      bypass_command : process (clk, rst) is
      begin  -- process bypass_command
        if rst = '0' then               -- asynchronous reset (active low)

        elsif clk'event and clk = '1' then  -- rising clock edge
          prev_write_2 <= prev_write_1;
          prev_write_1 <= rd;

          if rs1 = prev_write_1 or rs2 = prev_write_1 then
            bp1e <= '1';
          else
            bp1e <= '0';
          end if;
          if rs1 = prev_write_2 or rs2 = prev_write_2 then
            bp2e <= '1';
          else
            bp2e <= '0';
          end if;
          
        end if;
      end process bypass_command;
    end arch;
