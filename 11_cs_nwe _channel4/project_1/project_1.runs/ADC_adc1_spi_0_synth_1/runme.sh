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
  PATH=D:/soft_stup/SDK/2018.3/bin;D:/soft_stup/Vivado/2018.3/ids_lite/ISE/bin/nt64;D:/soft_stup/Vivado/2018.3/ids_lite/ISE/lib/nt64:D:/soft_stup/Vivado/2018.3/bin
else
  PATH=D:/soft_stup/SDK/2018.3/bin;D:/soft_stup/Vivado/2018.3/ids_lite/ISE/bin/nt64;D:/soft_stup/Vivado/2018.3/ids_lite/ISE/lib/nt64:D:/soft_stup/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='F:/work_panyanjiao/02_yth_pingguban/8T8R/project_vivado18.3_YTH2_ADDA_pgb4_3/project_1/project_1.runs/ADC_adc1_spi_0_synth_1'
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

EAStep vivado -log ADC_adc1_spi_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source ADC_adc1_spi_0.tcl
