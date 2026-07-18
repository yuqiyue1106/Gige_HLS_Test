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
// IP Revision: 22

(* X_CORE_INFO = "gige_dual_speed_top_wrapper,Vivado 2024.2.2" *)
(* CHECK_LICENSE_TYPE = "design_1_gige_dual_speed_top_0_0,gige_dual_speed_top_wrapper,{}" *)
(* CORE_GENERATION_INFO = "design_1_gige_dual_speed_top_0_0,gige_dual_speed_top_wrapper,{x_ipProduct=Vivado 2024.2.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=gige_dual_speed_top_wrapper,x_ipVersion=1.0,x_ipCoreRevision=22,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DEFAULT_LOCAL_IP=0xC0A80180,DEFAULT_LOCAL_MAC=0x0010A5010101,DEFAULT_CAM_PORT=0x2333}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_gige_dual_speed_top_0_0 (
  clk_125m,
  clk90_125m,
  rst_125m,
  clk_156m,
  rst_156m,
  clk_200m,
  rst_200m,
  s_axi_lite_aclk,
  s_axi_lite_aresetn,
  phy_1g_rx_clk,
  phy_1g_rxd,
  phy_1g_rx_ctl,
  phy_1g_tx_clk,
  phy_1g_txd,
  phy_1g_tx_ctl,
  phy_1g_reset_n,
  phy_1g_int_n,
  xgmii_rxd,
  xgmii_rxc,
  xgmii_txd,
  xgmii_txc,
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

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_125m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_125m, FREQ_HZ 125000000, ASSOCIATED_RESET rst_125m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
input wire clk_125m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk90_125m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk90_125m, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 90.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
input wire clk90_125m;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_125m RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_125m, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire rst_125m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_156m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_156m, FREQ_HZ 156250000, ASSOCIATED_RESET rst_156m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, INSERT_VIP 0" *)
input wire clk_156m;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_156m RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_156m, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst_156m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_200m CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_200m, FREQ_HZ 200000000, ASSOCIATED_BUSIF m_axis_video, ASSOCIATED_RESET rst_200m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, INSERT_VIP 0" *)
input wire clk_200m;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_200m RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_200m, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst_200m;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire s_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axi_lite_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_1g_rx_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_1g_rx_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire phy_1g_rx_clk;
input wire [3 : 0] phy_1g_rxd;
input wire phy_1g_rx_ctl;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 phy_1g_tx_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME phy_1g_tx_clk, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_gige_dual_speed_top_0_0_phy_1g_tx_clk, INSERT_VIP 0" *)
output wire phy_1g_tx_clk;
output wire [3 : 0] phy_1g_txd;
output wire phy_1g_tx_ctl;
output wire phy_1g_reset_n;
input wire phy_1g_int_n;
input wire [63 : 0] xgmii_rxd;
input wire [7 : 0] xgmii_rxc;
output wire [63 : 0] xgmii_txd;
output wire [7 : 0] xgmii_txc;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, LAYERED_METADATA undef, INSERT_VIP 0" *)
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
    .clk_125m(clk_125m),
    .clk90_125m(clk90_125m),
    .rst_125m(rst_125m),
    .clk_156m(clk_156m),
    .rst_156m(rst_156m),
    .clk_200m(clk_200m),
    .rst_200m(rst_200m),
    .s_axi_lite_aclk(s_axi_lite_aclk),
    .s_axi_lite_aresetn(s_axi_lite_aresetn),
    .phy_1g_rx_clk(phy_1g_rx_clk),
    .phy_1g_rxd(phy_1g_rxd),
    .phy_1g_rx_ctl(phy_1g_rx_ctl),
    .phy_1g_tx_clk(phy_1g_tx_clk),
    .phy_1g_txd(phy_1g_txd),
    .phy_1g_tx_ctl(phy_1g_tx_ctl),
    .phy_1g_reset_n(phy_1g_reset_n),
    .phy_1g_int_n(phy_1g_int_n),
    .xgmii_rxd(xgmii_rxd),
    .xgmii_rxc(xgmii_rxc),
    .xgmii_txd(xgmii_txd),
    .xgmii_txc(xgmii_txc),
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
