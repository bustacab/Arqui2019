transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/writeback.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/sl2.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/signext.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/regfile.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/processor_arm.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/mux2.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/memory.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/maindec.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/imem.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/flopr.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/fetch.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/execute.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/decode.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/datapath.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/controller.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/aludec.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/alu.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/adder.sv}
vcom -93 -work work {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/dmem.vhd}

vlog -sv -work work +incdir+/home/fjz0112/Escritorio/EntreArqui/Arqui2019 {/home/fjz0112/Escritorio/EntreArqui/Arqui2019/processor_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  processor_tb

add wave *
view structure
view signals
run -all
