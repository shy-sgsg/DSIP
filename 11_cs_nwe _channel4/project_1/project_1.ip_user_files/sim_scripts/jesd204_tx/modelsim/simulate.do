onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L jesd204_v7_2_4 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.jesd204_tx xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {jesd204_tx.udo}

run -all

quit -force
