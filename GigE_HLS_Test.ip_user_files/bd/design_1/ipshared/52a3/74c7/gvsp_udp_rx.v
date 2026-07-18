/*

Copyright (c) 2014-2018 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * GVSP ethernet frame receiver (UDP frame in, GVSP frame out)
 */
module gvsp_udp_rx
(
    input  wire        clk,
    input  wire        rst,
    input  wire [23:0] gvsp_data_pck_num,

    /*
     * udp frame input
     */
    input  wire        s_udp_hdr_valid,
    output wire        s_udp_hdr_ready,
    input  wire [47:0] s_eth_dest_mac,
    input  wire [47:0] s_eth_src_mac,
    input  wire [15:0] s_eth_type,
    input  wire [3:0]  s_ip_version,
    input  wire [3:0]  s_ip_ihl,
    input  wire [5:0]  s_ip_dscp,
    input  wire [1:0]  s_ip_ecn,
    input  wire [15:0] s_ip_length,
    input  wire [15:0] s_ip_identification,
    input  wire [2:0]  s_ip_flags,
    input  wire [12:0] s_ip_fragment_offset,
    input  wire [7:0]  s_ip_ttl,
    input  wire [7:0]  s_ip_protocol,
    input  wire [15:0] s_ip_header_checksum,
    input  wire [31:0] s_ip_source_ip,
    input  wire [31:0] s_ip_dest_ip,
    input  wire [15:0] s_udp_source_port,
    input  wire [15:0] s_udp_dest_port,
    input  wire [15:0] s_udp_length,    //gvsp_length=s_udp_length-8/20(EI=1, 8; EI=0, 20)
    input  wire [15:0] s_udp_checksum,
    input  wire [7:0]  s_udp_payload_axis_tdata,
    input  wire        s_udp_payload_axis_tvalid,
    output wire        s_udp_payload_axis_tready,
    input  wire        s_udp_payload_axis_tlast,
    input  wire        s_udp_payload_axis_tuser,

    /*
     * GVSP frame output
     */
    output wire        m_gvsp_hdr_valid,
    output wire [47:0] m_eth_dest_mac,
    output wire [47:0] m_eth_src_mac,
    output wire [15:0] m_eth_type,
    output wire [3:0]  m_ip_version,
    output wire [3:0]  m_ip_ihl,
    output wire [5:0]  m_ip_dscp,
    output wire [1:0]  m_ip_ecn,
    output wire [15:0] m_ip_length,
    output wire [15:0] m_ip_identification,
    output wire [2:0]  m_ip_flags,
    output wire [12:0] m_ip_fragment_offset,
    output wire [7:0]  m_ip_ttl,
    output wire [7:0]  m_ip_protocol,
    output wire [15:0] m_ip_header_checksum,
    output wire [31:0] m_ip_source_ip,
    output wire [31:0] m_ip_dest_ip,
    output wire [15:0] m_udp_source_port,
    output wire [15:0] m_udp_dest_port,
    output wire [15:0] m_udp_length,
    output wire [15:0] m_udp_checksum,
    output wire [15:0] m_gvsp_status,
    output wire [15:0] m_gvsp_blckid_flag,
    output wire        m_gvsp_ei,
    output wire [3:0]  m_gvsp_pckfmt,
    output wire        m_img_complete_send_valid,
    output wire [1:0]  m_img_complete_flag,
    output wire [23:0] m_gvsp_pckid_res,
    output wire [15:0] m_gvsp_data_length,    
    output wire [23:0] m_gvsp_blckid_long,
    output wire [23:0] m_gvsp_pckid_long,
    output wire        m_gvsp_end_frame_flag,
    output wire        m_gvsp_length_valid,
    output wire        m_frame_wr_done_flag,    //帧数据包数量接收正确，且下一帧数据到来
    output wire        m_gvsp_conti_flag,     //当前帧连续包标志，一帧中一旦由一个包不连续就拉高直到下一帧开始

    output wire [7:0]  m_gvsp_payload_axis_tdata,
    output wire        m_gvsp_payload_axis_tvalid,
    input  wire        m_gvsp_payload_axis_tready,
    output wire        m_gvsp_payload_axis_tlast,
    output wire        m_gvsp_payload_axis_tuser,
    output wire        m_gvsp_payload_axis_tkeep,

    /*
     * Status signals
     */
    output wire        busy,
    output wire        error_header_early_termination,
    output wire        error_payload_early_termination
);



localparam [2:0]
    STATE_IDLE = 3'd0,
    STATE_READ_HEADER = 3'd1,
    STATE_READ_PAYLOAD = 3'd2,
    STATE_READ_PAYLOAD_LAST = 3'd3,
    STATE_WAIT_LAST = 3'd4;

reg [2:0] state_reg = STATE_IDLE, state_next;

// datapath control signals
reg store_udp_hdr;
reg store_gvsp_status_0;
reg store_gvsp_status_1;
reg store_gvsp_blckid_flag_0;
reg store_gvsp_blckid_flag_1;
reg store_gvsp_ei_pckfmt;
reg store_gvsp_pckid_res_0;
reg store_gvsp_pckid_res_1;
reg store_gvsp_pckid_res_2;
reg store_gvsp_blckid_long_0;
reg store_gvsp_blckid_long_1;
reg store_gvsp_blckid_long_2;
reg store_gvsp_blckid_long_3;
reg store_gvsp_blckid_long_4;
reg store_gvsp_blckid_long_5;
reg store_gvsp_blckid_long_6;
reg store_gvsp_blckid_long_7;
reg store_gvsp_pckid_long_0;
reg store_gvsp_pckid_long_1;
reg store_gvsp_pckid_long_2;
reg store_gvsp_pckid_long_3;
reg store_last_word;
reg gvsp_hdr_ready_reg;

reg [5:0] hdr_ptr_reg = 6'd0, hdr_ptr_next;
reg [15:0] gvsp_length_reg = 16'd0, gvsp_length_next;
reg [15:0] gvsp_hdr_length_reg = 16'd0, gvsp_hdr_length_next;
reg [15:0] m_gvsp_data_length_reg = 16'd0;
reg [15:0] m_gvsp_data_length_next;
reg       gvsp_end_frame_flag_reg = 1'b0, gvsp_end_frame_flag_next;
reg       m_frame_wr_done_flag_reg = 1'b0;
reg       m_frame_wr_done_flag_next;
reg [1:0] m_img_complete_flag_reg = 2'b01;
reg [1:0] m_img_complete_flag_next;
reg m_img_complete_send_valid_next;
reg m_img_complete_send_valid_reg;


reg [15:0] word_count_reg = 16'd0, word_count_next;

reg [7:0] last_word_data_reg = 8'd0;

reg        m_gvsp_hdr_valid_reg = 1'b0;
reg        m_gvsp_hdr_valid_next;
reg [47:0] m_eth_dest_mac_reg = 48'd0;
reg [47:0] m_eth_src_mac_reg = 48'd0;
reg [15:0] m_eth_type_reg = 16'd0;
reg [3:0] m_ip_version_reg = 4'd0;
reg [3:0] m_ip_ihl_reg = 4'd0;
reg [5:0] m_ip_dscp_reg = 6'd0;
reg [1:0] m_ip_ecn_reg = 2'd0;
reg [15:0] m_ip_length_reg = 16'd0;
reg [15:0] m_ip_identification_reg = 16'd0;
reg [2:0] m_ip_flags_reg = 3'd0;
reg [12:0] m_ip_fragment_offset_reg = 13'd0;
reg [7:0] m_ip_ttl_reg = 8'd0;
reg [7:0] m_ip_protocol_reg = 8'd0;
reg [15:0] m_ip_header_checksum_reg = 16'd0;
reg [31:0] m_ip_source_ip_reg = 32'd0;
reg [31:0] m_ip_dest_ip_reg = 32'd0;
reg [15:0] m_udp_source_port_reg = 16'd0;
reg [15:0] m_udp_dest_port_reg = 16'd0;
reg [15:0] m_udp_length_reg = 16'd0;
reg [15:0] m_udp_checksum_reg = 16'd0;
reg [15:0] m_gvsp_status_reg = 16'd0;
reg [15:0] m_gvsp_blckid_flag_reg = 16'd0;
reg        m_gvsp_ei_reg = 1'b0;
reg [3:0]  m_gvsp_pckfmt_reg = 4'd0;
reg [23:0] m_gvsp_pckid_res_reg = 24'd0;
reg [63:0] m_gvsp_blckid_long_reg = 64'd0;
reg [63:0] m_gvsp_pckid_long_reg = 64'd0;
reg [23:0] gvsp_data_pck_cnt_reg = 24'd0;
reg [23:0] gvsp_data_pck_cnt_next;
reg [23:0] gvsp_data_pck_length_reg = 24'd0, gvsp_data_pck_length_next;
reg [23:0] gvsp_conti_pkt_cnt_reg, gvsp_conti_pkt_cnt_next;  //连续包计数器
reg        gvsp_conti_flag_reg, gvsp_conti_flag_next;   //连续包标志，一帧中一旦由一个包不连续就拉高直到下一帧开始

reg s_udp_hdr_ready_reg = 1'b0, s_udp_hdr_ready_next;
reg s_udp_payload_axis_tready_reg = 1'b1, s_udp_payload_axis_tready_next;

reg busy_reg = 1'b0;
reg error_header_early_termination_reg = 1'b0, error_header_early_termination_next;
reg error_payload_early_termination_reg = 1'b0, error_payload_early_termination_next;

reg [3:0] gvsp_pckfmt_reg_d1;
reg       gvsp_first_pack_flag_reg;
reg       gvsp_hdr_valid_reg_d1;
reg       gvsp_length_valid_reg;

// internal datapath
reg [7:0] m_gvsp_payload_axis_tdata_int;
reg       m_gvsp_payload_axis_tvalid_int;
reg       m_gvsp_payload_axis_tready_int_reg = 1'b0;
reg       m_gvsp_payload_axis_tlast_int;
reg       m_gvsp_payload_axis_tuser_int;
wire      m_gvsp_payload_axis_tready_int_early;

assign s_udp_hdr_ready = s_udp_hdr_ready_reg;
assign s_udp_payload_axis_tready = s_udp_payload_axis_tready_reg;

assign m_gvsp_hdr_valid = m_gvsp_hdr_valid_reg;
assign m_eth_dest_mac = m_eth_dest_mac_reg;
assign m_eth_src_mac = m_eth_src_mac_reg;
assign m_eth_type = m_eth_type_reg;
assign m_ip_version = m_ip_version_reg;
assign m_ip_ihl = m_ip_ihl_reg;
assign m_ip_dscp = m_ip_dscp_reg;
assign m_ip_ecn = m_ip_ecn_reg;
assign m_ip_length = m_ip_length_reg;
assign m_ip_identification = m_ip_identification_reg;
assign m_ip_flags = m_ip_flags_reg;
assign m_ip_fragment_offset = m_ip_fragment_offset_reg;
assign m_ip_ttl = m_ip_ttl_reg;
assign m_ip_protocol = m_ip_protocol_reg;
assign m_ip_header_checksum = m_ip_header_checksum_reg;
assign m_ip_source_ip = m_ip_source_ip_reg;
assign m_ip_dest_ip = m_ip_dest_ip_reg;
assign m_udp_source_port = m_udp_source_port_reg;
assign m_udp_dest_port = m_udp_dest_port_reg;
assign m_udp_length = m_udp_length_reg;
assign m_udp_checksum = m_udp_checksum_reg;
assign m_gvsp_status = m_gvsp_status_reg;
assign m_gvsp_blckid_flag = m_gvsp_blckid_flag_reg;
assign m_gvsp_ei = m_gvsp_ei_reg;
assign m_gvsp_pckfmt = m_gvsp_pckfmt_reg;
assign m_gvsp_pckid_res = m_gvsp_pckid_res_reg;
assign m_gvsp_data_length = m_gvsp_data_length_reg;
assign m_gvsp_blckid_long = m_gvsp_blckid_long_reg;
assign m_gvsp_pckid_long = m_gvsp_pckid_long_reg;
assign m_gvsp_end_frame_flag = gvsp_end_frame_flag_reg;
assign m_gvsp_length_valid = gvsp_length_valid_reg;
assign m_frame_wr_done_flag = m_frame_wr_done_flag_reg;
assign m_gvsp_conti_flag = gvsp_conti_flag_reg;
assign m_img_complete_flag = m_img_complete_flag_reg;
assign m_img_complete_send_valid = m_img_complete_send_valid_reg;

assign busy = busy_reg;
assign error_header_early_termination = error_header_early_termination_reg;
assign error_payload_early_termination = error_payload_early_termination_reg;
assign m_gvsp_payload_axis_tkeep = 1'b1;

always @* begin
    state_next = STATE_IDLE;

    s_udp_hdr_ready_next = 1'b0;
    s_udp_payload_axis_tready_next = 1'b1;

    store_udp_hdr = 1'b0;
    store_gvsp_status_0 = 1'b0;
    store_gvsp_status_1 = 1'b0;
    store_gvsp_blckid_flag_0 = 1'b0;
    store_gvsp_blckid_flag_1 = 1'b0;
    store_gvsp_ei_pckfmt = 1'b0;
    store_gvsp_pckid_res_0 = 1'b0;
    store_gvsp_pckid_res_1 = 1'b0;
    store_gvsp_pckid_res_2 = 1'b0;
    store_gvsp_blckid_long_0 = 1'b0;
    store_gvsp_blckid_long_1 = 1'b0;
    store_gvsp_blckid_long_2 = 1'b0;
    store_gvsp_blckid_long_3 = 1'b0;
    store_gvsp_blckid_long_4 = 1'b0;
    store_gvsp_blckid_long_5 = 1'b0;
    store_gvsp_blckid_long_6 = 1'b0;
    store_gvsp_blckid_long_7 = 1'b0;
    store_gvsp_pckid_long_0 = 1'b0;
    store_gvsp_pckid_long_1 = 1'b0;
    store_gvsp_pckid_long_2 = 1'b0;
    store_gvsp_pckid_long_3 = 1'b0;

    store_last_word = 1'b0;

    hdr_ptr_next = hdr_ptr_reg;
    gvsp_hdr_length_next = gvsp_hdr_length_reg;
    gvsp_length_next = gvsp_length_reg;

    word_count_next = word_count_reg;

    m_gvsp_hdr_valid_next = m_gvsp_hdr_valid_reg && !gvsp_hdr_ready_reg;

    error_header_early_termination_next = error_header_early_termination_reg;
    error_payload_early_termination_next = error_payload_early_termination_reg;

    m_gvsp_payload_axis_tdata_int = 8'd0;
    m_gvsp_payload_axis_tvalid_int = 1'b0;
    m_gvsp_payload_axis_tlast_int = 1'b0;
    m_gvsp_payload_axis_tuser_int = 1'b0;

    gvsp_end_frame_flag_next = 1'b0;
    m_gvsp_data_length_next = m_gvsp_data_length_reg;
    m_frame_wr_done_flag_next = m_frame_wr_done_flag_reg;
    gvsp_data_pck_cnt_next = gvsp_data_pck_cnt_reg;
    gvsp_data_pck_length_next = gvsp_data_pck_length_reg;
    gvsp_conti_pkt_cnt_next = gvsp_conti_pkt_cnt_reg;
    gvsp_conti_flag_next = gvsp_conti_flag_reg;
    m_img_complete_flag_next = m_img_complete_flag_reg;
    m_img_complete_send_valid_next = 1'b0;

    case (state_reg)
        STATE_IDLE: begin
            // idle state - wait for header
            hdr_ptr_next = 3'd0;
            s_udp_hdr_ready_next = !m_gvsp_hdr_valid_next;
            if (s_udp_hdr_ready && s_udp_hdr_valid && (s_udp_source_port != 16'd3956)) begin
                s_udp_hdr_ready_next = 1'b0;
                s_udp_payload_axis_tready_next = 1'b1;
                store_udp_hdr = 1'b1;
                gvsp_length_next = s_udp_length - 16'd8;    //gvsp包长度
                state_next = STATE_READ_HEADER;
            end else begin
                state_next = STATE_IDLE;
            end
        end
        STATE_READ_HEADER: begin
            // read header state
            s_udp_payload_axis_tready_next = 1'b1;
            m_img_complete_flag_next = 2'b01;
            word_count_next = gvsp_length_reg - gvsp_hdr_length_reg;

            if (s_udp_payload_axis_tready && s_udp_payload_axis_tvalid) begin
                // word transfer in - store it
                hdr_ptr_next = hdr_ptr_reg + 6'd1;
                state_next = STATE_READ_HEADER;

                case (hdr_ptr_reg)
                    5'd0: store_gvsp_status_1 = 1'b1;
                    5'd1: store_gvsp_status_0 = 1'b1;
                    5'd2: store_gvsp_blckid_flag_1 = 1'b1;
                    5'd3: store_gvsp_blckid_flag_0 = 1'b1;
                    5'd4: store_gvsp_ei_pckfmt = 1'b1;
                    5'd5: begin
                        store_gvsp_pckid_res_2 = 1'b1;
                        if (m_gvsp_ei_reg) begin
                            gvsp_hdr_length_next = 6'd20;
                        end
                        else begin
                            gvsp_hdr_length_next = 6'd8;
                        end
                    end
                    5'd6: begin
                        m_gvsp_data_length_next = gvsp_length_reg - gvsp_hdr_length_reg;
                        store_gvsp_pckid_res_1 = 1'b1;
                    end
                    5'd7: begin
                        store_gvsp_pckid_res_0 = 1'b1;
                        if (gvsp_hdr_length_reg == 6'd8) begin
                            if (m_gvsp_pckfmt_reg == 4'd3) begin
                                m_gvsp_hdr_valid_next = 1'b1;
                                s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
                                state_next = STATE_READ_PAYLOAD;   
                            end
                            else begin
                                m_gvsp_hdr_valid_next = 1'b0;
                                s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
                                state_next = STATE_WAIT_LAST;   
                            end
                        end
                        else begin
                            m_gvsp_hdr_valid_next = 1'b0;
                            state_next = STATE_READ_HEADER;
                        end   
                    end  
                    5'd8: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_7 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_7 = 1'b0;
                        end
                    end
                    5'd9: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_6 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_6 = 1'b0;
                        end
                    end
                    5'd10: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_5 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_5 = 1'b0;
                        end
                    end
                    5'd11: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_4 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_4 = 1'b0;
                        end
                    end
                    5'd12: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_3 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_3 = 1'b0;
                        end
                    end
                    5'd13: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_2 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_2 = 1'b0;
                        end
                    end
                    5'd14: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_1 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_1 = 1'b0;
                        end
                    end
                    5'd15: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_blckid_long_0 = 1'b1;
                        end
                        else begin
                            store_gvsp_blckid_long_0 = 1'b0;
                        end
                    end
                    5'd16: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_pckid_long_3 = 1'b1;
                        end
                        else begin
                            store_gvsp_pckid_long_3 = 1'b0;
                        end
                    end
                    5'd17: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_pckid_long_2 = 1'b1;
                        end
                        else begin
                            store_gvsp_pckid_long_2 = 1'b0;
                        end
                    end
                    5'd18: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_pckid_long_1 = 1'b1;
                        end
                        else begin
                            store_gvsp_pckid_long_1 = 1'b0;
                        end
                    end
                    5'd19: begin
                        if (m_gvsp_ei_reg) begin
                            store_gvsp_pckid_long_0 = 1'b1;
                        end
                        else begin
                            store_gvsp_pckid_long_0 = 1'b0;
                        end

                        if (gvsp_hdr_length_reg == 6'd20) begin
                            if (m_gvsp_pckfmt_reg == 4'd3) begin
                                m_gvsp_hdr_valid_next = 1'b1;
                                s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
                                state_next = STATE_READ_PAYLOAD;   
                            end
                            else begin
                                m_gvsp_hdr_valid_next = 1'b0;
                                s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
                                state_next = STATE_WAIT_LAST;   
                            end
                        end
                        else begin
                            m_gvsp_hdr_valid_next = 1'b0;
                            state_next = STATE_IDLE;
                        end   
                    end
                    default: begin
                        m_gvsp_hdr_valid_next = 1'b0;
                        state_next = STATE_IDLE;

                    end  
                endcase

                if (s_udp_payload_axis_tlast) begin
                    error_header_early_termination_next = 1'b1;
                    m_gvsp_hdr_valid_next = 1'b0;
                    s_udp_hdr_ready_next = !m_gvsp_hdr_valid_next;
                    s_udp_payload_axis_tready_next = 1'b0;
                    state_next = STATE_IDLE;
                end

            end else begin
                state_next = STATE_READ_HEADER;
            end
        end
        STATE_READ_PAYLOAD: begin
            // read payload
            s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
            m_gvsp_payload_axis_tuser_int = (gvsp_first_pack_flag_reg & m_gvsp_hdr_valid_reg);
            m_gvsp_payload_axis_tdata_int = s_udp_payload_axis_tdata;
            m_gvsp_payload_axis_tlast_int = s_udp_payload_axis_tlast;
            m_img_complete_flag_next = 2'b01;

            if (s_udp_payload_axis_tready && s_udp_payload_axis_tvalid) begin
                // word transfer through
                word_count_next = word_count_reg - 16'd1;
                m_gvsp_payload_axis_tvalid_int = 1'b1;
                if (s_udp_payload_axis_tlast) begin
                    if (word_count_reg != 16'd1) begin
                        // end of frame, but length does not match
                        error_payload_early_termination_next = 1'b1;
                    end
                    if ((m_gvsp_pckid_res_reg == (gvsp_conti_pkt_cnt_reg + 24'd1)) && (gvsp_conti_flag_reg)) begin
                        gvsp_conti_pkt_cnt_next = gvsp_conti_pkt_cnt_reg + 24'd1;
                        gvsp_conti_flag_next = gvsp_conti_flag_reg;
                    end else begin
                        gvsp_conti_pkt_cnt_next = 24'd0;
                        gvsp_conti_flag_next = 1'b0;
                    end
                    gvsp_data_pck_length_next = 24'd0;
                    s_udp_hdr_ready_next = !m_gvsp_hdr_valid_next;
                    s_udp_payload_axis_tready_next = 1'b0;
                    gvsp_data_pck_cnt_next = gvsp_data_pck_cnt_reg + 24'd1;
                    state_next = STATE_IDLE;
                end else begin
                    gvsp_data_pck_length_next = gvsp_data_pck_length_reg + 24'd1;
                    if (word_count_reg == 16'd1) begin
                        store_last_word = 1'b1;
                        m_gvsp_payload_axis_tvalid_int = 1'b0;
                        state_next = STATE_READ_PAYLOAD_LAST;
                    end else begin
                        state_next = STATE_READ_PAYLOAD;
                    end
                end
            end else begin
                state_next = STATE_READ_PAYLOAD;
            end
        end
        STATE_READ_PAYLOAD_LAST: begin
            // read and discard until end of frame
            s_udp_payload_axis_tready_next = m_gvsp_payload_axis_tready_int_early;
            m_gvsp_payload_axis_tuser_int = (gvsp_first_pack_flag_reg & m_gvsp_hdr_valid_reg);
            m_gvsp_payload_axis_tdata_int = last_word_data_reg;
            m_gvsp_payload_axis_tlast_int = s_udp_payload_axis_tlast;
            m_img_complete_flag_next = 2'b01;

            if (s_udp_payload_axis_tready && s_udp_payload_axis_tvalid) begin
                if (s_udp_payload_axis_tlast) begin
                    s_udp_hdr_ready_next = !m_gvsp_hdr_valid_next;
                    s_udp_payload_axis_tready_next = 1'b0;
                    m_gvsp_payload_axis_tvalid_int = 1'b1;
                    state_next = STATE_IDLE;
                end else begin
                    state_next = STATE_READ_PAYLOAD_LAST;
                end
            end else begin
                state_next = STATE_READ_PAYLOAD_LAST;
            end
        end
        STATE_WAIT_LAST: begin
            s_udp_payload_axis_tready_next = 1'b1;

            if (s_udp_payload_axis_tready && s_udp_payload_axis_tvalid) begin
                if (s_udp_payload_axis_tlast) begin
                    s_udp_hdr_ready_next = !m_gvsp_hdr_valid_next;
                    s_udp_payload_axis_tready_next = 1'b0;
                    gvsp_conti_pkt_cnt_next = 24'd0;
                    gvsp_conti_flag_next = 1'b1;
                    gvsp_data_pck_cnt_next = 24'd0;
                    error_header_early_termination_next = 1'b0;
                    error_payload_early_termination_next = 1'b0;
                    if (m_gvsp_pckfmt_reg == 4'd2) begin
                        gvsp_end_frame_flag_next = 1'b1;
                        m_img_complete_send_valid_next = 1'b1;
                        m_frame_wr_done_flag_next = (gvsp_data_pck_cnt_reg == gvsp_data_pck_num) ? 1'b1 : 1'b0;
                        m_img_complete_flag_next = ((~error_header_early_termination_reg) && (~error_payload_early_termination_reg) && gvsp_conti_flag_reg && ((gvsp_data_pck_cnt_reg == gvsp_data_pck_num)))? 2'b11 : 2'b00;
                    end else begin
                        gvsp_end_frame_flag_next = 1'b0;
                    end
                    state_next = STATE_IDLE;
                end else begin
                    state_next = STATE_WAIT_LAST;
                end
            end else begin
                state_next = STATE_WAIT_LAST;
            end
        end
    endcase
end

always @(posedge clk) begin
    if (rst) begin
        state_reg <= STATE_IDLE;
        s_udp_hdr_ready_reg <= 1'b0;
        s_udp_payload_axis_tready_reg <= 1'b0;
        m_gvsp_hdr_valid_reg <= 1'b0;
        busy_reg <= 1'b0;
        error_header_early_termination_reg <= 1'b0;
        error_payload_early_termination_reg <= 1'b0;
        gvsp_hdr_ready_reg <= 1'b0;
        gvsp_length_reg <= 16'd0;
        gvsp_end_frame_flag_reg <= 1'b0;
        gvsp_pckfmt_reg_d1 <= 1'b0;
        gvsp_hdr_valid_reg_d1 <= 1'b0;
        gvsp_length_valid_reg <= 1'b0;
        gvsp_first_pack_flag_reg <= 1'b0; 
        m_frame_wr_done_flag_reg <= 1'b0;
        gvsp_data_pck_length_reg <= 24'd0;
        gvsp_conti_pkt_cnt_reg <= 24'd0;
        gvsp_conti_flag_reg <= 1'b1;
        m_img_complete_flag_reg <= 2'b01;
        m_img_complete_send_valid_reg <= 1'b0;
    end else begin
        state_reg <= state_next;

        s_udp_hdr_ready_reg <= s_udp_hdr_ready_next;
        s_udp_payload_axis_tready_reg <= s_udp_payload_axis_tready_next;

        m_gvsp_hdr_valid_reg <= m_gvsp_hdr_valid_next;

        error_header_early_termination_reg <= error_header_early_termination_next;
        error_payload_early_termination_reg <= error_payload_early_termination_next;

        busy_reg <= state_next != STATE_IDLE;
        gvsp_hdr_ready_reg <= (~m_gvsp_hdr_valid_reg);
        gvsp_length_reg <= gvsp_length_next;
        gvsp_end_frame_flag_reg <= gvsp_end_frame_flag_next;
        gvsp_pckfmt_reg_d1 <= m_gvsp_pckfmt_reg;
        gvsp_hdr_valid_reg_d1 <= m_gvsp_hdr_valid_reg;
        gvsp_length_valid_reg <= (gvsp_first_pack_flag_reg & m_gvsp_hdr_valid_next);
        m_frame_wr_done_flag_reg <= m_frame_wr_done_flag_next;
        gvsp_data_pck_cnt_reg <= gvsp_data_pck_cnt_next;
        gvsp_data_pck_length_reg <= gvsp_data_pck_length_next;
        gvsp_conti_pkt_cnt_reg <= gvsp_conti_pkt_cnt_next;
        gvsp_conti_flag_reg <= gvsp_conti_flag_next;
        m_img_complete_flag_reg <= m_img_complete_flag_next;
        m_img_complete_send_valid_reg <= m_img_complete_send_valid_next;
    end

    hdr_ptr_reg <= hdr_ptr_next;
    gvsp_hdr_length_reg <= gvsp_hdr_length_next;
    word_count_reg <= word_count_next;

    // datapath
    if (store_udp_hdr) begin
        m_eth_dest_mac_reg <= s_eth_dest_mac;
        m_eth_src_mac_reg <= s_eth_src_mac;
        m_eth_type_reg <= s_eth_type;
        m_ip_version_reg <= s_ip_version;
        m_ip_ihl_reg <= s_ip_ihl;
        m_ip_dscp_reg <= s_ip_dscp;
        m_ip_ecn_reg <= s_ip_ecn;
        m_ip_length_reg <= s_ip_length;
        m_ip_identification_reg <= s_ip_identification;
        m_ip_flags_reg <= s_ip_flags;
        m_ip_fragment_offset_reg <= s_ip_fragment_offset;
        m_ip_ttl_reg <= s_ip_ttl;
        m_ip_protocol_reg <= s_ip_protocol;
        m_ip_header_checksum_reg <= s_ip_header_checksum;
        m_ip_source_ip_reg <= s_ip_source_ip;
        m_ip_dest_ip_reg <= s_ip_dest_ip;
        m_udp_source_port_reg <= s_udp_source_port;
        m_udp_dest_port_reg <= s_udp_dest_port;
        m_udp_length_reg <= s_udp_length;
        m_udp_checksum_reg <= s_udp_checksum;
    end

    if (store_last_word) begin
        last_word_data_reg <= m_gvsp_payload_axis_tdata_int;
    end
    else;

    if ((m_gvsp_pckfmt_reg == 4'd3) && (gvsp_pckfmt_reg_d1 == 4'd1)) begin
        gvsp_first_pack_flag_reg <= 1'b1;   
    end  
    else if (gvsp_hdr_valid_reg_d1 & (!m_gvsp_hdr_valid_reg)) begin
        gvsp_first_pack_flag_reg <= 1'b0; 
    end
    else;   

    if (store_gvsp_status_0) m_gvsp_status_reg[7: 0] <= s_udp_payload_axis_tdata;
    if (store_gvsp_status_1) m_gvsp_status_reg[15: 8] <= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_flag_0) m_gvsp_blckid_flag_reg[7: 0] <= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_flag_1) m_gvsp_blckid_flag_reg[15: 8] <= s_udp_payload_axis_tdata;
    if (store_gvsp_ei_pckfmt) m_gvsp_ei_reg <= s_udp_payload_axis_tdata[7];
    if (store_gvsp_ei_pckfmt) m_gvsp_pckfmt_reg <= s_udp_payload_axis_tdata[3:0];
    if (store_gvsp_pckid_res_0) m_gvsp_pckid_res_reg[7:0] <= s_udp_payload_axis_tdata;   //用于ddr写地址
    if (store_gvsp_pckid_res_1) m_gvsp_pckid_res_reg[15:8] <= s_udp_payload_axis_tdata;
    if (store_gvsp_pckid_res_2) m_gvsp_pckid_res_reg[23:16] <= s_udp_payload_axis_tdata;
    if (m_gvsp_pckid_res_reg==24'd2) m_gvsp_data_length_reg <= m_gvsp_data_length_next;
    if (store_gvsp_blckid_long_0) m_gvsp_blckid_long_reg[7:0]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_1) m_gvsp_blckid_long_reg[15:8]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_2) m_gvsp_blckid_long_reg[23:16]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_3) m_gvsp_blckid_long_reg[31:24]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_4) m_gvsp_blckid_long_reg[39:32]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_5) m_gvsp_blckid_long_reg[47:40]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_6) m_gvsp_blckid_long_reg[55:48]<= s_udp_payload_axis_tdata;
    if (store_gvsp_blckid_long_7) m_gvsp_blckid_long_reg[63:56]<= s_udp_payload_axis_tdata;
    if (store_gvsp_pckid_long_0) m_gvsp_pckid_long_reg[7:0] <= s_udp_payload_axis_tdata;
    if (store_gvsp_pckid_long_1) m_gvsp_pckid_long_reg[15:8] <= s_udp_payload_axis_tdata;
    if (store_gvsp_pckid_long_2) m_gvsp_pckid_long_reg[23:16] <= s_udp_payload_axis_tdata;
    if (store_gvsp_pckid_long_3) m_gvsp_pckid_long_reg[31:24] <= s_udp_payload_axis_tdata;
end

// output datapath logic
reg [7:0] m_gvsp_payload_axis_tdata_reg = 8'd0;
reg       m_gvsp_payload_axis_tvalid_reg = 1'b0, m_gvsp_payload_axis_tvalid_next;
reg       m_gvsp_payload_axis_tlast_reg = 1'b0;
reg       m_gvsp_payload_axis_tuser_reg = 1'b0;

reg [7:0] temp_m_gvsp_payload_axis_tdata_reg = 8'd0;
reg       temp_m_gvsp_payload_axis_tvalid_reg = 1'b0, temp_m_gvsp_payload_axis_tvalid_next;
reg       temp_m_gvsp_payload_axis_tlast_reg = 1'b0;
reg       temp_m_gvsp_payload_axis_tuser_reg = 1'b0;

// datapath control
reg store_gvsp_payload_int_to_output;
reg store_gvsp_payload_int_to_temp;
reg store_gvsp_payload_axis_temp_to_output;

assign m_gvsp_payload_axis_tdata = m_gvsp_payload_axis_tdata_reg;
assign m_gvsp_payload_axis_tvalid = m_gvsp_payload_axis_tvalid_reg;
assign m_gvsp_payload_axis_tlast = m_gvsp_payload_axis_tlast_reg;
assign m_gvsp_payload_axis_tuser = m_gvsp_payload_axis_tuser_reg;

// enable ready input next cycle if output is ready or if both output registers are empty
assign m_gvsp_payload_axis_tready_int_early = m_gvsp_payload_axis_tready || (!temp_m_gvsp_payload_axis_tvalid_reg && !m_gvsp_payload_axis_tvalid_reg);

always @* begin
    // transfer sink ready state to source
    m_gvsp_payload_axis_tvalid_next = m_gvsp_payload_axis_tvalid_reg;
    temp_m_gvsp_payload_axis_tvalid_next = temp_m_gvsp_payload_axis_tvalid_reg;

    store_gvsp_payload_int_to_output = 1'b0;
    store_gvsp_payload_int_to_temp = 1'b0;
    store_gvsp_payload_axis_temp_to_output = 1'b0;
    
    if (m_gvsp_payload_axis_tready_int_reg) begin
        // input is ready
        if (m_gvsp_payload_axis_tready || !m_gvsp_payload_axis_tvalid_reg) begin
            // output is ready or currently not valid, transfer data to output
            m_gvsp_payload_axis_tvalid_next = m_gvsp_payload_axis_tvalid_int;
            store_gvsp_payload_int_to_output = 1'b1;
        end else begin
            // output is not ready, store input in temp
            temp_m_gvsp_payload_axis_tvalid_next = m_gvsp_payload_axis_tvalid_int;
            store_gvsp_payload_int_to_temp = 1'b1;
        end
    end else if (m_gvsp_payload_axis_tready) begin
        // input is not ready, but output is ready
        m_gvsp_payload_axis_tvalid_next = temp_m_gvsp_payload_axis_tvalid_reg;
        temp_m_gvsp_payload_axis_tvalid_next = 1'b0;
        store_gvsp_payload_axis_temp_to_output = 1'b1;
    end
end

always @(posedge clk) begin
    m_gvsp_payload_axis_tvalid_reg <= m_gvsp_payload_axis_tvalid_next;
    m_gvsp_payload_axis_tready_int_reg <= m_gvsp_payload_axis_tready_int_early;
    temp_m_gvsp_payload_axis_tvalid_reg <= temp_m_gvsp_payload_axis_tvalid_next;

    // datapath
    if (store_gvsp_payload_int_to_output) begin
        m_gvsp_payload_axis_tdata_reg <= m_gvsp_payload_axis_tdata_int;
        m_gvsp_payload_axis_tlast_reg <= m_gvsp_payload_axis_tlast_int;
        m_gvsp_payload_axis_tuser_reg <= m_gvsp_payload_axis_tuser_int;
    end else if (store_gvsp_payload_axis_temp_to_output) begin
        m_gvsp_payload_axis_tdata_reg <= temp_m_gvsp_payload_axis_tdata_reg;
        m_gvsp_payload_axis_tlast_reg <= temp_m_gvsp_payload_axis_tlast_reg;
        m_gvsp_payload_axis_tuser_reg <= temp_m_gvsp_payload_axis_tuser_reg;
    end

    if (store_gvsp_payload_int_to_temp) begin
        temp_m_gvsp_payload_axis_tdata_reg <= m_gvsp_payload_axis_tdata_int;
        temp_m_gvsp_payload_axis_tlast_reg <= m_gvsp_payload_axis_tlast_int;
        temp_m_gvsp_payload_axis_tuser_reg <= m_gvsp_payload_axis_tuser_int;
    end

    if (rst) begin
        m_gvsp_payload_axis_tvalid_reg <= 1'b0;
        m_gvsp_payload_axis_tready_int_reg <= 1'b0;
        temp_m_gvsp_payload_axis_tvalid_reg <= 1'b0;
    end
end

endmodule

`resetall
