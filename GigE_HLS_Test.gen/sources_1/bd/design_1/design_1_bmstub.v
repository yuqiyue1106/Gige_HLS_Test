// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  CLK_IN1_D_wiz2_clk_n,
  CLK_IN1_D_wiz2_clk_p,
  phy_1g_rx_clk,
  phy_1g_rxd,
  phy_1g_rx_ctl,
  phy_1g_tx_clk,
  phy_1g_txd,
  phy_1g_tx_ctl,
  phy_1g_reset_n,
  phy_1g_int_n
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_wiz2 CLK_N" *)
  (* X_INTERFACE_MODE = "slave CLK_IN1_D_wiz2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1_D_wiz2, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input CLK_IN1_D_wiz2_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D_wiz2 CLK_P" *)
  input CLK_IN1_D_wiz2_clk_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input phy_1g_rx_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]phy_1g_rxd;
  (* X_INTERFACE_IGNORE = "true" *)
  input phy_1g_rx_ctl;
  (* X_INTERFACE_IGNORE = "true" *)
  output phy_1g_tx_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output [3:0]phy_1g_txd;
  (* X_INTERFACE_IGNORE = "true" *)
  output phy_1g_tx_ctl;
  (* X_INTERFACE_IGNORE = "true" *)
  output phy_1g_reset_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input phy_1g_int_n;

  // stub module has no contents

endmodule
