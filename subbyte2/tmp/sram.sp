**************************************************
* OpenRAM generated memory.
* Words: 256
* Data bits: 8
* Banks: 1
* Column mux: 4:1
* Trimmed: False
* LVS: False
**************************************************

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT subbyte2_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 11
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS subbyte2_pinv_7

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

.SUBCKT subbyte2_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS subbyte2_pinv_6

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u

.SUBCKT subbyte2_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS subbyte2_pinv

.SUBCKT subbyte2_pdriver_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 4, 11]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ subbyte2_pinv
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ subbyte2_pinv
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ subbyte2_pinv_6
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ subbyte2_pinv_7
.ENDS subbyte2_pdriver_5

.SUBCKT subbyte2_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS subbyte2_pinv_13

.SUBCKT subbyte2_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ subbyte2_pinv_13
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ subbyte2_pinv_13
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ subbyte2_pinv_13
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ subbyte2_pinv_13
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ subbyte2_pinv_13
Xdinv1
+ dout_1 dout_2 vdd gnd
+ subbyte2_pinv_13
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ subbyte2_pinv_13
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ subbyte2_pinv_13
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ subbyte2_pinv_13
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ subbyte2_pinv_13
Xdinv2
+ dout_2 dout_3 vdd gnd
+ subbyte2_pinv_13
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ subbyte2_pinv_13
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ subbyte2_pinv_13
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ subbyte2_pinv_13
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ subbyte2_pinv_13
Xdinv3
+ dout_3 dout_4 vdd gnd
+ subbyte2_pinv_13
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ subbyte2_pinv_13
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ subbyte2_pinv_13
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ subbyte2_pinv_13
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ subbyte2_pinv_13
Xdinv4
+ dout_4 dout_5 vdd gnd
+ subbyte2_pinv_13
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ subbyte2_pinv_13
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ subbyte2_pinv_13
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ subbyte2_pinv_13
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ subbyte2_pinv_13
Xdinv5
+ dout_5 dout_6 vdd gnd
+ subbyte2_pinv_13
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ subbyte2_pinv_13
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ subbyte2_pinv_13
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ subbyte2_pinv_13
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ subbyte2_pinv_13
Xdinv6
+ dout_6 dout_7 vdd gnd
+ subbyte2_pinv_13
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ subbyte2_pinv_13
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ subbyte2_pinv_13
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ subbyte2_pinv_13
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ subbyte2_pinv_13
Xdinv7
+ dout_7 dout_8 vdd gnd
+ subbyte2_pinv_13
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ subbyte2_pinv_13
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ subbyte2_pinv_13
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ subbyte2_pinv_13
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ subbyte2_pinv_13
Xdinv8
+ dout_8 out vdd gnd
+ subbyte2_pinv_13
Xdload_8_0
+ out n_8_0 vdd gnd
+ subbyte2_pinv_13
Xdload_8_1
+ out n_8_1 vdd gnd
+ subbyte2_pinv_13
Xdload_8_2
+ out n_8_2 vdd gnd
+ subbyte2_pinv_13
Xdload_8_3
+ out n_8_3 vdd gnd
+ subbyte2_pinv_13
.ENDS subbyte2_delay_chain

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=7 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=7 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

.SUBCKT subbyte2_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=7 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=7 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS subbyte2_pinv_3

.SUBCKT subbyte2_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ subbyte2_pinv_3
.ENDS subbyte2_pdriver_0

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT subbyte2_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS subbyte2_pnand2

.SUBCKT subbyte2_pand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ subbyte2_pnand2
Xpand2_inv
+ zb_int Z vdd gnd
+ subbyte2_pdriver_0
.ENDS subbyte2_pand2_0

.SUBCKT subbyte2_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS subbyte2_pnand2_0

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT subbyte2_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 33
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=18 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS subbyte2_pinv_8

.SUBCKT subbyte2_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 4, 11, 33]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ subbyte2_pinv
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ subbyte2_pinv
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ subbyte2_pinv
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ subbyte2_pinv_6
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ subbyte2_pinv_7
Xbuf_inv6
+ Zb5_int Z vdd gnd
+ subbyte2_pinv_8
.ENDS subbyte2_pdriver_1

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT subbyte2_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS subbyte2_pinv_1
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* SPICE3 file created from sky130_fd_bd_sram__openram_dff.ext - technology: EFS8A

.subckt sky130_fd_bd_sram__openram_dff D Q CLK VDD GND
X1000 a_511_725# a_n8_115# VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1001 a_353_115# CLK a_11_624# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1002 a_353_725# a_203_89# a_11_624# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1003 a_11_624# a_203_89# a_161_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1004 a_11_624# CLK a_161_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1005 GND Q a_703_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1006 VDD Q a_703_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1007 a_203_89# CLK GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1008 a_203_89# CLK VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1009 a_161_115# D GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1010 a_161_725# D VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1011 GND a_11_624# a_n8_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1012 a_703_115# a_203_89# ON GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1013 VDD a_11_624# a_n8_115# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1014 a_703_725# CLK ON VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1015 Q ON VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1016 Q ON GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1017 ON a_203_89# a_511_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1018 ON CLK a_511_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1019 GND a_n8_115# a_353_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1020 VDD a_n8_115# a_353_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1021 a_511_115# a_n8_115# GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
.ends

.SUBCKT subbyte2_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS subbyte2_pinv_2

.SUBCKT subbyte2_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ sky130_fd_bd_sram__openram_dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ subbyte2_pinv_1
Xdff_buf_inv2
+ Qb Q vdd gnd
+ subbyte2_pinv_2
.ENDS subbyte2_dff_buf_0

.SUBCKT subbyte2_dff_buf_array
+ din_0 dout_0 dout_bar_0 clk vdd gnd
* INPUT : din_0 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ subbyte2_dff_buf_0
.ENDS subbyte2_dff_buf_array

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT subbyte2_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 16
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS subbyte2_pinv_11

.SUBCKT subbyte2_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [16]
Xbuf_inv1
+ A Z vdd gnd
+ subbyte2_pinv_11
.ENDS subbyte2_pdriver_3

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT subbyte2_pnand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand3_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_nmos1 Z C net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand3_nmos2 net1 B net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand3_nmos3 net2 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS subbyte2_pnand3

.SUBCKT subbyte2_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 16
Xpand3_nand
+ A B C zb_int vdd gnd
+ subbyte2_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ subbyte2_pdriver_3
.ENDS subbyte2_pand3

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=4 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=4 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u

.SUBCKT subbyte2_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 7
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=4 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=4 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u
.ENDS subbyte2_pinv_9

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=12 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=12 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT subbyte2_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 21
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=12 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=12 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS subbyte2_pinv_10

.SUBCKT subbyte2_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [7, 21]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ subbyte2_pinv_9
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ subbyte2_pinv_10
.ENDS subbyte2_pdriver_2

.SUBCKT subbyte2_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS subbyte2_pinv_0

.SUBCKT subbyte2_control_logic_w
+ csb clk rbl_bl w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 64
* words_per_row: 4
* word_size 8
Xctrl_dffs
+ csb cs_bar cs clk_buf vdd gnd
+ subbyte2_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ subbyte2_pdriver_1
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ subbyte2_pinv_0
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ subbyte2_pand2_0
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ subbyte2_pand2_0
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ subbyte2_pdriver_2
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ subbyte2_pinv_0
Xw_en_and
+ cs rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ subbyte2_pand3
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ subbyte2_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ subbyte2_pnand2_0
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ subbyte2_pdriver_5
.ENDS subbyte2_control_logic_w

.SUBCKT subbyte2_col_addr_dff
+ din_0 din_1 dout_0 dout_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 2
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c1
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS subbyte2_col_addr_dff

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u

.SUBCKT subbyte2_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Xlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
.ENDS subbyte2_precharge_0

.SUBCKT subbyte2_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* INPUT : en_bar 
* POWER : vdd 
* cols: 33 size: 1 bl: bl0 br: br0
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ subbyte2_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ subbyte2_precharge_0
.ENDS subbyte2_precharge_array

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=2.88 l=0.15 pd=6.06 ps=6.06 as=1.08u ad=1.08u

.SUBCKT subbyte2_column_mux
+ bl br bl_out br_out sel gnd
* INOUT : bl 
* INOUT : br 
* INOUT : bl_out 
* INOUT : br_out 
* INOUT : sel 
* INOUT : gnd 
Xmux_tx1 bl sel bl_out gnd sky130_fd_pr__nfet_01v8 m=1 w=2.88 l=0.15 pd=6.06 ps=6.06 as=1.08u ad=1.08u
Xmux_tx2 br sel br_out gnd sky130_fd_pr__nfet_01v8 m=1 w=2.88 l=0.15 pd=6.06 ps=6.06 as=1.08u ad=1.08u
.ENDS subbyte2_column_mux

.SUBCKT subbyte2_column_mux_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 sel_0 sel_1 sel_2 sel_3 bl_out_0
+ br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3
+ bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7
+ br_out_7 gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : sel_0 
* INOUT : sel_1 
* INOUT : sel_2 
* INOUT : sel_3 
* INOUT : bl_out_0 
* INOUT : br_out_0 
* INOUT : bl_out_1 
* INOUT : br_out_1 
* INOUT : bl_out_2 
* INOUT : br_out_2 
* INOUT : bl_out_3 
* INOUT : br_out_3 
* INOUT : bl_out_4 
* INOUT : br_out_4 
* INOUT : bl_out_5 
* INOUT : br_out_5 
* INOUT : bl_out_6 
* INOUT : br_out_6 
* INOUT : bl_out_7 
* INOUT : br_out_7 
* INOUT : gnd 
* cols: 32 word_size: 8 bl: bl0 br: br0
XXMUX0
+ bl_0 br_0 bl_out_0 br_out_0 sel_0 gnd
+ subbyte2_column_mux
XXMUX1
+ bl_1 br_1 bl_out_0 br_out_0 sel_1 gnd
+ subbyte2_column_mux
XXMUX2
+ bl_2 br_2 bl_out_0 br_out_0 sel_2 gnd
+ subbyte2_column_mux
XXMUX3
+ bl_3 br_3 bl_out_0 br_out_0 sel_3 gnd
+ subbyte2_column_mux
XXMUX4
+ bl_4 br_4 bl_out_1 br_out_1 sel_0 gnd
+ subbyte2_column_mux
XXMUX5
+ bl_5 br_5 bl_out_1 br_out_1 sel_1 gnd
+ subbyte2_column_mux
XXMUX6
+ bl_6 br_6 bl_out_1 br_out_1 sel_2 gnd
+ subbyte2_column_mux
XXMUX7
+ bl_7 br_7 bl_out_1 br_out_1 sel_3 gnd
+ subbyte2_column_mux
XXMUX8
+ bl_8 br_8 bl_out_2 br_out_2 sel_0 gnd
+ subbyte2_column_mux
XXMUX9
+ bl_9 br_9 bl_out_2 br_out_2 sel_1 gnd
+ subbyte2_column_mux
XXMUX10
+ bl_10 br_10 bl_out_2 br_out_2 sel_2 gnd
+ subbyte2_column_mux
XXMUX11
+ bl_11 br_11 bl_out_2 br_out_2 sel_3 gnd
+ subbyte2_column_mux
XXMUX12
+ bl_12 br_12 bl_out_3 br_out_3 sel_0 gnd
+ subbyte2_column_mux
XXMUX13
+ bl_13 br_13 bl_out_3 br_out_3 sel_1 gnd
+ subbyte2_column_mux
XXMUX14
+ bl_14 br_14 bl_out_3 br_out_3 sel_2 gnd
+ subbyte2_column_mux
XXMUX15
+ bl_15 br_15 bl_out_3 br_out_3 sel_3 gnd
+ subbyte2_column_mux
XXMUX16
+ bl_16 br_16 bl_out_4 br_out_4 sel_0 gnd
+ subbyte2_column_mux
XXMUX17
+ bl_17 br_17 bl_out_4 br_out_4 sel_1 gnd
+ subbyte2_column_mux
XXMUX18
+ bl_18 br_18 bl_out_4 br_out_4 sel_2 gnd
+ subbyte2_column_mux
XXMUX19
+ bl_19 br_19 bl_out_4 br_out_4 sel_3 gnd
+ subbyte2_column_mux
XXMUX20
+ bl_20 br_20 bl_out_5 br_out_5 sel_0 gnd
+ subbyte2_column_mux
XXMUX21
+ bl_21 br_21 bl_out_5 br_out_5 sel_1 gnd
+ subbyte2_column_mux
XXMUX22
+ bl_22 br_22 bl_out_5 br_out_5 sel_2 gnd
+ subbyte2_column_mux
XXMUX23
+ bl_23 br_23 bl_out_5 br_out_5 sel_3 gnd
+ subbyte2_column_mux
XXMUX24
+ bl_24 br_24 bl_out_6 br_out_6 sel_0 gnd
+ subbyte2_column_mux
XXMUX25
+ bl_25 br_25 bl_out_6 br_out_6 sel_1 gnd
+ subbyte2_column_mux
XXMUX26
+ bl_26 br_26 bl_out_6 br_out_6 sel_2 gnd
+ subbyte2_column_mux
XXMUX27
+ bl_27 br_27 bl_out_6 br_out_6 sel_3 gnd
+ subbyte2_column_mux
XXMUX28
+ bl_28 br_28 bl_out_7 br_out_7 sel_0 gnd
+ subbyte2_column_mux
XXMUX29
+ bl_29 br_29 bl_out_7 br_out_7 sel_1 gnd
+ subbyte2_column_mux
XXMUX30
+ bl_30 br_30 bl_out_7 br_out_7 sel_2 gnd
+ subbyte2_column_mux
XXMUX31
+ bl_31 br_31 bl_out_7 br_out_7 sel_3 gnd
+ subbyte2_column_mux
.ENDS subbyte2_column_mux_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_write_driver" ******************************

.SUBCKT sky130_fd_bd_sram__openram_write_driver DIN BL BR EN VDD GND

**** Inverter to conver Data_in to data_in_bar ******
* din_bar = inv(DIN)
X_1 din_bar DIN GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15
X_2 din_bar DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15

**** 2input nand gate follwed by inverter to drive BL ******
* din_bar_gated = nand(EN, DIN)
X_3 din_bar_gated EN net_7 GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_4 net_7 DIN GND GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_5 din_bar_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_6 din_bar_gated DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
* din_bar_gated_bar = inv(din_bar_gated)
X_7 din_bar_gated_bar din_bar_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_8 din_bar_gated_bar din_bar_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15

**** 2input nand gate follwed by inverter to drive BR******
* din_gated = nand(EN, din_bar)
X_9 din_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_10 din_gated EN net_8 GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_11 net_8 din_bar GND GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_12 din_gated din_bar VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
* din_gated_bar = inv(din_gated)
X_13 din_gated_bar din_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_14 din_gated_bar din_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15

************************************************
* pull down with EN enable
X_15 BL din_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X_16 BR din_bar_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15

.ENDS sky130_fd_bd_sram__openram_write_driver

.SUBCKT subbyte2_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 bl_0 br_0 bl_1
+ br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 en
+ vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* columns: 32
* word_size 8
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver4
+ data_1 bl_1 br_1 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver8
+ data_2 bl_2 br_2 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver12
+ data_3 bl_3 br_3 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver16
+ data_4 bl_4 br_4 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver20
+ data_5 bl_5 br_5 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver24
+ data_6 bl_6 br_6 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver28
+ data_7 bl_7 br_7 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
.ENDS subbyte2_write_driver_array

.SUBCKT subbyte2_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 din_0 din_1 din_2 din_3
+ din_4 din_5 din_6 din_7 sel_0 sel_1 sel_2 sel_3 p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : sel_0 
* INPUT : sel_1 
* INPUT : sel_2 
* INPUT : sel_3 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 p_en_bar vdd
+ subbyte2_precharge_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 bl_out_0 br_out_0
+ bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3 bl_out_4
+ br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7 br_out_7 w_en
+ vdd gnd
+ subbyte2_write_driver_array
Xcolumn_mux_array0
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 sel_0 sel_1 sel_2 sel_3 bl_out_0
+ br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3
+ bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7
+ br_out_7 gnd
+ subbyte2_column_mux_array
.ENDS subbyte2_port_data

.SUBCKT subbyte2_precharge_1
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Xlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
.ENDS subbyte2_precharge_1

.SUBCKT subbyte2_precharge_array_0
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* INPUT : en_bar 
* POWER : vdd 
* cols: 33 size: 1 bl: bl1 br: br1
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ subbyte2_precharge_1
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ subbyte2_precharge_1
.ENDS subbyte2_precharge_array_0

.SUBCKT subbyte2_column_mux_0
+ bl br bl_out br_out sel gnd
* INOUT : bl 
* INOUT : br 
* INOUT : bl_out 
* INOUT : br_out 
* INOUT : sel 
* INOUT : gnd 
Xmux_tx1 bl sel bl_out gnd sky130_fd_pr__nfet_01v8 m=1 w=2.88 l=0.15 pd=6.06 ps=6.06 as=1.08u ad=1.08u
Xmux_tx2 br sel br_out gnd sky130_fd_pr__nfet_01v8 m=1 w=2.88 l=0.15 pd=6.06 ps=6.06 as=1.08u ad=1.08u
.ENDS subbyte2_column_mux_0

.SUBCKT subbyte2_column_mux_array_0
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 sel_0 sel_1 sel_2 sel_3 bl_out_0
+ br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3
+ bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7
+ br_out_7 gnd
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : sel_0 
* INOUT : sel_1 
* INOUT : sel_2 
* INOUT : sel_3 
* INOUT : bl_out_0 
* INOUT : br_out_0 
* INOUT : bl_out_1 
* INOUT : br_out_1 
* INOUT : bl_out_2 
* INOUT : br_out_2 
* INOUT : bl_out_3 
* INOUT : br_out_3 
* INOUT : bl_out_4 
* INOUT : br_out_4 
* INOUT : bl_out_5 
* INOUT : br_out_5 
* INOUT : bl_out_6 
* INOUT : br_out_6 
* INOUT : bl_out_7 
* INOUT : br_out_7 
* INOUT : gnd 
* cols: 32 word_size: 8 bl: bl1 br: br1
XXMUX0
+ bl_0 br_0 bl_out_0 br_out_0 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX1
+ bl_1 br_1 bl_out_0 br_out_0 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX2
+ bl_2 br_2 bl_out_0 br_out_0 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX3
+ bl_3 br_3 bl_out_0 br_out_0 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX4
+ bl_4 br_4 bl_out_1 br_out_1 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX5
+ bl_5 br_5 bl_out_1 br_out_1 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX6
+ bl_6 br_6 bl_out_1 br_out_1 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX7
+ bl_7 br_7 bl_out_1 br_out_1 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX8
+ bl_8 br_8 bl_out_2 br_out_2 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX9
+ bl_9 br_9 bl_out_2 br_out_2 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX10
+ bl_10 br_10 bl_out_2 br_out_2 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX11
+ bl_11 br_11 bl_out_2 br_out_2 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX12
+ bl_12 br_12 bl_out_3 br_out_3 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX13
+ bl_13 br_13 bl_out_3 br_out_3 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX14
+ bl_14 br_14 bl_out_3 br_out_3 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX15
+ bl_15 br_15 bl_out_3 br_out_3 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX16
+ bl_16 br_16 bl_out_4 br_out_4 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX17
+ bl_17 br_17 bl_out_4 br_out_4 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX18
+ bl_18 br_18 bl_out_4 br_out_4 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX19
+ bl_19 br_19 bl_out_4 br_out_4 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX20
+ bl_20 br_20 bl_out_5 br_out_5 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX21
+ bl_21 br_21 bl_out_5 br_out_5 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX22
+ bl_22 br_22 bl_out_5 br_out_5 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX23
+ bl_23 br_23 bl_out_5 br_out_5 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX24
+ bl_24 br_24 bl_out_6 br_out_6 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX25
+ bl_25 br_25 bl_out_6 br_out_6 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX26
+ bl_26 br_26 bl_out_6 br_out_6 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX27
+ bl_27 br_27 bl_out_6 br_out_6 sel_3 gnd
+ subbyte2_column_mux_0
XXMUX28
+ bl_28 br_28 bl_out_7 br_out_7 sel_0 gnd
+ subbyte2_column_mux_0
XXMUX29
+ bl_29 br_29 bl_out_7 br_out_7 sel_1 gnd
+ subbyte2_column_mux_0
XXMUX30
+ bl_30 br_30 bl_out_7 br_out_7 sel_2 gnd
+ subbyte2_column_mux_0
XXMUX31
+ bl_31 br_31 bl_out_7 br_out_7 sel_3 gnd
+ subbyte2_column_mux_0
.ENDS subbyte2_column_mux_array_0
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_sense_amp" ******************************

.SUBCKT sky130_fd_bd_sram__openram_sense_amp BL BR DOUT EN VDD GND
X1000 GND EN a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15
X1001 a_56_432# dint_bar dint GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15
X1002 dint_bar dint a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15

X1003 VDD dint_bar dint VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15
X1004 dint_bar dint VDD VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15

X1005 BL EN dint VDD sky130_fd_pr__pfet_01v8 W=2 L=0.15
X1006 dint_bar EN BR VDD sky130_fd_pr__pfet_01v8 W=2 L=0.15

X1007 VDD dint_bar DOUT VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15
X1008 DOUT dint_bar GND GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15

.ENDS sky130_fd_bd_sram__openram_sense_amp

.SUBCKT subbyte2_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7 en
+ vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 8
* words_per_row: 4
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
.ENDS subbyte2_sense_amp_array

.SUBCKT subbyte2_port_data_0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 dout_0 dout_1 dout_2 dout_3
+ dout_4 dout_5 dout_6 dout_7 sel_0 sel_1 sel_2 sel_3 s_en p_en_bar vdd
+ gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : sel_0 
* INPUT : sel_1 
* INPUT : sel_2 
* INPUT : sel_3 
* INPUT : s_en 
* INPUT : p_en_bar 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array1
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 rbl_bl rbl_br p_en_bar vdd
+ subbyte2_precharge_array_0
Xsense_amp_array1
+ dout_0 bl_out_0 br_out_0 dout_1 bl_out_1 br_out_1 dout_2 bl_out_2
+ br_out_2 dout_3 bl_out_3 br_out_3 dout_4 bl_out_4 br_out_4 dout_5
+ bl_out_5 br_out_5 dout_6 bl_out_6 br_out_6 dout_7 bl_out_7 br_out_7
+ s_en vdd gnd
+ subbyte2_sense_amp_array
Xcolumn_mux_array1
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 sel_0 sel_1 sel_2 sel_3 bl_out_0
+ br_out_0 bl_out_1 br_out_1 bl_out_2 br_out_2 bl_out_3 br_out_3
+ bl_out_4 br_out_4 bl_out_5 br_out_5 bl_out_6 br_out_6 bl_out_7
+ br_out_7 gnd
+ subbyte2_column_mux_array_0
.ENDS subbyte2_port_data_0

.SUBCKT subbyte2_pinv_dec
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS subbyte2_pinv_dec
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* NGSPICE file created from sky130_fd_bd_sram__openram_dp_nand3_dec.ext - technology: EFS8A


* Top level circuit sky130_fd_bd_sram__openram_dp_nand3_dec
.subckt sky130_fd_bd_sram__openram_dp_nand3_dec A B C Z VDD GND

X1001 Z A a_n346_328# GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
X1002 a_n346_256# C GND GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
X1003 a_n346_328# B a_n346_256# GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
X1000 Z B VDD VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1004 Z A VDD VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1005 Z C VDD VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
.ends


.SUBCKT subbyte2_and3_dec
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand
+ A B C zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand3_dec
Xpand3_dec_inv
+ zb_int Z vdd gnd
+ subbyte2_pinv_dec
.ENDS subbyte2_and3_dec
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* NGSPICE file created from sky130_fd_bd_sram__openram_dp_nand2_dec.ext - technology: EFS8A


* Top level circuit sky130_fd_bd_sram__openram_dp_nand2_dec
.subckt sky130_fd_bd_sram__openram_dp_nand2_dec A B Z VDD GND

X1001 Z B VDD VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1002 VDD A Z VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1000 Z A a_n722_276# GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
X1003 a_n722_276# B GND GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
.ends


.SUBCKT subbyte2_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ subbyte2_pinv_dec
.ENDS subbyte2_and2_dec

.SUBCKT subbyte2_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ subbyte2_pinv_dec
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ subbyte2_pinv_dec
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ subbyte2_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ subbyte2_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ subbyte2_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ subbyte2_and2_dec
.ENDS subbyte2_hierarchical_predecode2x4

.SUBCKT subbyte2_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 decode_0 decode_1 decode_2
+ decode_3 decode_4 decode_5 decode_6 decode_7 decode_8 decode_9
+ decode_10 decode_11 decode_12 decode_13 decode_14 decode_15 decode_16
+ decode_17 decode_18 decode_19 decode_20 decode_21 decode_22 decode_23
+ decode_24 decode_25 decode_26 decode_27 decode_28 decode_29 decode_30
+ decode_31 decode_32 decode_33 decode_34 decode_35 decode_36 decode_37
+ decode_38 decode_39 decode_40 decode_41 decode_42 decode_43 decode_44
+ decode_45 decode_46 decode_47 decode_48 decode_49 decode_50 decode_51
+ decode_52 decode_53 decode_54 decode_55 decode_56 decode_57 decode_58
+ decode_59 decode_60 decode_61 decode_62 decode_63 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* OUTPUT: decode_32 
* OUTPUT: decode_33 
* OUTPUT: decode_34 
* OUTPUT: decode_35 
* OUTPUT: decode_36 
* OUTPUT: decode_37 
* OUTPUT: decode_38 
* OUTPUT: decode_39 
* OUTPUT: decode_40 
* OUTPUT: decode_41 
* OUTPUT: decode_42 
* OUTPUT: decode_43 
* OUTPUT: decode_44 
* OUTPUT: decode_45 
* OUTPUT: decode_46 
* OUTPUT: decode_47 
* OUTPUT: decode_48 
* OUTPUT: decode_49 
* OUTPUT: decode_50 
* OUTPUT: decode_51 
* OUTPUT: decode_52 
* OUTPUT: decode_53 
* OUTPUT: decode_54 
* OUTPUT: decode_55 
* OUTPUT: decode_56 
* OUTPUT: decode_57 
* OUTPUT: decode_58 
* OUTPUT: decode_59 
* OUTPUT: decode_60 
* OUTPUT: decode_61 
* OUTPUT: decode_62 
* OUTPUT: decode_63 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ subbyte2_hierarchical_predecode2x4
Xpre_1
+ addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd
+ subbyte2_hierarchical_predecode2x4
Xpre_2
+ addr_4 addr_5 out_8 out_9 out_10 out_11 vdd gnd
+ subbyte2_hierarchical_predecode2x4
XDEC_AND_0
+ out_0 out_4 out_8 decode_0 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_16
+ out_0 out_4 out_9 decode_16 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_32
+ out_0 out_4 out_10 decode_32 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_48
+ out_0 out_4 out_11 decode_48 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_4
+ out_0 out_5 out_8 decode_4 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_20
+ out_0 out_5 out_9 decode_20 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_36
+ out_0 out_5 out_10 decode_36 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_52
+ out_0 out_5 out_11 decode_52 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_8
+ out_0 out_6 out_8 decode_8 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_24
+ out_0 out_6 out_9 decode_24 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_40
+ out_0 out_6 out_10 decode_40 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_56
+ out_0 out_6 out_11 decode_56 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_12
+ out_0 out_7 out_8 decode_12 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_28
+ out_0 out_7 out_9 decode_28 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_44
+ out_0 out_7 out_10 decode_44 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_60
+ out_0 out_7 out_11 decode_60 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_1
+ out_1 out_4 out_8 decode_1 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_17
+ out_1 out_4 out_9 decode_17 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_33
+ out_1 out_4 out_10 decode_33 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_49
+ out_1 out_4 out_11 decode_49 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_5
+ out_1 out_5 out_8 decode_5 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_21
+ out_1 out_5 out_9 decode_21 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_37
+ out_1 out_5 out_10 decode_37 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_53
+ out_1 out_5 out_11 decode_53 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_9
+ out_1 out_6 out_8 decode_9 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_25
+ out_1 out_6 out_9 decode_25 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_41
+ out_1 out_6 out_10 decode_41 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_57
+ out_1 out_6 out_11 decode_57 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_13
+ out_1 out_7 out_8 decode_13 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_29
+ out_1 out_7 out_9 decode_29 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_45
+ out_1 out_7 out_10 decode_45 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_61
+ out_1 out_7 out_11 decode_61 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_2
+ out_2 out_4 out_8 decode_2 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_18
+ out_2 out_4 out_9 decode_18 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_34
+ out_2 out_4 out_10 decode_34 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_50
+ out_2 out_4 out_11 decode_50 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_6
+ out_2 out_5 out_8 decode_6 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_22
+ out_2 out_5 out_9 decode_22 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_38
+ out_2 out_5 out_10 decode_38 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_54
+ out_2 out_5 out_11 decode_54 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_10
+ out_2 out_6 out_8 decode_10 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_26
+ out_2 out_6 out_9 decode_26 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_42
+ out_2 out_6 out_10 decode_42 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_58
+ out_2 out_6 out_11 decode_58 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_14
+ out_2 out_7 out_8 decode_14 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_30
+ out_2 out_7 out_9 decode_30 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_46
+ out_2 out_7 out_10 decode_46 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_62
+ out_2 out_7 out_11 decode_62 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_3
+ out_3 out_4 out_8 decode_3 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_19
+ out_3 out_4 out_9 decode_19 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_35
+ out_3 out_4 out_10 decode_35 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_51
+ out_3 out_4 out_11 decode_51 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_7
+ out_3 out_5 out_8 decode_7 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_23
+ out_3 out_5 out_9 decode_23 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_39
+ out_3 out_5 out_10 decode_39 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_55
+ out_3 out_5 out_11 decode_55 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_11
+ out_3 out_6 out_8 decode_11 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_27
+ out_3 out_6 out_9 decode_27 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_43
+ out_3 out_6 out_10 decode_43 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_59
+ out_3 out_6 out_11 decode_59 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_15
+ out_3 out_7 out_8 decode_15 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_31
+ out_3 out_7 out_9 decode_31 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_47
+ out_3 out_7 out_10 decode_47 vdd gnd
+ subbyte2_and3_dec
XDEC_AND_63
+ out_3 out_7 out_11 decode_63 vdd gnd
+ subbyte2_and3_dec
.ENDS subbyte2_hierarchical_decoder

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=3.0 l=0.15 pd=6.30 ps=6.30 as=1.12u ad=1.12u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=7.0 l=0.15 pd=14.30 ps=14.30 as=2.62u ad=2.62u

.SUBCKT subbyte2_pinv_dec_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=7.0 l=0.15 pd=14.30 ps=14.30 as=2.62u ad=2.62u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=3.0 l=0.15 pd=6.30 ps=6.30 as=1.12u ad=1.12u
.ENDS subbyte2_pinv_dec_0

.SUBCKT subbyte2_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ subbyte2_pinv_dec_0
.ENDS subbyte2_and2_dec_0

.SUBCKT subbyte2_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 32
Xwld_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xwl_driver
+ zb_int Z vdd gnd
+ subbyte2_pinv_dec_0
.ENDS subbyte2_wordline_driver

.SUBCKT subbyte2_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23
+ in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 in_32 in_33 in_34
+ in_35 in_36 in_37 in_38 in_39 in_40 in_41 in_42 in_43 in_44 in_45
+ in_46 in_47 in_48 in_49 in_50 in_51 in_52 in_53 in_54 in_55 in_56
+ in_57 in_58 in_59 in_60 in_61 in_62 in_63 wl_0 wl_1 wl_2 wl_3 wl_4
+ wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16
+ wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27
+ wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38
+ wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49
+ wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60
+ wl_61 wl_62 wl_63 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
* INPUT : in_32 
* INPUT : in_33 
* INPUT : in_34 
* INPUT : in_35 
* INPUT : in_36 
* INPUT : in_37 
* INPUT : in_38 
* INPUT : in_39 
* INPUT : in_40 
* INPUT : in_41 
* INPUT : in_42 
* INPUT : in_43 
* INPUT : in_44 
* INPUT : in_45 
* INPUT : in_46 
* INPUT : in_47 
* INPUT : in_48 
* INPUT : in_49 
* INPUT : in_50 
* INPUT : in_51 
* INPUT : in_52 
* INPUT : in_53 
* INPUT : in_54 
* INPUT : in_55 
* INPUT : in_56 
* INPUT : in_57 
* INPUT : in_58 
* INPUT : in_59 
* INPUT : in_60 
* INPUT : in_61 
* INPUT : in_62 
* INPUT : in_63 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 64 cols: 32
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and16
+ in_16 en wl_16 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and17
+ in_17 en wl_17 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and18
+ in_18 en wl_18 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and19
+ in_19 en wl_19 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and20
+ in_20 en wl_20 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and21
+ in_21 en wl_21 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and22
+ in_22 en wl_22 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and23
+ in_23 en wl_23 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and24
+ in_24 en wl_24 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and25
+ in_25 en wl_25 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and26
+ in_26 en wl_26 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and27
+ in_27 en wl_27 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and28
+ in_28 en wl_28 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and29
+ in_29 en wl_29 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and30
+ in_30 en wl_30 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and31
+ in_31 en wl_31 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and32
+ in_32 en wl_32 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and33
+ in_33 en wl_33 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and34
+ in_34 en wl_34 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and35
+ in_35 en wl_35 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and36
+ in_36 en wl_36 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and37
+ in_37 en wl_37 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and38
+ in_38 en wl_38 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and39
+ in_39 en wl_39 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and40
+ in_40 en wl_40 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and41
+ in_41 en wl_41 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and42
+ in_42 en wl_42 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and43
+ in_43 en wl_43 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and44
+ in_44 en wl_44 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and45
+ in_45 en wl_45 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and46
+ in_46 en wl_46 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and47
+ in_47 en wl_47 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and48
+ in_48 en wl_48 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and49
+ in_49 en wl_49 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and50
+ in_50 en wl_50 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and51
+ in_51 en wl_51 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and52
+ in_52 en wl_52 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and53
+ in_53 en wl_53 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and54
+ in_54 en wl_54 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and55
+ in_55 en wl_55 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and56
+ in_56 en wl_56 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and57
+ in_57 en wl_57 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and58
+ in_58 en wl_58 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and59
+ in_59 en wl_59 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and60
+ in_60 en wl_60 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and61
+ in_61 en wl_61 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and62
+ in_62 en wl_62 vdd gnd
+ subbyte2_wordline_driver
Xwl_driver_and63
+ in_63 en wl_63 vdd gnd
+ subbyte2_wordline_driver
.ENDS subbyte2_wordline_driver_array

.SUBCKT subbyte2_port_address_0
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 wl_en wl_0 wl_1 wl_2 wl_3
+ wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15
+ wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26
+ wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37
+ wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48
+ wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59
+ wl_60 wl_61 wl_62 wl_63 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 dec_out_0 dec_out_1
+ dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8
+ dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14
+ dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20
+ dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26
+ dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 dec_out_32
+ dec_out_33 dec_out_34 dec_out_35 dec_out_36 dec_out_37 dec_out_38
+ dec_out_39 dec_out_40 dec_out_41 dec_out_42 dec_out_43 dec_out_44
+ dec_out_45 dec_out_46 dec_out_47 dec_out_48 dec_out_49 dec_out_50
+ dec_out_51 dec_out_52 dec_out_53 dec_out_54 dec_out_55 dec_out_56
+ dec_out_57 dec_out_58 dec_out_59 dec_out_60 dec_out_61 dec_out_62
+ dec_out_63 vdd gnd
+ subbyte2_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36
+ dec_out_37 dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42
+ dec_out_43 dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48
+ dec_out_49 dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54
+ dec_out_55 dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60
+ dec_out_61 dec_out_62 dec_out_63 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18
+ wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29
+ wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40
+ wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51
+ wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62
+ wl_63 wl_en vdd gnd
+ subbyte2_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ subbyte2_and2_dec_0
.ENDS subbyte2_port_address_0
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell_replica BL0 BR0 BL1 BR1 WL0 WL1 VDD GND
** N=9 EP=8 IP=0 FDC=16
*.SEEDPROM

* Bitcell Core
X0 Q WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X1 GND VDD Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 GND VDD Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X3 BL0 WL0 Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 VDD WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X5 GND Q VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 GND Q VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 BR0 WL0 VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 VDD Q VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15
X9 Q VDD VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

* drainOnly PMOS
*X10 VDD WL1 VDD VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14
*X11 Q WL0 Q VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14

* drainOnly NMOS
X12 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X14 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell_dummy BL0 BR0 BL1 BR1 WL0 WL1 VDD GND
** N=14 EP=6 IP=0 FDC=16
*.SEEDPROM

* Bitcell Core
X1 1 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 1 WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X3 2 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 2 WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X5 3 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 3 WL0 BL0 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 4 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 4 WL0 BR0 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

* drainOnly NMOS
X9 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X10 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS

.SUBCKT subbyte2_replica_column_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35 wl_0_36
+ wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38 wl_0_39 wl_1_39 wl_0_40
+ wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42 wl_0_43 wl_1_43 wl_0_44
+ wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46 wl_0_47 wl_1_47 wl_0_48
+ wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50 wl_0_51 wl_1_51 wl_0_52
+ wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54 wl_0_55 wl_1_55 wl_0_56
+ wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58 wl_0_59 wl_1_59 wl_0_60
+ wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62 wl_0_63 wl_1_63 wl_0_64
+ wl_1_64 wl_0_65 wl_1_65 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* INPUT : wl_0_36 
* INPUT : wl_1_36 
* INPUT : wl_0_37 
* INPUT : wl_1_37 
* INPUT : wl_0_38 
* INPUT : wl_1_38 
* INPUT : wl_0_39 
* INPUT : wl_1_39 
* INPUT : wl_0_40 
* INPUT : wl_1_40 
* INPUT : wl_0_41 
* INPUT : wl_1_41 
* INPUT : wl_0_42 
* INPUT : wl_1_42 
* INPUT : wl_0_43 
* INPUT : wl_1_43 
* INPUT : wl_0_44 
* INPUT : wl_1_44 
* INPUT : wl_0_45 
* INPUT : wl_1_45 
* INPUT : wl_0_46 
* INPUT : wl_1_46 
* INPUT : wl_0_47 
* INPUT : wl_1_47 
* INPUT : wl_0_48 
* INPUT : wl_1_48 
* INPUT : wl_0_49 
* INPUT : wl_1_49 
* INPUT : wl_0_50 
* INPUT : wl_1_50 
* INPUT : wl_0_51 
* INPUT : wl_1_51 
* INPUT : wl_0_52 
* INPUT : wl_1_52 
* INPUT : wl_0_53 
* INPUT : wl_1_53 
* INPUT : wl_0_54 
* INPUT : wl_1_54 
* INPUT : wl_0_55 
* INPUT : wl_1_55 
* INPUT : wl_0_56 
* INPUT : wl_1_56 
* INPUT : wl_0_57 
* INPUT : wl_1_57 
* INPUT : wl_0_58 
* INPUT : wl_1_58 
* INPUT : wl_0_59 
* INPUT : wl_1_59 
* INPUT : wl_0_60 
* INPUT : wl_1_60 
* INPUT : wl_0_61 
* INPUT : wl_1_61 
* INPUT : wl_0_62 
* INPUT : wl_1_62 
* INPUT : wl_0_63 
* INPUT : wl_1_63 
* INPUT : wl_0_64 
* INPUT : wl_1_64 
* INPUT : wl_0_65 
* INPUT : wl_1_65 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_18
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_19
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_20
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_21
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_22
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_23
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_24
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_25
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_26
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_27
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_28
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_29
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_30
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_31
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_32
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_33
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_34
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_35
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_36
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_37
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_38
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_39
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_40
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_41
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_42
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_43
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_44
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_45
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_46
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_47
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_48
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_49
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_50
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_51
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_52
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_53
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_54
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_55
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_56
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_57
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_58
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_59
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_60
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_61
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_62
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_63
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_64
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_64 wl_1_64 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_65
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_65 wl_1_65 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
.ENDS subbyte2_replica_column_0

.SUBCKT subbyte2_replica_column
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35 wl_0_36
+ wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38 wl_0_39 wl_1_39 wl_0_40
+ wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42 wl_0_43 wl_1_43 wl_0_44
+ wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46 wl_0_47 wl_1_47 wl_0_48
+ wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50 wl_0_51 wl_1_51 wl_0_52
+ wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54 wl_0_55 wl_1_55 wl_0_56
+ wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58 wl_0_59 wl_1_59 wl_0_60
+ wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62 wl_0_63 wl_1_63 wl_0_64
+ wl_1_64 wl_0_65 wl_1_65 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* INPUT : wl_0_36 
* INPUT : wl_1_36 
* INPUT : wl_0_37 
* INPUT : wl_1_37 
* INPUT : wl_0_38 
* INPUT : wl_1_38 
* INPUT : wl_0_39 
* INPUT : wl_1_39 
* INPUT : wl_0_40 
* INPUT : wl_1_40 
* INPUT : wl_0_41 
* INPUT : wl_1_41 
* INPUT : wl_0_42 
* INPUT : wl_1_42 
* INPUT : wl_0_43 
* INPUT : wl_1_43 
* INPUT : wl_0_44 
* INPUT : wl_1_44 
* INPUT : wl_0_45 
* INPUT : wl_1_45 
* INPUT : wl_0_46 
* INPUT : wl_1_46 
* INPUT : wl_0_47 
* INPUT : wl_1_47 
* INPUT : wl_0_48 
* INPUT : wl_1_48 
* INPUT : wl_0_49 
* INPUT : wl_1_49 
* INPUT : wl_0_50 
* INPUT : wl_1_50 
* INPUT : wl_0_51 
* INPUT : wl_1_51 
* INPUT : wl_0_52 
* INPUT : wl_1_52 
* INPUT : wl_0_53 
* INPUT : wl_1_53 
* INPUT : wl_0_54 
* INPUT : wl_1_54 
* INPUT : wl_0_55 
* INPUT : wl_1_55 
* INPUT : wl_0_56 
* INPUT : wl_1_56 
* INPUT : wl_0_57 
* INPUT : wl_1_57 
* INPUT : wl_0_58 
* INPUT : wl_1_58 
* INPUT : wl_0_59 
* INPUT : wl_1_59 
* INPUT : wl_0_60 
* INPUT : wl_1_60 
* INPUT : wl_0_61 
* INPUT : wl_1_61 
* INPUT : wl_0_62 
* INPUT : wl_1_62 
* INPUT : wl_0_63 
* INPUT : wl_1_63 
* INPUT : wl_0_64 
* INPUT : wl_1_64 
* INPUT : wl_0_65 
* INPUT : wl_1_65 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_18
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_19
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_20
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_21
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_22
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_23
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_24
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_25
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_26
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_27
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_28
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_29
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_30
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_31
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_32
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_33
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_34
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_35
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_36
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_37
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_38
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_39
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_40
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_41
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_42
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_43
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_44
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_45
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_46
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_47
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_48
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_49
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_50
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_51
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_52
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_53
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_54
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_55
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_56
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_57
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_58
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_59
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_60
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_61
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_62
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_63
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_64
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_64 wl_1_64 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_65
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_65 wl_1_65 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
.ENDS subbyte2_replica_column

.SUBCKT subbyte2_dummy_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 wl_0_0
+ wl_1_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
.ENDS subbyte2_dummy_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell BL0 BR0 BL1 BR1 WL0 WL1 VDD GND

X0 Q WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 Q_bar WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

X3 BL0 WL0 Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 BR0 WL0 Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

* Bitcell Core
X1 GND Q_bar Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 GND Q_bar Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X9 Q Q_bar VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

X5 GND Q Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 GND Q Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 VDD Q Q_bar VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

* drainOnly PMOS
*X10 Q_bar WL1 Q_bar VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14
*X11 Q WL0 Q VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14

* drainOnly NMOS
X12 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X14 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS

.SUBCKT subbyte2_bitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 wl_0_0
+ wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5
+ wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18
+ wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22
+ wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26
+ wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30
+ wl_1_30 wl_0_31 wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34
+ wl_1_34 wl_0_35 wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38
+ wl_1_38 wl_0_39 wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42
+ wl_1_42 wl_0_43 wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46
+ wl_1_46 wl_0_47 wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50
+ wl_1_50 wl_0_51 wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54
+ wl_1_54 wl_0_55 wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58
+ wl_1_58 wl_0_59 wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62
+ wl_1_62 wl_0_63 wl_1_63 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* INPUT : wl_0_36 
* INPUT : wl_1_36 
* INPUT : wl_0_37 
* INPUT : wl_1_37 
* INPUT : wl_0_38 
* INPUT : wl_1_38 
* INPUT : wl_0_39 
* INPUT : wl_1_39 
* INPUT : wl_0_40 
* INPUT : wl_1_40 
* INPUT : wl_0_41 
* INPUT : wl_1_41 
* INPUT : wl_0_42 
* INPUT : wl_1_42 
* INPUT : wl_0_43 
* INPUT : wl_1_43 
* INPUT : wl_0_44 
* INPUT : wl_1_44 
* INPUT : wl_0_45 
* INPUT : wl_1_45 
* INPUT : wl_0_46 
* INPUT : wl_1_46 
* INPUT : wl_0_47 
* INPUT : wl_1_47 
* INPUT : wl_0_48 
* INPUT : wl_1_48 
* INPUT : wl_0_49 
* INPUT : wl_1_49 
* INPUT : wl_0_50 
* INPUT : wl_1_50 
* INPUT : wl_0_51 
* INPUT : wl_1_51 
* INPUT : wl_0_52 
* INPUT : wl_1_52 
* INPUT : wl_0_53 
* INPUT : wl_1_53 
* INPUT : wl_0_54 
* INPUT : wl_1_54 
* INPUT : wl_0_55 
* INPUT : wl_1_55 
* INPUT : wl_0_56 
* INPUT : wl_1_56 
* INPUT : wl_0_57 
* INPUT : wl_1_57 
* INPUT : wl_0_58 
* INPUT : wl_1_58 
* INPUT : wl_0_59 
* INPUT : wl_1_59 
* INPUT : wl_0_60 
* INPUT : wl_1_60 
* INPUT : wl_0_61 
* INPUT : wl_1_61 
* INPUT : wl_0_62 
* INPUT : wl_1_62 
* INPUT : wl_0_63 
* INPUT : wl_1_63 
* POWER : vdd 
* GROUND: gnd 
* rows: 64 cols: 32
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r16_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r17_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r18_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_18 wl_1_18 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r19_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_19 wl_1_19 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r20_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_20 wl_1_20 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r21_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_21 wl_1_21 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r22_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_22 wl_1_22 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r23_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_23 wl_1_23 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r24_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_24 wl_1_24 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r25_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_25 wl_1_25 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r26_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_26 wl_1_26 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r27_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_27 wl_1_27 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r28_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_28 wl_1_28 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r29_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_29 wl_1_29 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r30_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_30 wl_1_30 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r31_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_31 wl_1_31 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r32_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_32 wl_1_32 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r33_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_33 wl_1_33 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r34_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_34 wl_1_34 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r35_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_35 wl_1_35 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r36_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_36 wl_1_36 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r37_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_37 wl_1_37 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r38_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_38 wl_1_38 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r39_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_39 wl_1_39 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r40_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_40 wl_1_40 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r41_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_41 wl_1_41 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r42_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_42 wl_1_42 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r43_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_43 wl_1_43 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r44_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_44 wl_1_44 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r45_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_45 wl_1_45 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r46_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_46 wl_1_46 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r47_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_47 wl_1_47 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r48_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_48 wl_1_48 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r49_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_49 wl_1_49 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r50_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_50 wl_1_50 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r51_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_51 wl_1_51 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r52_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_52 wl_1_52 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r53_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_53 wl_1_53 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r54_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_54 wl_1_54 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r55_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_55 wl_1_55 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r56_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_56 wl_1_56 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r57_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_57 wl_1_57 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r58_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_58 wl_1_58 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r59_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_59 wl_1_59 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r60_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_60 wl_1_60 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r61_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_61 wl_1_61 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r62_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_62 wl_1_62 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r63_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_63 wl_1_63 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
.ENDS subbyte2_bitcell_array

.SUBCKT subbyte2_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1 wl_0_0 wl_1_0 wl_0_1
+ wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6
+ wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10
+ wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14
+ wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18
+ wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22
+ wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26
+ wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30
+ wl_0_31 wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34
+ wl_0_35 wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38
+ wl_0_39 wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42
+ wl_0_43 wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46
+ wl_0_47 wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50
+ wl_0_51 wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54
+ wl_0_55 wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58
+ wl_0_59 wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62
+ wl_0_63 wl_1_63 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : rbl_wl_0_1 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* INPUT : wl_0_36 
* INPUT : wl_1_36 
* INPUT : wl_0_37 
* INPUT : wl_1_37 
* INPUT : wl_0_38 
* INPUT : wl_1_38 
* INPUT : wl_0_39 
* INPUT : wl_1_39 
* INPUT : wl_0_40 
* INPUT : wl_1_40 
* INPUT : wl_0_41 
* INPUT : wl_1_41 
* INPUT : wl_0_42 
* INPUT : wl_1_42 
* INPUT : wl_0_43 
* INPUT : wl_1_43 
* INPUT : wl_0_44 
* INPUT : wl_1_44 
* INPUT : wl_0_45 
* INPUT : wl_1_45 
* INPUT : wl_0_46 
* INPUT : wl_1_46 
* INPUT : wl_0_47 
* INPUT : wl_1_47 
* INPUT : wl_0_48 
* INPUT : wl_1_48 
* INPUT : wl_0_49 
* INPUT : wl_1_49 
* INPUT : wl_0_50 
* INPUT : wl_1_50 
* INPUT : wl_0_51 
* INPUT : wl_1_51 
* INPUT : wl_0_52 
* INPUT : wl_1_52 
* INPUT : wl_0_53 
* INPUT : wl_1_53 
* INPUT : wl_0_54 
* INPUT : wl_1_54 
* INPUT : wl_0_55 
* INPUT : wl_1_55 
* INPUT : wl_0_56 
* INPUT : wl_1_56 
* INPUT : wl_0_57 
* INPUT : wl_1_57 
* INPUT : wl_0_58 
* INPUT : wl_1_58 
* INPUT : wl_0_59 
* INPUT : wl_1_59 
* INPUT : wl_0_60 
* INPUT : wl_1_60 
* INPUT : wl_0_61 
* INPUT : wl_1_61 
* INPUT : wl_0_62 
* INPUT : wl_1_62 
* INPUT : wl_0_63 
* INPUT : wl_1_63 
* INPUT : rbl_wl_1_0 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rows: 64 cols: 32
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xbitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 wl_0_0
+ wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5
+ wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18
+ wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22
+ wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26
+ wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30
+ wl_1_30 wl_0_31 wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34
+ wl_1_34 wl_0_35 wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38
+ wl_1_38 wl_0_39 wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42
+ wl_1_42 wl_0_43 wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46
+ wl_1_46 wl_0_47 wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50
+ wl_1_50 wl_0_51 wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54
+ wl_1_54 wl_0_55 wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58
+ wl_1_58 wl_0_59 wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62
+ wl_1_62 wl_0_63 wl_1_63 vdd gnd
+ subbyte2_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17
+ wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21
+ wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25
+ wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29
+ wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33
+ wl_0_34 wl_1_34 wl_0_35 wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37
+ wl_0_38 wl_1_38 wl_0_39 wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41
+ wl_0_42 wl_1_42 wl_0_43 wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45
+ wl_0_46 wl_1_46 wl_0_47 wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49
+ wl_0_50 wl_1_50 wl_0_51 wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53
+ wl_0_54 wl_1_54 wl_0_55 wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57
+ wl_0_58 wl_1_58 wl_0_59 wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61
+ wl_0_62 wl_1_62 wl_0_63 wl_1_63 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ subbyte2_replica_column
Xreplica_col_1
+ rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17
+ wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21
+ wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25
+ wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29
+ wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33
+ wl_0_34 wl_1_34 wl_0_35 wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37
+ wl_0_38 wl_1_38 wl_0_39 wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41
+ wl_0_42 wl_1_42 wl_0_43 wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45
+ wl_0_46 wl_1_46 wl_0_47 wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49
+ wl_0_50 wl_1_50 wl_0_51 wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53
+ wl_0_54 wl_1_54 wl_0_55 wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57
+ wl_0_58 wl_1_58 wl_0_59 wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61
+ wl_0_62 wl_1_62 wl_0_63 wl_1_63 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ subbyte2_replica_column_0
Xdummy_row_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ rbl_wl_0_0 rbl_wl_0_1 vdd gnd
+ subbyte2_dummy_array
Xdummy_row_1
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ subbyte2_dummy_array
.ENDS subbyte2_replica_bitcell_array

.SUBCKT subbyte2_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2
+ wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7
+ wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11
+ wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15
+ wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19
+ wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23
+ wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27
+ wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31
+ wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35
+ wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38 wl_0_39 wl_1_39
+ wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42 wl_0_43 wl_1_43
+ wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46 wl_0_47 wl_1_47
+ wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50 wl_0_51 wl_1_51
+ wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54 wl_0_55 wl_1_55
+ wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58 wl_0_59 wl_1_59
+ wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62 wl_0_63 wl_1_63
+ rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* INPUT : wl_0_36 
* INPUT : wl_1_36 
* INPUT : wl_0_37 
* INPUT : wl_1_37 
* INPUT : wl_0_38 
* INPUT : wl_1_38 
* INPUT : wl_0_39 
* INPUT : wl_1_39 
* INPUT : wl_0_40 
* INPUT : wl_1_40 
* INPUT : wl_0_41 
* INPUT : wl_1_41 
* INPUT : wl_0_42 
* INPUT : wl_1_42 
* INPUT : wl_0_43 
* INPUT : wl_1_43 
* INPUT : wl_0_44 
* INPUT : wl_1_44 
* INPUT : wl_0_45 
* INPUT : wl_1_45 
* INPUT : wl_0_46 
* INPUT : wl_1_46 
* INPUT : wl_0_47 
* INPUT : wl_1_47 
* INPUT : wl_0_48 
* INPUT : wl_1_48 
* INPUT : wl_0_49 
* INPUT : wl_1_49 
* INPUT : wl_0_50 
* INPUT : wl_1_50 
* INPUT : wl_0_51 
* INPUT : wl_1_51 
* INPUT : wl_0_52 
* INPUT : wl_1_52 
* INPUT : wl_0_53 
* INPUT : wl_1_53 
* INPUT : wl_0_54 
* INPUT : wl_1_54 
* INPUT : wl_0_55 
* INPUT : wl_1_55 
* INPUT : wl_0_56 
* INPUT : wl_1_56 
* INPUT : wl_0_57 
* INPUT : wl_1_57 
* INPUT : wl_0_58 
* INPUT : wl_1_58 
* INPUT : wl_0_59 
* INPUT : wl_1_59 
* INPUT : wl_0_60 
* INPUT : wl_1_60 
* INPUT : wl_0_61 
* INPUT : wl_1_61 
* INPUT : wl_0_62 
* INPUT : wl_1_62 
* INPUT : wl_0_63 
* INPUT : wl_1_63 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rows: 64 cols: 32
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 gnd wl_0_0 wl_1_0 wl_0_1 wl_1_1
+ wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6
+ wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11
+ wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15
+ wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19
+ wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23
+ wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27
+ wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31
+ wl_1_31 wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35
+ wl_1_35 wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38 wl_0_39
+ wl_1_39 wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42 wl_0_43
+ wl_1_43 wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46 wl_0_47
+ wl_1_47 wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50 wl_0_51
+ wl_1_51 wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54 wl_0_55
+ wl_1_55 wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58 wl_0_59
+ wl_1_59 wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62 wl_0_63
+ wl_1_63 gnd rbl_wl_1_1 vdd gnd
+ subbyte2_replica_bitcell_array
.ENDS subbyte2_capped_replica_bitcell_array

.SUBCKT subbyte2_port_address
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 wl_en wl_0 wl_1 wl_2 wl_3
+ wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15
+ wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26
+ wl_27 wl_28 wl_29 wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37
+ wl_38 wl_39 wl_40 wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48
+ wl_49 wl_50 wl_51 wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59
+ wl_60 wl_61 wl_62 wl_63 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : addr_5 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: wl_32 
* OUTPUT: wl_33 
* OUTPUT: wl_34 
* OUTPUT: wl_35 
* OUTPUT: wl_36 
* OUTPUT: wl_37 
* OUTPUT: wl_38 
* OUTPUT: wl_39 
* OUTPUT: wl_40 
* OUTPUT: wl_41 
* OUTPUT: wl_42 
* OUTPUT: wl_43 
* OUTPUT: wl_44 
* OUTPUT: wl_45 
* OUTPUT: wl_46 
* OUTPUT: wl_47 
* OUTPUT: wl_48 
* OUTPUT: wl_49 
* OUTPUT: wl_50 
* OUTPUT: wl_51 
* OUTPUT: wl_52 
* OUTPUT: wl_53 
* OUTPUT: wl_54 
* OUTPUT: wl_55 
* OUTPUT: wl_56 
* OUTPUT: wl_57 
* OUTPUT: wl_58 
* OUTPUT: wl_59 
* OUTPUT: wl_60 
* OUTPUT: wl_61 
* OUTPUT: wl_62 
* OUTPUT: wl_63 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 addr_5 dec_out_0 dec_out_1
+ dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8
+ dec_out_9 dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14
+ dec_out_15 dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20
+ dec_out_21 dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26
+ dec_out_27 dec_out_28 dec_out_29 dec_out_30 dec_out_31 dec_out_32
+ dec_out_33 dec_out_34 dec_out_35 dec_out_36 dec_out_37 dec_out_38
+ dec_out_39 dec_out_40 dec_out_41 dec_out_42 dec_out_43 dec_out_44
+ dec_out_45 dec_out_46 dec_out_47 dec_out_48 dec_out_49 dec_out_50
+ dec_out_51 dec_out_52 dec_out_53 dec_out_54 dec_out_55 dec_out_56
+ dec_out_57 dec_out_58 dec_out_59 dec_out_60 dec_out_61 dec_out_62
+ dec_out_63 vdd gnd
+ subbyte2_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 dec_out_32 dec_out_33 dec_out_34 dec_out_35 dec_out_36
+ dec_out_37 dec_out_38 dec_out_39 dec_out_40 dec_out_41 dec_out_42
+ dec_out_43 dec_out_44 dec_out_45 dec_out_46 dec_out_47 dec_out_48
+ dec_out_49 dec_out_50 dec_out_51 dec_out_52 dec_out_53 dec_out_54
+ dec_out_55 dec_out_56 dec_out_57 dec_out_58 dec_out_59 dec_out_60
+ dec_out_61 dec_out_62 dec_out_63 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18
+ wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29
+ wl_30 wl_31 wl_32 wl_33 wl_34 wl_35 wl_36 wl_37 wl_38 wl_39 wl_40
+ wl_41 wl_42 wl_43 wl_44 wl_45 wl_46 wl_47 wl_48 wl_49 wl_50 wl_51
+ wl_52 wl_53 wl_54 wl_55 wl_56 wl_57 wl_58 wl_59 wl_60 wl_61 wl_62
+ wl_63 wl_en vdd gnd
+ subbyte2_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ subbyte2_and2_dec_0
.ENDS subbyte2_port_address

.SUBCKT subbyte2_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1]
Xbuf_inv1
+ A Z vdd gnd
+ subbyte2_pinv
.ENDS subbyte2_pdriver

.SUBCKT subbyte2_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_nand
+ A B zb_int vdd gnd
+ subbyte2_pnand2
Xpand2_inv
+ zb_int Z vdd gnd
+ subbyte2_pdriver
.ENDS subbyte2_pand2

.SUBCKT subbyte2_hierarchical_predecode2x4_0
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ subbyte2_pinv_0
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ subbyte2_pinv_0
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ subbyte2_pand2
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ subbyte2_pand2
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ subbyte2_pand2
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ subbyte2_pand2
.ENDS subbyte2_hierarchical_predecode2x4_0

.SUBCKT subbyte2_column_decoder
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xcolumn_decoder
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
+ subbyte2_hierarchical_predecode2x4_0
.ENDS subbyte2_column_decoder

.SUBCKT subbyte2_bank
+ dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7
+ rbl_bl_0_0 rbl_bl_1_1 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6
+ din0_7 addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7
+ addr1_0 addr1_1 addr1_2 addr1_3 addr1_4 addr1_5 addr1_6 addr1_7 s_en1
+ p_en_bar0 p_en_bar1 w_en0 wl_en0 wl_en1 vdd gnd
* OUTPUT: dout1_0 
* OUTPUT: dout1_1 
* OUTPUT: dout1_2 
* OUTPUT: dout1_3 
* OUTPUT: dout1_4 
* OUTPUT: dout1_5 
* OUTPUT: dout1_6 
* OUTPUT: dout1_7 
* OUTPUT: rbl_bl_0_0 
* OUTPUT: rbl_bl_1_1 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : addr0_5 
* INPUT : addr0_6 
* INPUT : addr0_7 
* INPUT : addr1_0 
* INPUT : addr1_1 
* INPUT : addr1_2 
* INPUT : addr1_3 
* INPUT : addr1_4 
* INPUT : addr1_5 
* INPUT : addr1_6 
* INPUT : addr1_7 
* INPUT : s_en1 
* INPUT : p_en_bar0 
* INPUT : p_en_bar1 
* INPUT : w_en0 
* INPUT : wl_en0 
* INPUT : wl_en1 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2
+ wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7
+ wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11
+ wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15
+ wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19
+ wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23
+ wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27
+ wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31
+ wl_0_32 wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35
+ wl_0_36 wl_1_36 wl_0_37 wl_1_37 wl_0_38 wl_1_38 wl_0_39 wl_1_39
+ wl_0_40 wl_1_40 wl_0_41 wl_1_41 wl_0_42 wl_1_42 wl_0_43 wl_1_43
+ wl_0_44 wl_1_44 wl_0_45 wl_1_45 wl_0_46 wl_1_46 wl_0_47 wl_1_47
+ wl_0_48 wl_1_48 wl_0_49 wl_1_49 wl_0_50 wl_1_50 wl_0_51 wl_1_51
+ wl_0_52 wl_1_52 wl_0_53 wl_1_53 wl_0_54 wl_1_54 wl_0_55 wl_1_55
+ wl_0_56 wl_1_56 wl_0_57 wl_1_57 wl_0_58 wl_1_58 wl_0_59 wl_1_59
+ wl_0_60 wl_1_60 wl_0_61 wl_1_61 wl_0_62 wl_1_62 wl_0_63 wl_1_63
+ rbl_wl1 vdd gnd
+ subbyte2_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 din0_0 din0_1 din0_2
+ din0_3 din0_4 din0_5 din0_6 din0_7 sel0_0 sel0_1 sel0_2 sel0_3
+ p_en_bar0 w_en0 vdd gnd
+ subbyte2_port_data
Xport_data1
+ rbl_bl_1_1 rbl_br_1_1 bl_1_0 br_1_0 bl_1_1 br_1_1 bl_1_2 br_1_2 bl_1_3
+ br_1_3 bl_1_4 br_1_4 bl_1_5 br_1_5 bl_1_6 br_1_6 bl_1_7 br_1_7 bl_1_8
+ br_1_8 bl_1_9 br_1_9 bl_1_10 br_1_10 bl_1_11 br_1_11 bl_1_12 br_1_12
+ bl_1_13 br_1_13 bl_1_14 br_1_14 bl_1_15 br_1_15 bl_1_16 br_1_16
+ bl_1_17 br_1_17 bl_1_18 br_1_18 bl_1_19 br_1_19 bl_1_20 br_1_20
+ bl_1_21 br_1_21 bl_1_22 br_1_22 bl_1_23 br_1_23 bl_1_24 br_1_24
+ bl_1_25 br_1_25 bl_1_26 br_1_26 bl_1_27 br_1_27 bl_1_28 br_1_28
+ bl_1_29 br_1_29 bl_1_30 br_1_30 bl_1_31 br_1_31 dout1_0 dout1_1
+ dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 sel1_0 sel1_1 sel1_2
+ sel1_3 s_en1 p_en_bar1 vdd gnd
+ subbyte2_port_data_0
Xport_address0
+ addr0_2 addr0_3 addr0_4 addr0_5 addr0_6 addr0_7 wl_en0 wl_0_0 wl_0_1
+ wl_0_2 wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10
+ wl_0_11 wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18
+ wl_0_19 wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26
+ wl_0_27 wl_0_28 wl_0_29 wl_0_30 wl_0_31 wl_0_32 wl_0_33 wl_0_34
+ wl_0_35 wl_0_36 wl_0_37 wl_0_38 wl_0_39 wl_0_40 wl_0_41 wl_0_42
+ wl_0_43 wl_0_44 wl_0_45 wl_0_46 wl_0_47 wl_0_48 wl_0_49 wl_0_50
+ wl_0_51 wl_0_52 wl_0_53 wl_0_54 wl_0_55 wl_0_56 wl_0_57 wl_0_58
+ wl_0_59 wl_0_60 wl_0_61 wl_0_62 wl_0_63 rbl_wl0 vdd gnd
+ subbyte2_port_address
Xport_address1
+ addr1_2 addr1_3 addr1_4 addr1_5 addr1_6 addr1_7 wl_en1 wl_1_0 wl_1_1
+ wl_1_2 wl_1_3 wl_1_4 wl_1_5 wl_1_6 wl_1_7 wl_1_8 wl_1_9 wl_1_10
+ wl_1_11 wl_1_12 wl_1_13 wl_1_14 wl_1_15 wl_1_16 wl_1_17 wl_1_18
+ wl_1_19 wl_1_20 wl_1_21 wl_1_22 wl_1_23 wl_1_24 wl_1_25 wl_1_26
+ wl_1_27 wl_1_28 wl_1_29 wl_1_30 wl_1_31 wl_1_32 wl_1_33 wl_1_34
+ wl_1_35 wl_1_36 wl_1_37 wl_1_38 wl_1_39 wl_1_40 wl_1_41 wl_1_42
+ wl_1_43 wl_1_44 wl_1_45 wl_1_46 wl_1_47 wl_1_48 wl_1_49 wl_1_50
+ wl_1_51 wl_1_52 wl_1_53 wl_1_54 wl_1_55 wl_1_56 wl_1_57 wl_1_58
+ wl_1_59 wl_1_60 wl_1_61 wl_1_62 wl_1_63 rbl_wl1 vdd gnd
+ subbyte2_port_address_0
Xcol_address_decoder0
+ addr0_0 addr0_1 sel0_0 sel0_1 sel0_2 sel0_3 vdd gnd
+ subbyte2_column_decoder
Xcol_address_decoder1
+ addr1_0 addr1_1 sel1_0 sel1_1 sel1_2 sel1_3 vdd gnd
+ subbyte2_column_decoder
.ENDS subbyte2_bank

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=5 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=5 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT subbyte2_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=5 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=5 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS subbyte2_pinv_12

.SUBCKT subbyte2_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [8]
Xbuf_inv1
+ A Z vdd gnd
+ subbyte2_pinv_12
.ENDS subbyte2_pdriver_4

.SUBCKT subbyte2_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 8
Xpand3_nand
+ A B C zb_int vdd gnd
+ subbyte2_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ subbyte2_pdriver_4
.ENDS subbyte2_pand3_0

.SUBCKT subbyte2_control_logic_r
+ csb clk rbl_bl s_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 64
* words_per_row: 4
* word_size 8
Xctrl_dffs
+ csb cs_bar cs clk_buf vdd gnd
+ subbyte2_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ subbyte2_pdriver_1
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ subbyte2_pinv_0
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ subbyte2_pand2_0
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ subbyte2_pand2_0
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ subbyte2_pdriver_2
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar cs s_en vdd gnd
+ subbyte2_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ subbyte2_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ subbyte2_pnand2_0
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ subbyte2_pdriver_5
.ENDS subbyte2_control_logic_r

.SUBCKT subbyte2_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 dout_0 dout_1 dout_2
+ dout_3 dout_4 dout_5 dout_6 dout_7 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 8
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c1
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c2
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c3
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c4
+ din_4 dout_4 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c5
+ din_5 dout_5 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c6
+ din_6 dout_6 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c7
+ din_7 dout_7 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS subbyte2_data_dff

.SUBCKT subbyte2_row_addr_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 dout_0 dout_1 dout_2 dout_3 dout_4
+ dout_5 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 6 cols: 1
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r1_c0
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r2_c0
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r3_c0
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r4_c0
+ din_4 dout_4 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r5_c0
+ din_5 dout_5 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS subbyte2_row_addr_dff

.SUBCKT subbyte2
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] addr0[5] addr0[6]
+ addr0[7] addr1[0] addr1[1] addr1[2] addr1[3] addr1[4] addr1[5]
+ addr1[6] addr1[7] csb0 csb1 clk0 clk1 dout1[0] dout1[1] dout1[2]
+ dout1[3] dout1[4] dout1[5] dout1[6] dout1[7] vccd1 vssd1
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : addr0[5] 
* INPUT : addr0[6] 
* INPUT : addr0[7] 
* INPUT : addr1[0] 
* INPUT : addr1[1] 
* INPUT : addr1[2] 
* INPUT : addr1[3] 
* INPUT : addr1[4] 
* INPUT : addr1[5] 
* INPUT : addr1[6] 
* INPUT : addr1[7] 
* INPUT : csb0 
* INPUT : csb1 
* INPUT : clk0 
* INPUT : clk1 
* OUTPUT: dout1[0] 
* OUTPUT: dout1[1] 
* OUTPUT: dout1[2] 
* OUTPUT: dout1[3] 
* OUTPUT: dout1[4] 
* OUTPUT: dout1[5] 
* OUTPUT: dout1[6] 
* OUTPUT: dout1[7] 
* POWER : vccd1 
* GROUND: vssd1 
Xbank0
+ dout1[0] dout1[1] dout1[2] dout1[3] dout1[4] dout1[5] dout1[6]
+ dout1[7] rbl_bl0 rbl_bl1 bank_din0_0 bank_din0_1 bank_din0_2
+ bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6 bank_din0_7 a0_0 a0_1
+ a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7
+ s_en1 p_en_bar0 p_en_bar1 w_en0 wl_en0 wl_en1 vccd1 vssd1
+ subbyte2_bank
Xcontrol0
+ csb0 clk0 rbl_bl0 w_en0 p_en_bar0 wl_en0 clk_buf0 vccd1 vssd1
+ subbyte2_control_logic_w
Xcontrol1
+ csb1 clk1 rbl_bl1 s_en1 p_en_bar1 wl_en1 clk_buf1 vccd1 vssd1
+ subbyte2_control_logic_r
Xrow_address0
+ addr0[2] addr0[3] addr0[4] addr0[5] addr0[6] addr0[7] a0_2 a0_3 a0_4
+ a0_5 a0_6 a0_7 clk_buf0 vccd1 vssd1
+ subbyte2_row_addr_dff
Xrow_address1
+ addr1[2] addr1[3] addr1[4] addr1[5] addr1[6] addr1[7] a1_2 a1_3 a1_4
+ a1_5 a1_6 a1_7 clk_buf1 vccd1 vssd1
+ subbyte2_row_addr_dff
Xcol_address0
+ addr0[0] addr0[1] a0_0 a0_1 clk_buf0 vccd1 vssd1
+ subbyte2_col_addr_dff
Xcol_address1
+ addr1[0] addr1[1] a1_0 a1_1 clk_buf1 vccd1 vssd1
+ subbyte2_col_addr_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 clk_buf0 vccd1 vssd1
+ subbyte2_data_dff
.ENDS subbyte2