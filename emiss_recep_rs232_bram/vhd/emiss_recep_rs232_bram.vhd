------------------------------------
--
--		Cime RR le 6/03/2018
--
--		Exemple pour carte DE1 altera (FPGA Cyclone 2 EP2C20F484C7)
--                   carte Zedboard Xilinx (FPGA virtx 7 xc7z020 clg-484 )
--
--		IP d'emission/reception donnees RS232 8 bit, pas de parité 1 stop bit
--
--     Top :                    emiss_recep_rs232_bram.vhd
--     reception :              recep_rs232.vhd
--     gen adr ecriture Bram :  fsm_write.vhd
--     emission :               emiss_rs232.vhd
--     
--     fichier de contraintes pour Zedboard : zedb_emiss_recp_rs232_bram.xdc
--
--      Bench fourni :
--      recep_rs232_test.vhd (reception de "31" à 115200 bauds)
--
--      PC <--> BRAM FPGA
--
--    Paramètres BRAM FPGA :
--     composant genere sous vivado 2017,
--     IP catalog -> Mem & Storage elem -> RAM ROM BRAM -> Block Mem generator
--    Simple Dual Port RAM, Native, write first, always enabled , Load ini .coe file
--
--    
--    Nota: transfert du contenu BRAM - de taille paramétrable
--	  Nota: Par défaut transfert FPGA vers PC de bursts de 16 valeurs ASCII sur 8 bits
--    ABCDEFGHIJKLMNOPABCDEFGHIJKLMNOP
--    avec pauses d'environ 0,5 s à 115200 bds entre 2 salves.
--    Choix du mode burst/monocoup -fsm de emiss_rs232.vhd:
--    ligne 226 : "-- Next_State <= tempo_t;   -- FIN cul de sac (si pas commente)"
--
--    SW6 : autorisation emission  (écriture BRAM)
--    SW0 :     ""       reception (lecture BRAM)
--    BTNC : Reset
--
--		vitesse ajustable via recep_rs232 (ligne 37)
--		x364 ==> 115200 bds	: d434
--
--		reset actif à '0' (via BTNC sur carte Zedboard) 
--    
--		Vitesse max uart PC sous Linux : 115200bds
--
--	   reception sous Linux 
--    picocom -b 115200 /dev/ttyS0	 (avec cable série Subd 9)
--    picocom -b 115200 /dev/ttyUSB0 (avec interface FTDI USB-UART sur PIN 40 GPIO-1 si DE1 )
--
--    emission: les données tapées au clavier sont écrites dans les addresses
--    successives de la BRAM, le reset rétinitiale le compteur d'addresses
--
--    transfert dans fichier 
--    cat /dev/ttyS0 > recep.txt
--    puis ouverture du fichier via vi
--    option :%!xxd pour affichage en hexa
--
--    Rajout le 2/03/2018
--
--		IP recep_rs232
--		reception données envoyée par PC vers FPGA (DE1)
--    Procédure : avec picocom pour la liaison série
--						SW0 (auto écriture RAM)à 0 pour programmer la carte
--						Reset (BTN C) affiche le contenu par défaur de la BRAM 16 x 8b
--						soit : ABCDEFGHJKLMNOP 
--						SW0 à 1 : envoyer les codes ASCII depuis picocom (de 1 à 16 valeurs)
--						et faire un Reset (BTNC/KEY3), les valeurs écrites précdemment doivent apparaitre
--						grace à la procédure emiss_rs232
--
--     Connection du cable USB - Serie TTL 232 R 3v3 WE sur PMOD JB1 (Zedboard) 
--  RX sur JB1
--  TX sur JB3
--  ground PIN5 JB
--
-------------------------------------

library IEEE ;
use IEEE.std_logic_1164.ALL ;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_logic_unsigned.ALL;

--use IEEE.numeric_std.ALL; 
 

--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity emiss_recep_rs232_bram is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
			   sw                   	: in STD_LOGIC_VECTOR(7 downto 0);
               ledr                  	: out STD_LOGIC_VECTOR(7 downto 0);
			   txd_obs                  	: out STD_LOGIC;	
			   txd_out                  	: out STD_LOGIC; 
			   wren_obs                  	: out STD_LOGIC;
			   rxd								: in STD_LOGIC
				);
end emiss_recep_rs232_bram;

architecture A of emiss_recep_rs232_bram is

------ brochage Zedboard
--attribute LOC          		: string;
--attribute IOSTANDARD       : string;

---- Ne passe pas Ci-dessous, Cf ZYBO_Master.xdc
----attribute "sys_clk_pin -period"  : string;
----attribute "sys_clk_pin -waveform"  : string;
----attribute "sys_clk_pin -period" of signal CLK "8.00";  -- 125 MHz
----attribute "sys_clk_pin -waveform" of signal CLK "{0 4}";


--attribute LOC of Clk : signal is "Y9";
--attribute IOSTANDARD of Clk : signal is "LVCMOS33";

----attribute IOSTANDARD of CLK : signal is "LVCMOS33";
----create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports CLK]

--attribute LOC of rst : signal is "P16";
--attribute IOSTANDARD of rst : signal is "LVCMOS18";

--attribute LOC of sw  : signal is "M17,H17,H18,H19,F21,H22,G22,F22"; --
--attribute IOSTANDARD of sw: signal is "LVCMOS18";
----attribute LOC of ledr  : signal is "U14,U19,W22,V22,U21,U22,T21,T22"; -- PBS
----attribute IOSTANDARD  of ledr : signal is "LVCMOS33;  -- PBS !!!!

--attribute LOC of txd_obs  : signal is "W12"; --
--attribute IOSTANDARD of txd_obs : signal is "LVCMOS33";
--attribute LOC of txd_out  : signal is "W11"; --
--attribute IOSTANDARD of txd_out : signal is "LVCMOS33";
--attribute LOC of rxd  : signal is "V10"; --
--attribute IOSTANDARD of rxd : signal is "LVCMOS33";
--attribute LOC of wren_obs  : signal is "W8"; --
--attribute IOSTANDARD of wren_obs : signal is "LVCMOS33";



CONSTANT rs232_speed : unsigned(15 downto 0):= x"0364"; -- 364 => 115200 carte Zedboard !!! 


signal		data_bram,q_bram		 			: 	 STD_LOGIC_VECTOR(7 downto 0) ;
signal		raddress_bram,wraddress_bram	:   STD_LOGIC_VECTOR(3 downto 0) ;
signal		wren,ledr0,rxd_int   								:   std_logic;
signal		data_load,bit_load,err_parite	:	 std_logic;
signal 		data_mem								:	 STD_LOGIC_VECTOR(7 downto 0) ;
signal		txd_int  								:   std_logic;


component emiss_rs232 is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
--               sw9                  	: in STD_LOGIC ;
--					sw9_gpio                  	: in STD_LOGIC ;
					sw                   	: in STD_LOGIC_VECTOR(7 downto 0);
               ledR                  	: out STD_LOGIC;
					q_bram						: in STD_LOGIC_VECTOR(7 downto 0);
					raddress_bram				: out STD_LOGIC_VECTOR(3 downto 0);
			   txd_obs                  	: out STD_LOGIC;	
			   txd_out                  	: out STD_LOGIC );
end component;

component recep_rs232 is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
					rxd                  	: in STD_LOGIC ;
					data_load					: out STD_LOGIC;
					bit_load						: out STD_LOGIC;
               data_mem                : out STD_LOGIC_VECTOR(7 downto 0);
--					wraddress_bram          : out STD_LOGIC_VECTOR(3 downto 0);
               err_parite              : out STD_LOGIC); 
end component;

component bram_16x8 IS
	PORT
	(
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end component;

--component bram_16x8 IS
--	PORT
--	(  a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--    dpra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    clk : IN STD_LOGIC;
--    we : IN STD_LOGIC;
--    dpo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
--	);
--end component;
	 
component fsm_write is
        port(  Clk                     : in STD_LOGIC ;
               rst                  	: in STD_LOGIC ;
			   data_load					: in STD_LOGIC;
               bram_address      : out STD_LOGIC_VECTOR(3 downto 0)				
					);
end component;


begin

-- wren <= '0';
wren <= data_load and sw(0); -- si SW0:'0' pas d'ecriture RAM
wren_obs <= wren;
-- wren <= data_load;

-- wraddress_bram <= "00000";
-- data_bram <= x"0000";
data_bram(7 downto 0) <= data_mem(7 downto 0);

ledr(0) <= ledr0;
ledr(7) <= not rxd;
rxd_int  <= rxd;
ledr(1) <= err_parite;
ledr(2) <= data_load;

ledr(6 downto 3) <= wraddress_bram(3 downto 0);
txd_out <= rxd;

U1 : emiss_rs232
port map
        (           Clk         => Clk,  
                    rst     => rst,
					sw      => sw,
                    ledR    => ledr0,
					q_bram  => q_bram,
					raddress_bram => raddress_bram,
					txd_obs    => txd_obs,
					txd_out    => txd_int		);

U2 : recep_rs232
PORT map
	(               Clk    => Clk,  
                    rst     => rst,
					rxd     => rxd_int,
					data_load    => data_load,
					bit_load     => bit_load,
                    data_mem		 => data_mem,
                    err_parite 	 => err_parite    );
	
U3 : bram_16x8
PORT map           
     (      clka            => Clk,  
            wea(0)          => wren,
            addra           => wraddress_bram,
            dina            => data_bram,
            clkb            => Clk,  
            addrb           => raddress_bram,
            doutb           => q_bram    );

--U3 : bram_16x8
--PORT map 
--	(  a           => wraddress_bram,
--    d             => data_bram,
--    dpra          => raddress_bram,
--    clk           => Clk, 
--    we            => wren,
--    dpo           => q_bram    );
	 
	 
U4 : fsm_write
PORT map           
	(       Clk              => Clk,  
            rst              => rst,
            data_load        => data_load,
            bram_address     => wraddress_bram  );
					
end A;