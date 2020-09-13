############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project network
set_top network_top
add_files network/network_top.h
add_files network/network_top.cpp
add_files network/networks/model_post_quant_dchg.h
add_files network/networks/model_post_quant_chg.h
add_files -tb network/network_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb network/test_data/ideal_dchg.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb network/test_data/ideal_chg.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7vx485t-ffg1157-1}
create_clock -period 100 -name default
config_sdx -optimization_level none -target none
config_export -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#source "./network/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
