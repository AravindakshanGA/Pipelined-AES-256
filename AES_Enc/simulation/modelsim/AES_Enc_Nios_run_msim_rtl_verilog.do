transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/queue.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/subWord.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/subBytes.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/shiftRows.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/s_box_maker.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/s_box.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/mixColumns.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/keyExpansion.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/AES_round.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/AES_Pipe_Enc.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/AES_last_round.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/AES_Cipher.v}
vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/addRoundKey.v}
vlib aes_enc_core
vmap aes_enc_core aes_enc_core

vlog -vlog01compat -work work +incdir+D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc {D:/IIT-B/Academics/Sem-2/VLSI-Design-Lab/Course_Project/FINAL/AES_Enc/AES_Pipe_Enc_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L aes_enc_core -voptargs="+acc"  AES_Pipe_Enc_tb

add wave *
view structure
view signals
run 10 us
