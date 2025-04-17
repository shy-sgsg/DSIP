onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib jesd204_tx_opt

do {wave.do}

view wave
view structure
view signals

do {jesd204_tx.udo}

run -all

quit -force
