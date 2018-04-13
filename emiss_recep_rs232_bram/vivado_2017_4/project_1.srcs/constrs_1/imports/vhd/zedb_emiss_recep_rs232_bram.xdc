

## ----------------------------------------------------------------------------
## VGA Output - Bank 33
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN Y21  [get_ports {VGA_B[0]}];  # "VGA-B1"
#set_property PACKAGE_PIN Y20  [get_ports {VGA_B[1]}];  # "VGA-B2"
#set_property PACKAGE_PIN AB20 [get_ports {VGA_B[2]}];  # "VGA-B3"
#set_property PACKAGE_PIN AB19 [get_ports {VGA_B[3]}];  # "VGA-B4"
#set_property PACKAGE_PIN AB22 [get_ports {VGA_G[0]}];  # "VGA-G1"
#set_property PACKAGE_PIN AA22 [get_ports {VGA_G[1]}];  # "VGA-G2"
#set_property PACKAGE_PIN AB21 [get_ports {VGA_G[2]}];  # "VGA-G3"
#set_property PACKAGE_PIN AA21 [get_ports {VGA_G[3]}];  # "VGA-G4"
#set_property PACKAGE_PIN AA19 [get_ports {HSYNC}];  # "VGA-HS"
#set_property PACKAGE_PIN V20  [get_ports {VGA_R[0]}];  # "VGA-R1"
#set_property PACKAGE_PIN U20  [get_ports {VGA_R[1]}];  # "VGA-R2"
#set_property PACKAGE_PIN V19  [get_ports {VGA_R[2]}];  # "VGA-R3"
#set_property PACKAGE_PIN V18  [get_ports {VGA_R[3]}];  # "VGA-R4"
#set_property PACKAGE_PIN Y19  [get_ports {VSYNC}];  # "VGA-VS"

## ----------------------------------------------------------------------------
## User LEDs - Bank 33
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN T22 [get_ports {ld0}];  # "LD0"
#set_property PACKAGE_PIN T21 [get_ports {ld1}];  # "LD1"
#set_property PACKAGE_PIN U22 [get_ports {ld2}];  # "LD2"

## Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard.
#set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {pb_l}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {pb_r}];  # "BTNR"
# set_property PACKAGE_PIN T18 [get_ports {sw6}];  # "BTNU"
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];



# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ----------------------------------------------------------------------------
set_property PACKAGE_PIN Y9 [get_ports {Clk}];  # "GCLK"
# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];


#set_property PACKAGE_PIN V18 [get_ports {VGA_R[0]}]
##NET VGA_R[0]
#set_property PACKAGE_PIN V19 [get_ports {VGA_R[1]}]
##NET 
#set_property PACKAGE_PIN U20 [get_ports {VGA_R[2]}]
##NET 
#set_property PACKAGE_PIN V20 [get_ports {VGA_R[3]}]
##NET 
#set_property PACKAGE_PIN V22 [get_ports {VGA_G[4]}]

#set_property PACKAGE_PIN T22 [get_ports {LD0}];  # "LD0"
set_property PACKAGE_PIN T22 [get_ports {ledr[0]}];  # "LD0"

set_property PACKAGE_PIN T21 [get_ports {ledr[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {ledr[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {ledr[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {ledr[4]}];
set_property PACKAGE_PIN W22 [get_ports {ledr[5]}]
set_property PACKAGE_PIN U19 [get_ports {ledr[6]}]
set_property PACKAGE_PIN U14 [get_ports {ledr[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ledr[0] ledr[1] ledr[2] ledr[3] ledr[4] ledr[5] ledr[6] ledr[7] }]


set_property PACKAGE_PIN F22 [get_ports {sw[0]}]

set_property PACKAGE_PIN G22 [get_ports {sw[1]}]

set_property PACKAGE_PIN H22 [get_ports {sw[2]}]

set_property PACKAGE_PIN F21 [get_ports {sw[3]}]

set_property PACKAGE_PIN H19 [get_ports {sw[4]}]

set_property PACKAGE_PIN H18 [get_ports {sw[5]}]

set_property PACKAGE_PIN H17 [get_ports {sw[6]}]

set_property PACKAGE_PIN M17 [get_ports {sw[7]}]


set_property IOSTANDARD LVCMOS18 [get_ports {sw[0] sw[1] sw[2] sw[3] sw[4] sw[5] sw[6] sw[7] }]
# set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN W12 [get_ports {txd_obs}];  # "JB1"
#set_property PACKAGE_PIN V8 [get_ports {JB10}];  # "JB10"
set_property PACKAGE_PIN W11 [get_ports {txd_out}];  # "JB2"
set_property PACKAGE_PIN V10 [get_ports {rxd}];  # "JB3"
set_property PACKAGE_PIN W8 [get_ports {wren_obs}];  # "JB4"
#set_property PACKAGE_PIN V12 [get_ports {JB7}];  # "JB7"
#set_property PACKAGE_PIN W10 [get_ports {JB8}];  # "JB8"
#set_property PACKAGE_PIN V9 [get_ports {JB9}];  # "JB9"

set_property IOSTANDARD LVCMOS33 [get_ports {txd_obs txd_out rxd wren_obs}]

#CLK_ext : in std_logic;
#			  reset_n : in std_logic;
#           HSYNC : out std_logic;
#           VSYNC : out std_logic;
#--			  IMG : out std_logic;
#--			  clk_out :  out std_logic;
# --          X : out std_logic_vector(9 downto 0);
#				VGA_R : out std_logic_vector(2 downto 0);
#				VGA_G : out std_logic_vector(2 downto 0);
#				VGA_B
