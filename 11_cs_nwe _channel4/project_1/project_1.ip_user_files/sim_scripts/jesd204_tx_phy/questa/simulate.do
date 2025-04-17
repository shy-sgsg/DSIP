onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib jesd204_tx_phy_opt

do {wave.do}

view wave
view structure
view signals

do {jesd204_tx_phy.udo}

run -all

quit -force
