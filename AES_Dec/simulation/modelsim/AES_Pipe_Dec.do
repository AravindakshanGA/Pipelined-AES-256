onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/CLK_PERIOD
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/reset
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/start
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/cipher_key
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/plain_text
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/AAD
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/IV
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/in_data
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/in_valid
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/ready_for_inp
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/key_reset
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/out_data
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/out_valid
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/tag
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/tag_valid
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/CURR_STATE
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/ready_to_out
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/clock
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/current_output_set
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/current_data_sent
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/all_output_cipher_text_sent
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/out_read_set
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/CURR_STATE
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/NEXT_STATE
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/curr_plain_text
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/curr_cipher_text
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/cipher_key
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/key_valid
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/pipe_counter
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/pipe_ready
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/start_conversion
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/last_conversion
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/ready_text
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/done_conversion
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_in_data
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_wrreq
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_rdreq
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_rddata
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_full
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_empty
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_sclr
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/inp_fifo_usedw
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_in_data
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_wrreq
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_rdreq
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_rddata
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_full
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_empty
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_sclr
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/outp_fifo_usedw
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/cipher_text
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/key_storage_indicator
add wave -noupdate -radix hexadecimal /AES_Pipe_Dec_tb/dut0/done_signal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9690000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 262
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
configure wave -timelineunits ps
update
WaveRestoreZoom {9281521 ps} {9881789 ps}
