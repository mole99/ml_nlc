#include "network_top.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void network_top::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_start.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter4 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter4 = ap_enable_reg_pp0_iter3.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        buffer_0_10_reg_92806 = buffer_0_10_fu_89644_p2.read();
        buffer_0_3_reg_91742 = buffer_0_3_getBias_fu_81831_ap_return.read();
        buffer_0_6_reg_92555 = buffer_0_6_getBias_fu_82359_ap_return.read();
        buffer_0_9_reg_92772 = buffer_0_9_getBias_fu_82623_ap_return.read();
        buffer_0_reg_91465 = buffer_0_getBias_fu_80775_ap_return.read();
        buffer_10_reg_91640 = buffer_10_getBias_fu_81435_ap_return.read();
        buffer_11_reg_91657 = buffer_11_getBias_fu_81501_ap_return.read();
        buffer_12_reg_91674 = buffer_12_getBias_fu_81567_ap_return.read();
        buffer_13_reg_91691 = buffer_13_getBias_fu_81633_ap_return.read();
        buffer_14_reg_91708 = buffer_14_getBias_fu_81699_ap_return.read();
        buffer_15_reg_91725 = buffer_15_getBias_fu_81765_ap_return.read();
        buffer_1_3_reg_91848 = buffer_1_3_getBias_fu_81897_ap_return.read();
        buffer_1_6_reg_92613 = buffer_1_6_getBias_fu_82425_ap_return.read();
        buffer_1_reg_91487 = buffer_1_getBias_fu_80841_ap_return.read();
        buffer_2_3_reg_91949 = buffer_2_3_getBias_fu_81963_ap_return.read();
        buffer_2_6_reg_92666 = buffer_2_6_getBias_fu_82491_ap_return.read();
        buffer_2_reg_91504 = buffer_2_getBias_fu_80907_ap_return.read();
        buffer_3_3_reg_92050 = buffer_3_3_getBias_fu_82029_ap_return.read();
        buffer_3_6_reg_92719 = buffer_3_6_getBias_fu_82557_ap_return.read();
        buffer_3_reg_91521 = buffer_3_getBias_fu_80973_ap_return.read();
        buffer_4_3_reg_92151 = buffer_4_3_getBias_fu_82095_ap_return.read();
        buffer_4_reg_91538 = buffer_4_getBias_fu_81039_ap_return.read();
        buffer_5_3_reg_92252 = buffer_5_3_getBias_fu_82161_ap_return.read();
        buffer_5_reg_91555 = buffer_5_getBias_fu_81105_ap_return.read();
        buffer_6_3_reg_92353 = buffer_6_3_getBias_fu_82227_ap_return.read();
        buffer_6_reg_91572 = buffer_6_getBias_fu_81171_ap_return.read();
        buffer_7_3_reg_92454 = buffer_7_3_getBias_fu_82293_ap_return.read();
        buffer_7_reg_91589 = buffer_7_getBias_fu_81237_ap_return.read();
        buffer_8_reg_91606 = buffer_8_getBias_fu_81303_ap_return.read();
        buffer_9_reg_91623 = buffer_9_getBias_fu_81369_ap_return.read();
        network_weights_outp_1_reg_91843 = network_weights_output_conversion_scale_1.read();
        network_weights_outp_2_reg_92608 = network_weights_output_conversion_scale_2.read();
        network_weights_outp_3_reg_92801 = network_weights_output_conversion_scale_3.read();
        network_weights_outp_3_reg_92801_pp0_iter1_reg = network_weights_outp_3_reg_92801.read();
        network_weights_outp_reg_91482 = network_weights_output_conversion_scale_0.read();
        tmp_1_0_0_1_reg_91476 = tmp_1_0_0_1_getWeight_fu_2385_ap_return.read();
        tmp_1_0_0_s_reg_91470 = tmp_1_0_0_s_getWeight_fu_1983_ap_return.read();
        tmp_1_0_10_1_reg_91651 = tmp_1_0_10_1_getWeight_fu_10425_ap_return.read();
        tmp_1_0_10_s_reg_91645 = tmp_1_0_10_s_getWeight_fu_10023_ap_return.read();
        tmp_1_0_11_1_reg_91668 = tmp_1_0_11_1_getWeight_fu_11229_ap_return.read();
        tmp_1_0_11_s_reg_91662 = tmp_1_0_11_s_getWeight_fu_10827_ap_return.read();
        tmp_1_0_12_1_reg_91685 = tmp_1_0_12_1_getWeight_fu_12033_ap_return.read();
        tmp_1_0_12_s_reg_91679 = tmp_1_0_12_s_getWeight_fu_11631_ap_return.read();
        tmp_1_0_13_1_reg_91702 = tmp_1_0_13_1_getWeight_fu_12837_ap_return.read();
        tmp_1_0_13_s_reg_91696 = tmp_1_0_13_s_getWeight_fu_12435_ap_return.read();
        tmp_1_0_14_1_reg_91719 = tmp_1_0_14_1_getWeight_fu_13641_ap_return.read();
        tmp_1_0_14_s_reg_91713 = tmp_1_0_14_s_getWeight_fu_13239_ap_return.read();
        tmp_1_0_15_1_reg_91736 = tmp_1_0_15_1_getWeight_fu_14445_ap_return.read();
        tmp_1_0_15_s_reg_91730 = tmp_1_0_15_s_getWeight_fu_14043_ap_return.read();
        tmp_1_0_1_1_reg_91498 = tmp_1_0_1_1_getWeight_fu_3189_ap_return.read();
        tmp_1_0_1_s_reg_91492 = tmp_1_0_1_s_getWeight_fu_2787_ap_return.read();
        tmp_1_0_2_1_reg_91515 = tmp_1_0_2_1_getWeight_fu_3993_ap_return.read();
        tmp_1_0_2_s_reg_91509 = tmp_1_0_2_s_getWeight_fu_3591_ap_return.read();
        tmp_1_0_3_1_reg_91532 = tmp_1_0_3_1_getWeight_fu_4797_ap_return.read();
        tmp_1_0_3_s_reg_91526 = tmp_1_0_3_s_getWeight_fu_4395_ap_return.read();
        tmp_1_0_4_1_reg_91549 = tmp_1_0_4_1_getWeight_fu_5601_ap_return.read();
        tmp_1_0_4_s_reg_91543 = tmp_1_0_4_s_getWeight_fu_5199_ap_return.read();
        tmp_1_0_5_1_reg_91566 = tmp_1_0_5_1_getWeight_fu_6405_ap_return.read();
        tmp_1_0_5_s_reg_91560 = tmp_1_0_5_s_getWeight_fu_6003_ap_return.read();
        tmp_1_0_6_1_reg_91583 = tmp_1_0_6_1_getWeight_fu_7209_ap_return.read();
        tmp_1_0_6_s_reg_91577 = tmp_1_0_6_s_getWeight_fu_6807_ap_return.read();
        tmp_1_0_7_1_reg_91600 = tmp_1_0_7_1_getWeight_fu_8013_ap_return.read();
        tmp_1_0_7_s_reg_91594 = tmp_1_0_7_s_getWeight_fu_7611_ap_return.read();
        tmp_1_0_8_1_reg_91617 = tmp_1_0_8_1_getWeight_fu_8817_ap_return.read();
        tmp_1_0_8_s_reg_91611 = tmp_1_0_8_s_getWeight_fu_8415_ap_return.read();
        tmp_1_0_9_1_reg_91634 = tmp_1_0_9_1_getWeight_fu_9621_ap_return.read();
        tmp_1_0_9_s_reg_91628 = tmp_1_0_9_s_getWeight_fu_9219_ap_return.read();
        tmp_1_1_0_10_reg_91807 = tmp_1_1_0_10_getWeight_fu_18867_ap_return.read();
        tmp_1_1_0_11_reg_91813 = tmp_1_1_0_11_getWeight_fu_19269_ap_return.read();
        tmp_1_1_0_12_reg_91819 = tmp_1_1_0_12_getWeight_fu_19671_ap_return.read();
        tmp_1_1_0_13_reg_91825 = tmp_1_1_0_13_getWeight_fu_20073_ap_return.read();
        tmp_1_1_0_14_reg_91831 = tmp_1_1_0_14_getWeight_fu_20475_ap_return.read();
        tmp_1_1_0_15_reg_91837 = tmp_1_1_0_15_getWeight_fu_20877_ap_return.read();
        tmp_1_1_0_1_reg_91753 = tmp_1_1_0_1_getWeight_fu_15249_ap_return.read();
        tmp_1_1_0_2_reg_91759 = tmp_1_1_0_2_getWeight_fu_15651_ap_return.read();
        tmp_1_1_0_3_reg_91765 = tmp_1_1_0_3_getWeight_fu_16053_ap_return.read();
        tmp_1_1_0_4_reg_91771 = tmp_1_1_0_4_getWeight_fu_16455_ap_return.read();
        tmp_1_1_0_5_reg_91777 = tmp_1_1_0_5_getWeight_fu_16857_ap_return.read();
        tmp_1_1_0_6_reg_91783 = tmp_1_1_0_6_getWeight_fu_17259_ap_return.read();
        tmp_1_1_0_7_reg_91789 = tmp_1_1_0_7_getWeight_fu_17661_ap_return.read();
        tmp_1_1_0_8_reg_91795 = tmp_1_1_0_8_getWeight_fu_18063_ap_return.read();
        tmp_1_1_0_9_reg_91801 = tmp_1_1_0_9_getWeight_fu_18465_ap_return.read();
        tmp_1_1_0_s_reg_91747 = tmp_1_1_0_s_getWeight_fu_14847_ap_return.read();
        tmp_1_1_1_10_reg_91913 = tmp_1_1_1_10_getWeight_fu_25299_ap_return.read();
        tmp_1_1_1_11_reg_91919 = tmp_1_1_1_11_getWeight_fu_25701_ap_return.read();
        tmp_1_1_1_12_reg_91925 = tmp_1_1_1_12_getWeight_fu_26103_ap_return.read();
        tmp_1_1_1_13_reg_91931 = tmp_1_1_1_13_getWeight_fu_26505_ap_return.read();
        tmp_1_1_1_14_reg_91937 = tmp_1_1_1_14_getWeight_fu_26907_ap_return.read();
        tmp_1_1_1_15_reg_91943 = tmp_1_1_1_15_getWeight_fu_27309_ap_return.read();
        tmp_1_1_1_1_reg_91859 = tmp_1_1_1_1_getWeight_fu_21681_ap_return.read();
        tmp_1_1_1_2_reg_91865 = tmp_1_1_1_2_getWeight_fu_22083_ap_return.read();
        tmp_1_1_1_3_reg_91871 = tmp_1_1_1_3_getWeight_fu_22485_ap_return.read();
        tmp_1_1_1_4_reg_91877 = tmp_1_1_1_4_getWeight_fu_22887_ap_return.read();
        tmp_1_1_1_5_reg_91883 = tmp_1_1_1_5_getWeight_fu_23289_ap_return.read();
        tmp_1_1_1_6_reg_91889 = tmp_1_1_1_6_getWeight_fu_23691_ap_return.read();
        tmp_1_1_1_7_reg_91895 = tmp_1_1_1_7_getWeight_fu_24093_ap_return.read();
        tmp_1_1_1_8_reg_91901 = tmp_1_1_1_8_getWeight_fu_24495_ap_return.read();
        tmp_1_1_1_9_reg_91907 = tmp_1_1_1_9_getWeight_fu_24897_ap_return.read();
        tmp_1_1_1_s_reg_91853 = tmp_1_1_1_s_getWeight_fu_21279_ap_return.read();
        tmp_1_1_2_10_reg_92014 = tmp_1_1_2_10_getWeight_fu_31731_ap_return.read();
        tmp_1_1_2_11_reg_92020 = tmp_1_1_2_11_getWeight_fu_32133_ap_return.read();
        tmp_1_1_2_12_reg_92026 = tmp_1_1_2_12_getWeight_fu_32535_ap_return.read();
        tmp_1_1_2_13_reg_92032 = tmp_1_1_2_13_getWeight_fu_32937_ap_return.read();
        tmp_1_1_2_14_reg_92038 = tmp_1_1_2_14_getWeight_fu_33339_ap_return.read();
        tmp_1_1_2_15_reg_92044 = tmp_1_1_2_15_getWeight_fu_33741_ap_return.read();
        tmp_1_1_2_1_reg_91960 = tmp_1_1_2_1_getWeight_fu_28113_ap_return.read();
        tmp_1_1_2_2_reg_91966 = tmp_1_1_2_2_getWeight_fu_28515_ap_return.read();
        tmp_1_1_2_3_reg_91972 = tmp_1_1_2_3_getWeight_fu_28917_ap_return.read();
        tmp_1_1_2_4_reg_91978 = tmp_1_1_2_4_getWeight_fu_29319_ap_return.read();
        tmp_1_1_2_5_reg_91984 = tmp_1_1_2_5_getWeight_fu_29721_ap_return.read();
        tmp_1_1_2_6_reg_91990 = tmp_1_1_2_6_getWeight_fu_30123_ap_return.read();
        tmp_1_1_2_7_reg_91996 = tmp_1_1_2_7_getWeight_fu_30525_ap_return.read();
        tmp_1_1_2_8_reg_92002 = tmp_1_1_2_8_getWeight_fu_30927_ap_return.read();
        tmp_1_1_2_9_reg_92008 = tmp_1_1_2_9_getWeight_fu_31329_ap_return.read();
        tmp_1_1_2_s_reg_91954 = tmp_1_1_2_s_getWeight_fu_27711_ap_return.read();
        tmp_1_1_3_10_reg_92115 = tmp_1_1_3_10_getWeight_fu_38163_ap_return.read();
        tmp_1_1_3_11_reg_92121 = tmp_1_1_3_11_getWeight_fu_38565_ap_return.read();
        tmp_1_1_3_12_reg_92127 = tmp_1_1_3_12_getWeight_fu_38967_ap_return.read();
        tmp_1_1_3_13_reg_92133 = tmp_1_1_3_13_getWeight_fu_39369_ap_return.read();
        tmp_1_1_3_14_reg_92139 = tmp_1_1_3_14_getWeight_fu_39771_ap_return.read();
        tmp_1_1_3_15_reg_92145 = tmp_1_1_3_15_getWeight_fu_40173_ap_return.read();
        tmp_1_1_3_1_reg_92061 = tmp_1_1_3_1_getWeight_fu_34545_ap_return.read();
        tmp_1_1_3_2_reg_92067 = tmp_1_1_3_2_getWeight_fu_34947_ap_return.read();
        tmp_1_1_3_3_reg_92073 = tmp_1_1_3_3_getWeight_fu_35349_ap_return.read();
        tmp_1_1_3_4_reg_92079 = tmp_1_1_3_4_getWeight_fu_35751_ap_return.read();
        tmp_1_1_3_5_reg_92085 = tmp_1_1_3_5_getWeight_fu_36153_ap_return.read();
        tmp_1_1_3_6_reg_92091 = tmp_1_1_3_6_getWeight_fu_36555_ap_return.read();
        tmp_1_1_3_7_reg_92097 = tmp_1_1_3_7_getWeight_fu_36957_ap_return.read();
        tmp_1_1_3_8_reg_92103 = tmp_1_1_3_8_getWeight_fu_37359_ap_return.read();
        tmp_1_1_3_9_reg_92109 = tmp_1_1_3_9_getWeight_fu_37761_ap_return.read();
        tmp_1_1_3_s_reg_92055 = tmp_1_1_3_s_getWeight_fu_34143_ap_return.read();
        tmp_1_1_4_10_reg_92216 = tmp_1_1_4_10_getWeight_fu_44595_ap_return.read();
        tmp_1_1_4_11_reg_92222 = tmp_1_1_4_11_getWeight_fu_44997_ap_return.read();
        tmp_1_1_4_12_reg_92228 = tmp_1_1_4_12_getWeight_fu_45399_ap_return.read();
        tmp_1_1_4_13_reg_92234 = tmp_1_1_4_13_getWeight_fu_45801_ap_return.read();
        tmp_1_1_4_14_reg_92240 = tmp_1_1_4_14_getWeight_fu_46203_ap_return.read();
        tmp_1_1_4_15_reg_92246 = tmp_1_1_4_15_getWeight_fu_46605_ap_return.read();
        tmp_1_1_4_1_reg_92162 = tmp_1_1_4_1_getWeight_fu_40977_ap_return.read();
        tmp_1_1_4_2_reg_92168 = tmp_1_1_4_2_getWeight_fu_41379_ap_return.read();
        tmp_1_1_4_3_reg_92174 = tmp_1_1_4_3_getWeight_fu_41781_ap_return.read();
        tmp_1_1_4_4_reg_92180 = tmp_1_1_4_4_getWeight_fu_42183_ap_return.read();
        tmp_1_1_4_5_reg_92186 = tmp_1_1_4_5_getWeight_fu_42585_ap_return.read();
        tmp_1_1_4_6_reg_92192 = tmp_1_1_4_6_getWeight_fu_42987_ap_return.read();
        tmp_1_1_4_7_reg_92198 = tmp_1_1_4_7_getWeight_fu_43389_ap_return.read();
        tmp_1_1_4_8_reg_92204 = tmp_1_1_4_8_getWeight_fu_43791_ap_return.read();
        tmp_1_1_4_9_reg_92210 = tmp_1_1_4_9_getWeight_fu_44193_ap_return.read();
        tmp_1_1_4_s_reg_92156 = tmp_1_1_4_s_getWeight_fu_40575_ap_return.read();
        tmp_1_1_5_10_reg_92317 = tmp_1_1_5_10_getWeight_fu_51027_ap_return.read();
        tmp_1_1_5_11_reg_92323 = tmp_1_1_5_11_getWeight_fu_51429_ap_return.read();
        tmp_1_1_5_12_reg_92329 = tmp_1_1_5_12_getWeight_fu_51831_ap_return.read();
        tmp_1_1_5_13_reg_92335 = tmp_1_1_5_13_getWeight_fu_52233_ap_return.read();
        tmp_1_1_5_14_reg_92341 = tmp_1_1_5_14_getWeight_fu_52635_ap_return.read();
        tmp_1_1_5_15_reg_92347 = tmp_1_1_5_15_getWeight_fu_53037_ap_return.read();
        tmp_1_1_5_1_reg_92263 = tmp_1_1_5_1_getWeight_fu_47409_ap_return.read();
        tmp_1_1_5_2_reg_92269 = tmp_1_1_5_2_getWeight_fu_47811_ap_return.read();
        tmp_1_1_5_3_reg_92275 = tmp_1_1_5_3_getWeight_fu_48213_ap_return.read();
        tmp_1_1_5_4_reg_92281 = tmp_1_1_5_4_getWeight_fu_48615_ap_return.read();
        tmp_1_1_5_5_reg_92287 = tmp_1_1_5_5_getWeight_fu_49017_ap_return.read();
        tmp_1_1_5_6_reg_92293 = tmp_1_1_5_6_getWeight_fu_49419_ap_return.read();
        tmp_1_1_5_7_reg_92299 = tmp_1_1_5_7_getWeight_fu_49821_ap_return.read();
        tmp_1_1_5_8_reg_92305 = tmp_1_1_5_8_getWeight_fu_50223_ap_return.read();
        tmp_1_1_5_9_reg_92311 = tmp_1_1_5_9_getWeight_fu_50625_ap_return.read();
        tmp_1_1_5_s_reg_92257 = tmp_1_1_5_s_getWeight_fu_47007_ap_return.read();
        tmp_1_1_6_10_reg_92418 = tmp_1_1_6_10_getWeight_fu_57459_ap_return.read();
        tmp_1_1_6_11_reg_92424 = tmp_1_1_6_11_getWeight_fu_57861_ap_return.read();
        tmp_1_1_6_12_reg_92430 = tmp_1_1_6_12_getWeight_fu_58263_ap_return.read();
        tmp_1_1_6_13_reg_92436 = tmp_1_1_6_13_getWeight_fu_58665_ap_return.read();
        tmp_1_1_6_14_reg_92442 = tmp_1_1_6_14_getWeight_fu_59067_ap_return.read();
        tmp_1_1_6_15_reg_92448 = tmp_1_1_6_15_getWeight_fu_59469_ap_return.read();
        tmp_1_1_6_1_reg_92364 = tmp_1_1_6_1_getWeight_fu_53841_ap_return.read();
        tmp_1_1_6_2_reg_92370 = tmp_1_1_6_2_getWeight_fu_54243_ap_return.read();
        tmp_1_1_6_3_reg_92376 = tmp_1_1_6_3_getWeight_fu_54645_ap_return.read();
        tmp_1_1_6_4_reg_92382 = tmp_1_1_6_4_getWeight_fu_55047_ap_return.read();
        tmp_1_1_6_5_reg_92388 = tmp_1_1_6_5_getWeight_fu_55449_ap_return.read();
        tmp_1_1_6_6_reg_92394 = tmp_1_1_6_6_getWeight_fu_55851_ap_return.read();
        tmp_1_1_6_7_reg_92400 = tmp_1_1_6_7_getWeight_fu_56253_ap_return.read();
        tmp_1_1_6_8_reg_92406 = tmp_1_1_6_8_getWeight_fu_56655_ap_return.read();
        tmp_1_1_6_9_reg_92412 = tmp_1_1_6_9_getWeight_fu_57057_ap_return.read();
        tmp_1_1_6_s_reg_92358 = tmp_1_1_6_s_getWeight_fu_53439_ap_return.read();
        tmp_1_1_7_10_reg_92519 = tmp_1_1_7_10_getWeight_fu_63891_ap_return.read();
        tmp_1_1_7_11_reg_92525 = tmp_1_1_7_11_getWeight_fu_64293_ap_return.read();
        tmp_1_1_7_12_reg_92531 = tmp_1_1_7_12_getWeight_fu_64695_ap_return.read();
        tmp_1_1_7_13_reg_92537 = tmp_1_1_7_13_getWeight_fu_65097_ap_return.read();
        tmp_1_1_7_14_reg_92543 = tmp_1_1_7_14_getWeight_fu_65499_ap_return.read();
        tmp_1_1_7_15_reg_92549 = tmp_1_1_7_15_getWeight_fu_65901_ap_return.read();
        tmp_1_1_7_1_reg_92465 = tmp_1_1_7_1_getWeight_fu_60273_ap_return.read();
        tmp_1_1_7_2_reg_92471 = tmp_1_1_7_2_getWeight_fu_60675_ap_return.read();
        tmp_1_1_7_3_reg_92477 = tmp_1_1_7_3_getWeight_fu_61077_ap_return.read();
        tmp_1_1_7_4_reg_92483 = tmp_1_1_7_4_getWeight_fu_61479_ap_return.read();
        tmp_1_1_7_5_reg_92489 = tmp_1_1_7_5_getWeight_fu_61881_ap_return.read();
        tmp_1_1_7_6_reg_92495 = tmp_1_1_7_6_getWeight_fu_62283_ap_return.read();
        tmp_1_1_7_7_reg_92501 = tmp_1_1_7_7_getWeight_fu_62685_ap_return.read();
        tmp_1_1_7_8_reg_92507 = tmp_1_1_7_8_getWeight_fu_63087_ap_return.read();
        tmp_1_1_7_9_reg_92513 = tmp_1_1_7_9_getWeight_fu_63489_ap_return.read();
        tmp_1_1_7_s_reg_92459 = tmp_1_1_7_s_getWeight_fu_59871_ap_return.read();
        tmp_1_2_0_1_reg_92566 = tmp_1_2_0_1_getWeight_fu_66705_ap_return.read();
        tmp_1_2_0_2_reg_92572 = tmp_1_2_0_2_getWeight_fu_67107_ap_return.read();
        tmp_1_2_0_3_reg_92578 = tmp_1_2_0_3_getWeight_fu_67509_ap_return.read();
        tmp_1_2_0_4_reg_92584 = tmp_1_2_0_4_getWeight_fu_67911_ap_return.read();
        tmp_1_2_0_5_reg_92590 = tmp_1_2_0_5_getWeight_fu_68313_ap_return.read();
        tmp_1_2_0_6_reg_92596 = tmp_1_2_0_6_getWeight_fu_68715_ap_return.read();
        tmp_1_2_0_7_reg_92602 = tmp_1_2_0_7_getWeight_fu_69117_ap_return.read();
        tmp_1_2_0_s_reg_92560 = tmp_1_2_0_s_getWeight_fu_66303_ap_return.read();
        tmp_1_2_1_1_reg_92624 = tmp_1_2_1_1_getWeight_fu_69921_ap_return.read();
        tmp_1_2_1_2_reg_92630 = tmp_1_2_1_2_getWeight_fu_70323_ap_return.read();
        tmp_1_2_1_3_reg_92636 = tmp_1_2_1_3_getWeight_fu_70725_ap_return.read();
        tmp_1_2_1_4_reg_92642 = tmp_1_2_1_4_getWeight_fu_71127_ap_return.read();
        tmp_1_2_1_5_reg_92648 = tmp_1_2_1_5_getWeight_fu_71529_ap_return.read();
        tmp_1_2_1_6_reg_92654 = tmp_1_2_1_6_getWeight_fu_71931_ap_return.read();
        tmp_1_2_1_7_reg_92660 = tmp_1_2_1_7_getWeight_fu_72333_ap_return.read();
        tmp_1_2_1_s_reg_92618 = tmp_1_2_1_s_getWeight_fu_69519_ap_return.read();
        tmp_1_2_2_1_reg_92677 = tmp_1_2_2_1_getWeight_fu_73137_ap_return.read();
        tmp_1_2_2_2_reg_92683 = tmp_1_2_2_2_getWeight_fu_73539_ap_return.read();
        tmp_1_2_2_3_reg_92689 = tmp_1_2_2_3_getWeight_fu_73941_ap_return.read();
        tmp_1_2_2_4_reg_92695 = tmp_1_2_2_4_getWeight_fu_74343_ap_return.read();
        tmp_1_2_2_5_reg_92701 = tmp_1_2_2_5_getWeight_fu_74745_ap_return.read();
        tmp_1_2_2_6_reg_92707 = tmp_1_2_2_6_getWeight_fu_75147_ap_return.read();
        tmp_1_2_2_7_reg_92713 = tmp_1_2_2_7_getWeight_fu_75549_ap_return.read();
        tmp_1_2_2_s_reg_92671 = tmp_1_2_2_s_getWeight_fu_72735_ap_return.read();
        tmp_1_2_3_1_reg_92730 = tmp_1_2_3_1_getWeight_fu_76353_ap_return.read();
        tmp_1_2_3_2_reg_92736 = tmp_1_2_3_2_getWeight_fu_76755_ap_return.read();
        tmp_1_2_3_3_reg_92742 = tmp_1_2_3_3_getWeight_fu_77157_ap_return.read();
        tmp_1_2_3_4_reg_92748 = tmp_1_2_3_4_getWeight_fu_77559_ap_return.read();
        tmp_1_2_3_5_reg_92754 = tmp_1_2_3_5_getWeight_fu_77961_ap_return.read();
        tmp_1_2_3_6_reg_92760 = tmp_1_2_3_6_getWeight_fu_78363_ap_return.read();
        tmp_1_2_3_7_reg_92766 = tmp_1_2_3_7_getWeight_fu_78765_ap_return.read();
        tmp_1_2_3_s_reg_92724 = tmp_1_2_3_s_getWeight_fu_75951_ap_return.read();
        tmp_1_3_0_1_reg_92783 = tmp_1_3_0_1_getWeight_fu_79569_ap_return.read();
        tmp_1_3_0_2_reg_92789 = tmp_1_3_0_2_getWeight_fu_79971_ap_return.read();
        tmp_1_3_0_3_reg_92795 = tmp_1_3_0_3_getWeight_fu_80373_ap_return.read();
        tmp_1_3_0_s_reg_92777 = tmp_1_3_0_s_getWeight_fu_79167_ap_return.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        input_buffer_0_4_reg_92811 = input_buffer_0_4_fu_89712_p3.read();
        input_buffer_0_4_reg_92811_pp0_iter3_reg = input_buffer_0_4_reg_92811.read();
    }
}

void network_top::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}

