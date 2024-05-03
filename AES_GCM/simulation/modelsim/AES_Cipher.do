onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/clock
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/reset
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/cipher_key
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/current_plain_text
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/key_valid
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/aes_initial_calc
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/start_conversion
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/last_conversion
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/cipher_text
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/ready_text
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/pipe_ready
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/done_conversion
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/h_value
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/input_block
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/CURR_STATE
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/NEXT_STATE
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/out_key
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/complete_expansion
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/out_data
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/out_ready
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/s_box_ready
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/done_signal
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/input_data_to_pipe
add wave -noupdate -radix unsigned /AES_Cipher_tb/dut0/counter
add wave -noupdate -radix hexadecimal /AES_Cipher_tb/dut0/input_block
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6689810 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 246
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
WaveRestoreZoom {6196795 ps} {7127411 ps}
