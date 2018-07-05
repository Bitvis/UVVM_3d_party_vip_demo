do ../script/compile_uvvm.do
do ../script/compile_src.do

vlib bitvis_vip_gpio
vmap work ./bitvis_vip_gpio
vcom -2008 -work bitvis_vip_gpio ../tb/gpio_vip_tb.vhd
vsim gpio_vip_tb
run -all
quit -f