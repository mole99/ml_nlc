# This script segment is generated automatically by AutoPilot

set id 244
set name network_top_mac_mhbi
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


set id 245
set name network_top_mac_mibs
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
    id 442 \
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
    id 672 \
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
    id 443 \
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
    id 444 \
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
    id 445 \
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
    id 446 \
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
    id 447 \
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
    id 448 \
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
    id 449 \
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
    id 450 \
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
    id 451 \
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
    id 452 \
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
    id 453 \
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
    id 454 \
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
    id 455 \
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
    id 456 \
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
    id 457 \
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
    id 458 \
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
    id 459 \
    name network_weights_weights_0_8_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_8_0 \
    op interface \
    ports { network_weights_weights_0_8_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name network_weights_weights_0_8_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_8_1 \
    op interface \
    ports { network_weights_weights_0_8_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name network_weights_weights_0_9_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_9_0 \
    op interface \
    ports { network_weights_weights_0_9_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name network_weights_weights_0_9_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_9_1 \
    op interface \
    ports { network_weights_weights_0_9_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name network_weights_weights_0_10_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_10_0 \
    op interface \
    ports { network_weights_weights_0_10_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name network_weights_weights_0_10_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_10_1 \
    op interface \
    ports { network_weights_weights_0_10_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name network_weights_weights_0_11_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_11_0 \
    op interface \
    ports { network_weights_weights_0_11_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name network_weights_weights_0_11_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_11_1 \
    op interface \
    ports { network_weights_weights_0_11_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name network_weights_weights_0_12_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_12_0 \
    op interface \
    ports { network_weights_weights_0_12_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name network_weights_weights_0_12_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_12_1 \
    op interface \
    ports { network_weights_weights_0_12_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name network_weights_weights_0_13_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_13_0 \
    op interface \
    ports { network_weights_weights_0_13_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name network_weights_weights_0_13_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_13_1 \
    op interface \
    ports { network_weights_weights_0_13_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name network_weights_weights_0_14_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_14_0 \
    op interface \
    ports { network_weights_weights_0_14_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name network_weights_weights_0_14_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_14_1 \
    op interface \
    ports { network_weights_weights_0_14_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name network_weights_weights_0_15_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_15_0 \
    op interface \
    ports { network_weights_weights_0_15_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name network_weights_weights_0_15_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_0_15_1 \
    op interface \
    ports { network_weights_weights_0_15_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
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
    id 476 \
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
    id 477 \
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
    id 478 \
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
    id 479 \
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
    id 480 \
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
    id 481 \
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
    id 482 \
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
    id 483 \
    name network_weights_weights_1_0_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_8 \
    op interface \
    ports { network_weights_weights_1_0_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name network_weights_weights_1_0_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_9 \
    op interface \
    ports { network_weights_weights_1_0_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name network_weights_weights_1_0_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_10 \
    op interface \
    ports { network_weights_weights_1_0_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name network_weights_weights_1_0_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_11 \
    op interface \
    ports { network_weights_weights_1_0_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name network_weights_weights_1_0_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_12 \
    op interface \
    ports { network_weights_weights_1_0_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name network_weights_weights_1_0_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_13 \
    op interface \
    ports { network_weights_weights_1_0_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name network_weights_weights_1_0_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_14 \
    op interface \
    ports { network_weights_weights_1_0_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name network_weights_weights_1_0_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_0_15 \
    op interface \
    ports { network_weights_weights_1_0_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
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
    id 492 \
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
    id 493 \
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
    id 494 \
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
    id 495 \
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
    id 496 \
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
    id 497 \
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
    id 498 \
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
    id 499 \
    name network_weights_weights_1_1_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_8 \
    op interface \
    ports { network_weights_weights_1_1_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name network_weights_weights_1_1_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_9 \
    op interface \
    ports { network_weights_weights_1_1_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name network_weights_weights_1_1_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_10 \
    op interface \
    ports { network_weights_weights_1_1_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name network_weights_weights_1_1_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_11 \
    op interface \
    ports { network_weights_weights_1_1_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name network_weights_weights_1_1_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_12 \
    op interface \
    ports { network_weights_weights_1_1_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name network_weights_weights_1_1_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_13 \
    op interface \
    ports { network_weights_weights_1_1_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name network_weights_weights_1_1_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_14 \
    op interface \
    ports { network_weights_weights_1_1_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name network_weights_weights_1_1_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_1_15 \
    op interface \
    ports { network_weights_weights_1_1_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
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
    id 508 \
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
    id 509 \
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
    id 510 \
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
    id 511 \
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
    id 512 \
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
    id 513 \
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
    id 514 \
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
    id 515 \
    name network_weights_weights_1_2_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_8 \
    op interface \
    ports { network_weights_weights_1_2_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name network_weights_weights_1_2_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_9 \
    op interface \
    ports { network_weights_weights_1_2_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name network_weights_weights_1_2_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_10 \
    op interface \
    ports { network_weights_weights_1_2_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name network_weights_weights_1_2_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_11 \
    op interface \
    ports { network_weights_weights_1_2_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name network_weights_weights_1_2_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_12 \
    op interface \
    ports { network_weights_weights_1_2_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name network_weights_weights_1_2_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_13 \
    op interface \
    ports { network_weights_weights_1_2_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name network_weights_weights_1_2_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_14 \
    op interface \
    ports { network_weights_weights_1_2_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name network_weights_weights_1_2_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_2_15 \
    op interface \
    ports { network_weights_weights_1_2_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
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
    id 524 \
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
    id 525 \
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
    id 526 \
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
    id 527 \
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
    id 528 \
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
    id 529 \
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
    id 530 \
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
    id 531 \
    name network_weights_weights_1_3_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_8 \
    op interface \
    ports { network_weights_weights_1_3_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name network_weights_weights_1_3_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_9 \
    op interface \
    ports { network_weights_weights_1_3_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name network_weights_weights_1_3_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_10 \
    op interface \
    ports { network_weights_weights_1_3_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name network_weights_weights_1_3_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_11 \
    op interface \
    ports { network_weights_weights_1_3_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name network_weights_weights_1_3_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_12 \
    op interface \
    ports { network_weights_weights_1_3_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name network_weights_weights_1_3_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_13 \
    op interface \
    ports { network_weights_weights_1_3_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name network_weights_weights_1_3_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_14 \
    op interface \
    ports { network_weights_weights_1_3_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name network_weights_weights_1_3_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_3_15 \
    op interface \
    ports { network_weights_weights_1_3_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
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
    id 540 \
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
    id 541 \
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
    id 542 \
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
    id 543 \
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
    id 544 \
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
    id 545 \
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
    id 546 \
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
    id 547 \
    name network_weights_weights_1_4_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_8 \
    op interface \
    ports { network_weights_weights_1_4_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name network_weights_weights_1_4_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_9 \
    op interface \
    ports { network_weights_weights_1_4_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name network_weights_weights_1_4_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_10 \
    op interface \
    ports { network_weights_weights_1_4_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name network_weights_weights_1_4_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_11 \
    op interface \
    ports { network_weights_weights_1_4_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name network_weights_weights_1_4_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_12 \
    op interface \
    ports { network_weights_weights_1_4_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name network_weights_weights_1_4_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_13 \
    op interface \
    ports { network_weights_weights_1_4_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name network_weights_weights_1_4_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_14 \
    op interface \
    ports { network_weights_weights_1_4_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name network_weights_weights_1_4_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_4_15 \
    op interface \
    ports { network_weights_weights_1_4_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
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
    id 556 \
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
    id 557 \
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
    id 558 \
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
    id 559 \
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
    id 560 \
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
    id 561 \
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
    id 562 \
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
    id 563 \
    name network_weights_weights_1_5_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_8 \
    op interface \
    ports { network_weights_weights_1_5_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name network_weights_weights_1_5_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_9 \
    op interface \
    ports { network_weights_weights_1_5_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name network_weights_weights_1_5_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_10 \
    op interface \
    ports { network_weights_weights_1_5_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name network_weights_weights_1_5_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_11 \
    op interface \
    ports { network_weights_weights_1_5_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name network_weights_weights_1_5_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_12 \
    op interface \
    ports { network_weights_weights_1_5_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name network_weights_weights_1_5_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_13 \
    op interface \
    ports { network_weights_weights_1_5_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name network_weights_weights_1_5_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_14 \
    op interface \
    ports { network_weights_weights_1_5_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name network_weights_weights_1_5_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_5_15 \
    op interface \
    ports { network_weights_weights_1_5_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
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
    id 572 \
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
    id 573 \
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
    id 574 \
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
    id 575 \
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
    id 576 \
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
    id 577 \
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
    id 578 \
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
    id 579 \
    name network_weights_weights_1_6_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_8 \
    op interface \
    ports { network_weights_weights_1_6_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name network_weights_weights_1_6_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_9 \
    op interface \
    ports { network_weights_weights_1_6_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name network_weights_weights_1_6_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_10 \
    op interface \
    ports { network_weights_weights_1_6_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name network_weights_weights_1_6_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_11 \
    op interface \
    ports { network_weights_weights_1_6_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name network_weights_weights_1_6_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_12 \
    op interface \
    ports { network_weights_weights_1_6_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name network_weights_weights_1_6_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_13 \
    op interface \
    ports { network_weights_weights_1_6_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name network_weights_weights_1_6_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_14 \
    op interface \
    ports { network_weights_weights_1_6_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name network_weights_weights_1_6_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_6_15 \
    op interface \
    ports { network_weights_weights_1_6_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
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
    id 588 \
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
    id 589 \
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
    id 590 \
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
    id 591 \
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
    id 592 \
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
    id 593 \
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
    id 594 \
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
    id 595 \
    name network_weights_weights_1_7_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_8 \
    op interface \
    ports { network_weights_weights_1_7_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name network_weights_weights_1_7_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_9 \
    op interface \
    ports { network_weights_weights_1_7_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name network_weights_weights_1_7_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_10 \
    op interface \
    ports { network_weights_weights_1_7_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name network_weights_weights_1_7_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_11 \
    op interface \
    ports { network_weights_weights_1_7_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name network_weights_weights_1_7_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_12 \
    op interface \
    ports { network_weights_weights_1_7_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name network_weights_weights_1_7_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_13 \
    op interface \
    ports { network_weights_weights_1_7_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name network_weights_weights_1_7_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_14 \
    op interface \
    ports { network_weights_weights_1_7_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name network_weights_weights_1_7_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_1_7_15 \
    op interface \
    ports { network_weights_weights_1_7_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
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
    id 604 \
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
    id 605 \
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
    id 606 \
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
    id 607 \
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
    id 608 \
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
    id 609 \
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
    id 610 \
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
    id 611 \
    name network_weights_weights_2_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_0 \
    op interface \
    ports { network_weights_weights_2_1_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name network_weights_weights_2_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_1 \
    op interface \
    ports { network_weights_weights_2_1_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name network_weights_weights_2_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_2 \
    op interface \
    ports { network_weights_weights_2_1_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name network_weights_weights_2_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_3 \
    op interface \
    ports { network_weights_weights_2_1_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name network_weights_weights_2_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_4 \
    op interface \
    ports { network_weights_weights_2_1_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name network_weights_weights_2_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_5 \
    op interface \
    ports { network_weights_weights_2_1_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name network_weights_weights_2_1_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_6 \
    op interface \
    ports { network_weights_weights_2_1_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name network_weights_weights_2_1_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_1_7 \
    op interface \
    ports { network_weights_weights_2_1_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name network_weights_weights_2_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_0 \
    op interface \
    ports { network_weights_weights_2_2_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name network_weights_weights_2_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_1 \
    op interface \
    ports { network_weights_weights_2_2_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name network_weights_weights_2_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_2 \
    op interface \
    ports { network_weights_weights_2_2_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name network_weights_weights_2_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_3 \
    op interface \
    ports { network_weights_weights_2_2_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name network_weights_weights_2_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_4 \
    op interface \
    ports { network_weights_weights_2_2_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name network_weights_weights_2_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_5 \
    op interface \
    ports { network_weights_weights_2_2_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name network_weights_weights_2_2_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_6 \
    op interface \
    ports { network_weights_weights_2_2_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name network_weights_weights_2_2_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_2_7 \
    op interface \
    ports { network_weights_weights_2_2_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name network_weights_weights_2_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_0 \
    op interface \
    ports { network_weights_weights_2_3_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name network_weights_weights_2_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_1 \
    op interface \
    ports { network_weights_weights_2_3_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name network_weights_weights_2_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_2 \
    op interface \
    ports { network_weights_weights_2_3_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name network_weights_weights_2_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_3 \
    op interface \
    ports { network_weights_weights_2_3_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name network_weights_weights_2_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_4 \
    op interface \
    ports { network_weights_weights_2_3_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name network_weights_weights_2_3_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_5 \
    op interface \
    ports { network_weights_weights_2_3_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name network_weights_weights_2_3_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_6 \
    op interface \
    ports { network_weights_weights_2_3_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name network_weights_weights_2_3_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_2_3_7 \
    op interface \
    ports { network_weights_weights_2_3_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name network_weights_weights_3_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_3_0_0 \
    op interface \
    ports { network_weights_weights_3_0_0 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name network_weights_weights_3_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_3_0_1 \
    op interface \
    ports { network_weights_weights_3_0_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name network_weights_weights_3_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_3_0_2 \
    op interface \
    ports { network_weights_weights_3_0_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name network_weights_weights_3_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weights_3_0_3 \
    op interface \
    ports { network_weights_weights_3_0_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
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
    id 640 \
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
    id 641 \
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
    id 642 \
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
    id 643 \
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
    id 644 \
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
    id 645 \
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
    id 646 \
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
    id 647 \
    name network_weights_bias_0_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_8 \
    op interface \
    ports { network_weights_bias_0_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name network_weights_bias_0_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_9 \
    op interface \
    ports { network_weights_bias_0_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name network_weights_bias_0_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_10 \
    op interface \
    ports { network_weights_bias_0_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name network_weights_bias_0_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_11 \
    op interface \
    ports { network_weights_bias_0_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name network_weights_bias_0_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_12 \
    op interface \
    ports { network_weights_bias_0_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name network_weights_bias_0_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_13 \
    op interface \
    ports { network_weights_bias_0_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name network_weights_bias_0_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_14 \
    op interface \
    ports { network_weights_bias_0_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name network_weights_bias_0_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_0_15 \
    op interface \
    ports { network_weights_bias_0_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
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
    id 656 \
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
    id 657 \
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
    id 658 \
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
    id 659 \
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
    id 660 \
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
    id 661 \
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
    id 662 \
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
    id 663 \
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
    id 664 \
    name network_weights_bias_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_2_1 \
    op interface \
    ports { network_weights_bias_2_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name network_weights_bias_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_2_2 \
    op interface \
    ports { network_weights_bias_2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name network_weights_bias_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_2_3 \
    op interface \
    ports { network_weights_bias_2_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name network_weights_bias_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_bias_3_0 \
    op interface \
    ports { network_weights_bias_3_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
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
    id 669 \
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
    id 670 \
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
    id 671 \
    name network_weights_output_conversion_scale_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_output_conversion_scale_3 \
    op interface \
    ports { network_weights_output_conversion_scale_3 { I 16 vector } } \
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


