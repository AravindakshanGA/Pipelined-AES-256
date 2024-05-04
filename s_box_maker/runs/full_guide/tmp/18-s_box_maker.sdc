###############################################################################
# Created by write_sdc
# Fri May  3 20:31:52 2024
###############################################################################
current_design s_box_maker
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name __VIRTUAL_CLK__ -period 10.0000 
set_clock_uncertainty 0.2500 __VIRTUAL_CLK__
set_input_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {clk}]
set_input_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {ram_ready}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[0]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[1]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[2]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[3]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[4]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[5]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[6]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_addr[7]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[0]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[1]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[2]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[3]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[4]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[5]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[6]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_data[7]}]
set_output_delay 2.0000 -clock [get_clocks {__VIRTUAL_CLK__}] -add_delay [get_ports {wr_enable}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {ram_ready}]
set_load -pin_load 0.0334 [get_ports {wr_enable}]
set_load -pin_load 0.0334 [get_ports {wr_addr[0]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[1]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[2]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[3]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[4]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[5]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[6]}]
set_load -pin_load 0.0334 [get_ports {wr_addr[7]}]
set_load -pin_load 0.0334 [get_ports {wr_data[0]}]
set_load -pin_load 0.0334 [get_ports {wr_data[1]}]
set_load -pin_load 0.0334 [get_ports {wr_data[2]}]
set_load -pin_load 0.0334 [get_ports {wr_data[3]}]
set_load -pin_load 0.0334 [get_ports {wr_data[4]}]
set_load -pin_load 0.0334 [get_ports {wr_data[5]}]
set_load -pin_load 0.0334 [get_ports {wr_data[6]}]
set_load -pin_load 0.0334 [get_ports {wr_data[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
