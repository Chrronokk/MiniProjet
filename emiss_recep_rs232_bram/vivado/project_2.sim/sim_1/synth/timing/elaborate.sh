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
ExecStep $xv_path/bin/xelab -wto b72e385810a6403da2ca9328a23a618e -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot recep_rs232_vhd_tst_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 -pulse_e 0 -pulse_int_e 0 xil_defaultlib.recep_rs232_vhd_tst xil_defaultlib.glbl -log elaborate.log
