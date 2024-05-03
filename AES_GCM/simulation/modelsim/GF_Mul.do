onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /GF_Mul_tb/clock
add wave -noupdate -radix hexadecimal /GF_Mul_tb/reset
add wave -noupdate -radix hexadecimal /GF_Mul_tb/in_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/in_valid
add wave -noupdate -radix hexadecimal /GF_Mul_tb/h_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/h_valid
add wave -noupdate -radix hexadecimal /GF_Mul_tb/memory_ready
add wave -noupdate -radix hexadecimal /GF_Mul_tb/out_mult
add wave -noupdate -radix hexadecimal /GF_Mul_tb/done_calc
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/CURR_STATE
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/NEXT_STATE
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/table_number
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/counter
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/start_multiply
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/done_multiply
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/out_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/x_value
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/in_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/mult_in_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/iter
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/calc_done
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/mult_counter
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/rd_enable
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_enable
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/rd_addr
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_addr
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/mem_data
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/rd_enable
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_enable
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/rd_addr
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_addr
add wave -noupdate -radix hexadecimal /GF_Mul_tb/dut0/wr_data
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[31]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[30]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[29]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[28]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[27]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[26]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[25]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[24]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[23]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[22]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[21]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[20]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[19]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[18]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[17]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[16]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[15]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[14]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[13]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[12]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[11]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[10]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[9]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[8]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[7]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[6]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[5]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[4]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[3]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[2]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[1]/dut_ram/memblock}
add wave -noupdate -radix hexadecimal {/GF_Mul_tb/dut0/mult_block[0]/dut_ram/memblock}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1351797642 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 289
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1351629646 ps} {1351964116 ps}
