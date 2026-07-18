// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:gige_dual_speed_top_wrapper:1.0
// IP Revision: 9

(* X_CORE_INFO = "gige_dual_speed_top_wrapper,Vivado 2024.2.2" *)
(* CHECK_LICENSE_TYPE = "design_1_gige_dual_speed_top_0_1,gige_dual_speed_top_wrapper,{}" *)
(* CORE_GENERATION_INFO = "design_1_gige_dual_speed_top_0_1,gige_dual_speed_top_wrapper,{x_ipProduct=Vivado 2024.2.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=gige_dual_speed_top_wrapper,x_ipVersion=1.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DEFAULT_LOCAL_IP=0xC0A80180,DEFAULT_LOCAL_MAC=0x0010A5010101,DEFAULT_CAM_PORT=0x2333}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_gige_dual_speed_top_0_1 (
  clk_156m,
  rst_156m,
  clk_125m,
  rst_125m,
  s_axi_lite_aclk,
  s_axi_lite_aresetn,
  s_axis_mac_10g_tdata,
  s_axis_mac_10g_tkeep,
  s_axis_mac_10g_tvalid,
  s_axis_mac_10g_tlast,
  s_axis_mac_10g_tuser,
  s_axis_mac_1g_tdata,
  s_axis_mac_1g_tvalid,
  s_axis_mac_1g_tlast,
  s_axis_mac_1g_tuser,
  s_axi_lite_awaddr,
  s_axi_lite_awvalid,
  s_axi_lite_awready,
  s_axi_lite_wdata,
  s_axi_lite_wstrb,
  s_axi_lite_wvalid,
  s_axi_lite_wready,
  s_axi_lite_bresp,
  s_axi_lite_bvalid,
  s_axi_lite_bready,
  s_axi_lite_araddr,
  s_axi_lite_arvalid,
  s_axi_lite_arready,
  s_axi_lite_rdata,
  s_axi_lite_rresp,
  s_axi_lite_rvalid,
  s_axi_lite_rready,
  m_axis_video_tdata,
  m_axis_video_tvalid,
  m_axis_video_tlast,
  m_axis_video_tuser,
  m_axis_video_tready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_156m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_156m, ASSOCIATED_BUSIF m_axis_video:s_axis_mac_10g, ASSOCIATED_RESET rst_156m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, INSERT_VIP 0" *)
input wire clk_156m;
input wire rst_156m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_125m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_125m, ASSOCIATED_BUSIF s_axis_mac_1g, ASSOCIATED_RESET rst_125m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, INSERT_VIP 0" *)
input wire clk_125m;
input wire rst_125m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, INSERT_VIP 0" *)
input wire s_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axi_lite_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_10g TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mac_10g, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [63 : 0] s_axis_mac_10g_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_10g TKEEP" *)
input wire [7 : 0] s_axis_mac_10g_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_10g TVALID" *)
input wire s_axis_mac_10g_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_10g TLAST" *)
input wire s_axis_mac_10g_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_10g TUSER" *)
input wire s_axis_mac_10g_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_1g TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_mac_1g, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [7 : 0] s_axis_mac_1g_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_1g TVALID" *)
input wire s_axis_mac_1g_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_1g TLAST" *)
input wire s_axis_mac_1g_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_mac_1g TUSER" *)
input wire s_axis_mac_1g_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, \
RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
input wire [11 : 0] s_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *)
input wire s_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *)
output wire s_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *)
input wire [31 : 0] s_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *)
input wire [3 : 0] s_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *)
input wire s_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *)
output wire s_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *)
output wire [1 : 0] s_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *)
output wire s_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *)
input wire s_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *)
input wire [11 : 0] s_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *)
input wire s_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *)
output wire s_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *)
output wire [31 : 0] s_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *)
output wire [1 : 0] s_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *)
output wire s_axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *)
input wire s_axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out125, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [63 : 0] m_axis_video_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TVALID" *)
output wire m_axis_video_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TLAST" *)
output wire m_axis_video_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TUSER" *)
output wire m_axis_video_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_video TREADY" *)
input wire m_axis_video_tready;

  gige_dual_speed_top_wrapper #(
    .DEFAULT_LOCAL_IP(32'HC0A80180),
    .DEFAULT_LOCAL_MAC(48'H0010A5010101),
    .DEFAULT_CAM_PORT(16'H2333)
  ) inst (
    .clk_156m(clk_156m),
    .rst_156m(rst_156m),
    .clk_125m(clk_125m),
    .rst_125m(rst_125m),
    .s_axi_lite_aclk(s_axi_lite_aclk),
    .s_axi_lite_aresetn(s_axi_lite_aresetn),
    .s_axis_mac_10g_tdata(s_axis_mac_10g_tdata),
    .s_axis_mac_10g_tkeep(s_axis_mac_10g_tkeep),
    .s_axis_mac_10g_tvalid(s_axis_mac_10g_tvalid),
    .s_axis_mac_10g_tlast(s_axis_mac_10g_tlast),
    .s_axis_mac_10g_tuser(s_axis_mac_10g_tuser),
    .s_axis_mac_1g_tdata(s_axis_mac_1g_tdata),
    .s_axis_mac_1g_tvalid(s_axis_mac_1g_tvalid),
    .s_axis_mac_1g_tlast(s_axis_mac_1g_tlast),
    .s_axis_mac_1g_tuser(s_axis_mac_1g_tuser),
    .s_axi_lite_awaddr(s_axi_lite_awaddr),
    .s_axi_lite_awvalid(s_axi_lite_awvalid),
    .s_axi_lite_awready(s_axi_lite_awready),
    .s_axi_lite_wdata(s_axi_lite_wdata),
    .s_axi_lite_wstrb(s_axi_lite_wstrb),
    .s_axi_lite_wvalid(s_axi_lite_wvalid),
    .s_axi_lite_wready(s_axi_lite_wready),
    .s_axi_lite_bresp(s_axi_lite_bresp),
    .s_axi_lite_bvalid(s_axi_lite_bvalid),
    .s_axi_lite_bready(s_axi_lite_bready),
    .s_axi_lite_araddr(s_axi_lite_araddr),
    .s_axi_lite_arvalid(s_axi_lite_arvalid),
    .s_axi_lite_arready(s_axi_lite_arready),
    .s_axi_lite_rdata(s_axi_lite_rdata),
    .s_axi_lite_rresp(s_axi_lite_rresp),
    .s_axi_lite_rvalid(s_axi_lite_rvalid),
    .s_axi_lite_rready(s_axi_lite_rready),
    .m_axis_video_tdata(m_axis_video_tdata),
    .m_axis_video_tvalid(m_axis_video_tvalid),
    .m_axis_video_tlast(m_axis_video_tlast),
    .m_axis_video_tuser(m_axis_video_tuser),
    .m_axis_video_tready(m_axis_video_tready)
  );
endmodule
