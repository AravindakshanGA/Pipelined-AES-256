* Cycle 0      Port All    0.00 ns:      : Idle cycle (no positive clock edge)
* Cycle 1      Port 0      0.00 ns:      : W data 1 address 00000011
* Cycle 2      Port 0      0.00 ns:      : W data 0 address 11111111 to write value
* Cycle 3      Port 0      0.00 ns:      : Clock only on port 0
* Cycle 4      Port 1      0.00 ns:      : R data 1 address 00000011 to set dout caps
* Cycle 5      Port 1      0.00 ns:      : R data 0 address 11111111 to check W0 worked
* Cycle 6      Port 1      0.00 ns:      : Clock only on port 1
* Cycle 7      Port All    0.00 ns:      : Idle cycle (if read takes >1 cycle)
* Cycle 8      Port 0      0.00 ns:      : W data 1 address 11111111 to write value
* Cycle 9      Port 0      0.00 ns:      : Clock only on port 0
* Cycle 10     Port 0      0.00 ns:      : W data 0 address 00000011 to clear din caps
* Cycle 11     Port 1      0.00 ns:      : Clock only on port 1
* Cycle 12     Port 1      0.00 ns:      : R data 0 address 00000011 to clear dout caps
* Cycle 13     Port 1      0.00 ns:      : R data 1 address 11111111 to check W1 worked
* Cycle 14     Port All    0.00 ns:      : Idle cycle (if read takes >1 cycle))
* Read ports 1
.meas tran delay_lh1 TRIG v(clk1) VAL=2.5 FALL=1 TD=0n TARG v(dout1_7) VAL=2.5 RISE=1 TD=0n

.meas tran delay_hl1 TRIG v(clk1) VAL=2.5 FALL=1 TD=0n TARG v(dout1_7) VAL=2.5 FALL=1 TD=0n

.meas tran slew_lh1 TRIG v(dout1_7) VAL=0.5 RISE=1 TD=0n TARG v(dout1_7) VAL=4.5 RISE=1 TD=0n

.meas tran slew_hl1 TRIG v(dout1_7) VAL=4.5 FALL=1 TD=0n TARG v(dout1_7) VAL=0.5 FALL=1 TD=0n

.meas tran read1_power1 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran read0_power1 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran disabled_read1_power1 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran disabled_read0_power1 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran v_bl_read_zero1 FIND v(xsubbyte2.xbank0.bl_1_31) AT=0.0n 

.meas tran v_br_read_zero1 FIND v(xsubbyte2.xbank0.br_1_31) AT=0.0n 

.meas tran v_bl_read_one1 FIND v(xsubbyte2.xbank0.bl_1_31) AT=0.0n 

.meas tran v_br_read_one1 FIND v(xsubbyte2.xbank0.br_1_31) AT=0.0n 

.meas tran v_delay_lh1 FIND v(dout1_7) AT=0.0n 

.meas tran v_delay_hl1 FIND v(dout1_7) AT=0.0n 

.meas tran delay_sen1 TRIG v(clk1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.s_en1) VAL=2.5 RISE=1 TD=0.0n

.meas tran v_q_a11111111_b7_read_zero1 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q) AT=0.0n 

.meas tran v_q_a11111111_b7_read_one1 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q) AT=0.0n 

.meas tran v_qbar_a11111111_b7_read_zero1 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q_bar) AT=0.0n 

.meas tran v_qbar_a11111111_b7_read_one1 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q_bar) AT=0.0n 

.meas tran delay_clk1_to_xsubbyte2.xcontrol1.xclkbuf.zb1_int_sen_id0 TRIG v(clk1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb1_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb1_int_to_xsubbyte2.xcontrol1.xclkbuf.zb2_int_sen_id1 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb1_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb2_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb2_int_to_xsubbyte2.xcontrol1.xclkbuf.zb3_int_sen_id2 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb2_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb3_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb3_int_to_xsubbyte2.xcontrol1.xclkbuf.zb4_int_sen_id3 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb3_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb4_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb4_int_to_xsubbyte2.xcontrol1.xclkbuf.zb5_int_sen_id4 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb4_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb5_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb5_int_to_xsubbyte2.clk_buf1_sen_id5 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb5_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.clk_buf1) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.clk_buf1_to_xsubbyte2.xcontrol1.clk_bar_sen_id6 TRIG v(xsubbyte2.clk_buf1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.clk_bar) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.clk_bar_to_xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int_sen_id7 TRIG v(xsubbyte2.xcontrol1.clk_bar) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int_to_xsubbyte2.xcontrol1.gated_clk_bar_sen_id8 TRIG v(xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.gated_clk_bar) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.gated_clk_bar_to_xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int_sen_id9 TRIG v(xsubbyte2.xcontrol1.gated_clk_bar) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int_to_xsubbyte2.wl_en1_sen_id10 TRIG v(xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.wl_en1) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.wl_en1_to_xsubbyte2.xbank0.xport_address1.xrbl_driver.zb_int_sen_id11 TRIG v(xsubbyte2.wl_en1) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xbank0.xport_address1.xrbl_driver.zb_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.xport_address1.xrbl_driver.zb_int_to_xsubbyte2.xbank0.rbl_wl1_sen_id12 TRIG v(xsubbyte2.xbank0.xport_address1.xrbl_driver.zb_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xbank0.rbl_wl1) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.rbl_wl1_to_xsubbyte2.rbl_bl1_sen_id13 TRIG v(xsubbyte2.xbank0.rbl_wl1) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.rbl_bl1) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.rbl_bl1_to_xsubbyte2.xcontrol1.xdelay_chain.dout_1_sen_id14 TRIG v(xsubbyte2.rbl_bl1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_1) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_1_to_xsubbyte2.xcontrol1.xdelay_chain.dout_2_sen_id15 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_1) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_2) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_2_to_xsubbyte2.xcontrol1.xdelay_chain.dout_3_sen_id16 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_2) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_3) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_3_to_xsubbyte2.xcontrol1.xdelay_chain.dout_4_sen_id17 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_3) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_4) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_4_to_xsubbyte2.xcontrol1.xdelay_chain.dout_5_sen_id18 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_4) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_5) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_5_to_xsubbyte2.xcontrol1.xdelay_chain.dout_6_sen_id19 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_5) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_6) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_6_to_xsubbyte2.xcontrol1.xdelay_chain.dout_7_sen_id20 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_6) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_7) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_7_to_xsubbyte2.xcontrol1.xdelay_chain.dout_8_sen_id21 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_7) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xdelay_chain.dout_8) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xdelay_chain.dout_8_to_xsubbyte2.xcontrol1.rbl_bl_delay_sen_id22 TRIG v(xsubbyte2.xcontrol1.xdelay_chain.dout_8) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.rbl_bl_delay) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.rbl_bl_delay_to_xsubbyte2.xcontrol1.xbuf_s_en_and.zb_int_sen_id23 TRIG v(xsubbyte2.xcontrol1.rbl_bl_delay) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xbuf_s_en_and.zb_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xbuf_s_en_and.zb_int_to_xsubbyte2.s_en1_sen_id24 TRIG v(xsubbyte2.xcontrol1.xbuf_s_en_and.zb_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.s_en1) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.s_en1_to_dout1_7_sen_id25 TRIG v(xsubbyte2.s_en1) VAL=2.5 RISE=1 TD=0.0n TARG v(dout1_7) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_clk1_to_xsubbyte2.xcontrol1.xclkbuf.zb1_int_bl_id26 TRIG v(clk1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb1_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb1_int_to_xsubbyte2.xcontrol1.xclkbuf.zb2_int_bl_id27 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb1_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb2_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb2_int_to_xsubbyte2.xcontrol1.xclkbuf.zb3_int_bl_id28 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb2_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb3_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb3_int_to_xsubbyte2.xcontrol1.xclkbuf.zb4_int_bl_id29 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb3_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb4_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb4_int_to_xsubbyte2.xcontrol1.xclkbuf.zb5_int_bl_id30 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb4_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xclkbuf.zb5_int) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xclkbuf.zb5_int_to_xsubbyte2.clk_buf1_bl_id31 TRIG v(xsubbyte2.xcontrol1.xclkbuf.zb5_int) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.clk_buf1) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.clk_buf1_to_xsubbyte2.xcontrol1.clk_bar_bl_id32 TRIG v(xsubbyte2.clk_buf1) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.clk_bar) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.clk_bar_to_xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int_bl_id33 TRIG v(xsubbyte2.xcontrol1.clk_bar) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int_to_xsubbyte2.xcontrol1.gated_clk_bar_bl_id34 TRIG v(xsubbyte2.xcontrol1.xand2_gated_clk_bar.zb_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.gated_clk_bar) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.gated_clk_bar_to_xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int_bl_id35 TRIG v(xsubbyte2.xcontrol1.gated_clk_bar) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int_to_xsubbyte2.wl_en1_bl_id36 TRIG v(xsubbyte2.xcontrol1.xbuf_wl_en.zb1_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.wl_en1) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.wl_en1_to_xsubbyte2.xbank0.xport_address1.xwordline_driver.xwl_driver_and63.zb_int_bl_id37 TRIG v(xsubbyte2.wl_en1) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xbank0.xport_address1.xwordline_driver.xwl_driver_and63.zb_int) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.xport_address1.xwordline_driver.xwl_driver_and63.zb_int_to_xsubbyte2.xbank0.wl_1_63_bl_id38 TRIG v(xsubbyte2.xbank0.xport_address1.xwordline_driver.xwl_driver_and63.zb_int) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xbank0.wl_1_63) VAL=2.5 RISE=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.wl_1_63_to_xsubbyte2.xbank0.bl_1_31_bl_id39 TRIG v(xsubbyte2.xbank0.wl_1_63) VAL=2.5 RISE=1 TD=0.0n TARG v(xsubbyte2.xbank0.bl_1_31) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.bl_1_31_to_xsubbyte2.xbank0.xport_data1.bl_out_7_bl_id40 TRIG v(xsubbyte2.xbank0.bl_1_31) VAL=2.5 FALL=1 TD=0.0n TARG v(xsubbyte2.xbank0.xport_data1.bl_out_7) VAL=2.5 FALL=1 TD=0.0n

.meas tran delay_xsubbyte2.xbank0.xport_data1.bl_out_7_to_dout1_7_bl_id41 TRIG v(xsubbyte2.xbank0.xport_data1.bl_out_7) VAL=2.5 FALL=1 TD=0.0n TARG v(dout1_7) VAL=2.5 FALL=1 TD=0.0n

* Write ports 0
.meas tran write1_power0 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran write0_power0 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran disabled_write1_power0 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran disabled_write0_power0 avg par('(-1*v(vdd)*I(vvdd))') from=0n to=0n

.meas tran v_q_a11111111_b7_write_zero0 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q) AT=0.0n 

.meas tran v_q_a11111111_b7_write_one0 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q) AT=0.0n 

.meas tran v_qbar_a11111111_b7_write_zero0 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q_bar) AT=0.0n 

.meas tran v_qbar_a11111111_b7_write_one0 FIND v(xsubbyte2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r63_c31.Q_bar) AT=0.0n 
