onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/clock
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/resetn
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/address
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/read
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/readdata
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/write
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/writedata
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/chipselect
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/in_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/in_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/output_reg
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/out_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/cipher_key
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/prev_cipher_key
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/write_count
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/AAD_size
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/plain_text_size
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/input_states
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/command_word
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/status_word
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/sig_inp
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/sig_outp
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/command_start
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/write_done
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/read_done
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/ready_to_out
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/CURR_STATE
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/NEXT_STATE
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/key_reset
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/ready_for_inp
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/out_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/tag_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/CURR_STATE
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/NEXT_STATE
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/curr_plain_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/curr_cipher_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aad_size
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/plain_text_size
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/actual_plain_text_size
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/no_of_extra_zeroes
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_initial_calc
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/h_value
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/h_ready
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/cipher_key
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/key_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/IV_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/IV_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/size_word
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_input_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_counter
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/start_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/last_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/data_size_set
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aad_written
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/plain_text_written
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/trigger_key_change_reset
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/key_reset_counter
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/tag
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/tag_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/AAD
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/AAD_store_counter
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/AAD_input_counter
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_in_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_wrreq
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_rdreq
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_rddata
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_full
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_empty
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_sclr
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/inp_fifo_usedw
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_in_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_wrreq
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_rdreq
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_rddata
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_full
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_empty
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_sclr
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/outp_fifo_usedw
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/data_in_queue
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_pipe_counter
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/temp_cipher_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/GF_MUL_in_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/GF_MUL_in_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/cipher_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/mult_in
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/out_mult
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/pipe_ready
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/done_signal
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/mult_result_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/temp_multH_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/multiplier_in_data
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/cipher_text_data_available
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/zero_cipher_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/zero_cipher_text_valid
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/init_start_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/init_last_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_start_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/aes_last_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/all_output_cipher_text_sent
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/one_array
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/output_state_rotation
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/tag_generation_stage
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/is_last_pipe_data_out
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/out_read_set
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/ready_text
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/done_conversion
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/memory_ready
add wave -noupdate -radix hexadecimal /reg32_avalon_interface_tb/dut/dut0/key_storage_indicator
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {914297254 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {2100 us}
