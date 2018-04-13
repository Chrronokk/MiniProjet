------------------------------------
--
--		Cime RR le 6/03/2018   OK sur Zedboad
--
--		IP de d'incrémentation addresses BRAM - remises à 0 sur rest
--
--		vitesse ajustable via recep_rs232 (ligne 37)
--		x1B2 ==> 115200 bds	: d434
--    x1458  ==> 9600 bds	: d5208
--    etc...
--
--	
--
--    La diode LEDR0 s'allume si erreur de parité
--
--		data_load signale la réception d'un octet
-- 
--
-------------------------------------

library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.std_logic_arith.ALL ;
use IEEE.std_logic_unsigned.ALL;

entity fsm_write is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
			   data_load					: in STD_LOGIC;
               bram_address      : out STD_LOGIC_VECTOR(3 downto 0)				
					);
end fsm_write;

architecture A of fsm_write is

--CONSTANT rs232_speed : unsigned(15 downto 0):= x"01B2"; -- 1B2 => 115200  

type STATE is (S0,S1);  --
signal Current_State, Next_State  : STATE ;
-- signal Tap_Number, Next_Tap_Number :signed(15 downto 0) ;
signal bram_ad, n_bram_ad	: std_logic_vector(3 downto 0);


begin
	P_STATE:process(Clk)
	begin
		if (Clk='1' and Clk'EVENT ) then
		   if (rst='1') then 
			 Current_State <= S0 ;
			 bram_ad <= x"0";
		   else
		    Current_State <= Next_State ;
			bram_ad <= n_bram_ad;
		   end if ;
		end if;
	end process P_STATE;

	P_FSM:process(Current_State, data_load, bram_ad)
	begin
  	 
			  n_bram_ad <= bram_ad;
  	
	case Current_State is 
	
 		 when S0 =>
		     Next_State <= S0;
            if (data_load='1') then
				n_bram_ad <= bram_ad + x"1"; -- incrementation	
				Next_State <= S1;              				
			   else
				 Next_State <= S0;
			   end if;
							
		 when S1 =>	 
		         if (data_load='0') then
                 Next_State <= S0;                              
                else
                  Next_State <= S1;
                end if;
			
 	 end case;
	 	 
 	 end process P_FSM;
 
  bram_address <= bram_ad;
  
end A;