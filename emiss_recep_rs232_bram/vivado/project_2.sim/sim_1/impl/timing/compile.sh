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
echo "xvlog -m64 --relax -prj recep_rs232_vhd_tst_vlog.prj"
ExecStep $xv_path/bin/xvlog -m64 --relax -prj recep_rs232_vhd_tst_vlog.prj 2>&1 | tee compile.log
echo "xvhdl -m64 --relax -prj recep_rs232_vhd_tst_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj recep_rs232_vhd_tst_vhdl.prj 2>&1 | tee -a compile.log
