`resetall
`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Module Name: gige_dual_speed_top_wrapper
// Description: GigE Vision 双速 (1G/10G) 相机图像接收 IP 核
//              1G: 内置 RGMII MAC + UDP/IP/ARP 协议栈 + GVSP 解包，直连 RJ45 PHY
//              10G: 内置 XGMII MAC + GVSP 解包，直连 XGMII PHY
//              统一输出 64-bit AXI4-Stream 视频流 (200 MHz)
//////////////////////////////////////////////////////////////////////////////////

module gige_dual_speed_top_wrapper #(
    parameter [31:0] DEFAULT_LOCAL_IP   = 32'hc0a80180,
    parameter [47:0] DEFAULT_LOCAL_MAC  = 48'h0010a5010101,
    parameter [15:0] DEFAULT_CAM_PORT   = 16'h2333
)(
    // =========================================================================
    // 1. 系统时钟与复位
    // =========================================================================
    input  wire        clk_125m,          // 1G MAC 逻辑时钟 (125 MHz)
    input  wire        clk90_125m,        // 1G RGMII TX 90度相移时钟
    input  wire        rst_125m,
    input  wire        clk_156m,          // 10G MAC 核心时钟 (156.25 MHz)
    input  wire        rst_156m,
    input  wire        clk_200m,          // 视频输出时钟 (200 MHz)
    input  wire        rst_200m,
    input  wire        s_axi_lite_aclk,   // AXI-Lite 配置时钟
    input  wire        s_axi_lite_aresetn,

    // =========================================================================
    // 2. 1G RGMII PHY 接口 (直连千兆 PHY 芯片，如 RTL8211E)
    // =========================================================================
    input  wire        phy_1g_rx_clk,     // PHY 接收时钟 (125 MHz)
    input  wire [3:0]  phy_1g_rxd,        // PHY 接收数据 (DDR)
    input  wire        phy_1g_rx_ctl,     // PHY 接收控制
    output wire        phy_1g_tx_clk,     // PHY 发送时钟 (90度相移)
    output wire [3:0]  phy_1g_txd,        // PHY 发送数据 (DDR)
    output wire        phy_1g_tx_ctl,     // PHY 发送控制
    output wire        phy_1g_reset_n,    // PHY 硬件复位 (低有效)
    input  wire        phy_1g_int_n,      // PHY 中断 (低有效)

    // =========================================================================
    // 3. 10G XGMII PHY 接口 (直连万兆 PHY 或 SFP+ 模块)
    // =========================================================================
    input  wire [63:0] xgmii_rxd,        // XGMII 接收数据 (64-bit)
    input  wire [7:0]  xgmii_rxc,        // XGMII 接收控制
    output wire [63:0] xgmii_txd,        // XGMII 发送数据 (64-bit)
    output wire [7:0]  xgmii_txc,        // XGMII 发送控制

    // =========================================================================
    // 4. 用户控制总线：标准 AXI4-Lite Slave 接口
    // =========================================================================
    input  wire [11:0] s_axi_lite_awaddr,
    input  wire        s_axi_lite_awvalid,
    output wire        s_axi_lite_awready,
    input  wire [31:0] s_axi_lite_wdata,
    input  wire [3:0]  s_axi_lite_wstrb,
    input  wire        s_axi_lite_wvalid,
    output wire        s_axi_lite_wready,
    output wire [1:0]  s_axi_lite_bresp,
    output wire        s_axi_lite_bvalid,
    input  wire        s_axi_lite_bready,
    input  wire [11:0] s_axi_lite_araddr,
    input  wire        s_axi_lite_arvalid,
    output wire        s_axi_lite_arready,
    output wire [31:0] s_axi_lite_rdata,
    output wire [1:0]  s_axi_lite_rresp,
    output wire        s_axi_lite_rvalid,
    input  wire        s_axi_lite_rready,

    // =========================================================================
    // 5. 统一输出接口：标准 AXI4-Stream Master (200 MHz, 送往 HLS Brenner 算子)
    // =========================================================================
    output wire [63:0] m_axis_video_tdata,
    output wire        m_axis_video_tvalid,
    output wire        m_axis_video_tlast,
    output wire        m_axis_video_tuser,
    input  wire        m_axis_video_tready
);

    // -------------------------------------------------------------------------
    // 内部信号
    // -------------------------------------------------------------------------
    wire mode_select_10g;

    // 1G 路径: eth_1g_gige_subpath 输出的 8-bit 图像流 (125 MHz 域)
    wire [7:0] video_1g_tdata;
    wire       video_1g_tvalid;
    wire       video_1g_tlast;
    wire       video_1g_tuser;

    // 1G 路径: 8位 -> 64位 CDC 后的信号 (200 MHz 域)
    wire [63:0] video_1g_to_64_tdata;
    wire        video_1g_to_64_tvalid;
    wire        video_1g_to_64_tlast;
    wire        video_1g_to_64_tuser;
    wire        video_1g_to_64_tready;

    // 10G 路径: eth_mac_10g_fifo 输出的 64-bit 以太网帧 (156.25 MHz 域)
    wire [63:0] mac_10g_rx_tdata;
    wire [7:0]  mac_10g_rx_tkeep;
    wire        mac_10g_rx_tvalid;
    wire        mac_10g_rx_tlast;
    wire        mac_10g_rx_tuser;

    // 10G 路径: gvsp_udp_rx_64b 解包后的 64-bit 图像流 (156.25 MHz 域)
    wire [63:0] video_10g_tdata;
    wire        video_10g_tvalid;
    wire        video_10g_tlast;
    wire        video_10g_tuser;
    wire        video_10g_tready;

    // 10G 路径: CDC 跨时钟域后的 64-bit 图像流 (200 MHz 域)
    wire [63:0] video_10g_cdc_tdata;
    wire        video_10g_cdc_tvalid;
    wire        video_10g_cdc_tlast;
    wire        video_10g_cdc_tuser;
    wire        video_10g_cdc_tready;

    // -------------------------------------------------------------------------
    // 模式选择 (TODO: 由 AXI-Lite 寄存器控制)
    // -------------------------------------------------------------------------
    assign mode_select_10g = 1'b0;

    // =========================================================================
    // 1G 路径: eth_1g_gige_subpath (内置 RGMII MAC + UDP/IP/ARP + GVSP 解包)
    // =========================================================================
    eth_1g_gige_subpath #(
        .TARGET("XILINX")
    ) u_eth_1g_path (
        .clk                  (clk_125m),
        .clk90                (clk90_125m),
        .rst                  (rst_125m),
        // RGMII PHY 接口
        .phy_rx_clk           (phy_1g_rx_clk),
        .phy_rxd              (phy_1g_rxd),
        .phy_rx_ctl           (phy_1g_rx_ctl),
        .phy_tx_clk           (phy_1g_tx_clk),
        .phy_txd              (phy_1g_txd),
        .phy_tx_ctl           (phy_1g_tx_ctl),
        .phy_reset_n          (phy_1g_reset_n),
        .phy_int_n            (phy_1g_int_n),
        // GVSP 解包输出 (8-bit 图像流, 125 MHz 域)
        .tx_gvsp_hdr_valid         (),
        .tx_gvsp_pckid             (),
        .tx_gvsp_end_frame_flag    (),
        .tx_gvsp_payload_axis_tvalid  (video_1g_tvalid),
        .tx_gvsp_payload_axis_tready  (1'b1),
        .tx_gvsp_payload_axis_tdata   (video_1g_tdata),
        .tx_gvsp_payload_axis_tlast   (video_1g_tlast),
        .tx_gvsp_payload_axis_tuser   (video_1g_tuser),
        .tx_gvsp_payload_axis_tkeep   ()
    );

    // =========================================================================
    // 1G 路径: 8-bit -> 64-bit 异步 FIFO + 宽度转换 (CDC: 125 MHz -> 200 MHz)
    // =========================================================================
    axis_async_fifo_adapter #(
        .DEPTH           (4096),
        .S_DATA_WIDTH    (8),
        .M_DATA_WIDTH    (64)
    ) u_1g_to_64b_adapter (
        .s_clk               (clk_125m),
        .s_rst               (rst_125m),
        .s_axis_tdata       (video_1g_tdata),
        .s_axis_tkeep       (1'b1),
        .s_axis_tvalid      (video_1g_tvalid),
        .s_axis_tready      (),
        .s_axis_tlast       (video_1g_tlast),
        .s_axis_tid         (8'b0),
        .s_axis_tdest       (8'b0),
        .s_axis_tuser       (video_1g_tuser),
        .m_clk               (clk_200m),
        .m_rst               (rst_200m),
        .m_axis_tdata       (video_1g_to_64_tdata),
        .m_axis_tkeep       (),
        .m_axis_tvalid      (video_1g_to_64_tvalid),
        .m_axis_tready      (video_1g_to_64_tready),
        .m_axis_tlast       (video_1g_to_64_tlast),
        .m_axis_tid         (),
        .m_axis_tdest       (),
        .m_axis_tuser       (video_1g_to_64_tuser),
        .s_pause_req        (1'b0),
        .s_pause_ack        (),
        .m_pause_req        (1'b0),
        .m_pause_ack        (),
        .s_status_depth          (),
        .s_status_depth_commit   (),
        .s_status_overflow       (),
        .s_status_bad_frame      (),
        .s_status_good_frame     (),
        .m_status_depth          (),
        .m_status_depth_commit   (),
        .m_status_overflow       (),
        .m_status_bad_frame      (),
        .m_status_good_frame     ()
    );

    // =========================================================================
    // 10G 路径: eth_mac_10g_fifo (内置 XGMII MAC + TX/RX FIFO)
    // =========================================================================
    eth_mac_10g_fifo #(
        .DATA_WIDTH         (64),
        .AXIS_DATA_WIDTH    (64),
        .ENABLE_PADDING     (1),
        .ENABLE_DIC         (1),
        .MIN_FRAME_LENGTH   (64),
        .TX_FIFO_DEPTH      (4096),
        .TX_FRAME_FIFO      (1),
        .RX_FIFO_DEPTH      (4096),
        .RX_FRAME_FIFO      (1),
        .PTP_TS_ENABLE      (0)
    ) u_eth_10g_mac (
        .rx_clk             (clk_156m),
        .rx_rst             (rst_156m),
        .tx_clk             (clk_156m),
        .tx_rst             (rst_156m),
        .logic_clk          (clk_156m),
        .logic_rst          (rst_156m),
        .ptp_sample_clk     (1'b0),
        // TX AXI (未使用: GigE Vision 仅接收图像流)
        .tx_axis_tdata      (64'b0),
        .tx_axis_tkeep      (8'b0),
        .tx_axis_tvalid     (1'b0),
        .tx_axis_tready     (),
        .tx_axis_tlast      (1'b0),
        .tx_axis_tuser      (1'b0),
        // TX PTP (未使用)
        .m_axis_tx_ptp_ts_96     (),
        .m_axis_tx_ptp_ts_tag    (),
        .m_axis_tx_ptp_ts_valid  (),
        .m_axis_tx_ptp_ts_ready  (1'b0),
        // RX AXI (输出: 完整以太网帧, 64-bit, 156.25 MHz)
        .rx_axis_tdata      (mac_10g_rx_tdata),
        .rx_axis_tkeep      (mac_10g_rx_tkeep),
        .rx_axis_tvalid     (mac_10g_rx_tvalid),
        .rx_axis_tready     (1'b1),
        .rx_axis_tlast      (mac_10g_rx_tlast),
        .rx_axis_tuser      (mac_10g_rx_tuser),
        // XGMII PHY 接口
        .xgmii_rxd          (xgmii_rxd),
        .xgmii_rxc          (xgmii_rxc),
        .xgmii_txd          (xgmii_txd),
        .xgmii_txc          (xgmii_txc),
        // Status
        .tx_error_underflow     (),
        .tx_fifo_overflow       (),
        .tx_fifo_bad_frame      (),
        .tx_fifo_good_frame     (),
        .rx_error_bad_frame     (),
        .rx_error_bad_fcs       (),
        .rx_fifo_overflow       (),
        .rx_fifo_bad_frame      (),
        .rx_fifo_good_frame     (),
        // PTP (未使用)
        .ptp_ts_96          (96'b0),
        .ptp_ts_step         (1'b0),
        // Configuration
        .cfg_ifg            (8'd12),
        .cfg_tx_enable      (1'b1),
        .cfg_rx_enable      (1'b1)
    );

    // =========================================================================
    // 10G 路径: gvsp_udp_rx_64b (64-bit GVSP 解包器)
    // 注意: 该模块当前直接接收 MAC 输出的以太网帧，需要后续添加
    //       Ethernet/IP/UDP 协议栈来剥离帧头后才能正确解析 GVSP 负载。
    //       目前仅作为占位连接。
    // =========================================================================
    gvsp_udp_rx_64b u_eth_10g_path (
        .clk                 (clk_156m),
        .rst                 (rst_156m),
        .s_udp_axis_tdata    (mac_10g_rx_tdata),
        .s_udp_axis_tkeep    (mac_10g_rx_tkeep),
        .s_udp_axis_tvalid   (mac_10g_rx_tvalid),
        .s_udp_axis_tlast    (mac_10g_rx_tlast),
        .s_udp_axis_tuser    (mac_10g_rx_tuser),
        .s_udp_axis_tready   (),
        .cfg_gvsp_port       (DEFAULT_CAM_PORT),
        .m_axis_video_tdata  (video_10g_tdata),
        .m_axis_video_tvalid (video_10g_tvalid),
        .m_axis_video_tlast  (video_10g_tlast),
        .m_axis_video_tuser  (video_10g_tuser),
        .m_axis_video_tready (video_10g_tready),
        .out_block_id        (),
        .out_packet_id       (),
        .error_drop_pkt      ()
    );

    // =========================================================================
    // 10G 路径: CDC 异步 FIFO (156.25 MHz -> 200 MHz)
    // =========================================================================
    axis_async_fifo #(
        .DEPTH           (4096),
        .DATA_WIDTH      (64)
    ) u_10g_cdc_fifo (
        .s_clk               (clk_156m),
        .s_rst               (rst_156m),
        .s_axis_tdata       (video_10g_tdata),
        .s_axis_tkeep       (8'hFF),
        .s_axis_tvalid      (video_10g_tvalid),
        .s_axis_tready      (video_10g_tready),
        .s_axis_tlast       (video_10g_tlast),
        .s_axis_tid         (8'b0),
        .s_axis_tdest       (8'b0),
        .s_axis_tuser       (video_10g_tuser),
        .m_clk               (clk_200m),
        .m_rst               (rst_200m),
        .m_axis_tdata       (video_10g_cdc_tdata),
        .m_axis_tkeep       (),
        .m_axis_tvalid      (video_10g_cdc_tvalid),
        .m_axis_tready      (video_10g_cdc_tready),
        .m_axis_tlast       (video_10g_cdc_tlast),
        .m_axis_tid         (),
        .m_axis_tdest       (),
        .m_axis_tuser       (video_10g_cdc_tuser),
        .s_status_depth          (),
        .s_status_depth_commit   (),
        .s_status_overflow       (),
        .s_status_bad_frame      (),
        .s_status_good_frame     (),
        .m_status_depth          (),
        .m_status_depth_commit   (),
        .m_status_overflow       (),
        .m_status_bad_frame      (),
        .m_status_good_frame     ()
    );

    // =========================================================================
    // 64-bit 图像流多路选择器 (Mux), 输出在 clk_200m 域
    // =========================================================================
    assign m_axis_video_tdata  = mode_select_10g ? video_10g_cdc_tdata  : video_1g_to_64_tdata;
    assign m_axis_video_tvalid = mode_select_10g ? video_10g_cdc_tvalid : video_1g_to_64_tvalid;
    assign m_axis_video_tlast  = mode_select_10g ? video_10g_cdc_tlast  : video_1g_to_64_tlast;
    assign m_axis_video_tuser  = mode_select_10g ? video_10g_cdc_tuser  : video_1g_to_64_tuser;

    assign video_1g_to_64_tready = mode_select_10g ? 1'b0 : m_axis_video_tready;
    assign video_10g_cdc_tready  = mode_select_10g ? m_axis_video_tready : 1'b0;

endmodule
`default_nettype wire
