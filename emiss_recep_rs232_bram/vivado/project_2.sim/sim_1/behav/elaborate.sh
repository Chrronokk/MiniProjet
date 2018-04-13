#!/bin/bash -f
xv_path="/softslin/vivado_17.1/Vivado/2017.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto b72e385810a6403da2ca9328a23a618e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip -L xpm --snapshot recep_rs232_vhd_tst_behav xil_defaultlib.recep_rs232_vhd_tst -log elaborate.log
