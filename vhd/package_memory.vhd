package programme is

  type   B32 is array (0 to 7) of std_logic_vector(31 downto 0);  -- mémoire interne
  constant prog : B32 := ;                  -- mémoire

  constant nop : std_logic_vector(31 downto 0) := (others => '0');
end programme;
