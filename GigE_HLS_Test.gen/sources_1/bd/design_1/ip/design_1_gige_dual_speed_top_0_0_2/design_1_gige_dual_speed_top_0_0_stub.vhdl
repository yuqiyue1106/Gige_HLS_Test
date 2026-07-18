-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Fri Jul 17 19:47:13 2026
-- Host        : REED-MVOT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Projects/FPGA_projects/GigE_HLS_Test/GigE_HLS_Test.gen/sources_1/bd/design_1/ip/design_1_gige_dual_speed_top_0_0_2/design_1_gige_dual_speed_top_0_0_stub.vhdl
-- Design      : design_1_gige_dual_speed_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_gige_dual_speed_top_0_0 is
  Port ( 
    clk_125m : in STD_LOGIC;
    clk90_125m : in STD_LOGIC;
    rst_125m : in STD_LOGIC;
    clk_156m : in STD_LOGIC;
    rst_156m : in STD_LOGIC;
    clk_200m : in STD_LOGIC;
    rst_200m : in STD_LOGIC;
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    phy_1g_rx_clk : in STD_LOGIC;
    phy_1g_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_1g_rx_ctl : in STD_LOGIC;
    phy_1g_tx_clk : out STD_LOGIC;
    phy_1g_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_1g_tx_ctl : out STD_LOGIC;
    phy_1g_reset_n : out STD_LOGIC;
    phy_1g_int_n : in STD_LOGIC;
    xgmii_rxd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_txd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_gige_dual_speed_top_0_0 : entity is "design_1_gige_dual_speed_top_0_0,gige_dual_speed_top_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_gige_dual_speed_top_0_0 : entity is "design_1_gige_dual_speed_top_0_0,gige_dual_speed_top_wrapper,{x_ipProduct=Vivado 2024.2.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=gige_dual_speed_top_wrapper,x_ipVersion=1.0,x_ipCoreRevision=23,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DEFAULT_LOCAL_IP=0xC0A80180,DEFAULT_LOCAL_MAC=0x0010A5010101,DEFAULT_CAM_PORT=0x2333}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_gige_dual_speed_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_gige_dual_speed_top_0_0 : entity is "package_project";
end design_1_gige_dual_speed_top_0_0;

architecture stub of design_1_gige_dual_speed_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_125m,clk90_125m,rst_125m,clk_156m,rst_156m,clk_200m,rst_200m,s_axi_lite_aclk,s_axi_lite_aresetn,phy_1g_rx_clk,phy_1g_rxd[3:0],phy_1g_rx_ctl,phy_1g_tx_clk,phy_1g_txd[3:0],phy_1g_tx_ctl,phy_1g_reset_n,phy_1g_int_n,xgmii_rxd[63:0],xgmii_rxc[7:0],xgmii_txd[63:0],xgmii_txc[7:0],s_axi_lite_awaddr[11:0],s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_araddr[11:0],s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rvalid,s_axi_lite_rready,m_axis_video_tdata[63:0],m_axis_video_tvalid,m_axis_video_tlast,m_axis_video_tuser,m_axis_video_tready";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_125m : signal is "xilinx.com:signal:clock:1.0 clk_125m CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk_125m : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_125m : signal is "XIL_INTERFACENAME clk_125m, FREQ_HZ 125000000, ASSOCIATED_RESET rst_125m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk90_125m : signal is "xilinx.com:signal:clock:1.0 clk90_125m CLK";
  attribute X_INTERFACE_MODE of clk90_125m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk90_125m : signal is "XIL_INTERFACENAME clk90_125m, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 90.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_125m : signal is "xilinx.com:signal:reset:1.0 rst_125m RST";
  attribute X_INTERFACE_MODE of rst_125m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_125m : signal is "XIL_INTERFACENAME rst_125m, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_156m : signal is "xilinx.com:signal:clock:1.0 clk_156m CLK";
  attribute X_INTERFACE_MODE of clk_156m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk_156m : signal is "XIL_INTERFACENAME clk_156m, FREQ_HZ 156250000, ASSOCIATED_RESET rst_156m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_156m : signal is "xilinx.com:signal:reset:1.0 rst_156m RST";
  attribute X_INTERFACE_MODE of rst_156m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_156m : signal is "XIL_INTERFACENAME rst_156m, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_200m : signal is "xilinx.com:signal:clock:1.0 clk_200m CLK";
  attribute X_INTERFACE_MODE of clk_200m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk_200m : signal is "XIL_INTERFACENAME clk_200m, FREQ_HZ 200000000, ASSOCIATED_BUSIF m_axis_video, ASSOCIATED_RESET rst_200m, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_200m : signal is "xilinx.com:signal:reset:1.0 rst_200m RST";
  attribute X_INTERFACE_MODE of rst_200m : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_200m : signal is "XIL_INTERFACENAME rst_200m, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_lite_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_2_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_lite_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of phy_1g_rx_clk : signal is "xilinx.com:signal:clock:1.0 phy_1g_rx_clk CLK";
  attribute X_INTERFACE_MODE of phy_1g_rx_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of phy_1g_rx_clk : signal is "XIL_INTERFACENAME phy_1g_rx_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of phy_1g_tx_clk : signal is "xilinx.com:signal:clock:1.0 phy_1g_tx_clk CLK";
  attribute X_INTERFACE_MODE of phy_1g_tx_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of phy_1g_tx_clk : signal is "XIL_INTERFACENAME phy_1g_tx_clk, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_gige_dual_speed_top_0_0_phy_1g_tx_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR";
  attribute X_INTERFACE_MODE of s_axi_lite_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_awaddr : signal is "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_2_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB";
  attribute X_INTERFACE_INFO of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR";
  attribute X_INTERFACE_INFO of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY";
  attribute X_INTERFACE_INFO of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute X_INTERFACE_MODE of m_axis_video_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_video_tdata : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute X_INTERFACE_INFO of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute X_INTERFACE_INFO of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute X_INTERFACE_INFO of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "gige_dual_speed_top_wrapper,Vivado 2024.2.2";
begin
end;
