transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/s_box_maker.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/subBytes.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/s_box.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/shiftRows.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/mixColumns.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/addRoundKey.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/subWord.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/keyExpansion.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/AES_round.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/AES_last_round.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/AES_Cipher.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/mult_ram.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/multiply_block.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/GF_Mul.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/AES_GCM_Enc.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/queue.v}
vlib aes_sys_core_designer
vmap aes_sys_core_designer aes_sys_core_designer

vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/AES_GCM/AES_GCM_Enc_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L aes_sys_core_designer -voptargs="+acc"  AES_GCM_Enc_tb

add wave *
view structure
view signals
run 2 ms
