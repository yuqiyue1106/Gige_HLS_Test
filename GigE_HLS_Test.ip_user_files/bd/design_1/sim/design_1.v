//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Fri Jul 17 21:00:55 2026
//Host        : REED-MVOT running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=9,da_clkrst_cnt=10,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_IN1_D_wiz2_clk_n,
    CLK_IN1_D_wiz2_clk_p,
    phy_1g_int_n,
    phy_1g_reset_n,
    phy_1g_rx_clk,
    phy_1g_rx_ctl,
    phy_1g_rxd,
    phy_1g_tx_clk,
    phy_1g_tx_ctl,
    phy_1g_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_wiz2 CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1_D_wiz2, CAN_DEBUG false, FREQ_HZ 100000000" *) input CLK_IN1_D_wiz2_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_wiz2 CLK_P" *) input CLK_IN1_D_wiz2_clk_p;
  input phy_1g_int_n;
  output phy_1g_reset_n;
  input phy_1g_rx_clk;
  input phy_1g_rx_ctl;
  input [3:0]phy_1g_rxd;
  output phy_1g_tx_clk;
  output phy_1g_tx_ctl;
  output [3:0]phy_1g_txd;

  wire CLK_IN1_D_wiz2_clk_n;
  wire CLK_IN1_D_wiz2_clk_p;
  wire clk_ctrl_100m;
  wire clk_data_125m;
  wire clk_data_125m_90;
  wire clk_data_156m;
  wire clk_data_200m;
  wire [5:0]clkconv_to_brenner_ARADDR;
  wire clkconv_to_brenner_ARREADY;
  wire clkconv_to_brenner_ARVALID;
  wire [5:0]clkconv_to_brenner_AWADDR;
  wire clkconv_to_brenner_AWREADY;
  wire clkconv_to_brenner_AWVALID;
  wire clkconv_to_brenner_BREADY;
  wire [1:0]clkconv_to_brenner_BRESP;
  wire clkconv_to_brenner_BVALID;
  wire [31:0]clkconv_to_brenner_RDATA;
  wire clkconv_to_brenner_RREADY;
  wire [1:0]clkconv_to_brenner_RRESP;
  wire clkconv_to_brenner_RVALID;
  wire [31:0]clkconv_to_brenner_WDATA;
  wire clkconv_to_brenner_WREADY;
  wire [3:0]clkconv_to_brenner_WSTRB;
  wire clkconv_to_brenner_WVALID;
  wire [7:0]dwidth_to_brenner_TDATA;
  wire dwidth_to_brenner_TLAST;
  wire dwidth_to_brenner_TREADY;
  wire [0:0]dwidth_to_brenner_TUSER;
  wire dwidth_to_brenner_TVALID;
  wire [63:0]fifo_to_dwidth_TDATA;
  wire fifo_to_dwidth_TLAST;
  wire fifo_to_dwidth_TREADY;
  wire [0:0]fifo_to_dwidth_TUSER;
  wire fifo_to_dwidth_TVALID;
  wire phy_1g_int_n;
  wire phy_1g_reset_n;
  wire phy_1g_rx_clk;
  wire phy_1g_rx_ctl;
  wire [3:0]phy_1g_rxd;
  wire phy_1g_tx_clk;
  wire phy_1g_tx_ctl;
  wire [3:0]phy_1g_txd;
  wire ps_pl_resetn0;
  wire [39:0]ps_to_smartconnect_ARADDR;
  wire [1:0]ps_to_smartconnect_ARBURST;
  wire [3:0]ps_to_smartconnect_ARCACHE;
  wire [15:0]ps_to_smartconnect_ARID;
  wire [7:0]ps_to_smartconnect_ARLEN;
  wire ps_to_smartconnect_ARLOCK;
  wire [2:0]ps_to_smartconnect_ARPROT;
  wire [3:0]ps_to_smartconnect_ARQOS;
  wire ps_to_smartconnect_ARREADY;
  wire [2:0]ps_to_smartconnect_ARSIZE;
  wire [15:0]ps_to_smartconnect_ARUSER;
  wire ps_to_smartconnect_ARVALID;
  wire [39:0]ps_to_smartconnect_AWADDR;
  wire [1:0]ps_to_smartconnect_AWBURST;
  wire [3:0]ps_to_smartconnect_AWCACHE;
  wire [15:0]ps_to_smartconnect_AWID;
  wire [7:0]ps_to_smartconnect_AWLEN;
  wire ps_to_smartconnect_AWLOCK;
  wire [2:0]ps_to_smartconnect_AWPROT;
  wire [3:0]ps_to_smartconnect_AWQOS;
  wire ps_to_smartconnect_AWREADY;
  wire [2:0]ps_to_smartconnect_AWSIZE;
  wire [15:0]ps_to_smartconnect_AWUSER;
  wire ps_to_smartconnect_AWVALID;
  wire [15:0]ps_to_smartconnect_BID;
  wire ps_to_smartconnect_BREADY;
  wire [1:0]ps_to_smartconnect_BRESP;
  wire ps_to_smartconnect_BVALID;
  wire [127:0]ps_to_smartconnect_RDATA;
  wire [15:0]ps_to_smartconnect_RID;
  wire ps_to_smartconnect_RLAST;
  wire ps_to_smartconnect_RREADY;
  wire [1:0]ps_to_smartconnect_RRESP;
  wire ps_to_smartconnect_RVALID;
  wire [127:0]ps_to_smartconnect_WDATA;
  wire ps_to_smartconnect_WLAST;
  wire ps_to_smartconnect_WREADY;
  wire [15:0]ps_to_smartconnect_WSTRB;
  wire ps_to_smartconnect_WVALID;
  wire [0:0]rst_ctrl_100m;
  wire [0:0]rst_data_125m;
  wire [0:0]rst_data_156m;
  wire [0:0]rst_data_200m;
  wire [5:0]smartconnect_to_clkconv_ARADDR;
  wire [2:0]smartconnect_to_clkconv_ARPROT;
  wire smartconnect_to_clkconv_ARREADY;
  wire smartconnect_to_clkconv_ARVALID;
  wire [5:0]smartconnect_to_clkconv_AWADDR;
  wire [2:0]smartconnect_to_clkconv_AWPROT;
  wire smartconnect_to_clkconv_AWREADY;
  wire smartconnect_to_clkconv_AWVALID;
  wire smartconnect_to_clkconv_BREADY;
  wire [1:0]smartconnect_to_clkconv_BRESP;
  wire smartconnect_to_clkconv_BVALID;
  wire [31:0]smartconnect_to_clkconv_RDATA;
  wire smartconnect_to_clkconv_RREADY;
  wire [1:0]smartconnect_to_clkconv_RRESP;
  wire smartconnect_to_clkconv_RVALID;
  wire [31:0]smartconnect_to_clkconv_WDATA;
  wire smartconnect_to_clkconv_WREADY;
  wire [3:0]smartconnect_to_clkconv_WSTRB;
  wire smartconnect_to_clkconv_WVALID;
  wire [11:0]smartconnect_to_gige_ARADDR;
  wire smartconnect_to_gige_ARREADY;
  wire smartconnect_to_gige_ARVALID;
  wire [11:0]smartconnect_to_gige_AWADDR;
  wire smartconnect_to_gige_AWREADY;
  wire smartconnect_to_gige_AWVALID;
  wire smartconnect_to_gige_BREADY;
  wire [1:0]smartconnect_to_gige_BRESP;
  wire smartconnect_to_gige_BVALID;
  wire [31:0]smartconnect_to_gige_RDATA;
  wire smartconnect_to_gige_RREADY;
  wire [1:0]smartconnect_to_gige_RRESP;
  wire smartconnect_to_gige_RVALID;
  wire [31:0]smartconnect_to_gige_WDATA;
  wire smartconnect_to_gige_WREADY;
  wire [3:0]smartconnect_to_gige_WSTRB;
  wire smartconnect_to_gige_WVALID;
  wire [63:0]video_to_fifo_TDATA;
  wire video_to_fifo_TLAST;
  wire video_to_fifo_TREADY;
  wire video_to_fifo_TUSER;
  wire video_to_fifo_TVALID;

  design_1_axi_clk_conv_0_0 axi_clk_conv_0
       (.m_axi_aclk(clk_data_200m),
        .m_axi_araddr(clkconv_to_brenner_ARADDR),
        .m_axi_aresetn(rst_data_200m),
        .m_axi_arready(clkconv_to_brenner_ARREADY),
        .m_axi_arvalid(clkconv_to_brenner_ARVALID),
        .m_axi_awaddr(clkconv_to_brenner_AWADDR),
        .m_axi_awready(clkconv_to_brenner_AWREADY),
        .m_axi_awvalid(clkconv_to_brenner_AWVALID),
        .m_axi_bready(clkconv_to_brenner_BREADY),
        .m_axi_bresp(clkconv_to_brenner_BRESP),
        .m_axi_bvalid(clkconv_to_brenner_BVALID),
        .m_axi_rdata(clkconv_to_brenner_RDATA),
        .m_axi_rready(clkconv_to_brenner_RREADY),
        .m_axi_rresp(clkconv_to_brenner_RRESP),
        .m_axi_rvalid(clkconv_to_brenner_RVALID),
        .m_axi_wdata(clkconv_to_brenner_WDATA),
        .m_axi_wready(clkconv_to_brenner_WREADY),
        .m_axi_wstrb(clkconv_to_brenner_WSTRB),
        .m_axi_wvalid(clkconv_to_brenner_WVALID),
        .s_axi_aclk(clk_ctrl_100m),
        .s_axi_araddr(smartconnect_to_clkconv_ARADDR),
        .s_axi_aresetn(rst_ctrl_100m),
        .s_axi_arprot(smartconnect_to_clkconv_ARPROT),
        .s_axi_arready(smartconnect_to_clkconv_ARREADY),
        .s_axi_arvalid(smartconnect_to_clkconv_ARVALID),
        .s_axi_awaddr(smartconnect_to_clkconv_AWADDR),
        .s_axi_awprot(smartconnect_to_clkconv_AWPROT),
        .s_axi_awready(smartconnect_to_clkconv_AWREADY),
        .s_axi_awvalid(smartconnect_to_clkconv_AWVALID),
        .s_axi_bready(smartconnect_to_clkconv_BREADY),
        .s_axi_bresp(smartconnect_to_clkconv_BRESP),
        .s_axi_bvalid(smartconnect_to_clkconv_BVALID),
        .s_axi_rdata(smartconnect_to_clkconv_RDATA),
        .s_axi_rready(smartconnect_to_clkconv_RREADY),
        .s_axi_rresp(smartconnect_to_clkconv_RRESP),
        .s_axi_rvalid(smartconnect_to_clkconv_RVALID),
        .s_axi_wdata(smartconnect_to_clkconv_WDATA),
        .s_axi_wready(smartconnect_to_clkconv_WREADY),
        .s_axi_wstrb(smartconnect_to_clkconv_WSTRB),
        .s_axi_wvalid(smartconnect_to_clkconv_WVALID));
  design_1_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(clk_data_200m),
        .m_axis_tdata(fifo_to_dwidth_TDATA),
        .m_axis_tlast(fifo_to_dwidth_TLAST),
        .m_axis_tready(fifo_to_dwidth_TREADY),
        .m_axis_tuser(fifo_to_dwidth_TUSER),
        .m_axis_tvalid(fifo_to_dwidth_TVALID),
        .s_axis_aclk(clk_data_200m),
        .s_axis_aresetn(rst_data_200m),
        .s_axis_tdata(video_to_fifo_TDATA),
        .s_axis_tlast(video_to_fifo_TLAST),
        .s_axis_tready(video_to_fifo_TREADY),
        .s_axis_tuser(video_to_fifo_TUSER),
        .s_axis_tvalid(video_to_fifo_TVALID));
  design_1_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(clk_data_200m),
        .aresetn(rst_data_200m),
        .m_axis_tdata(dwidth_to_brenner_TDATA),
        .m_axis_tlast(dwidth_to_brenner_TLAST),
        .m_axis_tready(dwidth_to_brenner_TREADY),
        .m_axis_tuser(dwidth_to_brenner_TUSER),
        .m_axis_tvalid(dwidth_to_brenner_TVALID),
        .s_axis_tdata(fifo_to_dwidth_TDATA),
        .s_axis_tlast(fifo_to_dwidth_TLAST),
        .s_axis_tready(fifo_to_dwidth_TREADY),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fifo_to_dwidth_TUSER}),
        .s_axis_tvalid(fifo_to_dwidth_TVALID));
  design_1_brenner_accel_0_0 brenner_accel_0
       (.ap_clk(clk_data_200m),
        .ap_rst_n(rst_data_200m),
        .s_axi_ctrl_ARADDR(clkconv_to_brenner_ARADDR),
        .s_axi_ctrl_ARREADY(clkconv_to_brenner_ARREADY),
        .s_axi_ctrl_ARVALID(clkconv_to_brenner_ARVALID),
        .s_axi_ctrl_AWADDR(clkconv_to_brenner_AWADDR),
        .s_axi_ctrl_AWREADY(clkconv_to_brenner_AWREADY),
        .s_axi_ctrl_AWVALID(clkconv_to_brenner_AWVALID),
        .s_axi_ctrl_BREADY(clkconv_to_brenner_BREADY),
        .s_axi_ctrl_BRESP(clkconv_to_brenner_BRESP),
        .s_axi_ctrl_BVALID(clkconv_to_brenner_BVALID),
        .s_axi_ctrl_RDATA(clkconv_to_brenner_RDATA),
        .s_axi_ctrl_RREADY(clkconv_to_brenner_RREADY),
        .s_axi_ctrl_RRESP(clkconv_to_brenner_RRESP),
        .s_axi_ctrl_RVALID(clkconv_to_brenner_RVALID),
        .s_axi_ctrl_WDATA(clkconv_to_brenner_WDATA),
        .s_axi_ctrl_WREADY(clkconv_to_brenner_WREADY),
        .s_axi_ctrl_WSTRB(clkconv_to_brenner_WSTRB),
        .s_axi_ctrl_WVALID(clkconv_to_brenner_WVALID),
        .s_axis_video_TDATA(dwidth_to_brenner_TDATA),
        .s_axis_video_TDEST(1'b0),
        .s_axis_video_TID(1'b0),
        .s_axis_video_TKEEP(1'b1),
        .s_axis_video_TLAST(dwidth_to_brenner_TLAST),
        .s_axis_video_TREADY(dwidth_to_brenner_TREADY),
        .s_axis_video_TSTRB(1'b1),
        .s_axis_video_TUSER(dwidth_to_brenner_TUSER),
        .s_axis_video_TVALID(dwidth_to_brenner_TVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_ctrl_100m),
        .clk_out1(clk_data_125m),
        .clk_out2(clk_data_125m_90),
        .clk_out3(clk_data_156m));
  design_1_clk_wiz_1_0 clk_wiz_1
       (.clk_in1(clk_ctrl_100m),
        .clk_out1(clk_data_200m));
  design_1_clk_wiz_2_0 clk_wiz_2
       (.clk_in1_n(CLK_IN1_D_wiz2_clk_n),
        .clk_in1_p(CLK_IN1_D_wiz2_clk_p),
        .clk_out1(clk_ctrl_100m));
  design_1_gige_dual_speed_top_0_0 gige_dual_speed_top_0
       (.clk90_125m(clk_data_125m_90),
        .clk_125m(clk_data_125m),
        .clk_156m(clk_data_156m),
        .clk_200m(clk_data_200m),
        .m_axis_video_tdata(video_to_fifo_TDATA),
        .m_axis_video_tlast(video_to_fifo_TLAST),
        .m_axis_video_tready(video_to_fifo_TREADY),
        .m_axis_video_tuser(video_to_fifo_TUSER),
        .m_axis_video_tvalid(video_to_fifo_TVALID),
        .phy_1g_int_n(phy_1g_int_n),
        .phy_1g_reset_n(phy_1g_reset_n),
        .phy_1g_rx_clk(phy_1g_rx_clk),
        .phy_1g_rx_ctl(phy_1g_rx_ctl),
        .phy_1g_rxd(phy_1g_rxd),
        .phy_1g_tx_clk(phy_1g_tx_clk),
        .phy_1g_tx_ctl(phy_1g_tx_ctl),
        .phy_1g_txd(phy_1g_txd),
        .rst_125m(rst_data_125m),
        .rst_156m(rst_data_156m),
        .rst_200m(rst_data_200m),
        .s_axi_lite_aclk(clk_ctrl_100m),
        .s_axi_lite_araddr(smartconnect_to_gige_ARADDR),
        .s_axi_lite_aresetn(rst_ctrl_100m),
        .s_axi_lite_arready(smartconnect_to_gige_ARREADY),
        .s_axi_lite_arvalid(smartconnect_to_gige_ARVALID),
        .s_axi_lite_awaddr(smartconnect_to_gige_AWADDR),
        .s_axi_lite_awready(smartconnect_to_gige_AWREADY),
        .s_axi_lite_awvalid(smartconnect_to_gige_AWVALID),
        .s_axi_lite_bready(smartconnect_to_gige_BREADY),
        .s_axi_lite_bresp(smartconnect_to_gige_BRESP),
        .s_axi_lite_bvalid(smartconnect_to_gige_BVALID),
        .s_axi_lite_rdata(smartconnect_to_gige_RDATA),
        .s_axi_lite_rready(smartconnect_to_gige_RREADY),
        .s_axi_lite_rresp(smartconnect_to_gige_RRESP),
        .s_axi_lite_rvalid(smartconnect_to_gige_RVALID),
        .s_axi_lite_wdata(smartconnect_to_gige_WDATA),
        .s_axi_lite_wready(smartconnect_to_gige_WREADY),
        .s_axi_lite_wstrb(smartconnect_to_gige_WSTRB),
        .s_axi_lite_wvalid(smartconnect_to_gige_WVALID),
        .xgmii_rxc({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .xgmii_rxd({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  design_1_psr_100m_0 psr_100m
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ctrl_100m),
        .slowest_sync_clk(clk_ctrl_100m));
  design_1_psr_125m_0 psr_125m
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_data_125m),
        .slowest_sync_clk(clk_data_125m));
  design_1_psr_156m_0 psr_156m
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_data_156m),
        .slowest_sync_clk(clk_data_156m));
  design_1_psr_200m_0 psr_200m
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_data_200m),
        .slowest_sync_clk(clk_data_200m));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_to_clkconv_ARADDR),
        .M00_AXI_arprot(smartconnect_to_clkconv_ARPROT),
        .M00_AXI_arready(smartconnect_to_clkconv_ARREADY),
        .M00_AXI_arvalid(smartconnect_to_clkconv_ARVALID),
        .M00_AXI_awaddr(smartconnect_to_clkconv_AWADDR),
        .M00_AXI_awprot(smartconnect_to_clkconv_AWPROT),
        .M00_AXI_awready(smartconnect_to_clkconv_AWREADY),
        .M00_AXI_awvalid(smartconnect_to_clkconv_AWVALID),
        .M00_AXI_bready(smartconnect_to_clkconv_BREADY),
        .M00_AXI_bresp(smartconnect_to_clkconv_BRESP),
        .M00_AXI_bvalid(smartconnect_to_clkconv_BVALID),
        .M00_AXI_rdata(smartconnect_to_clkconv_RDATA),
        .M00_AXI_rready(smartconnect_to_clkconv_RREADY),
        .M00_AXI_rresp(smartconnect_to_clkconv_RRESP),
        .M00_AXI_rvalid(smartconnect_to_clkconv_RVALID),
        .M00_AXI_wdata(smartconnect_to_clkconv_WDATA),
        .M00_AXI_wready(smartconnect_to_clkconv_WREADY),
        .M00_AXI_wstrb(smartconnect_to_clkconv_WSTRB),
        .M00_AXI_wvalid(smartconnect_to_clkconv_WVALID),
        .M01_AXI_araddr(smartconnect_to_gige_ARADDR),
        .M01_AXI_arready(smartconnect_to_gige_ARREADY),
        .M01_AXI_arvalid(smartconnect_to_gige_ARVALID),
        .M01_AXI_awaddr(smartconnect_to_gige_AWADDR),
        .M01_AXI_awready(smartconnect_to_gige_AWREADY),
        .M01_AXI_awvalid(smartconnect_to_gige_AWVALID),
        .M01_AXI_bready(smartconnect_to_gige_BREADY),
        .M01_AXI_bresp(smartconnect_to_gige_BRESP),
        .M01_AXI_bvalid(smartconnect_to_gige_BVALID),
        .M01_AXI_rdata(smartconnect_to_gige_RDATA),
        .M01_AXI_rready(smartconnect_to_gige_RREADY),
        .M01_AXI_rresp(smartconnect_to_gige_RRESP),
        .M01_AXI_rvalid(smartconnect_to_gige_RVALID),
        .M01_AXI_wdata(smartconnect_to_gige_WDATA),
        .M01_AXI_wready(smartconnect_to_gige_WREADY),
        .M01_AXI_wstrb(smartconnect_to_gige_WSTRB),
        .M01_AXI_wvalid(smartconnect_to_gige_WVALID),
        .S00_AXI_araddr(ps_to_smartconnect_ARADDR),
        .S00_AXI_arburst(ps_to_smartconnect_ARBURST),
        .S00_AXI_arcache(ps_to_smartconnect_ARCACHE),
        .S00_AXI_arid(ps_to_smartconnect_ARID),
        .S00_AXI_arlen(ps_to_smartconnect_ARLEN),
        .S00_AXI_arlock(ps_to_smartconnect_ARLOCK),
        .S00_AXI_arprot(ps_to_smartconnect_ARPROT),
        .S00_AXI_arqos(ps_to_smartconnect_ARQOS),
        .S00_AXI_arready(ps_to_smartconnect_ARREADY),
        .S00_AXI_arsize(ps_to_smartconnect_ARSIZE),
        .S00_AXI_aruser(ps_to_smartconnect_ARUSER),
        .S00_AXI_arvalid(ps_to_smartconnect_ARVALID),
        .S00_AXI_awaddr(ps_to_smartconnect_AWADDR),
        .S00_AXI_awburst(ps_to_smartconnect_AWBURST),
        .S00_AXI_awcache(ps_to_smartconnect_AWCACHE),
        .S00_AXI_awid(ps_to_smartconnect_AWID),
        .S00_AXI_awlen(ps_to_smartconnect_AWLEN),
        .S00_AXI_awlock(ps_to_smartconnect_AWLOCK),
        .S00_AXI_awprot(ps_to_smartconnect_AWPROT),
        .S00_AXI_awqos(ps_to_smartconnect_AWQOS),
        .S00_AXI_awready(ps_to_smartconnect_AWREADY),
        .S00_AXI_awsize(ps_to_smartconnect_AWSIZE),
        .S00_AXI_awuser(ps_to_smartconnect_AWUSER),
        .S00_AXI_awvalid(ps_to_smartconnect_AWVALID),
        .S00_AXI_bid(ps_to_smartconnect_BID),
        .S00_AXI_bready(ps_to_smartconnect_BREADY),
        .S00_AXI_bresp(ps_to_smartconnect_BRESP),
        .S00_AXI_bvalid(ps_to_smartconnect_BVALID),
        .S00_AXI_rdata(ps_to_smartconnect_RDATA),
        .S00_AXI_rid(ps_to_smartconnect_RID),
        .S00_AXI_rlast(ps_to_smartconnect_RLAST),
        .S00_AXI_rready(ps_to_smartconnect_RREADY),
        .S00_AXI_rresp(ps_to_smartconnect_RRESP),
        .S00_AXI_rvalid(ps_to_smartconnect_RVALID),
        .S00_AXI_wdata(ps_to_smartconnect_WDATA),
        .S00_AXI_wlast(ps_to_smartconnect_WLAST),
        .S00_AXI_wready(ps_to_smartconnect_WREADY),
        .S00_AXI_wstrb(ps_to_smartconnect_WSTRB),
        .S00_AXI_wvalid(ps_to_smartconnect_WVALID),
        .aclk(clk_ctrl_100m),
        .aresetn(rst_ctrl_100m));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(ps_to_smartconnect_ARADDR),
        .maxigp0_arburst(ps_to_smartconnect_ARBURST),
        .maxigp0_arcache(ps_to_smartconnect_ARCACHE),
        .maxigp0_arid(ps_to_smartconnect_ARID),
        .maxigp0_arlen(ps_to_smartconnect_ARLEN),
        .maxigp0_arlock(ps_to_smartconnect_ARLOCK),
        .maxigp0_arprot(ps_to_smartconnect_ARPROT),
        .maxigp0_arqos(ps_to_smartconnect_ARQOS),
        .maxigp0_arready(ps_to_smartconnect_ARREADY),
        .maxigp0_arsize(ps_to_smartconnect_ARSIZE),
        .maxigp0_aruser(ps_to_smartconnect_ARUSER),
        .maxigp0_arvalid(ps_to_smartconnect_ARVALID),
        .maxigp0_awaddr(ps_to_smartconnect_AWADDR),
        .maxigp0_awburst(ps_to_smartconnect_AWBURST),
        .maxigp0_awcache(ps_to_smartconnect_AWCACHE),
        .maxigp0_awid(ps_to_smartconnect_AWID),
        .maxigp0_awlen(ps_to_smartconnect_AWLEN),
        .maxigp0_awlock(ps_to_smartconnect_AWLOCK),
        .maxigp0_awprot(ps_to_smartconnect_AWPROT),
        .maxigp0_awqos(ps_to_smartconnect_AWQOS),
        .maxigp0_awready(ps_to_smartconnect_AWREADY),
        .maxigp0_awsize(ps_to_smartconnect_AWSIZE),
        .maxigp0_awuser(ps_to_smartconnect_AWUSER),
        .maxigp0_awvalid(ps_to_smartconnect_AWVALID),
        .maxigp0_bid(ps_to_smartconnect_BID),
        .maxigp0_bready(ps_to_smartconnect_BREADY),
        .maxigp0_bresp(ps_to_smartconnect_BRESP),
        .maxigp0_bvalid(ps_to_smartconnect_BVALID),
        .maxigp0_rdata(ps_to_smartconnect_RDATA),
        .maxigp0_rid(ps_to_smartconnect_RID),
        .maxigp0_rlast(ps_to_smartconnect_RLAST),
        .maxigp0_rready(ps_to_smartconnect_RREADY),
        .maxigp0_rresp(ps_to_smartconnect_RRESP),
        .maxigp0_rvalid(ps_to_smartconnect_RVALID),
        .maxigp0_wdata(ps_to_smartconnect_WDATA),
        .maxigp0_wlast(ps_to_smartconnect_WLAST),
        .maxigp0_wready(ps_to_smartconnect_WREADY),
        .maxigp0_wstrb(ps_to_smartconnect_WSTRB),
        .maxigp0_wvalid(ps_to_smartconnect_WVALID),
        .maxihpm0_fpd_aclk(clk_ctrl_100m),
        .pl_resetn0(ps_pl_resetn0));
endmodule
