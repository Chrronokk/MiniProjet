library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lib_VHDL;
use lib_VHDL.all;

entity Tb_program is
end Tb_program;

architecture A of Tb_program is

  component program_memory
    port(
      rst         : in  std_logic;      -- reset
      pc          : in  std_logic_vector(31 downto 0);   -- ligne à lire
      instruction : out std_logic_vector(31 downto 0));  -- code binaire de l'instruction


  end component;

-- Inputs
  signal sig_rst : std_logic                     := '1';
  signal sig_pc  : std_logic_vector(31 downto 0) := (others => '0');

-- Output
  signal sig_inst : std_logic_vector(31 downto 0) := (others => '0');
  
begin  -- Tb_program

  Tb_program : program_memory port map (
    rst         => sig_rst,
    pc          => sig_pc,
    instruction => sig_inst);

    -- purpose: bench programm memory
    -- type   : combinational
    -- inputs : 
    -- outputs: 
    bench : process
    begin  -- process bench
      sig_rst                <= '0';
      wait for 100 ns;
      sig_rst                <= '1';
      memory(0)(3 downto 0)  <= "1111";
      memory(1)(7 downto 0)  <= "11111111";
      memory(2)(15 downto 0) <= "1111111111111111";
      wait for 100 ns;
      sig_pc                 <= '0';
      wait for 100 ns;
      sig_pc                 <= '1';
      wait for 100 ns;
      sig_pc                 <= '2';
      wait for 100 ns;
      

      
      
    end process bench;



    end A;
