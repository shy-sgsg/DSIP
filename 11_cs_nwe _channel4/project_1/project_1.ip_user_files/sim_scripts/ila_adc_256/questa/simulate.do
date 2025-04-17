onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ila_adc_256_opt

do {wave.do}

view wave
view structure
view signals

do {ila_adc_256.udo}

run -all

quit -force
