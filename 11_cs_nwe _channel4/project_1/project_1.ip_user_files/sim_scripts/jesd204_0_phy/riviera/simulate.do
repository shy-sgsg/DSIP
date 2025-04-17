onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+jesd204_0_phy -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.jesd204_0_phy xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {jesd204_0_phy.udo}

run -all

endsim

quit -force
