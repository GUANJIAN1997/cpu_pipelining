transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /count16rle.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /dmem.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /sm.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /regfile.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /reg16.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /muxreg16.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /cpu.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /alu.v}
vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /imem.v}

vlog -vlog01compat -work work +incdir+/home/student/cpu\  {/home/student/cpu /cpu2_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  cpu_tb

add wave *
view structure
view signals
run -all
