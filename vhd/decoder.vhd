-------------------------------------------------------------------------------
-- Title      : Decoder
-- Project    : 
-------------------------------------------------------------------------------
-- File       : decoder.vhd
-- Author     :   <antoine@localhost>
-- Company    : 
-- Created    : 2018-03-01
-- Last update: 2018-03-22
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
  signal opcode : std_logic_vector(6 downto 0);
  signal func3  : std_logic_vector(2 downto 0);


  --ALU control signals
  signal aluSel   : std_logic_vector(3 downto 0);  -- Selects the ALU operation


  --Regfile control signals
  signal reqRead1 : std_logic;          -- Requests a read on regfile
  signal reqRead2 : std_logic;          -- Requests a second read on regfile
  signal reqWrite : std_logic;          -- Requests a write on regfile
  
  --Memory control signals
  signal mem_access : std_logic;        -- Requests an access to the memory
  signal memRW : std_logic;             -- 0 for Read / 1 for Write
  signal memSize : std_logic_vector(1 downto 0);  -- Size of the memory access


  --Unclassified control signals
  signal aluE1Sel : std_logic_vector(2 downto 0);  -- Selects which signal enters E1
  signal aluE2Sel : std_logic_vector(1 downto 0);  -- Selects which signal enters E2
  
begin  -- architecture str


 
<<<<<<< HEAD
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
=======
  opcode <= code(6 downto 0);
  func3  <= code(14 downto 12);


  decode process : ()                   --Process combinatoire de décodage
                   
         begin

           --Default signal values

           --Regfile
           reqWrite <= '1';
           reqRead1 <= '1';
           reqRead2 <= '1';

           --ALU
           aluSel <= "0001";
           
           --Memory
           mem_access <= '0';
           memRW <= '0';
           memSize <= "01";
           
           --Others
           aluE1Sel <= "011";
           aluE2Sel <= "00";
           

           
           case opcode is

             when "1100011" =>          --Branch type
               reqWrite <= '0';
               case func3 is
                 when "000" =>          --BEQ
                   aluSel <= "1001";
                 when "001" =>          --BNE
                   aluSel <= "1001";
                 when "100" =>          --BLT
                   aluSel <= "1011";
                 when "101" =>          --BGE
                   aluSel <= "1010";
                 when "110" =>          --BLTU
                   aluSel <= "1101";
                 when "111" =>          --BGEU
                   aluSel <= "1100";
               end case;
               
             when "1101111" =>          --JAL
               aluSel   <= "0000";
               reqRead1 <= '0';
               reqRead2 <= '0';
               aluE1Sel <= "010";
             when "1100111" =>          --JALR
               aluSel   <= "0000";
               reqRead2 <= '0';
               aluE1Sel <= "010";
             when "0110111" =>          --LUI
               aluSel   <= "0000";
               reqRead1 <= '0';
               reqRead2 <= '0';
               aluE2Sel <= "01";
             when "0010111" =>          --AUIPC
               reqRead1 <= '0';
               reqRead2 <= '0';
               aluE1Sel <= "001";
               aluE2Sel <= "01";
               
             when "0000011" =>          --Load type
               reqRead2 <= '0';
               aluE1Sel <= "101";
               mem_access <= '1';
               case func3 is
                 when "000" =>          --LB
                 when "001" =>          --LH
                   memSize <= "10";
                 when "010" =>          --LW
                   memSize <= "11"
                 when "100" =>          --LBU
                 when "101" =>          --LHU
                   memSize <= "10";
               end case;
               
             when "0100011" =>          --Store type
               reqWrite <= '0';
               aluE1Sel <= "100";
               mem_access <= '1';
               memRW <= '1'
               case func3 is
                 when "000" =>          -- SB
                 when "001" =>          -- SH
                   memSize <= "10";
                 when "010" =>          -- SW
                   memSize <= "11";
               end case;
               
             when "0010011" =>             --I_imm type
               reqRead2 <= '0';
               case func3 is
                 when "000" =>             -- ADDI
                   aluE1Sel <= "101";
                 when "001" =>             -- SLLI
                   aluSel <= "0110";
                   aluE2Sel <= "01";
                 when "010" =>             -- SLTI
                   aluSel <= "1011";
                   aluE1Sel <= "001";
                 when "011" =>             -- SLTIU
                   aluSel <= "1101";
                   aluE1Sel <= "001";
                 when "100" =>             -- XORI
                   aluSel <= "0101";
                   aluE1Sel <= "001";
                 when "101" =>
                   aluE2Sel <= "01";
                   if code(30) = '0' then  --SRLI
                     aluSel <= "0111";
                   else                    --SRAI
                     aluSel <= "1000";
                   end if;
                   
                 when "110" =>             -- ORI
                   aluSel <= "0100";
                   aluE1Sel <= "001";
                 when "111" =>             -- ANDI
                   aluSel <= "0011";
                   aluE1Sel <= "001";
               end case;
             when "0110011" =>             --Register type
               case func3 is
                 when "000" =>
                   if code(30) = '0' then  --ADD
                   else                    --SUB
                     aluSel <= "0010";
                   end if;
                 when "001" =>             --SLL
                   aluSel <= "0110";
                 when "010" =>             --SLT
                   aluSel <= "1011";
                 when "011" =>             --SLTU
                   aluSel <= "1101";
                 when "100" =>             --XOR
                   aluSel <= "0101";
                 when "101" =>
                   if code(30) = '0' then  --SRL
                     aluSel <= "0111";
                   else                    --SRA
                     aluSel <= "1000";
                   end if;
                 when "110" =>             --OR
                   aluSel <= "0100";
                 when "111" =>             --AND
                   aluSel <= "0011";

               end case;


               -- Rajouter les syscall

               
           end case;
           
           
         end process decode;


-- purpose: generates a synchronous output from the decoder
-- type   : sequential
-- inputs : clk, rst
-- outputs: many control signals
                 sync_out : process (clk, rst) is
                 begin  -- process output
                   if rst = '0' then    -- asynchronous reset (active low)

                   elsif clk'event and clk = '1' then  -- rising clock edge

                   end if;
                 end process output;

         end architecture str;

-------------------------------------------------------------------------------
>>>>>>> 0a60617e58297ddaae0cb8ef1941f49701c0cf13
