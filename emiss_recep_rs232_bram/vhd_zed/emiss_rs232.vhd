------------------------------------
--
--		Cime RR le 12/05/2017
--
--		Exemple pour carte DE1 altera (FPGA Cyclone 2 EP2C20F484C7)
--
--		IP d'emission donnees RS232 8 bit, pas de parité 1 stop bit
--
--    Nota: Par défaut transfert de bursts de 4k valeurs ASCII cycle
--    ABCDEFGHIJKLMNOPABCDEFGHIJKLMNOP
--    avec pauses d'environ 0,5 s à 115200 bds
--
--		vitesse ajustable via recep_rs232 (ligne 37)
--		x1B2 ==> 115200 bds	: d434
--    x1458  ==> 9600 bds	: d5208
--     x	==> 38400 bds : d...
--    etc...
--
--		Nota : A 115200 bds : suite à la programmation du FPGA
--		reset actif à '0' (via KEY0 sur carte DE1) 
--		indispensable sinon erreurs sur les 2 premiers octets transmis   
--		OK a 9600 bds
--    
--		Vitesse max uart PC sous Linux : 115200bds
--
--	   reception sous Linux 
--    picocom -b 115200 /dev/ttyS0	 (avec cable série Subd 9)
--    picocom -b 115200 /dev/ttyUSB0 (avec interface FTDI USB-UART sur PIN 40 GPIO-1)
--
--    transfert dans fichier 
--    cat /dev/ttyS0 > recep.txt
--    puis ouverture du fichier via vi
--    option :%!xxd pour affichage en hexa
--
-------------------------------------
library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

--library IEEE ;
--use IEEE.std_logic_1164.ALL ;
----use IEEE.STD_LOGIC_ARITH.ALL;

--use IEEE.numeric_std.ALL; 
 

--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity emiss_rs232 is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
--               sw9                  	: in STD_LOGIC ;
					sw                   	: in STD_LOGIC_VECTOR(7 downto 0);
               ledR                  	: out STD_LOGIC;
					q_bram 						: in STD_LOGIC_VECTOR(7 downto 0);
					raddress_bram 				: out STD_LOGIC_VECTOR(3 downto 0);
			   txd_obs                  	: out STD_LOGIC;	
			   txd_out                  	: out STD_LOGIC );
end emiss_rs232;

architecture A of emiss_rs232 is

CONSTANT rs232_speed : unsigned(15 downto 0):= x"0364"; --  364 => 115200  
--CONSTANT rs232_speed : unsigned(15 downto 0):= x"0002"; -- Pour simulation 


-- CONSTANT rs232_speed : unsigned(15 downto 0):= x"1458";  -- x1458  (milieu)=> 9600 bds
--CONSTANT rs232_speed : unsigned(15 downto 0):= x"1458";
--CONSTANT rs232_speed : unsigned(15 downto 0):= x"0002";  -- 10 => 9600 bds
-- CONSTANT reg_txd : unsigned(7 downto 0):= x"5A";  -- 

type STATE is (init0, init, start, emiss, data_emiss, stop, att, lec_pf_st, stop2, tempo_t);  --

--type STATE is (start, emission, stop, ad_max_att);  --
signal Current_State, Next_State  : STATE ;
signal baud_time, next_baud_time : unsigned(15 downto 0) ;
signal ind_txd, next_ind_txd : unsigned(3 downto 0) ; -- index de transmission 9 --> 1
signal txd, next_txd,lec_pf,n_lec_pf, sw9_sync	:  std_logic;
signal dp_ram1, next_dp_ram1  :  STD_LOGIC_VECTOR(7 downto 0) ; -- registre d'emission
signal dp_ram2, next_dp_ram2  :  STD_LOGIC_VECTOR(7 downto 0) ; -- registre d'emission
signal burst, next_burst  :  STD_LOGIC_VECTOR(15 downto 0) ; -- burst d'emission - 4 k
signal tempo, next_tempo  :  STD_LOGIC_VECTOR(23 downto 0) ; -- tempo entre 2 bursts

signal ad_bram, next_ad_bram	: STD_LOGIC_VECTOR(3 downto 0);

begin
	P_STATE:process(Clk)
	begin
		if (Clk='1' and Clk'EVENT ) then
		   if (rst='1') then 
			 Current_State <= init0 ;
--			 Current_State <= tempo_t ;
			 txd <= '1'; ind_txd <= x"0"; baud_time <= x"0000"; dp_ram2 <= x"00"; sw9_sync <= '0';
--			 dp_ram1 <= x"29";  -- depart de "0"
--			 dp_ram1 <= x"40";  -- depart de "A"
		    dp_ram1 <= x"00"; dp_ram2 <= x"00";
			 ind_txd <= "0000"; burst <= x"0000"; tempo <= x"000000"; ad_bram <= "0000"; lec_pf <= '0';
		   else
		    Current_State <= Next_State ;
		    txd <= next_txd; baud_time <= next_baud_time; dp_ram1 <= next_dp_ram1; dp_ram2 <= next_dp_ram2; sw9_sync <= sw(6);
			 ind_txd <= next_ind_txd; burst <= next_burst; tempo <= next_tempo; ad_bram <= next_ad_bram; lec_pf <= n_lec_pf;
		   end if ;
		end if;
	end process P_STATE;

	P_FSM:process(Current_State, ind_txd, txd, baud_time, dp_ram1, dp_ram2, sw, sw9_sync, burst, tempo, ad_bram, q_bram, lec_pf)
	begin
  	 		 Next_ind_txd <= ind_txd; next_baud_time <= baud_time; 
			 next_txd <= txd; next_dp_ram1 <= dp_ram1; next_dp_ram2 <= dp_ram2; next_burst <= burst; 
			 next_tempo <= tempo; next_ad_bram <= ad_bram; n_lec_pf <= lec_pf;
  	
	case Current_State is 
	    
		 when init0 =>
		     next_ad_bram <= "0000"; -- positionner l'adr. à l'avance
		     if ( sw9_sync = '1') then
			   Next_State <= init;
			  else
			   Next_State <= init0;
			  end if;

		 when init =>
			  next_baud_time <= rs232_speed ;
			  next_txd <= '0'; 
			  next_ind_txd <= "1000";		-- valeur de depart de l'ind_txd

			  next_dp_ram1(7 downto 0) <= q_bram(7 downto 0);  -- on lit la sortie de la bram poids faible

			   Next_State <= start;
			  
 		 when start =>
			  next_dp_ram2 <= q_bram(7 downto 0);  -- on lit la sortie de la bram poids faible

		 	  next_txd <= '0';  -- START bit = 0 
		     if ( baud_time=unsigned'(x"0000") ) then
			   Next_baud_time <= rs232_speed;	-- 
				Next_State <= emiss;		               
 			   else	
    			next_baud_time <= baud_time - x"0001"; -- decrementation 
				Next_State <= start;				
			  end if;					
		
		 when emiss =>
			  next_txd <= dp_ram2(0);   -- poids faible transmis en premier	
		     if ( baud_time=unsigned'(x"0000") ) then
				Next_State <= data_emiss;
--				next_ad_bram <= "00000"; -- positionner l'adr. à l'avance
 			   else	
    			next_baud_time <= baud_time  - x"0001"; -- decrementation pendant 1 baud
				Next_State <= emiss;				
			  end if;	
			  
		when data_emiss =>
		     if (ind_txd = unsigned'(x"1" )) then
				Next_State <= stop;
				Next_baud_time <= rs232_speed;
 			  else	
    			next_ind_txd <= ind_txd  - "0001"; -- decrementation pour decalage			
				next_dp_ram2(6 downto 0) <= dp_ram2(7 downto 1);	    -- et decalage
--				next_dp_ram(7) <= '0';
				next_dp_ram2(7) <= dp_ram2(0);  -- on conserve l'etat de dp_ram avec le rebouclage
				Next_State <=emiss;				
			  end if;
		     next_baud_time <= rs232_speed ;					  
		
		 when stop =>
			  next_txd <= '1';   -- STOP bit = 1		 	  
		     if ( baud_time=unsigned'(x"0000") ) then
				Next_State <= att;
--				next_txd <= '0'; 						-- marqueur pour le debug
            Next_baud_time <= rs232_speed;	               
 			   else	
    			next_baud_time <= baud_time - "0001"; -- decrementation pendant 1 baud
				Next_State <= stop;
			  end if;	

		when att =>
			  if ( baud_time=unsigned'(x"0000") ) then
				 Next_State <= lec_pf_st;
--				 next_txd <= '0'; 						-- marqueur pour le debug
 			   else	
    			 next_baud_time <= baud_time  - x"0001"; -- decrementation 
				 Next_State <= att;
				 next_txd <= '1'; 
			  end if;
			  
		 when lec_pf_st	=>	
				   Next_State <= stop2; --> Sinon on continue
					next_ad_bram <= ad_bram + "0001";	-- et on incrémente l'adr. RAM
				
		
		when stop2 =>
		      next_txd <= '1'; 
				
--				if (burst=x"0FFF") then   -- taille burst 4k
			   if (burst=x"000E") then   -- taille burst 15

--			   if (burst=x"0005") then   -- taille burst 6
--			   if (burst=x"0004") then   -- taille burst 5
--			   if (burst=x"0002") then   -- taille burst 3
--			   if (burst=x"0001") then   -- taille burst 2

--				if (burst=x"0000") then   -- taille burst 1
				 Next_State <= tempo_t;
				 next_ad_bram <= "0000"; -- positionner l'adr. à l'avance
				 next_tempo <= x"000000";
				else
		       Next_State <= init;
				 next_burst <= burst + x"001";
				end if;
								
		when tempo_t =>
				if (tempo=x"FFFFFF" and sw9_sync ='1') then			-- temporisation d'environ une seconde, temps mort pour buffer Linux
				 Next_State <= init0;
				 next_burst <= x"0000";				-- on relance toute la sequence
				 n_lec_pf <= '0';next_txd <= '1'; next_ind_txd <= x"0"; next_baud_time <= x"0000"; next_dp_ram2 <= x"00";  -- reinit de tous les registre	 
				else
		       Next_State <= tempo_t;
				 next_tempo <= tempo + x"000001";
				 next_ind_txd <= "0000";
--				 n_lec_pf <= '0';next_txd <= '1'; next_ind_txd <= x"0"; next_baud_time <= x"0000"; next_dp_ram2 <= x"00";  -- reinit de tous les registre	 
				end if;
				
				Next_State <= tempo_t;   -- FIN cul de sac (si pas commente)
				
 	 end case;
				 							 
 	txd_out <=   txd; ledR <= not txd;	txd_obs <= txd;	 
	raddress_bram <= ad_bram; 
	
 end process P_FSM;

end A;

