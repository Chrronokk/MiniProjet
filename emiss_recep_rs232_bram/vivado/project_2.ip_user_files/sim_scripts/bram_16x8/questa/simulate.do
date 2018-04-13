onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bram_16x8_opt

do {wave.do}

view wave
view structure
view signals

do {bram_16x8.udo}

run -all

quit -force
