onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram_dual_port_opt

do {wave.do}

view wave
view structure
view signals

do {ram_dual_port.udo}

run -all

quit -force
