------------------------------------
--
--		Cime RR le 2/09/2016
--
--		IP de reception donnees RS232 8 bit, parité paire 1 stop bit
--
--		vitesse ajustable via recep_rs232 (ligne 37) AVEC hologe à 50 MHz!!!
--		x1B2 ==> 115200 bds	: d434
--    x1458  ==> 9600 bds	: d5208
--    etc...
--
--		La diode LEDR0 s'allume si erreur de parité
--
--		Nota : A 115200 bds : suite à la programmation du FPGA
--		reset actif à '0' (via KEY0 sur carte DE1) 
--		indispensable sinon erreurs sur les 2 premiers octets transmis   
--		OK a 9600 bds
--    
--		Vitesse max uert PC sous Linux : 9600bds
--
--		data_load signale la réception d'un octet
--		data-bit signale la réception d'un bit
-- 
-------------------------------------
library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.numeric_std.ALL;  

-- use IEEE.STD_LOGIC_unsigned.ALL;

--library IEEE ;
--use IEEE.std_logic_1164.ALL ;
---- use IEEE.STD_LOGIC_ARITH.ALL;

--use IEEE.numeric_std.ALL;  
---- use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity recep_rs232 is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
					rxd                  	: in STD_LOGIC ;
					data_load					: out STD_LOGIC;
					bit_load						: out STD_LOGIC;
                    data_mem                : out STD_LOGIC_VECTOR(7 downto 0);
--					wraddress_bram           : out unsigned(3 downto 0);               
               err_parite              : out STD_LOGIC); 
end recep_rs232;

architecture A of recep_rs232 is

-- CONSTANT rs232_speed : unsigned(15 downto 0):= x"28B0";  -- 28B0 => 9600 bds -- clock 100 MHz
CONSTANT rs232_speed : unsigned(15 downto 0):= x"0364";  -- 0364 => 115200 bds -- clock 100 MHz

type STATE is (Att_start, Att_milieu_start, Att_milieu_data, Recep_data, Att_stop, Att_pre_start);  --
signal Current_State, Next_State  : STATE ;
signal	rxd_syn			: std_logic;
signal Tap_Number, Next_Tap_Number : unsigned(15 downto 0) ;
signal ind_w1, Next_ind_w1 : unsigned(3 downto 0) ;
--signal nxt_wr_ad_bram,wr_ad_bram : unsigned(3 downto 0) ;
signal w1, nxt_w1,w2, nxt_w2 : STD_LOGIC_VECTOR(11 downto 0) ;  -- stockage du registre reception start + B0-B7 + parite + stop
signal epar, nxt_epar, data_ld, nxt_data_ld	: std_logic;
signal b_ld, nxt_b_ld	: std_logic;

begin
	P_STATE:process(Clk)
	begin
		if (Clk='1' and Clk'EVENT ) then
		   if (rst='1') then 
			 Current_State <= Att_start ;
			 rxd_syn <= '1'; 							-- Tres important start a 0 signale un transfert
			 Tap_Number <= x"0000" ; ind_w1 <= "0000"; epar <= '0';
			 w1 <= x"000";w2 <= x"000"; data_ld <='0'; b_ld <='0';
--			 wr_ad_bram <= "0001";			 
		   else
		    Current_State <= Next_State ;
		    rxd_syn <= rxd;
			 Tap_Number <= Next_Tap_Number ; ind_w1 <= next_ind_w1;
			 w1 <= nxt_w1;w2 <= nxt_w2;  epar <= nxt_epar; data_ld <= nxt_data_ld; b_ld <= nxt_b_ld;
--			  wr_ad_bram <= nxt_wr_ad_bram;
		   end if ;
		end if;
	end process P_STATE;

	P_FSM:process(Current_State, Tap_Number, ind_w1, rxd_syn, epar, w1, w2, data_ld, b_ld)
	begin
  	 
			 Next_Tap_Number <= Tap_Number ;
			 Next_ind_w1 <= ind_w1;  nxt_data_ld <= data_ld; nxt_b_ld <= b_ld;
			 nxt_epar <= epar; nxt_w1 <= w1; nxt_w2 <= w2;
			 
  	
	case Current_State is 
	
 		 when Att_start =>
 		     nxt_data_ld <='0';	
            if (rxd_syn='1') then	 
				 Next_State <=Att_start;
			   else
 				 Next_State <=Att_milieu_start;	
				 Next_Tap_Number <= (rs232_speed/2); -- 0EA 	-- chargement de la valeur pour atteindre le milieu de start
				 Next_ind_w1 <= "0000";	
			   end if;
			
		 when Att_milieu_start =>	 
		     if (Tap_Number=unsigned'(x"000") ) then
		 --		     if (Tap_Number=unsigned'(x"000") and rxd_syn='0') then -- IMPORTANT tester rxd_syn == '0' 
			   Next_Tap_Number <= rs232_speed;	-- 1D4 -- chargement pour atteindre le milieu du prochain bit
				Next_State <=Att_milieu_data;		               
 			   else	
    			Next_Tap_Number <= Tap_Number - x"0001"; -- decrementation 
				Next_State <=Att_milieu_start;				
			  end if;					
			
		 when Att_milieu_data =>
	         if (Tap_Number= unsigned'(x"0000")) then		 
			    Next_Tap_Number <= rs232_speed;	-- chargement pour atteindre le milieu du prochain bit
				 nxt_w1(10) <= rxd_syn; nxt_b_ld <= '1';	 -- lecture rxd_syn
				 nxt_w1(9 downto 0) <= w1(10 downto 1);	 -- et decalage*				
				 Next_State <=Recep_data;		               
 			   else	
    			 Next_Tap_Number <= Tap_Number - x"001"; -- decrementation 
				 Next_State <=Att_milieu_data;				
			  end if;
				 						
		when  Recep_data => 
		         nxt_b_ld <= '0';	
				 if ( ind_w1 = unsigned'(x"009" )) then -- atteinte du bit parite?
			       Next_State <= Att_stop;
					else					 
					 Next_ind_w1 <= ind_w1 + "0001";	 -- incrementation index w1		
					 Next_State <= Att_milieu_data;				 
			     end if;
				  				
		when Att_stop =>
--			if (  w2(10) = (w2(2) xor w2(3) xor w2(4) xor w2(5) xor w2(6) xor w2(7) xor w2(8) xor w2(9)) ) then	 
--				 nxt_epar <= '0';
--			 else
--				 nxt_epar <= '1';						-- erreur de parite
--			 end if;
--			 nxt_epar <= w2(10) xor (w2(2) xor w2(3) xor w2(4) xor w2(5) xor w2(6) xor w2(7) xor w2(8) xor w2(9));
			 if (rxd_syn='1') then					-- attente STOP a 1 pour continuer
					nxt_w2(10 downto 1)	<= 	w1(9 downto 0);							
					Next_State <= Att_pre_start;
			 else
					Next_State <= Att_stop;
			 end if;	 

		when Att_pre_start =>
			 nxt_data_ld <='1';					-- data_load indique la validite de data_mem (retard / chargement de w1)
			 nxt_w1 <= x"000";
-- 			 nxt_wr_ad_bram(3 downto 0) <= wr_ad_bram(3 downto 0) + x"1";  -- incr. addr. a la reception d'un octet
			 Next_State <= Att_start;
			 
 	 end case;
	 
 			 
	 
 	 end process P_FSM;
 
 data_load <= data_ld;
 bit_load <= b_ld;
-- wraddress_bram <= conv_std_logic_vector(wr_ad_bram,4);
 -- wraddress_bram <= wr_ad_bram;
 data_mem(7 downto 0) <=  w2(9 downto 2); 
 -- err_parite <= nxt_epar; 
 err_parite <= w2(10) xor (w2(2) xor w2(3) xor w2(4) xor w2(5) xor w2(6) xor w2(7) xor w2(8) xor w2(9)); 
end A;

