set moduleName getBias
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {getBias}
set C_modelType { int 32 }
set C_modelArgList {
	{ network_weights_bias int 32 regular  }
	{ network_weights_bias_86 int 32 regular  }
	{ network_weights_bias_87 int 32 regular  }
	{ network_weights_bias_88 int 32 regular  }
	{ network_weights_bias_89 int 32 regular  }
	{ network_weights_bias_90 int 32 regular  }
	{ network_weights_bias_91 int 32 regular  }
	{ network_weights_bias_92 int 32 regular  }
	{ network_weights_bias_93 int 32 regular  }
	{ network_weights_bias_94 int 32 regular  }
	{ network_weights_bias_95 int 32 regular  }
	{ network_weights_bias_96 int 32 regular  }
	{ network_weights_bias_97 int 32 regular  }
	{ network_weights_bias_98 int 32 regular  }
	{ network_weights_bias_99 int 32 regular  }
	{ network_weights_bias_100 int 32 regular  }
	{ network_weights_bias_101 int 32 regular  }
	{ network_weights_bias_102 int 32 regular  }
	{ network_weights_bias_103 int 32 regular  }
	{ network_weights_bias_104 int 32 regular  }
	{ network_weights_bias_105 int 32 regular  }
	{ network_weights_bias_106 int 32 regular  }
	{ network_weights_bias_107 int 32 regular  }
	{ network_weights_bias_108 int 32 regular  }
	{ network_weights_bias_109 int 32 regular  }
	{ network_weights_bias_110 int 32 regular  }
	{ network_weights_bias_111 int 32 regular  }
	{ network_weights_bias_112 int 32 regular  }
	{ network_weights_bias_113 int 32 regular  }
	{ layer int 4 regular  }
	{ index int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "network_weights_bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_86", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_87", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_88", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_89", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_90", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_91", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_92", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_93", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_94", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_95", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_96", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_97", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_98", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_99", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_100", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_101", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_102", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_103", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_104", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_105", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_106", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_107", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_108", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_109", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_110", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_111", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_112", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_113", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "index", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ network_weights_bias sc_in sc_lv 32 signal 0 } 
	{ network_weights_bias_86 sc_in sc_lv 32 signal 1 } 
	{ network_weights_bias_87 sc_in sc_lv 32 signal 2 } 
	{ network_weights_bias_88 sc_in sc_lv 32 signal 3 } 
	{ network_weights_bias_89 sc_in sc_lv 32 signal 4 } 
	{ network_weights_bias_90 sc_in sc_lv 32 signal 5 } 
	{ network_weights_bias_91 sc_in sc_lv 32 signal 6 } 
	{ network_weights_bias_92 sc_in sc_lv 32 signal 7 } 
	{ network_weights_bias_93 sc_in sc_lv 32 signal 8 } 
	{ network_weights_bias_94 sc_in sc_lv 32 signal 9 } 
	{ network_weights_bias_95 sc_in sc_lv 32 signal 10 } 
	{ network_weights_bias_96 sc_in sc_lv 32 signal 11 } 
	{ network_weights_bias_97 sc_in sc_lv 32 signal 12 } 
	{ network_weights_bias_98 sc_in sc_lv 32 signal 13 } 
	{ network_weights_bias_99 sc_in sc_lv 32 signal 14 } 
	{ network_weights_bias_100 sc_in sc_lv 32 signal 15 } 
	{ network_weights_bias_101 sc_in sc_lv 32 signal 16 } 
	{ network_weights_bias_102 sc_in sc_lv 32 signal 17 } 
	{ network_weights_bias_103 sc_in sc_lv 32 signal 18 } 
	{ network_weights_bias_104 sc_in sc_lv 32 signal 19 } 
	{ network_weights_bias_105 sc_in sc_lv 32 signal 20 } 
	{ network_weights_bias_106 sc_in sc_lv 32 signal 21 } 
	{ network_weights_bias_107 sc_in sc_lv 32 signal 22 } 
	{ network_weights_bias_108 sc_in sc_lv 32 signal 23 } 
	{ network_weights_bias_109 sc_in sc_lv 32 signal 24 } 
	{ network_weights_bias_110 sc_in sc_lv 32 signal 25 } 
	{ network_weights_bias_111 sc_in sc_lv 32 signal 26 } 
	{ network_weights_bias_112 sc_in sc_lv 32 signal 27 } 
	{ network_weights_bias_113 sc_in sc_lv 32 signal 28 } 
	{ layer sc_in sc_lv 4 signal 29 } 
	{ index sc_in sc_lv 5 signal 30 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "network_weights_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias", "role": "default" }} , 
 	{ "name": "network_weights_bias_86", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_86", "role": "default" }} , 
 	{ "name": "network_weights_bias_87", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_87", "role": "default" }} , 
 	{ "name": "network_weights_bias_88", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_88", "role": "default" }} , 
 	{ "name": "network_weights_bias_89", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_89", "role": "default" }} , 
 	{ "name": "network_weights_bias_90", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_90", "role": "default" }} , 
 	{ "name": "network_weights_bias_91", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_91", "role": "default" }} , 
 	{ "name": "network_weights_bias_92", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_92", "role": "default" }} , 
 	{ "name": "network_weights_bias_93", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_93", "role": "default" }} , 
 	{ "name": "network_weights_bias_94", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_94", "role": "default" }} , 
 	{ "name": "network_weights_bias_95", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_95", "role": "default" }} , 
 	{ "name": "network_weights_bias_96", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_96", "role": "default" }} , 
 	{ "name": "network_weights_bias_97", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_97", "role": "default" }} , 
 	{ "name": "network_weights_bias_98", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_98", "role": "default" }} , 
 	{ "name": "network_weights_bias_99", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_99", "role": "default" }} , 
 	{ "name": "network_weights_bias_100", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_100", "role": "default" }} , 
 	{ "name": "network_weights_bias_101", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_101", "role": "default" }} , 
 	{ "name": "network_weights_bias_102", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_102", "role": "default" }} , 
 	{ "name": "network_weights_bias_103", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_103", "role": "default" }} , 
 	{ "name": "network_weights_bias_104", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_104", "role": "default" }} , 
 	{ "name": "network_weights_bias_105", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_105", "role": "default" }} , 
 	{ "name": "network_weights_bias_106", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_106", "role": "default" }} , 
 	{ "name": "network_weights_bias_107", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_107", "role": "default" }} , 
 	{ "name": "network_weights_bias_108", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_108", "role": "default" }} , 
 	{ "name": "network_weights_bias_109", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_109", "role": "default" }} , 
 	{ "name": "network_weights_bias_110", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_110", "role": "default" }} , 
 	{ "name": "network_weights_bias_111", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_111", "role": "default" }} , 
 	{ "name": "network_weights_bias_112", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_112", "role": "default" }} , 
 	{ "name": "network_weights_bias_113", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_113", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "index", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "index", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "getBias",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "network_weights_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_96", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_97", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_98", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_99", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_100", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_101", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_102", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_103", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_104", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_105", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_106", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_107", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_108", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_109", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_111", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_112", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_113", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_1bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_8cud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_4dEe_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getBias {
		network_weights_bias {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_86 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_87 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_88 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_89 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_90 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_91 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_92 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_93 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_94 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_95 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_96 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_97 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_98 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_99 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_100 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_101 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_102 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_103 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_104 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_105 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_106 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_107 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_108 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_109 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_110 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_111 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_112 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_113 {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	network_weights_bias { ap_none {  { network_weights_bias in_data 0 32 } } }
	network_weights_bias_86 { ap_none {  { network_weights_bias_86 in_data 0 32 } } }
	network_weights_bias_87 { ap_none {  { network_weights_bias_87 in_data 0 32 } } }
	network_weights_bias_88 { ap_none {  { network_weights_bias_88 in_data 0 32 } } }
	network_weights_bias_89 { ap_none {  { network_weights_bias_89 in_data 0 32 } } }
	network_weights_bias_90 { ap_none {  { network_weights_bias_90 in_data 0 32 } } }
	network_weights_bias_91 { ap_none {  { network_weights_bias_91 in_data 0 32 } } }
	network_weights_bias_92 { ap_none {  { network_weights_bias_92 in_data 0 32 } } }
	network_weights_bias_93 { ap_none {  { network_weights_bias_93 in_data 0 32 } } }
	network_weights_bias_94 { ap_none {  { network_weights_bias_94 in_data 0 32 } } }
	network_weights_bias_95 { ap_none {  { network_weights_bias_95 in_data 0 32 } } }
	network_weights_bias_96 { ap_none {  { network_weights_bias_96 in_data 0 32 } } }
	network_weights_bias_97 { ap_none {  { network_weights_bias_97 in_data 0 32 } } }
	network_weights_bias_98 { ap_none {  { network_weights_bias_98 in_data 0 32 } } }
	network_weights_bias_99 { ap_none {  { network_weights_bias_99 in_data 0 32 } } }
	network_weights_bias_100 { ap_none {  { network_weights_bias_100 in_data 0 32 } } }
	network_weights_bias_101 { ap_none {  { network_weights_bias_101 in_data 0 32 } } }
	network_weights_bias_102 { ap_none {  { network_weights_bias_102 in_data 0 32 } } }
	network_weights_bias_103 { ap_none {  { network_weights_bias_103 in_data 0 32 } } }
	network_weights_bias_104 { ap_none {  { network_weights_bias_104 in_data 0 32 } } }
	network_weights_bias_105 { ap_none {  { network_weights_bias_105 in_data 0 32 } } }
	network_weights_bias_106 { ap_none {  { network_weights_bias_106 in_data 0 32 } } }
	network_weights_bias_107 { ap_none {  { network_weights_bias_107 in_data 0 32 } } }
	network_weights_bias_108 { ap_none {  { network_weights_bias_108 in_data 0 32 } } }
	network_weights_bias_109 { ap_none {  { network_weights_bias_109 in_data 0 32 } } }
	network_weights_bias_110 { ap_none {  { network_weights_bias_110 in_data 0 32 } } }
	network_weights_bias_111 { ap_none {  { network_weights_bias_111 in_data 0 32 } } }
	network_weights_bias_112 { ap_none {  { network_weights_bias_112 in_data 0 32 } } }
	network_weights_bias_113 { ap_none {  { network_weights_bias_113 in_data 0 32 } } }
	layer { ap_none {  { layer in_data 0 4 } } }
	index { ap_none {  { index in_data 0 5 } } }
}
