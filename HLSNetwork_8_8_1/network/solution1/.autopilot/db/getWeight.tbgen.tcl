set moduleName getWeight
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
set C_modelName {getWeight}
set C_modelType { int 8 }
set C_modelArgList {
	{ network_weights_weig int 8 regular  }
	{ network_weights_weig_175 int 8 regular  }
	{ network_weights_weig_176 int 8 regular  }
	{ network_weights_weig_177 int 8 regular  }
	{ network_weights_weig_178 int 8 regular  }
	{ network_weights_weig_179 int 8 regular  }
	{ network_weights_weig_180 int 8 regular  }
	{ network_weights_weig_181 int 8 regular  }
	{ network_weights_weig_182 int 8 regular  }
	{ network_weights_weig_183 int 8 regular  }
	{ network_weights_weig_184 int 8 regular  }
	{ network_weights_weig_185 int 8 regular  }
	{ network_weights_weig_186 int 8 regular  }
	{ network_weights_weig_187 int 8 regular  }
	{ network_weights_weig_188 int 8 regular  }
	{ network_weights_weig_189 int 8 regular  }
	{ network_weights_weig_190 int 8 regular  }
	{ network_weights_weig_191 int 8 regular  }
	{ network_weights_weig_192 int 8 regular  }
	{ network_weights_weig_193 int 8 regular  }
	{ network_weights_weig_194 int 8 regular  }
	{ network_weights_weig_195 int 8 regular  }
	{ network_weights_weig_196 int 8 regular  }
	{ network_weights_weig_197 int 8 regular  }
	{ network_weights_weig_198 int 8 regular  }
	{ network_weights_weig_199 int 8 regular  }
	{ network_weights_weig_200 int 8 regular  }
	{ network_weights_weig_201 int 8 regular  }
	{ network_weights_weig_202 int 8 regular  }
	{ network_weights_weig_203 int 8 regular  }
	{ network_weights_weig_204 int 8 regular  }
	{ network_weights_weig_205 int 8 regular  }
	{ network_weights_weig_206 int 8 regular  }
	{ network_weights_weig_207 int 8 regular  }
	{ network_weights_weig_208 int 8 regular  }
	{ network_weights_weig_209 int 8 regular  }
	{ network_weights_weig_210 int 8 regular  }
	{ network_weights_weig_211 int 8 regular  }
	{ network_weights_weig_212 int 8 regular  }
	{ network_weights_weig_213 int 8 regular  }
	{ network_weights_weig_214 int 8 regular  }
	{ network_weights_weig_215 int 8 regular  }
	{ network_weights_weig_216 int 8 regular  }
	{ network_weights_weig_217 int 8 regular  }
	{ network_weights_weig_218 int 8 regular  }
	{ network_weights_weig_219 int 8 regular  }
	{ network_weights_weig_220 int 8 regular  }
	{ network_weights_weig_221 int 8 regular  }
	{ network_weights_weig_222 int 8 regular  }
	{ network_weights_weig_223 int 8 regular  }
	{ network_weights_weig_224 int 8 regular  }
	{ network_weights_weig_225 int 8 regular  }
	{ network_weights_weig_226 int 8 regular  }
	{ network_weights_weig_227 int 8 regular  }
	{ network_weights_weig_228 int 8 regular  }
	{ network_weights_weig_229 int 8 regular  }
	{ network_weights_weig_230 int 8 regular  }
	{ network_weights_weig_231 int 8 regular  }
	{ network_weights_weig_232 int 8 regular  }
	{ network_weights_weig_233 int 8 regular  }
	{ network_weights_weig_234 int 8 regular  }
	{ network_weights_weig_235 int 8 regular  }
	{ network_weights_weig_236 int 8 regular  }
	{ network_weights_weig_237 int 8 regular  }
	{ network_weights_weig_238 int 8 regular  }
	{ network_weights_weig_239 int 8 regular  }
	{ network_weights_weig_240 int 8 regular  }
	{ network_weights_weig_241 int 8 regular  }
	{ network_weights_weig_242 int 8 regular  }
	{ network_weights_weig_243 int 8 regular  }
	{ network_weights_weig_244 int 8 regular  }
	{ network_weights_weig_245 int 8 regular  }
	{ network_weights_weig_246 int 8 regular  }
	{ network_weights_weig_247 int 8 regular  }
	{ network_weights_weig_248 int 8 regular  }
	{ network_weights_weig_249 int 8 regular  }
	{ network_weights_weig_250 int 8 regular  }
	{ network_weights_weig_251 int 8 regular  }
	{ network_weights_weig_252 int 8 regular  }
	{ network_weights_weig_253 int 8 regular  }
	{ network_weights_weig_254 int 8 regular  }
	{ network_weights_weig_255 int 8 regular  }
	{ network_weights_weig_256 int 8 regular  }
	{ network_weights_weig_257 int 8 regular  }
	{ network_weights_weig_258 int 8 regular  }
	{ network_weights_weig_259 int 8 regular  }
	{ network_weights_weig_260 int 8 regular  }
	{ network_weights_weig_261 int 8 regular  }
	{ layer int 4 regular  }
	{ index_0 int 4 regular  }
	{ index_1 int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "network_weights_weig", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_175", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_176", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_177", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_178", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_179", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_180", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_181", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_182", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_183", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_184", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_185", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_186", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_187", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_188", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_189", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_190", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_191", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_192", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_193", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_194", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_195", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_196", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_197", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_198", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_199", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_200", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_201", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_202", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_203", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_204", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_205", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_206", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_207", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_208", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_209", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_210", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_211", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_212", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_213", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_214", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_215", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_216", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_217", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_218", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_219", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_220", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_221", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_222", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_223", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_224", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_225", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_226", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_227", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_228", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_229", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_230", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_231", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_232", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_233", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_234", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_235", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_236", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_237", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_238", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_239", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_240", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_241", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_242", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_243", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_244", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_245", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_246", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_247", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_248", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_249", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_250", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_251", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_252", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_253", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_254", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_255", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_256", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_257", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_258", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_259", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_260", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "network_weights_weig_261", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "index_0", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "index_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ network_weights_weig sc_in sc_lv 8 signal 0 } 
	{ network_weights_weig_175 sc_in sc_lv 8 signal 1 } 
	{ network_weights_weig_176 sc_in sc_lv 8 signal 2 } 
	{ network_weights_weig_177 sc_in sc_lv 8 signal 3 } 
	{ network_weights_weig_178 sc_in sc_lv 8 signal 4 } 
	{ network_weights_weig_179 sc_in sc_lv 8 signal 5 } 
	{ network_weights_weig_180 sc_in sc_lv 8 signal 6 } 
	{ network_weights_weig_181 sc_in sc_lv 8 signal 7 } 
	{ network_weights_weig_182 sc_in sc_lv 8 signal 8 } 
	{ network_weights_weig_183 sc_in sc_lv 8 signal 9 } 
	{ network_weights_weig_184 sc_in sc_lv 8 signal 10 } 
	{ network_weights_weig_185 sc_in sc_lv 8 signal 11 } 
	{ network_weights_weig_186 sc_in sc_lv 8 signal 12 } 
	{ network_weights_weig_187 sc_in sc_lv 8 signal 13 } 
	{ network_weights_weig_188 sc_in sc_lv 8 signal 14 } 
	{ network_weights_weig_189 sc_in sc_lv 8 signal 15 } 
	{ network_weights_weig_190 sc_in sc_lv 8 signal 16 } 
	{ network_weights_weig_191 sc_in sc_lv 8 signal 17 } 
	{ network_weights_weig_192 sc_in sc_lv 8 signal 18 } 
	{ network_weights_weig_193 sc_in sc_lv 8 signal 19 } 
	{ network_weights_weig_194 sc_in sc_lv 8 signal 20 } 
	{ network_weights_weig_195 sc_in sc_lv 8 signal 21 } 
	{ network_weights_weig_196 sc_in sc_lv 8 signal 22 } 
	{ network_weights_weig_197 sc_in sc_lv 8 signal 23 } 
	{ network_weights_weig_198 sc_in sc_lv 8 signal 24 } 
	{ network_weights_weig_199 sc_in sc_lv 8 signal 25 } 
	{ network_weights_weig_200 sc_in sc_lv 8 signal 26 } 
	{ network_weights_weig_201 sc_in sc_lv 8 signal 27 } 
	{ network_weights_weig_202 sc_in sc_lv 8 signal 28 } 
	{ network_weights_weig_203 sc_in sc_lv 8 signal 29 } 
	{ network_weights_weig_204 sc_in sc_lv 8 signal 30 } 
	{ network_weights_weig_205 sc_in sc_lv 8 signal 31 } 
	{ network_weights_weig_206 sc_in sc_lv 8 signal 32 } 
	{ network_weights_weig_207 sc_in sc_lv 8 signal 33 } 
	{ network_weights_weig_208 sc_in sc_lv 8 signal 34 } 
	{ network_weights_weig_209 sc_in sc_lv 8 signal 35 } 
	{ network_weights_weig_210 sc_in sc_lv 8 signal 36 } 
	{ network_weights_weig_211 sc_in sc_lv 8 signal 37 } 
	{ network_weights_weig_212 sc_in sc_lv 8 signal 38 } 
	{ network_weights_weig_213 sc_in sc_lv 8 signal 39 } 
	{ network_weights_weig_214 sc_in sc_lv 8 signal 40 } 
	{ network_weights_weig_215 sc_in sc_lv 8 signal 41 } 
	{ network_weights_weig_216 sc_in sc_lv 8 signal 42 } 
	{ network_weights_weig_217 sc_in sc_lv 8 signal 43 } 
	{ network_weights_weig_218 sc_in sc_lv 8 signal 44 } 
	{ network_weights_weig_219 sc_in sc_lv 8 signal 45 } 
	{ network_weights_weig_220 sc_in sc_lv 8 signal 46 } 
	{ network_weights_weig_221 sc_in sc_lv 8 signal 47 } 
	{ network_weights_weig_222 sc_in sc_lv 8 signal 48 } 
	{ network_weights_weig_223 sc_in sc_lv 8 signal 49 } 
	{ network_weights_weig_224 sc_in sc_lv 8 signal 50 } 
	{ network_weights_weig_225 sc_in sc_lv 8 signal 51 } 
	{ network_weights_weig_226 sc_in sc_lv 8 signal 52 } 
	{ network_weights_weig_227 sc_in sc_lv 8 signal 53 } 
	{ network_weights_weig_228 sc_in sc_lv 8 signal 54 } 
	{ network_weights_weig_229 sc_in sc_lv 8 signal 55 } 
	{ network_weights_weig_230 sc_in sc_lv 8 signal 56 } 
	{ network_weights_weig_231 sc_in sc_lv 8 signal 57 } 
	{ network_weights_weig_232 sc_in sc_lv 8 signal 58 } 
	{ network_weights_weig_233 sc_in sc_lv 8 signal 59 } 
	{ network_weights_weig_234 sc_in sc_lv 8 signal 60 } 
	{ network_weights_weig_235 sc_in sc_lv 8 signal 61 } 
	{ network_weights_weig_236 sc_in sc_lv 8 signal 62 } 
	{ network_weights_weig_237 sc_in sc_lv 8 signal 63 } 
	{ network_weights_weig_238 sc_in sc_lv 8 signal 64 } 
	{ network_weights_weig_239 sc_in sc_lv 8 signal 65 } 
	{ network_weights_weig_240 sc_in sc_lv 8 signal 66 } 
	{ network_weights_weig_241 sc_in sc_lv 8 signal 67 } 
	{ network_weights_weig_242 sc_in sc_lv 8 signal 68 } 
	{ network_weights_weig_243 sc_in sc_lv 8 signal 69 } 
	{ network_weights_weig_244 sc_in sc_lv 8 signal 70 } 
	{ network_weights_weig_245 sc_in sc_lv 8 signal 71 } 
	{ network_weights_weig_246 sc_in sc_lv 8 signal 72 } 
	{ network_weights_weig_247 sc_in sc_lv 8 signal 73 } 
	{ network_weights_weig_248 sc_in sc_lv 8 signal 74 } 
	{ network_weights_weig_249 sc_in sc_lv 8 signal 75 } 
	{ network_weights_weig_250 sc_in sc_lv 8 signal 76 } 
	{ network_weights_weig_251 sc_in sc_lv 8 signal 77 } 
	{ network_weights_weig_252 sc_in sc_lv 8 signal 78 } 
	{ network_weights_weig_253 sc_in sc_lv 8 signal 79 } 
	{ network_weights_weig_254 sc_in sc_lv 8 signal 80 } 
	{ network_weights_weig_255 sc_in sc_lv 8 signal 81 } 
	{ network_weights_weig_256 sc_in sc_lv 8 signal 82 } 
	{ network_weights_weig_257 sc_in sc_lv 8 signal 83 } 
	{ network_weights_weig_258 sc_in sc_lv 8 signal 84 } 
	{ network_weights_weig_259 sc_in sc_lv 8 signal 85 } 
	{ network_weights_weig_260 sc_in sc_lv 8 signal 86 } 
	{ network_weights_weig_261 sc_in sc_lv 8 signal 87 } 
	{ layer sc_in sc_lv 4 signal 88 } 
	{ index_0 sc_in sc_lv 4 signal 89 } 
	{ index_1 sc_in sc_lv 4 signal 90 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "network_weights_weig", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig", "role": "default" }} , 
 	{ "name": "network_weights_weig_175", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_175", "role": "default" }} , 
 	{ "name": "network_weights_weig_176", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_176", "role": "default" }} , 
 	{ "name": "network_weights_weig_177", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_177", "role": "default" }} , 
 	{ "name": "network_weights_weig_178", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_178", "role": "default" }} , 
 	{ "name": "network_weights_weig_179", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_179", "role": "default" }} , 
 	{ "name": "network_weights_weig_180", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_180", "role": "default" }} , 
 	{ "name": "network_weights_weig_181", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_181", "role": "default" }} , 
 	{ "name": "network_weights_weig_182", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_182", "role": "default" }} , 
 	{ "name": "network_weights_weig_183", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_183", "role": "default" }} , 
 	{ "name": "network_weights_weig_184", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_184", "role": "default" }} , 
 	{ "name": "network_weights_weig_185", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_185", "role": "default" }} , 
 	{ "name": "network_weights_weig_186", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_186", "role": "default" }} , 
 	{ "name": "network_weights_weig_187", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_187", "role": "default" }} , 
 	{ "name": "network_weights_weig_188", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_188", "role": "default" }} , 
 	{ "name": "network_weights_weig_189", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_189", "role": "default" }} , 
 	{ "name": "network_weights_weig_190", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_190", "role": "default" }} , 
 	{ "name": "network_weights_weig_191", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_191", "role": "default" }} , 
 	{ "name": "network_weights_weig_192", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_192", "role": "default" }} , 
 	{ "name": "network_weights_weig_193", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_193", "role": "default" }} , 
 	{ "name": "network_weights_weig_194", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_194", "role": "default" }} , 
 	{ "name": "network_weights_weig_195", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_195", "role": "default" }} , 
 	{ "name": "network_weights_weig_196", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_196", "role": "default" }} , 
 	{ "name": "network_weights_weig_197", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_197", "role": "default" }} , 
 	{ "name": "network_weights_weig_198", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_198", "role": "default" }} , 
 	{ "name": "network_weights_weig_199", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_199", "role": "default" }} , 
 	{ "name": "network_weights_weig_200", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_200", "role": "default" }} , 
 	{ "name": "network_weights_weig_201", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_201", "role": "default" }} , 
 	{ "name": "network_weights_weig_202", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_202", "role": "default" }} , 
 	{ "name": "network_weights_weig_203", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_203", "role": "default" }} , 
 	{ "name": "network_weights_weig_204", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_204", "role": "default" }} , 
 	{ "name": "network_weights_weig_205", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_205", "role": "default" }} , 
 	{ "name": "network_weights_weig_206", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_206", "role": "default" }} , 
 	{ "name": "network_weights_weig_207", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_207", "role": "default" }} , 
 	{ "name": "network_weights_weig_208", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_208", "role": "default" }} , 
 	{ "name": "network_weights_weig_209", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_209", "role": "default" }} , 
 	{ "name": "network_weights_weig_210", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_210", "role": "default" }} , 
 	{ "name": "network_weights_weig_211", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_211", "role": "default" }} , 
 	{ "name": "network_weights_weig_212", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_212", "role": "default" }} , 
 	{ "name": "network_weights_weig_213", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_213", "role": "default" }} , 
 	{ "name": "network_weights_weig_214", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_214", "role": "default" }} , 
 	{ "name": "network_weights_weig_215", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_215", "role": "default" }} , 
 	{ "name": "network_weights_weig_216", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_216", "role": "default" }} , 
 	{ "name": "network_weights_weig_217", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_217", "role": "default" }} , 
 	{ "name": "network_weights_weig_218", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_218", "role": "default" }} , 
 	{ "name": "network_weights_weig_219", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_219", "role": "default" }} , 
 	{ "name": "network_weights_weig_220", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_220", "role": "default" }} , 
 	{ "name": "network_weights_weig_221", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_221", "role": "default" }} , 
 	{ "name": "network_weights_weig_222", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_222", "role": "default" }} , 
 	{ "name": "network_weights_weig_223", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_223", "role": "default" }} , 
 	{ "name": "network_weights_weig_224", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_224", "role": "default" }} , 
 	{ "name": "network_weights_weig_225", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_225", "role": "default" }} , 
 	{ "name": "network_weights_weig_226", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_226", "role": "default" }} , 
 	{ "name": "network_weights_weig_227", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_227", "role": "default" }} , 
 	{ "name": "network_weights_weig_228", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_228", "role": "default" }} , 
 	{ "name": "network_weights_weig_229", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_229", "role": "default" }} , 
 	{ "name": "network_weights_weig_230", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_230", "role": "default" }} , 
 	{ "name": "network_weights_weig_231", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_231", "role": "default" }} , 
 	{ "name": "network_weights_weig_232", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_232", "role": "default" }} , 
 	{ "name": "network_weights_weig_233", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_233", "role": "default" }} , 
 	{ "name": "network_weights_weig_234", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_234", "role": "default" }} , 
 	{ "name": "network_weights_weig_235", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_235", "role": "default" }} , 
 	{ "name": "network_weights_weig_236", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_236", "role": "default" }} , 
 	{ "name": "network_weights_weig_237", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_237", "role": "default" }} , 
 	{ "name": "network_weights_weig_238", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_238", "role": "default" }} , 
 	{ "name": "network_weights_weig_239", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_239", "role": "default" }} , 
 	{ "name": "network_weights_weig_240", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_240", "role": "default" }} , 
 	{ "name": "network_weights_weig_241", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_241", "role": "default" }} , 
 	{ "name": "network_weights_weig_242", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_242", "role": "default" }} , 
 	{ "name": "network_weights_weig_243", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_243", "role": "default" }} , 
 	{ "name": "network_weights_weig_244", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_244", "role": "default" }} , 
 	{ "name": "network_weights_weig_245", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_245", "role": "default" }} , 
 	{ "name": "network_weights_weig_246", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_246", "role": "default" }} , 
 	{ "name": "network_weights_weig_247", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_247", "role": "default" }} , 
 	{ "name": "network_weights_weig_248", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_248", "role": "default" }} , 
 	{ "name": "network_weights_weig_249", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_249", "role": "default" }} , 
 	{ "name": "network_weights_weig_250", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_250", "role": "default" }} , 
 	{ "name": "network_weights_weig_251", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_251", "role": "default" }} , 
 	{ "name": "network_weights_weig_252", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_252", "role": "default" }} , 
 	{ "name": "network_weights_weig_253", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_253", "role": "default" }} , 
 	{ "name": "network_weights_weig_254", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_254", "role": "default" }} , 
 	{ "name": "network_weights_weig_255", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_255", "role": "default" }} , 
 	{ "name": "network_weights_weig_256", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_256", "role": "default" }} , 
 	{ "name": "network_weights_weig_257", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_257", "role": "default" }} , 
 	{ "name": "network_weights_weig_258", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_258", "role": "default" }} , 
 	{ "name": "network_weights_weig_259", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_259", "role": "default" }} , 
 	{ "name": "network_weights_weig_260", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_260", "role": "default" }} , 
 	{ "name": "network_weights_weig_261", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "network_weights_weig_261", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "index_0", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "index_0", "role": "default" }} , 
 	{ "name": "index_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "index_1", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "getWeight",
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
			{"Name" : "network_weights_weig", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_176", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_177", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_178", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_179", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_180", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_181", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_182", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_183", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_184", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_185", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_186", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_188", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_189", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_195", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_197", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_198", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_199", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_200", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_201", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_202", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_203", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_204", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_205", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_206", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_208", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_209", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_210", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_211", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_212", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_213", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_214", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_215", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_216", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_217", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_218", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_219", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_220", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_221", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_222", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_223", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_224", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_225", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_226", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_227", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_228", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_229", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_230", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_231", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_232", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_233", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_234", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_235", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_236", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_237", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_238", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_239", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_240", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_241", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_242", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_243", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_244", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_245", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_246", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_247", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_248", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_249", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_250", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_251", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_252", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_253", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_254", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_256", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_257", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_258", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_259", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_260", "Type" : "None", "Direction" : "I"},
			{"Name" : "network_weights_weig_261", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_1cud_U23", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_6dEe_U24", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.network_top_mux_8eOg_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	getWeight {
		network_weights_weig {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_175 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_176 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_177 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_178 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_179 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_180 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_181 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_182 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_183 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_184 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_185 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_186 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_187 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_188 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_189 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_190 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_191 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_192 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_193 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_194 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_195 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_196 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_197 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_198 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_199 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_200 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_201 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_202 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_203 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_204 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_205 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_206 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_207 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_208 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_209 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_210 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_211 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_212 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_213 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_214 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_215 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_216 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_217 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_218 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_219 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_220 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_221 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_222 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_223 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_224 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_225 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_226 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_227 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_228 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_229 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_230 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_231 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_232 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_233 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_234 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_235 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_236 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_237 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_238 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_239 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_240 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_241 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_242 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_243 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_244 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_245 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_246 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_247 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_248 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_249 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_250 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_251 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_252 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_253 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_254 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_255 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_256 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_257 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_258 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_259 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_260 {Type I LastRead 0 FirstWrite -1}
		network_weights_weig_261 {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		index_0 {Type I LastRead 0 FirstWrite -1}
		index_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	network_weights_weig { ap_none {  { network_weights_weig in_data 0 8 } } }
	network_weights_weig_175 { ap_none {  { network_weights_weig_175 in_data 0 8 } } }
	network_weights_weig_176 { ap_none {  { network_weights_weig_176 in_data 0 8 } } }
	network_weights_weig_177 { ap_none {  { network_weights_weig_177 in_data 0 8 } } }
	network_weights_weig_178 { ap_none {  { network_weights_weig_178 in_data 0 8 } } }
	network_weights_weig_179 { ap_none {  { network_weights_weig_179 in_data 0 8 } } }
	network_weights_weig_180 { ap_none {  { network_weights_weig_180 in_data 0 8 } } }
	network_weights_weig_181 { ap_none {  { network_weights_weig_181 in_data 0 8 } } }
	network_weights_weig_182 { ap_none {  { network_weights_weig_182 in_data 0 8 } } }
	network_weights_weig_183 { ap_none {  { network_weights_weig_183 in_data 0 8 } } }
	network_weights_weig_184 { ap_none {  { network_weights_weig_184 in_data 0 8 } } }
	network_weights_weig_185 { ap_none {  { network_weights_weig_185 in_data 0 8 } } }
	network_weights_weig_186 { ap_none {  { network_weights_weig_186 in_data 0 8 } } }
	network_weights_weig_187 { ap_none {  { network_weights_weig_187 in_data 0 8 } } }
	network_weights_weig_188 { ap_none {  { network_weights_weig_188 in_data 0 8 } } }
	network_weights_weig_189 { ap_none {  { network_weights_weig_189 in_data 0 8 } } }
	network_weights_weig_190 { ap_none {  { network_weights_weig_190 in_data 0 8 } } }
	network_weights_weig_191 { ap_none {  { network_weights_weig_191 in_data 0 8 } } }
	network_weights_weig_192 { ap_none {  { network_weights_weig_192 in_data 0 8 } } }
	network_weights_weig_193 { ap_none {  { network_weights_weig_193 in_data 0 8 } } }
	network_weights_weig_194 { ap_none {  { network_weights_weig_194 in_data 0 8 } } }
	network_weights_weig_195 { ap_none {  { network_weights_weig_195 in_data 0 8 } } }
	network_weights_weig_196 { ap_none {  { network_weights_weig_196 in_data 0 8 } } }
	network_weights_weig_197 { ap_none {  { network_weights_weig_197 in_data 0 8 } } }
	network_weights_weig_198 { ap_none {  { network_weights_weig_198 in_data 0 8 } } }
	network_weights_weig_199 { ap_none {  { network_weights_weig_199 in_data 0 8 } } }
	network_weights_weig_200 { ap_none {  { network_weights_weig_200 in_data 0 8 } } }
	network_weights_weig_201 { ap_none {  { network_weights_weig_201 in_data 0 8 } } }
	network_weights_weig_202 { ap_none {  { network_weights_weig_202 in_data 0 8 } } }
	network_weights_weig_203 { ap_none {  { network_weights_weig_203 in_data 0 8 } } }
	network_weights_weig_204 { ap_none {  { network_weights_weig_204 in_data 0 8 } } }
	network_weights_weig_205 { ap_none {  { network_weights_weig_205 in_data 0 8 } } }
	network_weights_weig_206 { ap_none {  { network_weights_weig_206 in_data 0 8 } } }
	network_weights_weig_207 { ap_none {  { network_weights_weig_207 in_data 0 8 } } }
	network_weights_weig_208 { ap_none {  { network_weights_weig_208 in_data 0 8 } } }
	network_weights_weig_209 { ap_none {  { network_weights_weig_209 in_data 0 8 } } }
	network_weights_weig_210 { ap_none {  { network_weights_weig_210 in_data 0 8 } } }
	network_weights_weig_211 { ap_none {  { network_weights_weig_211 in_data 0 8 } } }
	network_weights_weig_212 { ap_none {  { network_weights_weig_212 in_data 0 8 } } }
	network_weights_weig_213 { ap_none {  { network_weights_weig_213 in_data 0 8 } } }
	network_weights_weig_214 { ap_none {  { network_weights_weig_214 in_data 0 8 } } }
	network_weights_weig_215 { ap_none {  { network_weights_weig_215 in_data 0 8 } } }
	network_weights_weig_216 { ap_none {  { network_weights_weig_216 in_data 0 8 } } }
	network_weights_weig_217 { ap_none {  { network_weights_weig_217 in_data 0 8 } } }
	network_weights_weig_218 { ap_none {  { network_weights_weig_218 in_data 0 8 } } }
	network_weights_weig_219 { ap_none {  { network_weights_weig_219 in_data 0 8 } } }
	network_weights_weig_220 { ap_none {  { network_weights_weig_220 in_data 0 8 } } }
	network_weights_weig_221 { ap_none {  { network_weights_weig_221 in_data 0 8 } } }
	network_weights_weig_222 { ap_none {  { network_weights_weig_222 in_data 0 8 } } }
	network_weights_weig_223 { ap_none {  { network_weights_weig_223 in_data 0 8 } } }
	network_weights_weig_224 { ap_none {  { network_weights_weig_224 in_data 0 8 } } }
	network_weights_weig_225 { ap_none {  { network_weights_weig_225 in_data 0 8 } } }
	network_weights_weig_226 { ap_none {  { network_weights_weig_226 in_data 0 8 } } }
	network_weights_weig_227 { ap_none {  { network_weights_weig_227 in_data 0 8 } } }
	network_weights_weig_228 { ap_none {  { network_weights_weig_228 in_data 0 8 } } }
	network_weights_weig_229 { ap_none {  { network_weights_weig_229 in_data 0 8 } } }
	network_weights_weig_230 { ap_none {  { network_weights_weig_230 in_data 0 8 } } }
	network_weights_weig_231 { ap_none {  { network_weights_weig_231 in_data 0 8 } } }
	network_weights_weig_232 { ap_none {  { network_weights_weig_232 in_data 0 8 } } }
	network_weights_weig_233 { ap_none {  { network_weights_weig_233 in_data 0 8 } } }
	network_weights_weig_234 { ap_none {  { network_weights_weig_234 in_data 0 8 } } }
	network_weights_weig_235 { ap_none {  { network_weights_weig_235 in_data 0 8 } } }
	network_weights_weig_236 { ap_none {  { network_weights_weig_236 in_data 0 8 } } }
	network_weights_weig_237 { ap_none {  { network_weights_weig_237 in_data 0 8 } } }
	network_weights_weig_238 { ap_none {  { network_weights_weig_238 in_data 0 8 } } }
	network_weights_weig_239 { ap_none {  { network_weights_weig_239 in_data 0 8 } } }
	network_weights_weig_240 { ap_none {  { network_weights_weig_240 in_data 0 8 } } }
	network_weights_weig_241 { ap_none {  { network_weights_weig_241 in_data 0 8 } } }
	network_weights_weig_242 { ap_none {  { network_weights_weig_242 in_data 0 8 } } }
	network_weights_weig_243 { ap_none {  { network_weights_weig_243 in_data 0 8 } } }
	network_weights_weig_244 { ap_none {  { network_weights_weig_244 in_data 0 8 } } }
	network_weights_weig_245 { ap_none {  { network_weights_weig_245 in_data 0 8 } } }
	network_weights_weig_246 { ap_none {  { network_weights_weig_246 in_data 0 8 } } }
	network_weights_weig_247 { ap_none {  { network_weights_weig_247 in_data 0 8 } } }
	network_weights_weig_248 { ap_none {  { network_weights_weig_248 in_data 0 8 } } }
	network_weights_weig_249 { ap_none {  { network_weights_weig_249 in_data 0 8 } } }
	network_weights_weig_250 { ap_none {  { network_weights_weig_250 in_data 0 8 } } }
	network_weights_weig_251 { ap_none {  { network_weights_weig_251 in_data 0 8 } } }
	network_weights_weig_252 { ap_none {  { network_weights_weig_252 in_data 0 8 } } }
	network_weights_weig_253 { ap_none {  { network_weights_weig_253 in_data 0 8 } } }
	network_weights_weig_254 { ap_none {  { network_weights_weig_254 in_data 0 8 } } }
	network_weights_weig_255 { ap_none {  { network_weights_weig_255 in_data 0 8 } } }
	network_weights_weig_256 { ap_none {  { network_weights_weig_256 in_data 0 8 } } }
	network_weights_weig_257 { ap_none {  { network_weights_weig_257 in_data 0 8 } } }
	network_weights_weig_258 { ap_none {  { network_weights_weig_258 in_data 0 8 } } }
	network_weights_weig_259 { ap_none {  { network_weights_weig_259 in_data 0 8 } } }
	network_weights_weig_260 { ap_none {  { network_weights_weig_260 in_data 0 8 } } }
	network_weights_weig_261 { ap_none {  { network_weights_weig_261 in_data 0 8 } } }
	layer { ap_none {  { layer in_data 0 4 } } }
	index_0 { ap_none {  { index_0 in_data 0 4 } } }
	index_1 { ap_none {  { index_1 in_data 0 4 } } }
}
