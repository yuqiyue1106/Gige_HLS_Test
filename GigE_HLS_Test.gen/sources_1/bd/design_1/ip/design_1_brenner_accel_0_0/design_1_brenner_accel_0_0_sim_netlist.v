// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jul 16 20:43:34 2026
// Host        : REED-MVOT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/FPGA_projects/GigE_HLS_Test/GigE_HLS_Test.gen/sources_1/bd/design_1/ip/design_1_brenner_accel_0_0/design_1_brenner_accel_0_0_sim_netlist.v
// Design      : design_1_brenner_accel_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_brenner_accel_0_0,brenner_accel,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "brenner_accel,Vivado 2024.2.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_brenner_accel_0_0
   (s_axi_ctrl_ARADDR,
    s_axi_ctrl_ARREADY,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_AWADDR,
    s_axi_ctrl_AWREADY,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_BREADY,
    s_axi_ctrl_BRESP,
    s_axi_ctrl_BVALID,
    s_axi_ctrl_RDATA,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_RRESP,
    s_axi_ctrl_RVALID,
    s_axi_ctrl_WDATA,
    s_axi_ctrl_WREADY,
    s_axi_ctrl_WSTRB,
    s_axi_ctrl_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt,
    s_axis_video_TDATA,
    s_axis_video_TDEST,
    s_axis_video_TID,
    s_axis_video_TKEEP,
    s_axis_video_TLAST,
    s_axis_video_TREADY,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_ctrl_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY" *) output s_axi_ctrl_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID" *) input s_axi_ctrl_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR" *) input [5:0]s_axi_ctrl_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY" *) output s_axi_ctrl_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID" *) input s_axi_ctrl_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY" *) input s_axi_ctrl_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP" *) output [1:0]s_axi_ctrl_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID" *) output s_axi_ctrl_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA" *) output [31:0]s_axi_ctrl_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY" *) input s_axi_ctrl_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP" *) output [1:0]s_axi_ctrl_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID" *) output s_axi_ctrl_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA" *) input [31:0]s_axi_ctrl_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY" *) output s_axi_ctrl_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB" *) input [3:0]s_axi_ctrl_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID" *) input s_axi_ctrl_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl:s_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_video, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]s_axis_video_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TDEST" *) input [0:0]s_axis_video_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TID" *) input [0:0]s_axis_video_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TKEEP" *) input [0:0]s_axis_video_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TLAST" *) input [0:0]s_axis_video_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TREADY" *) output s_axis_video_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TSTRB" *) input [0:0]s_axis_video_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TUSER" *) input [0:0]s_axis_video_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_video TVALID" *) input s_axis_video_TVALID;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [5:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARREADY;
  wire s_axi_ctrl_ARVALID;
  wire [5:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWREADY;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [31:0]s_axi_ctrl_RDATA;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [31:0]s_axi_ctrl_WDATA;
  wire s_axi_ctrl_WREADY;
  wire [3:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire [7:0]s_axis_video_TDATA;
  wire s_axis_video_TREADY;
  wire s_axis_video_TVALID;
  wire [1:0]NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED;

  assign s_axi_ctrl_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CTRL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  design_1_brenner_accel_0_0_brenner_accel inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_ctrl_ARADDR(s_axi_ctrl_ARADDR),
        .s_axi_ctrl_ARREADY(s_axi_ctrl_ARREADY),
        .s_axi_ctrl_ARVALID(s_axi_ctrl_ARVALID),
        .s_axi_ctrl_AWADDR({s_axi_ctrl_AWADDR[5:2],1'b0,1'b0}),
        .s_axi_ctrl_AWREADY(s_axi_ctrl_AWREADY),
        .s_axi_ctrl_AWVALID(s_axi_ctrl_AWVALID),
        .s_axi_ctrl_BREADY(s_axi_ctrl_BREADY),
        .s_axi_ctrl_BRESP(NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_BVALID(s_axi_ctrl_BVALID),
        .s_axi_ctrl_RDATA(s_axi_ctrl_RDATA),
        .s_axi_ctrl_RREADY(s_axi_ctrl_RREADY),
        .s_axi_ctrl_RRESP(NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED[1:0]),
        .s_axi_ctrl_RVALID(s_axi_ctrl_RVALID),
        .s_axi_ctrl_WDATA(s_axi_ctrl_WDATA),
        .s_axi_ctrl_WREADY(s_axi_ctrl_WREADY),
        .s_axi_ctrl_WSTRB(s_axi_ctrl_WSTRB),
        .s_axi_ctrl_WVALID(s_axi_ctrl_WVALID),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP(1'b0),
        .s_axis_video_TLAST(1'b0),
        .s_axis_video_TREADY(s_axis_video_TREADY),
        .s_axis_video_TSTRB(1'b0),
        .s_axis_video_TUSER(1'b0),
        .s_axis_video_TVALID(s_axis_video_TVALID));
endmodule

(* C_S_AXI_CTRL_ADDR_WIDTH = "6" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_CTRL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "brenner_accel" *) 
(* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) (* ap_ST_fsm_state3 = "4'b0100" *) 
(* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module design_1_brenner_accel_0_0_brenner_accel
   (ap_clk,
    ap_rst_n,
    s_axis_video_TDATA,
    s_axis_video_TVALID,
    s_axis_video_TREADY,
    s_axis_video_TKEEP,
    s_axis_video_TSTRB,
    s_axis_video_TUSER,
    s_axis_video_TLAST,
    s_axis_video_TID,
    s_axis_video_TDEST,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_AWREADY,
    s_axi_ctrl_AWADDR,
    s_axi_ctrl_WVALID,
    s_axi_ctrl_WREADY,
    s_axi_ctrl_WDATA,
    s_axi_ctrl_WSTRB,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_ARREADY,
    s_axi_ctrl_ARADDR,
    s_axi_ctrl_RVALID,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_RDATA,
    s_axi_ctrl_RRESP,
    s_axi_ctrl_BVALID,
    s_axi_ctrl_BREADY,
    s_axi_ctrl_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input [7:0]s_axis_video_TDATA;
  input s_axis_video_TVALID;
  output s_axis_video_TREADY;
  input [0:0]s_axis_video_TKEEP;
  input [0:0]s_axis_video_TSTRB;
  input [0:0]s_axis_video_TUSER;
  input [0:0]s_axis_video_TLAST;
  input [0:0]s_axis_video_TID;
  input [0:0]s_axis_video_TDEST;
  input s_axi_ctrl_AWVALID;
  output s_axi_ctrl_AWREADY;
  input [5:0]s_axi_ctrl_AWADDR;
  input s_axi_ctrl_WVALID;
  output s_axi_ctrl_WREADY;
  input [31:0]s_axi_ctrl_WDATA;
  input [3:0]s_axi_ctrl_WSTRB;
  input s_axi_ctrl_ARVALID;
  output s_axi_ctrl_ARREADY;
  input [5:0]s_axi_ctrl_ARADDR;
  output s_axi_ctrl_RVALID;
  input s_axi_ctrl_RREADY;
  output [31:0]s_axi_ctrl_RDATA;
  output [1:0]s_axi_ctrl_RRESP;
  output s_axi_ctrl_BVALID;
  input s_axi_ctrl_BREADY;
  output [1:0]s_axi_ctrl_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [2:2]A;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ctrl_s_axi_U_n_10;
  wire ctrl_s_axi_U_n_11;
  wire ctrl_s_axi_U_n_12;
  wire ctrl_s_axi_U_n_13;
  wire ctrl_s_axi_U_n_14;
  wire ctrl_s_axi_U_n_15;
  wire ctrl_s_axi_U_n_16;
  wire ctrl_s_axi_U_n_17;
  wire ctrl_s_axi_U_n_18;
  wire ctrl_s_axi_U_n_19;
  wire ctrl_s_axi_U_n_20;
  wire ctrl_s_axi_U_n_21;
  wire ctrl_s_axi_U_n_22;
  wire ctrl_s_axi_U_n_23;
  wire ctrl_s_axi_U_n_24;
  wire ctrl_s_axi_U_n_25;
  wire ctrl_s_axi_U_n_26;
  wire ctrl_s_axi_U_n_27;
  wire ctrl_s_axi_U_n_28;
  wire ctrl_s_axi_U_n_29;
  wire ctrl_s_axi_U_n_30;
  wire ctrl_s_axi_U_n_31;
  wire ctrl_s_axi_U_n_32;
  wire ctrl_s_axi_U_n_33;
  wire ctrl_s_axi_U_n_34;
  wire ctrl_s_axi_U_n_35;
  wire ctrl_s_axi_U_n_36;
  wire ctrl_s_axi_U_n_37;
  wire ctrl_s_axi_U_n_38;
  wire ctrl_s_axi_U_n_39;
  wire ctrl_s_axi_U_n_8;
  wire ctrl_s_axi_U_n_9;
  wire [7:0]data_p1;
  wire [2:0]empty_fu_78;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79;
  wire [61:60]indvar_flatten_fu_82_reg;
  wire interrupt;
  wire mul_31ns_31ns_62_1_1_U13_n_0;
  wire mul_31ns_31ns_62_1_1_U13_n_1;
  wire mul_31ns_31ns_62_1_1_U13_n_10;
  wire mul_31ns_31ns_62_1_1_U13_n_100;
  wire mul_31ns_31ns_62_1_1_U13_n_101;
  wire mul_31ns_31ns_62_1_1_U13_n_102;
  wire mul_31ns_31ns_62_1_1_U13_n_103;
  wire mul_31ns_31ns_62_1_1_U13_n_104;
  wire mul_31ns_31ns_62_1_1_U13_n_105;
  wire mul_31ns_31ns_62_1_1_U13_n_106;
  wire mul_31ns_31ns_62_1_1_U13_n_107;
  wire mul_31ns_31ns_62_1_1_U13_n_108;
  wire mul_31ns_31ns_62_1_1_U13_n_109;
  wire mul_31ns_31ns_62_1_1_U13_n_11;
  wire mul_31ns_31ns_62_1_1_U13_n_110;
  wire mul_31ns_31ns_62_1_1_U13_n_111;
  wire mul_31ns_31ns_62_1_1_U13_n_112;
  wire mul_31ns_31ns_62_1_1_U13_n_113;
  wire mul_31ns_31ns_62_1_1_U13_n_114;
  wire mul_31ns_31ns_62_1_1_U13_n_115;
  wire mul_31ns_31ns_62_1_1_U13_n_116;
  wire mul_31ns_31ns_62_1_1_U13_n_117;
  wire mul_31ns_31ns_62_1_1_U13_n_118;
  wire mul_31ns_31ns_62_1_1_U13_n_119;
  wire mul_31ns_31ns_62_1_1_U13_n_12;
  wire mul_31ns_31ns_62_1_1_U13_n_120;
  wire mul_31ns_31ns_62_1_1_U13_n_121;
  wire mul_31ns_31ns_62_1_1_U13_n_122;
  wire mul_31ns_31ns_62_1_1_U13_n_123;
  wire mul_31ns_31ns_62_1_1_U13_n_124;
  wire mul_31ns_31ns_62_1_1_U13_n_125;
  wire mul_31ns_31ns_62_1_1_U13_n_126;
  wire mul_31ns_31ns_62_1_1_U13_n_127;
  wire mul_31ns_31ns_62_1_1_U13_n_128;
  wire mul_31ns_31ns_62_1_1_U13_n_129;
  wire mul_31ns_31ns_62_1_1_U13_n_13;
  wire mul_31ns_31ns_62_1_1_U13_n_130;
  wire mul_31ns_31ns_62_1_1_U13_n_131;
  wire mul_31ns_31ns_62_1_1_U13_n_132;
  wire mul_31ns_31ns_62_1_1_U13_n_133;
  wire mul_31ns_31ns_62_1_1_U13_n_134;
  wire mul_31ns_31ns_62_1_1_U13_n_135;
  wire mul_31ns_31ns_62_1_1_U13_n_136;
  wire mul_31ns_31ns_62_1_1_U13_n_137;
  wire mul_31ns_31ns_62_1_1_U13_n_138;
  wire mul_31ns_31ns_62_1_1_U13_n_139;
  wire mul_31ns_31ns_62_1_1_U13_n_14;
  wire mul_31ns_31ns_62_1_1_U13_n_140;
  wire mul_31ns_31ns_62_1_1_U13_n_141;
  wire mul_31ns_31ns_62_1_1_U13_n_142;
  wire mul_31ns_31ns_62_1_1_U13_n_143;
  wire mul_31ns_31ns_62_1_1_U13_n_144;
  wire mul_31ns_31ns_62_1_1_U13_n_145;
  wire mul_31ns_31ns_62_1_1_U13_n_146;
  wire mul_31ns_31ns_62_1_1_U13_n_147;
  wire mul_31ns_31ns_62_1_1_U13_n_148;
  wire mul_31ns_31ns_62_1_1_U13_n_149;
  wire mul_31ns_31ns_62_1_1_U13_n_15;
  wire mul_31ns_31ns_62_1_1_U13_n_150;
  wire mul_31ns_31ns_62_1_1_U13_n_151;
  wire mul_31ns_31ns_62_1_1_U13_n_152;
  wire mul_31ns_31ns_62_1_1_U13_n_153;
  wire mul_31ns_31ns_62_1_1_U13_n_154;
  wire mul_31ns_31ns_62_1_1_U13_n_155;
  wire mul_31ns_31ns_62_1_1_U13_n_156;
  wire mul_31ns_31ns_62_1_1_U13_n_157;
  wire mul_31ns_31ns_62_1_1_U13_n_158;
  wire mul_31ns_31ns_62_1_1_U13_n_159;
  wire mul_31ns_31ns_62_1_1_U13_n_16;
  wire mul_31ns_31ns_62_1_1_U13_n_17;
  wire mul_31ns_31ns_62_1_1_U13_n_18;
  wire mul_31ns_31ns_62_1_1_U13_n_19;
  wire mul_31ns_31ns_62_1_1_U13_n_2;
  wire mul_31ns_31ns_62_1_1_U13_n_20;
  wire mul_31ns_31ns_62_1_1_U13_n_204;
  wire mul_31ns_31ns_62_1_1_U13_n_21;
  wire mul_31ns_31ns_62_1_1_U13_n_22;
  wire mul_31ns_31ns_62_1_1_U13_n_23;
  wire mul_31ns_31ns_62_1_1_U13_n_24;
  wire mul_31ns_31ns_62_1_1_U13_n_25;
  wire mul_31ns_31ns_62_1_1_U13_n_26;
  wire mul_31ns_31ns_62_1_1_U13_n_27;
  wire mul_31ns_31ns_62_1_1_U13_n_28;
  wire mul_31ns_31ns_62_1_1_U13_n_29;
  wire mul_31ns_31ns_62_1_1_U13_n_3;
  wire mul_31ns_31ns_62_1_1_U13_n_30;
  wire mul_31ns_31ns_62_1_1_U13_n_31;
  wire mul_31ns_31ns_62_1_1_U13_n_32;
  wire mul_31ns_31ns_62_1_1_U13_n_33;
  wire mul_31ns_31ns_62_1_1_U13_n_34;
  wire mul_31ns_31ns_62_1_1_U13_n_35;
  wire mul_31ns_31ns_62_1_1_U13_n_36;
  wire mul_31ns_31ns_62_1_1_U13_n_37;
  wire mul_31ns_31ns_62_1_1_U13_n_38;
  wire mul_31ns_31ns_62_1_1_U13_n_39;
  wire mul_31ns_31ns_62_1_1_U13_n_4;
  wire mul_31ns_31ns_62_1_1_U13_n_40;
  wire mul_31ns_31ns_62_1_1_U13_n_41;
  wire mul_31ns_31ns_62_1_1_U13_n_42;
  wire mul_31ns_31ns_62_1_1_U13_n_43;
  wire mul_31ns_31ns_62_1_1_U13_n_44;
  wire mul_31ns_31ns_62_1_1_U13_n_45;
  wire mul_31ns_31ns_62_1_1_U13_n_46;
  wire mul_31ns_31ns_62_1_1_U13_n_47;
  wire mul_31ns_31ns_62_1_1_U13_n_48;
  wire mul_31ns_31ns_62_1_1_U13_n_49;
  wire mul_31ns_31ns_62_1_1_U13_n_5;
  wire mul_31ns_31ns_62_1_1_U13_n_50;
  wire mul_31ns_31ns_62_1_1_U13_n_51;
  wire mul_31ns_31ns_62_1_1_U13_n_52;
  wire mul_31ns_31ns_62_1_1_U13_n_53;
  wire mul_31ns_31ns_62_1_1_U13_n_54;
  wire mul_31ns_31ns_62_1_1_U13_n_55;
  wire mul_31ns_31ns_62_1_1_U13_n_56;
  wire mul_31ns_31ns_62_1_1_U13_n_57;
  wire mul_31ns_31ns_62_1_1_U13_n_58;
  wire mul_31ns_31ns_62_1_1_U13_n_59;
  wire mul_31ns_31ns_62_1_1_U13_n_6;
  wire mul_31ns_31ns_62_1_1_U13_n_60;
  wire mul_31ns_31ns_62_1_1_U13_n_61;
  wire mul_31ns_31ns_62_1_1_U13_n_62;
  wire mul_31ns_31ns_62_1_1_U13_n_63;
  wire mul_31ns_31ns_62_1_1_U13_n_64;
  wire mul_31ns_31ns_62_1_1_U13_n_65;
  wire mul_31ns_31ns_62_1_1_U13_n_66;
  wire mul_31ns_31ns_62_1_1_U13_n_67;
  wire mul_31ns_31ns_62_1_1_U13_n_68;
  wire mul_31ns_31ns_62_1_1_U13_n_69;
  wire mul_31ns_31ns_62_1_1_U13_n_7;
  wire mul_31ns_31ns_62_1_1_U13_n_70;
  wire mul_31ns_31ns_62_1_1_U13_n_71;
  wire mul_31ns_31ns_62_1_1_U13_n_72;
  wire mul_31ns_31ns_62_1_1_U13_n_73;
  wire mul_31ns_31ns_62_1_1_U13_n_74;
  wire mul_31ns_31ns_62_1_1_U13_n_75;
  wire mul_31ns_31ns_62_1_1_U13_n_76;
  wire mul_31ns_31ns_62_1_1_U13_n_77;
  wire mul_31ns_31ns_62_1_1_U13_n_78;
  wire mul_31ns_31ns_62_1_1_U13_n_79;
  wire mul_31ns_31ns_62_1_1_U13_n_8;
  wire mul_31ns_31ns_62_1_1_U13_n_80;
  wire mul_31ns_31ns_62_1_1_U13_n_81;
  wire mul_31ns_31ns_62_1_1_U13_n_82;
  wire mul_31ns_31ns_62_1_1_U13_n_83;
  wire mul_31ns_31ns_62_1_1_U13_n_84;
  wire mul_31ns_31ns_62_1_1_U13_n_85;
  wire mul_31ns_31ns_62_1_1_U13_n_86;
  wire mul_31ns_31ns_62_1_1_U13_n_87;
  wire mul_31ns_31ns_62_1_1_U13_n_88;
  wire mul_31ns_31ns_62_1_1_U13_n_89;
  wire mul_31ns_31ns_62_1_1_U13_n_9;
  wire mul_31ns_31ns_62_1_1_U13_n_90;
  wire mul_31ns_31ns_62_1_1_U13_n_91;
  wire mul_31ns_31ns_62_1_1_U13_n_92;
  wire mul_31ns_31ns_62_1_1_U13_n_93;
  wire mul_31ns_31ns_62_1_1_U13_n_94;
  wire mul_31ns_31ns_62_1_1_U13_n_95;
  wire mul_31ns_31ns_62_1_1_U13_n_96;
  wire mul_31ns_31ns_62_1_1_U13_n_97;
  wire mul_31ns_31ns_62_1_1_U13_n_98;
  wire mul_31ns_31ns_62_1_1_U13_n_99;
  wire [30:0]mul_ln10_fu_110_p0;
  wire [30:0]mul_ln10_fu_110_p1;
  wire \mul_ln10_reg_175_reg[0]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[10]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[11]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[12]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[13]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[14]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[15]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[16]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[1]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[2]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[3]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[4]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[5]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[6]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[7]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[8]__0_n_0 ;
  wire \mul_ln10_reg_175_reg[9]__0_n_0 ;
  wire mul_ln10_reg_175_reg__0_n_100;
  wire mul_ln10_reg_175_reg__0_n_101;
  wire mul_ln10_reg_175_reg__0_n_102;
  wire mul_ln10_reg_175_reg__0_n_103;
  wire mul_ln10_reg_175_reg__0_n_104;
  wire mul_ln10_reg_175_reg__0_n_105;
  wire mul_ln10_reg_175_reg__0_n_58;
  wire mul_ln10_reg_175_reg__0_n_59;
  wire mul_ln10_reg_175_reg__0_n_60;
  wire mul_ln10_reg_175_reg__0_n_61;
  wire mul_ln10_reg_175_reg__0_n_62;
  wire mul_ln10_reg_175_reg__0_n_63;
  wire mul_ln10_reg_175_reg__0_n_64;
  wire mul_ln10_reg_175_reg__0_n_65;
  wire mul_ln10_reg_175_reg__0_n_66;
  wire mul_ln10_reg_175_reg__0_n_67;
  wire mul_ln10_reg_175_reg__0_n_68;
  wire mul_ln10_reg_175_reg__0_n_69;
  wire mul_ln10_reg_175_reg__0_n_70;
  wire mul_ln10_reg_175_reg__0_n_71;
  wire mul_ln10_reg_175_reg__0_n_72;
  wire mul_ln10_reg_175_reg__0_n_73;
  wire mul_ln10_reg_175_reg__0_n_74;
  wire mul_ln10_reg_175_reg__0_n_75;
  wire mul_ln10_reg_175_reg__0_n_76;
  wire mul_ln10_reg_175_reg__0_n_77;
  wire mul_ln10_reg_175_reg__0_n_78;
  wire mul_ln10_reg_175_reg__0_n_79;
  wire mul_ln10_reg_175_reg__0_n_80;
  wire mul_ln10_reg_175_reg__0_n_81;
  wire mul_ln10_reg_175_reg__0_n_82;
  wire mul_ln10_reg_175_reg__0_n_83;
  wire mul_ln10_reg_175_reg__0_n_84;
  wire mul_ln10_reg_175_reg__0_n_85;
  wire mul_ln10_reg_175_reg__0_n_86;
  wire mul_ln10_reg_175_reg__0_n_87;
  wire mul_ln10_reg_175_reg__0_n_88;
  wire mul_ln10_reg_175_reg__0_n_89;
  wire mul_ln10_reg_175_reg__0_n_90;
  wire mul_ln10_reg_175_reg__0_n_91;
  wire mul_ln10_reg_175_reg__0_n_92;
  wire mul_ln10_reg_175_reg__0_n_93;
  wire mul_ln10_reg_175_reg__0_n_94;
  wire mul_ln10_reg_175_reg__0_n_95;
  wire mul_ln10_reg_175_reg__0_n_96;
  wire mul_ln10_reg_175_reg__0_n_97;
  wire mul_ln10_reg_175_reg__0_n_98;
  wire mul_ln10_reg_175_reg__0_n_99;
  wire [59:16]mul_ln10_reg_175_reg__1;
  wire \mul_ln10_reg_175_reg_n_0_[0] ;
  wire \mul_ln10_reg_175_reg_n_0_[10] ;
  wire \mul_ln10_reg_175_reg_n_0_[11] ;
  wire \mul_ln10_reg_175_reg_n_0_[12] ;
  wire \mul_ln10_reg_175_reg_n_0_[13] ;
  wire \mul_ln10_reg_175_reg_n_0_[14] ;
  wire \mul_ln10_reg_175_reg_n_0_[15] ;
  wire \mul_ln10_reg_175_reg_n_0_[16] ;
  wire \mul_ln10_reg_175_reg_n_0_[1] ;
  wire \mul_ln10_reg_175_reg_n_0_[2] ;
  wire \mul_ln10_reg_175_reg_n_0_[3] ;
  wire \mul_ln10_reg_175_reg_n_0_[4] ;
  wire \mul_ln10_reg_175_reg_n_0_[5] ;
  wire \mul_ln10_reg_175_reg_n_0_[6] ;
  wire \mul_ln10_reg_175_reg_n_0_[7] ;
  wire \mul_ln10_reg_175_reg_n_0_[8] ;
  wire \mul_ln10_reg_175_reg_n_0_[9] ;
  wire mul_ln10_reg_175_reg_n_100;
  wire mul_ln10_reg_175_reg_n_101;
  wire mul_ln10_reg_175_reg_n_102;
  wire mul_ln10_reg_175_reg_n_103;
  wire mul_ln10_reg_175_reg_n_104;
  wire mul_ln10_reg_175_reg_n_105;
  wire mul_ln10_reg_175_reg_n_58;
  wire mul_ln10_reg_175_reg_n_59;
  wire mul_ln10_reg_175_reg_n_60;
  wire mul_ln10_reg_175_reg_n_61;
  wire mul_ln10_reg_175_reg_n_62;
  wire mul_ln10_reg_175_reg_n_63;
  wire mul_ln10_reg_175_reg_n_64;
  wire mul_ln10_reg_175_reg_n_65;
  wire mul_ln10_reg_175_reg_n_66;
  wire mul_ln10_reg_175_reg_n_67;
  wire mul_ln10_reg_175_reg_n_68;
  wire mul_ln10_reg_175_reg_n_69;
  wire mul_ln10_reg_175_reg_n_70;
  wire mul_ln10_reg_175_reg_n_71;
  wire mul_ln10_reg_175_reg_n_72;
  wire mul_ln10_reg_175_reg_n_73;
  wire mul_ln10_reg_175_reg_n_74;
  wire mul_ln10_reg_175_reg_n_75;
  wire mul_ln10_reg_175_reg_n_76;
  wire mul_ln10_reg_175_reg_n_77;
  wire mul_ln10_reg_175_reg_n_78;
  wire mul_ln10_reg_175_reg_n_79;
  wire mul_ln10_reg_175_reg_n_80;
  wire mul_ln10_reg_175_reg_n_81;
  wire mul_ln10_reg_175_reg_n_82;
  wire mul_ln10_reg_175_reg_n_83;
  wire mul_ln10_reg_175_reg_n_84;
  wire mul_ln10_reg_175_reg_n_85;
  wire mul_ln10_reg_175_reg_n_86;
  wire mul_ln10_reg_175_reg_n_87;
  wire mul_ln10_reg_175_reg_n_88;
  wire mul_ln10_reg_175_reg_n_89;
  wire mul_ln10_reg_175_reg_n_90;
  wire mul_ln10_reg_175_reg_n_91;
  wire mul_ln10_reg_175_reg_n_92;
  wire mul_ln10_reg_175_reg_n_93;
  wire mul_ln10_reg_175_reg_n_94;
  wire mul_ln10_reg_175_reg_n_95;
  wire mul_ln10_reg_175_reg_n_96;
  wire mul_ln10_reg_175_reg_n_97;
  wire mul_ln10_reg_175_reg_n_98;
  wire mul_ln10_reg_175_reg_n_99;
  wire regslice_both_s_axis_video_V_data_V_U_n_4;
  wire [5:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARREADY;
  wire s_axi_ctrl_ARVALID;
  wire [5:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWREADY;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [31:0]s_axi_ctrl_RDATA;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [31:0]s_axi_ctrl_WDATA;
  wire s_axi_ctrl_WREADY;
  wire [3:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire [7:0]s_axis_video_TDATA;
  wire s_axis_video_TREADY;
  wire s_axis_video_TVALID;
  wire s_axis_video_TVALID_int_regslice;
  wire [1:1]state;
  wire [63:0]sum_diff_sq_fu_70_reg;
  wire [31:0]width_read_reg_164;
  wire NLW_mul_ln10_reg_175_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln10_reg_175_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln10_reg_175_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln10_reg_175_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln10_reg_175_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln10_reg_175_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln10_reg_175_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln10_reg_175_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln10_reg_175_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln10_reg_175_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln10_reg_175_reg__0_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln10_reg_175_reg__0_XOROUT_UNCONNECTED;

  assign s_axi_ctrl_BRESP[1] = \<const0> ;
  assign s_axi_ctrl_BRESP[0] = \<const0> ;
  assign s_axi_ctrl_RRESP[1] = \<const0> ;
  assign s_axi_ctrl_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  design_1_brenner_accel_0_0_brenner_accel_ctrl_s_axi ctrl_s_axi_U
       (.D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_ctrl_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_ctrl_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_ctrl_WREADY),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3,\ap_CS_fsm_reg_n_0_[1] ,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\int_brenner_score_reg[63]_0 (sum_diff_sq_fu_70_reg),
        .\int_width_reg[31]_0 ({ctrl_s_axi_U_n_8,ctrl_s_axi_U_n_9,ctrl_s_axi_U_n_10,ctrl_s_axi_U_n_11,ctrl_s_axi_U_n_12,ctrl_s_axi_U_n_13,ctrl_s_axi_U_n_14,ctrl_s_axi_U_n_15,ctrl_s_axi_U_n_16,ctrl_s_axi_U_n_17,ctrl_s_axi_U_n_18,ctrl_s_axi_U_n_19,ctrl_s_axi_U_n_20,ctrl_s_axi_U_n_21,ctrl_s_axi_U_n_22,ctrl_s_axi_U_n_23,ctrl_s_axi_U_n_24,ctrl_s_axi_U_n_25,ctrl_s_axi_U_n_26,ctrl_s_axi_U_n_27,ctrl_s_axi_U_n_28,ctrl_s_axi_U_n_29,ctrl_s_axi_U_n_30,ctrl_s_axi_U_n_31,ctrl_s_axi_U_n_32,ctrl_s_axi_U_n_33,ctrl_s_axi_U_n_34,ctrl_s_axi_U_n_35,ctrl_s_axi_U_n_36,ctrl_s_axi_U_n_37,ctrl_s_axi_U_n_38,ctrl_s_axi_U_n_39}),
        .interrupt(interrupt),
        .mul_ln10_fu_110_p0(mul_ln10_fu_110_p0),
        .mul_ln10_fu_110_p1(mul_ln10_fu_110_p1),
        .s_axi_ctrl_ARADDR(s_axi_ctrl_ARADDR),
        .s_axi_ctrl_ARVALID(s_axi_ctrl_ARVALID),
        .s_axi_ctrl_AWADDR(s_axi_ctrl_AWADDR[5:2]),
        .s_axi_ctrl_AWVALID(s_axi_ctrl_AWVALID),
        .s_axi_ctrl_BREADY(s_axi_ctrl_BREADY),
        .s_axi_ctrl_BVALID(s_axi_ctrl_BVALID),
        .s_axi_ctrl_RDATA(s_axi_ctrl_RDATA),
        .s_axi_ctrl_RREADY(s_axi_ctrl_RREADY),
        .s_axi_ctrl_RVALID(s_axi_ctrl_RVALID),
        .s_axi_ctrl_WDATA(s_axi_ctrl_WDATA),
        .s_axi_ctrl_WSTRB(s_axi_ctrl_WSTRB),
        .s_axi_ctrl_WVALID(s_axi_ctrl_WVALID));
  design_1_brenner_accel_0_0_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89
       (.D(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66),
        .DSP_ALU_INST({A,regslice_both_s_axis_video_V_data_V_U_n_4}),
        .P({mul_ln10_reg_175_reg_n_78,mul_ln10_reg_175_reg_n_79,mul_ln10_reg_175_reg_n_80,mul_ln10_reg_175_reg_n_81,mul_ln10_reg_175_reg_n_82,mul_ln10_reg_175_reg_n_83}),
        .Q({state,s_axis_video_TVALID_int_regslice}),
        .S(indvar_flatten_fu_82_reg),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0] ({grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75}),
        .\ap_CS_fsm_reg[2] (grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67),
        .\ap_CS_fsm_reg[2]_0 (ap_NS_fsm[3:2]),
        .\ap_CS_fsm_reg[3] ({ap_CS_fsm_state3,\ap_CS_fsm_reg_n_0_[1] }),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg_0(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79),
        .ap_rst_n(ap_rst_n),
        .\empty_15_fu_86_reg[7]_0 (data_p1),
        .\empty_fu_78_reg[2]_0 (empty_fu_78),
        .grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg(ap_NS_fsm[1]),
        .icmp_ln31_fu_155_p2_carry_0({\mul_ln10_reg_175_reg[15]__0_n_0 ,\mul_ln10_reg_175_reg[14]__0_n_0 ,\mul_ln10_reg_175_reg[13]__0_n_0 ,\mul_ln10_reg_175_reg[12]__0_n_0 ,\mul_ln10_reg_175_reg[11]__0_n_0 ,\mul_ln10_reg_175_reg[10]__0_n_0 ,\mul_ln10_reg_175_reg[9]__0_n_0 ,\mul_ln10_reg_175_reg[8]__0_n_0 ,\mul_ln10_reg_175_reg[7]__0_n_0 ,\mul_ln10_reg_175_reg[6]__0_n_0 ,\mul_ln10_reg_175_reg[5]__0_n_0 ,\mul_ln10_reg_175_reg[4]__0_n_0 ,\mul_ln10_reg_175_reg[3]__0_n_0 ,\mul_ln10_reg_175_reg[2]__0_n_0 ,\mul_ln10_reg_175_reg[1]__0_n_0 ,\mul_ln10_reg_175_reg[0]__0_n_0 }),
        .\icmp_ln31_reg_337_reg[0]_0 (mul_31ns_31ns_62_1_1_U13_n_204),
        .icmp_ln32_fu_167_p2_carry__0_0(width_read_reg_164),
        .mul_ln10_reg_175_reg__1(mul_ln10_reg_175_reg__1),
        .s_axis_video_TVALID(s_axis_video_TVALID),
        .\sum_diff_sq_fu_70_reg[63]_0 (sum_diff_sq_fu_70_reg),
        .tmp_product_carry__4({mul_ln10_reg_175_reg__0_n_61,mul_ln10_reg_175_reg__0_n_62,mul_ln10_reg_175_reg__0_n_63,mul_ln10_reg_175_reg__0_n_64,mul_ln10_reg_175_reg__0_n_65,mul_ln10_reg_175_reg__0_n_66}));
  FDRE #(
    .INIT(1'b0)) 
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79),
        .Q(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_brenner_accel_0_0_brenner_accel_mul_31ns_31ns_62_1_1 mul_31ns_31ns_62_1_1_U13
       (.ACOUT({mul_31ns_31ns_62_1_1_U13_n_65,mul_31ns_31ns_62_1_1_U13_n_66,mul_31ns_31ns_62_1_1_U13_n_67,mul_31ns_31ns_62_1_1_U13_n_68,mul_31ns_31ns_62_1_1_U13_n_69,mul_31ns_31ns_62_1_1_U13_n_70,mul_31ns_31ns_62_1_1_U13_n_71,mul_31ns_31ns_62_1_1_U13_n_72,mul_31ns_31ns_62_1_1_U13_n_73,mul_31ns_31ns_62_1_1_U13_n_74,mul_31ns_31ns_62_1_1_U13_n_75,mul_31ns_31ns_62_1_1_U13_n_76,mul_31ns_31ns_62_1_1_U13_n_77,mul_31ns_31ns_62_1_1_U13_n_78,mul_31ns_31ns_62_1_1_U13_n_79,mul_31ns_31ns_62_1_1_U13_n_80,mul_31ns_31ns_62_1_1_U13_n_81,mul_31ns_31ns_62_1_1_U13_n_82,mul_31ns_31ns_62_1_1_U13_n_83,mul_31ns_31ns_62_1_1_U13_n_84,mul_31ns_31ns_62_1_1_U13_n_85,mul_31ns_31ns_62_1_1_U13_n_86,mul_31ns_31ns_62_1_1_U13_n_87,mul_31ns_31ns_62_1_1_U13_n_88,mul_31ns_31ns_62_1_1_U13_n_89,mul_31ns_31ns_62_1_1_U13_n_90,mul_31ns_31ns_62_1_1_U13_n_91,mul_31ns_31ns_62_1_1_U13_n_92,mul_31ns_31ns_62_1_1_U13_n_93,mul_31ns_31ns_62_1_1_U13_n_94}),
        .D({mul_31ns_31ns_62_1_1_U13_n_0,mul_31ns_31ns_62_1_1_U13_n_1,mul_31ns_31ns_62_1_1_U13_n_2,mul_31ns_31ns_62_1_1_U13_n_3,mul_31ns_31ns_62_1_1_U13_n_4,mul_31ns_31ns_62_1_1_U13_n_5,mul_31ns_31ns_62_1_1_U13_n_6,mul_31ns_31ns_62_1_1_U13_n_7,mul_31ns_31ns_62_1_1_U13_n_8,mul_31ns_31ns_62_1_1_U13_n_9,mul_31ns_31ns_62_1_1_U13_n_10,mul_31ns_31ns_62_1_1_U13_n_11,mul_31ns_31ns_62_1_1_U13_n_12,mul_31ns_31ns_62_1_1_U13_n_13,mul_31ns_31ns_62_1_1_U13_n_14,mul_31ns_31ns_62_1_1_U13_n_15,mul_31ns_31ns_62_1_1_U13_n_16}),
        .DSP_ALU_INST({mul_31ns_31ns_62_1_1_U13_n_95,mul_31ns_31ns_62_1_1_U13_n_96,mul_31ns_31ns_62_1_1_U13_n_97,mul_31ns_31ns_62_1_1_U13_n_98,mul_31ns_31ns_62_1_1_U13_n_99,mul_31ns_31ns_62_1_1_U13_n_100,mul_31ns_31ns_62_1_1_U13_n_101,mul_31ns_31ns_62_1_1_U13_n_102,mul_31ns_31ns_62_1_1_U13_n_103,mul_31ns_31ns_62_1_1_U13_n_104,mul_31ns_31ns_62_1_1_U13_n_105,mul_31ns_31ns_62_1_1_U13_n_106,mul_31ns_31ns_62_1_1_U13_n_107,mul_31ns_31ns_62_1_1_U13_n_108,mul_31ns_31ns_62_1_1_U13_n_109,mul_31ns_31ns_62_1_1_U13_n_110,mul_31ns_31ns_62_1_1_U13_n_111}),
        .DSP_ALU_INST_0({mul_31ns_31ns_62_1_1_U13_n_112,mul_31ns_31ns_62_1_1_U13_n_113,mul_31ns_31ns_62_1_1_U13_n_114,mul_31ns_31ns_62_1_1_U13_n_115,mul_31ns_31ns_62_1_1_U13_n_116,mul_31ns_31ns_62_1_1_U13_n_117,mul_31ns_31ns_62_1_1_U13_n_118,mul_31ns_31ns_62_1_1_U13_n_119,mul_31ns_31ns_62_1_1_U13_n_120,mul_31ns_31ns_62_1_1_U13_n_121,mul_31ns_31ns_62_1_1_U13_n_122,mul_31ns_31ns_62_1_1_U13_n_123,mul_31ns_31ns_62_1_1_U13_n_124,mul_31ns_31ns_62_1_1_U13_n_125,mul_31ns_31ns_62_1_1_U13_n_126,mul_31ns_31ns_62_1_1_U13_n_127,mul_31ns_31ns_62_1_1_U13_n_128,mul_31ns_31ns_62_1_1_U13_n_129,mul_31ns_31ns_62_1_1_U13_n_130,mul_31ns_31ns_62_1_1_U13_n_131,mul_31ns_31ns_62_1_1_U13_n_132,mul_31ns_31ns_62_1_1_U13_n_133,mul_31ns_31ns_62_1_1_U13_n_134,mul_31ns_31ns_62_1_1_U13_n_135,mul_31ns_31ns_62_1_1_U13_n_136,mul_31ns_31ns_62_1_1_U13_n_137,mul_31ns_31ns_62_1_1_U13_n_138,mul_31ns_31ns_62_1_1_U13_n_139,mul_31ns_31ns_62_1_1_U13_n_140,mul_31ns_31ns_62_1_1_U13_n_141,mul_31ns_31ns_62_1_1_U13_n_142,mul_31ns_31ns_62_1_1_U13_n_143,mul_31ns_31ns_62_1_1_U13_n_144,mul_31ns_31ns_62_1_1_U13_n_145,mul_31ns_31ns_62_1_1_U13_n_146,mul_31ns_31ns_62_1_1_U13_n_147,mul_31ns_31ns_62_1_1_U13_n_148,mul_31ns_31ns_62_1_1_U13_n_149,mul_31ns_31ns_62_1_1_U13_n_150,mul_31ns_31ns_62_1_1_U13_n_151,mul_31ns_31ns_62_1_1_U13_n_152,mul_31ns_31ns_62_1_1_U13_n_153,mul_31ns_31ns_62_1_1_U13_n_154,mul_31ns_31ns_62_1_1_U13_n_155,mul_31ns_31ns_62_1_1_U13_n_156,mul_31ns_31ns_62_1_1_U13_n_157,mul_31ns_31ns_62_1_1_U13_n_158,mul_31ns_31ns_62_1_1_U13_n_159}),
        .P({mul_ln10_reg_175_reg__0_n_62,mul_ln10_reg_175_reg__0_n_63,mul_ln10_reg_175_reg__0_n_64,mul_ln10_reg_175_reg__0_n_65,mul_ln10_reg_175_reg__0_n_66,mul_ln10_reg_175_reg__0_n_67,mul_ln10_reg_175_reg__0_n_68,mul_ln10_reg_175_reg__0_n_69,mul_ln10_reg_175_reg__0_n_70,mul_ln10_reg_175_reg__0_n_71,mul_ln10_reg_175_reg__0_n_72,mul_ln10_reg_175_reg__0_n_73,mul_ln10_reg_175_reg__0_n_74,mul_ln10_reg_175_reg__0_n_75,mul_ln10_reg_175_reg__0_n_76,mul_ln10_reg_175_reg__0_n_77,mul_ln10_reg_175_reg__0_n_78,mul_ln10_reg_175_reg__0_n_79,mul_ln10_reg_175_reg__0_n_80,mul_ln10_reg_175_reg__0_n_81,mul_ln10_reg_175_reg__0_n_82,mul_ln10_reg_175_reg__0_n_83,mul_ln10_reg_175_reg__0_n_84,mul_ln10_reg_175_reg__0_n_85,mul_ln10_reg_175_reg__0_n_86,mul_ln10_reg_175_reg__0_n_87,mul_ln10_reg_175_reg__0_n_88,mul_ln10_reg_175_reg__0_n_89,mul_ln10_reg_175_reg__0_n_90,mul_ln10_reg_175_reg__0_n_91,mul_ln10_reg_175_reg__0_n_92,mul_ln10_reg_175_reg__0_n_93,mul_ln10_reg_175_reg__0_n_94,mul_ln10_reg_175_reg__0_n_95,mul_ln10_reg_175_reg__0_n_96,mul_ln10_reg_175_reg__0_n_97,mul_ln10_reg_175_reg__0_n_98,mul_ln10_reg_175_reg__0_n_99,mul_ln10_reg_175_reg__0_n_100,mul_ln10_reg_175_reg__0_n_101,mul_ln10_reg_175_reg__0_n_102,mul_ln10_reg_175_reg__0_n_103,mul_ln10_reg_175_reg__0_n_104,mul_ln10_reg_175_reg__0_n_105}),
        .PCOUT({mul_31ns_31ns_62_1_1_U13_n_17,mul_31ns_31ns_62_1_1_U13_n_18,mul_31ns_31ns_62_1_1_U13_n_19,mul_31ns_31ns_62_1_1_U13_n_20,mul_31ns_31ns_62_1_1_U13_n_21,mul_31ns_31ns_62_1_1_U13_n_22,mul_31ns_31ns_62_1_1_U13_n_23,mul_31ns_31ns_62_1_1_U13_n_24,mul_31ns_31ns_62_1_1_U13_n_25,mul_31ns_31ns_62_1_1_U13_n_26,mul_31ns_31ns_62_1_1_U13_n_27,mul_31ns_31ns_62_1_1_U13_n_28,mul_31ns_31ns_62_1_1_U13_n_29,mul_31ns_31ns_62_1_1_U13_n_30,mul_31ns_31ns_62_1_1_U13_n_31,mul_31ns_31ns_62_1_1_U13_n_32,mul_31ns_31ns_62_1_1_U13_n_33,mul_31ns_31ns_62_1_1_U13_n_34,mul_31ns_31ns_62_1_1_U13_n_35,mul_31ns_31ns_62_1_1_U13_n_36,mul_31ns_31ns_62_1_1_U13_n_37,mul_31ns_31ns_62_1_1_U13_n_38,mul_31ns_31ns_62_1_1_U13_n_39,mul_31ns_31ns_62_1_1_U13_n_40,mul_31ns_31ns_62_1_1_U13_n_41,mul_31ns_31ns_62_1_1_U13_n_42,mul_31ns_31ns_62_1_1_U13_n_43,mul_31ns_31ns_62_1_1_U13_n_44,mul_31ns_31ns_62_1_1_U13_n_45,mul_31ns_31ns_62_1_1_U13_n_46,mul_31ns_31ns_62_1_1_U13_n_47,mul_31ns_31ns_62_1_1_U13_n_48,mul_31ns_31ns_62_1_1_U13_n_49,mul_31ns_31ns_62_1_1_U13_n_50,mul_31ns_31ns_62_1_1_U13_n_51,mul_31ns_31ns_62_1_1_U13_n_52,mul_31ns_31ns_62_1_1_U13_n_53,mul_31ns_31ns_62_1_1_U13_n_54,mul_31ns_31ns_62_1_1_U13_n_55,mul_31ns_31ns_62_1_1_U13_n_56,mul_31ns_31ns_62_1_1_U13_n_57,mul_31ns_31ns_62_1_1_U13_n_58,mul_31ns_31ns_62_1_1_U13_n_59,mul_31ns_31ns_62_1_1_U13_n_60,mul_31ns_31ns_62_1_1_U13_n_61,mul_31ns_31ns_62_1_1_U13_n_62,mul_31ns_31ns_62_1_1_U13_n_63,mul_31ns_31ns_62_1_1_U13_n_64}),
        .Q(\mul_ln10_reg_175_reg[16]__0_n_0 ),
        .S(indvar_flatten_fu_82_reg),
        .\ap_CS_fsm_reg[0] (mul_ln10_reg_175_reg__1),
        .icmp_ln31_fu_155_p2_carry__1_i_3({grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74,grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75}),
        .\indvar_flatten_fu_82_reg[61] (mul_31ns_31ns_62_1_1_U13_n_204),
        .mul_ln10_fu_110_p0(mul_ln10_fu_110_p0),
        .mul_ln10_fu_110_p1(mul_ln10_fu_110_p1[16:0]),
        .tmp_product_carry__1_0({\mul_ln10_reg_175_reg_n_0_[16] ,\mul_ln10_reg_175_reg_n_0_[15] ,\mul_ln10_reg_175_reg_n_0_[14] ,\mul_ln10_reg_175_reg_n_0_[13] ,\mul_ln10_reg_175_reg_n_0_[12] ,\mul_ln10_reg_175_reg_n_0_[11] ,\mul_ln10_reg_175_reg_n_0_[10] ,\mul_ln10_reg_175_reg_n_0_[9] ,\mul_ln10_reg_175_reg_n_0_[8] ,\mul_ln10_reg_175_reg_n_0_[7] ,\mul_ln10_reg_175_reg_n_0_[6] ,\mul_ln10_reg_175_reg_n_0_[5] ,\mul_ln10_reg_175_reg_n_0_[4] ,\mul_ln10_reg_175_reg_n_0_[3] ,\mul_ln10_reg_175_reg_n_0_[2] ,\mul_ln10_reg_175_reg_n_0_[1] ,\mul_ln10_reg_175_reg_n_0_[0] }),
        .tmp_product_carry__3_0({mul_ln10_reg_175_reg_n_84,mul_ln10_reg_175_reg_n_85,mul_ln10_reg_175_reg_n_86,mul_ln10_reg_175_reg_n_87,mul_ln10_reg_175_reg_n_88,mul_ln10_reg_175_reg_n_89,mul_ln10_reg_175_reg_n_90,mul_ln10_reg_175_reg_n_91,mul_ln10_reg_175_reg_n_92,mul_ln10_reg_175_reg_n_93,mul_ln10_reg_175_reg_n_94,mul_ln10_reg_175_reg_n_95,mul_ln10_reg_175_reg_n_96,mul_ln10_reg_175_reg_n_97,mul_ln10_reg_175_reg_n_98,mul_ln10_reg_175_reg_n_99,mul_ln10_reg_175_reg_n_100,mul_ln10_reg_175_reg_n_101,mul_ln10_reg_175_reg_n_102,mul_ln10_reg_175_reg_n_103,mul_ln10_reg_175_reg_n_104,mul_ln10_reg_175_reg_n_105}));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln10_reg_175_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p0[30:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln10_reg_175_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p1[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln10_reg_175_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln10_reg_175_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln10_reg_175_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln10_reg_175_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln10_reg_175_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln10_reg_175_reg_n_58,mul_ln10_reg_175_reg_n_59,mul_ln10_reg_175_reg_n_60,mul_ln10_reg_175_reg_n_61,mul_ln10_reg_175_reg_n_62,mul_ln10_reg_175_reg_n_63,mul_ln10_reg_175_reg_n_64,mul_ln10_reg_175_reg_n_65,mul_ln10_reg_175_reg_n_66,mul_ln10_reg_175_reg_n_67,mul_ln10_reg_175_reg_n_68,mul_ln10_reg_175_reg_n_69,mul_ln10_reg_175_reg_n_70,mul_ln10_reg_175_reg_n_71,mul_ln10_reg_175_reg_n_72,mul_ln10_reg_175_reg_n_73,mul_ln10_reg_175_reg_n_74,mul_ln10_reg_175_reg_n_75,mul_ln10_reg_175_reg_n_76,mul_ln10_reg_175_reg_n_77,mul_ln10_reg_175_reg_n_78,mul_ln10_reg_175_reg_n_79,mul_ln10_reg_175_reg_n_80,mul_ln10_reg_175_reg_n_81,mul_ln10_reg_175_reg_n_82,mul_ln10_reg_175_reg_n_83,mul_ln10_reg_175_reg_n_84,mul_ln10_reg_175_reg_n_85,mul_ln10_reg_175_reg_n_86,mul_ln10_reg_175_reg_n_87,mul_ln10_reg_175_reg_n_88,mul_ln10_reg_175_reg_n_89,mul_ln10_reg_175_reg_n_90,mul_ln10_reg_175_reg_n_91,mul_ln10_reg_175_reg_n_92,mul_ln10_reg_175_reg_n_93,mul_ln10_reg_175_reg_n_94,mul_ln10_reg_175_reg_n_95,mul_ln10_reg_175_reg_n_96,mul_ln10_reg_175_reg_n_97,mul_ln10_reg_175_reg_n_98,mul_ln10_reg_175_reg_n_99,mul_ln10_reg_175_reg_n_100,mul_ln10_reg_175_reg_n_101,mul_ln10_reg_175_reg_n_102,mul_ln10_reg_175_reg_n_103,mul_ln10_reg_175_reg_n_104,mul_ln10_reg_175_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln10_reg_175_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln10_reg_175_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_31ns_31ns_62_1_1_U13_n_17,mul_31ns_31ns_62_1_1_U13_n_18,mul_31ns_31ns_62_1_1_U13_n_19,mul_31ns_31ns_62_1_1_U13_n_20,mul_31ns_31ns_62_1_1_U13_n_21,mul_31ns_31ns_62_1_1_U13_n_22,mul_31ns_31ns_62_1_1_U13_n_23,mul_31ns_31ns_62_1_1_U13_n_24,mul_31ns_31ns_62_1_1_U13_n_25,mul_31ns_31ns_62_1_1_U13_n_26,mul_31ns_31ns_62_1_1_U13_n_27,mul_31ns_31ns_62_1_1_U13_n_28,mul_31ns_31ns_62_1_1_U13_n_29,mul_31ns_31ns_62_1_1_U13_n_30,mul_31ns_31ns_62_1_1_U13_n_31,mul_31ns_31ns_62_1_1_U13_n_32,mul_31ns_31ns_62_1_1_U13_n_33,mul_31ns_31ns_62_1_1_U13_n_34,mul_31ns_31ns_62_1_1_U13_n_35,mul_31ns_31ns_62_1_1_U13_n_36,mul_31ns_31ns_62_1_1_U13_n_37,mul_31ns_31ns_62_1_1_U13_n_38,mul_31ns_31ns_62_1_1_U13_n_39,mul_31ns_31ns_62_1_1_U13_n_40,mul_31ns_31ns_62_1_1_U13_n_41,mul_31ns_31ns_62_1_1_U13_n_42,mul_31ns_31ns_62_1_1_U13_n_43,mul_31ns_31ns_62_1_1_U13_n_44,mul_31ns_31ns_62_1_1_U13_n_45,mul_31ns_31ns_62_1_1_U13_n_46,mul_31ns_31ns_62_1_1_U13_n_47,mul_31ns_31ns_62_1_1_U13_n_48,mul_31ns_31ns_62_1_1_U13_n_49,mul_31ns_31ns_62_1_1_U13_n_50,mul_31ns_31ns_62_1_1_U13_n_51,mul_31ns_31ns_62_1_1_U13_n_52,mul_31ns_31ns_62_1_1_U13_n_53,mul_31ns_31ns_62_1_1_U13_n_54,mul_31ns_31ns_62_1_1_U13_n_55,mul_31ns_31ns_62_1_1_U13_n_56,mul_31ns_31ns_62_1_1_U13_n_57,mul_31ns_31ns_62_1_1_U13_n_58,mul_31ns_31ns_62_1_1_U13_n_59,mul_31ns_31ns_62_1_1_U13_n_60,mul_31ns_31ns_62_1_1_U13_n_61,mul_31ns_31ns_62_1_1_U13_n_62,mul_31ns_31ns_62_1_1_U13_n_63,mul_31ns_31ns_62_1_1_U13_n_64}),
        .PCOUT(NLW_mul_ln10_reg_175_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln10_reg_175_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln10_reg_175_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln10_reg_175_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_16),
        .Q(\mul_ln10_reg_175_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_111),
        .Q(\mul_ln10_reg_175_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_6),
        .Q(\mul_ln10_reg_175_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[10]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_101),
        .Q(\mul_ln10_reg_175_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_5),
        .Q(\mul_ln10_reg_175_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[11]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_100),
        .Q(\mul_ln10_reg_175_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_4),
        .Q(\mul_ln10_reg_175_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[12]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_99),
        .Q(\mul_ln10_reg_175_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_3),
        .Q(\mul_ln10_reg_175_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[13]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_98),
        .Q(\mul_ln10_reg_175_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_2),
        .Q(\mul_ln10_reg_175_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[14]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_97),
        .Q(\mul_ln10_reg_175_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_1),
        .Q(\mul_ln10_reg_175_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[15]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_96),
        .Q(\mul_ln10_reg_175_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_0),
        .Q(\mul_ln10_reg_175_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[16]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_95),
        .Q(\mul_ln10_reg_175_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_15),
        .Q(\mul_ln10_reg_175_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_110),
        .Q(\mul_ln10_reg_175_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_14),
        .Q(\mul_ln10_reg_175_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_109),
        .Q(\mul_ln10_reg_175_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_13),
        .Q(\mul_ln10_reg_175_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_108),
        .Q(\mul_ln10_reg_175_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_12),
        .Q(\mul_ln10_reg_175_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_107),
        .Q(\mul_ln10_reg_175_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_11),
        .Q(\mul_ln10_reg_175_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_106),
        .Q(\mul_ln10_reg_175_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_10),
        .Q(\mul_ln10_reg_175_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_105),
        .Q(\mul_ln10_reg_175_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_9),
        .Q(\mul_ln10_reg_175_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_104),
        .Q(\mul_ln10_reg_175_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_8),
        .Q(\mul_ln10_reg_175_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[8]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_103),
        .Q(\mul_ln10_reg_175_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_7),
        .Q(\mul_ln10_reg_175_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \mul_ln10_reg_175_reg[9]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(mul_31ns_31ns_62_1_1_U13_n_102),
        .Q(\mul_ln10_reg_175_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln10_reg_175_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mul_31ns_31ns_62_1_1_U13_n_65,mul_31ns_31ns_62_1_1_U13_n_66,mul_31ns_31ns_62_1_1_U13_n_67,mul_31ns_31ns_62_1_1_U13_n_68,mul_31ns_31ns_62_1_1_U13_n_69,mul_31ns_31ns_62_1_1_U13_n_70,mul_31ns_31ns_62_1_1_U13_n_71,mul_31ns_31ns_62_1_1_U13_n_72,mul_31ns_31ns_62_1_1_U13_n_73,mul_31ns_31ns_62_1_1_U13_n_74,mul_31ns_31ns_62_1_1_U13_n_75,mul_31ns_31ns_62_1_1_U13_n_76,mul_31ns_31ns_62_1_1_U13_n_77,mul_31ns_31ns_62_1_1_U13_n_78,mul_31ns_31ns_62_1_1_U13_n_79,mul_31ns_31ns_62_1_1_U13_n_80,mul_31ns_31ns_62_1_1_U13_n_81,mul_31ns_31ns_62_1_1_U13_n_82,mul_31ns_31ns_62_1_1_U13_n_83,mul_31ns_31ns_62_1_1_U13_n_84,mul_31ns_31ns_62_1_1_U13_n_85,mul_31ns_31ns_62_1_1_U13_n_86,mul_31ns_31ns_62_1_1_U13_n_87,mul_31ns_31ns_62_1_1_U13_n_88,mul_31ns_31ns_62_1_1_U13_n_89,mul_31ns_31ns_62_1_1_U13_n_90,mul_31ns_31ns_62_1_1_U13_n_91,mul_31ns_31ns_62_1_1_U13_n_92,mul_31ns_31ns_62_1_1_U13_n_93,mul_31ns_31ns_62_1_1_U13_n_94}),
        .ACOUT(NLW_mul_ln10_reg_175_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p1[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln10_reg_175_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln10_reg_175_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln10_reg_175_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln10_reg_175_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln10_reg_175_reg__0_OVERFLOW_UNCONNECTED),
        .P({mul_ln10_reg_175_reg__0_n_58,mul_ln10_reg_175_reg__0_n_59,mul_ln10_reg_175_reg__0_n_60,mul_ln10_reg_175_reg__0_n_61,mul_ln10_reg_175_reg__0_n_62,mul_ln10_reg_175_reg__0_n_63,mul_ln10_reg_175_reg__0_n_64,mul_ln10_reg_175_reg__0_n_65,mul_ln10_reg_175_reg__0_n_66,mul_ln10_reg_175_reg__0_n_67,mul_ln10_reg_175_reg__0_n_68,mul_ln10_reg_175_reg__0_n_69,mul_ln10_reg_175_reg__0_n_70,mul_ln10_reg_175_reg__0_n_71,mul_ln10_reg_175_reg__0_n_72,mul_ln10_reg_175_reg__0_n_73,mul_ln10_reg_175_reg__0_n_74,mul_ln10_reg_175_reg__0_n_75,mul_ln10_reg_175_reg__0_n_76,mul_ln10_reg_175_reg__0_n_77,mul_ln10_reg_175_reg__0_n_78,mul_ln10_reg_175_reg__0_n_79,mul_ln10_reg_175_reg__0_n_80,mul_ln10_reg_175_reg__0_n_81,mul_ln10_reg_175_reg__0_n_82,mul_ln10_reg_175_reg__0_n_83,mul_ln10_reg_175_reg__0_n_84,mul_ln10_reg_175_reg__0_n_85,mul_ln10_reg_175_reg__0_n_86,mul_ln10_reg_175_reg__0_n_87,mul_ln10_reg_175_reg__0_n_88,mul_ln10_reg_175_reg__0_n_89,mul_ln10_reg_175_reg__0_n_90,mul_ln10_reg_175_reg__0_n_91,mul_ln10_reg_175_reg__0_n_92,mul_ln10_reg_175_reg__0_n_93,mul_ln10_reg_175_reg__0_n_94,mul_ln10_reg_175_reg__0_n_95,mul_ln10_reg_175_reg__0_n_96,mul_ln10_reg_175_reg__0_n_97,mul_ln10_reg_175_reg__0_n_98,mul_ln10_reg_175_reg__0_n_99,mul_ln10_reg_175_reg__0_n_100,mul_ln10_reg_175_reg__0_n_101,mul_ln10_reg_175_reg__0_n_102,mul_ln10_reg_175_reg__0_n_103,mul_ln10_reg_175_reg__0_n_104,mul_ln10_reg_175_reg__0_n_105}),
        .PATTERNBDETECT(NLW_mul_ln10_reg_175_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln10_reg_175_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_31ns_31ns_62_1_1_U13_n_112,mul_31ns_31ns_62_1_1_U13_n_113,mul_31ns_31ns_62_1_1_U13_n_114,mul_31ns_31ns_62_1_1_U13_n_115,mul_31ns_31ns_62_1_1_U13_n_116,mul_31ns_31ns_62_1_1_U13_n_117,mul_31ns_31ns_62_1_1_U13_n_118,mul_31ns_31ns_62_1_1_U13_n_119,mul_31ns_31ns_62_1_1_U13_n_120,mul_31ns_31ns_62_1_1_U13_n_121,mul_31ns_31ns_62_1_1_U13_n_122,mul_31ns_31ns_62_1_1_U13_n_123,mul_31ns_31ns_62_1_1_U13_n_124,mul_31ns_31ns_62_1_1_U13_n_125,mul_31ns_31ns_62_1_1_U13_n_126,mul_31ns_31ns_62_1_1_U13_n_127,mul_31ns_31ns_62_1_1_U13_n_128,mul_31ns_31ns_62_1_1_U13_n_129,mul_31ns_31ns_62_1_1_U13_n_130,mul_31ns_31ns_62_1_1_U13_n_131,mul_31ns_31ns_62_1_1_U13_n_132,mul_31ns_31ns_62_1_1_U13_n_133,mul_31ns_31ns_62_1_1_U13_n_134,mul_31ns_31ns_62_1_1_U13_n_135,mul_31ns_31ns_62_1_1_U13_n_136,mul_31ns_31ns_62_1_1_U13_n_137,mul_31ns_31ns_62_1_1_U13_n_138,mul_31ns_31ns_62_1_1_U13_n_139,mul_31ns_31ns_62_1_1_U13_n_140,mul_31ns_31ns_62_1_1_U13_n_141,mul_31ns_31ns_62_1_1_U13_n_142,mul_31ns_31ns_62_1_1_U13_n_143,mul_31ns_31ns_62_1_1_U13_n_144,mul_31ns_31ns_62_1_1_U13_n_145,mul_31ns_31ns_62_1_1_U13_n_146,mul_31ns_31ns_62_1_1_U13_n_147,mul_31ns_31ns_62_1_1_U13_n_148,mul_31ns_31ns_62_1_1_U13_n_149,mul_31ns_31ns_62_1_1_U13_n_150,mul_31ns_31ns_62_1_1_U13_n_151,mul_31ns_31ns_62_1_1_U13_n_152,mul_31ns_31ns_62_1_1_U13_n_153,mul_31ns_31ns_62_1_1_U13_n_154,mul_31ns_31ns_62_1_1_U13_n_155,mul_31ns_31ns_62_1_1_U13_n_156,mul_31ns_31ns_62_1_1_U13_n_157,mul_31ns_31ns_62_1_1_U13_n_158,mul_31ns_31ns_62_1_1_U13_n_159}),
        .PCOUT(NLW_mul_ln10_reg_175_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln10_reg_175_reg__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln10_reg_175_reg__0_XOROUT_UNCONNECTED[7:0]));
  design_1_brenner_accel_0_0_brenner_accel_regslice_both regslice_both_s_axis_video_V_data_V_U
       (.D(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66),
        .DSP_A_B_DATA_INST(empty_fu_78),
        .Q({state,s_axis_video_TVALID_int_regslice}),
        .SR(ap_rst_n_inv),
        .ack_in_t_reg_0(s_axis_video_TREADY),
        .ack_in_t_reg_1(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67),
        .ap_clk(ap_clk),
        .\data_p1_reg[0]_0 ({A,regslice_both_s_axis_video_V_data_V_U_n_4}),
        .\data_p1_reg[7]_0 (data_p1),
        .s_axis_video_TDATA(s_axis_video_TDATA),
        .s_axis_video_TVALID(s_axis_video_TVALID));
  FDRE \width_read_reg_164_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_39),
        .Q(width_read_reg_164[0]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_29),
        .Q(width_read_reg_164[10]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_28),
        .Q(width_read_reg_164[11]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_27),
        .Q(width_read_reg_164[12]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_26),
        .Q(width_read_reg_164[13]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_25),
        .Q(width_read_reg_164[14]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_24),
        .Q(width_read_reg_164[15]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_23),
        .Q(width_read_reg_164[16]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_22),
        .Q(width_read_reg_164[17]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_21),
        .Q(width_read_reg_164[18]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_20),
        .Q(width_read_reg_164[19]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_38),
        .Q(width_read_reg_164[1]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_19),
        .Q(width_read_reg_164[20]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_18),
        .Q(width_read_reg_164[21]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_17),
        .Q(width_read_reg_164[22]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_16),
        .Q(width_read_reg_164[23]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_15),
        .Q(width_read_reg_164[24]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_14),
        .Q(width_read_reg_164[25]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_13),
        .Q(width_read_reg_164[26]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_12),
        .Q(width_read_reg_164[27]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_11),
        .Q(width_read_reg_164[28]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_10),
        .Q(width_read_reg_164[29]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_37),
        .Q(width_read_reg_164[2]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_9),
        .Q(width_read_reg_164[30]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_8),
        .Q(width_read_reg_164[31]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_36),
        .Q(width_read_reg_164[3]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_35),
        .Q(width_read_reg_164[4]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_34),
        .Q(width_read_reg_164[5]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_33),
        .Q(width_read_reg_164[6]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_32),
        .Q(width_read_reg_164[7]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_31),
        .Q(width_read_reg_164[8]),
        .R(1'b0));
  FDRE \width_read_reg_164_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(ctrl_s_axi_U_n_30),
        .Q(width_read_reg_164[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "brenner_accel_brenner_accel_Pipeline_row_loop_col_loop" *) 
module design_1_brenner_accel_0_0_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop
   (S,
    \sum_diff_sq_fu_70_reg[63]_0 ,
    D,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    \ap_CS_fsm_reg[0] ,
    \empty_fu_78_reg[2]_0 ,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_clk,
    DSP_ALU_INST,
    \icmp_ln31_reg_337_reg[0]_0 ,
    SR,
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
    ap_rst_n,
    Q,
    \ap_CS_fsm_reg[3] ,
    s_axis_video_TVALID,
    icmp_ln31_fu_155_p2_carry_0,
    mul_ln10_reg_175_reg__1,
    P,
    tmp_product_carry__4,
    \empty_15_fu_86_reg[7]_0 ,
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg,
    icmp_ln32_fu_167_p2_carry__0_0);
  output [1:0]S;
  output [63:0]\sum_diff_sq_fu_70_reg[63]_0 ;
  output [0:0]D;
  output \ap_CS_fsm_reg[2] ;
  output [1:0]\ap_CS_fsm_reg[2]_0 ;
  output [5:0]\ap_CS_fsm_reg[0] ;
  output [2:0]\empty_fu_78_reg[2]_0 ;
  output ap_enable_reg_pp0_iter1_reg_0;
  input ap_clk;
  input [1:0]DSP_ALU_INST;
  input [0:0]\icmp_ln31_reg_337_reg[0]_0 ;
  input [0:0]SR;
  input grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg;
  input ap_rst_n;
  input [1:0]Q;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input s_axis_video_TVALID;
  input [15:0]icmp_ln31_fu_155_p2_carry_0;
  input [43:0]mul_ln10_reg_175_reg__1;
  input [5:0]P;
  input [5:0]tmp_product_carry__4;
  input [7:0]\empty_15_fu_86_reg[7]_0 ;
  input [0:0]grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg;
  input [31:0]icmp_ln32_fu_167_p2_carry__0_0;

  wire [0:0]D;
  wire [1:0]DSP_ALU_INST;
  wire [5:0]P;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire [5:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[2]_0 ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0;
  wire ap_rst_n;
  wire [7:0]empty_15_fu_86;
  wire \empty_15_fu_86[7]_i_1_n_0 ;
  wire [7:0]\empty_15_fu_86_reg[7]_0 ;
  wire [7:3]empty_fu_78;
  wire [2:0]\empty_fu_78_reg[2]_0 ;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg;
  wire [0:0]grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg;
  wire icmp_ln31_fu_155_p2;
  wire [15:0]icmp_ln31_fu_155_p2_carry_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_1_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_2_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_3_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_4_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_5_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_6_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_7_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_i_8_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_n_0;
  wire icmp_ln31_fu_155_p2_carry__0_n_1;
  wire icmp_ln31_fu_155_p2_carry__0_n_2;
  wire icmp_ln31_fu_155_p2_carry__0_n_3;
  wire icmp_ln31_fu_155_p2_carry__0_n_4;
  wire icmp_ln31_fu_155_p2_carry__0_n_5;
  wire icmp_ln31_fu_155_p2_carry__0_n_6;
  wire icmp_ln31_fu_155_p2_carry__0_n_7;
  wire icmp_ln31_fu_155_p2_carry__1_i_2_n_0;
  wire icmp_ln31_fu_155_p2_carry__1_i_3_n_0;
  wire icmp_ln31_fu_155_p2_carry__1_i_4_n_0;
  wire icmp_ln31_fu_155_p2_carry__1_i_5_n_0;
  wire icmp_ln31_fu_155_p2_carry__1_n_4;
  wire icmp_ln31_fu_155_p2_carry__1_n_5;
  wire icmp_ln31_fu_155_p2_carry__1_n_6;
  wire icmp_ln31_fu_155_p2_carry__1_n_7;
  wire icmp_ln31_fu_155_p2_carry_i_1_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_2_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_3_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_4_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_5_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_6_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_7_n_0;
  wire icmp_ln31_fu_155_p2_carry_i_8_n_0;
  wire icmp_ln31_fu_155_p2_carry_n_0;
  wire icmp_ln31_fu_155_p2_carry_n_1;
  wire icmp_ln31_fu_155_p2_carry_n_2;
  wire icmp_ln31_fu_155_p2_carry_n_3;
  wire icmp_ln31_fu_155_p2_carry_n_4;
  wire icmp_ln31_fu_155_p2_carry_n_5;
  wire icmp_ln31_fu_155_p2_carry_n_6;
  wire icmp_ln31_fu_155_p2_carry_n_7;
  wire [0:0]\icmp_ln31_reg_337_reg[0]_0 ;
  wire \icmp_ln31_reg_337_reg_n_0_[0] ;
  wire [31:0]icmp_ln32_fu_167_p2_carry__0_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_10_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_11_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_12_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_13_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_14_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_15_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_16_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_1_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_2_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_3_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_4_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_5_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_6_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_7_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_8_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_i_9_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_n_0;
  wire icmp_ln32_fu_167_p2_carry__0_n_1;
  wire icmp_ln32_fu_167_p2_carry__0_n_2;
  wire icmp_ln32_fu_167_p2_carry__0_n_3;
  wire icmp_ln32_fu_167_p2_carry__0_n_4;
  wire icmp_ln32_fu_167_p2_carry__0_n_5;
  wire icmp_ln32_fu_167_p2_carry__0_n_6;
  wire icmp_ln32_fu_167_p2_carry__0_n_7;
  wire icmp_ln32_fu_167_p2_carry_i_10_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_11_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_12_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_13_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_14_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_15_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_16_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_1_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_2_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_3_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_4_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_5_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_6_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_7_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_8_n_0;
  wire icmp_ln32_fu_167_p2_carry_i_9_n_0;
  wire icmp_ln32_fu_167_p2_carry_n_0;
  wire icmp_ln32_fu_167_p2_carry_n_1;
  wire icmp_ln32_fu_167_p2_carry_n_2;
  wire icmp_ln32_fu_167_p2_carry_n_3;
  wire icmp_ln32_fu_167_p2_carry_n_4;
  wire icmp_ln32_fu_167_p2_carry_n_5;
  wire icmp_ln32_fu_167_p2_carry_n_6;
  wire icmp_ln32_fu_167_p2_carry_n_7;
  wire icmp_ln44_fu_196_p2;
  wire icmp_ln44_reg_341;
  wire \icmp_ln44_reg_341[0]_i_2_n_0 ;
  wire \icmp_ln44_reg_341[0]_i_3_n_0 ;
  wire \icmp_ln44_reg_341[0]_i_4_n_0 ;
  wire \icmp_ln44_reg_341[0]_i_5_n_0 ;
  wire \icmp_ln44_reg_341[0]_i_6_n_0 ;
  wire \icmp_ln44_reg_341[0]_i_7_n_0 ;
  wire indvar_flatten_fu_82;
  wire \indvar_flatten_fu_82[0]_i_2_n_0 ;
  wire [59:0]indvar_flatten_fu_82_reg;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[0]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[16]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[24]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[32]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[40]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[48]_i_1_n_9 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[56]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_0 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_1 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_10 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_11 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_12 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_13 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_14 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_15 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_2 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_3 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_4 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_5 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_6 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_7 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_8 ;
  wire \indvar_flatten_fu_82_reg[8]_i_1_n_9 ;
  wire mul_9s_9s_18_1_1_U1_n_0;
  wire mul_9s_9s_18_1_1_U1_n_1;
  wire mul_9s_9s_18_1_1_U1_n_10;
  wire mul_9s_9s_18_1_1_U1_n_11;
  wire mul_9s_9s_18_1_1_U1_n_12;
  wire mul_9s_9s_18_1_1_U1_n_13;
  wire mul_9s_9s_18_1_1_U1_n_14;
  wire mul_9s_9s_18_1_1_U1_n_15;
  wire mul_9s_9s_18_1_1_U1_n_16;
  wire mul_9s_9s_18_1_1_U1_n_17;
  wire mul_9s_9s_18_1_1_U1_n_18;
  wire mul_9s_9s_18_1_1_U1_n_19;
  wire mul_9s_9s_18_1_1_U1_n_2;
  wire mul_9s_9s_18_1_1_U1_n_20;
  wire mul_9s_9s_18_1_1_U1_n_21;
  wire mul_9s_9s_18_1_1_U1_n_22;
  wire mul_9s_9s_18_1_1_U1_n_23;
  wire mul_9s_9s_18_1_1_U1_n_24;
  wire mul_9s_9s_18_1_1_U1_n_25;
  wire mul_9s_9s_18_1_1_U1_n_26;
  wire mul_9s_9s_18_1_1_U1_n_27;
  wire mul_9s_9s_18_1_1_U1_n_28;
  wire mul_9s_9s_18_1_1_U1_n_29;
  wire mul_9s_9s_18_1_1_U1_n_3;
  wire mul_9s_9s_18_1_1_U1_n_30;
  wire mul_9s_9s_18_1_1_U1_n_31;
  wire mul_9s_9s_18_1_1_U1_n_32;
  wire mul_9s_9s_18_1_1_U1_n_33;
  wire mul_9s_9s_18_1_1_U1_n_34;
  wire mul_9s_9s_18_1_1_U1_n_35;
  wire mul_9s_9s_18_1_1_U1_n_36;
  wire mul_9s_9s_18_1_1_U1_n_37;
  wire mul_9s_9s_18_1_1_U1_n_38;
  wire mul_9s_9s_18_1_1_U1_n_39;
  wire mul_9s_9s_18_1_1_U1_n_4;
  wire mul_9s_9s_18_1_1_U1_n_40;
  wire mul_9s_9s_18_1_1_U1_n_41;
  wire mul_9s_9s_18_1_1_U1_n_42;
  wire mul_9s_9s_18_1_1_U1_n_43;
  wire mul_9s_9s_18_1_1_U1_n_44;
  wire mul_9s_9s_18_1_1_U1_n_45;
  wire mul_9s_9s_18_1_1_U1_n_46;
  wire mul_9s_9s_18_1_1_U1_n_47;
  wire mul_9s_9s_18_1_1_U1_n_48;
  wire mul_9s_9s_18_1_1_U1_n_49;
  wire mul_9s_9s_18_1_1_U1_n_5;
  wire mul_9s_9s_18_1_1_U1_n_50;
  wire mul_9s_9s_18_1_1_U1_n_51;
  wire mul_9s_9s_18_1_1_U1_n_52;
  wire mul_9s_9s_18_1_1_U1_n_53;
  wire mul_9s_9s_18_1_1_U1_n_54;
  wire mul_9s_9s_18_1_1_U1_n_55;
  wire mul_9s_9s_18_1_1_U1_n_56;
  wire mul_9s_9s_18_1_1_U1_n_57;
  wire mul_9s_9s_18_1_1_U1_n_58;
  wire mul_9s_9s_18_1_1_U1_n_59;
  wire mul_9s_9s_18_1_1_U1_n_6;
  wire mul_9s_9s_18_1_1_U1_n_60;
  wire mul_9s_9s_18_1_1_U1_n_61;
  wire mul_9s_9s_18_1_1_U1_n_62;
  wire mul_9s_9s_18_1_1_U1_n_63;
  wire mul_9s_9s_18_1_1_U1_n_7;
  wire mul_9s_9s_18_1_1_U1_n_8;
  wire mul_9s_9s_18_1_1_U1_n_9;
  wire [43:0]mul_ln10_reg_175_reg__1;
  wire [30:0]p_0_in;
  wire s_axis_video_TREADY2;
  wire s_axis_video_TVALID;
  wire [29:0]select_ln25_fu_178_p3;
  wire sum_diff_sq_fu_70;
  wire [63:0]\sum_diff_sq_fu_70_reg[63]_0 ;
  wire [5:0]tmp_product_carry__4;
  wire [30:0]x_1_fu_202_p2;
  wire x_1_fu_202_p2_carry__0_i_2_n_0;
  wire x_1_fu_202_p2_carry__0_i_7_n_0;
  wire x_1_fu_202_p2_carry__0_n_0;
  wire x_1_fu_202_p2_carry__0_n_1;
  wire x_1_fu_202_p2_carry__0_n_2;
  wire x_1_fu_202_p2_carry__0_n_3;
  wire x_1_fu_202_p2_carry__0_n_4;
  wire x_1_fu_202_p2_carry__0_n_5;
  wire x_1_fu_202_p2_carry__0_n_6;
  wire x_1_fu_202_p2_carry__0_n_7;
  wire x_1_fu_202_p2_carry__1_i_5_n_0;
  wire x_1_fu_202_p2_carry__1_n_0;
  wire x_1_fu_202_p2_carry__1_n_1;
  wire x_1_fu_202_p2_carry__1_n_2;
  wire x_1_fu_202_p2_carry__1_n_3;
  wire x_1_fu_202_p2_carry__1_n_4;
  wire x_1_fu_202_p2_carry__1_n_5;
  wire x_1_fu_202_p2_carry__1_n_6;
  wire x_1_fu_202_p2_carry__1_n_7;
  wire x_1_fu_202_p2_carry__2_i_1_n_0;
  wire x_1_fu_202_p2_carry__2_i_6_n_0;
  wire x_1_fu_202_p2_carry__2_n_3;
  wire x_1_fu_202_p2_carry__2_n_4;
  wire x_1_fu_202_p2_carry__2_n_5;
  wire x_1_fu_202_p2_carry__2_n_6;
  wire x_1_fu_202_p2_carry__2_n_7;
  wire x_1_fu_202_p2_carry_i_5_n_0;
  wire x_1_fu_202_p2_carry_n_0;
  wire x_1_fu_202_p2_carry_n_1;
  wire x_1_fu_202_p2_carry_n_2;
  wire x_1_fu_202_p2_carry_n_3;
  wire x_1_fu_202_p2_carry_n_4;
  wire x_1_fu_202_p2_carry_n_5;
  wire x_1_fu_202_p2_carry_n_6;
  wire x_1_fu_202_p2_carry_n_7;
  wire [7:0]NLW_icmp_ln31_fu_155_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln31_fu_155_p2_carry__0_O_UNCONNECTED;
  wire [7:5]NLW_icmp_ln31_fu_155_p2_carry__1_CO_UNCONNECTED;
  wire [7:0]NLW_icmp_ln31_fu_155_p2_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln32_fu_167_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln32_fu_167_p2_carry__0_O_UNCONNECTED;
  wire [7:5]\NLW_indvar_flatten_fu_82_reg[56]_i_1_CO_UNCONNECTED ;
  wire [7:6]\NLW_indvar_flatten_fu_82_reg[56]_i_1_O_UNCONNECTED ;
  wire [7:5]NLW_x_1_fu_202_p2_carry__2_CO_UNCONNECTED;
  wire [7:6]NLW_x_1_fu_202_p2_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    ack_in_t_i_3
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(Q[0]),
        .I2(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter2),
        .O(\ap_CS_fsm_reg[2] ));
  LUT5 #(
    .INIT(32'h4FC00000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(icmp_ln31_fu_155_p2),
        .I1(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .I2(s_axis_video_TREADY2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCCACC00000A00)) 
    ap_loop_exit_ready_pp0_iter2_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(icmp_ln31_fu_155_p2),
        .I2(Q[0]),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0));
  FDRE ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter2_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \empty_15_fu_86[7]_i_1 
       (.I0(Q[0]),
        .I1(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .O(\empty_15_fu_86[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[0] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [0]),
        .Q(empty_15_fu_86[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[1] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [1]),
        .Q(empty_15_fu_86[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[2] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [2]),
        .Q(empty_15_fu_86[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[3] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [3]),
        .Q(empty_15_fu_86[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[4] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [4]),
        .Q(empty_15_fu_86[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[5] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [5]),
        .Q(empty_15_fu_86[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[6] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [6]),
        .Q(empty_15_fu_86[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_15_fu_86_reg[7] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(\empty_15_fu_86_reg[7]_0 [7]),
        .Q(empty_15_fu_86[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[0] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[0]),
        .Q(\empty_fu_78_reg[2]_0 [0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[1] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[1]),
        .Q(\empty_fu_78_reg[2]_0 [1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[2] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[2]),
        .Q(\empty_fu_78_reg[2]_0 [2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[3] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[3]),
        .Q(empty_fu_78[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[4] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[4]),
        .Q(empty_fu_78[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[5] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[5]),
        .Q(empty_fu_78[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[6] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[6]),
        .Q(empty_fu_78[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \empty_fu_78_reg[7] 
       (.C(ap_clk),
        .CE(\empty_15_fu_86[7]_i_1_n_0 ),
        .D(empty_15_fu_86[7]),
        .Q(empty_fu_78[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  design_1_brenner_accel_0_0_brenner_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.Q(Q[0]),
        .SR(SR),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2]_0 ),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_rst_n(ap_rst_n),
        .grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .s_axis_video_TREADY2(s_axis_video_TREADY2));
  LUT5 #(
    .INIT(32'hFF7FFF00)) 
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(s_axis_video_TREADY2),
        .I2(icmp_ln31_fu_155_p2),
        .I3(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg),
        .I4(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  CARRY8 icmp_ln31_fu_155_p2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({icmp_ln31_fu_155_p2_carry_n_0,icmp_ln31_fu_155_p2_carry_n_1,icmp_ln31_fu_155_p2_carry_n_2,icmp_ln31_fu_155_p2_carry_n_3,icmp_ln31_fu_155_p2_carry_n_4,icmp_ln31_fu_155_p2_carry_n_5,icmp_ln31_fu_155_p2_carry_n_6,icmp_ln31_fu_155_p2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln31_fu_155_p2_carry_O_UNCONNECTED[7:0]),
        .S({icmp_ln31_fu_155_p2_carry_i_1_n_0,icmp_ln31_fu_155_p2_carry_i_2_n_0,icmp_ln31_fu_155_p2_carry_i_3_n_0,icmp_ln31_fu_155_p2_carry_i_4_n_0,icmp_ln31_fu_155_p2_carry_i_5_n_0,icmp_ln31_fu_155_p2_carry_i_6_n_0,icmp_ln31_fu_155_p2_carry_i_7_n_0,icmp_ln31_fu_155_p2_carry_i_8_n_0}));
  CARRY8 icmp_ln31_fu_155_p2_carry__0
       (.CI(icmp_ln31_fu_155_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({icmp_ln31_fu_155_p2_carry__0_n_0,icmp_ln31_fu_155_p2_carry__0_n_1,icmp_ln31_fu_155_p2_carry__0_n_2,icmp_ln31_fu_155_p2_carry__0_n_3,icmp_ln31_fu_155_p2_carry__0_n_4,icmp_ln31_fu_155_p2_carry__0_n_5,icmp_ln31_fu_155_p2_carry__0_n_6,icmp_ln31_fu_155_p2_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln31_fu_155_p2_carry__0_O_UNCONNECTED[7:0]),
        .S({icmp_ln31_fu_155_p2_carry__0_i_1_n_0,icmp_ln31_fu_155_p2_carry__0_i_2_n_0,icmp_ln31_fu_155_p2_carry__0_i_3_n_0,icmp_ln31_fu_155_p2_carry__0_i_4_n_0,icmp_ln31_fu_155_p2_carry__0_i_5_n_0,icmp_ln31_fu_155_p2_carry__0_i_6_n_0,icmp_ln31_fu_155_p2_carry__0_i_7_n_0,icmp_ln31_fu_155_p2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_1
       (.I0(indvar_flatten_fu_82_reg[45]),
        .I1(mul_ln10_reg_175_reg__1[29]),
        .I2(indvar_flatten_fu_82_reg[46]),
        .I3(mul_ln10_reg_175_reg__1[30]),
        .I4(mul_ln10_reg_175_reg__1[31]),
        .I5(indvar_flatten_fu_82_reg[47]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_2
       (.I0(indvar_flatten_fu_82_reg[42]),
        .I1(mul_ln10_reg_175_reg__1[26]),
        .I2(indvar_flatten_fu_82_reg[43]),
        .I3(mul_ln10_reg_175_reg__1[27]),
        .I4(mul_ln10_reg_175_reg__1[28]),
        .I5(indvar_flatten_fu_82_reg[44]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_3
       (.I0(indvar_flatten_fu_82_reg[39]),
        .I1(mul_ln10_reg_175_reg__1[23]),
        .I2(indvar_flatten_fu_82_reg[40]),
        .I3(mul_ln10_reg_175_reg__1[24]),
        .I4(mul_ln10_reg_175_reg__1[25]),
        .I5(indvar_flatten_fu_82_reg[41]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_4
       (.I0(indvar_flatten_fu_82_reg[38]),
        .I1(mul_ln10_reg_175_reg__1[22]),
        .I2(indvar_flatten_fu_82_reg[36]),
        .I3(mul_ln10_reg_175_reg__1[20]),
        .I4(mul_ln10_reg_175_reg__1[21]),
        .I5(indvar_flatten_fu_82_reg[37]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_5
       (.I0(indvar_flatten_fu_82_reg[35]),
        .I1(mul_ln10_reg_175_reg__1[19]),
        .I2(indvar_flatten_fu_82_reg[33]),
        .I3(mul_ln10_reg_175_reg__1[17]),
        .I4(mul_ln10_reg_175_reg__1[18]),
        .I5(indvar_flatten_fu_82_reg[34]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_6
       (.I0(indvar_flatten_fu_82_reg[30]),
        .I1(mul_ln10_reg_175_reg__1[14]),
        .I2(indvar_flatten_fu_82_reg[31]),
        .I3(mul_ln10_reg_175_reg__1[15]),
        .I4(mul_ln10_reg_175_reg__1[16]),
        .I5(indvar_flatten_fu_82_reg[32]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_7
       (.I0(indvar_flatten_fu_82_reg[28]),
        .I1(mul_ln10_reg_175_reg__1[12]),
        .I2(indvar_flatten_fu_82_reg[27]),
        .I3(mul_ln10_reg_175_reg__1[11]),
        .I4(mul_ln10_reg_175_reg__1[13]),
        .I5(indvar_flatten_fu_82_reg[29]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__0_i_8
       (.I0(indvar_flatten_fu_82_reg[24]),
        .I1(mul_ln10_reg_175_reg__1[8]),
        .I2(indvar_flatten_fu_82_reg[25]),
        .I3(mul_ln10_reg_175_reg__1[9]),
        .I4(mul_ln10_reg_175_reg__1[10]),
        .I5(indvar_flatten_fu_82_reg[26]),
        .O(icmp_ln31_fu_155_p2_carry__0_i_8_n_0));
  CARRY8 icmp_ln31_fu_155_p2_carry__1
       (.CI(icmp_ln31_fu_155_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_icmp_ln31_fu_155_p2_carry__1_CO_UNCONNECTED[7:5],icmp_ln31_fu_155_p2,icmp_ln31_fu_155_p2_carry__1_n_4,icmp_ln31_fu_155_p2_carry__1_n_5,icmp_ln31_fu_155_p2_carry__1_n_6,icmp_ln31_fu_155_p2_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_icmp_ln31_fu_155_p2_carry__1_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,\icmp_ln31_reg_337_reg[0]_0 ,icmp_ln31_fu_155_p2_carry__1_i_2_n_0,icmp_ln31_fu_155_p2_carry__1_i_3_n_0,icmp_ln31_fu_155_p2_carry__1_i_4_n_0,icmp_ln31_fu_155_p2_carry__1_i_5_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__1_i_2
       (.I0(indvar_flatten_fu_82_reg[57]),
        .I1(mul_ln10_reg_175_reg__1[41]),
        .I2(indvar_flatten_fu_82_reg[58]),
        .I3(mul_ln10_reg_175_reg__1[42]),
        .I4(mul_ln10_reg_175_reg__1[43]),
        .I5(indvar_flatten_fu_82_reg[59]),
        .O(icmp_ln31_fu_155_p2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__1_i_3
       (.I0(indvar_flatten_fu_82_reg[54]),
        .I1(mul_ln10_reg_175_reg__1[38]),
        .I2(indvar_flatten_fu_82_reg[55]),
        .I3(mul_ln10_reg_175_reg__1[39]),
        .I4(mul_ln10_reg_175_reg__1[40]),
        .I5(indvar_flatten_fu_82_reg[56]),
        .O(icmp_ln31_fu_155_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__1_i_4
       (.I0(indvar_flatten_fu_82_reg[53]),
        .I1(mul_ln10_reg_175_reg__1[37]),
        .I2(indvar_flatten_fu_82_reg[51]),
        .I3(mul_ln10_reg_175_reg__1[35]),
        .I4(mul_ln10_reg_175_reg__1[36]),
        .I5(indvar_flatten_fu_82_reg[52]),
        .O(icmp_ln31_fu_155_p2_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry__1_i_5
       (.I0(indvar_flatten_fu_82_reg[48]),
        .I1(mul_ln10_reg_175_reg__1[32]),
        .I2(indvar_flatten_fu_82_reg[49]),
        .I3(mul_ln10_reg_175_reg__1[33]),
        .I4(mul_ln10_reg_175_reg__1[34]),
        .I5(indvar_flatten_fu_82_reg[50]),
        .O(icmp_ln31_fu_155_p2_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_1
       (.I0(indvar_flatten_fu_82_reg[21]),
        .I1(mul_ln10_reg_175_reg__1[5]),
        .I2(indvar_flatten_fu_82_reg[22]),
        .I3(mul_ln10_reg_175_reg__1[6]),
        .I4(mul_ln10_reg_175_reg__1[7]),
        .I5(indvar_flatten_fu_82_reg[23]),
        .O(icmp_ln31_fu_155_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_2
       (.I0(indvar_flatten_fu_82_reg[18]),
        .I1(mul_ln10_reg_175_reg__1[2]),
        .I2(indvar_flatten_fu_82_reg[19]),
        .I3(mul_ln10_reg_175_reg__1[3]),
        .I4(mul_ln10_reg_175_reg__1[4]),
        .I5(indvar_flatten_fu_82_reg[20]),
        .O(icmp_ln31_fu_155_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_3
       (.I0(indvar_flatten_fu_82_reg[15]),
        .I1(icmp_ln31_fu_155_p2_carry_0[15]),
        .I2(indvar_flatten_fu_82_reg[16]),
        .I3(mul_ln10_reg_175_reg__1[0]),
        .I4(mul_ln10_reg_175_reg__1[1]),
        .I5(indvar_flatten_fu_82_reg[17]),
        .O(icmp_ln31_fu_155_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_4
       (.I0(indvar_flatten_fu_82_reg[12]),
        .I1(icmp_ln31_fu_155_p2_carry_0[12]),
        .I2(indvar_flatten_fu_82_reg[13]),
        .I3(icmp_ln31_fu_155_p2_carry_0[13]),
        .I4(icmp_ln31_fu_155_p2_carry_0[14]),
        .I5(indvar_flatten_fu_82_reg[14]),
        .O(icmp_ln31_fu_155_p2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_5
       (.I0(indvar_flatten_fu_82_reg[9]),
        .I1(icmp_ln31_fu_155_p2_carry_0[9]),
        .I2(indvar_flatten_fu_82_reg[10]),
        .I3(icmp_ln31_fu_155_p2_carry_0[10]),
        .I4(icmp_ln31_fu_155_p2_carry_0[11]),
        .I5(indvar_flatten_fu_82_reg[11]),
        .O(icmp_ln31_fu_155_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_6
       (.I0(indvar_flatten_fu_82_reg[6]),
        .I1(icmp_ln31_fu_155_p2_carry_0[6]),
        .I2(indvar_flatten_fu_82_reg[7]),
        .I3(icmp_ln31_fu_155_p2_carry_0[7]),
        .I4(icmp_ln31_fu_155_p2_carry_0[8]),
        .I5(indvar_flatten_fu_82_reg[8]),
        .O(icmp_ln31_fu_155_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_7
       (.I0(indvar_flatten_fu_82_reg[5]),
        .I1(icmp_ln31_fu_155_p2_carry_0[5]),
        .I2(indvar_flatten_fu_82_reg[3]),
        .I3(icmp_ln31_fu_155_p2_carry_0[3]),
        .I4(icmp_ln31_fu_155_p2_carry_0[4]),
        .I5(indvar_flatten_fu_82_reg[4]),
        .O(icmp_ln31_fu_155_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    icmp_ln31_fu_155_p2_carry_i_8
       (.I0(indvar_flatten_fu_82_reg[0]),
        .I1(icmp_ln31_fu_155_p2_carry_0[0]),
        .I2(indvar_flatten_fu_82_reg[1]),
        .I3(icmp_ln31_fu_155_p2_carry_0[1]),
        .I4(icmp_ln31_fu_155_p2_carry_0[2]),
        .I5(indvar_flatten_fu_82_reg[2]),
        .O(icmp_ln31_fu_155_p2_carry_i_8_n_0));
  FDRE \icmp_ln31_reg_337_reg[0] 
       (.C(ap_clk),
        .CE(s_axis_video_TREADY2),
        .D(icmp_ln31_fu_155_p2),
        .Q(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 icmp_ln32_fu_167_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({icmp_ln32_fu_167_p2_carry_n_0,icmp_ln32_fu_167_p2_carry_n_1,icmp_ln32_fu_167_p2_carry_n_2,icmp_ln32_fu_167_p2_carry_n_3,icmp_ln32_fu_167_p2_carry_n_4,icmp_ln32_fu_167_p2_carry_n_5,icmp_ln32_fu_167_p2_carry_n_6,icmp_ln32_fu_167_p2_carry_n_7}),
        .DI({icmp_ln32_fu_167_p2_carry_i_1_n_0,icmp_ln32_fu_167_p2_carry_i_2_n_0,icmp_ln32_fu_167_p2_carry_i_3_n_0,icmp_ln32_fu_167_p2_carry_i_4_n_0,icmp_ln32_fu_167_p2_carry_i_5_n_0,icmp_ln32_fu_167_p2_carry_i_6_n_0,icmp_ln32_fu_167_p2_carry_i_7_n_0,icmp_ln32_fu_167_p2_carry_i_8_n_0}),
        .O(NLW_icmp_ln32_fu_167_p2_carry_O_UNCONNECTED[7:0]),
        .S({icmp_ln32_fu_167_p2_carry_i_9_n_0,icmp_ln32_fu_167_p2_carry_i_10_n_0,icmp_ln32_fu_167_p2_carry_i_11_n_0,icmp_ln32_fu_167_p2_carry_i_12_n_0,icmp_ln32_fu_167_p2_carry_i_13_n_0,icmp_ln32_fu_167_p2_carry_i_14_n_0,icmp_ln32_fu_167_p2_carry_i_15_n_0,icmp_ln32_fu_167_p2_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 icmp_ln32_fu_167_p2_carry__0
       (.CI(icmp_ln32_fu_167_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({icmp_ln32_fu_167_p2_carry__0_n_0,icmp_ln32_fu_167_p2_carry__0_n_1,icmp_ln32_fu_167_p2_carry__0_n_2,icmp_ln32_fu_167_p2_carry__0_n_3,icmp_ln32_fu_167_p2_carry__0_n_4,icmp_ln32_fu_167_p2_carry__0_n_5,icmp_ln32_fu_167_p2_carry__0_n_6,icmp_ln32_fu_167_p2_carry__0_n_7}),
        .DI({icmp_ln32_fu_167_p2_carry__0_i_1_n_0,icmp_ln32_fu_167_p2_carry__0_i_2_n_0,icmp_ln32_fu_167_p2_carry__0_i_3_n_0,icmp_ln32_fu_167_p2_carry__0_i_4_n_0,icmp_ln32_fu_167_p2_carry__0_i_5_n_0,icmp_ln32_fu_167_p2_carry__0_i_6_n_0,icmp_ln32_fu_167_p2_carry__0_i_7_n_0,icmp_ln32_fu_167_p2_carry__0_i_8_n_0}),
        .O(NLW_icmp_ln32_fu_167_p2_carry__0_O_UNCONNECTED[7:0]),
        .S({icmp_ln32_fu_167_p2_carry__0_i_9_n_0,icmp_ln32_fu_167_p2_carry__0_i_10_n_0,icmp_ln32_fu_167_p2_carry__0_i_11_n_0,icmp_ln32_fu_167_p2_carry__0_i_12_n_0,icmp_ln32_fu_167_p2_carry__0_i_13_n_0,icmp_ln32_fu_167_p2_carry__0_i_14_n_0,icmp_ln32_fu_167_p2_carry__0_i_15_n_0,icmp_ln32_fu_167_p2_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    icmp_ln32_fu_167_p2_carry__0_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[31]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[30]),
        .I2(p_0_in[30]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_10
       (.I0(p_0_in[29]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[29]),
        .I2(p_0_in[28]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[28]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_11
       (.I0(p_0_in[27]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[27]),
        .I2(p_0_in[26]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[26]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_12
       (.I0(p_0_in[25]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[25]),
        .I2(p_0_in[24]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[24]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_13
       (.I0(p_0_in[23]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[23]),
        .I2(p_0_in[22]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[22]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_14
       (.I0(p_0_in[21]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[21]),
        .I2(p_0_in[20]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[20]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_15
       (.I0(p_0_in[19]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[19]),
        .I2(p_0_in[18]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[18]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry__0_i_16
       (.I0(p_0_in[17]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[17]),
        .I2(p_0_in[16]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[16]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[29]),
        .I1(p_0_in[29]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[28]),
        .I3(p_0_in[28]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[27]),
        .I1(p_0_in[27]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[26]),
        .I3(p_0_in[26]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[25]),
        .I1(p_0_in[25]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[24]),
        .I3(p_0_in[24]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[23]),
        .I1(p_0_in[23]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[22]),
        .I3(p_0_in[22]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[21]),
        .I1(p_0_in[21]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[20]),
        .I3(p_0_in[20]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_7
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[19]),
        .I1(p_0_in[19]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[18]),
        .I3(p_0_in[18]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry__0_i_8
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[17]),
        .I1(p_0_in[17]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[16]),
        .I3(p_0_in[16]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    icmp_ln32_fu_167_p2_carry__0_i_9
       (.I0(p_0_in[30]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[30]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[31]),
        .O(icmp_ln32_fu_167_p2_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[15]),
        .I1(p_0_in[15]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[14]),
        .I3(p_0_in[14]),
        .O(icmp_ln32_fu_167_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_10
       (.I0(p_0_in[13]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[13]),
        .I2(p_0_in[12]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[12]),
        .O(icmp_ln32_fu_167_p2_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_11
       (.I0(p_0_in[11]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[11]),
        .I2(p_0_in[10]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[10]),
        .O(icmp_ln32_fu_167_p2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_12
       (.I0(p_0_in[9]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[9]),
        .I2(p_0_in[8]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[8]),
        .O(icmp_ln32_fu_167_p2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_13
       (.I0(p_0_in[7]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[7]),
        .I2(p_0_in[6]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[6]),
        .O(icmp_ln32_fu_167_p2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_14
       (.I0(p_0_in[5]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[5]),
        .I2(p_0_in[4]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[4]),
        .O(icmp_ln32_fu_167_p2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_15
       (.I0(p_0_in[3]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[3]),
        .I2(p_0_in[2]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[2]),
        .O(icmp_ln32_fu_167_p2_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_16
       (.I0(p_0_in[1]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[1]),
        .I2(p_0_in[0]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[0]),
        .O(icmp_ln32_fu_167_p2_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[13]),
        .I1(p_0_in[13]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[12]),
        .I3(p_0_in[12]),
        .O(icmp_ln32_fu_167_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[11]),
        .I1(p_0_in[11]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[10]),
        .I3(p_0_in[10]),
        .O(icmp_ln32_fu_167_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[9]),
        .I1(p_0_in[9]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[8]),
        .I3(p_0_in[8]),
        .O(icmp_ln32_fu_167_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[7]),
        .I1(p_0_in[7]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[6]),
        .I3(p_0_in[6]),
        .O(icmp_ln32_fu_167_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[5]),
        .I1(p_0_in[5]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[4]),
        .I3(p_0_in[4]),
        .O(icmp_ln32_fu_167_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_7
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[3]),
        .I1(p_0_in[3]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[2]),
        .I3(p_0_in[2]),
        .O(icmp_ln32_fu_167_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    icmp_ln32_fu_167_p2_carry_i_8
       (.I0(icmp_ln32_fu_167_p2_carry__0_0[1]),
        .I1(p_0_in[1]),
        .I2(icmp_ln32_fu_167_p2_carry__0_0[0]),
        .I3(p_0_in[0]),
        .O(icmp_ln32_fu_167_p2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln32_fu_167_p2_carry_i_9
       (.I0(p_0_in[15]),
        .I1(icmp_ln32_fu_167_p2_carry__0_0[15]),
        .I2(p_0_in[14]),
        .I3(icmp_ln32_fu_167_p2_carry__0_0[14]),
        .O(icmp_ln32_fu_167_p2_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \icmp_ln44_reg_341[0]_i_1 
       (.I0(\icmp_ln44_reg_341[0]_i_2_n_0 ),
        .I1(\icmp_ln44_reg_341[0]_i_3_n_0 ),
        .I2(\icmp_ln44_reg_341[0]_i_4_n_0 ),
        .I3(\icmp_ln44_reg_341[0]_i_5_n_0 ),
        .I4(\icmp_ln44_reg_341[0]_i_6_n_0 ),
        .I5(\icmp_ln44_reg_341[0]_i_7_n_0 ),
        .O(icmp_ln44_fu_196_p2));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_2 
       (.I0(p_0_in[21]),
        .I1(p_0_in[24]),
        .I2(p_0_in[25]),
        .I3(p_0_in[23]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[22]),
        .O(\icmp_ln44_reg_341[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_3 
       (.I0(p_0_in[26]),
        .I1(p_0_in[29]),
        .I2(p_0_in[30]),
        .I3(p_0_in[28]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[27]),
        .O(\icmp_ln44_reg_341[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_4 
       (.I0(p_0_in[11]),
        .I1(p_0_in[14]),
        .I2(p_0_in[15]),
        .I3(p_0_in[13]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[12]),
        .O(\icmp_ln44_reg_341[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_5 
       (.I0(p_0_in[16]),
        .I1(p_0_in[19]),
        .I2(p_0_in[20]),
        .I3(p_0_in[18]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[17]),
        .O(\icmp_ln44_reg_341[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_6 
       (.I0(p_0_in[6]),
        .I1(p_0_in[9]),
        .I2(p_0_in[10]),
        .I3(p_0_in[8]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[7]),
        .O(\icmp_ln44_reg_341[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \icmp_ln44_reg_341[0]_i_7 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(p_0_in[5]),
        .I3(p_0_in[3]),
        .I4(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I5(p_0_in[2]),
        .O(\icmp_ln44_reg_341[0]_i_7_n_0 ));
  FDRE \icmp_ln44_reg_341_reg[0] 
       (.C(ap_clk),
        .CE(s_axis_video_TREADY2),
        .D(icmp_ln44_fu_196_p2),
        .Q(icmp_ln44_reg_341),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_fu_82[0]_i_2 
       (.I0(indvar_flatten_fu_82_reg[0]),
        .O(\indvar_flatten_fu_82[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[0]_i_1_n_0 ,\indvar_flatten_fu_82_reg[0]_i_1_n_1 ,\indvar_flatten_fu_82_reg[0]_i_1_n_2 ,\indvar_flatten_fu_82_reg[0]_i_1_n_3 ,\indvar_flatten_fu_82_reg[0]_i_1_n_4 ,\indvar_flatten_fu_82_reg[0]_i_1_n_5 ,\indvar_flatten_fu_82_reg[0]_i_1_n_6 ,\indvar_flatten_fu_82_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\indvar_flatten_fu_82_reg[0]_i_1_n_8 ,\indvar_flatten_fu_82_reg[0]_i_1_n_9 ,\indvar_flatten_fu_82_reg[0]_i_1_n_10 ,\indvar_flatten_fu_82_reg[0]_i_1_n_11 ,\indvar_flatten_fu_82_reg[0]_i_1_n_12 ,\indvar_flatten_fu_82_reg[0]_i_1_n_13 ,\indvar_flatten_fu_82_reg[0]_i_1_n_14 ,\indvar_flatten_fu_82_reg[0]_i_1_n_15 }),
        .S({indvar_flatten_fu_82_reg[7:1],\indvar_flatten_fu_82[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[16]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[16]_i_1_n_0 ,\indvar_flatten_fu_82_reg[16]_i_1_n_1 ,\indvar_flatten_fu_82_reg[16]_i_1_n_2 ,\indvar_flatten_fu_82_reg[16]_i_1_n_3 ,\indvar_flatten_fu_82_reg[16]_i_1_n_4 ,\indvar_flatten_fu_82_reg[16]_i_1_n_5 ,\indvar_flatten_fu_82_reg[16]_i_1_n_6 ,\indvar_flatten_fu_82_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[16]_i_1_n_8 ,\indvar_flatten_fu_82_reg[16]_i_1_n_9 ,\indvar_flatten_fu_82_reg[16]_i_1_n_10 ,\indvar_flatten_fu_82_reg[16]_i_1_n_11 ,\indvar_flatten_fu_82_reg[16]_i_1_n_12 ,\indvar_flatten_fu_82_reg[16]_i_1_n_13 ,\indvar_flatten_fu_82_reg[16]_i_1_n_14 ,\indvar_flatten_fu_82_reg[16]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[17] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[18] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[19] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[20] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[21] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[22] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[23] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[16]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[24] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[24]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[24]_i_1_n_0 ,\indvar_flatten_fu_82_reg[24]_i_1_n_1 ,\indvar_flatten_fu_82_reg[24]_i_1_n_2 ,\indvar_flatten_fu_82_reg[24]_i_1_n_3 ,\indvar_flatten_fu_82_reg[24]_i_1_n_4 ,\indvar_flatten_fu_82_reg[24]_i_1_n_5 ,\indvar_flatten_fu_82_reg[24]_i_1_n_6 ,\indvar_flatten_fu_82_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[24]_i_1_n_8 ,\indvar_flatten_fu_82_reg[24]_i_1_n_9 ,\indvar_flatten_fu_82_reg[24]_i_1_n_10 ,\indvar_flatten_fu_82_reg[24]_i_1_n_11 ,\indvar_flatten_fu_82_reg[24]_i_1_n_12 ,\indvar_flatten_fu_82_reg[24]_i_1_n_13 ,\indvar_flatten_fu_82_reg[24]_i_1_n_14 ,\indvar_flatten_fu_82_reg[24]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[25] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[26] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[27] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[28] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[29] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[30] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[31] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[24]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[31]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[32] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[32]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[32]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[32]_i_1_n_0 ,\indvar_flatten_fu_82_reg[32]_i_1_n_1 ,\indvar_flatten_fu_82_reg[32]_i_1_n_2 ,\indvar_flatten_fu_82_reg[32]_i_1_n_3 ,\indvar_flatten_fu_82_reg[32]_i_1_n_4 ,\indvar_flatten_fu_82_reg[32]_i_1_n_5 ,\indvar_flatten_fu_82_reg[32]_i_1_n_6 ,\indvar_flatten_fu_82_reg[32]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[32]_i_1_n_8 ,\indvar_flatten_fu_82_reg[32]_i_1_n_9 ,\indvar_flatten_fu_82_reg[32]_i_1_n_10 ,\indvar_flatten_fu_82_reg[32]_i_1_n_11 ,\indvar_flatten_fu_82_reg[32]_i_1_n_12 ,\indvar_flatten_fu_82_reg[32]_i_1_n_13 ,\indvar_flatten_fu_82_reg[32]_i_1_n_14 ,\indvar_flatten_fu_82_reg[32]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[39:32]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[33] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[33]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[34] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[34]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[35] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[35]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[36] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[36]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[37] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[37]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[38] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[38]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[39] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[32]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[39]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[40] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[40]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[40]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[32]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[40]_i_1_n_0 ,\indvar_flatten_fu_82_reg[40]_i_1_n_1 ,\indvar_flatten_fu_82_reg[40]_i_1_n_2 ,\indvar_flatten_fu_82_reg[40]_i_1_n_3 ,\indvar_flatten_fu_82_reg[40]_i_1_n_4 ,\indvar_flatten_fu_82_reg[40]_i_1_n_5 ,\indvar_flatten_fu_82_reg[40]_i_1_n_6 ,\indvar_flatten_fu_82_reg[40]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[40]_i_1_n_8 ,\indvar_flatten_fu_82_reg[40]_i_1_n_9 ,\indvar_flatten_fu_82_reg[40]_i_1_n_10 ,\indvar_flatten_fu_82_reg[40]_i_1_n_11 ,\indvar_flatten_fu_82_reg[40]_i_1_n_12 ,\indvar_flatten_fu_82_reg[40]_i_1_n_13 ,\indvar_flatten_fu_82_reg[40]_i_1_n_14 ,\indvar_flatten_fu_82_reg[40]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[47:40]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[41] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[41]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[42] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[42]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[43] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[43]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[44] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[44]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[45] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[45]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[46] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[46]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[47] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[40]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[47]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[48] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[48]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[48]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[40]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[48]_i_1_n_0 ,\indvar_flatten_fu_82_reg[48]_i_1_n_1 ,\indvar_flatten_fu_82_reg[48]_i_1_n_2 ,\indvar_flatten_fu_82_reg[48]_i_1_n_3 ,\indvar_flatten_fu_82_reg[48]_i_1_n_4 ,\indvar_flatten_fu_82_reg[48]_i_1_n_5 ,\indvar_flatten_fu_82_reg[48]_i_1_n_6 ,\indvar_flatten_fu_82_reg[48]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[48]_i_1_n_8 ,\indvar_flatten_fu_82_reg[48]_i_1_n_9 ,\indvar_flatten_fu_82_reg[48]_i_1_n_10 ,\indvar_flatten_fu_82_reg[48]_i_1_n_11 ,\indvar_flatten_fu_82_reg[48]_i_1_n_12 ,\indvar_flatten_fu_82_reg[48]_i_1_n_13 ,\indvar_flatten_fu_82_reg[48]_i_1_n_14 ,\indvar_flatten_fu_82_reg[48]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[55:48]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[49] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[49]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[50] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[50]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[51] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[51]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[52] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_11 ),
        .Q(indvar_flatten_fu_82_reg[52]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[53] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[53]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[54] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[54]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[55] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[48]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[55]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[56] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[56]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[56]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[48]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_indvar_flatten_fu_82_reg[56]_i_1_CO_UNCONNECTED [7:5],\indvar_flatten_fu_82_reg[56]_i_1_n_3 ,\indvar_flatten_fu_82_reg[56]_i_1_n_4 ,\indvar_flatten_fu_82_reg[56]_i_1_n_5 ,\indvar_flatten_fu_82_reg[56]_i_1_n_6 ,\indvar_flatten_fu_82_reg[56]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_indvar_flatten_fu_82_reg[56]_i_1_O_UNCONNECTED [7:6],\indvar_flatten_fu_82_reg[56]_i_1_n_10 ,\indvar_flatten_fu_82_reg[56]_i_1_n_11 ,\indvar_flatten_fu_82_reg[56]_i_1_n_12 ,\indvar_flatten_fu_82_reg[56]_i_1_n_13 ,\indvar_flatten_fu_82_reg[56]_i_1_n_14 ,\indvar_flatten_fu_82_reg[56]_i_1_n_15 }),
        .S({1'b0,1'b0,S,indvar_flatten_fu_82_reg[59:56]}));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[57] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[57]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[58] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_13 ),
        .Q(indvar_flatten_fu_82_reg[58]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[59] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_12 ),
        .Q(indvar_flatten_fu_82_reg[59]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_10 ),
        .Q(indvar_flatten_fu_82_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[60] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_11 ),
        .Q(S[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[61] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[56]_i_1_n_10 ),
        .Q(S[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_9 ),
        .Q(indvar_flatten_fu_82_reg[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[0]_i_1_n_8 ),
        .Q(indvar_flatten_fu_82_reg[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_15 ),
        .Q(indvar_flatten_fu_82_reg[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \indvar_flatten_fu_82_reg[8]_i_1 
       (.CI(\indvar_flatten_fu_82_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\indvar_flatten_fu_82_reg[8]_i_1_n_0 ,\indvar_flatten_fu_82_reg[8]_i_1_n_1 ,\indvar_flatten_fu_82_reg[8]_i_1_n_2 ,\indvar_flatten_fu_82_reg[8]_i_1_n_3 ,\indvar_flatten_fu_82_reg[8]_i_1_n_4 ,\indvar_flatten_fu_82_reg[8]_i_1_n_5 ,\indvar_flatten_fu_82_reg[8]_i_1_n_6 ,\indvar_flatten_fu_82_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\indvar_flatten_fu_82_reg[8]_i_1_n_8 ,\indvar_flatten_fu_82_reg[8]_i_1_n_9 ,\indvar_flatten_fu_82_reg[8]_i_1_n_10 ,\indvar_flatten_fu_82_reg[8]_i_1_n_11 ,\indvar_flatten_fu_82_reg[8]_i_1_n_12 ,\indvar_flatten_fu_82_reg[8]_i_1_n_13 ,\indvar_flatten_fu_82_reg[8]_i_1_n_14 ,\indvar_flatten_fu_82_reg[8]_i_1_n_15 }),
        .S(indvar_flatten_fu_82_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_82_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(\indvar_flatten_fu_82_reg[8]_i_1_n_14 ),
        .Q(indvar_flatten_fu_82_reg[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  design_1_brenner_accel_0_0_brenner_accel_mul_9s_9s_18_1_1 mul_9s_9s_18_1_1_U1
       (.DSP_ALU_INST(DSP_ALU_INST),
        .DSP_A_B_DATA_INST(\empty_15_fu_86_reg[7]_0 ),
        .O({mul_9s_9s_18_1_1_U1_n_0,mul_9s_9s_18_1_1_U1_n_1,mul_9s_9s_18_1_1_U1_n_2,mul_9s_9s_18_1_1_U1_n_3,mul_9s_9s_18_1_1_U1_n_4,mul_9s_9s_18_1_1_U1_n_5,mul_9s_9s_18_1_1_U1_n_6,mul_9s_9s_18_1_1_U1_n_7}),
        .Q({empty_fu_78,\empty_fu_78_reg[2]_0 }),
        .\sum_diff_sq_fu_70_reg[15] ({mul_9s_9s_18_1_1_U1_n_8,mul_9s_9s_18_1_1_U1_n_9,mul_9s_9s_18_1_1_U1_n_10,mul_9s_9s_18_1_1_U1_n_11,mul_9s_9s_18_1_1_U1_n_12,mul_9s_9s_18_1_1_U1_n_13,mul_9s_9s_18_1_1_U1_n_14,mul_9s_9s_18_1_1_U1_n_15}),
        .\sum_diff_sq_fu_70_reg[23] ({mul_9s_9s_18_1_1_U1_n_16,mul_9s_9s_18_1_1_U1_n_17,mul_9s_9s_18_1_1_U1_n_18,mul_9s_9s_18_1_1_U1_n_19,mul_9s_9s_18_1_1_U1_n_20,mul_9s_9s_18_1_1_U1_n_21,mul_9s_9s_18_1_1_U1_n_22,mul_9s_9s_18_1_1_U1_n_23}),
        .\sum_diff_sq_fu_70_reg[31] ({mul_9s_9s_18_1_1_U1_n_24,mul_9s_9s_18_1_1_U1_n_25,mul_9s_9s_18_1_1_U1_n_26,mul_9s_9s_18_1_1_U1_n_27,mul_9s_9s_18_1_1_U1_n_28,mul_9s_9s_18_1_1_U1_n_29,mul_9s_9s_18_1_1_U1_n_30,mul_9s_9s_18_1_1_U1_n_31}),
        .\sum_diff_sq_fu_70_reg[39] ({mul_9s_9s_18_1_1_U1_n_32,mul_9s_9s_18_1_1_U1_n_33,mul_9s_9s_18_1_1_U1_n_34,mul_9s_9s_18_1_1_U1_n_35,mul_9s_9s_18_1_1_U1_n_36,mul_9s_9s_18_1_1_U1_n_37,mul_9s_9s_18_1_1_U1_n_38,mul_9s_9s_18_1_1_U1_n_39}),
        .\sum_diff_sq_fu_70_reg[47] ({mul_9s_9s_18_1_1_U1_n_40,mul_9s_9s_18_1_1_U1_n_41,mul_9s_9s_18_1_1_U1_n_42,mul_9s_9s_18_1_1_U1_n_43,mul_9s_9s_18_1_1_U1_n_44,mul_9s_9s_18_1_1_U1_n_45,mul_9s_9s_18_1_1_U1_n_46,mul_9s_9s_18_1_1_U1_n_47}),
        .\sum_diff_sq_fu_70_reg[55] ({mul_9s_9s_18_1_1_U1_n_48,mul_9s_9s_18_1_1_U1_n_49,mul_9s_9s_18_1_1_U1_n_50,mul_9s_9s_18_1_1_U1_n_51,mul_9s_9s_18_1_1_U1_n_52,mul_9s_9s_18_1_1_U1_n_53,mul_9s_9s_18_1_1_U1_n_54,mul_9s_9s_18_1_1_U1_n_55}),
        .\sum_diff_sq_fu_70_reg[63] ({mul_9s_9s_18_1_1_U1_n_56,mul_9s_9s_18_1_1_U1_n_57,mul_9s_9s_18_1_1_U1_n_58,mul_9s_9s_18_1_1_U1_n_59,mul_9s_9s_18_1_1_U1_n_60,mul_9s_9s_18_1_1_U1_n_61,mul_9s_9s_18_1_1_U1_n_62,mul_9s_9s_18_1_1_U1_n_63}),
        .\sum_diff_sq_fu_70_reg[63]_0 (\sum_diff_sq_fu_70_reg[63]_0 ));
  LUT6 #(
    .INIT(64'h2020FF20FFFFFFFF)) 
    \state[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg[3] [1]),
        .I3(Q[1]),
        .I4(s_axis_video_TVALID),
        .I5(Q[0]),
        .O(D));
  LUT4 #(
    .INIT(16'h0800)) 
    \sum_diff_sq_fu_70[0]_i_1 
       (.I0(icmp_ln44_reg_341),
        .I1(Q[0]),
        .I2(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter2),
        .O(sum_diff_sq_fu_70));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_7),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_13),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_12),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_11),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_10),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_9),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_8),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[16] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_23),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[17] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_22),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[18] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_21),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[19] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_20),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_6),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[20] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_19),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[21] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_18),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[22] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_17),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[23] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_16),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[24] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_31),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[25] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_30),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[26] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_29),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[27] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_28),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[28] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_27),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[29] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_26),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_5),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[30] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_25),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[31] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_24),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [31]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[32] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_39),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [32]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[33] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_38),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [33]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[34] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_37),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [34]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[35] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_36),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [35]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[36] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_35),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [36]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[37] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_34),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [37]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[38] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_33),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [38]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[39] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_32),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [39]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_4),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[40] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_47),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [40]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[41] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_46),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [41]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[42] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_45),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [42]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[43] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_44),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [43]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[44] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_43),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [44]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[45] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_42),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [45]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[46] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_41),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [46]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[47] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_40),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [47]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[48] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_55),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [48]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[49] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_54),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [49]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_3),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[50] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_53),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [50]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[51] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_52),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [51]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[52] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_51),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [52]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[53] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_50),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [53]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[54] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_49),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [54]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[55] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_48),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [55]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[56] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_63),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [56]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[57] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_62),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [57]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[58] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_61),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [58]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[59] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_60),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [59]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_2),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[60] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_59),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [60]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[61] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_58),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [61]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[62] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_57),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [62]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[63] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_56),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [63]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_1),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_0),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_15),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \sum_diff_sq_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(sum_diff_sq_fu_70),
        .D(mul_9s_9s_18_1_1_U1_n_14),
        .Q(\sum_diff_sq_fu_70_reg[63]_0 [9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_1
       (.I0(P[5]),
        .I1(tmp_product_carry__4[5]),
        .O(\ap_CS_fsm_reg[0] [5]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_2
       (.I0(tmp_product_carry__4[4]),
        .I1(P[4]),
        .O(\ap_CS_fsm_reg[0] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_3
       (.I0(tmp_product_carry__4[3]),
        .I1(P[3]),
        .O(\ap_CS_fsm_reg[0] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_4
       (.I0(tmp_product_carry__4[2]),
        .I1(P[2]),
        .O(\ap_CS_fsm_reg[0] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_5
       (.I0(tmp_product_carry__4[1]),
        .I1(P[1]),
        .O(\ap_CS_fsm_reg[0] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__4_i_6
       (.I0(tmp_product_carry__4[0]),
        .I1(P[0]),
        .O(\ap_CS_fsm_reg[0] [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 x_1_fu_202_p2_carry
       (.CI(select_ln25_fu_178_p3[0]),
        .CI_TOP(1'b0),
        .CO({x_1_fu_202_p2_carry_n_0,x_1_fu_202_p2_carry_n_1,x_1_fu_202_p2_carry_n_2,x_1_fu_202_p2_carry_n_3,x_1_fu_202_p2_carry_n_4,x_1_fu_202_p2_carry_n_5,x_1_fu_202_p2_carry_n_6,x_1_fu_202_p2_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(x_1_fu_202_p2[8:1]),
        .S({select_ln25_fu_178_p3[8:6],x_1_fu_202_p2_carry_i_5_n_0,select_ln25_fu_178_p3[4:1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 x_1_fu_202_p2_carry__0
       (.CI(x_1_fu_202_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({x_1_fu_202_p2_carry__0_n_0,x_1_fu_202_p2_carry__0_n_1,x_1_fu_202_p2_carry__0_n_2,x_1_fu_202_p2_carry__0_n_3,x_1_fu_202_p2_carry__0_n_4,x_1_fu_202_p2_carry__0_n_5,x_1_fu_202_p2_carry__0_n_6,x_1_fu_202_p2_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(x_1_fu_202_p2[16:9]),
        .S({select_ln25_fu_178_p3[16],x_1_fu_202_p2_carry__0_i_2_n_0,select_ln25_fu_178_p3[14:11],x_1_fu_202_p2_carry__0_i_7_n_0,select_ln25_fu_178_p3[9]}));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[16]),
        .O(select_ln25_fu_178_p3[16]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[15]),
        .O(x_1_fu_202_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[14]),
        .O(select_ln25_fu_178_p3[14]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[13]),
        .O(select_ln25_fu_178_p3[13]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[12]),
        .O(select_ln25_fu_178_p3[12]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[11]),
        .O(select_ln25_fu_178_p3[11]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_7
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[10]),
        .O(x_1_fu_202_p2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__0_i_8
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[9]),
        .O(select_ln25_fu_178_p3[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 x_1_fu_202_p2_carry__1
       (.CI(x_1_fu_202_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({x_1_fu_202_p2_carry__1_n_0,x_1_fu_202_p2_carry__1_n_1,x_1_fu_202_p2_carry__1_n_2,x_1_fu_202_p2_carry__1_n_3,x_1_fu_202_p2_carry__1_n_4,x_1_fu_202_p2_carry__1_n_5,x_1_fu_202_p2_carry__1_n_6,x_1_fu_202_p2_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(x_1_fu_202_p2[24:17]),
        .S({select_ln25_fu_178_p3[24:21],x_1_fu_202_p2_carry__1_i_5_n_0,select_ln25_fu_178_p3[19:17]}));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[24]),
        .O(select_ln25_fu_178_p3[24]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[23]),
        .O(select_ln25_fu_178_p3[23]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[22]),
        .O(select_ln25_fu_178_p3[22]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[21]),
        .O(select_ln25_fu_178_p3[21]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[20]),
        .O(x_1_fu_202_p2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[19]),
        .O(select_ln25_fu_178_p3[19]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_7
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[18]),
        .O(select_ln25_fu_178_p3[18]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__1_i_8
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[17]),
        .O(select_ln25_fu_178_p3[17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 x_1_fu_202_p2_carry__2
       (.CI(x_1_fu_202_p2_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_x_1_fu_202_p2_carry__2_CO_UNCONNECTED[7:5],x_1_fu_202_p2_carry__2_n_3,x_1_fu_202_p2_carry__2_n_4,x_1_fu_202_p2_carry__2_n_5,x_1_fu_202_p2_carry__2_n_6,x_1_fu_202_p2_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_x_1_fu_202_p2_carry__2_O_UNCONNECTED[7:6],x_1_fu_202_p2[30:25]}),
        .S({1'b0,1'b0,x_1_fu_202_p2_carry__2_i_1_n_0,select_ln25_fu_178_p3[29:26],x_1_fu_202_p2_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[30]),
        .O(x_1_fu_202_p2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[29]),
        .O(select_ln25_fu_178_p3[29]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[28]),
        .O(select_ln25_fu_178_p3[28]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[27]),
        .O(select_ln25_fu_178_p3[27]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[26]),
        .O(select_ln25_fu_178_p3[26]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry__2_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[25]),
        .O(x_1_fu_202_p2_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_1
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[0]),
        .O(select_ln25_fu_178_p3[0]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_2
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[8]),
        .O(select_ln25_fu_178_p3[8]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_3
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[7]),
        .O(select_ln25_fu_178_p3[7]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_4
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[6]),
        .O(select_ln25_fu_178_p3[6]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_5
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[5]),
        .O(x_1_fu_202_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_6
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[4]),
        .O(select_ln25_fu_178_p3[4]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_7
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[3]),
        .O(select_ln25_fu_178_p3[3]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_8
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[2]),
        .O(select_ln25_fu_178_p3[2]));
  LUT2 #(
    .INIT(4'h8)) 
    x_1_fu_202_p2_carry_i_9
       (.I0(icmp_ln32_fu_167_p2_carry__0_n_0),
        .I1(p_0_in[1]),
        .O(select_ln25_fu_178_p3[1]));
  LUT2 #(
    .INIT(4'h7)) 
    \x_fu_74[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(icmp_ln32_fu_167_p2_carry__0_n_0),
        .O(x_1_fu_202_p2[0]));
  LUT5 #(
    .INIT(32'h55450000)) 
    \x_fu_74[30]_i_2 
       (.I0(icmp_ln31_fu_155_p2),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\icmp_ln31_reg_337_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .O(indvar_flatten_fu_82));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[0]),
        .Q(p_0_in[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[10]),
        .Q(p_0_in[10]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[11]),
        .Q(p_0_in[11]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[12]),
        .Q(p_0_in[12]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[13]),
        .Q(p_0_in[13]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[14]),
        .Q(p_0_in[14]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[15]),
        .Q(p_0_in[15]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[16]),
        .Q(p_0_in[16]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[17]),
        .Q(p_0_in[17]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[18]),
        .Q(p_0_in[18]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[19]),
        .Q(p_0_in[19]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[1]),
        .Q(p_0_in[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[20]),
        .Q(p_0_in[20]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[21]),
        .Q(p_0_in[21]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[22] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[22]),
        .Q(p_0_in[22]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[23] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[23]),
        .Q(p_0_in[23]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[24] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[24]),
        .Q(p_0_in[24]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[25] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[25]),
        .Q(p_0_in[25]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[26] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[26]),
        .Q(p_0_in[26]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[27] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[27]),
        .Q(p_0_in[27]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[28] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[28]),
        .Q(p_0_in[28]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[29] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[29]),
        .Q(p_0_in[29]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[2]),
        .Q(p_0_in[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[30] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[30]),
        .Q(p_0_in[30]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[3]),
        .Q(p_0_in[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[4]),
        .Q(p_0_in[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[5]),
        .Q(p_0_in[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[6]),
        .Q(p_0_in[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[7]),
        .Q(p_0_in[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[8]),
        .Q(p_0_in[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \x_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_82),
        .D(x_1_fu_202_p2[9]),
        .Q(p_0_in[9]),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
endmodule

(* ORIG_REF_NAME = "brenner_accel_ctrl_s_axi" *) 
module design_1_brenner_accel_0_0_brenner_accel_ctrl_s_axi
   (SR,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_ctrl_RVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    s_axi_ctrl_BVALID,
    D,
    \int_width_reg[31]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    mul_ln10_fu_110_p0,
    mul_ln10_fu_110_p1,
    s_axi_ctrl_RDATA,
    ap_clk,
    ap_rst_n,
    s_axi_ctrl_ARADDR,
    s_axi_ctrl_ARVALID,
    s_axi_ctrl_RREADY,
    s_axi_ctrl_WSTRB,
    s_axi_ctrl_WVALID,
    s_axi_ctrl_BREADY,
    Q,
    s_axi_ctrl_AWVALID,
    s_axi_ctrl_WDATA,
    s_axi_ctrl_AWADDR,
    \int_brenner_score_reg[63]_0 );
  output [0:0]SR;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_ctrl_RVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output s_axi_ctrl_BVALID;
  output [1:0]D;
  output [31:0]\int_width_reg[31]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output [30:0]mul_ln10_fu_110_p0;
  output [30:0]mul_ln10_fu_110_p1;
  output [31:0]s_axi_ctrl_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [5:0]s_axi_ctrl_ARADDR;
  input s_axi_ctrl_ARVALID;
  input s_axi_ctrl_RREADY;
  input [3:0]s_axi_ctrl_WSTRB;
  input s_axi_ctrl_WVALID;
  input s_axi_ctrl_BREADY;
  input [3:0]Q;
  input s_axi_ctrl_AWVALID;
  input [31:0]s_axi_ctrl_WDATA;
  input [3:0]s_axi_ctrl_AWADDR;
  input [63:0]\int_brenner_score_reg[63]_0 ;

  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire [31:0]data5;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_i_2_n_0;
  wire int_brenner_score_ap_vld;
  wire int_brenner_score_ap_vld_i_1_n_0;
  wire int_brenner_score_ap_vld_i_2_n_0;
  wire int_brenner_score_ap_vld_i_3_n_0;
  wire [63:0]\int_brenner_score_reg[63]_0 ;
  wire \int_brenner_score_reg_n_0_[0] ;
  wire \int_brenner_score_reg_n_0_[10] ;
  wire \int_brenner_score_reg_n_0_[11] ;
  wire \int_brenner_score_reg_n_0_[12] ;
  wire \int_brenner_score_reg_n_0_[13] ;
  wire \int_brenner_score_reg_n_0_[14] ;
  wire \int_brenner_score_reg_n_0_[15] ;
  wire \int_brenner_score_reg_n_0_[16] ;
  wire \int_brenner_score_reg_n_0_[17] ;
  wire \int_brenner_score_reg_n_0_[18] ;
  wire \int_brenner_score_reg_n_0_[19] ;
  wire \int_brenner_score_reg_n_0_[1] ;
  wire \int_brenner_score_reg_n_0_[20] ;
  wire \int_brenner_score_reg_n_0_[21] ;
  wire \int_brenner_score_reg_n_0_[22] ;
  wire \int_brenner_score_reg_n_0_[23] ;
  wire \int_brenner_score_reg_n_0_[24] ;
  wire \int_brenner_score_reg_n_0_[25] ;
  wire \int_brenner_score_reg_n_0_[26] ;
  wire \int_brenner_score_reg_n_0_[27] ;
  wire \int_brenner_score_reg_n_0_[28] ;
  wire \int_brenner_score_reg_n_0_[29] ;
  wire \int_brenner_score_reg_n_0_[2] ;
  wire \int_brenner_score_reg_n_0_[30] ;
  wire \int_brenner_score_reg_n_0_[31] ;
  wire \int_brenner_score_reg_n_0_[3] ;
  wire \int_brenner_score_reg_n_0_[4] ;
  wire \int_brenner_score_reg_n_0_[5] ;
  wire \int_brenner_score_reg_n_0_[6] ;
  wire \int_brenner_score_reg_n_0_[7] ;
  wire \int_brenner_score_reg_n_0_[8] ;
  wire \int_brenner_score_reg_n_0_[9] ;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire [31:0]int_height0;
  wire \int_height[31]_i_1_n_0 ;
  wire \int_height_reg_n_0_[0] ;
  wire \int_height_reg_n_0_[10] ;
  wire \int_height_reg_n_0_[11] ;
  wire \int_height_reg_n_0_[12] ;
  wire \int_height_reg_n_0_[13] ;
  wire \int_height_reg_n_0_[14] ;
  wire \int_height_reg_n_0_[15] ;
  wire \int_height_reg_n_0_[16] ;
  wire \int_height_reg_n_0_[17] ;
  wire \int_height_reg_n_0_[18] ;
  wire \int_height_reg_n_0_[19] ;
  wire \int_height_reg_n_0_[1] ;
  wire \int_height_reg_n_0_[20] ;
  wire \int_height_reg_n_0_[21] ;
  wire \int_height_reg_n_0_[22] ;
  wire \int_height_reg_n_0_[23] ;
  wire \int_height_reg_n_0_[24] ;
  wire \int_height_reg_n_0_[25] ;
  wire \int_height_reg_n_0_[26] ;
  wire \int_height_reg_n_0_[27] ;
  wire \int_height_reg_n_0_[28] ;
  wire \int_height_reg_n_0_[29] ;
  wire \int_height_reg_n_0_[2] ;
  wire \int_height_reg_n_0_[30] ;
  wire \int_height_reg_n_0_[31] ;
  wire \int_height_reg_n_0_[3] ;
  wire \int_height_reg_n_0_[4] ;
  wire \int_height_reg_n_0_[5] ;
  wire \int_height_reg_n_0_[6] ;
  wire \int_height_reg_n_0_[7] ;
  wire \int_height_reg_n_0_[8] ;
  wire \int_height_reg_n_0_[9] ;
  wire int_ier10_out;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_i_2_n_0;
  wire [31:0]int_width0;
  wire \int_width[31]_i_1_n_0 ;
  wire [31:0]\int_width_reg[31]_0 ;
  wire interrupt;
  wire [30:0]mul_ln10_fu_110_p0;
  wire [30:0]mul_ln10_fu_110_p1;
  wire p_0_in;
  wire p_0_in_0;
  wire [7:2]p_4_in;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[0]_i_5_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata_reg[0]_i_2_n_0 ;
  wire [5:0]s_axi_ctrl_ARADDR;
  wire s_axi_ctrl_ARVALID;
  wire [3:0]s_axi_ctrl_AWADDR;
  wire s_axi_ctrl_AWVALID;
  wire s_axi_ctrl_BREADY;
  wire s_axi_ctrl_BVALID;
  wire [31:0]s_axi_ctrl_RDATA;
  wire s_axi_ctrl_RREADY;
  wire s_axi_ctrl_RVALID;
  wire [31:0]s_axi_ctrl_WDATA;
  wire [3:0]s_axi_ctrl_WSTRB;
  wire s_axi_ctrl_WVALID;
  wire tmp_product_i_32_n_1;
  wire tmp_product_i_32_n_2;
  wire tmp_product_i_32_n_3;
  wire tmp_product_i_32_n_4;
  wire tmp_product_i_32_n_5;
  wire tmp_product_i_32_n_6;
  wire tmp_product_i_32_n_7;
  wire tmp_product_i_33_n_0;
  wire tmp_product_i_33_n_1;
  wire tmp_product_i_33_n_2;
  wire tmp_product_i_33_n_3;
  wire tmp_product_i_33_n_4;
  wire tmp_product_i_33_n_5;
  wire tmp_product_i_33_n_6;
  wire tmp_product_i_33_n_7;
  wire tmp_product_i_34_n_0;
  wire tmp_product_i_34_n_1;
  wire tmp_product_i_34_n_2;
  wire tmp_product_i_34_n_3;
  wire tmp_product_i_34_n_4;
  wire tmp_product_i_34_n_5;
  wire tmp_product_i_34_n_6;
  wire tmp_product_i_34_n_7;
  wire tmp_product_i_35_n_0;
  wire tmp_product_i_36_n_0;
  wire tmp_product_i_37_n_0;
  wire tmp_product_i_38_n_0;
  wire tmp_product_i_39_n_0;
  wire tmp_product_i_40_n_0;
  wire tmp_product_i_41_n_0;
  wire tmp_product_i_42_n_0;
  wire tmp_product_i_43_n_0;
  wire tmp_product_i_44_n_0;
  wire tmp_product_i_45_n_0;
  wire tmp_product_i_46_n_0;
  wire tmp_product_i_47_n_0;
  wire tmp_product_i_48_n_0;
  wire tmp_product_i_49_n_0;
  wire tmp_product_i_50_n_0;
  wire tmp_product_i_51_n_0;
  wire tmp_product_i_51_n_1;
  wire tmp_product_i_51_n_2;
  wire tmp_product_i_51_n_3;
  wire tmp_product_i_51_n_4;
  wire tmp_product_i_51_n_5;
  wire tmp_product_i_51_n_6;
  wire tmp_product_i_51_n_7;
  wire tmp_product_i_52_n_0;
  wire tmp_product_i_53_n_0;
  wire tmp_product_i_54_n_0;
  wire tmp_product_i_55_n_0;
  wire tmp_product_i_56_n_0;
  wire tmp_product_i_57_n_0;
  wire tmp_product_i_58_n_0;
  wire tmp_product_i_59_n_0;
  wire tmp_product_i_60_n_0;
  wire tmp_product_i_61_n_0;
  wire tmp_product_i_62_n_0;
  wire tmp_product_i_63_n_0;
  wire tmp_product_i_64_n_0;
  wire tmp_product_i_65_n_0;
  wire tmp_product_i_66_n_0;
  wire tmp_product_i_67_n_0;
  wire tmp_product_i_68_n_0;
  wire tmp_product_i_69_n_0;
  wire tmp_product_i_70_n_0;
  wire tmp_product_i_71_n_0;
  wire tmp_product_i_72_n_0;
  wire tmp_product_i_73_n_0;
  wire tmp_product_i_74_n_0;
  wire tmp_product_i_75_n_0;
  wire tmp_product_i_76_n_0;
  wire tmp_product_i_77_n_0;
  wire tmp_product_i_78_n_0;
  wire tmp_product_i_79_n_0;
  wire tmp_product_i_80_n_0;
  wire tmp_product_i_81_n_0;
  wire tmp_product_i_82_n_0;
  wire tmp_product_i_83_n_0;
  wire tmp_product_i_84_n_0;
  wire tmp_product_i_85_n_0;
  wire tmp_product_i_86_n_0;
  wire tmp_product_i_87_n_0;
  wire tmp_product_i_88_n_0;
  wire tmp_product_i_89_n_0;
  wire tmp_product_i_90_n_0;
  wire tmp_product_i_91_n_0;
  wire tmp_product_i_92_n_0;
  wire tmp_product_i_93_n_0;
  wire tmp_product_i_94_n_0;
  wire tmp_product_i_95_n_0;
  wire tmp_product_i_96_n_0;
  wire tmp_product_i_97_n_0;
  wire tmp_product_i_98_n_0;
  wire tmp_product_i_99_n_0;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire [7:0]NLW_tmp_product_i_32_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product_i_33_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product_i_34_O_UNCONNECTED;
  wire [7:0]NLW_tmp_product_i_51_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8BFB)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_ctrl_RREADY),
        .I1(s_axi_ctrl_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_ctrl_ARVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_ctrl_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_ctrl_RREADY),
        .I3(s_axi_ctrl_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'hBA30BA3F)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_ctrl_BREADY),
        .I1(s_axi_ctrl_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_ctrl_BVALID),
        .I4(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_ctrl_AWVALID),
        .I2(s_axi_ctrl_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_ctrl_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_ctrl_BVALID),
        .I3(s_axi_ctrl_BREADY),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_BVALID),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[3]),
        .I1(ap_start),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q[2]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_4_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_4_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h7530)) 
    int_ap_ready_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(p_4_in[7]),
        .I2(Q[3]),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    int_ap_start_i_1
       (.I0(p_4_in[7]),
        .I1(Q[3]),
        .I2(int_ap_start1),
        .I3(s_axi_ctrl_WDATA[0]),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[5] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(s_axi_ctrl_WSTRB[0]),
        .I5(\waddr_reg_n_0_[2] ),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    int_auto_restart_i_1
       (.I0(s_axi_ctrl_WDATA[7]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(s_axi_ctrl_WSTRB[0]),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(p_4_in[7]),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_ctrl_WVALID),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_auto_restart_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_4_in[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    int_brenner_score_ap_vld_i_1
       (.I0(Q[3]),
        .I1(s_axi_ctrl_ARADDR[5]),
        .I2(s_axi_ctrl_ARADDR[1]),
        .I3(int_brenner_score_ap_vld_i_2_n_0),
        .I4(int_brenner_score_ap_vld_i_3_n_0),
        .I5(int_brenner_score_ap_vld),
        .O(int_brenner_score_ap_vld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    int_brenner_score_ap_vld_i_2
       (.I0(s_axi_ctrl_ARADDR[3]),
        .I1(s_axi_ctrl_ARADDR[4]),
        .O(int_brenner_score_ap_vld_i_2_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    int_brenner_score_ap_vld_i_3
       (.I0(s_axi_ctrl_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_ctrl_ARADDR[2]),
        .I3(s_axi_ctrl_ARADDR[0]),
        .O(int_brenner_score_ap_vld_i_3_n_0));
  FDRE int_brenner_score_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_brenner_score_ap_vld_i_1_n_0),
        .Q(int_brenner_score_ap_vld),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[0] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [0]),
        .Q(\int_brenner_score_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[10] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [10]),
        .Q(\int_brenner_score_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[11] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [11]),
        .Q(\int_brenner_score_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[12] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [12]),
        .Q(\int_brenner_score_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[13] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [13]),
        .Q(\int_brenner_score_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[14] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [14]),
        .Q(\int_brenner_score_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[15] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [15]),
        .Q(\int_brenner_score_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[16] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [16]),
        .Q(\int_brenner_score_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[17] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [17]),
        .Q(\int_brenner_score_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[18] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [18]),
        .Q(\int_brenner_score_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[19] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [19]),
        .Q(\int_brenner_score_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[1] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [1]),
        .Q(\int_brenner_score_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[20] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [20]),
        .Q(\int_brenner_score_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[21] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [21]),
        .Q(\int_brenner_score_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[22] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [22]),
        .Q(\int_brenner_score_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[23] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [23]),
        .Q(\int_brenner_score_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[24] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [24]),
        .Q(\int_brenner_score_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[25] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [25]),
        .Q(\int_brenner_score_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[26] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [26]),
        .Q(\int_brenner_score_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[27] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [27]),
        .Q(\int_brenner_score_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[28] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [28]),
        .Q(\int_brenner_score_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[29] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [29]),
        .Q(\int_brenner_score_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[2] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [2]),
        .Q(\int_brenner_score_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[30] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [30]),
        .Q(\int_brenner_score_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[31] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [31]),
        .Q(\int_brenner_score_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[32] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [32]),
        .Q(data5[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[33] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [33]),
        .Q(data5[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[34] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [34]),
        .Q(data5[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[35] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [35]),
        .Q(data5[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[36] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [36]),
        .Q(data5[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[37] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [37]),
        .Q(data5[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[38] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [38]),
        .Q(data5[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[39] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [39]),
        .Q(data5[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[3] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [3]),
        .Q(\int_brenner_score_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[40] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [40]),
        .Q(data5[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[41] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [41]),
        .Q(data5[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[42] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [42]),
        .Q(data5[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[43] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [43]),
        .Q(data5[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[44] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [44]),
        .Q(data5[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[45] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [45]),
        .Q(data5[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[46] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [46]),
        .Q(data5[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[47] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [47]),
        .Q(data5[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[48] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [48]),
        .Q(data5[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[49] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [49]),
        .Q(data5[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[4] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [4]),
        .Q(\int_brenner_score_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[50] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [50]),
        .Q(data5[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[51] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [51]),
        .Q(data5[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[52] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [52]),
        .Q(data5[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[53] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [53]),
        .Q(data5[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[54] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [54]),
        .Q(data5[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[55] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [55]),
        .Q(data5[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[56] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [56]),
        .Q(data5[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[57] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [57]),
        .Q(data5[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[58] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [58]),
        .Q(data5[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[59] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [59]),
        .Q(data5[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[5] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [5]),
        .Q(\int_brenner_score_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[60] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [60]),
        .Q(data5[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[61] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [61]),
        .Q(data5[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[62] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [62]),
        .Q(data5[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[63] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [63]),
        .Q(data5[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[6] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [6]),
        .Q(\int_brenner_score_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[7] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [7]),
        .Q(\int_brenner_score_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[8] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [8]),
        .Q(\int_brenner_score_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_brenner_score_reg[9] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_brenner_score_reg[63]_0 [9]),
        .Q(\int_brenner_score_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(int_auto_restart_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_ctrl_WSTRB[0]),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[0]_i_1 
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[0] ),
        .O(int_height0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[10]_i_1 
       (.I0(s_axi_ctrl_WDATA[10]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[10] ),
        .O(int_height0[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[11]_i_1 
       (.I0(s_axi_ctrl_WDATA[11]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[11] ),
        .O(int_height0[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[12]_i_1 
       (.I0(s_axi_ctrl_WDATA[12]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[12] ),
        .O(int_height0[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[13]_i_1 
       (.I0(s_axi_ctrl_WDATA[13]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[13] ),
        .O(int_height0[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[14]_i_1 
       (.I0(s_axi_ctrl_WDATA[14]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[14] ),
        .O(int_height0[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[15]_i_1 
       (.I0(s_axi_ctrl_WDATA[15]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[15] ),
        .O(int_height0[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[16]_i_1 
       (.I0(s_axi_ctrl_WDATA[16]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[16] ),
        .O(int_height0[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[17]_i_1 
       (.I0(s_axi_ctrl_WDATA[17]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[17] ),
        .O(int_height0[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[18]_i_1 
       (.I0(s_axi_ctrl_WDATA[18]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[18] ),
        .O(int_height0[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[19]_i_1 
       (.I0(s_axi_ctrl_WDATA[19]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[19] ),
        .O(int_height0[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[1]_i_1 
       (.I0(s_axi_ctrl_WDATA[1]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[1] ),
        .O(int_height0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[20]_i_1 
       (.I0(s_axi_ctrl_WDATA[20]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[20] ),
        .O(int_height0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[21]_i_1 
       (.I0(s_axi_ctrl_WDATA[21]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[21] ),
        .O(int_height0[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[22]_i_1 
       (.I0(s_axi_ctrl_WDATA[22]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[22] ),
        .O(int_height0[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[23]_i_1 
       (.I0(s_axi_ctrl_WDATA[23]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_height_reg_n_0_[23] ),
        .O(int_height0[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[24]_i_1 
       (.I0(s_axi_ctrl_WDATA[24]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[24] ),
        .O(int_height0[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[25]_i_1 
       (.I0(s_axi_ctrl_WDATA[25]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[25] ),
        .O(int_height0[25]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[26]_i_1 
       (.I0(s_axi_ctrl_WDATA[26]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[26] ),
        .O(int_height0[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[27]_i_1 
       (.I0(s_axi_ctrl_WDATA[27]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[27] ),
        .O(int_height0[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[28]_i_1 
       (.I0(s_axi_ctrl_WDATA[28]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[28] ),
        .O(int_height0[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[29]_i_1 
       (.I0(s_axi_ctrl_WDATA[29]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[29] ),
        .O(int_height0[29]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[2]_i_1 
       (.I0(s_axi_ctrl_WDATA[2]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[2] ),
        .O(int_height0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[30]_i_1 
       (.I0(s_axi_ctrl_WDATA[30]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[30] ),
        .O(int_height0[30]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \int_height[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[5] ),
        .I4(s_axi_ctrl_WVALID),
        .I5(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\int_height[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[31]_i_2 
       (.I0(s_axi_ctrl_WDATA[31]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_height_reg_n_0_[31] ),
        .O(int_height0[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[3]_i_1 
       (.I0(s_axi_ctrl_WDATA[3]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[3] ),
        .O(int_height0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[4]_i_1 
       (.I0(s_axi_ctrl_WDATA[4]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[4] ),
        .O(int_height0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[5]_i_1 
       (.I0(s_axi_ctrl_WDATA[5]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[5] ),
        .O(int_height0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[6]_i_1 
       (.I0(s_axi_ctrl_WDATA[6]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[6] ),
        .O(int_height0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[7]_i_1 
       (.I0(s_axi_ctrl_WDATA[7]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_height_reg_n_0_[7] ),
        .O(int_height0[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[8]_i_1 
       (.I0(s_axi_ctrl_WDATA[8]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[8] ),
        .O(int_height0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_height[9]_i_1 
       (.I0(s_axi_ctrl_WDATA[9]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_height_reg_n_0_[9] ),
        .O(int_height0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[0] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[0]),
        .Q(\int_height_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[10] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[10]),
        .Q(\int_height_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[11] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[11]),
        .Q(\int_height_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[12] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[12]),
        .Q(\int_height_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[13] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[13]),
        .Q(\int_height_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[14] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[14]),
        .Q(\int_height_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[15] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[15]),
        .Q(\int_height_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[16] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[16]),
        .Q(\int_height_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[17] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[17]),
        .Q(\int_height_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[18] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[18]),
        .Q(\int_height_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[19] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[19]),
        .Q(\int_height_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[1] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[1]),
        .Q(\int_height_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[20] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[20]),
        .Q(\int_height_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[21] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[21]),
        .Q(\int_height_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[22] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[22]),
        .Q(\int_height_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[23] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[23]),
        .Q(\int_height_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[24] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[24]),
        .Q(\int_height_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[25] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[25]),
        .Q(\int_height_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[26] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[26]),
        .Q(\int_height_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[27] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[27]),
        .Q(\int_height_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[28] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[28]),
        .Q(\int_height_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[29] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[29]),
        .Q(\int_height_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[2] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[2]),
        .Q(\int_height_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[30] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[30]),
        .Q(\int_height_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[31] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[31]),
        .Q(\int_height_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[3] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[3]),
        .Q(\int_height_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[4] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[4]),
        .Q(\int_height_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[5] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[5]),
        .Q(\int_height_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[6] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[6]),
        .Q(\int_height_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[7] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[7]),
        .Q(\int_height_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[8] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[8]),
        .Q(\int_height_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_height_reg[9] 
       (.C(ap_clk),
        .CE(\int_height[31]_i_1_n_0 ),
        .D(int_height0[9]),
        .Q(\int_height_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(s_axi_ctrl_WSTRB[0]),
        .I5(\waddr_reg_n_0_[2] ),
        .O(int_ier10_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \int_ier[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_ctrl_WVALID),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_ctrl_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_ctrl_WDATA[1]),
        .Q(p_0_in_0),
        .R(SR));
  LUT3 #(
    .INIT(8'hA8)) 
    int_interrupt_i_1
       (.I0(int_gie_reg_n_0),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(Q[3]),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_ier[1]_i_2_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\waddr_reg_n_0_[2] ),
        .I5(s_axi_ctrl_WSTRB[0]),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_ctrl_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in_0),
        .I3(Q[3]),
        .I4(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h5D5DFD5D0C0CFC0C)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_i_2_n_0),
        .I1(Q[3]),
        .I2(auto_restart_status_reg_n_0),
        .I3(ap_idle),
        .I4(p_4_in[2]),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    int_task_ap_done_i_2
       (.I0(s_axi_ctrl_ARADDR[0]),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(ar_hs),
        .I3(s_axi_ctrl_ARADDR[1]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(int_task_ap_done_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[0]_i_1 
       (.I0(s_axi_ctrl_WDATA[0]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [0]),
        .O(int_width0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[10]_i_1 
       (.I0(s_axi_ctrl_WDATA[10]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [10]),
        .O(int_width0[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[11]_i_1 
       (.I0(s_axi_ctrl_WDATA[11]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [11]),
        .O(int_width0[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[12]_i_1 
       (.I0(s_axi_ctrl_WDATA[12]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [12]),
        .O(int_width0[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[13]_i_1 
       (.I0(s_axi_ctrl_WDATA[13]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [13]),
        .O(int_width0[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[14]_i_1 
       (.I0(s_axi_ctrl_WDATA[14]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [14]),
        .O(int_width0[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[15]_i_1 
       (.I0(s_axi_ctrl_WDATA[15]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [15]),
        .O(int_width0[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[16]_i_1 
       (.I0(s_axi_ctrl_WDATA[16]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [16]),
        .O(int_width0[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[17]_i_1 
       (.I0(s_axi_ctrl_WDATA[17]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [17]),
        .O(int_width0[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[18]_i_1 
       (.I0(s_axi_ctrl_WDATA[18]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [18]),
        .O(int_width0[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[19]_i_1 
       (.I0(s_axi_ctrl_WDATA[19]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [19]),
        .O(int_width0[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[1]_i_1 
       (.I0(s_axi_ctrl_WDATA[1]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [1]),
        .O(int_width0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[20]_i_1 
       (.I0(s_axi_ctrl_WDATA[20]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [20]),
        .O(int_width0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[21]_i_1 
       (.I0(s_axi_ctrl_WDATA[21]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [21]),
        .O(int_width0[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[22]_i_1 
       (.I0(s_axi_ctrl_WDATA[22]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [22]),
        .O(int_width0[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[23]_i_1 
       (.I0(s_axi_ctrl_WDATA[23]),
        .I1(s_axi_ctrl_WSTRB[2]),
        .I2(\int_width_reg[31]_0 [23]),
        .O(int_width0[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[24]_i_1 
       (.I0(s_axi_ctrl_WDATA[24]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [24]),
        .O(int_width0[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[25]_i_1 
       (.I0(s_axi_ctrl_WDATA[25]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [25]),
        .O(int_width0[25]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[26]_i_1 
       (.I0(s_axi_ctrl_WDATA[26]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [26]),
        .O(int_width0[26]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[27]_i_1 
       (.I0(s_axi_ctrl_WDATA[27]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [27]),
        .O(int_width0[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[28]_i_1 
       (.I0(s_axi_ctrl_WDATA[28]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [28]),
        .O(int_width0[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[29]_i_1 
       (.I0(s_axi_ctrl_WDATA[29]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [29]),
        .O(int_width0[29]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[2]_i_1 
       (.I0(s_axi_ctrl_WDATA[2]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [2]),
        .O(int_width0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[30]_i_1 
       (.I0(s_axi_ctrl_WDATA[30]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [30]),
        .O(int_width0[30]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \int_width[31]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(s_axi_ctrl_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_width[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[31]_i_2 
       (.I0(s_axi_ctrl_WDATA[31]),
        .I1(s_axi_ctrl_WSTRB[3]),
        .I2(\int_width_reg[31]_0 [31]),
        .O(int_width0[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[3]_i_1 
       (.I0(s_axi_ctrl_WDATA[3]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [3]),
        .O(int_width0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[4]_i_1 
       (.I0(s_axi_ctrl_WDATA[4]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [4]),
        .O(int_width0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[5]_i_1 
       (.I0(s_axi_ctrl_WDATA[5]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [5]),
        .O(int_width0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[6]_i_1 
       (.I0(s_axi_ctrl_WDATA[6]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [6]),
        .O(int_width0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[7]_i_1 
       (.I0(s_axi_ctrl_WDATA[7]),
        .I1(s_axi_ctrl_WSTRB[0]),
        .I2(\int_width_reg[31]_0 [7]),
        .O(int_width0[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[8]_i_1 
       (.I0(s_axi_ctrl_WDATA[8]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [8]),
        .O(int_width0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_width[9]_i_1 
       (.I0(s_axi_ctrl_WDATA[9]),
        .I1(s_axi_ctrl_WSTRB[1]),
        .I2(\int_width_reg[31]_0 [9]),
        .O(int_width0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[0] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[0]),
        .Q(\int_width_reg[31]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[10] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[10]),
        .Q(\int_width_reg[31]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[11] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[11]),
        .Q(\int_width_reg[31]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[12] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[12]),
        .Q(\int_width_reg[31]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[13] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[13]),
        .Q(\int_width_reg[31]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[14] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[14]),
        .Q(\int_width_reg[31]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[15] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[15]),
        .Q(\int_width_reg[31]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[16] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[16]),
        .Q(\int_width_reg[31]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[17] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[17]),
        .Q(\int_width_reg[31]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[18] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[18]),
        .Q(\int_width_reg[31]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[19] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[19]),
        .Q(\int_width_reg[31]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[1] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[1]),
        .Q(\int_width_reg[31]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[20] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[20]),
        .Q(\int_width_reg[31]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[21] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[21]),
        .Q(\int_width_reg[31]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[22] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[22]),
        .Q(\int_width_reg[31]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[23] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[23]),
        .Q(\int_width_reg[31]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[24] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[24]),
        .Q(\int_width_reg[31]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[25] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[25]),
        .Q(\int_width_reg[31]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[26] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[26]),
        .Q(\int_width_reg[31]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[27] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[27]),
        .Q(\int_width_reg[31]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[28] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[28]),
        .Q(\int_width_reg[31]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[29] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[29]),
        .Q(\int_width_reg[31]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[2] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[2]),
        .Q(\int_width_reg[31]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[30] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[30]),
        .Q(\int_width_reg[31]_0 [30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[31] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[31]),
        .Q(\int_width_reg[31]_0 [31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[3] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[3]),
        .Q(\int_width_reg[31]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[4] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[4]),
        .Q(\int_width_reg[31]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[5] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[5]),
        .Q(\int_width_reg[31]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[6] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[6]),
        .Q(\int_width_reg[31]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[7] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[7]),
        .Q(\int_width_reg[31]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[8] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[8]),
        .Q(\int_width_reg[31]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_width_reg[9] 
       (.C(ap_clk),
        .CE(\int_width[31]_i_1_n_0 ),
        .D(int_width0[9]),
        .Q(\int_width_reg[31]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_1
       (.I0(\int_width_reg[31]_0 [30]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[30]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_10
       (.I0(\int_width_reg[31]_0 [21]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[21]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_11
       (.I0(\int_width_reg[31]_0 [20]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[20]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_12
       (.I0(\int_width_reg[31]_0 [19]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[19]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_13
       (.I0(\int_width_reg[31]_0 [18]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[18]));
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_14
       (.I0(\int_width_reg[31]_0 [17]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[17]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_2
       (.I0(\int_width_reg[31]_0 [29]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[29]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_3
       (.I0(\int_width_reg[31]_0 [28]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[28]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_4
       (.I0(\int_width_reg[31]_0 [27]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[27]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_5
       (.I0(\int_width_reg[31]_0 [26]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[26]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_6
       (.I0(\int_width_reg[31]_0 [25]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[25]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_7
       (.I0(\int_width_reg[31]_0 [24]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[24]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_8
       (.I0(\int_width_reg[31]_0 [23]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[23]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mul_ln10_reg_175_reg_i_9
       (.I0(\int_width_reg[31]_0 [22]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[22]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata[0]_i_1 
       (.I0(\rdata_reg[0]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[5]),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(s_axi_ctrl_ARADDR[1]),
        .I4(s_axi_ctrl_ARADDR[0]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11400040)) 
    \rdata[0]_i_3 
       (.I0(s_axi_ctrl_ARADDR[2]),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [0]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[0] ),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_4 
       (.I0(int_brenner_score_ap_vld),
        .I1(\int_brenner_score_reg_n_0_[0] ),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(ap_start),
        .O(\rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[0]_i_5 
       (.I0(data5[0]),
        .I1(s_axi_ctrl_ARADDR[4]),
        .I2(\int_isr_reg_n_0_[0] ),
        .I3(s_axi_ctrl_ARADDR[3]),
        .I4(int_gie_reg_n_0),
        .O(\rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [10]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[10] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[10]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[10] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[10]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [11]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[11] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[11]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[11] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[11]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[12]_i_1 
       (.I0(\rdata[12]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [12]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[12] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[12]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[12] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[12]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[13]_i_1 
       (.I0(\rdata[13]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [13]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[13] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[13]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[13] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[13]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[14]_i_1 
       (.I0(\rdata[14]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [14]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[14] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[14]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[14] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[14]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[15]_i_1 
       (.I0(\rdata[15]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [15]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[15] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[15]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[15] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[15]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[16]_i_1 
       (.I0(\rdata[16]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [16]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[16] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[16]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[16] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[16]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[17]_i_1 
       (.I0(\rdata[17]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [17]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[17] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[17]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[17] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[17]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[18]_i_1 
       (.I0(\rdata[18]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [18]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[18] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[18]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[18] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[18]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [19]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[19] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[19]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[19] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[19]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \rdata[1]_i_1 
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[5]),
        .I2(\rdata[1]_i_3_n_0 ),
        .I3(s_axi_ctrl_ARADDR[1]),
        .I4(s_axi_ctrl_ARADDR[0]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3088FFFF30880000)) 
    \rdata[1]_i_2 
       (.I0(data5[1]),
        .I1(s_axi_ctrl_ARADDR[4]),
        .I2(\int_isr_reg_n_0_[1] ),
        .I3(s_axi_ctrl_ARADDR[3]),
        .I4(s_axi_ctrl_ARADDR[2]),
        .I5(\rdata[1]_i_4_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h11400040)) 
    \rdata[1]_i_3 
       (.I0(s_axi_ctrl_ARADDR[2]),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [1]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[1] ),
        .O(\rdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rdata[1]_i_4 
       (.I0(\int_brenner_score_reg_n_0_[1] ),
        .I1(s_axi_ctrl_ARADDR[4]),
        .I2(p_0_in_0),
        .I3(s_axi_ctrl_ARADDR[3]),
        .I4(int_task_ap_done),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[20]_i_1 
       (.I0(\rdata[20]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [20]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[20] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[20]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[20] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[20]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[21]_i_1 
       (.I0(\rdata[21]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [21]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[21] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[21]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[21] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[21]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[22]_i_1 
       (.I0(\rdata[22]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [22]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[22] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[22]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[22] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[22]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[23]_i_1 
       (.I0(\rdata[23]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [23]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[23] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[23]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[23] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[23]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [24]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[24] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[24]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[24] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[24]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[25]_i_1 
       (.I0(\rdata[25]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [25]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[25] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[25]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[25] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[25]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[26]_i_1 
       (.I0(\rdata[26]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [26]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[26] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[26]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[26] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[26]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[27]_i_1 
       (.I0(\rdata[27]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [27]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[27] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[27]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[27] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[27]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[28]_i_1 
       (.I0(\rdata[28]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [28]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[28] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[28]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[28] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[28]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[29]_i_1 
       (.I0(\rdata[29]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [29]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[29] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[29]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[29] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[29]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[2]_i_1 
       (.I0(\rdata[2]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [2]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[2] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC00F0AA)) 
    \rdata[2]_i_2 
       (.I0(p_4_in[2]),
        .I1(data5[2]),
        .I2(\int_brenner_score_reg_n_0_[2] ),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[30]_i_1 
       (.I0(\rdata[30]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [30]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[30] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[30]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[30] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[30]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8880)) 
    \rdata[31]_i_1 
       (.I0(s_axi_ctrl_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_ctrl_ARADDR[1]),
        .I3(s_axi_ctrl_ARADDR[0]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_ctrl_ARVALID),
        .O(ar_hs));
  LUT6 #(
    .INIT(64'hBBBBBAAABAAABAAA)) 
    \rdata[31]_i_3 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[31]_i_5_n_0 ),
        .I2(s_axi_ctrl_ARADDR[3]),
        .I3(\int_width_reg[31]_0 [31]),
        .I4(s_axi_ctrl_ARADDR[4]),
        .I5(\int_height_reg_n_0_[31] ),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[31]_i_4 
       (.I0(\int_brenner_score_reg_n_0_[31] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[31]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFDDD)) 
    \rdata[31]_i_5 
       (.I0(s_axi_ctrl_ARADDR[5]),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(s_axi_ctrl_ARADDR[3]),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000F888FFFFFFFF)) 
    \rdata[3]_i_1 
       (.I0(s_axi_ctrl_ARADDR[3]),
        .I1(\int_width_reg[31]_0 [3]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(\int_height_reg_n_0_[3] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .I5(\rdata[3]_i_2_n_0 ),
        .O(\rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33FF0F55)) 
    \rdata[3]_i_2 
       (.I0(int_ap_ready),
        .I1(data5[3]),
        .I2(\int_brenner_score_reg_n_0_[3] ),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[4]_i_1 
       (.I0(\rdata[4]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [4]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[4] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[4]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[4] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[4]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[5]_i_1 
       (.I0(\rdata[5]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [5]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[5] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[5]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[5] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[5]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[6]_i_1 
       (.I0(\rdata[6]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [6]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[6] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[6]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[6] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[6]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000F888FFFFFFFF)) 
    \rdata[7]_i_1 
       (.I0(s_axi_ctrl_ARADDR[3]),
        .I1(\int_width_reg[31]_0 [7]),
        .I2(s_axi_ctrl_ARADDR[4]),
        .I3(\int_height_reg_n_0_[7] ),
        .I4(\rdata[31]_i_5_n_0 ),
        .I5(\rdata[7]_i_2_n_0 ),
        .O(\rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33FF0F55)) 
    \rdata[7]_i_2 
       (.I0(p_4_in[7]),
        .I1(data5[7]),
        .I2(\int_brenner_score_reg_n_0_[7] ),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[8]_i_1 
       (.I0(\rdata[8]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [8]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[8] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \rdata[8]_i_2 
       (.I0(\int_brenner_score_reg_n_0_[8] ),
        .I1(s_axi_ctrl_ARADDR[2]),
        .I2(data5[8]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[3]),
        .I5(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFEAEAEA)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(s_axi_ctrl_ARADDR[3]),
        .I2(\int_width_reg[31]_0 [9]),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(\int_height_reg_n_0_[9] ),
        .I5(\rdata[31]_i_5_n_0 ),
        .O(\rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC00F0AA)) 
    \rdata[9]_i_2 
       (.I0(interrupt),
        .I1(data5[9]),
        .I2(\int_brenner_score_reg_n_0_[9] ),
        .I3(s_axi_ctrl_ARADDR[4]),
        .I4(s_axi_ctrl_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[9]_i_3 
       (.I0(s_axi_ctrl_ARADDR[3]),
        .I1(s_axi_ctrl_ARADDR[5]),
        .O(\rdata[9]_i_3_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[0]),
        .R(1'b0));
  MUXF7 \rdata_reg[0]_i_2 
       (.I0(\rdata[0]_i_4_n_0 ),
        .I1(\rdata[0]_i_5_n_0 ),
        .O(\rdata_reg[0]_i_2_n_0 ),
        .S(s_axi_ctrl_ARADDR[2]));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[31]_i_3_n_0 ),
        .Q(s_axi_ctrl_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_1
       (.I0(\int_height_reg_n_0_[16] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_10
       (.I0(\int_height_reg_n_0_[7] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_11
       (.I0(\int_height_reg_n_0_[6] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_12
       (.I0(\int_height_reg_n_0_[5] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_13
       (.I0(\int_height_reg_n_0_[4] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_14
       (.I0(\int_height_reg_n_0_[3] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_15
       (.I0(\int_height_reg_n_0_[2] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_16
       (.I0(\int_height_reg_n_0_[1] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_17
       (.I0(\int_height_reg_n_0_[0] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_2
       (.I0(\int_height_reg_n_0_[15] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_3
       (.I0(\int_height_reg_n_0_[14] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[14]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_4
       (.I0(\int_height_reg_n_0_[13] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_5
       (.I0(\int_height_reg_n_0_[12] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[12]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_6
       (.I0(\int_height_reg_n_0_[11] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_7
       (.I0(\int_height_reg_n_0_[10] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[10]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_8
       (.I0(\int_height_reg_n_0_[9] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product__0_i_9
       (.I0(\int_height_reg_n_0_[8] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_1
       (.I0(\int_height_reg_n_0_[30] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[30]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_10
       (.I0(\int_height_reg_n_0_[21] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[21]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_11
       (.I0(\int_height_reg_n_0_[20] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[20]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_12
       (.I0(\int_height_reg_n_0_[19] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[19]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_13
       (.I0(\int_height_reg_n_0_[18] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[18]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_14
       (.I0(\int_height_reg_n_0_[17] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[17]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_15
       (.I0(\int_width_reg[31]_0 [16]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_16
       (.I0(\int_width_reg[31]_0 [15]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_17
       (.I0(\int_width_reg[31]_0 [14]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_18
       (.I0(\int_width_reg[31]_0 [13]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_19
       (.I0(\int_width_reg[31]_0 [12]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[12]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_2
       (.I0(\int_height_reg_n_0_[29] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[29]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_20
       (.I0(\int_width_reg[31]_0 [11]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_21
       (.I0(\int_width_reg[31]_0 [10]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_22
       (.I0(\int_width_reg[31]_0 [9]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[9]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_23
       (.I0(\int_width_reg[31]_0 [8]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_24
       (.I0(\int_width_reg[31]_0 [7]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_25
       (.I0(\int_width_reg[31]_0 [6]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_26
       (.I0(\int_width_reg[31]_0 [5]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_27
       (.I0(\int_width_reg[31]_0 [4]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_28
       (.I0(\int_width_reg[31]_0 [3]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_29
       (.I0(\int_width_reg[31]_0 [2]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_3
       (.I0(\int_height_reg_n_0_[28] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[28]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_30
       (.I0(\int_width_reg[31]_0 [1]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_31
       (.I0(\int_width_reg[31]_0 [0]),
        .I1(tmp_product_i_33_n_0),
        .O(mul_ln10_fu_110_p1[0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tmp_product_i_32
       (.CI(tmp_product_i_34_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in,tmp_product_i_32_n_1,tmp_product_i_32_n_2,tmp_product_i_32_n_3,tmp_product_i_32_n_4,tmp_product_i_32_n_5,tmp_product_i_32_n_6,tmp_product_i_32_n_7}),
        .DI({tmp_product_i_35_n_0,tmp_product_i_36_n_0,tmp_product_i_37_n_0,tmp_product_i_38_n_0,tmp_product_i_39_n_0,tmp_product_i_40_n_0,tmp_product_i_41_n_0,tmp_product_i_42_n_0}),
        .O(NLW_tmp_product_i_32_O_UNCONNECTED[7:0]),
        .S({tmp_product_i_43_n_0,tmp_product_i_44_n_0,tmp_product_i_45_n_0,tmp_product_i_46_n_0,tmp_product_i_47_n_0,tmp_product_i_48_n_0,tmp_product_i_49_n_0,tmp_product_i_50_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tmp_product_i_33
       (.CI(tmp_product_i_51_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_33_n_0,tmp_product_i_33_n_1,tmp_product_i_33_n_2,tmp_product_i_33_n_3,tmp_product_i_33_n_4,tmp_product_i_33_n_5,tmp_product_i_33_n_6,tmp_product_i_33_n_7}),
        .DI({tmp_product_i_52_n_0,tmp_product_i_53_n_0,tmp_product_i_54_n_0,tmp_product_i_55_n_0,tmp_product_i_56_n_0,tmp_product_i_57_n_0,tmp_product_i_58_n_0,tmp_product_i_59_n_0}),
        .O(NLW_tmp_product_i_33_O_UNCONNECTED[7:0]),
        .S({tmp_product_i_60_n_0,tmp_product_i_61_n_0,tmp_product_i_62_n_0,tmp_product_i_63_n_0,tmp_product_i_64_n_0,tmp_product_i_65_n_0,tmp_product_i_66_n_0,tmp_product_i_67_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tmp_product_i_34
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_34_n_0,tmp_product_i_34_n_1,tmp_product_i_34_n_2,tmp_product_i_34_n_3,tmp_product_i_34_n_4,tmp_product_i_34_n_5,tmp_product_i_34_n_6,tmp_product_i_34_n_7}),
        .DI({tmp_product_i_68_n_0,tmp_product_i_69_n_0,tmp_product_i_70_n_0,tmp_product_i_71_n_0,tmp_product_i_72_n_0,tmp_product_i_73_n_0,tmp_product_i_74_n_0,tmp_product_i_75_n_0}),
        .O(NLW_tmp_product_i_34_O_UNCONNECTED[7:0]),
        .S({tmp_product_i_76_n_0,tmp_product_i_77_n_0,tmp_product_i_78_n_0,tmp_product_i_79_n_0,tmp_product_i_80_n_0,tmp_product_i_81_n_0,tmp_product_i_82_n_0,tmp_product_i_83_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_product_i_35
       (.I0(\int_height_reg_n_0_[30] ),
        .I1(\int_height_reg_n_0_[31] ),
        .O(tmp_product_i_35_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_36
       (.I0(\int_height_reg_n_0_[29] ),
        .I1(\int_height_reg_n_0_[28] ),
        .O(tmp_product_i_36_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_37
       (.I0(\int_height_reg_n_0_[27] ),
        .I1(\int_height_reg_n_0_[26] ),
        .O(tmp_product_i_37_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_38
       (.I0(\int_height_reg_n_0_[25] ),
        .I1(\int_height_reg_n_0_[24] ),
        .O(tmp_product_i_38_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_39
       (.I0(\int_height_reg_n_0_[23] ),
        .I1(\int_height_reg_n_0_[22] ),
        .O(tmp_product_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_4
       (.I0(\int_height_reg_n_0_[27] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[27]));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_40
       (.I0(\int_height_reg_n_0_[21] ),
        .I1(\int_height_reg_n_0_[20] ),
        .O(tmp_product_i_40_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_41
       (.I0(\int_height_reg_n_0_[19] ),
        .I1(\int_height_reg_n_0_[18] ),
        .O(tmp_product_i_41_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_42
       (.I0(\int_height_reg_n_0_[17] ),
        .I1(\int_height_reg_n_0_[16] ),
        .O(tmp_product_i_42_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_43
       (.I0(\int_height_reg_n_0_[30] ),
        .I1(\int_height_reg_n_0_[31] ),
        .O(tmp_product_i_43_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_44
       (.I0(\int_height_reg_n_0_[28] ),
        .I1(\int_height_reg_n_0_[29] ),
        .O(tmp_product_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_45
       (.I0(\int_height_reg_n_0_[26] ),
        .I1(\int_height_reg_n_0_[27] ),
        .O(tmp_product_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_46
       (.I0(\int_height_reg_n_0_[24] ),
        .I1(\int_height_reg_n_0_[25] ),
        .O(tmp_product_i_46_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_47
       (.I0(\int_height_reg_n_0_[22] ),
        .I1(\int_height_reg_n_0_[23] ),
        .O(tmp_product_i_47_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_48
       (.I0(\int_height_reg_n_0_[20] ),
        .I1(\int_height_reg_n_0_[21] ),
        .O(tmp_product_i_48_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_49
       (.I0(\int_height_reg_n_0_[18] ),
        .I1(\int_height_reg_n_0_[19] ),
        .O(tmp_product_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_5
       (.I0(\int_height_reg_n_0_[26] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[26]));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_50
       (.I0(\int_height_reg_n_0_[16] ),
        .I1(\int_height_reg_n_0_[17] ),
        .O(tmp_product_i_50_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 tmp_product_i_51
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_product_i_51_n_0,tmp_product_i_51_n_1,tmp_product_i_51_n_2,tmp_product_i_51_n_3,tmp_product_i_51_n_4,tmp_product_i_51_n_5,tmp_product_i_51_n_6,tmp_product_i_51_n_7}),
        .DI({tmp_product_i_84_n_0,tmp_product_i_85_n_0,tmp_product_i_86_n_0,tmp_product_i_87_n_0,tmp_product_i_88_n_0,tmp_product_i_89_n_0,tmp_product_i_90_n_0,tmp_product_i_91_n_0}),
        .O(NLW_tmp_product_i_51_O_UNCONNECTED[7:0]),
        .S({tmp_product_i_92_n_0,tmp_product_i_93_n_0,tmp_product_i_94_n_0,tmp_product_i_95_n_0,tmp_product_i_96_n_0,tmp_product_i_97_n_0,tmp_product_i_98_n_0,tmp_product_i_99_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_product_i_52
       (.I0(\int_width_reg[31]_0 [30]),
        .I1(\int_width_reg[31]_0 [31]),
        .O(tmp_product_i_52_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_53
       (.I0(\int_width_reg[31]_0 [29]),
        .I1(\int_width_reg[31]_0 [28]),
        .O(tmp_product_i_53_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_54
       (.I0(\int_width_reg[31]_0 [27]),
        .I1(\int_width_reg[31]_0 [26]),
        .O(tmp_product_i_54_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_55
       (.I0(\int_width_reg[31]_0 [25]),
        .I1(\int_width_reg[31]_0 [24]),
        .O(tmp_product_i_55_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_56
       (.I0(\int_width_reg[31]_0 [23]),
        .I1(\int_width_reg[31]_0 [22]),
        .O(tmp_product_i_56_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_57
       (.I0(\int_width_reg[31]_0 [21]),
        .I1(\int_width_reg[31]_0 [20]),
        .O(tmp_product_i_57_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_58
       (.I0(\int_width_reg[31]_0 [19]),
        .I1(\int_width_reg[31]_0 [18]),
        .O(tmp_product_i_58_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_59
       (.I0(\int_width_reg[31]_0 [17]),
        .I1(\int_width_reg[31]_0 [16]),
        .O(tmp_product_i_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_6
       (.I0(\int_height_reg_n_0_[25] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[25]));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_60
       (.I0(\int_width_reg[31]_0 [30]),
        .I1(\int_width_reg[31]_0 [31]),
        .O(tmp_product_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_61
       (.I0(\int_width_reg[31]_0 [28]),
        .I1(\int_width_reg[31]_0 [29]),
        .O(tmp_product_i_61_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_62
       (.I0(\int_width_reg[31]_0 [26]),
        .I1(\int_width_reg[31]_0 [27]),
        .O(tmp_product_i_62_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_63
       (.I0(\int_width_reg[31]_0 [24]),
        .I1(\int_width_reg[31]_0 [25]),
        .O(tmp_product_i_63_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_64
       (.I0(\int_width_reg[31]_0 [22]),
        .I1(\int_width_reg[31]_0 [23]),
        .O(tmp_product_i_64_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_65
       (.I0(\int_width_reg[31]_0 [20]),
        .I1(\int_width_reg[31]_0 [21]),
        .O(tmp_product_i_65_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_66
       (.I0(\int_width_reg[31]_0 [18]),
        .I1(\int_width_reg[31]_0 [19]),
        .O(tmp_product_i_66_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_67
       (.I0(\int_width_reg[31]_0 [16]),
        .I1(\int_width_reg[31]_0 [17]),
        .O(tmp_product_i_67_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_68
       (.I0(\int_height_reg_n_0_[15] ),
        .I1(\int_height_reg_n_0_[14] ),
        .O(tmp_product_i_68_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_69
       (.I0(\int_height_reg_n_0_[13] ),
        .I1(\int_height_reg_n_0_[12] ),
        .O(tmp_product_i_69_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_7
       (.I0(\int_height_reg_n_0_[24] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[24]));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_70
       (.I0(\int_height_reg_n_0_[11] ),
        .I1(\int_height_reg_n_0_[10] ),
        .O(tmp_product_i_70_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_71
       (.I0(\int_height_reg_n_0_[9] ),
        .I1(\int_height_reg_n_0_[8] ),
        .O(tmp_product_i_71_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_72
       (.I0(\int_height_reg_n_0_[7] ),
        .I1(\int_height_reg_n_0_[6] ),
        .O(tmp_product_i_72_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_73
       (.I0(\int_height_reg_n_0_[5] ),
        .I1(\int_height_reg_n_0_[4] ),
        .O(tmp_product_i_73_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_74
       (.I0(\int_height_reg_n_0_[3] ),
        .I1(\int_height_reg_n_0_[2] ),
        .O(tmp_product_i_74_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_75
       (.I0(\int_height_reg_n_0_[1] ),
        .I1(\int_height_reg_n_0_[0] ),
        .O(tmp_product_i_75_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_76
       (.I0(\int_height_reg_n_0_[14] ),
        .I1(\int_height_reg_n_0_[15] ),
        .O(tmp_product_i_76_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_77
       (.I0(\int_height_reg_n_0_[12] ),
        .I1(\int_height_reg_n_0_[13] ),
        .O(tmp_product_i_77_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_78
       (.I0(\int_height_reg_n_0_[10] ),
        .I1(\int_height_reg_n_0_[11] ),
        .O(tmp_product_i_78_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_79
       (.I0(\int_height_reg_n_0_[8] ),
        .I1(\int_height_reg_n_0_[9] ),
        .O(tmp_product_i_79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_8
       (.I0(\int_height_reg_n_0_[23] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[23]));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_80
       (.I0(\int_height_reg_n_0_[6] ),
        .I1(\int_height_reg_n_0_[7] ),
        .O(tmp_product_i_80_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_81
       (.I0(\int_height_reg_n_0_[4] ),
        .I1(\int_height_reg_n_0_[5] ),
        .O(tmp_product_i_81_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_82
       (.I0(\int_height_reg_n_0_[2] ),
        .I1(\int_height_reg_n_0_[3] ),
        .O(tmp_product_i_82_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_83
       (.I0(\int_height_reg_n_0_[0] ),
        .I1(\int_height_reg_n_0_[1] ),
        .O(tmp_product_i_83_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_84
       (.I0(\int_width_reg[31]_0 [15]),
        .I1(\int_width_reg[31]_0 [14]),
        .O(tmp_product_i_84_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_85
       (.I0(\int_width_reg[31]_0 [13]),
        .I1(\int_width_reg[31]_0 [12]),
        .O(tmp_product_i_85_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_86
       (.I0(\int_width_reg[31]_0 [11]),
        .I1(\int_width_reg[31]_0 [10]),
        .O(tmp_product_i_86_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_87
       (.I0(\int_width_reg[31]_0 [9]),
        .I1(\int_width_reg[31]_0 [8]),
        .O(tmp_product_i_87_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_88
       (.I0(\int_width_reg[31]_0 [7]),
        .I1(\int_width_reg[31]_0 [6]),
        .O(tmp_product_i_88_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_89
       (.I0(\int_width_reg[31]_0 [5]),
        .I1(\int_width_reg[31]_0 [4]),
        .O(tmp_product_i_89_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tmp_product_i_9
       (.I0(\int_height_reg_n_0_[22] ),
        .I1(p_0_in),
        .O(mul_ln10_fu_110_p0[22]));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_90
       (.I0(\int_width_reg[31]_0 [3]),
        .I1(\int_width_reg[31]_0 [2]),
        .O(tmp_product_i_90_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tmp_product_i_91
       (.I0(\int_width_reg[31]_0 [1]),
        .I1(\int_width_reg[31]_0 [0]),
        .O(tmp_product_i_91_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_92
       (.I0(\int_width_reg[31]_0 [14]),
        .I1(\int_width_reg[31]_0 [15]),
        .O(tmp_product_i_92_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_93
       (.I0(\int_width_reg[31]_0 [12]),
        .I1(\int_width_reg[31]_0 [13]),
        .O(tmp_product_i_93_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_94
       (.I0(\int_width_reg[31]_0 [10]),
        .I1(\int_width_reg[31]_0 [11]),
        .O(tmp_product_i_94_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_95
       (.I0(\int_width_reg[31]_0 [8]),
        .I1(\int_width_reg[31]_0 [9]),
        .O(tmp_product_i_95_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_96
       (.I0(\int_width_reg[31]_0 [6]),
        .I1(\int_width_reg[31]_0 [7]),
        .O(tmp_product_i_96_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_97
       (.I0(\int_width_reg[31]_0 [4]),
        .I1(\int_width_reg[31]_0 [5]),
        .O(tmp_product_i_97_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_98
       (.I0(\int_width_reg[31]_0 [2]),
        .I1(\int_width_reg[31]_0 [3]),
        .O(tmp_product_i_98_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    tmp_product_i_99
       (.I0(\int_width_reg[31]_0 [0]),
        .I1(\int_width_reg[31]_0 [1]),
        .O(tmp_product_i_99_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(s_axi_ctrl_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_ctrl_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "brenner_accel_flow_control_loop_pipe_sequential_init" *) 
module design_1_brenner_accel_0_0_brenner_accel_flow_control_loop_pipe_sequential_init
   (\ap_CS_fsm_reg[2] ,
    s_axis_video_TREADY2,
    ap_loop_init_int_reg_0,
    SR,
    ap_clk,
    \ap_CS_fsm_reg[3] ,
    ap_loop_exit_ready_pp0_iter2_reg,
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
    ap_rst_n,
    ap_done_cache_reg_0,
    ap_enable_reg_pp0_iter2,
    Q);
  output [1:0]\ap_CS_fsm_reg[2] ;
  output s_axis_video_TREADY2;
  output [0:0]ap_loop_init_int_reg_0;
  input [0:0]SR;
  input ap_clk;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input ap_loop_exit_ready_pp0_iter2_reg;
  input grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg;
  input ap_rst_n;
  input ap_done_cache_reg_0;
  input ap_enable_reg_pp0_iter2;
  input [0:0]Q;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg;
  wire s_axis_video_TREADY2;

  LUT6 #(
    .INIT(64'hBFAABFBFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(s_axis_video_TREADY2),
        .I2(ap_loop_exit_ready_pp0_iter2_reg),
        .I3(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[3] [1]),
        .O(\ap_CS_fsm_reg[2] [0]));
  LUT5 #(
    .INIT(32'hAA080808)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_done_cache),
        .I2(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(s_axis_video_TREADY2),
        .O(\ap_CS_fsm_reg[2] [1]));
  LUT6 #(
    .INIT(64'hFFDF5555FFCF0000)) 
    ap_done_cache_i_1
       (.I0(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .I1(ap_done_cache_reg_0),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(Q),
        .I4(ap_loop_exit_ready_pp0_iter2_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(SR));
  LUT5 #(
    .INIT(32'hBBF3FBF3)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(s_axis_video_TREADY2),
        .I4(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \icmp_ln31_reg_337[0]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_done_cache_reg_0),
        .O(s_axis_video_TREADY2));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hAA8A0000)) 
    \x_fu_74[30]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_0),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(Q),
        .I4(grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
endmodule

(* ORIG_REF_NAME = "brenner_accel_mul_31ns_31ns_62_1_1" *) 
module design_1_brenner_accel_0_0_brenner_accel_mul_31ns_31ns_62_1_1
   (D,
    PCOUT,
    ACOUT,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    \ap_CS_fsm_reg[0] ,
    \indvar_flatten_fu_82_reg[61] ,
    mul_ln10_fu_110_p0,
    mul_ln10_fu_110_p1,
    P,
    Q,
    icmp_ln31_fu_155_p2_carry__1_i_3,
    S,
    tmp_product_carry__1_0,
    tmp_product_carry__3_0);
  output [16:0]D;
  output [47:0]PCOUT;
  output [29:0]ACOUT;
  output [16:0]DSP_ALU_INST;
  output [47:0]DSP_ALU_INST_0;
  output [43:0]\ap_CS_fsm_reg[0] ;
  output [0:0]\indvar_flatten_fu_82_reg[61] ;
  input [30:0]mul_ln10_fu_110_p0;
  input [16:0]mul_ln10_fu_110_p1;
  input [43:0]P;
  input [0:0]Q;
  input [5:0]icmp_ln31_fu_155_p2_carry__1_i_3;
  input [1:0]S;
  input [16:0]tmp_product_carry__1_0;
  input [21:0]tmp_product_carry__3_0;

  wire [29:0]ACOUT;
  wire [16:0]D;
  wire [16:0]DSP_ALU_INST;
  wire [47:0]DSP_ALU_INST_0;
  wire [43:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [1:0]S;
  wire [43:0]\ap_CS_fsm_reg[0] ;
  wire [5:0]icmp_ln31_fu_155_p2_carry__1_i_3;
  wire [0:0]\indvar_flatten_fu_82_reg[61] ;
  wire [30:0]mul_ln10_fu_110_p0;
  wire [16:0]mul_ln10_fu_110_p1;
  wire [61:60]mul_ln10_reg_175_reg__1;
  wire tmp_product__0_n_58;
  wire tmp_product__0_n_59;
  wire tmp_product__0_n_60;
  wire tmp_product__0_n_61;
  wire tmp_product__0_n_62;
  wire tmp_product__0_n_63;
  wire tmp_product__0_n_64;
  wire tmp_product__0_n_65;
  wire tmp_product__0_n_66;
  wire tmp_product__0_n_67;
  wire tmp_product__0_n_68;
  wire tmp_product__0_n_69;
  wire tmp_product__0_n_70;
  wire tmp_product__0_n_71;
  wire tmp_product__0_n_72;
  wire tmp_product__0_n_73;
  wire tmp_product__0_n_74;
  wire tmp_product__0_n_75;
  wire tmp_product__0_n_76;
  wire tmp_product__0_n_77;
  wire tmp_product__0_n_78;
  wire tmp_product__0_n_79;
  wire tmp_product__0_n_80;
  wire tmp_product__0_n_81;
  wire tmp_product__0_n_82;
  wire tmp_product__0_n_83;
  wire tmp_product__0_n_84;
  wire tmp_product__0_n_85;
  wire tmp_product__0_n_86;
  wire tmp_product__0_n_87;
  wire tmp_product__0_n_88;
  wire tmp_product_carry__0_i_1_n_0;
  wire tmp_product_carry__0_i_2_n_0;
  wire tmp_product_carry__0_i_3_n_0;
  wire tmp_product_carry__0_i_4_n_0;
  wire tmp_product_carry__0_i_5_n_0;
  wire tmp_product_carry__0_i_6_n_0;
  wire tmp_product_carry__0_i_7_n_0;
  wire tmp_product_carry__0_i_8_n_0;
  wire tmp_product_carry__0_n_0;
  wire tmp_product_carry__0_n_1;
  wire tmp_product_carry__0_n_2;
  wire tmp_product_carry__0_n_3;
  wire tmp_product_carry__0_n_4;
  wire tmp_product_carry__0_n_5;
  wire tmp_product_carry__0_n_6;
  wire tmp_product_carry__0_n_7;
  wire [16:0]tmp_product_carry__1_0;
  wire tmp_product_carry__1_i_1_n_0;
  wire tmp_product_carry__1_i_2_n_0;
  wire tmp_product_carry__1_i_3_n_0;
  wire tmp_product_carry__1_i_4_n_0;
  wire tmp_product_carry__1_i_5_n_0;
  wire tmp_product_carry__1_i_6_n_0;
  wire tmp_product_carry__1_i_7_n_0;
  wire tmp_product_carry__1_i_8_n_0;
  wire tmp_product_carry__1_n_0;
  wire tmp_product_carry__1_n_1;
  wire tmp_product_carry__1_n_2;
  wire tmp_product_carry__1_n_3;
  wire tmp_product_carry__1_n_4;
  wire tmp_product_carry__1_n_5;
  wire tmp_product_carry__1_n_6;
  wire tmp_product_carry__1_n_7;
  wire tmp_product_carry__2_i_1_n_0;
  wire tmp_product_carry__2_i_2_n_0;
  wire tmp_product_carry__2_i_3_n_0;
  wire tmp_product_carry__2_i_4_n_0;
  wire tmp_product_carry__2_i_5_n_0;
  wire tmp_product_carry__2_i_6_n_0;
  wire tmp_product_carry__2_i_7_n_0;
  wire tmp_product_carry__2_i_8_n_0;
  wire tmp_product_carry__2_n_0;
  wire tmp_product_carry__2_n_1;
  wire tmp_product_carry__2_n_2;
  wire tmp_product_carry__2_n_3;
  wire tmp_product_carry__2_n_4;
  wire tmp_product_carry__2_n_5;
  wire tmp_product_carry__2_n_6;
  wire tmp_product_carry__2_n_7;
  wire [21:0]tmp_product_carry__3_0;
  wire tmp_product_carry__3_i_1_n_0;
  wire tmp_product_carry__3_i_2_n_0;
  wire tmp_product_carry__3_i_3_n_0;
  wire tmp_product_carry__3_i_4_n_0;
  wire tmp_product_carry__3_i_5_n_0;
  wire tmp_product_carry__3_i_6_n_0;
  wire tmp_product_carry__3_i_7_n_0;
  wire tmp_product_carry__3_i_8_n_0;
  wire tmp_product_carry__3_n_0;
  wire tmp_product_carry__3_n_1;
  wire tmp_product_carry__3_n_2;
  wire tmp_product_carry__3_n_3;
  wire tmp_product_carry__3_n_4;
  wire tmp_product_carry__3_n_5;
  wire tmp_product_carry__3_n_6;
  wire tmp_product_carry__3_n_7;
  wire tmp_product_carry__4_n_3;
  wire tmp_product_carry__4_n_4;
  wire tmp_product_carry__4_n_5;
  wire tmp_product_carry__4_n_6;
  wire tmp_product_carry__4_n_7;
  wire tmp_product_carry_i_1_n_0;
  wire tmp_product_carry_i_2_n_0;
  wire tmp_product_carry_i_3_n_0;
  wire tmp_product_carry_i_4_n_0;
  wire tmp_product_carry_i_5_n_0;
  wire tmp_product_carry_i_6_n_0;
  wire tmp_product_carry_i_7_n_0;
  wire tmp_product_carry_n_0;
  wire tmp_product_carry_n_1;
  wire tmp_product_carry_n_2;
  wire tmp_product_carry_n_3;
  wire tmp_product_carry_n_4;
  wire tmp_product_carry_n_5;
  wire tmp_product_carry_n_6;
  wire tmp_product_carry_n_7;
  wire tmp_product_n_58;
  wire tmp_product_n_59;
  wire tmp_product_n_60;
  wire tmp_product_n_61;
  wire tmp_product_n_62;
  wire tmp_product_n_63;
  wire tmp_product_n_64;
  wire tmp_product_n_65;
  wire tmp_product_n_66;
  wire tmp_product_n_67;
  wire tmp_product_n_68;
  wire tmp_product_n_69;
  wire tmp_product_n_70;
  wire tmp_product_n_71;
  wire tmp_product_n_72;
  wire tmp_product_n_73;
  wire tmp_product_n_74;
  wire tmp_product_n_75;
  wire tmp_product_n_76;
  wire tmp_product_n_77;
  wire tmp_product_n_78;
  wire tmp_product_n_79;
  wire tmp_product_n_80;
  wire tmp_product_n_81;
  wire tmp_product_n_82;
  wire tmp_product_n_83;
  wire tmp_product_n_84;
  wire tmp_product_n_85;
  wire tmp_product_n_86;
  wire tmp_product_n_87;
  wire tmp_product_n_88;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_tmp_product_XOROUT_UNCONNECTED;
  wire NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product__0_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_tmp_product__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_tmp_product__0_XOROUT_UNCONNECTED;
  wire [7:5]NLW_tmp_product_carry__4_CO_UNCONNECTED;
  wire [7:6]NLW_tmp_product_carry__4_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln31_fu_155_p2_carry__1_i_1
       (.I0(mul_ln10_reg_175_reg__1[61]),
        .I1(S[1]),
        .I2(mul_ln10_reg_175_reg__1[60]),
        .I3(S[0]),
        .O(\indvar_flatten_fu_82_reg[61] ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    tmp_product
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p0[30:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({tmp_product_n_58,tmp_product_n_59,tmp_product_n_60,tmp_product_n_61,tmp_product_n_62,tmp_product_n_63,tmp_product_n_64,tmp_product_n_65,tmp_product_n_66,tmp_product_n_67,tmp_product_n_68,tmp_product_n_69,tmp_product_n_70,tmp_product_n_71,tmp_product_n_72,tmp_product_n_73,tmp_product_n_74,tmp_product_n_75,tmp_product_n_76,tmp_product_n_77,tmp_product_n_78,tmp_product_n_79,tmp_product_n_80,tmp_product_n_81,tmp_product_n_82,tmp_product_n_83,tmp_product_n_84,tmp_product_n_85,tmp_product_n_86,tmp_product_n_87,tmp_product_n_88,D}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_tmp_product_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    tmp_product__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_ln10_fu_110_p0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(ACOUT),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,mul_ln10_fu_110_p1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product__0_OVERFLOW_UNCONNECTED),
        .P({tmp_product__0_n_58,tmp_product__0_n_59,tmp_product__0_n_60,tmp_product__0_n_61,tmp_product__0_n_62,tmp_product__0_n_63,tmp_product__0_n_64,tmp_product__0_n_65,tmp_product__0_n_66,tmp_product__0_n_67,tmp_product__0_n_68,tmp_product__0_n_69,tmp_product__0_n_70,tmp_product__0_n_71,tmp_product__0_n_72,tmp_product__0_n_73,tmp_product__0_n_74,tmp_product__0_n_75,tmp_product__0_n_76,tmp_product__0_n_77,tmp_product__0_n_78,tmp_product__0_n_79,tmp_product__0_n_80,tmp_product__0_n_81,tmp_product__0_n_82,tmp_product__0_n_83,tmp_product__0_n_84,tmp_product__0_n_85,tmp_product__0_n_86,tmp_product__0_n_87,tmp_product__0_n_88,DSP_ALU_INST}),
        .PATTERNBDETECT(NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(DSP_ALU_INST_0),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_tmp_product__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({tmp_product_carry_n_0,tmp_product_carry_n_1,tmp_product_carry_n_2,tmp_product_carry_n_3,tmp_product_carry_n_4,tmp_product_carry_n_5,tmp_product_carry_n_6,tmp_product_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(\ap_CS_fsm_reg[0] [7:0]),
        .S({tmp_product_carry_i_1_n_0,tmp_product_carry_i_2_n_0,tmp_product_carry_i_3_n_0,tmp_product_carry_i_4_n_0,tmp_product_carry_i_5_n_0,tmp_product_carry_i_6_n_0,tmp_product_carry_i_7_n_0,Q}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry__0
       (.CI(tmp_product_carry_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_carry__0_n_0,tmp_product_carry__0_n_1,tmp_product_carry__0_n_2,tmp_product_carry__0_n_3,tmp_product_carry__0_n_4,tmp_product_carry__0_n_5,tmp_product_carry__0_n_6,tmp_product_carry__0_n_7}),
        .DI(P[14:7]),
        .O(\ap_CS_fsm_reg[0] [15:8]),
        .S({tmp_product_carry__0_i_1_n_0,tmp_product_carry__0_i_2_n_0,tmp_product_carry__0_i_3_n_0,tmp_product_carry__0_i_4_n_0,tmp_product_carry__0_i_5_n_0,tmp_product_carry__0_i_6_n_0,tmp_product_carry__0_i_7_n_0,tmp_product_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_1
       (.I0(P[14]),
        .I1(tmp_product_carry__1_0[14]),
        .O(tmp_product_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_2
       (.I0(P[13]),
        .I1(tmp_product_carry__1_0[13]),
        .O(tmp_product_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_3
       (.I0(P[12]),
        .I1(tmp_product_carry__1_0[12]),
        .O(tmp_product_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_4
       (.I0(P[11]),
        .I1(tmp_product_carry__1_0[11]),
        .O(tmp_product_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_5
       (.I0(P[10]),
        .I1(tmp_product_carry__1_0[10]),
        .O(tmp_product_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_6
       (.I0(P[9]),
        .I1(tmp_product_carry__1_0[9]),
        .O(tmp_product_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_7
       (.I0(P[8]),
        .I1(tmp_product_carry__1_0[8]),
        .O(tmp_product_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__0_i_8
       (.I0(P[7]),
        .I1(tmp_product_carry__1_0[7]),
        .O(tmp_product_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry__1
       (.CI(tmp_product_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_carry__1_n_0,tmp_product_carry__1_n_1,tmp_product_carry__1_n_2,tmp_product_carry__1_n_3,tmp_product_carry__1_n_4,tmp_product_carry__1_n_5,tmp_product_carry__1_n_6,tmp_product_carry__1_n_7}),
        .DI(P[22:15]),
        .O(\ap_CS_fsm_reg[0] [23:16]),
        .S({tmp_product_carry__1_i_1_n_0,tmp_product_carry__1_i_2_n_0,tmp_product_carry__1_i_3_n_0,tmp_product_carry__1_i_4_n_0,tmp_product_carry__1_i_5_n_0,tmp_product_carry__1_i_6_n_0,tmp_product_carry__1_i_7_n_0,tmp_product_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_1
       (.I0(P[22]),
        .I1(tmp_product_carry__3_0[5]),
        .O(tmp_product_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_2
       (.I0(P[21]),
        .I1(tmp_product_carry__3_0[4]),
        .O(tmp_product_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_3
       (.I0(P[20]),
        .I1(tmp_product_carry__3_0[3]),
        .O(tmp_product_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_4
       (.I0(P[19]),
        .I1(tmp_product_carry__3_0[2]),
        .O(tmp_product_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_5
       (.I0(P[18]),
        .I1(tmp_product_carry__3_0[1]),
        .O(tmp_product_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_6
       (.I0(P[17]),
        .I1(tmp_product_carry__3_0[0]),
        .O(tmp_product_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_7
       (.I0(P[16]),
        .I1(tmp_product_carry__1_0[16]),
        .O(tmp_product_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__1_i_8
       (.I0(P[15]),
        .I1(tmp_product_carry__1_0[15]),
        .O(tmp_product_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry__2
       (.CI(tmp_product_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_carry__2_n_0,tmp_product_carry__2_n_1,tmp_product_carry__2_n_2,tmp_product_carry__2_n_3,tmp_product_carry__2_n_4,tmp_product_carry__2_n_5,tmp_product_carry__2_n_6,tmp_product_carry__2_n_7}),
        .DI(P[30:23]),
        .O(\ap_CS_fsm_reg[0] [31:24]),
        .S({tmp_product_carry__2_i_1_n_0,tmp_product_carry__2_i_2_n_0,tmp_product_carry__2_i_3_n_0,tmp_product_carry__2_i_4_n_0,tmp_product_carry__2_i_5_n_0,tmp_product_carry__2_i_6_n_0,tmp_product_carry__2_i_7_n_0,tmp_product_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_1
       (.I0(P[30]),
        .I1(tmp_product_carry__3_0[13]),
        .O(tmp_product_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_2
       (.I0(P[29]),
        .I1(tmp_product_carry__3_0[12]),
        .O(tmp_product_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_3
       (.I0(P[28]),
        .I1(tmp_product_carry__3_0[11]),
        .O(tmp_product_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_4
       (.I0(P[27]),
        .I1(tmp_product_carry__3_0[10]),
        .O(tmp_product_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_5
       (.I0(P[26]),
        .I1(tmp_product_carry__3_0[9]),
        .O(tmp_product_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_6
       (.I0(P[25]),
        .I1(tmp_product_carry__3_0[8]),
        .O(tmp_product_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_7
       (.I0(P[24]),
        .I1(tmp_product_carry__3_0[7]),
        .O(tmp_product_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__2_i_8
       (.I0(P[23]),
        .I1(tmp_product_carry__3_0[6]),
        .O(tmp_product_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry__3
       (.CI(tmp_product_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({tmp_product_carry__3_n_0,tmp_product_carry__3_n_1,tmp_product_carry__3_n_2,tmp_product_carry__3_n_3,tmp_product_carry__3_n_4,tmp_product_carry__3_n_5,tmp_product_carry__3_n_6,tmp_product_carry__3_n_7}),
        .DI(P[38:31]),
        .O(\ap_CS_fsm_reg[0] [39:32]),
        .S({tmp_product_carry__3_i_1_n_0,tmp_product_carry__3_i_2_n_0,tmp_product_carry__3_i_3_n_0,tmp_product_carry__3_i_4_n_0,tmp_product_carry__3_i_5_n_0,tmp_product_carry__3_i_6_n_0,tmp_product_carry__3_i_7_n_0,tmp_product_carry__3_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_1
       (.I0(P[38]),
        .I1(tmp_product_carry__3_0[21]),
        .O(tmp_product_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_2
       (.I0(P[37]),
        .I1(tmp_product_carry__3_0[20]),
        .O(tmp_product_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_3
       (.I0(P[36]),
        .I1(tmp_product_carry__3_0[19]),
        .O(tmp_product_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_4
       (.I0(P[35]),
        .I1(tmp_product_carry__3_0[18]),
        .O(tmp_product_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_5
       (.I0(P[34]),
        .I1(tmp_product_carry__3_0[17]),
        .O(tmp_product_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_6
       (.I0(P[33]),
        .I1(tmp_product_carry__3_0[16]),
        .O(tmp_product_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_7
       (.I0(P[32]),
        .I1(tmp_product_carry__3_0[15]),
        .O(tmp_product_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry__3_i_8
       (.I0(P[31]),
        .I1(tmp_product_carry__3_0[14]),
        .O(tmp_product_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 tmp_product_carry__4
       (.CI(tmp_product_carry__3_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_tmp_product_carry__4_CO_UNCONNECTED[7:5],tmp_product_carry__4_n_3,tmp_product_carry__4_n_4,tmp_product_carry__4_n_5,tmp_product_carry__4_n_6,tmp_product_carry__4_n_7}),
        .DI({1'b0,1'b0,1'b0,P[43:39]}),
        .O({NLW_tmp_product_carry__4_O_UNCONNECTED[7:6],mul_ln10_reg_175_reg__1,\ap_CS_fsm_reg[0] [43:40]}),
        .S({1'b0,1'b0,icmp_ln31_fu_155_p2_carry__1_i_3}));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_1
       (.I0(P[6]),
        .I1(tmp_product_carry__1_0[6]),
        .O(tmp_product_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_2
       (.I0(P[5]),
        .I1(tmp_product_carry__1_0[5]),
        .O(tmp_product_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_3
       (.I0(P[4]),
        .I1(tmp_product_carry__1_0[4]),
        .O(tmp_product_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_4
       (.I0(P[3]),
        .I1(tmp_product_carry__1_0[3]),
        .O(tmp_product_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_5
       (.I0(P[2]),
        .I1(tmp_product_carry__1_0[2]),
        .O(tmp_product_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_6
       (.I0(P[1]),
        .I1(tmp_product_carry__1_0[1]),
        .O(tmp_product_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_carry_i_7
       (.I0(P[0]),
        .I1(tmp_product_carry__1_0[0]),
        .O(tmp_product_carry_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "brenner_accel_mul_9s_9s_18_1_1" *) 
module design_1_brenner_accel_0_0_brenner_accel_mul_9s_9s_18_1_1
   (O,
    \sum_diff_sq_fu_70_reg[15] ,
    \sum_diff_sq_fu_70_reg[23] ,
    \sum_diff_sq_fu_70_reg[31] ,
    \sum_diff_sq_fu_70_reg[39] ,
    \sum_diff_sq_fu_70_reg[47] ,
    \sum_diff_sq_fu_70_reg[55] ,
    \sum_diff_sq_fu_70_reg[63] ,
    DSP_ALU_INST,
    \sum_diff_sq_fu_70_reg[63]_0 ,
    Q,
    DSP_A_B_DATA_INST);
  output [7:0]O;
  output [7:0]\sum_diff_sq_fu_70_reg[15] ;
  output [7:0]\sum_diff_sq_fu_70_reg[23] ;
  output [7:0]\sum_diff_sq_fu_70_reg[31] ;
  output [7:0]\sum_diff_sq_fu_70_reg[39] ;
  output [7:0]\sum_diff_sq_fu_70_reg[47] ;
  output [7:0]\sum_diff_sq_fu_70_reg[55] ;
  output [7:0]\sum_diff_sq_fu_70_reg[63] ;
  input [1:0]DSP_ALU_INST;
  input [63:0]\sum_diff_sq_fu_70_reg[63]_0 ;
  input [7:0]Q;
  input [7:0]DSP_A_B_DATA_INST;

  wire [7:1]A;
  wire [1:0]DSP_ALU_INST;
  wire [7:0]DSP_A_B_DATA_INST;
  wire [7:0]O;
  wire [7:0]Q;
  wire \sum_diff_sq_fu_70[0]_i_10_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[0]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[16]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[24]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[32]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[40]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[48]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[56]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_3_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_4_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_5_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_6_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_7_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_8_n_0 ;
  wire \sum_diff_sq_fu_70[8]_i_9_n_0 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_0 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_1 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_2 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_3 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_4 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_5 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_6 ;
  wire \sum_diff_sq_fu_70_reg[0]_i_2_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[15] ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[16]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[23] ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[24]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[31] ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[32]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[39] ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[40]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[47] ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[48]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[55] ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[56]_i_1_n_7 ;
  wire [7:0]\sum_diff_sq_fu_70_reg[63] ;
  wire [63:0]\sum_diff_sq_fu_70_reg[63]_0 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_0 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_1 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_2 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_3 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_4 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_5 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_6 ;
  wire \sum_diff_sq_fu_70_reg[8]_i_1_n_7 ;
  wire [17:0]tmp_product__0;
  wire tmp_product_i_10__0_n_0;
  wire tmp_product_i_11__0_n_0;
  wire tmp_product_i_12__0_n_0;
  wire tmp_product_i_1__0_n_0;
  wire [7:7]\NLW_sum_diff_sq_fu_70_reg[56]_i_1_CO_UNCONNECTED ;
  wire NLW_tmp_product_CARRYCASCOUT_UNCONNECTED;
  wire NLW_tmp_product_MULTSIGNOUT_UNCONNECTED;
  wire NLW_tmp_product_OVERFLOW_UNCONNECTED;
  wire NLW_tmp_product_PATTERNBDETECT_UNCONNECTED;
  wire NLW_tmp_product_PATTERNDETECT_UNCONNECTED;
  wire NLW_tmp_product_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_tmp_product_ACOUT_UNCONNECTED;
  wire [17:0]NLW_tmp_product_BCOUT_UNCONNECTED;
  wire [3:0]NLW_tmp_product_CARRYOUT_UNCONNECTED;
  wire [47:18]NLW_tmp_product_P_UNCONNECTED;
  wire [47:0]NLW_tmp_product_PCOUT_UNCONNECTED;
  wire [7:0]NLW_tmp_product_XOROUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_10 
       (.I0(tmp_product__0[0]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [0]),
        .O(\sum_diff_sq_fu_70[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_3 
       (.I0(tmp_product__0[7]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [7]),
        .O(\sum_diff_sq_fu_70[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_4 
       (.I0(tmp_product__0[6]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [6]),
        .O(\sum_diff_sq_fu_70[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_5 
       (.I0(tmp_product__0[5]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [5]),
        .O(\sum_diff_sq_fu_70[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_6 
       (.I0(tmp_product__0[4]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [4]),
        .O(\sum_diff_sq_fu_70[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_7 
       (.I0(tmp_product__0[3]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [3]),
        .O(\sum_diff_sq_fu_70[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_8 
       (.I0(tmp_product__0[2]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [2]),
        .O(\sum_diff_sq_fu_70[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[0]_i_9 
       (.I0(tmp_product__0[1]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [1]),
        .O(\sum_diff_sq_fu_70[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_2 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [23]),
        .O(\sum_diff_sq_fu_70[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [22]),
        .O(\sum_diff_sq_fu_70[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [21]),
        .O(\sum_diff_sq_fu_70[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [20]),
        .O(\sum_diff_sq_fu_70[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [19]),
        .O(\sum_diff_sq_fu_70[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [18]),
        .O(\sum_diff_sq_fu_70[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [17]),
        .O(\sum_diff_sq_fu_70[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[16]_i_9 
       (.I0(tmp_product__0[16]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [16]),
        .O(\sum_diff_sq_fu_70[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_2 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [31]),
        .O(\sum_diff_sq_fu_70[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [30]),
        .O(\sum_diff_sq_fu_70[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [29]),
        .O(\sum_diff_sq_fu_70[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [28]),
        .O(\sum_diff_sq_fu_70[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [27]),
        .O(\sum_diff_sq_fu_70[24]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [26]),
        .O(\sum_diff_sq_fu_70[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [25]),
        .O(\sum_diff_sq_fu_70[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[24]_i_9 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [24]),
        .O(\sum_diff_sq_fu_70[24]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_2 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [39]),
        .O(\sum_diff_sq_fu_70[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [38]),
        .O(\sum_diff_sq_fu_70[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [37]),
        .O(\sum_diff_sq_fu_70[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [36]),
        .O(\sum_diff_sq_fu_70[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [35]),
        .O(\sum_diff_sq_fu_70[32]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [34]),
        .O(\sum_diff_sq_fu_70[32]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [33]),
        .O(\sum_diff_sq_fu_70[32]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[32]_i_9 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [32]),
        .O(\sum_diff_sq_fu_70[32]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_2 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [47]),
        .O(\sum_diff_sq_fu_70[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [46]),
        .O(\sum_diff_sq_fu_70[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [45]),
        .O(\sum_diff_sq_fu_70[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [44]),
        .O(\sum_diff_sq_fu_70[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [43]),
        .O(\sum_diff_sq_fu_70[40]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [42]),
        .O(\sum_diff_sq_fu_70[40]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [41]),
        .O(\sum_diff_sq_fu_70[40]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[40]_i_9 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [40]),
        .O(\sum_diff_sq_fu_70[40]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_2 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [55]),
        .O(\sum_diff_sq_fu_70[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [54]),
        .O(\sum_diff_sq_fu_70[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [53]),
        .O(\sum_diff_sq_fu_70[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [52]),
        .O(\sum_diff_sq_fu_70[48]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [51]),
        .O(\sum_diff_sq_fu_70[48]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [50]),
        .O(\sum_diff_sq_fu_70[48]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [49]),
        .O(\sum_diff_sq_fu_70[48]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[48]_i_9 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [48]),
        .O(\sum_diff_sq_fu_70[48]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_2 
       (.I0(\sum_diff_sq_fu_70_reg[63]_0 [63]),
        .I1(tmp_product__0[17]),
        .O(\sum_diff_sq_fu_70[56]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_3 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [62]),
        .O(\sum_diff_sq_fu_70[56]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_4 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [61]),
        .O(\sum_diff_sq_fu_70[56]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_5 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [60]),
        .O(\sum_diff_sq_fu_70[56]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_6 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [59]),
        .O(\sum_diff_sq_fu_70[56]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_7 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [58]),
        .O(\sum_diff_sq_fu_70[56]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_8 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [57]),
        .O(\sum_diff_sq_fu_70[56]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[56]_i_9 
       (.I0(tmp_product__0[17]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [56]),
        .O(\sum_diff_sq_fu_70[56]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_2 
       (.I0(tmp_product__0[15]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [15]),
        .O(\sum_diff_sq_fu_70[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_3 
       (.I0(tmp_product__0[14]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [14]),
        .O(\sum_diff_sq_fu_70[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_4 
       (.I0(tmp_product__0[13]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [13]),
        .O(\sum_diff_sq_fu_70[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_5 
       (.I0(tmp_product__0[12]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [12]),
        .O(\sum_diff_sq_fu_70[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_6 
       (.I0(tmp_product__0[11]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [11]),
        .O(\sum_diff_sq_fu_70[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_7 
       (.I0(tmp_product__0[10]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [10]),
        .O(\sum_diff_sq_fu_70[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_8 
       (.I0(tmp_product__0[9]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [9]),
        .O(\sum_diff_sq_fu_70[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_diff_sq_fu_70[8]_i_9 
       (.I0(tmp_product__0[8]),
        .I1(\sum_diff_sq_fu_70_reg[63]_0 [8]),
        .O(\sum_diff_sq_fu_70[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[0]_i_2_n_0 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_1 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_2 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_3 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_4 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_5 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_6 ,\sum_diff_sq_fu_70_reg[0]_i_2_n_7 }),
        .DI(tmp_product__0[7:0]),
        .O(O),
        .S({\sum_diff_sq_fu_70[0]_i_3_n_0 ,\sum_diff_sq_fu_70[0]_i_4_n_0 ,\sum_diff_sq_fu_70[0]_i_5_n_0 ,\sum_diff_sq_fu_70[0]_i_6_n_0 ,\sum_diff_sq_fu_70[0]_i_7_n_0 ,\sum_diff_sq_fu_70[0]_i_8_n_0 ,\sum_diff_sq_fu_70[0]_i_9_n_0 ,\sum_diff_sq_fu_70[0]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[16]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[16]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[16]_i_1_n_7 }),
        .DI({tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17:16]}),
        .O(\sum_diff_sq_fu_70_reg[23] ),
        .S({\sum_diff_sq_fu_70[16]_i_2_n_0 ,\sum_diff_sq_fu_70[16]_i_3_n_0 ,\sum_diff_sq_fu_70[16]_i_4_n_0 ,\sum_diff_sq_fu_70[16]_i_5_n_0 ,\sum_diff_sq_fu_70[16]_i_6_n_0 ,\sum_diff_sq_fu_70[16]_i_7_n_0 ,\sum_diff_sq_fu_70[16]_i_8_n_0 ,\sum_diff_sq_fu_70[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[24]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[24]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[24]_i_1_n_7 }),
        .DI({tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17]}),
        .O(\sum_diff_sq_fu_70_reg[31] ),
        .S({\sum_diff_sq_fu_70[24]_i_2_n_0 ,\sum_diff_sq_fu_70[24]_i_3_n_0 ,\sum_diff_sq_fu_70[24]_i_4_n_0 ,\sum_diff_sq_fu_70[24]_i_5_n_0 ,\sum_diff_sq_fu_70[24]_i_6_n_0 ,\sum_diff_sq_fu_70[24]_i_7_n_0 ,\sum_diff_sq_fu_70[24]_i_8_n_0 ,\sum_diff_sq_fu_70[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[32]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[32]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[32]_i_1_n_7 }),
        .DI({tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17]}),
        .O(\sum_diff_sq_fu_70_reg[39] ),
        .S({\sum_diff_sq_fu_70[32]_i_2_n_0 ,\sum_diff_sq_fu_70[32]_i_3_n_0 ,\sum_diff_sq_fu_70[32]_i_4_n_0 ,\sum_diff_sq_fu_70[32]_i_5_n_0 ,\sum_diff_sq_fu_70[32]_i_6_n_0 ,\sum_diff_sq_fu_70[32]_i_7_n_0 ,\sum_diff_sq_fu_70[32]_i_8_n_0 ,\sum_diff_sq_fu_70[32]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[40]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[32]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[40]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[40]_i_1_n_7 }),
        .DI({tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17]}),
        .O(\sum_diff_sq_fu_70_reg[47] ),
        .S({\sum_diff_sq_fu_70[40]_i_2_n_0 ,\sum_diff_sq_fu_70[40]_i_3_n_0 ,\sum_diff_sq_fu_70[40]_i_4_n_0 ,\sum_diff_sq_fu_70[40]_i_5_n_0 ,\sum_diff_sq_fu_70[40]_i_6_n_0 ,\sum_diff_sq_fu_70[40]_i_7_n_0 ,\sum_diff_sq_fu_70[40]_i_8_n_0 ,\sum_diff_sq_fu_70[40]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[48]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[40]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[48]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[48]_i_1_n_7 }),
        .DI({tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17]}),
        .O(\sum_diff_sq_fu_70_reg[55] ),
        .S({\sum_diff_sq_fu_70[48]_i_2_n_0 ,\sum_diff_sq_fu_70[48]_i_3_n_0 ,\sum_diff_sq_fu_70[48]_i_4_n_0 ,\sum_diff_sq_fu_70[48]_i_5_n_0 ,\sum_diff_sq_fu_70[48]_i_6_n_0 ,\sum_diff_sq_fu_70[48]_i_7_n_0 ,\sum_diff_sq_fu_70[48]_i_8_n_0 ,\sum_diff_sq_fu_70[48]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[56]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[48]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sum_diff_sq_fu_70_reg[56]_i_1_CO_UNCONNECTED [7],\sum_diff_sq_fu_70_reg[56]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[56]_i_1_n_7 }),
        .DI({1'b0,tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17],tmp_product__0[17]}),
        .O(\sum_diff_sq_fu_70_reg[63] ),
        .S({\sum_diff_sq_fu_70[56]_i_2_n_0 ,\sum_diff_sq_fu_70[56]_i_3_n_0 ,\sum_diff_sq_fu_70[56]_i_4_n_0 ,\sum_diff_sq_fu_70[56]_i_5_n_0 ,\sum_diff_sq_fu_70[56]_i_6_n_0 ,\sum_diff_sq_fu_70[56]_i_7_n_0 ,\sum_diff_sq_fu_70[56]_i_8_n_0 ,\sum_diff_sq_fu_70[56]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sum_diff_sq_fu_70_reg[8]_i_1 
       (.CI(\sum_diff_sq_fu_70_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_diff_sq_fu_70_reg[8]_i_1_n_0 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_1 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_2 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_3 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_4 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_5 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_6 ,\sum_diff_sq_fu_70_reg[8]_i_1_n_7 }),
        .DI(tmp_product__0[15:8]),
        .O(\sum_diff_sq_fu_70_reg[15] ),
        .S({\sum_diff_sq_fu_70[8]_i_2_n_0 ,\sum_diff_sq_fu_70[8]_i_3_n_0 ,\sum_diff_sq_fu_70[8]_i_4_n_0 ,\sum_diff_sq_fu_70[8]_i_5_n_0 ,\sum_diff_sq_fu_70[8]_i_6_n_0 ,\sum_diff_sq_fu_70[8]_i_7_n_0 ,\sum_diff_sq_fu_70[8]_i_8_n_0 ,\sum_diff_sq_fu_70[8]_i_9_n_0 }));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    tmp_product
       (.A({tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,A[7:3],DSP_ALU_INST[1],A[1],DSP_ALU_INST[0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_tmp_product_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,tmp_product_i_1__0_n_0,A[7:3],DSP_ALU_INST[1],A[1],DSP_ALU_INST[0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_tmp_product_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_tmp_product_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_tmp_product_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_tmp_product_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_tmp_product_OVERFLOW_UNCONNECTED),
        .P({NLW_tmp_product_P_UNCONNECTED[47:18],tmp_product__0}),
        .PATTERNBDETECT(NLW_tmp_product_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_tmp_product_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_tmp_product_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_tmp_product_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_tmp_product_XOROUT_UNCONNECTED[7:0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    tmp_product_i_10__0
       (.I0(Q[6]),
        .I1(DSP_A_B_DATA_INST[6]),
        .I2(tmp_product_i_11__0_n_0),
        .I3(DSP_A_B_DATA_INST[5]),
        .I4(Q[5]),
        .O(tmp_product_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    tmp_product_i_11__0
       (.I0(Q[4]),
        .I1(DSP_A_B_DATA_INST[4]),
        .I2(tmp_product_i_12__0_n_0),
        .I3(DSP_A_B_DATA_INST[3]),
        .I4(Q[3]),
        .O(tmp_product_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hD4DD4444DDDDD4DD)) 
    tmp_product_i_12__0
       (.I0(Q[2]),
        .I1(DSP_A_B_DATA_INST[2]),
        .I2(DSP_A_B_DATA_INST[0]),
        .I3(Q[0]),
        .I4(DSP_A_B_DATA_INST[1]),
        .I5(Q[1]),
        .O(tmp_product_i_12__0_n_0));
  LUT3 #(
    .INIT(8'h2B)) 
    tmp_product_i_1__0
       (.I0(Q[7]),
        .I1(DSP_A_B_DATA_INST[7]),
        .I2(tmp_product_i_10__0_n_0),
        .O(tmp_product_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_2__0
       (.I0(tmp_product_i_10__0_n_0),
        .I1(Q[7]),
        .I2(DSP_A_B_DATA_INST[7]),
        .O(A[7]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    tmp_product_i_3__0
       (.I0(tmp_product_i_11__0_n_0),
        .I1(DSP_A_B_DATA_INST[5]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(DSP_A_B_DATA_INST[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_4__0
       (.I0(tmp_product_i_11__0_n_0),
        .I1(Q[5]),
        .I2(DSP_A_B_DATA_INST[5]),
        .O(A[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h718E8E71)) 
    tmp_product_i_5__0
       (.I0(tmp_product_i_12__0_n_0),
        .I1(DSP_A_B_DATA_INST[3]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(DSP_A_B_DATA_INST[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'h69)) 
    tmp_product_i_6__0
       (.I0(tmp_product_i_12__0_n_0),
        .I1(Q[3]),
        .I2(DSP_A_B_DATA_INST[3]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    tmp_product_i_8__0
       (.I0(Q[0]),
        .I1(DSP_A_B_DATA_INST[0]),
        .I2(Q[1]),
        .I3(DSP_A_B_DATA_INST[1]),
        .O(A[1]));
endmodule

(* ORIG_REF_NAME = "brenner_accel_regslice_both" *) 
module design_1_brenner_accel_0_0_brenner_accel_regslice_both
   (ack_in_t_reg_0,
    Q,
    \data_p1_reg[0]_0 ,
    \data_p1_reg[7]_0 ,
    SR,
    ap_clk,
    ack_in_t_reg_1,
    s_axis_video_TVALID,
    s_axis_video_TDATA,
    DSP_A_B_DATA_INST,
    D);
  output ack_in_t_reg_0;
  output [1:0]Q;
  output [1:0]\data_p1_reg[0]_0 ;
  output [7:0]\data_p1_reg[7]_0 ;
  input [0:0]SR;
  input ap_clk;
  input ack_in_t_reg_1;
  input s_axis_video_TVALID;
  input [7:0]s_axis_video_TDATA;
  input [2:0]DSP_A_B_DATA_INST;
  input [0:0]D;

  wire [0:0]D;
  wire [2:0]DSP_A_B_DATA_INST;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_2_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire ap_clk;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_2_n_0 ;
  wire [1:0]\data_p1_reg[0]_0 ;
  wire [7:0]\data_p1_reg[7]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [7:0]s_axis_video_TDATA;
  wire s_axis_video_TVALID;
  wire \state[0]_i_1_n_0 ;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAFEF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ack_in_t_reg_1),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(s_axis_video_TVALID),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFC05F00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ack_in_t_reg_1),
        .I1(ack_in_t_reg_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(s_axis_video_TVALID),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hDFFF0FC0)) 
    ack_in_t_i_2
       (.I0(s_axis_video_TVALID),
        .I1(ack_in_t_reg_1),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(ack_in_t_reg_0),
        .O(ack_in_t_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2_n_0),
        .Q(ack_in_t_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[0]_i_1 
       (.I0(s_axis_video_TDATA[0]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[0] ),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[1]_i_1 
       (.I0(s_axis_video_TDATA[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[1] ),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[2]_i_1 
       (.I0(s_axis_video_TDATA[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[2] ),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[3]_i_1 
       (.I0(s_axis_video_TDATA[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[3] ),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[4]_i_1 
       (.I0(s_axis_video_TDATA[4]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[4] ),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[5]_i_1 
       (.I0(s_axis_video_TDATA[5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[5] ),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[6]_i_1 
       (.I0(s_axis_video_TDATA[6]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[6] ),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAC20)) 
    \data_p1[7]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_1),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \data_p1[7]_i_2 
       (.I0(s_axis_video_TDATA[7]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\data_p2_reg_n_0_[7] ),
        .O(\data_p1[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(\data_p1_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_2_n_0 ),
        .Q(\data_p1_reg[7]_0 [7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[7]_i_1 
       (.I0(s_axis_video_TVALID),
        .I1(ack_in_t_reg_0),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(s_axis_video_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7F7C000)) 
    \state[0]_i_1 
       (.I0(ack_in_t_reg_1),
        .I1(Q[1]),
        .I2(s_axis_video_TVALID),
        .I3(ack_in_t_reg_0),
        .I4(Q[0]),
        .O(\state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D),
        .Q(Q[1]),
        .S(SR));
  LUT6 #(
    .INIT(64'h4F04B0FBB0FB4F04)) 
    tmp_product_i_7__0
       (.I0(\data_p1_reg[7]_0 [0]),
        .I1(DSP_A_B_DATA_INST[0]),
        .I2(\data_p1_reg[7]_0 [1]),
        .I3(DSP_A_B_DATA_INST[1]),
        .I4(DSP_A_B_DATA_INST[2]),
        .I5(\data_p1_reg[7]_0 [2]),
        .O(\data_p1_reg[0]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_product_i_9__0
       (.I0(\data_p1_reg[7]_0 [0]),
        .I1(DSP_A_B_DATA_INST[0]),
        .O(\data_p1_reg[0]_0 [0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
