#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/rollandl_local/vivado_17.4/SDK/2017.4/bin:/home/rollandl_local/vivado_17.4/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/rollandl_local/vivado_17.4/Vivado/2017.4/bin
else
  PATH=/home/rollandl_local/vivado_17.4/SDK/2017.4/bin:/home/rollandl_local/vivado_17.4/Vivado/2017.4/ids_lite/ISE/bin/lin64:/home/rollandl_local/vivado_17.4/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/rollandl_local/vivado_17.4/Vivado/2017.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/rollandl_local/vivado_17.4/Vivado/2017.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/cime-fmr/rollandl-fmr/xilinx/zedboard/emiss_recep_rs232_bram/vivado_2017_4/project_1.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log emiss_recep_rs232_bram.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source emiss_recep_rs232_bram.tcl -notrace


