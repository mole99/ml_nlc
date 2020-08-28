# This script segment is generated automatically by AutoPilot

set id 38
set name network_top_mux_3eOg
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
set din32_width 6
set din32_signed 0
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
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 39
set name network_top_mux_1fYi
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
set din64_width 8
set din64_signed 0
set din65_width 8
set din65_signed 0
set din66_width 8
set din66_signed 0
set din67_width 8
set din67_signed 0
set din68_width 8
set din68_signed 0
set din69_width 8
set din69_signed 0
set din70_width 8
set din70_signed 0
set din71_width 8
set din71_signed 0
set din72_width 8
set din72_signed 0
set din73_width 8
set din73_signed 0
set din74_width 8
set din74_signed 0
set din75_width 8
set din75_signed 0
set din76_width 8
set din76_signed 0
set din77_width 8
set din77_signed 0
set din78_width 8
set din78_signed 0
set din79_width 8
set din79_signed 0
set din80_width 8
set din80_signed 0
set din81_width 8
set din81_signed 0
set din82_width 8
set din82_signed 0
set din83_width 8
set din83_signed 0
set din84_width 8
set din84_signed 0
set din85_width 8
set din85_signed 0
set din86_width 8
set din86_signed 0
set din87_width 8
set din87_signed 0
set din88_width 8
set din88_signed 0
set din89_width 8
set din89_signed 0
set din90_width 8
set din90_signed 0
set din91_width 8
set din91_signed 0
set din92_width 8
set din92_signed 0
set din93_width 8
set din93_signed 0
set din94_width 8
set din94_signed 0
set din95_width 8
set din95_signed 0
set din96_width 8
set din96_signed 0
set din97_width 8
set din97_signed 0
set din98_width 8
set din98_signed 0
set din99_width 8
set din99_signed 0
set din100_width 8
set din100_signed 0
set din101_width 8
set din101_signed 0
set din102_width 8
set din102_signed 0
set din103_width 8
set din103_signed 0
set din104_width 8
set din104_signed 0
set din105_width 8
set din105_signed 0
set din106_width 8
set din106_signed 0
set din107_width 8
set din107_signed 0
set din108_width 8
set din108_signed 0
set din109_width 8
set din109_signed 0
set din110_width 8
set din110_signed 0
set din111_width 8
set din111_signed 0
set din112_width 8
set din112_signed 0
set din113_width 8
set din113_signed 0
set din114_width 8
set din114_signed 0
set din115_width 8
set din115_signed 0
set din116_width 8
set din116_signed 0
set din117_width 8
set din117_signed 0
set din118_width 8
set din118_signed 0
set din119_width 8
set din119_signed 0
set din120_width 8
set din120_signed 0
set din121_width 8
set din121_signed 0
set din122_width 8
set din122_signed 0
set din123_width 8
set din123_signed 0
set din124_width 8
set din124_signed 0
set din125_width 8
set din125_signed 0
set din126_width 8
set din126_signed 0
set din127_width 8
set din127_signed 0
set din128_width 8
set din128_signed 0
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
    din65_width ${din65_width} \
    din65_signed ${din65_signed} \
    din66_width ${din66_width} \
    din66_signed ${din66_signed} \
    din67_width ${din67_width} \
    din67_signed ${din67_signed} \
    din68_width ${din68_width} \
    din68_signed ${din68_signed} \
    din69_width ${din69_width} \
    din69_signed ${din69_signed} \
    din70_width ${din70_width} \
    din70_signed ${din70_signed} \
    din71_width ${din71_width} \
    din71_signed ${din71_signed} \
    din72_width ${din72_width} \
    din72_signed ${din72_signed} \
    din73_width ${din73_width} \
    din73_signed ${din73_signed} \
    din74_width ${din74_width} \
    din74_signed ${din74_signed} \
    din75_width ${din75_width} \
    din75_signed ${din75_signed} \
    din76_width ${din76_width} \
    din76_signed ${din76_signed} \
    din77_width ${din77_width} \
    din77_signed ${din77_signed} \
    din78_width ${din78_width} \
    din78_signed ${din78_signed} \
    din79_width ${din79_width} \
    din79_signed ${din79_signed} \
    din80_width ${din80_width} \
    din80_signed ${din80_signed} \
    din81_width ${din81_width} \
    din81_signed ${din81_signed} \
    din82_width ${din82_width} \
    din82_signed ${din82_signed} \
    din83_width ${din83_width} \
    din83_signed ${din83_signed} \
    din84_width ${din84_width} \
    din84_signed ${din84_signed} \
    din85_width ${din85_width} \
    din85_signed ${din85_signed} \
    din86_width ${din86_width} \
    din86_signed ${din86_signed} \
    din87_width ${din87_width} \
    din87_signed ${din87_signed} \
    din88_width ${din88_width} \
    din88_signed ${din88_signed} \
    din89_width ${din89_width} \
    din89_signed ${din89_signed} \
    din90_width ${din90_width} \
    din90_signed ${din90_signed} \
    din91_width ${din91_width} \
    din91_signed ${din91_signed} \
    din92_width ${din92_width} \
    din92_signed ${din92_signed} \
    din93_width ${din93_width} \
    din93_signed ${din93_signed} \
    din94_width ${din94_width} \
    din94_signed ${din94_signed} \
    din95_width ${din95_width} \
    din95_signed ${din95_signed} \
    din96_width ${din96_width} \
    din96_signed ${din96_signed} \
    din97_width ${din97_width} \
    din97_signed ${din97_signed} \
    din98_width ${din98_width} \
    din98_signed ${din98_signed} \
    din99_width ${din99_width} \
    din99_signed ${din99_signed} \
    din100_width ${din100_width} \
    din100_signed ${din100_signed} \
    din101_width ${din101_width} \
    din101_signed ${din101_signed} \
    din102_width ${din102_width} \
    din102_signed ${din102_signed} \
    din103_width ${din103_width} \
    din103_signed ${din103_signed} \
    din104_width ${din104_width} \
    din104_signed ${din104_signed} \
    din105_width ${din105_width} \
    din105_signed ${din105_signed} \
    din106_width ${din106_width} \
    din106_signed ${din106_signed} \
    din107_width ${din107_width} \
    din107_signed ${din107_signed} \
    din108_width ${din108_width} \
    din108_signed ${din108_signed} \
    din109_width ${din109_width} \
    din109_signed ${din109_signed} \
    din110_width ${din110_width} \
    din110_signed ${din110_signed} \
    din111_width ${din111_width} \
    din111_signed ${din111_signed} \
    din112_width ${din112_width} \
    din112_signed ${din112_signed} \
    din113_width ${din113_width} \
    din113_signed ${din113_signed} \
    din114_width ${din114_width} \
    din114_signed ${din114_signed} \
    din115_width ${din115_width} \
    din115_signed ${din115_signed} \
    din116_width ${din116_width} \
    din116_signed ${din116_signed} \
    din117_width ${din117_width} \
    din117_signed ${din117_signed} \
    din118_width ${din118_width} \
    din118_signed ${din118_signed} \
    din119_width ${din119_width} \
    din119_signed ${din119_signed} \
    din120_width ${din120_width} \
    din120_signed ${din120_signed} \
    din121_width ${din121_width} \
    din121_signed ${din121_signed} \
    din122_width ${din122_width} \
    din122_signed ${din122_signed} \
    din123_width ${din123_width} \
    din123_signed ${din123_signed} \
    din124_width ${din124_width} \
    din124_signed ${din124_signed} \
    din125_width ${din125_width} \
    din125_signed ${din125_signed} \
    din126_width ${din126_width} \
    din126_signed ${din126_signed} \
    din127_width ${din127_width} \
    din127_signed ${din127_signed} \
    din128_width ${din128_width} \
    din128_signed ${din128_signed} \
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
    din65_width ${din65_width} \
    din65_signed ${din65_signed} \
    din66_width ${din66_width} \
    din66_signed ${din66_signed} \
    din67_width ${din67_width} \
    din67_signed ${din67_signed} \
    din68_width ${din68_width} \
    din68_signed ${din68_signed} \
    din69_width ${din69_width} \
    din69_signed ${din69_signed} \
    din70_width ${din70_width} \
    din70_signed ${din70_signed} \
    din71_width ${din71_width} \
    din71_signed ${din71_signed} \
    din72_width ${din72_width} \
    din72_signed ${din72_signed} \
    din73_width ${din73_width} \
    din73_signed ${din73_signed} \
    din74_width ${din74_width} \
    din74_signed ${din74_signed} \
    din75_width ${din75_width} \
    din75_signed ${din75_signed} \
    din76_width ${din76_width} \
    din76_signed ${din76_signed} \
    din77_width ${din77_width} \
    din77_signed ${din77_signed} \
    din78_width ${din78_width} \
    din78_signed ${din78_signed} \
    din79_width ${din79_width} \
    din79_signed ${din79_signed} \
    din80_width ${din80_width} \
    din80_signed ${din80_signed} \
    din81_width ${din81_width} \
    din81_signed ${din81_signed} \
    din82_width ${din82_width} \
    din82_signed ${din82_signed} \
    din83_width ${din83_width} \
    din83_signed ${din83_signed} \
    din84_width ${din84_width} \
    din84_signed ${din84_signed} \
    din85_width ${din85_width} \
    din85_signed ${din85_signed} \
    din86_width ${din86_width} \
    din86_signed ${din86_signed} \
    din87_width ${din87_width} \
    din87_signed ${din87_signed} \
    din88_width ${din88_width} \
    din88_signed ${din88_signed} \
    din89_width ${din89_width} \
    din89_signed ${din89_signed} \
    din90_width ${din90_width} \
    din90_signed ${din90_signed} \
    din91_width ${din91_width} \
    din91_signed ${din91_signed} \
    din92_width ${din92_width} \
    din92_signed ${din92_signed} \
    din93_width ${din93_width} \
    din93_signed ${din93_signed} \
    din94_width ${din94_width} \
    din94_signed ${din94_signed} \
    din95_width ${din95_width} \
    din95_signed ${din95_signed} \
    din96_width ${din96_width} \
    din96_signed ${din96_signed} \
    din97_width ${din97_width} \
    din97_signed ${din97_signed} \
    din98_width ${din98_width} \
    din98_signed ${din98_signed} \
    din99_width ${din99_width} \
    din99_signed ${din99_signed} \
    din100_width ${din100_width} \
    din100_signed ${din100_signed} \
    din101_width ${din101_width} \
    din101_signed ${din101_signed} \
    din102_width ${din102_width} \
    din102_signed ${din102_signed} \
    din103_width ${din103_width} \
    din103_signed ${din103_signed} \
    din104_width ${din104_width} \
    din104_signed ${din104_signed} \
    din105_width ${din105_width} \
    din105_signed ${din105_signed} \
    din106_width ${din106_width} \
    din106_signed ${din106_signed} \
    din107_width ${din107_width} \
    din107_signed ${din107_signed} \
    din108_width ${din108_width} \
    din108_signed ${din108_signed} \
    din109_width ${din109_width} \
    din109_signed ${din109_signed} \
    din110_width ${din110_width} \
    din110_signed ${din110_signed} \
    din111_width ${din111_width} \
    din111_signed ${din111_signed} \
    din112_width ${din112_width} \
    din112_signed ${din112_signed} \
    din113_width ${din113_width} \
    din113_signed ${din113_signed} \
    din114_width ${din114_width} \
    din114_signed ${din114_signed} \
    din115_width ${din115_width} \
    din115_signed ${din115_signed} \
    din116_width ${din116_width} \
    din116_signed ${din116_signed} \
    din117_width ${din117_width} \
    din117_signed ${din117_signed} \
    din118_width ${din118_width} \
    din118_signed ${din118_signed} \
    din119_width ${din119_width} \
    din119_signed ${din119_signed} \
    din120_width ${din120_width} \
    din120_signed ${din120_signed} \
    din121_width ${din121_width} \
    din121_signed ${din121_signed} \
    din122_width ${din122_width} \
    din122_signed ${din122_signed} \
    din123_width ${din123_width} \
    din123_signed ${din123_signed} \
    din124_width ${din124_width} \
    din124_signed ${din124_signed} \
    din125_width ${din125_width} \
    din125_signed ${din125_signed} \
    din126_width ${din126_width} \
    din126_signed ${din126_signed} \
    din127_width ${din127_width} \
    din127_signed ${din127_signed} \
    din128_width ${din128_width} \
    din128_signed ${din128_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 41
set name network_top_mux_4g8j
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
set din4_width 2
set din4_signed 0
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
    id 45 \
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
    id 46 \
    name network_weights_weig_587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_587 \
    op interface \
    ports { network_weights_weig_587 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name network_weights_weig_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_588 \
    op interface \
    ports { network_weights_weig_588 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name network_weights_weig_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_589 \
    op interface \
    ports { network_weights_weig_589 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name network_weights_weig_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_590 \
    op interface \
    ports { network_weights_weig_590 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name network_weights_weig_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_591 \
    op interface \
    ports { network_weights_weig_591 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name network_weights_weig_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_592 \
    op interface \
    ports { network_weights_weig_592 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name network_weights_weig_593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_593 \
    op interface \
    ports { network_weights_weig_593 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name network_weights_weig_594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_594 \
    op interface \
    ports { network_weights_weig_594 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name network_weights_weig_595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_595 \
    op interface \
    ports { network_weights_weig_595 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name network_weights_weig_596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_596 \
    op interface \
    ports { network_weights_weig_596 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name network_weights_weig_597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_597 \
    op interface \
    ports { network_weights_weig_597 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name network_weights_weig_598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_598 \
    op interface \
    ports { network_weights_weig_598 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name network_weights_weig_599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_599 \
    op interface \
    ports { network_weights_weig_599 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name network_weights_weig_600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_600 \
    op interface \
    ports { network_weights_weig_600 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name network_weights_weig_601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_601 \
    op interface \
    ports { network_weights_weig_601 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name network_weights_weig_602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_602 \
    op interface \
    ports { network_weights_weig_602 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name network_weights_weig_603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_603 \
    op interface \
    ports { network_weights_weig_603 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name network_weights_weig_604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_604 \
    op interface \
    ports { network_weights_weig_604 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name network_weights_weig_605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_605 \
    op interface \
    ports { network_weights_weig_605 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name network_weights_weig_606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_606 \
    op interface \
    ports { network_weights_weig_606 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name network_weights_weig_607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_607 \
    op interface \
    ports { network_weights_weig_607 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name network_weights_weig_608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_608 \
    op interface \
    ports { network_weights_weig_608 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name network_weights_weig_609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_609 \
    op interface \
    ports { network_weights_weig_609 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name network_weights_weig_610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_610 \
    op interface \
    ports { network_weights_weig_610 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name network_weights_weig_611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_611 \
    op interface \
    ports { network_weights_weig_611 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name network_weights_weig_612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_612 \
    op interface \
    ports { network_weights_weig_612 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name network_weights_weig_613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_613 \
    op interface \
    ports { network_weights_weig_613 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name network_weights_weig_614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_614 \
    op interface \
    ports { network_weights_weig_614 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name network_weights_weig_615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_615 \
    op interface \
    ports { network_weights_weig_615 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name network_weights_weig_616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_616 \
    op interface \
    ports { network_weights_weig_616 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name network_weights_weig_617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_617 \
    op interface \
    ports { network_weights_weig_617 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name network_weights_weig_618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_618 \
    op interface \
    ports { network_weights_weig_618 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name network_weights_weig_619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_619 \
    op interface \
    ports { network_weights_weig_619 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name network_weights_weig_620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_620 \
    op interface \
    ports { network_weights_weig_620 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name network_weights_weig_621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_621 \
    op interface \
    ports { network_weights_weig_621 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name network_weights_weig_622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_622 \
    op interface \
    ports { network_weights_weig_622 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name network_weights_weig_623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_623 \
    op interface \
    ports { network_weights_weig_623 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name network_weights_weig_624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_624 \
    op interface \
    ports { network_weights_weig_624 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name network_weights_weig_625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_625 \
    op interface \
    ports { network_weights_weig_625 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name network_weights_weig_626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_626 \
    op interface \
    ports { network_weights_weig_626 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name network_weights_weig_627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_627 \
    op interface \
    ports { network_weights_weig_627 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name network_weights_weig_628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_628 \
    op interface \
    ports { network_weights_weig_628 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name network_weights_weig_629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_629 \
    op interface \
    ports { network_weights_weig_629 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name network_weights_weig_630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_630 \
    op interface \
    ports { network_weights_weig_630 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name network_weights_weig_631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_631 \
    op interface \
    ports { network_weights_weig_631 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name network_weights_weig_632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_632 \
    op interface \
    ports { network_weights_weig_632 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name network_weights_weig_633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_633 \
    op interface \
    ports { network_weights_weig_633 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name network_weights_weig_634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_634 \
    op interface \
    ports { network_weights_weig_634 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name network_weights_weig_635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_635 \
    op interface \
    ports { network_weights_weig_635 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name network_weights_weig_636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_636 \
    op interface \
    ports { network_weights_weig_636 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name network_weights_weig_637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_637 \
    op interface \
    ports { network_weights_weig_637 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name network_weights_weig_638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_638 \
    op interface \
    ports { network_weights_weig_638 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name network_weights_weig_639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_639 \
    op interface \
    ports { network_weights_weig_639 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name network_weights_weig_640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_640 \
    op interface \
    ports { network_weights_weig_640 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name network_weights_weig_641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_641 \
    op interface \
    ports { network_weights_weig_641 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name network_weights_weig_642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_642 \
    op interface \
    ports { network_weights_weig_642 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name network_weights_weig_643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_643 \
    op interface \
    ports { network_weights_weig_643 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name network_weights_weig_644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_644 \
    op interface \
    ports { network_weights_weig_644 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name network_weights_weig_645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_645 \
    op interface \
    ports { network_weights_weig_645 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name network_weights_weig_646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_646 \
    op interface \
    ports { network_weights_weig_646 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name network_weights_weig_647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_647 \
    op interface \
    ports { network_weights_weig_647 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name network_weights_weig_648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_648 \
    op interface \
    ports { network_weights_weig_648 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name network_weights_weig_649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_649 \
    op interface \
    ports { network_weights_weig_649 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name network_weights_weig_650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_650 \
    op interface \
    ports { network_weights_weig_650 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name network_weights_weig_651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_651 \
    op interface \
    ports { network_weights_weig_651 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name network_weights_weig_652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_652 \
    op interface \
    ports { network_weights_weig_652 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name network_weights_weig_653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_653 \
    op interface \
    ports { network_weights_weig_653 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name network_weights_weig_654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_654 \
    op interface \
    ports { network_weights_weig_654 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name network_weights_weig_655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_655 \
    op interface \
    ports { network_weights_weig_655 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name network_weights_weig_656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_656 \
    op interface \
    ports { network_weights_weig_656 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name network_weights_weig_657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_657 \
    op interface \
    ports { network_weights_weig_657 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name network_weights_weig_658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_658 \
    op interface \
    ports { network_weights_weig_658 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name network_weights_weig_659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_659 \
    op interface \
    ports { network_weights_weig_659 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name network_weights_weig_660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_660 \
    op interface \
    ports { network_weights_weig_660 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name network_weights_weig_661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_661 \
    op interface \
    ports { network_weights_weig_661 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name network_weights_weig_662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_662 \
    op interface \
    ports { network_weights_weig_662 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name network_weights_weig_663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_663 \
    op interface \
    ports { network_weights_weig_663 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name network_weights_weig_664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_664 \
    op interface \
    ports { network_weights_weig_664 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name network_weights_weig_665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_665 \
    op interface \
    ports { network_weights_weig_665 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name network_weights_weig_666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_666 \
    op interface \
    ports { network_weights_weig_666 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name network_weights_weig_667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_667 \
    op interface \
    ports { network_weights_weig_667 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name network_weights_weig_668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_668 \
    op interface \
    ports { network_weights_weig_668 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name network_weights_weig_669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_669 \
    op interface \
    ports { network_weights_weig_669 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name network_weights_weig_670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_670 \
    op interface \
    ports { network_weights_weig_670 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name network_weights_weig_671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_671 \
    op interface \
    ports { network_weights_weig_671 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name network_weights_weig_672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_672 \
    op interface \
    ports { network_weights_weig_672 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name network_weights_weig_673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_673 \
    op interface \
    ports { network_weights_weig_673 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name network_weights_weig_674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_674 \
    op interface \
    ports { network_weights_weig_674 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name network_weights_weig_675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_675 \
    op interface \
    ports { network_weights_weig_675 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name network_weights_weig_676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_676 \
    op interface \
    ports { network_weights_weig_676 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name network_weights_weig_677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_677 \
    op interface \
    ports { network_weights_weig_677 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name network_weights_weig_678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_678 \
    op interface \
    ports { network_weights_weig_678 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name network_weights_weig_679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_679 \
    op interface \
    ports { network_weights_weig_679 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name network_weights_weig_680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_680 \
    op interface \
    ports { network_weights_weig_680 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name network_weights_weig_681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_681 \
    op interface \
    ports { network_weights_weig_681 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name network_weights_weig_682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_682 \
    op interface \
    ports { network_weights_weig_682 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name network_weights_weig_683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_683 \
    op interface \
    ports { network_weights_weig_683 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name network_weights_weig_684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_684 \
    op interface \
    ports { network_weights_weig_684 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name network_weights_weig_685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_685 \
    op interface \
    ports { network_weights_weig_685 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name network_weights_weig_686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_686 \
    op interface \
    ports { network_weights_weig_686 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name network_weights_weig_687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_687 \
    op interface \
    ports { network_weights_weig_687 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name network_weights_weig_688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_688 \
    op interface \
    ports { network_weights_weig_688 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name network_weights_weig_689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_689 \
    op interface \
    ports { network_weights_weig_689 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name network_weights_weig_690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_690 \
    op interface \
    ports { network_weights_weig_690 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name network_weights_weig_691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_691 \
    op interface \
    ports { network_weights_weig_691 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name network_weights_weig_692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_692 \
    op interface \
    ports { network_weights_weig_692 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name network_weights_weig_693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_693 \
    op interface \
    ports { network_weights_weig_693 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name network_weights_weig_694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_694 \
    op interface \
    ports { network_weights_weig_694 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name network_weights_weig_695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_695 \
    op interface \
    ports { network_weights_weig_695 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name network_weights_weig_696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_696 \
    op interface \
    ports { network_weights_weig_696 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name network_weights_weig_697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_697 \
    op interface \
    ports { network_weights_weig_697 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name network_weights_weig_698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_698 \
    op interface \
    ports { network_weights_weig_698 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name network_weights_weig_699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_699 \
    op interface \
    ports { network_weights_weig_699 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name network_weights_weig_700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_700 \
    op interface \
    ports { network_weights_weig_700 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name network_weights_weig_701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_701 \
    op interface \
    ports { network_weights_weig_701 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name network_weights_weig_702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_702 \
    op interface \
    ports { network_weights_weig_702 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name network_weights_weig_703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_703 \
    op interface \
    ports { network_weights_weig_703 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name network_weights_weig_704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_704 \
    op interface \
    ports { network_weights_weig_704 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name network_weights_weig_705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_705 \
    op interface \
    ports { network_weights_weig_705 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name network_weights_weig_706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_706 \
    op interface \
    ports { network_weights_weig_706 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name network_weights_weig_707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_707 \
    op interface \
    ports { network_weights_weig_707 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name network_weights_weig_708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_708 \
    op interface \
    ports { network_weights_weig_708 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name network_weights_weig_709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_709 \
    op interface \
    ports { network_weights_weig_709 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name network_weights_weig_710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_710 \
    op interface \
    ports { network_weights_weig_710 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name network_weights_weig_711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_711 \
    op interface \
    ports { network_weights_weig_711 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name network_weights_weig_712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_712 \
    op interface \
    ports { network_weights_weig_712 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name network_weights_weig_713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_713 \
    op interface \
    ports { network_weights_weig_713 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name network_weights_weig_714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_714 \
    op interface \
    ports { network_weights_weig_714 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name network_weights_weig_715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_715 \
    op interface \
    ports { network_weights_weig_715 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name network_weights_weig_716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_716 \
    op interface \
    ports { network_weights_weig_716 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name network_weights_weig_717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_717 \
    op interface \
    ports { network_weights_weig_717 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name network_weights_weig_718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_718 \
    op interface \
    ports { network_weights_weig_718 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name network_weights_weig_719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_719 \
    op interface \
    ports { network_weights_weig_719 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name network_weights_weig_720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_720 \
    op interface \
    ports { network_weights_weig_720 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name network_weights_weig_721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_721 \
    op interface \
    ports { network_weights_weig_721 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name network_weights_weig_722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_722 \
    op interface \
    ports { network_weights_weig_722 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name network_weights_weig_723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_723 \
    op interface \
    ports { network_weights_weig_723 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name network_weights_weig_724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_724 \
    op interface \
    ports { network_weights_weig_724 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name network_weights_weig_725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_725 \
    op interface \
    ports { network_weights_weig_725 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name network_weights_weig_726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_726 \
    op interface \
    ports { network_weights_weig_726 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name network_weights_weig_727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_727 \
    op interface \
    ports { network_weights_weig_727 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name network_weights_weig_728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_728 \
    op interface \
    ports { network_weights_weig_728 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name network_weights_weig_729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_729 \
    op interface \
    ports { network_weights_weig_729 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name network_weights_weig_730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_730 \
    op interface \
    ports { network_weights_weig_730 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name network_weights_weig_731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_731 \
    op interface \
    ports { network_weights_weig_731 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name network_weights_weig_732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_732 \
    op interface \
    ports { network_weights_weig_732 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name network_weights_weig_733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_733 \
    op interface \
    ports { network_weights_weig_733 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name network_weights_weig_734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_734 \
    op interface \
    ports { network_weights_weig_734 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name network_weights_weig_735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_735 \
    op interface \
    ports { network_weights_weig_735 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name network_weights_weig_736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_736 \
    op interface \
    ports { network_weights_weig_736 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name network_weights_weig_737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_737 \
    op interface \
    ports { network_weights_weig_737 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name network_weights_weig_738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_738 \
    op interface \
    ports { network_weights_weig_738 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name network_weights_weig_739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_739 \
    op interface \
    ports { network_weights_weig_739 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name network_weights_weig_740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_740 \
    op interface \
    ports { network_weights_weig_740 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name network_weights_weig_741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_741 \
    op interface \
    ports { network_weights_weig_741 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name network_weights_weig_742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_742 \
    op interface \
    ports { network_weights_weig_742 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name network_weights_weig_743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_743 \
    op interface \
    ports { network_weights_weig_743 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name network_weights_weig_744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_744 \
    op interface \
    ports { network_weights_weig_744 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name network_weights_weig_745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_745 \
    op interface \
    ports { network_weights_weig_745 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name network_weights_weig_746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_746 \
    op interface \
    ports { network_weights_weig_746 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name network_weights_weig_747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_747 \
    op interface \
    ports { network_weights_weig_747 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name network_weights_weig_748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_748 \
    op interface \
    ports { network_weights_weig_748 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name network_weights_weig_749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_749 \
    op interface \
    ports { network_weights_weig_749 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name network_weights_weig_750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_750 \
    op interface \
    ports { network_weights_weig_750 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name network_weights_weig_751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_751 \
    op interface \
    ports { network_weights_weig_751 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name network_weights_weig_752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_752 \
    op interface \
    ports { network_weights_weig_752 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name network_weights_weig_753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_753 \
    op interface \
    ports { network_weights_weig_753 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name network_weights_weig_754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_754 \
    op interface \
    ports { network_weights_weig_754 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name network_weights_weig_755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_755 \
    op interface \
    ports { network_weights_weig_755 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name network_weights_weig_756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_756 \
    op interface \
    ports { network_weights_weig_756 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name network_weights_weig_757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_757 \
    op interface \
    ports { network_weights_weig_757 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name network_weights_weig_758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_758 \
    op interface \
    ports { network_weights_weig_758 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name network_weights_weig_759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_759 \
    op interface \
    ports { network_weights_weig_759 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name network_weights_weig_760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_760 \
    op interface \
    ports { network_weights_weig_760 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name network_weights_weig_761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_761 \
    op interface \
    ports { network_weights_weig_761 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name network_weights_weig_762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_762 \
    op interface \
    ports { network_weights_weig_762 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name network_weights_weig_763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_763 \
    op interface \
    ports { network_weights_weig_763 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name network_weights_weig_764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_764 \
    op interface \
    ports { network_weights_weig_764 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name network_weights_weig_765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_765 \
    op interface \
    ports { network_weights_weig_765 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name network_weights_weig_766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_766 \
    op interface \
    ports { network_weights_weig_766 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name network_weights_weig_767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_767 \
    op interface \
    ports { network_weights_weig_767 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name network_weights_weig_768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_768 \
    op interface \
    ports { network_weights_weig_768 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name network_weights_weig_769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_769 \
    op interface \
    ports { network_weights_weig_769 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name network_weights_weig_770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_770 \
    op interface \
    ports { network_weights_weig_770 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name network_weights_weig_771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_771 \
    op interface \
    ports { network_weights_weig_771 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name network_weights_weig_772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_772 \
    op interface \
    ports { network_weights_weig_772 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name network_weights_weig_773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_773 \
    op interface \
    ports { network_weights_weig_773 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name network_weights_weig_774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_774 \
    op interface \
    ports { network_weights_weig_774 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name network_weights_weig_775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_775 \
    op interface \
    ports { network_weights_weig_775 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name network_weights_weig_776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_776 \
    op interface \
    ports { network_weights_weig_776 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name network_weights_weig_777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_777 \
    op interface \
    ports { network_weights_weig_777 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name network_weights_weig_778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_778 \
    op interface \
    ports { network_weights_weig_778 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name network_weights_weig_779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_779 \
    op interface \
    ports { network_weights_weig_779 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name network_weights_weig_780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_780 \
    op interface \
    ports { network_weights_weig_780 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name network_weights_weig_781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_network_weights_weig_781 \
    op interface \
    ports { network_weights_weig_781 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
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
    id 242 \
    name index_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index_0 \
    op interface \
    ports { index_0 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name index_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index_1 \
    op interface \
    ports { index_1 { I 5 vector } } \
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


