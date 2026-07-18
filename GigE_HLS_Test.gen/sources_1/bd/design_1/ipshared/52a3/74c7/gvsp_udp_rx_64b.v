`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * 万兆 64-bit GVSP 图像数据包解包核心模块 (UDP IN -> AXIS VIDEO OUT)
 * 完美支持 156.25MHz 线速处理
 */
module gvsp_udp_rx_64b #
(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = (DATA_WIDTH/8)
)
(
    input  wire                   clk,
    input  wire                   rst,

    // ==========================================
    // 1. 来自 Alex 64位 UDP 协议栈的输入接口
    // ==========================================
    input  wire [DATA_WIDTH-1:0]  s_udp_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]  s_udp_axis_tkeep,
    input  wire                   s_udp_axis_tvalid,
    input  wire                   s_udp_axis_tlast,
    input  wire                   s_udp_axis_tuser,
    output reg                    s_udp_axis_tready,

    // Config 配置参数 (可由 AXI-Lite 传入)
    input  wire [15:0]            cfg_gvsp_port,      // 默认相机流 UDP 端口 (如 0x0584 或自定义)

    // ==========================================
    // 2. 输出给 7x7 高斯滤波模块的标准视频 AXI-Stream
    // ==========================================
    output reg                    m_axis_video_tvalid,
    output reg [DATA_WIDTH-1:0]   m_axis_video_tdata,
    output reg                    m_axis_video_tlast,  // 行结束标 (Line End)
    output reg                    m_axis_video_tuser,  // 帧开始标 (SOF - Start of Frame)
    input  wire                   m_axis_video_tready,

    // ==========================================
    // 3. 状态与监控接口 (送往 cam_stat_monitor 及顶层)
    // ==========================================
    output reg [23:0]             out_block_id,        // 当前帧/块 ID
    output reg [23:0]             out_packet_id,       // 当前网包 ID
    output reg                    error_drop_pkt       // 丢包/错包指示
);

    // ------------------------------------------------------------------
    // GVSP 报文类型定义 (GigE Vision 规范)
    // ------------------------------------------------------------------
    localparam GVSP_PKT_TYPE_LEADER  = 8'h01;
    localparam GVSP_PKT_TYPE_TRAILER = 8'h02;
    localparam GVSP_PKT_TYPE_PAYLOAD = 8'h03;

    // 状态机状态定义
    localparam [2:0]
        STATE_IDLE         = 3'd0,
        STATE_PARSE_HDR    = 3'd1,
        STATE_VIDEO_STREAM = 3'd2,
        STATE_DROP_PACKET  = 3'd3;

    reg [2:0] state_reg, state_next;

    // 内部寄存器
    reg [15:0] gvsp_packet_id;
    reg [7:0]  gvsp_packet_type;
    reg [31:0] pixel_cnt_row;

    // ------------------------------------------------------------------
    // 状态机转移与逻辑
    // ------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            state_reg           <= STATE_IDLE;
            m_axis_video_tvalid <= 1'b0;
            m_axis_video_tdata  <= 64'd0;
            m_axis_video_tlast  <= 1'b0;
            m_axis_video_tuser  <= 1'b0;
            error_drop_pkt      <= 1'b0;
            out_block_id        <= 24'd0;
            out_packet_id       <= 24'd0;
            pixel_cnt_row       <= 32'd0;
        end else begin
            state_reg <= state_next;
            
            // 默认拉低视频流控制信号
            m_axis_video_tvalid <= 1'b0;
            m_axis_video_tlast  <= 1'b0;
            m_axis_video_tuser  <= 1'b0;
            error_drop_pkt      <= 1'b0;

            case (state_reg)
                STATE_IDLE: begin
                    if (s_udp_axis_tvalid && s_udp_axis_tready) begin
                        // 64位并行的第1个周期：提取 GVSP 关键包头信息
                        // 假设标准万兆网卡的大端模式：
                        // tdata[63:56] = Status, tdata[55:48] = Packet Type
                        // tdata[47:32] = Block ID, tdata[31:0] = Packet ID
                        gvsp_packet_type <= s_udp_axis_tdata[55:48];
                        out_block_id     <= s_udp_axis_tdata[47:24];
                        out_packet_id    <= s_udp_axis_tdata[23:0];
                        
                        if (s_udp_axis_tdata[55:48] == GVSP_PKT_TYPE_LEADER) begin
                            m_axis_video_tuser <= 1'b1; // 捕获到 Leader 包，触发帧同步 (SOF)
                        end
                    end
                end

                STATE_PARSE_HDR: begin
                    // 在此周期，万兆相机的特定参数区（如像素格式、分辨率等）灌入
                    // 硬件可在此解析具体的宽、高信息用于行同步校验。
                end

                STATE_VIDEO_STREAM: begin
                    if (s_udp_axis_tvalid && s_udp_axis_tready) begin
                        // 核心解包：此时进来的全都是 64 位（8像素）的纯净图像数据
                        m_axis_video_tvalid <= 1'b1;
                        m_axis_video_tdata  <= s_udp_axis_tdata;
                        
                        // 硬件行同步计数器 (假设图像宽度为 1920，1920字节/8 = 240个时钟周期)
                        if (pixel_cnt_row == 32'd239) begin
                            m_axis_video_tlast <= 1'b1; // 产生行拉高信号 (对接 7x7 行缓存)
                            pixel_cnt_row      <= 32'd0;
                        end else begin
                            pixel_cnt_row      <= pixel_cnt_row + 1'b1;
                        end

                        if (s_udp_axis_tlast) begin
                            pixel_cnt_row <= 32'd0;
                        end
                    end
                end

                STATE_DROP_PACKET: begin
                    if (s_udp_axis_tvalid && s_udp_axis_tready && s_udp_axis_tlast) begin
                        error_drop_pkt <= 1'b1; // 记录丢包
                    end
                end
            endcase
        end
    end

    // 下一状态组合逻辑
    always @* begin
        state_next = state_reg;
        s_udp_axis_tready = m_axis_video_tready; // 流控级联转发

        case (state_reg)
            STATE_IDLE: begin
                if (s_udp_axis_tvalid && s_udp_axis_tready) begin
                    if (s_udp_axis_tdata[55:48] == GVSP_PKT_TYPE_PAYLOAD)
                        state_next = STATE_VIDEO_STREAM; // 进入纯像素透传状态
                    else if (s_udp_axis_tdata[55:48] == GVSP_PKT_TYPE_LEADER)
                        state_next = STATE_PARSE_HDR;
                    else
                        state_next = STATE_DROP_PACKET;
                end
            end
            
            STATE_PARSE_HDR: begin
                if (s_udp_axis_tvalid && s_udp_axis_tready && s_udp_axis_tlast)
                    state_next = STATE_IDLE;
            end

            STATE_VIDEO_STREAM: begin
                if (s_udp_axis_tvalid && s_udp_axis_tready && s_udp_axis_tlast)
                    state_next = STATE_IDLE;
            end

            STATE_DROP_PACKET: begin
                if (s_udp_axis_tvalid && s_udp_axis_tready && s_udp_axis_tlast)
                    state_next = STATE_IDLE;
            end
        endcase
    end
    
    // gige_to_axis_converter u_gige_to_axis(
    //      .clk                                ( clk                       )
    //     ,.reset                              ( rst                       )
    //     ,.image_data_in                      ( image_data_out            ) // 连接到gige_vision_top的输出
    //     ,.image_data_valid_in                ( image_data_out_valid      )
    //     ,.image_data_header_in               ( image_data_header         )
    //     ,.m_axis_tvalid                      ( vdma_s2mm_tvalid          ) // 连接到VDMA的S2MM接口
    //     ,.m_axis_tdata                       ( vdma_s2mm_tdata           )
    //     ,.m_axis_tlast                       ( vdma_s2mm_tlast           )
    //     ,.m_axis_tuser                       ( vdma_s2mm_tuser           )
    //     ,.m_axis_tkeep                       ( vdma_s2mm_tkeep           )
    //     ,.m_axis_tready                      ( vdma_s2mm_tready          )
    // );

endmodule
`default_nettype wire