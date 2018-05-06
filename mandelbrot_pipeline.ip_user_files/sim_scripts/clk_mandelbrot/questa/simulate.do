onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_mandelbrot_opt

do {wave.do}

view wave
view structure
view signals

do {clk_mandelbrot.udo}

run -all

quit -force
