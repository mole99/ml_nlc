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
	{ network_weights_bias_33 int 32 regular  }
	{ network_weights_bias_34 int 32 regular  }
	{ network_weights_bias_35 int 32 regular  }
	{ network_weights_bias_36 int 32 regular  }
	{ network_weights_bias_37 int 32 regular  }
	{ network_weights_bias_38 int 32 regular  }
	{ network_weights_bias_39 int 32 regular  }
	{ network_weights_bias_40 int 32 regular  }
	{ network_weights_bias_41 int 32 regular  }
	{ network_weights_bias_42 int 32 regular  }
	{ network_weights_bias_43 int 32 regular  }
	{ network_weights_bias_44 int 32 regular  }
	{ network_weights_bias_45 int 32 regular  }
	{ network_weights_bias_46 int 32 regular  }
	{ network_weights_bias_47 int 32 regular  }
	{ network_weights_bias_48 int 32 regular  }
	{ layer int 4 regular  }
	{ index int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "network_weights_bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_33", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_34", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_35", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_36", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_37", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_38", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_46", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_47", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_bias_48", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "index", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ network_weights_bias sc_in sc_lv 32 signal 0 } 
	{ network_weights_bias_33 sc_in sc_lv 32 signal 1 } 
	{ network_weights_bias_34 sc_in sc_lv 32 signal 2 } 
	{ network_weights_bias_35 sc_in sc_lv 32 signal 3 } 
	{ network_weights_bias_36 sc_in sc_lv 32 signal 4 } 
	{ network_weights_bias_37 sc_in sc_lv 32 signal 5 } 
	{ network_weights_bias_38 sc_in sc_lv 32 signal 6 } 
	{ network_weights_bias_39 sc_in sc_lv 32 signal 7 } 
	{ network_weights_bias_40 sc_in sc_lv 32 signal 8 } 
	{ network_weights_bias_41 sc_in sc_lv 32 signal 9 } 
	{ network_weights_bias_42 sc_in sc_lv 32 signal 10 } 
	{ network_weights_bias_43 sc_in sc_lv 32 signal 11 } 
	{ network_weights_bias_44 sc_in sc_lv 32 signal 12 } 
	{ network_weights_bias_45 sc_in sc_lv 32 signal 13 } 
	{ network_weights_bias_46 sc_in sc_lv 32 signal 14 } 
	{ network_weights_bias_47 sc_in sc_lv 32 signal 15 } 
	{ network_weights_bias_48 sc_in sc_lv 32 signal 16 } 
	{ layer sc_in sc_lv 4 signal 17 } 
	{ index sc_in sc_lv 4 signal 18 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "network_weights_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias", "role": "default" }} , 
 	{ "name": "network_weights_bias_33", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_33", "role": "default" }} , 
 	{ "name": "network_weights_bias_34", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_34", "role": "default" }} , 
 	{ "name": "network_weights_bias_35", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_35", "role": "default" }} , 
 	{ "name": "network_weights_bias_36", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_36", "role": "default" }} , 
 	{ "name": "network_weights_bias_37", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_37", "role": "default" }} , 
 	{ "name": "network_weights_bias_38", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_38", "role": "default" }} , 
 	{ "name": "network_weights_bias_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_39", "role": "default" }} , 
 	{ "name": "network_weights_bias_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_40", "role": "default" }} , 
 	{ "name": "network_weights_bias_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_41", "role": "default" }} , 
 	{ "name": "network_weights_bias_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_42", "role": "default" }} , 
 	{ "name": "network_weights_bias_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_43", "role": "default" }} , 
 	{ "name": "network_weights_bias_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_44", "role": "default" }} , 
 	{ "name": "network_weights_bias_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_45", "role": "default" }} , 
 	{ "name": "network_weights_bias_46", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_46", "role": "default" }} , 
 	{ "name": "network_weights_bias_47", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_47", "role": "default" }} , 
 	{ "name": "network_weights_bias_48", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "network_weights_bias_48", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "index", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "index", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
			{"Name" : "network_weights_bias_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_bias_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_8bkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_8bkb_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getBias {
		network_weights_bias {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_33 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_34 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_35 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_36 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_37 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_38 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_39 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_40 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_41 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_42 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_43 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_44 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_45 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_46 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_47 {Type I LastRead 0 FirstWrite -1}
		network_weights_bias_48 {Type I LastRead 0 FirstWrite -1}
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
	network_weights_bias_33 { ap_none {  { network_weights_bias_33 in_data 0 32 } } }
	network_weights_bias_34 { ap_none {  { network_weights_bias_34 in_data 0 32 } } }
	network_weights_bias_35 { ap_none {  { network_weights_bias_35 in_data 0 32 } } }
	network_weights_bias_36 { ap_none {  { network_weights_bias_36 in_data 0 32 } } }
	network_weights_bias_37 { ap_none {  { network_weights_bias_37 in_data 0 32 } } }
	network_weights_bias_38 { ap_none {  { network_weights_bias_38 in_data 0 32 } } }
	network_weights_bias_39 { ap_none {  { network_weights_bias_39 in_data 0 32 } } }
	network_weights_bias_40 { ap_none {  { network_weights_bias_40 in_data 0 32 } } }
	network_weights_bias_41 { ap_none {  { network_weights_bias_41 in_data 0 32 } } }
	network_weights_bias_42 { ap_none {  { network_weights_bias_42 in_data 0 32 } } }
	network_weights_bias_43 { ap_none {  { network_weights_bias_43 in_data 0 32 } } }
	network_weights_bias_44 { ap_none {  { network_weights_bias_44 in_data 0 32 } } }
	network_weights_bias_45 { ap_none {  { network_weights_bias_45 in_data 0 32 } } }
	network_weights_bias_46 { ap_none {  { network_weights_bias_46 in_data 0 32 } } }
	network_weights_bias_47 { ap_none {  { network_weights_bias_47 in_data 0 32 } } }
	network_weights_bias_48 { ap_none {  { network_weights_bias_48 in_data 0 32 } } }
	layer { ap_none {  { layer in_data 0 4 } } }
	index { ap_none {  { index in_data 0 4 } } }
}
