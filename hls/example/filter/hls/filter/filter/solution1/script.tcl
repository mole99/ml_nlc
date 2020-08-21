############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project filter
set_top filter_c_top
add_files ../filter_c_top.cpp
add_files -tb ../filter_c_tb.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas"
add_files -tb ../filter_c_top_helper.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xa7a12t-csg325-1Q}
create_clock -period 100 -name default
config_bind -effort high
config_rtl -encoding binary -kernel_profile=0 -module_auto_prefix=0 -mult_keep_attribute=0 -reset control -reset_async=0 -reset_level low -verbose
config_interface -clock_enable -expose_global -m_axi_addr64=0 -m_axi_offset off -register_io off -trim_dangling_port
config_schedule -effort high -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose
#source "./filter/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
