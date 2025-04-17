#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=E:/soft_stup/SDK/2018.3/bin;E:/soft_stup/Vivado/2018.3/ids_lite/ISE/bin/nt64;E:/soft_stup/Vivado/2018.3/ids_lite/ISE/lib/nt64:E:/soft_stup/Vivado/2018.3/bin
else
  PATH=E:/soft_stup/SDK/2018.3/bin;E:/soft_stup/Vivado/2018.3/ids_lite/ISE/bin/nt64;E:/soft_stup/Vivado/2018.3/ids_lite/ISE/lib/nt64:E:/soft_stup/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='F:/work_panyanjiao/2306_yth_pingguban/DA_tiaoshi/project_vivado18.3_YTH2_ADDA_xdc/project_1/project_1.runs/ADC_lmk04828_ld_1_synth_1'
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

EAStep vivado -log ADC_lmk04828_ld_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ADC_lmk04828_ld_1.tcl
