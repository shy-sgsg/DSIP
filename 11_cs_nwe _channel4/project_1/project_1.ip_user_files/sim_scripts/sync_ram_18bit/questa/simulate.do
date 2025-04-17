onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sync_ram_18bit_opt

do {wave.do}

view wave
view structure
view signals

do {sync_ram_18bit.udo}

run -all

quit -force
