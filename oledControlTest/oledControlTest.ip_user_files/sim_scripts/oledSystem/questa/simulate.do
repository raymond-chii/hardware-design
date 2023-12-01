onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib oledSystem_opt

do {wave.do}

view wave
view structure
view signals

do {oledSystem.udo}

run -all

quit -force
