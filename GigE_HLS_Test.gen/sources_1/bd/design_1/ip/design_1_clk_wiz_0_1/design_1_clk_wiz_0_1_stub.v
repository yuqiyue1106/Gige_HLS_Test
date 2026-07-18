// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jul 16 20:43:30 2026
// Host        : REED-MVOT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Projects/FPGA_projects/GigE_HLS_Test/GigE_HLS_Test.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_stub.v
// Design      : design_1_clk_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "design_1_clk_wiz_0_1,clk_wiz_v6_0_15_0_0,{component_name=design_1_clk_wiz_0_1,use_phase_alignment=false,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=3,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=false,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module design_1_clk_wiz_0_1(clk_out100, clk_out156, clk_out125, locked, 
  clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="locked,clk_in1_p,clk_in1_n" */
/* synthesis syn_force_seq_prim="clk_out100" */
/* synthesis syn_force_seq_prim="clk_out156" */
/* synthesis syn_force_seq_prim="clk_out125" */;
  output clk_out100 /* synthesis syn_isclock = 1 */;
  output clk_out156 /* synthesis syn_isclock = 1 */;
  output clk_out125 /* synthesis syn_isclock = 1 */;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
