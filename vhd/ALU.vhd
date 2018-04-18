library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU is

  port (
    a, b   : in  std_logic_vector(31 downto 0);   -- sel
    sel    : in  std_logic_vector(3 downto 0);    -- selection
    sortie : out std_logic_vector(31 downto 0));  -- sortie

end entity ALU;

architecture Arch of ALU is

begin  -- architecture Arch

  -- purpose: calcul de la sortie
  -- type   : combinational
  -- inputs : a,b
  -- outputs: sortie
  comb : process (a, b, sel) is
  begin  -- process comb
    sortie <= (others => '0');
    case sel is
      when "0001" =>
        sortie <= std_logic_vector(unsigned(a)+unsigned(b));  --addition
      when "0010" =>
        sortie <= std_logic_vector(unsigned(a)-unsigned(b));  --soustraction
      when "0011" =>
        sortie <= a and b;              --et logique
      when "0100" =>
        sortie <= a or b;               --ou logique
      when "0101" =>
        sortie <= a xor b;              -- ou exclusif logique
      when "0110" =>
        sortie(31 downto to_integer(unsigned(b(4 downto 0)))) <= a(31-to_integer(unsigned(b(4 downto 0))) downto 0);  -- décalage à gauche logique
      when "0111" =>
        sortie((31-to_integer(unsigned(b(4 downto 0)))) downto 0) <= a(31 downto to_integer(unsigned(b(4 downto 0))));  -- décalage à droite logique
      when "1000" =>
        sortie(31)                                                <= a(31);
        sortie((31-to_integer(unsigned(b(4 downto 0)))) downto 0) <= a(31 downto to_integer(unsigned(b(4 downto 0))));  --décalage à droite arithmétique 
      when "1001" => --égalité
        if(a = b) then
          sortie(0) <= '1';
        else
          sortie <= (others => '0');
        end if;  
      when "1010" => --plus grand que ou égal signed
        if(signed(a) >= signed(b)) then
          sortie(0) <= '1';
        else
          sortie <= (others => '0');
        end if;  
      when "1011" => --plus petit que signed
        if(signed(a) < signed(b)) then
          sortie(0) <= '1';
        else
          sortie <= (others => '0');
        end if;  
      when "1100" => --plus grand que ou égal unsigned
        if(unsigned(a) >= unsigned(b)) then
          sortie(0) <= '1';
        else
          sortie <= (others => '0');
        end if;  
      when "1101" => --plus petit que unsigned
        if(unsigned(a) < unsigned(b)) then
          sortie(0) <= '1';
        else
          sortie <= (others => '0');
        end if;  
      when "1110" =>
        sortie <= std_logic_vector(unsigned(a)+unsigned(b));  --addition
        sortie(0)<= '0';                --clear lsb
      when others =>
        sortie <= b;
    end case;
  end process comb;

end architecture Arch;
