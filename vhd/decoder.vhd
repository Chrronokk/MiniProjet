-------------------------------------------------------------------------------
-- Title      : Decoder
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-01
-- Last update: 2018-03-19
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: Decodes the instruction data and generates control signals
-------------------------------------------------------------------------------
-- Copyright (c) 2018 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2018-03-01  1.0      antoine	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity decoder is

  generic (
    );

  port (instruction: in std_logic_vector (31 downto 0);

        --TODO: Ajouter tous les signaux de commande
    );

end entity decoder;

-------------------------------------------------------------------------------

architecture arch of decoder is

  -----------------------------------------------------------------------------
  -- Internal signal declarations
  -----------------------------------------------------------------------------
  
  signal opcode: std_logic_vector(6 downto 0);
  signal func3: std_logic_vector(2 downto 0);
  signal aluSel : std_logic_vector(3 downto 0);
         
begin  -- architecture str

  -----------------------------------------------------------------------------
  -- Component instantiations
  -----------------------------------------------------------------------------


  opcode <= code(6 downto 0);
  func3 <= code(14 downto 12);
  
   
decode process: ()  --Process combinatoire de décodage
                  
begin
    
  case opcode is

    when "1100011" =>     --Branch type
      case func3 is
        when "000" =>   --BEQ
          aluSel <= "1001";
        when "001" =>   --BNE
          aluSel <= "1001";
        when "100" =>   --BLT
          aluSel <= "1011";
        when "101" =>   --BGE
          aluSel <= "1010";
        when "110" =>   --BLTU
          aluSel <= "1101";
        when "111" =>   --BGEU
          aluSel <= "1100";
        end case;
 
    when "1101111" =>     --JAL
          aluSel <= "0000";
    when "1100111" =>     --JALR
          aluSel <= "0000";
    when "0110111" =>     --LUI
          aluSel <= "0000";
    when "0010111" =>     --AUIPC
          aluSel <= "0001";
    when "0000011" =>     --Load type
          aluSel <= "0001";
        case func3 is
            when "000" =>   --LB
            when "001" =>   --LH
            when "010" =>   --LW
            when "100" =>   --LBU
            when "101" =>   --LHU
        end case;
          
    when "0100011" =>     --Store type
          aluSel <= "0001";
        case func3 is
            when "000" =>   -- SB
            when "001" =>   -- SH
            when "010" =>   -- SW
         end case;
         
    when "0010011" =>     --I_imm type
        case func3 is
            when "000" =>   -- ADDI
              aluSel <= "0001";
            when "001" =>   -- SLLI
              aluSel <= "0110";
            when "010" =>   -- SLTI
              aluSel <= "1011";
            when "011" =>   -- SLTIU
              aluSel <= "1101";
            when "100" =>   -- XORI
              aluSel <= "0101";
            when "101" =>
              if code(30)='0' then  --SRLI
                aluSel <= "0111";
              else                  --SRAI
                aluSel <= "1000";
              end if;
              
            when "110" =>   -- ORI
              aluSel <= "0100";
            when "111" =>   -- ANDI
              aluSel <= "0011";
    when "0110011" =>     --Register type
        case func3 is
           when "000" =>
             if code(30)='0' then --ADD
               aluSel <= "0001";
             else --SUB
               aluSel <= "0010";
             end if;
           when "001" =>    --SLL
             aluSel <= "0110";
           when "010" =>    --SLT
             aluSel <= "1011";
           when "011" =>    --SLTU
             aluSel <= "1101";
           when "100" =>    --XOR
             aluSel <= "0101";
           when "101" =>
             if code(30)='0' then --SRL
               aluSel <= "0111";
             else                 --SRA
               aluSel <= "1000";
             end if;
           when "110" =>    --OR
             aluSel <= "0100";
           when "111" =>    --AND
             aluSel <= "0011";
      -- Rajouter les syscall

    end case;
end process decode;


-- purpose: generates a synchronous output from the decoder
-- type   : sequential
-- inputs : clk, rst
-- outputs: many control signals
sync_out: process (clk, rst) is --Rajouter signaux de controle combi dans sensi
begin  -- process output
  if rst = '0' then                     -- asynchronous reset (active low)
    
  elsif clk'event and clk = '1' then    -- rising clock edge
    
  end if;
end process output;

end architecture str;

-------------------------------------------------------------------------------
