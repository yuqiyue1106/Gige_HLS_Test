// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
// Date        : Thu Jul 16 20:43:31 2026
// Host        : REED-MVOT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_gmii_to_rgmii_0_0_stub.v
// Design      : design_1_gmii_to_rgmii_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* core_generation_info = "design_1_gmii_to_rgmii_0_0,gmii_to_rgmii_v4_1_18,{x_ipProduct=Vivado 2024.2.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gmii_to_rgmii,x_ipVersion=4.1,x_ipCoreRevision=18,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_EXTERNAL_CLOCK=true,C_USE_IDELAY_CTRL=true,C_PHYADDR=8,c_support_level=false,C_FAMILY_CHK=0,C_VERSAL_SIM_DEVICE=ULTRASCALE,C_DEVICE_TYPE=2}" *) (* x_core_info = "gmii_to_rgmii_v4_1_18,Vivado 2024.2.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(tx_reset, rx_reset, ref_clk_in, gmii_clk, 
  speed_mode, gmii_tx_clk, gmii_tx_en, gmii_txd, gmii_tx_er, gmii_crs, gmii_col, gmii_rx_clk, 
  gmii_rx_dv, gmii_rxd, gmii_rx_er, mdio_gem_mdc, mdio_gem_i, mdio_gem_o, mdio_gem_t, 
  link_status, clock_speed, duplex_status, rgmii_txd, rgmii_tx_ctl, rgmii_txc, rgmii_rxd, 
  rgmii_rx_ctl, rgmii_rxc, mdio_phy_mdc, mdio_phy_i, mdio_phy_o, mdio_phy_t)
/* synthesis syn_black_box black_box_pad_pin="tx_reset,rx_reset,speed_mode[1:0],gmii_tx_en,gmii_txd[7:0],gmii_tx_er,gmii_crs,gmii_col,gmii_rx_dv,gmii_rxd[7:0],gmii_rx_er,mdio_gem_mdc,mdio_gem_i,mdio_gem_o,mdio_gem_t,link_status,clock_speed[1:0],duplex_status,rgmii_txd[3:0],rgmii_tx_ctl,rgmii_txc,rgmii_rxd[3:0],rgmii_rx_ctl,rgmii_rxc,mdio_phy_mdc,mdio_phy_i,mdio_phy_o,mdio_phy_t" */
/* synthesis syn_force_seq_prim="ref_clk_in" */
/* synthesis syn_force_seq_prim="gmii_clk" */
/* synthesis syn_force_seq_prim="gmii_tx_clk" */
/* synthesis syn_force_seq_prim="gmii_rx_clk" */;
  input tx_reset;
  input rx_reset;
  input ref_clk_in /* synthesis syn_isclock = 1 */;
  input gmii_clk /* synthesis syn_isclock = 1 */;
  output [1:0]speed_mode;
  output gmii_tx_clk /* synthesis syn_isclock = 1 */;
  input gmii_tx_en;
  input [7:0]gmii_txd;
  input gmii_tx_er;
  output gmii_crs;
  output gmii_col;
  output gmii_rx_clk /* synthesis syn_isclock = 1 */;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  input mdio_gem_mdc;
  output mdio_gem_i;
  input mdio_gem_o;
  input mdio_gem_t;
  output link_status;
  output [1:0]clock_speed;
  output duplex_status;
  output [3:0]rgmii_txd;
  output rgmii_tx_ctl;
  output rgmii_txc;
  input [3:0]rgmii_rxd;
  input rgmii_rx_ctl;
  input rgmii_rxc;
  output mdio_phy_mdc;
  input mdio_phy_i;
  output mdio_phy_o;
  output mdio_phy_t;
endmodule
