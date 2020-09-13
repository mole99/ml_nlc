# This script segment is generated automatically by AutoPilot

set id 23
set name network_top_mux_1cud
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 8
set din8_signed 0
set din9_width 8
set din9_signed 0
set din10_width 8
set din10_signed 0
set din11_width 8
set din11_signed 0
set din12_width 8
set din12_signed 0
set din13_width 8
set din13_signed 0
set din14_width 8
set din14_signed 0
set din15_width 8
set din15_signed 0
set din16_width 5
set din16_signed 0
set dout_width 8
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 24
set name network_top_mux_6dEe
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 8
set din8_signed 0
set din9_width 8
set din9_signed 0
set din10_width 8
set din10_signed 0
set din11_width 8
set din11_signed 0
set din12_width 8
set din12_signed 0
set din13_width 8
set din13_signed 0
set din14_width 8
set din14_signed 0
set din15_width 8
set din15_signed 0
set din16_width 8
set din16_signed 0
set din17_width 8
set din17_signed 0
set din18_width 8
set din18_signed 0
set din19_width 8
set din19_signed 0
set din20_width 8
set din20_signed 0
set din21_width 8
set din21_signed 0
set din22_width 8
set din22_signed 0
set din23_width 8
set din23_signed 0
set din24_width 8
set din24_signed 0
set din25_width 8
set din25_signed 0
set din26_width 8
set din26_signed 0
set din27_width 8
set din27_signed 0
set din28_width 8
set din28_signed 0
set din29_width 8
set din29_signed 0
set din30_width 8
set din30_signed 0
set din31_width 8
set din31_signed 0
set din32_width 8
set din32_signed 0
set din33_width 8
set din33_signed 0
set din34_width 8
set din34_signed 0
set din35_width 8
set din35_signed 0
set din36_width 8
set din36_signed 0
set din37_width 8
set din37_signed 0
set din38_width 8
set din38_signed 0
set din39_width 8
set din39_signed 0
set din40_width 8
set din40_signed 0
set din41_width 8
set din41_signed 0
set din42_width 8
set din42_signed 0
set din43_width 8
set din43_signed 0
set din44_width 8
set din44_signed 0
set din45_width 8
set din45_signed 0
set din46_width 8
set din46_signed 0
set din47_width 8
set din47_signed 0
set din48_width 8
set din48_signed 0
set din49_width 8
set din49_signed 0
set din50_width 8
set din50_signed 0
set din51_width 8
set din51_signed 0
set din52_width 8
set din52_signed 0
set din53_width 8
set din53_signed 0
set din54_width 8
set din54_signed 0
set din55_width 8
set din55_signed 0
set din56_width 8
set din56_signed 0
set din57_width 8
set din57_signed 0
set din58_width 8
set din58_signed 0
set din59_width 8
set din59_signed 0
set din60_width 8
set din60_signed 0
set din61_width 8
set din61_signed 0
set din62_width 8
set din62_signed 0
set din63_width 8
set din63_signed 0
set din64_width 7
set din64_signed 0
set dout_width 8
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 25
set name network_top_mux_8eOg
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 3
set din8_signed 0
set dout_width 8
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name network_weights_weig \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig \
    op interface \
    ports { network_weights_weig { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name network_weights_weig_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_175 \
    op interface \
    ports { network_weights_weig_175 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name network_weights_weig_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_176 \
    op interface \
    ports { network_weights_weig_176 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name network_weights_weig_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_177 \
    op interface \
    ports { network_weights_weig_177 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name network_weights_weig_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_178 \
    op interface \
    ports { network_weights_weig_178 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name network_weights_weig_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_179 \
    op interface \
    ports { network_weights_weig_179 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name network_weights_weig_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_180 \
    op interface \
    ports { network_weights_weig_180 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name network_weights_weig_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_181 \
    op interface \
    ports { network_weights_weig_181 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name network_weights_weig_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_182 \
    op interface \
    ports { network_weights_weig_182 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name network_weights_weig_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_183 \
    op interface \
    ports { network_weights_weig_183 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name network_weights_weig_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_184 \
    op interface \
    ports { network_weights_weig_184 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name network_weights_weig_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_185 \
    op interface \
    ports { network_weights_weig_185 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name network_weights_weig_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_186 \
    op interface \
    ports { network_weights_weig_186 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name network_weights_weig_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_187 \
    op interface \
    ports { network_weights_weig_187 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name network_weights_weig_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_188 \
    op interface \
    ports { network_weights_weig_188 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name network_weights_weig_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_189 \
    op interface \
    ports { network_weights_weig_189 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name network_weights_weig_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_190 \
    op interface \
    ports { network_weights_weig_190 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name network_weights_weig_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_191 \
    op interface \
    ports { network_weights_weig_191 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name network_weights_weig_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_192 \
    op interface \
    ports { network_weights_weig_192 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name network_weights_weig_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_193 \
    op interface \
    ports { network_weights_weig_193 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name network_weights_weig_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_194 \
    op interface \
    ports { network_weights_weig_194 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name network_weights_weig_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_195 \
    op interface \
    ports { network_weights_weig_195 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name network_weights_weig_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_196 \
    op interface \
    ports { network_weights_weig_196 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name network_weights_weig_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_197 \
    op interface \
    ports { network_weights_weig_197 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name network_weights_weig_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_198 \
    op interface \
    ports { network_weights_weig_198 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name network_weights_weig_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_199 \
    op interface \
    ports { network_weights_weig_199 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name network_weights_weig_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_200 \
    op interface \
    ports { network_weights_weig_200 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name network_weights_weig_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_201 \
    op interface \
    ports { network_weights_weig_201 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name network_weights_weig_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_202 \
    op interface \
    ports { network_weights_weig_202 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name network_weights_weig_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_203 \
    op interface \
    ports { network_weights_weig_203 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name network_weights_weig_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_204 \
    op interface \
    ports { network_weights_weig_204 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name network_weights_weig_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_205 \
    op interface \
    ports { network_weights_weig_205 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name network_weights_weig_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_206 \
    op interface \
    ports { network_weights_weig_206 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name network_weights_weig_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_207 \
    op interface \
    ports { network_weights_weig_207 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name network_weights_weig_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_208 \
    op interface \
    ports { network_weights_weig_208 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name network_weights_weig_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_209 \
    op interface \
    ports { network_weights_weig_209 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name network_weights_weig_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_210 \
    op interface \
    ports { network_weights_weig_210 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name network_weights_weig_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_211 \
    op interface \
    ports { network_weights_weig_211 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name network_weights_weig_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_212 \
    op interface \
    ports { network_weights_weig_212 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name network_weights_weig_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_213 \
    op interface \
    ports { network_weights_weig_213 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name network_weights_weig_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_214 \
    op interface \
    ports { network_weights_weig_214 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name network_weights_weig_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_215 \
    op interface \
    ports { network_weights_weig_215 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name network_weights_weig_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_216 \
    op interface \
    ports { network_weights_weig_216 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name network_weights_weig_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_217 \
    op interface \
    ports { network_weights_weig_217 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name network_weights_weig_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_218 \
    op interface \
    ports { network_weights_weig_218 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name network_weights_weig_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_219 \
    op interface \
    ports { network_weights_weig_219 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name network_weights_weig_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_220 \
    op interface \
    ports { network_weights_weig_220 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name network_weights_weig_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_221 \
    op interface \
    ports { network_weights_weig_221 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name network_weights_weig_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_222 \
    op interface \
    ports { network_weights_weig_222 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name network_weights_weig_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_223 \
    op interface \
    ports { network_weights_weig_223 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name network_weights_weig_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_224 \
    op interface \
    ports { network_weights_weig_224 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name network_weights_weig_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_225 \
    op interface \
    ports { network_weights_weig_225 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name network_weights_weig_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_226 \
    op interface \
    ports { network_weights_weig_226 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name network_weights_weig_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_227 \
    op interface \
    ports { network_weights_weig_227 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name network_weights_weig_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_228 \
    op interface \
    ports { network_weights_weig_228 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name network_weights_weig_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_229 \
    op interface \
    ports { network_weights_weig_229 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name network_weights_weig_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_230 \
    op interface \
    ports { network_weights_weig_230 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name network_weights_weig_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_231 \
    op interface \
    ports { network_weights_weig_231 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name network_weights_weig_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_232 \
    op interface \
    ports { network_weights_weig_232 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name network_weights_weig_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_233 \
    op interface \
    ports { network_weights_weig_233 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name network_weights_weig_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_234 \
    op interface \
    ports { network_weights_weig_234 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name network_weights_weig_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_235 \
    op interface \
    ports { network_weights_weig_235 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name network_weights_weig_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_236 \
    op interface \
    ports { network_weights_weig_236 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name network_weights_weig_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_237 \
    op interface \
    ports { network_weights_weig_237 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name network_weights_weig_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_238 \
    op interface \
    ports { network_weights_weig_238 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name network_weights_weig_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_239 \
    op interface \
    ports { network_weights_weig_239 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name network_weights_weig_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_240 \
    op interface \
    ports { network_weights_weig_240 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name network_weights_weig_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_241 \
    op interface \
    ports { network_weights_weig_241 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name network_weights_weig_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_242 \
    op interface \
    ports { network_weights_weig_242 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name network_weights_weig_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_243 \
    op interface \
    ports { network_weights_weig_243 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name network_weights_weig_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_244 \
    op interface \
    ports { network_weights_weig_244 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name network_weights_weig_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_245 \
    op interface \
    ports { network_weights_weig_245 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name network_weights_weig_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_246 \
    op interface \
    ports { network_weights_weig_246 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name network_weights_weig_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_247 \
    op interface \
    ports { network_weights_weig_247 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name network_weights_weig_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_248 \
    op interface \
    ports { network_weights_weig_248 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name network_weights_weig_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_249 \
    op interface \
    ports { network_weights_weig_249 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name network_weights_weig_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_250 \
    op interface \
    ports { network_weights_weig_250 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name network_weights_weig_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_251 \
    op interface \
    ports { network_weights_weig_251 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name network_weights_weig_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_252 \
    op interface \
    ports { network_weights_weig_252 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name network_weights_weig_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_253 \
    op interface \
    ports { network_weights_weig_253 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name network_weights_weig_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_254 \
    op interface \
    ports { network_weights_weig_254 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name network_weights_weig_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_255 \
    op interface \
    ports { network_weights_weig_255 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name network_weights_weig_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_256 \
    op interface \
    ports { network_weights_weig_256 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name network_weights_weig_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_257 \
    op interface \
    ports { network_weights_weig_257 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name network_weights_weig_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_258 \
    op interface \
    ports { network_weights_weig_258 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name network_weights_weig_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_259 \
    op interface \
    ports { network_weights_weig_259 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name network_weights_weig_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_260 \
    op interface \
    ports { network_weights_weig_260 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name network_weights_weig_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_261 \
    op interface \
    ports { network_weights_weig_261 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name layer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer \
    op interface \
    ports { layer { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name index_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index_0 \
    op interface \
    ports { index_0 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name index_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index_1 \
    op interface \
    ports { index_1 { I 4 vector } } \
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
    ports { ap_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 8 vector } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


