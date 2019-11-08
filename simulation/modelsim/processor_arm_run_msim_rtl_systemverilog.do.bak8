transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/writeback.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/sl2.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/signext.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/regfile.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/processor_arm.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/mux2.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/memory.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/maindec.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/imem.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/flopr.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/fetch.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/execute.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/decode.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/datapath.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/controller.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/aludec.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/alu.sv}
vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/adder.sv}
vcom -93 -work work {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/dmem.vhd}

vlog -sv -work work +incdir+/home/fjz0112/Escritorio/PipelinedProcessorPatterson {/home/fjz0112/Escritorio/PipelinedProcessorPatterson/processor_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  processor_tb

add wave *
view structure
view signals
run -all
