//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
//Date        : Fri Jul 17 21:00:55 2026
//Host        : REED-MVOT running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input CLK_IN1_D_wiz2_clk_n;
  input CLK_IN1_D_wiz2_clk_p;
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
  wire phy_1g_int_n;
  wire phy_1g_reset_n;
  wire phy_1g_rx_clk;
  wire phy_1g_rx_ctl;
  wire [3:0]phy_1g_rxd;
  wire phy_1g_tx_clk;
  wire phy_1g_tx_ctl;
  wire [3:0]phy_1g_txd;

  design_1 design_1_i
       (.CLK_IN1_D_wiz2_clk_n(CLK_IN1_D_wiz2_clk_n),
        .CLK_IN1_D_wiz2_clk_p(CLK_IN1_D_wiz2_clk_p),
        .phy_1g_int_n(phy_1g_int_n),
        .phy_1g_reset_n(phy_1g_reset_n),
        .phy_1g_rx_clk(phy_1g_rx_clk),
        .phy_1g_rx_ctl(phy_1g_rx_ctl),
        .phy_1g_rxd(phy_1g_rxd),
        .phy_1g_tx_clk(phy_1g_tx_clk),
        .phy_1g_tx_ctl(phy_1g_tx_ctl),
        .phy_1g_txd(phy_1g_txd));
endmodule
