# This script segment is generated automatically by AutoPilot

set id 120
set name network_top_mac_mfYi
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 32
set in2_signed 0
set out_width 32
set exp i0*i1+i2
set arg_lists {i0 {8 1 +} i1 {8 1 +} m {16 1 +} i2 {32 0 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 121
set name network_top_mac_mg8j
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 8
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 15
set in2_signed 1
set out_width 16
set exp i0*i1+i2
set arg_lists {i0 {8 1 +} i1 {8 1 +} m {16 1 +} i2 {15 1 +} p {16 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_r \
    op interface \
    ports { input_r_address0 { O 1 vector } input_r_ce0 { O 1 bit } input_r_q0 { I 8 vector } input_r_address1 { O 1 vector } input_r_ce1 { O 1 bit } input_r_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 1 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name network_weights_weights_0_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_0_0 \
    op interface \
    ports { network_weights_weights_0_0_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name network_weights_weights_0_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_0_1 \
    op interface \
    ports { network_weights_weights_0_0_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name network_weights_weights_0_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_1_0 \
    op interface \
    ports { network_weights_weights_0_1_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name network_weights_weights_0_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_1_1 \
    op interface \
    ports { network_weights_weights_0_1_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name network_weights_weights_0_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_2_0 \
    op interface \
    ports { network_weights_weights_0_2_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name network_weights_weights_0_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_2_1 \
    op interface \
    ports { network_weights_weights_0_2_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name network_weights_weights_0_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_3_0 \
    op interface \
    ports { network_weights_weights_0_3_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name network_weights_weights_0_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_3_1 \
    op interface \
    ports { network_weights_weights_0_3_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name network_weights_weights_0_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_4_0 \
    op interface \
    ports { network_weights_weights_0_4_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name network_weights_weights_0_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_4_1 \
    op interface \
    ports { network_weights_weights_0_4_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name network_weights_weights_0_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_5_0 \
    op interface \
    ports { network_weights_weights_0_5_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name network_weights_weights_0_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_5_1 \
    op interface \
    ports { network_weights_weights_0_5_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name network_weights_weights_0_6_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_6_0 \
    op interface \
    ports { network_weights_weights_0_6_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name network_weights_weights_0_6_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_6_1 \
    op interface \
    ports { network_weights_weights_0_6_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name network_weights_weights_0_7_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_7_0 \
    op interface \
    ports { network_weights_weights_0_7_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name network_weights_weights_0_7_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_7_1 \
    op interface \
    ports { network_weights_weights_0_7_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name network_weights_weights_1_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_0 \
    op interface \
    ports { network_weights_weights_1_0_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name network_weights_weights_1_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_1 \
    op interface \
    ports { network_weights_weights_1_0_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name network_weights_weights_1_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_2 \
    op interface \
    ports { network_weights_weights_1_0_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name network_weights_weights_1_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_3 \
    op interface \
    ports { network_weights_weights_1_0_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name network_weights_weights_1_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_4 \
    op interface \
    ports { network_weights_weights_1_0_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name network_weights_weights_1_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_5 \
    op interface \
    ports { network_weights_weights_1_0_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name network_weights_weights_1_0_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_6 \
    op interface \
    ports { network_weights_weights_1_0_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name network_weights_weights_1_0_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_7 \
    op interface \
    ports { network_weights_weights_1_0_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name network_weights_weights_1_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_0 \
    op interface \
    ports { network_weights_weights_1_1_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name network_weights_weights_1_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_1 \
    op interface \
    ports { network_weights_weights_1_1_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name network_weights_weights_1_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_2 \
    op interface \
    ports { network_weights_weights_1_1_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name network_weights_weights_1_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_3 \
    op interface \
    ports { network_weights_weights_1_1_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name network_weights_weights_1_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_4 \
    op interface \
    ports { network_weights_weights_1_1_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name network_weights_weights_1_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_5 \
    op interface \
    ports { network_weights_weights_1_1_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name network_weights_weights_1_1_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_6 \
    op interface \
    ports { network_weights_weights_1_1_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name network_weights_weights_1_1_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_7 \
    op interface \
    ports { network_weights_weights_1_1_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name network_weights_weights_1_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_0 \
    op interface \
    ports { network_weights_weights_1_2_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name network_weights_weights_1_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_1 \
    op interface \
    ports { network_weights_weights_1_2_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name network_weights_weights_1_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_2 \
    op interface \
    ports { network_weights_weights_1_2_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name network_weights_weights_1_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_3 \
    op interface \
    ports { network_weights_weights_1_2_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name network_weights_weights_1_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_4 \
    op interface \
    ports { network_weights_weights_1_2_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name network_weights_weights_1_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_5 \
    op interface \
    ports { network_weights_weights_1_2_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name network_weights_weights_1_2_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_6 \
    op interface \
    ports { network_weights_weights_1_2_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name network_weights_weights_1_2_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_7 \
    op interface \
    ports { network_weights_weights_1_2_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name network_weights_weights_1_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_0 \
    op interface \
    ports { network_weights_weights_1_3_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name network_weights_weights_1_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_1 \
    op interface \
    ports { network_weights_weights_1_3_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name network_weights_weights_1_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_2 \
    op interface \
    ports { network_weights_weights_1_3_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name network_weights_weights_1_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_3 \
    op interface \
    ports { network_weights_weights_1_3_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name network_weights_weights_1_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_4 \
    op interface \
    ports { network_weights_weights_1_3_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name network_weights_weights_1_3_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_5 \
    op interface \
    ports { network_weights_weights_1_3_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name network_weights_weights_1_3_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_6 \
    op interface \
    ports { network_weights_weights_1_3_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name network_weights_weights_1_3_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_7 \
    op interface \
    ports { network_weights_weights_1_3_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name network_weights_weights_1_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_0 \
    op interface \
    ports { network_weights_weights_1_4_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name network_weights_weights_1_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_1 \
    op interface \
    ports { network_weights_weights_1_4_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name network_weights_weights_1_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_2 \
    op interface \
    ports { network_weights_weights_1_4_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name network_weights_weights_1_4_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_3 \
    op interface \
    ports { network_weights_weights_1_4_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name network_weights_weights_1_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_4 \
    op interface \
    ports { network_weights_weights_1_4_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name network_weights_weights_1_4_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_5 \
    op interface \
    ports { network_weights_weights_1_4_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name network_weights_weights_1_4_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_6 \
    op interface \
    ports { network_weights_weights_1_4_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name network_weights_weights_1_4_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_7 \
    op interface \
    ports { network_weights_weights_1_4_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name network_weights_weights_1_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_0 \
    op interface \
    ports { network_weights_weights_1_5_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name network_weights_weights_1_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_1 \
    op interface \
    ports { network_weights_weights_1_5_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name network_weights_weights_1_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_2 \
    op interface \
    ports { network_weights_weights_1_5_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name network_weights_weights_1_5_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_3 \
    op interface \
    ports { network_weights_weights_1_5_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name network_weights_weights_1_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_4 \
    op interface \
    ports { network_weights_weights_1_5_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name network_weights_weights_1_5_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_5 \
    op interface \
    ports { network_weights_weights_1_5_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name network_weights_weights_1_5_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_6 \
    op interface \
    ports { network_weights_weights_1_5_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name network_weights_weights_1_5_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_7 \
    op interface \
    ports { network_weights_weights_1_5_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name network_weights_weights_1_6_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_0 \
    op interface \
    ports { network_weights_weights_1_6_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name network_weights_weights_1_6_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_1 \
    op interface \
    ports { network_weights_weights_1_6_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name network_weights_weights_1_6_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_2 \
    op interface \
    ports { network_weights_weights_1_6_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name network_weights_weights_1_6_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_3 \
    op interface \
    ports { network_weights_weights_1_6_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name network_weights_weights_1_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_4 \
    op interface \
    ports { network_weights_weights_1_6_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name network_weights_weights_1_6_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_5 \
    op interface \
    ports { network_weights_weights_1_6_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name network_weights_weights_1_6_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_6 \
    op interface \
    ports { network_weights_weights_1_6_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name network_weights_weights_1_6_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_7 \
    op interface \
    ports { network_weights_weights_1_6_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name network_weights_weights_1_7_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_0 \
    op interface \
    ports { network_weights_weights_1_7_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name network_weights_weights_1_7_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_1 \
    op interface \
    ports { network_weights_weights_1_7_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name network_weights_weights_1_7_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_2 \
    op interface \
    ports { network_weights_weights_1_7_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name network_weights_weights_1_7_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_3 \
    op interface \
    ports { network_weights_weights_1_7_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name network_weights_weights_1_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_4 \
    op interface \
    ports { network_weights_weights_1_7_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name network_weights_weights_1_7_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_5 \
    op interface \
    ports { network_weights_weights_1_7_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name network_weights_weights_1_7_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_6 \
    op interface \
    ports { network_weights_weights_1_7_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name network_weights_weights_1_7_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_7 \
    op interface \
    ports { network_weights_weights_1_7_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name network_weights_weights_2_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_0 \
    op interface \
    ports { network_weights_weights_2_0_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name network_weights_weights_2_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_1 \
    op interface \
    ports { network_weights_weights_2_0_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name network_weights_weights_2_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_2 \
    op interface \
    ports { network_weights_weights_2_0_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name network_weights_weights_2_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_3 \
    op interface \
    ports { network_weights_weights_2_0_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name network_weights_weights_2_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_4 \
    op interface \
    ports { network_weights_weights_2_0_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name network_weights_weights_2_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_5 \
    op interface \
    ports { network_weights_weights_2_0_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name network_weights_weights_2_0_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_6 \
    op interface \
    ports { network_weights_weights_2_0_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name network_weights_weights_2_0_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_0_7 \
    op interface \
    ports { network_weights_weights_2_0_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name network_weights_bias_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_0 \
    op interface \
    ports { network_weights_bias_0_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name network_weights_bias_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_1 \
    op interface \
    ports { network_weights_bias_0_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name network_weights_bias_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_2 \
    op interface \
    ports { network_weights_bias_0_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name network_weights_bias_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_3 \
    op interface \
    ports { network_weights_bias_0_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name network_weights_bias_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_4 \
    op interface \
    ports { network_weights_bias_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name network_weights_bias_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_5 \
    op interface \
    ports { network_weights_bias_0_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name network_weights_bias_0_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_6 \
    op interface \
    ports { network_weights_bias_0_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name network_weights_bias_0_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_7 \
    op interface \
    ports { network_weights_bias_0_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name network_weights_bias_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_0 \
    op interface \
    ports { network_weights_bias_1_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name network_weights_bias_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_1 \
    op interface \
    ports { network_weights_bias_1_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name network_weights_bias_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_2 \
    op interface \
    ports { network_weights_bias_1_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name network_weights_bias_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_3 \
    op interface \
    ports { network_weights_bias_1_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name network_weights_bias_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_4 \
    op interface \
    ports { network_weights_bias_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name network_weights_bias_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_5 \
    op interface \
    ports { network_weights_bias_1_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name network_weights_bias_1_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_6 \
    op interface \
    ports { network_weights_bias_1_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name network_weights_bias_1_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_1_7 \
    op interface \
    ports { network_weights_bias_1_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name network_weights_bias_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_2_0 \
    op interface \
    ports { network_weights_bias_2_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name network_weights_output_conversion_scale_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_output_conversion_scale_0 \
    op interface \
    ports { network_weights_output_conversion_scale_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name network_weights_output_conversion_scale_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_output_conversion_scale_1 \
    op interface \
    ports { network_weights_output_conversion_scale_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name network_weights_output_conversion_scale_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_output_conversion_scale_2 \
    op interface \
    ports { network_weights_output_conversion_scale_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


