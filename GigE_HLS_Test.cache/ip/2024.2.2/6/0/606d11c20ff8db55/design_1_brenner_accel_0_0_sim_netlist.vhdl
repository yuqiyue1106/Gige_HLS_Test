-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.2 (win64) Build 6060944 Thu Mar 06 19:10:01 MST 2025
-- Date        : Fri Jul 17 17:44:08 2026
-- Host        : REED-MVOT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_brenner_accel_0_0_sim_netlist.vhdl
-- Design      : design_1_brenner_accel_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_ctrl_s_axi is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_ctrl_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    s_axi_ctrl_BVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \int_width_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    mul_ln10_fu_110_p0 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    mul_ln10_fu_110_p1 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_brenner_score_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_ctrl_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_ctrl_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_2_n_0 : STD_LOGIC;
  signal int_brenner_score_ap_vld : STD_LOGIC;
  signal int_brenner_score_ap_vld_i_1_n_0 : STD_LOGIC;
  signal int_brenner_score_ap_vld_i_2_n_0 : STD_LOGIC;
  signal int_brenner_score_ap_vld_i_3_n_0 : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_brenner_score_reg_n_0_[9]\ : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_height0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_height[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_height_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_height_reg_n_0_[9]\ : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_task_ap_done_i_2_n_0 : STD_LOGIC;
  signal int_width0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \int_width[31]_i_1_n_0\ : STD_LOGIC;
  signal \^int_width_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_4_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal tmp_product_i_32_n_1 : STD_LOGIC;
  signal tmp_product_i_32_n_2 : STD_LOGIC;
  signal tmp_product_i_32_n_3 : STD_LOGIC;
  signal tmp_product_i_32_n_4 : STD_LOGIC;
  signal tmp_product_i_32_n_5 : STD_LOGIC;
  signal tmp_product_i_32_n_6 : STD_LOGIC;
  signal tmp_product_i_32_n_7 : STD_LOGIC;
  signal tmp_product_i_33_n_0 : STD_LOGIC;
  signal tmp_product_i_33_n_1 : STD_LOGIC;
  signal tmp_product_i_33_n_2 : STD_LOGIC;
  signal tmp_product_i_33_n_3 : STD_LOGIC;
  signal tmp_product_i_33_n_4 : STD_LOGIC;
  signal tmp_product_i_33_n_5 : STD_LOGIC;
  signal tmp_product_i_33_n_6 : STD_LOGIC;
  signal tmp_product_i_33_n_7 : STD_LOGIC;
  signal tmp_product_i_34_n_0 : STD_LOGIC;
  signal tmp_product_i_34_n_1 : STD_LOGIC;
  signal tmp_product_i_34_n_2 : STD_LOGIC;
  signal tmp_product_i_34_n_3 : STD_LOGIC;
  signal tmp_product_i_34_n_4 : STD_LOGIC;
  signal tmp_product_i_34_n_5 : STD_LOGIC;
  signal tmp_product_i_34_n_6 : STD_LOGIC;
  signal tmp_product_i_34_n_7 : STD_LOGIC;
  signal tmp_product_i_35_n_0 : STD_LOGIC;
  signal tmp_product_i_36_n_0 : STD_LOGIC;
  signal tmp_product_i_37_n_0 : STD_LOGIC;
  signal tmp_product_i_38_n_0 : STD_LOGIC;
  signal tmp_product_i_39_n_0 : STD_LOGIC;
  signal tmp_product_i_40_n_0 : STD_LOGIC;
  signal tmp_product_i_41_n_0 : STD_LOGIC;
  signal tmp_product_i_42_n_0 : STD_LOGIC;
  signal tmp_product_i_43_n_0 : STD_LOGIC;
  signal tmp_product_i_44_n_0 : STD_LOGIC;
  signal tmp_product_i_45_n_0 : STD_LOGIC;
  signal tmp_product_i_46_n_0 : STD_LOGIC;
  signal tmp_product_i_47_n_0 : STD_LOGIC;
  signal tmp_product_i_48_n_0 : STD_LOGIC;
  signal tmp_product_i_49_n_0 : STD_LOGIC;
  signal tmp_product_i_50_n_0 : STD_LOGIC;
  signal tmp_product_i_51_n_0 : STD_LOGIC;
  signal tmp_product_i_51_n_1 : STD_LOGIC;
  signal tmp_product_i_51_n_2 : STD_LOGIC;
  signal tmp_product_i_51_n_3 : STD_LOGIC;
  signal tmp_product_i_51_n_4 : STD_LOGIC;
  signal tmp_product_i_51_n_5 : STD_LOGIC;
  signal tmp_product_i_51_n_6 : STD_LOGIC;
  signal tmp_product_i_51_n_7 : STD_LOGIC;
  signal tmp_product_i_52_n_0 : STD_LOGIC;
  signal tmp_product_i_53_n_0 : STD_LOGIC;
  signal tmp_product_i_54_n_0 : STD_LOGIC;
  signal tmp_product_i_55_n_0 : STD_LOGIC;
  signal tmp_product_i_56_n_0 : STD_LOGIC;
  signal tmp_product_i_57_n_0 : STD_LOGIC;
  signal tmp_product_i_58_n_0 : STD_LOGIC;
  signal tmp_product_i_59_n_0 : STD_LOGIC;
  signal tmp_product_i_60_n_0 : STD_LOGIC;
  signal tmp_product_i_61_n_0 : STD_LOGIC;
  signal tmp_product_i_62_n_0 : STD_LOGIC;
  signal tmp_product_i_63_n_0 : STD_LOGIC;
  signal tmp_product_i_64_n_0 : STD_LOGIC;
  signal tmp_product_i_65_n_0 : STD_LOGIC;
  signal tmp_product_i_66_n_0 : STD_LOGIC;
  signal tmp_product_i_67_n_0 : STD_LOGIC;
  signal tmp_product_i_68_n_0 : STD_LOGIC;
  signal tmp_product_i_69_n_0 : STD_LOGIC;
  signal tmp_product_i_70_n_0 : STD_LOGIC;
  signal tmp_product_i_71_n_0 : STD_LOGIC;
  signal tmp_product_i_72_n_0 : STD_LOGIC;
  signal tmp_product_i_73_n_0 : STD_LOGIC;
  signal tmp_product_i_74_n_0 : STD_LOGIC;
  signal tmp_product_i_75_n_0 : STD_LOGIC;
  signal tmp_product_i_76_n_0 : STD_LOGIC;
  signal tmp_product_i_77_n_0 : STD_LOGIC;
  signal tmp_product_i_78_n_0 : STD_LOGIC;
  signal tmp_product_i_79_n_0 : STD_LOGIC;
  signal tmp_product_i_80_n_0 : STD_LOGIC;
  signal tmp_product_i_81_n_0 : STD_LOGIC;
  signal tmp_product_i_82_n_0 : STD_LOGIC;
  signal tmp_product_i_83_n_0 : STD_LOGIC;
  signal tmp_product_i_84_n_0 : STD_LOGIC;
  signal tmp_product_i_85_n_0 : STD_LOGIC;
  signal tmp_product_i_86_n_0 : STD_LOGIC;
  signal tmp_product_i_87_n_0 : STD_LOGIC;
  signal tmp_product_i_88_n_0 : STD_LOGIC;
  signal tmp_product_i_89_n_0 : STD_LOGIC;
  signal tmp_product_i_90_n_0 : STD_LOGIC;
  signal tmp_product_i_91_n_0 : STD_LOGIC;
  signal tmp_product_i_92_n_0 : STD_LOGIC;
  signal tmp_product_i_93_n_0 : STD_LOGIC;
  signal tmp_product_i_94_n_0 : STD_LOGIC;
  signal tmp_product_i_95_n_0 : STD_LOGIC;
  signal tmp_product_i_96_n_0 : STD_LOGIC;
  signal tmp_product_i_97_n_0 : STD_LOGIC;
  signal tmp_product_i_98_n_0 : STD_LOGIC;
  signal tmp_product_i_99_n_0 : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal NLW_tmp_product_i_32_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_tmp_product_i_33_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_tmp_product_i_34_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_tmp_product_i_51_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_auto_restart_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_brenner_score_ap_vld_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_height[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_height[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_height[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_height[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_height[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_height[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_height[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_height[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_height[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_height[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_height[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_height[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_height[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_height[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_height[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_height[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_height[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_height[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_height[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_height[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_height[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_height[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_height[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_height[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_height[31]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_height[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_height[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_height[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_height[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_height[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_height[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_height[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_ier[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_width[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_width[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_width[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_width[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_width[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_width[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_width[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_width[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_width[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_width[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_width[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_width[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_width[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_width[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_width[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_width[23]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_width[24]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_width[25]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_width[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_width[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_width[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_width[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_width[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_width[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_width[31]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_width[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_width[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_width[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_width[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_width[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_width[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_width[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_10 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_11 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_12 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_13 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_2 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_3 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_4 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_5 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_6 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_7 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_8 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of mul_ln10_reg_175_reg_i_9 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rdata[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tmp_product__0_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \tmp_product__0_i_10\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \tmp_product__0_i_11\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \tmp_product__0_i_12\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \tmp_product__0_i_13\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \tmp_product__0_i_14\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \tmp_product__0_i_15\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \tmp_product__0_i_16\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \tmp_product__0_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \tmp_product__0_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \tmp_product__0_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \tmp_product__0_i_5\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \tmp_product__0_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \tmp_product__0_i_7\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tmp_product__0_i_8\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \tmp_product__0_i_9\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of tmp_product_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of tmp_product_i_10 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of tmp_product_i_11 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of tmp_product_i_12 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of tmp_product_i_13 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of tmp_product_i_14 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of tmp_product_i_15 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of tmp_product_i_16 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of tmp_product_i_17 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of tmp_product_i_18 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of tmp_product_i_19 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of tmp_product_i_2 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of tmp_product_i_20 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of tmp_product_i_21 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of tmp_product_i_22 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of tmp_product_i_23 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of tmp_product_i_24 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of tmp_product_i_25 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of tmp_product_i_26 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of tmp_product_i_27 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of tmp_product_i_28 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of tmp_product_i_29 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of tmp_product_i_3 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of tmp_product_i_30 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of tmp_product_i_31 : label is "soft_lutpair52";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of tmp_product_i_32 : label is 11;
  attribute COMPARATOR_THRESHOLD of tmp_product_i_33 : label is 11;
  attribute COMPARATOR_THRESHOLD of tmp_product_i_34 : label is 11;
  attribute SOFT_HLUTNM of tmp_product_i_4 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of tmp_product_i_5 : label is "soft_lutpair39";
  attribute COMPARATOR_THRESHOLD of tmp_product_i_51 : label is 11;
  attribute SOFT_HLUTNM of tmp_product_i_6 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of tmp_product_i_7 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of tmp_product_i_8 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of tmp_product_i_9 : label is "soft_lutpair41";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  \int_width_reg[31]_0\(31 downto 0) <= \^int_width_reg[31]_0\(31 downto 0);
  interrupt <= \^interrupt\;
  s_axi_ctrl_BVALID <= \^s_axi_ctrl_bvalid\;
  s_axi_ctrl_RVALID <= \^s_axi_ctrl_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BFB"
    )
        port map (
      I0 => s_axi_ctrl_RREADY,
      I1 => \^s_axi_ctrl_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_ctrl_ARVALID,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_ctrl_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_ctrl_RREADY,
      I3 => \^s_axi_ctrl_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_ctrl_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA30BA3F"
    )
        port map (
      I0 => s_axi_ctrl_BREADY,
      I1 => s_axi_ctrl_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_ctrl_bvalid\,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_ctrl_AWVALID,
      I2 => s_axi_ctrl_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => s_axi_ctrl_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \^s_axi_ctrl_bvalid\,
      I3 => s_axi_ctrl_BREADY,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_ctrl_bvalid\,
      R => \^sr\(0)
    );
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(3),
      I1 => ap_start,
      I2 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(2),
      I1 => ap_start,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => D(1)
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => p_4_in(7),
      I1 => ap_start,
      I2 => Q(0),
      I3 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_4_in(2),
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => p_4_in(7),
      I2 => Q(3),
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => p_4_in(7),
      I1 => Q(3),
      I2 => int_ap_start1,
      I3 => s_axi_ctrl_WDATA(0),
      I4 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[5]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => s_axi_ctrl_WSTRB(0),
      I5 => \waddr_reg_n_0_[2]\,
      O => int_ap_start1
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(7),
      I1 => int_auto_restart_i_2_n_0,
      I2 => s_axi_ctrl_WSTRB(0),
      I3 => \waddr_reg_n_0_[2]\,
      I4 => p_4_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[5]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_ctrl_WVALID,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_auto_restart_i_2_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_4_in(7),
      R => \^sr\(0)
    );
int_brenner_score_ap_vld_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFAAAAAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => s_axi_ctrl_ARADDR(5),
      I2 => s_axi_ctrl_ARADDR(1),
      I3 => int_brenner_score_ap_vld_i_2_n_0,
      I4 => int_brenner_score_ap_vld_i_3_n_0,
      I5 => int_brenner_score_ap_vld,
      O => int_brenner_score_ap_vld_i_1_n_0
    );
int_brenner_score_ap_vld_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(3),
      I1 => s_axi_ctrl_ARADDR(4),
      O => int_brenner_score_ap_vld_i_2_n_0
    );
int_brenner_score_ap_vld_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_ctrl_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_ctrl_ARADDR(2),
      I3 => s_axi_ctrl_ARADDR(0),
      O => int_brenner_score_ap_vld_i_3_n_0
    );
int_brenner_score_ap_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_brenner_score_ap_vld_i_1_n_0,
      Q => int_brenner_score_ap_vld,
      R => \^sr\(0)
    );
\int_brenner_score_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(0),
      Q => \int_brenner_score_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(10),
      Q => \int_brenner_score_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(11),
      Q => \int_brenner_score_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(12),
      Q => \int_brenner_score_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(13),
      Q => \int_brenner_score_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(14),
      Q => \int_brenner_score_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(15),
      Q => \int_brenner_score_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(16),
      Q => \int_brenner_score_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(17),
      Q => \int_brenner_score_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(18),
      Q => \int_brenner_score_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(19),
      Q => \int_brenner_score_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(1),
      Q => \int_brenner_score_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(20),
      Q => \int_brenner_score_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(21),
      Q => \int_brenner_score_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(22),
      Q => \int_brenner_score_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(23),
      Q => \int_brenner_score_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(24),
      Q => \int_brenner_score_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(25),
      Q => \int_brenner_score_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(26),
      Q => \int_brenner_score_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(27),
      Q => \int_brenner_score_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(28),
      Q => \int_brenner_score_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(29),
      Q => \int_brenner_score_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(2),
      Q => \int_brenner_score_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(30),
      Q => \int_brenner_score_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(31),
      Q => \int_brenner_score_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(32),
      Q => data5(0),
      R => \^sr\(0)
    );
\int_brenner_score_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(33),
      Q => data5(1),
      R => \^sr\(0)
    );
\int_brenner_score_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(34),
      Q => data5(2),
      R => \^sr\(0)
    );
\int_brenner_score_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(35),
      Q => data5(3),
      R => \^sr\(0)
    );
\int_brenner_score_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(36),
      Q => data5(4),
      R => \^sr\(0)
    );
\int_brenner_score_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(37),
      Q => data5(5),
      R => \^sr\(0)
    );
\int_brenner_score_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(38),
      Q => data5(6),
      R => \^sr\(0)
    );
\int_brenner_score_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(39),
      Q => data5(7),
      R => \^sr\(0)
    );
\int_brenner_score_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(3),
      Q => \int_brenner_score_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(40),
      Q => data5(8),
      R => \^sr\(0)
    );
\int_brenner_score_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(41),
      Q => data5(9),
      R => \^sr\(0)
    );
\int_brenner_score_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(42),
      Q => data5(10),
      R => \^sr\(0)
    );
\int_brenner_score_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(43),
      Q => data5(11),
      R => \^sr\(0)
    );
\int_brenner_score_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(44),
      Q => data5(12),
      R => \^sr\(0)
    );
\int_brenner_score_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(45),
      Q => data5(13),
      R => \^sr\(0)
    );
\int_brenner_score_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(46),
      Q => data5(14),
      R => \^sr\(0)
    );
\int_brenner_score_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(47),
      Q => data5(15),
      R => \^sr\(0)
    );
\int_brenner_score_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(48),
      Q => data5(16),
      R => \^sr\(0)
    );
\int_brenner_score_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(49),
      Q => data5(17),
      R => \^sr\(0)
    );
\int_brenner_score_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(4),
      Q => \int_brenner_score_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(50),
      Q => data5(18),
      R => \^sr\(0)
    );
\int_brenner_score_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(51),
      Q => data5(19),
      R => \^sr\(0)
    );
\int_brenner_score_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(52),
      Q => data5(20),
      R => \^sr\(0)
    );
\int_brenner_score_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(53),
      Q => data5(21),
      R => \^sr\(0)
    );
\int_brenner_score_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(54),
      Q => data5(22),
      R => \^sr\(0)
    );
\int_brenner_score_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(55),
      Q => data5(23),
      R => \^sr\(0)
    );
\int_brenner_score_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(56),
      Q => data5(24),
      R => \^sr\(0)
    );
\int_brenner_score_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(57),
      Q => data5(25),
      R => \^sr\(0)
    );
\int_brenner_score_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(58),
      Q => data5(26),
      R => \^sr\(0)
    );
\int_brenner_score_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(59),
      Q => data5(27),
      R => \^sr\(0)
    );
\int_brenner_score_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(5),
      Q => \int_brenner_score_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(60),
      Q => data5(28),
      R => \^sr\(0)
    );
\int_brenner_score_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(61),
      Q => data5(29),
      R => \^sr\(0)
    );
\int_brenner_score_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(62),
      Q => data5(30),
      R => \^sr\(0)
    );
\int_brenner_score_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(63),
      Q => data5(31),
      R => \^sr\(0)
    );
\int_brenner_score_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(6),
      Q => \int_brenner_score_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(7),
      Q => \int_brenner_score_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(8),
      Q => \int_brenner_score_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\int_brenner_score_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => Q(3),
      D => \int_brenner_score_reg[63]_0\(9),
      Q => \int_brenner_score_reg_n_0_[9]\,
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => int_auto_restart_i_2_n_0,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => s_axi_ctrl_WSTRB(0),
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_height[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[0]\,
      O => int_height0(0)
    );
\int_height[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(10),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[10]\,
      O => int_height0(10)
    );
\int_height[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(11),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[11]\,
      O => int_height0(11)
    );
\int_height[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(12),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[12]\,
      O => int_height0(12)
    );
\int_height[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(13),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[13]\,
      O => int_height0(13)
    );
\int_height[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(14),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[14]\,
      O => int_height0(14)
    );
\int_height[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(15),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[15]\,
      O => int_height0(15)
    );
\int_height[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(16),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[16]\,
      O => int_height0(16)
    );
\int_height[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(17),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[17]\,
      O => int_height0(17)
    );
\int_height[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(18),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[18]\,
      O => int_height0(18)
    );
\int_height[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(19),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[19]\,
      O => int_height0(19)
    );
\int_height[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(1),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[1]\,
      O => int_height0(1)
    );
\int_height[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(20),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[20]\,
      O => int_height0(20)
    );
\int_height[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(21),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[21]\,
      O => int_height0(21)
    );
\int_height[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(22),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[22]\,
      O => int_height0(22)
    );
\int_height[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(23),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \int_height_reg_n_0_[23]\,
      O => int_height0(23)
    );
\int_height[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(24),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[24]\,
      O => int_height0(24)
    );
\int_height[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(25),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[25]\,
      O => int_height0(25)
    );
\int_height[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(26),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[26]\,
      O => int_height0(26)
    );
\int_height[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(27),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[27]\,
      O => int_height0(27)
    );
\int_height[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(28),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[28]\,
      O => int_height0(28)
    );
\int_height[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(29),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[29]\,
      O => int_height0(29)
    );
\int_height[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(2),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[2]\,
      O => int_height0(2)
    );
\int_height[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(30),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[30]\,
      O => int_height0(30)
    );
\int_height[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[5]\,
      I4 => s_axi_ctrl_WVALID,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \int_height[31]_i_1_n_0\
    );
\int_height[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(31),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \int_height_reg_n_0_[31]\,
      O => int_height0(31)
    );
\int_height[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(3),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[3]\,
      O => int_height0(3)
    );
\int_height[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(4),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[4]\,
      O => int_height0(4)
    );
\int_height[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(5),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[5]\,
      O => int_height0(5)
    );
\int_height[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(6),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[6]\,
      O => int_height0(6)
    );
\int_height[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(7),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \int_height_reg_n_0_[7]\,
      O => int_height0(7)
    );
\int_height[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(8),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[8]\,
      O => int_height0(8)
    );
\int_height[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(9),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \int_height_reg_n_0_[9]\,
      O => int_height0(9)
    );
\int_height_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(0),
      Q => \int_height_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_height_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(10),
      Q => \int_height_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\int_height_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(11),
      Q => \int_height_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\int_height_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(12),
      Q => \int_height_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\int_height_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(13),
      Q => \int_height_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\int_height_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(14),
      Q => \int_height_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\int_height_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(15),
      Q => \int_height_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\int_height_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(16),
      Q => \int_height_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\int_height_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(17),
      Q => \int_height_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\int_height_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(18),
      Q => \int_height_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\int_height_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(19),
      Q => \int_height_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\int_height_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(1),
      Q => \int_height_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\int_height_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(20),
      Q => \int_height_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\int_height_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(21),
      Q => \int_height_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\int_height_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(22),
      Q => \int_height_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\int_height_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(23),
      Q => \int_height_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\int_height_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(24),
      Q => \int_height_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\int_height_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(25),
      Q => \int_height_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\int_height_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(26),
      Q => \int_height_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\int_height_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(27),
      Q => \int_height_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\int_height_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(28),
      Q => \int_height_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\int_height_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(29),
      Q => \int_height_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\int_height_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(2),
      Q => \int_height_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\int_height_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(30),
      Q => \int_height_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\int_height_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(31),
      Q => \int_height_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\int_height_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(3),
      Q => \int_height_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\int_height_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(4),
      Q => \int_height_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\int_height_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(5),
      Q => \int_height_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\int_height_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(6),
      Q => \int_height_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\int_height_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(7),
      Q => \int_height_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\int_height_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(8),
      Q => \int_height_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\int_height_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_height[31]_i_1_n_0\,
      D => int_height0(9),
      Q => \int_height_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => s_axi_ctrl_WSTRB(0),
      I5 => \waddr_reg_n_0_[2]\,
      O => int_ier10_out
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_ctrl_WVALID,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_ctrl_WDATA(0),
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_ctrl_WDATA(1),
      Q => p_0_in_0,
      R => \^sr\(0)
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => \int_isr_reg_n_0_[0]\,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => Q(3),
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[5]\,
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \int_ier[1]_i_2_n_0\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => \waddr_reg_n_0_[2]\,
      I5 => s_axi_ctrl_WSTRB(0),
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(1),
      I1 => int_isr7_out,
      I2 => p_0_in_0,
      I3 => Q(3),
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => \^sr\(0)
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5DFD5D0C0CFC0C"
    )
        port map (
      I0 => int_task_ap_done_i_2_n_0,
      I1 => Q(3),
      I2 => auto_restart_status_reg_n_0,
      I3 => ap_idle,
      I4 => p_4_in(2),
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(0),
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => ar_hs,
      I3 => s_axi_ctrl_ARADDR(1),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \rdata[9]_i_3_n_0\,
      O => int_task_ap_done_i_2_n_0
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => \^sr\(0)
    );
\int_width[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(0),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(0),
      O => int_width0(0)
    );
\int_width[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(10),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(10),
      O => int_width0(10)
    );
\int_width[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(11),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(11),
      O => int_width0(11)
    );
\int_width[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(12),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(12),
      O => int_width0(12)
    );
\int_width[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(13),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(13),
      O => int_width0(13)
    );
\int_width[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(14),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(14),
      O => int_width0(14)
    );
\int_width[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(15),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(15),
      O => int_width0(15)
    );
\int_width[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(16),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(16),
      O => int_width0(16)
    );
\int_width[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(17),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(17),
      O => int_width0(17)
    );
\int_width[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(18),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(18),
      O => int_width0(18)
    );
\int_width[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(19),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(19),
      O => int_width0(19)
    );
\int_width[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(1),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(1),
      O => int_width0(1)
    );
\int_width[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(20),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(20),
      O => int_width0(20)
    );
\int_width[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(21),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(21),
      O => int_width0(21)
    );
\int_width[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(22),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(22),
      O => int_width0(22)
    );
\int_width[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(23),
      I1 => s_axi_ctrl_WSTRB(2),
      I2 => \^int_width_reg[31]_0\(23),
      O => int_width0(23)
    );
\int_width[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(24),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(24),
      O => int_width0(24)
    );
\int_width[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(25),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(25),
      O => int_width0(25)
    );
\int_width[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(26),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(26),
      O => int_width0(26)
    );
\int_width[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(27),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(27),
      O => int_width0(27)
    );
\int_width[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(28),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(28),
      O => int_width0(28)
    );
\int_width[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(29),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(29),
      O => int_width0(29)
    );
\int_width[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(2),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(2),
      O => int_width0(2)
    );
\int_width[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(30),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(30),
      O => int_width0(30)
    );
\int_width[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => s_axi_ctrl_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[5]\,
      I5 => \waddr_reg_n_0_[2]\,
      O => \int_width[31]_i_1_n_0\
    );
\int_width[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(31),
      I1 => s_axi_ctrl_WSTRB(3),
      I2 => \^int_width_reg[31]_0\(31),
      O => int_width0(31)
    );
\int_width[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(3),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(3),
      O => int_width0(3)
    );
\int_width[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(4),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(4),
      O => int_width0(4)
    );
\int_width[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(5),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(5),
      O => int_width0(5)
    );
\int_width[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(6),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(6),
      O => int_width0(6)
    );
\int_width[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(7),
      I1 => s_axi_ctrl_WSTRB(0),
      I2 => \^int_width_reg[31]_0\(7),
      O => int_width0(7)
    );
\int_width[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(8),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(8),
      O => int_width0(8)
    );
\int_width[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_WDATA(9),
      I1 => s_axi_ctrl_WSTRB(1),
      I2 => \^int_width_reg[31]_0\(9),
      O => int_width0(9)
    );
\int_width_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(0),
      Q => \^int_width_reg[31]_0\(0),
      R => \^sr\(0)
    );
\int_width_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(10),
      Q => \^int_width_reg[31]_0\(10),
      R => \^sr\(0)
    );
\int_width_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(11),
      Q => \^int_width_reg[31]_0\(11),
      R => \^sr\(0)
    );
\int_width_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(12),
      Q => \^int_width_reg[31]_0\(12),
      R => \^sr\(0)
    );
\int_width_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(13),
      Q => \^int_width_reg[31]_0\(13),
      R => \^sr\(0)
    );
\int_width_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(14),
      Q => \^int_width_reg[31]_0\(14),
      R => \^sr\(0)
    );
\int_width_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(15),
      Q => \^int_width_reg[31]_0\(15),
      R => \^sr\(0)
    );
\int_width_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(16),
      Q => \^int_width_reg[31]_0\(16),
      R => \^sr\(0)
    );
\int_width_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(17),
      Q => \^int_width_reg[31]_0\(17),
      R => \^sr\(0)
    );
\int_width_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(18),
      Q => \^int_width_reg[31]_0\(18),
      R => \^sr\(0)
    );
\int_width_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(19),
      Q => \^int_width_reg[31]_0\(19),
      R => \^sr\(0)
    );
\int_width_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(1),
      Q => \^int_width_reg[31]_0\(1),
      R => \^sr\(0)
    );
\int_width_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(20),
      Q => \^int_width_reg[31]_0\(20),
      R => \^sr\(0)
    );
\int_width_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(21),
      Q => \^int_width_reg[31]_0\(21),
      R => \^sr\(0)
    );
\int_width_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(22),
      Q => \^int_width_reg[31]_0\(22),
      R => \^sr\(0)
    );
\int_width_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(23),
      Q => \^int_width_reg[31]_0\(23),
      R => \^sr\(0)
    );
\int_width_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(24),
      Q => \^int_width_reg[31]_0\(24),
      R => \^sr\(0)
    );
\int_width_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(25),
      Q => \^int_width_reg[31]_0\(25),
      R => \^sr\(0)
    );
\int_width_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(26),
      Q => \^int_width_reg[31]_0\(26),
      R => \^sr\(0)
    );
\int_width_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(27),
      Q => \^int_width_reg[31]_0\(27),
      R => \^sr\(0)
    );
\int_width_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(28),
      Q => \^int_width_reg[31]_0\(28),
      R => \^sr\(0)
    );
\int_width_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(29),
      Q => \^int_width_reg[31]_0\(29),
      R => \^sr\(0)
    );
\int_width_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(2),
      Q => \^int_width_reg[31]_0\(2),
      R => \^sr\(0)
    );
\int_width_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(30),
      Q => \^int_width_reg[31]_0\(30),
      R => \^sr\(0)
    );
\int_width_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(31),
      Q => \^int_width_reg[31]_0\(31),
      R => \^sr\(0)
    );
\int_width_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(3),
      Q => \^int_width_reg[31]_0\(3),
      R => \^sr\(0)
    );
\int_width_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(4),
      Q => \^int_width_reg[31]_0\(4),
      R => \^sr\(0)
    );
\int_width_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(5),
      Q => \^int_width_reg[31]_0\(5),
      R => \^sr\(0)
    );
\int_width_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(6),
      Q => \^int_width_reg[31]_0\(6),
      R => \^sr\(0)
    );
\int_width_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(7),
      Q => \^int_width_reg[31]_0\(7),
      R => \^sr\(0)
    );
\int_width_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(8),
      Q => \^int_width_reg[31]_0\(8),
      R => \^sr\(0)
    );
\int_width_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_width[31]_i_1_n_0\,
      D => int_width0(9),
      Q => \^int_width_reg[31]_0\(9),
      R => \^sr\(0)
    );
mul_ln10_reg_175_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(30),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(30)
    );
mul_ln10_reg_175_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(21),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(21)
    );
mul_ln10_reg_175_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(20),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(20)
    );
mul_ln10_reg_175_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(19),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(19)
    );
mul_ln10_reg_175_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(18),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(18)
    );
mul_ln10_reg_175_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(17),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(17)
    );
mul_ln10_reg_175_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(29),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(29)
    );
mul_ln10_reg_175_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(28),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(28)
    );
mul_ln10_reg_175_reg_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(27),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(27)
    );
mul_ln10_reg_175_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(26),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(26)
    );
mul_ln10_reg_175_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(25),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(25)
    );
mul_ln10_reg_175_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(24),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(24)
    );
mul_ln10_reg_175_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(23),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(23)
    );
mul_ln10_reg_175_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(22),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(22)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \rdata_reg[0]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(5),
      I2 => \rdata[0]_i_3_n_0\,
      I3 => s_axi_ctrl_ARADDR(1),
      I4 => s_axi_ctrl_ARADDR(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11400040"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(2),
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(0),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[0]\,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => int_brenner_score_ap_vld,
      I1 => \int_brenner_score_reg_n_0_[0]\,
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => ap_start,
      O => \rdata[0]_i_4_n_0\
    );
\rdata[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data5(0),
      I1 => s_axi_ctrl_ARADDR(4),
      I2 => \int_isr_reg_n_0_[0]\,
      I3 => s_axi_ctrl_ARADDR(3),
      I4 => int_gie_reg_n_0,
      O => \rdata[0]_i_5_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[10]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(10),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[10]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[10]_i_1_n_0\
    );
\rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[10]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(10),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[10]_i_2_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[11]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(11),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[11]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[11]_i_1_n_0\
    );
\rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[11]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(11),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[11]_i_2_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[12]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(12),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[12]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[12]_i_1_n_0\
    );
\rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[12]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(12),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[12]_i_2_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[13]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(13),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[13]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[13]_i_1_n_0\
    );
\rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[13]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(13),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[13]_i_2_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[14]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(14),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[14]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[14]_i_1_n_0\
    );
\rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[14]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(14),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[14]_i_2_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[15]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(15),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[15]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[15]_i_1_n_0\
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[15]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(15),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[15]_i_2_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[16]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(16),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[16]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[16]_i_1_n_0\
    );
\rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[16]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(16),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[16]_i_2_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[17]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(17),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[17]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[17]_i_1_n_0\
    );
\rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[17]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(17),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[17]_i_2_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[18]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(18),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[18]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[18]_i_1_n_0\
    );
\rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[18]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(18),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[18]_i_2_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[19]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(19),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[19]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[19]_i_1_n_0\
    );
\rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[19]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(19),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[19]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(5),
      I2 => \rdata[1]_i_3_n_0\,
      I3 => s_axi_ctrl_ARADDR(1),
      I4 => s_axi_ctrl_ARADDR(0),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3088FFFF30880000"
    )
        port map (
      I0 => data5(1),
      I1 => s_axi_ctrl_ARADDR(4),
      I2 => \int_isr_reg_n_0_[1]\,
      I3 => s_axi_ctrl_ARADDR(3),
      I4 => s_axi_ctrl_ARADDR(2),
      I5 => \rdata[1]_i_4_n_0\,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11400040"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(2),
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(1),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[1]\,
      O => \rdata[1]_i_3_n_0\
    );
\rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[1]\,
      I1 => s_axi_ctrl_ARADDR(4),
      I2 => p_0_in_0,
      I3 => s_axi_ctrl_ARADDR(3),
      I4 => int_task_ap_done,
      O => \rdata[1]_i_4_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[20]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(20),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[20]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[20]_i_1_n_0\
    );
\rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[20]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(20),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[20]_i_2_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[21]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(21),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[21]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[21]_i_1_n_0\
    );
\rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[21]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(21),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[21]_i_2_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[22]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(22),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[22]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[22]_i_1_n_0\
    );
\rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[22]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(22),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[22]_i_2_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[23]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(23),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[23]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[23]_i_1_n_0\
    );
\rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[23]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(23),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[23]_i_2_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[24]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(24),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[24]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[24]_i_1_n_0\
    );
\rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[24]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(24),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[24]_i_2_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[25]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(25),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[25]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[25]_i_1_n_0\
    );
\rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[25]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(25),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[25]_i_2_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[26]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(26),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[26]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[26]_i_1_n_0\
    );
\rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[26]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(26),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[26]_i_2_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[27]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(27),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[27]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[27]_i_1_n_0\
    );
\rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[27]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(27),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[27]_i_2_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[28]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(28),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[28]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[28]_i_1_n_0\
    );
\rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[28]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(28),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[28]_i_2_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[29]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(29),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[29]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[29]_i_1_n_0\
    );
\rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[29]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(29),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[29]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[2]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(2),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[2]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[2]_i_1_n_0\
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC00F0AA"
    )
        port map (
      I0 => p_4_in(2),
      I1 => data5(2),
      I2 => \int_brenner_score_reg_n_0_[2]\,
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(2),
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[2]_i_2_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[30]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(30),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[30]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[30]_i_1_n_0\
    );
\rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[30]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(30),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[30]_i_2_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => s_axi_ctrl_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_ctrl_ARADDR(1),
      I3 => s_axi_ctrl_ARADDR(0),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_ctrl_ARVALID,
      O => ar_hs
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBAAABAAABAAA"
    )
        port map (
      I0 => \rdata[31]_i_4_n_0\,
      I1 => \rdata[31]_i_5_n_0\,
      I2 => s_axi_ctrl_ARADDR(3),
      I3 => \^int_width_reg[31]_0\(31),
      I4 => s_axi_ctrl_ARADDR(4),
      I5 => \int_height_reg_n_0_[31]\,
      O => \rdata[31]_i_3_n_0\
    );
\rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[31]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(31),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[31]_i_4_n_0\
    );
\rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(5),
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => s_axi_ctrl_ARADDR(3),
      O => \rdata[31]_i_5_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F888FFFFFFFF"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(3),
      I1 => \^int_width_reg[31]_0\(3),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => \int_height_reg_n_0_[3]\,
      I4 => \rdata[31]_i_5_n_0\,
      I5 => \rdata[3]_i_2_n_0\,
      O => \rdata[3]_i_1_n_0\
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33FF0F55"
    )
        port map (
      I0 => int_ap_ready,
      I1 => data5(3),
      I2 => \int_brenner_score_reg_n_0_[3]\,
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(2),
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[3]_i_2_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[4]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(4),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[4]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[4]_i_1_n_0\
    );
\rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[4]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(4),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[4]_i_2_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[5]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(5),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[5]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[5]_i_1_n_0\
    );
\rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[5]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(5),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[5]_i_2_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[6]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(6),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[6]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[6]_i_1_n_0\
    );
\rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[6]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(6),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[6]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F888FFFFFFFF"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(3),
      I1 => \^int_width_reg[31]_0\(7),
      I2 => s_axi_ctrl_ARADDR(4),
      I3 => \int_height_reg_n_0_[7]\,
      I4 => \rdata[31]_i_5_n_0\,
      I5 => \rdata[7]_i_2_n_0\,
      O => \rdata[7]_i_1_n_0\
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33FF0F55"
    )
        port map (
      I0 => p_4_in(7),
      I1 => data5(7),
      I2 => \int_brenner_score_reg_n_0_[7]\,
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(2),
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[7]_i_2_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[8]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(8),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[8]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[8]_i_1_n_0\
    );
\rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \int_brenner_score_reg_n_0_[8]\,
      I1 => s_axi_ctrl_ARADDR(2),
      I2 => data5(8),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(3),
      I5 => s_axi_ctrl_ARADDR(5),
      O => \rdata[8]_i_2_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEAEAEA"
    )
        port map (
      I0 => \rdata[9]_i_2_n_0\,
      I1 => s_axi_ctrl_ARADDR(3),
      I2 => \^int_width_reg[31]_0\(9),
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => \int_height_reg_n_0_[9]\,
      I5 => \rdata[31]_i_5_n_0\,
      O => \rdata[9]_i_1_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC00F0AA"
    )
        port map (
      I0 => \^interrupt\,
      I1 => data5(9),
      I2 => \int_brenner_score_reg_n_0_[9]\,
      I3 => s_axi_ctrl_ARADDR(4),
      I4 => s_axi_ctrl_ARADDR(2),
      I5 => \rdata[9]_i_3_n_0\,
      O => \rdata[9]_i_2_n_0\
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_ctrl_ARADDR(3),
      I1 => s_axi_ctrl_ARADDR(5),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(0),
      R => '0'
    );
\rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rdata[0]_i_4_n_0\,
      I1 => \rdata[0]_i_5_n_0\,
      O => \rdata_reg[0]_i_2_n_0\,
      S => s_axi_ctrl_ARADDR(2)
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[31]_i_3_n_0\,
      Q => s_axi_ctrl_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_ctrl_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\tmp_product__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[16]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(16)
    );
\tmp_product__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[7]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(7)
    );
\tmp_product__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[6]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(6)
    );
\tmp_product__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[5]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(5)
    );
\tmp_product__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[4]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(4)
    );
\tmp_product__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[3]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(3)
    );
\tmp_product__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[2]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(2)
    );
\tmp_product__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[1]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(1)
    );
\tmp_product__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[0]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(0)
    );
\tmp_product__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[15]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(15)
    );
\tmp_product__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[14]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(14)
    );
\tmp_product__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[13]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(13)
    );
\tmp_product__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[12]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(12)
    );
\tmp_product__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[11]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(11)
    );
\tmp_product__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[10]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(10)
    );
\tmp_product__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[9]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(9)
    );
\tmp_product__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[8]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(8)
    );
tmp_product_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[30]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(30)
    );
tmp_product_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[21]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(21)
    );
tmp_product_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[20]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(20)
    );
tmp_product_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[19]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(19)
    );
tmp_product_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[18]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(18)
    );
tmp_product_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[17]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(17)
    );
tmp_product_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(16),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(16)
    );
tmp_product_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(15),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(15)
    );
tmp_product_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(14),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(14)
    );
tmp_product_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(13),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(13)
    );
tmp_product_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(12),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(12)
    );
tmp_product_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[29]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(29)
    );
tmp_product_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(11),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(11)
    );
tmp_product_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(10),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(10)
    );
tmp_product_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(9),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(9)
    );
tmp_product_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(8),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(8)
    );
tmp_product_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(7),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(7)
    );
tmp_product_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(6),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(6)
    );
tmp_product_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(5),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(5)
    );
tmp_product_i_27: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(4),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(4)
    );
tmp_product_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(3),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(3)
    );
tmp_product_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(2),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(2)
    );
tmp_product_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[28]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(28)
    );
tmp_product_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(1),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(1)
    );
tmp_product_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(0),
      I1 => tmp_product_i_33_n_0,
      O => mul_ln10_fu_110_p1(0)
    );
tmp_product_i_32: unisim.vcomponents.CARRY8
     port map (
      CI => tmp_product_i_34_n_0,
      CI_TOP => '0',
      CO(7) => p_0_in,
      CO(6) => tmp_product_i_32_n_1,
      CO(5) => tmp_product_i_32_n_2,
      CO(4) => tmp_product_i_32_n_3,
      CO(3) => tmp_product_i_32_n_4,
      CO(2) => tmp_product_i_32_n_5,
      CO(1) => tmp_product_i_32_n_6,
      CO(0) => tmp_product_i_32_n_7,
      DI(7) => tmp_product_i_35_n_0,
      DI(6) => tmp_product_i_36_n_0,
      DI(5) => tmp_product_i_37_n_0,
      DI(4) => tmp_product_i_38_n_0,
      DI(3) => tmp_product_i_39_n_0,
      DI(2) => tmp_product_i_40_n_0,
      DI(1) => tmp_product_i_41_n_0,
      DI(0) => tmp_product_i_42_n_0,
      O(7 downto 0) => NLW_tmp_product_i_32_O_UNCONNECTED(7 downto 0),
      S(7) => tmp_product_i_43_n_0,
      S(6) => tmp_product_i_44_n_0,
      S(5) => tmp_product_i_45_n_0,
      S(4) => tmp_product_i_46_n_0,
      S(3) => tmp_product_i_47_n_0,
      S(2) => tmp_product_i_48_n_0,
      S(1) => tmp_product_i_49_n_0,
      S(0) => tmp_product_i_50_n_0
    );
tmp_product_i_33: unisim.vcomponents.CARRY8
     port map (
      CI => tmp_product_i_51_n_0,
      CI_TOP => '0',
      CO(7) => tmp_product_i_33_n_0,
      CO(6) => tmp_product_i_33_n_1,
      CO(5) => tmp_product_i_33_n_2,
      CO(4) => tmp_product_i_33_n_3,
      CO(3) => tmp_product_i_33_n_4,
      CO(2) => tmp_product_i_33_n_5,
      CO(1) => tmp_product_i_33_n_6,
      CO(0) => tmp_product_i_33_n_7,
      DI(7) => tmp_product_i_52_n_0,
      DI(6) => tmp_product_i_53_n_0,
      DI(5) => tmp_product_i_54_n_0,
      DI(4) => tmp_product_i_55_n_0,
      DI(3) => tmp_product_i_56_n_0,
      DI(2) => tmp_product_i_57_n_0,
      DI(1) => tmp_product_i_58_n_0,
      DI(0) => tmp_product_i_59_n_0,
      O(7 downto 0) => NLW_tmp_product_i_33_O_UNCONNECTED(7 downto 0),
      S(7) => tmp_product_i_60_n_0,
      S(6) => tmp_product_i_61_n_0,
      S(5) => tmp_product_i_62_n_0,
      S(4) => tmp_product_i_63_n_0,
      S(3) => tmp_product_i_64_n_0,
      S(2) => tmp_product_i_65_n_0,
      S(1) => tmp_product_i_66_n_0,
      S(0) => tmp_product_i_67_n_0
    );
tmp_product_i_34: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => tmp_product_i_34_n_0,
      CO(6) => tmp_product_i_34_n_1,
      CO(5) => tmp_product_i_34_n_2,
      CO(4) => tmp_product_i_34_n_3,
      CO(3) => tmp_product_i_34_n_4,
      CO(2) => tmp_product_i_34_n_5,
      CO(1) => tmp_product_i_34_n_6,
      CO(0) => tmp_product_i_34_n_7,
      DI(7) => tmp_product_i_68_n_0,
      DI(6) => tmp_product_i_69_n_0,
      DI(5) => tmp_product_i_70_n_0,
      DI(4) => tmp_product_i_71_n_0,
      DI(3) => tmp_product_i_72_n_0,
      DI(2) => tmp_product_i_73_n_0,
      DI(1) => tmp_product_i_74_n_0,
      DI(0) => tmp_product_i_75_n_0,
      O(7 downto 0) => NLW_tmp_product_i_34_O_UNCONNECTED(7 downto 0),
      S(7) => tmp_product_i_76_n_0,
      S(6) => tmp_product_i_77_n_0,
      S(5) => tmp_product_i_78_n_0,
      S(4) => tmp_product_i_79_n_0,
      S(3) => tmp_product_i_80_n_0,
      S(2) => tmp_product_i_81_n_0,
      S(1) => tmp_product_i_82_n_0,
      S(0) => tmp_product_i_83_n_0
    );
tmp_product_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \int_height_reg_n_0_[30]\,
      I1 => \int_height_reg_n_0_[31]\,
      O => tmp_product_i_35_n_0
    );
tmp_product_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[29]\,
      I1 => \int_height_reg_n_0_[28]\,
      O => tmp_product_i_36_n_0
    );
tmp_product_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[27]\,
      I1 => \int_height_reg_n_0_[26]\,
      O => tmp_product_i_37_n_0
    );
tmp_product_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[25]\,
      I1 => \int_height_reg_n_0_[24]\,
      O => tmp_product_i_38_n_0
    );
tmp_product_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[23]\,
      I1 => \int_height_reg_n_0_[22]\,
      O => tmp_product_i_39_n_0
    );
tmp_product_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[27]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(27)
    );
tmp_product_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[21]\,
      I1 => \int_height_reg_n_0_[20]\,
      O => tmp_product_i_40_n_0
    );
tmp_product_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[19]\,
      I1 => \int_height_reg_n_0_[18]\,
      O => tmp_product_i_41_n_0
    );
tmp_product_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[17]\,
      I1 => \int_height_reg_n_0_[16]\,
      O => tmp_product_i_42_n_0
    );
tmp_product_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[30]\,
      I1 => \int_height_reg_n_0_[31]\,
      O => tmp_product_i_43_n_0
    );
tmp_product_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[28]\,
      I1 => \int_height_reg_n_0_[29]\,
      O => tmp_product_i_44_n_0
    );
tmp_product_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[26]\,
      I1 => \int_height_reg_n_0_[27]\,
      O => tmp_product_i_45_n_0
    );
tmp_product_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[24]\,
      I1 => \int_height_reg_n_0_[25]\,
      O => tmp_product_i_46_n_0
    );
tmp_product_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[22]\,
      I1 => \int_height_reg_n_0_[23]\,
      O => tmp_product_i_47_n_0
    );
tmp_product_i_48: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[20]\,
      I1 => \int_height_reg_n_0_[21]\,
      O => tmp_product_i_48_n_0
    );
tmp_product_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[18]\,
      I1 => \int_height_reg_n_0_[19]\,
      O => tmp_product_i_49_n_0
    );
tmp_product_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[26]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(26)
    );
tmp_product_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[16]\,
      I1 => \int_height_reg_n_0_[17]\,
      O => tmp_product_i_50_n_0
    );
tmp_product_i_51: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => tmp_product_i_51_n_0,
      CO(6) => tmp_product_i_51_n_1,
      CO(5) => tmp_product_i_51_n_2,
      CO(4) => tmp_product_i_51_n_3,
      CO(3) => tmp_product_i_51_n_4,
      CO(2) => tmp_product_i_51_n_5,
      CO(1) => tmp_product_i_51_n_6,
      CO(0) => tmp_product_i_51_n_7,
      DI(7) => tmp_product_i_84_n_0,
      DI(6) => tmp_product_i_85_n_0,
      DI(5) => tmp_product_i_86_n_0,
      DI(4) => tmp_product_i_87_n_0,
      DI(3) => tmp_product_i_88_n_0,
      DI(2) => tmp_product_i_89_n_0,
      DI(1) => tmp_product_i_90_n_0,
      DI(0) => tmp_product_i_91_n_0,
      O(7 downto 0) => NLW_tmp_product_i_51_O_UNCONNECTED(7 downto 0),
      S(7) => tmp_product_i_92_n_0,
      S(6) => tmp_product_i_93_n_0,
      S(5) => tmp_product_i_94_n_0,
      S(4) => tmp_product_i_95_n_0,
      S(3) => tmp_product_i_96_n_0,
      S(2) => tmp_product_i_97_n_0,
      S(1) => tmp_product_i_98_n_0,
      S(0) => tmp_product_i_99_n_0
    );
tmp_product_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(30),
      I1 => \^int_width_reg[31]_0\(31),
      O => tmp_product_i_52_n_0
    );
tmp_product_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(29),
      I1 => \^int_width_reg[31]_0\(28),
      O => tmp_product_i_53_n_0
    );
tmp_product_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(27),
      I1 => \^int_width_reg[31]_0\(26),
      O => tmp_product_i_54_n_0
    );
tmp_product_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(25),
      I1 => \^int_width_reg[31]_0\(24),
      O => tmp_product_i_55_n_0
    );
tmp_product_i_56: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(23),
      I1 => \^int_width_reg[31]_0\(22),
      O => tmp_product_i_56_n_0
    );
tmp_product_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(21),
      I1 => \^int_width_reg[31]_0\(20),
      O => tmp_product_i_57_n_0
    );
tmp_product_i_58: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(19),
      I1 => \^int_width_reg[31]_0\(18),
      O => tmp_product_i_58_n_0
    );
tmp_product_i_59: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(17),
      I1 => \^int_width_reg[31]_0\(16),
      O => tmp_product_i_59_n_0
    );
tmp_product_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[25]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(25)
    );
tmp_product_i_60: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(30),
      I1 => \^int_width_reg[31]_0\(31),
      O => tmp_product_i_60_n_0
    );
tmp_product_i_61: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(28),
      I1 => \^int_width_reg[31]_0\(29),
      O => tmp_product_i_61_n_0
    );
tmp_product_i_62: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(26),
      I1 => \^int_width_reg[31]_0\(27),
      O => tmp_product_i_62_n_0
    );
tmp_product_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(24),
      I1 => \^int_width_reg[31]_0\(25),
      O => tmp_product_i_63_n_0
    );
tmp_product_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(22),
      I1 => \^int_width_reg[31]_0\(23),
      O => tmp_product_i_64_n_0
    );
tmp_product_i_65: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(20),
      I1 => \^int_width_reg[31]_0\(21),
      O => tmp_product_i_65_n_0
    );
tmp_product_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(18),
      I1 => \^int_width_reg[31]_0\(19),
      O => tmp_product_i_66_n_0
    );
tmp_product_i_67: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(16),
      I1 => \^int_width_reg[31]_0\(17),
      O => tmp_product_i_67_n_0
    );
tmp_product_i_68: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[15]\,
      I1 => \int_height_reg_n_0_[14]\,
      O => tmp_product_i_68_n_0
    );
tmp_product_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[13]\,
      I1 => \int_height_reg_n_0_[12]\,
      O => tmp_product_i_69_n_0
    );
tmp_product_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[24]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(24)
    );
tmp_product_i_70: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[11]\,
      I1 => \int_height_reg_n_0_[10]\,
      O => tmp_product_i_70_n_0
    );
tmp_product_i_71: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[9]\,
      I1 => \int_height_reg_n_0_[8]\,
      O => tmp_product_i_71_n_0
    );
tmp_product_i_72: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[7]\,
      I1 => \int_height_reg_n_0_[6]\,
      O => tmp_product_i_72_n_0
    );
tmp_product_i_73: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[5]\,
      I1 => \int_height_reg_n_0_[4]\,
      O => tmp_product_i_73_n_0
    );
tmp_product_i_74: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[3]\,
      I1 => \int_height_reg_n_0_[2]\,
      O => tmp_product_i_74_n_0
    );
tmp_product_i_75: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \int_height_reg_n_0_[1]\,
      I1 => \int_height_reg_n_0_[0]\,
      O => tmp_product_i_75_n_0
    );
tmp_product_i_76: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[14]\,
      I1 => \int_height_reg_n_0_[15]\,
      O => tmp_product_i_76_n_0
    );
tmp_product_i_77: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[12]\,
      I1 => \int_height_reg_n_0_[13]\,
      O => tmp_product_i_77_n_0
    );
tmp_product_i_78: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[10]\,
      I1 => \int_height_reg_n_0_[11]\,
      O => tmp_product_i_78_n_0
    );
tmp_product_i_79: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[8]\,
      I1 => \int_height_reg_n_0_[9]\,
      O => tmp_product_i_79_n_0
    );
tmp_product_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[23]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(23)
    );
tmp_product_i_80: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[6]\,
      I1 => \int_height_reg_n_0_[7]\,
      O => tmp_product_i_80_n_0
    );
tmp_product_i_81: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[4]\,
      I1 => \int_height_reg_n_0_[5]\,
      O => tmp_product_i_81_n_0
    );
tmp_product_i_82: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[2]\,
      I1 => \int_height_reg_n_0_[3]\,
      O => tmp_product_i_82_n_0
    );
tmp_product_i_83: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \int_height_reg_n_0_[0]\,
      I1 => \int_height_reg_n_0_[1]\,
      O => tmp_product_i_83_n_0
    );
tmp_product_i_84: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(15),
      I1 => \^int_width_reg[31]_0\(14),
      O => tmp_product_i_84_n_0
    );
tmp_product_i_85: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(13),
      I1 => \^int_width_reg[31]_0\(12),
      O => tmp_product_i_85_n_0
    );
tmp_product_i_86: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(11),
      I1 => \^int_width_reg[31]_0\(10),
      O => tmp_product_i_86_n_0
    );
tmp_product_i_87: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(9),
      I1 => \^int_width_reg[31]_0\(8),
      O => tmp_product_i_87_n_0
    );
tmp_product_i_88: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(7),
      I1 => \^int_width_reg[31]_0\(6),
      O => tmp_product_i_88_n_0
    );
tmp_product_i_89: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(5),
      I1 => \^int_width_reg[31]_0\(4),
      O => tmp_product_i_89_n_0
    );
tmp_product_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \int_height_reg_n_0_[22]\,
      I1 => p_0_in,
      O => mul_ln10_fu_110_p0(22)
    );
tmp_product_i_90: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(3),
      I1 => \^int_width_reg[31]_0\(2),
      O => tmp_product_i_90_n_0
    );
tmp_product_i_91: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(1),
      I1 => \^int_width_reg[31]_0\(0),
      O => tmp_product_i_91_n_0
    );
tmp_product_i_92: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(14),
      I1 => \^int_width_reg[31]_0\(15),
      O => tmp_product_i_92_n_0
    );
tmp_product_i_93: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(12),
      I1 => \^int_width_reg[31]_0\(13),
      O => tmp_product_i_93_n_0
    );
tmp_product_i_94: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(10),
      I1 => \^int_width_reg[31]_0\(11),
      O => tmp_product_i_94_n_0
    );
tmp_product_i_95: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(8),
      I1 => \^int_width_reg[31]_0\(9),
      O => tmp_product_i_95_n_0
    );
tmp_product_i_96: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(6),
      I1 => \^int_width_reg[31]_0\(7),
      O => tmp_product_i_96_n_0
    );
tmp_product_i_97: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(4),
      I1 => \^int_width_reg[31]_0\(5),
      O => tmp_product_i_97_n_0
    );
tmp_product_i_98: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(2),
      I1 => \^int_width_reg[31]_0\(3),
      O => tmp_product_i_98_n_0
    );
tmp_product_i_99: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_width_reg[31]_0\(0),
      I1 => \^int_width_reg[31]_0\(1),
      O => tmp_product_i_99_n_0
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_ctrl_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_ctrl_AWADDR(3),
      Q => \waddr_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_flow_control_loop_pipe_sequential_init is
  port (
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TREADY2 : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_exit_ready_pp0_iter2_reg : in STD_LOGIC;
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \^s_axis_video_tready2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \icmp_ln31_reg_337[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \x_fu_74[30]_i_1\ : label is "soft_lutpair67";
begin
  s_axis_video_TREADY2 <= \^s_axis_video_tready2\;
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAABFBFAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => \^s_axis_video_tready2\,
      I2 => ap_loop_exit_ready_pp0_iter2_reg,
      I3 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      I4 => ap_done_cache,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => \ap_CS_fsm_reg[2]\(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA080808"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => ap_done_cache,
      I2 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      I3 => ap_loop_exit_ready_pp0_iter2_reg,
      I4 => \^s_axis_video_tready2\,
      O => \ap_CS_fsm_reg[2]\(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF5555FFCF0000"
    )
        port map (
      I0 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      I1 => ap_done_cache_reg_0,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => Q(0),
      I4 => ap_loop_exit_ready_pp0_iter2_reg,
      I5 => ap_done_cache,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBF3FBF3"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => ap_rst_n,
      I2 => ap_loop_init_int,
      I3 => \^s_axis_video_tready2\,
      I4 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
\icmp_ln31_reg_337[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => ap_done_cache_reg_0,
      O => \^s_axis_video_tready2\
    );
\x_fu_74[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_done_cache_reg_0,
      I2 => ap_enable_reg_pp0_iter2,
      I3 => Q(0),
      I4 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_31ns_31ns_62_1_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ACOUT : out STD_LOGIC_VECTOR ( 29 downto 0 );
    DSP_ALU_INST : out STD_LOGIC_VECTOR ( 16 downto 0 );
    DSP_ALU_INST_0 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 43 downto 0 );
    \indvar_flatten_fu_82_reg[61]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mul_ln10_fu_110_p0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    mul_ln10_fu_110_p1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    P : in STD_LOGIC_VECTOR ( 43 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln31_fu_155_p2_carry__1_i_3\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_product_carry__1_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \tmp_product_carry__3_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_31ns_31ns_62_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_31ns_31ns_62_1_1 is
  signal \mul_ln10_reg_175_reg__1\ : STD_LOGIC_VECTOR ( 61 downto 60 );
  signal \tmp_product__0_n_58\ : STD_LOGIC;
  signal \tmp_product__0_n_59\ : STD_LOGIC;
  signal \tmp_product__0_n_60\ : STD_LOGIC;
  signal \tmp_product__0_n_61\ : STD_LOGIC;
  signal \tmp_product__0_n_62\ : STD_LOGIC;
  signal \tmp_product__0_n_63\ : STD_LOGIC;
  signal \tmp_product__0_n_64\ : STD_LOGIC;
  signal \tmp_product__0_n_65\ : STD_LOGIC;
  signal \tmp_product__0_n_66\ : STD_LOGIC;
  signal \tmp_product__0_n_67\ : STD_LOGIC;
  signal \tmp_product__0_n_68\ : STD_LOGIC;
  signal \tmp_product__0_n_69\ : STD_LOGIC;
  signal \tmp_product__0_n_70\ : STD_LOGIC;
  signal \tmp_product__0_n_71\ : STD_LOGIC;
  signal \tmp_product__0_n_72\ : STD_LOGIC;
  signal \tmp_product__0_n_73\ : STD_LOGIC;
  signal \tmp_product__0_n_74\ : STD_LOGIC;
  signal \tmp_product__0_n_75\ : STD_LOGIC;
  signal \tmp_product__0_n_76\ : STD_LOGIC;
  signal \tmp_product__0_n_77\ : STD_LOGIC;
  signal \tmp_product__0_n_78\ : STD_LOGIC;
  signal \tmp_product__0_n_79\ : STD_LOGIC;
  signal \tmp_product__0_n_80\ : STD_LOGIC;
  signal \tmp_product__0_n_81\ : STD_LOGIC;
  signal \tmp_product__0_n_82\ : STD_LOGIC;
  signal \tmp_product__0_n_83\ : STD_LOGIC;
  signal \tmp_product__0_n_84\ : STD_LOGIC;
  signal \tmp_product__0_n_85\ : STD_LOGIC;
  signal \tmp_product__0_n_86\ : STD_LOGIC;
  signal \tmp_product__0_n_87\ : STD_LOGIC;
  signal \tmp_product__0_n_88\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_4\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_5\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_6\ : STD_LOGIC;
  signal \tmp_product_carry__0_n_7\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_4\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_5\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_6\ : STD_LOGIC;
  signal \tmp_product_carry__1_n_7\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_4\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_5\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_6\ : STD_LOGIC;
  signal \tmp_product_carry__2_n_7\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_0\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_1\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_2\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_3\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_4\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_5\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_6\ : STD_LOGIC;
  signal \tmp_product_carry__3_n_7\ : STD_LOGIC;
  signal \tmp_product_carry__4_n_3\ : STD_LOGIC;
  signal \tmp_product_carry__4_n_4\ : STD_LOGIC;
  signal \tmp_product_carry__4_n_5\ : STD_LOGIC;
  signal \tmp_product_carry__4_n_6\ : STD_LOGIC;
  signal \tmp_product_carry__4_n_7\ : STD_LOGIC;
  signal tmp_product_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_product_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_product_carry_n_0 : STD_LOGIC;
  signal tmp_product_carry_n_1 : STD_LOGIC;
  signal tmp_product_carry_n_2 : STD_LOGIC;
  signal tmp_product_carry_n_3 : STD_LOGIC;
  signal tmp_product_carry_n_4 : STD_LOGIC;
  signal tmp_product_carry_n_5 : STD_LOGIC;
  signal tmp_product_carry_n_6 : STD_LOGIC;
  signal tmp_product_carry_n_7 : STD_LOGIC;
  signal tmp_product_n_58 : STD_LOGIC;
  signal tmp_product_n_59 : STD_LOGIC;
  signal tmp_product_n_60 : STD_LOGIC;
  signal tmp_product_n_61 : STD_LOGIC;
  signal tmp_product_n_62 : STD_LOGIC;
  signal tmp_product_n_63 : STD_LOGIC;
  signal tmp_product_n_64 : STD_LOGIC;
  signal tmp_product_n_65 : STD_LOGIC;
  signal tmp_product_n_66 : STD_LOGIC;
  signal tmp_product_n_67 : STD_LOGIC;
  signal tmp_product_n_68 : STD_LOGIC;
  signal tmp_product_n_69 : STD_LOGIC;
  signal tmp_product_n_70 : STD_LOGIC;
  signal tmp_product_n_71 : STD_LOGIC;
  signal tmp_product_n_72 : STD_LOGIC;
  signal tmp_product_n_73 : STD_LOGIC;
  signal tmp_product_n_74 : STD_LOGIC;
  signal tmp_product_n_75 : STD_LOGIC;
  signal tmp_product_n_76 : STD_LOGIC;
  signal tmp_product_n_77 : STD_LOGIC;
  signal tmp_product_n_78 : STD_LOGIC;
  signal tmp_product_n_79 : STD_LOGIC;
  signal tmp_product_n_80 : STD_LOGIC;
  signal tmp_product_n_81 : STD_LOGIC;
  signal tmp_product_n_82 : STD_LOGIC;
  signal tmp_product_n_83 : STD_LOGIC;
  signal tmp_product_n_84 : STD_LOGIC;
  signal tmp_product_n_85 : STD_LOGIC;
  signal tmp_product_n_86 : STD_LOGIC;
  signal tmp_product_n_87 : STD_LOGIC;
  signal tmp_product_n_88 : STD_LOGIC;
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_tmp_product__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_product__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_tmp_product_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_tmp_product_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of tmp_product : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute KEEP_HIERARCHY of \tmp_product__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \tmp_product__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of tmp_product_carry : label is 35;
  attribute ADDER_THRESHOLD of \tmp_product_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tmp_product_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tmp_product_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tmp_product_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \tmp_product_carry__4\ : label is 35;
begin
\icmp_ln31_fu_155_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mul_ln10_reg_175_reg__1\(61),
      I1 => S(1),
      I2 => \mul_ln10_reg_175_reg__1\(60),
      I3 => S(0),
      O => \indvar_flatten_fu_82_reg[61]\(0)
    );
tmp_product: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => mul_ln10_fu_110_p1(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => mul_ln10_fu_110_p0(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47) => tmp_product_n_58,
      P(46) => tmp_product_n_59,
      P(45) => tmp_product_n_60,
      P(44) => tmp_product_n_61,
      P(43) => tmp_product_n_62,
      P(42) => tmp_product_n_63,
      P(41) => tmp_product_n_64,
      P(40) => tmp_product_n_65,
      P(39) => tmp_product_n_66,
      P(38) => tmp_product_n_67,
      P(37) => tmp_product_n_68,
      P(36) => tmp_product_n_69,
      P(35) => tmp_product_n_70,
      P(34) => tmp_product_n_71,
      P(33) => tmp_product_n_72,
      P(32) => tmp_product_n_73,
      P(31) => tmp_product_n_74,
      P(30) => tmp_product_n_75,
      P(29) => tmp_product_n_76,
      P(28) => tmp_product_n_77,
      P(27) => tmp_product_n_78,
      P(26) => tmp_product_n_79,
      P(25) => tmp_product_n_80,
      P(24) => tmp_product_n_81,
      P(23) => tmp_product_n_82,
      P(22) => tmp_product_n_83,
      P(21) => tmp_product_n_84,
      P(20) => tmp_product_n_85,
      P(19) => tmp_product_n_86,
      P(18) => tmp_product_n_87,
      P(17) => tmp_product_n_88,
      P(16 downto 0) => D(16 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => PCOUT(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_tmp_product_XOROUT_UNCONNECTED(7 downto 0)
    );
\tmp_product__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => mul_ln10_fu_110_p0(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => ACOUT(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => mul_ln10_fu_110_p1(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_tmp_product__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_tmp_product__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_tmp_product__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_tmp_product__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => \NLW_tmp_product__0_OVERFLOW_UNCONNECTED\,
      P(47) => \tmp_product__0_n_58\,
      P(46) => \tmp_product__0_n_59\,
      P(45) => \tmp_product__0_n_60\,
      P(44) => \tmp_product__0_n_61\,
      P(43) => \tmp_product__0_n_62\,
      P(42) => \tmp_product__0_n_63\,
      P(41) => \tmp_product__0_n_64\,
      P(40) => \tmp_product__0_n_65\,
      P(39) => \tmp_product__0_n_66\,
      P(38) => \tmp_product__0_n_67\,
      P(37) => \tmp_product__0_n_68\,
      P(36) => \tmp_product__0_n_69\,
      P(35) => \tmp_product__0_n_70\,
      P(34) => \tmp_product__0_n_71\,
      P(33) => \tmp_product__0_n_72\,
      P(32) => \tmp_product__0_n_73\,
      P(31) => \tmp_product__0_n_74\,
      P(30) => \tmp_product__0_n_75\,
      P(29) => \tmp_product__0_n_76\,
      P(28) => \tmp_product__0_n_77\,
      P(27) => \tmp_product__0_n_78\,
      P(26) => \tmp_product__0_n_79\,
      P(25) => \tmp_product__0_n_80\,
      P(24) => \tmp_product__0_n_81\,
      P(23) => \tmp_product__0_n_82\,
      P(22) => \tmp_product__0_n_83\,
      P(21) => \tmp_product__0_n_84\,
      P(20) => \tmp_product__0_n_85\,
      P(19) => \tmp_product__0_n_86\,
      P(18) => \tmp_product__0_n_87\,
      P(17) => \tmp_product__0_n_88\,
      P(16 downto 0) => DSP_ALU_INST(16 downto 0),
      PATTERNBDETECT => \NLW_tmp_product__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_tmp_product__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => DSP_ALU_INST_0(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_tmp_product__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_tmp_product__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
tmp_product_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => tmp_product_carry_n_0,
      CO(6) => tmp_product_carry_n_1,
      CO(5) => tmp_product_carry_n_2,
      CO(4) => tmp_product_carry_n_3,
      CO(3) => tmp_product_carry_n_4,
      CO(2) => tmp_product_carry_n_5,
      CO(1) => tmp_product_carry_n_6,
      CO(0) => tmp_product_carry_n_7,
      DI(7 downto 1) => P(6 downto 0),
      DI(0) => '0',
      O(7 downto 0) => \ap_CS_fsm_reg[0]\(7 downto 0),
      S(7) => tmp_product_carry_i_1_n_0,
      S(6) => tmp_product_carry_i_2_n_0,
      S(5) => tmp_product_carry_i_3_n_0,
      S(4) => tmp_product_carry_i_4_n_0,
      S(3) => tmp_product_carry_i_5_n_0,
      S(2) => tmp_product_carry_i_6_n_0,
      S(1) => tmp_product_carry_i_7_n_0,
      S(0) => Q(0)
    );
\tmp_product_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => tmp_product_carry_n_0,
      CI_TOP => '0',
      CO(7) => \tmp_product_carry__0_n_0\,
      CO(6) => \tmp_product_carry__0_n_1\,
      CO(5) => \tmp_product_carry__0_n_2\,
      CO(4) => \tmp_product_carry__0_n_3\,
      CO(3) => \tmp_product_carry__0_n_4\,
      CO(2) => \tmp_product_carry__0_n_5\,
      CO(1) => \tmp_product_carry__0_n_6\,
      CO(0) => \tmp_product_carry__0_n_7\,
      DI(7 downto 0) => P(14 downto 7),
      O(7 downto 0) => \ap_CS_fsm_reg[0]\(15 downto 8),
      S(7) => \tmp_product_carry__0_i_1_n_0\,
      S(6) => \tmp_product_carry__0_i_2_n_0\,
      S(5) => \tmp_product_carry__0_i_3_n_0\,
      S(4) => \tmp_product_carry__0_i_4_n_0\,
      S(3) => \tmp_product_carry__0_i_5_n_0\,
      S(2) => \tmp_product_carry__0_i_6_n_0\,
      S(1) => \tmp_product_carry__0_i_7_n_0\,
      S(0) => \tmp_product_carry__0_i_8_n_0\
    );
\tmp_product_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(14),
      I1 => \tmp_product_carry__1_0\(14),
      O => \tmp_product_carry__0_i_1_n_0\
    );
\tmp_product_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(13),
      I1 => \tmp_product_carry__1_0\(13),
      O => \tmp_product_carry__0_i_2_n_0\
    );
\tmp_product_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(12),
      I1 => \tmp_product_carry__1_0\(12),
      O => \tmp_product_carry__0_i_3_n_0\
    );
\tmp_product_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(11),
      I1 => \tmp_product_carry__1_0\(11),
      O => \tmp_product_carry__0_i_4_n_0\
    );
\tmp_product_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(10),
      I1 => \tmp_product_carry__1_0\(10),
      O => \tmp_product_carry__0_i_5_n_0\
    );
\tmp_product_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(9),
      I1 => \tmp_product_carry__1_0\(9),
      O => \tmp_product_carry__0_i_6_n_0\
    );
\tmp_product_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(8),
      I1 => \tmp_product_carry__1_0\(8),
      O => \tmp_product_carry__0_i_7_n_0\
    );
\tmp_product_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(7),
      I1 => \tmp_product_carry__1_0\(7),
      O => \tmp_product_carry__0_i_8_n_0\
    );
\tmp_product_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tmp_product_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \tmp_product_carry__1_n_0\,
      CO(6) => \tmp_product_carry__1_n_1\,
      CO(5) => \tmp_product_carry__1_n_2\,
      CO(4) => \tmp_product_carry__1_n_3\,
      CO(3) => \tmp_product_carry__1_n_4\,
      CO(2) => \tmp_product_carry__1_n_5\,
      CO(1) => \tmp_product_carry__1_n_6\,
      CO(0) => \tmp_product_carry__1_n_7\,
      DI(7 downto 0) => P(22 downto 15),
      O(7 downto 0) => \ap_CS_fsm_reg[0]\(23 downto 16),
      S(7) => \tmp_product_carry__1_i_1_n_0\,
      S(6) => \tmp_product_carry__1_i_2_n_0\,
      S(5) => \tmp_product_carry__1_i_3_n_0\,
      S(4) => \tmp_product_carry__1_i_4_n_0\,
      S(3) => \tmp_product_carry__1_i_5_n_0\,
      S(2) => \tmp_product_carry__1_i_6_n_0\,
      S(1) => \tmp_product_carry__1_i_7_n_0\,
      S(0) => \tmp_product_carry__1_i_8_n_0\
    );
\tmp_product_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(22),
      I1 => \tmp_product_carry__3_0\(5),
      O => \tmp_product_carry__1_i_1_n_0\
    );
\tmp_product_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(21),
      I1 => \tmp_product_carry__3_0\(4),
      O => \tmp_product_carry__1_i_2_n_0\
    );
\tmp_product_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(20),
      I1 => \tmp_product_carry__3_0\(3),
      O => \tmp_product_carry__1_i_3_n_0\
    );
\tmp_product_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(19),
      I1 => \tmp_product_carry__3_0\(2),
      O => \tmp_product_carry__1_i_4_n_0\
    );
\tmp_product_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(18),
      I1 => \tmp_product_carry__3_0\(1),
      O => \tmp_product_carry__1_i_5_n_0\
    );
\tmp_product_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(17),
      I1 => \tmp_product_carry__3_0\(0),
      O => \tmp_product_carry__1_i_6_n_0\
    );
\tmp_product_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(16),
      I1 => \tmp_product_carry__1_0\(16),
      O => \tmp_product_carry__1_i_7_n_0\
    );
\tmp_product_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(15),
      I1 => \tmp_product_carry__1_0\(15),
      O => \tmp_product_carry__1_i_8_n_0\
    );
\tmp_product_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \tmp_product_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \tmp_product_carry__2_n_0\,
      CO(6) => \tmp_product_carry__2_n_1\,
      CO(5) => \tmp_product_carry__2_n_2\,
      CO(4) => \tmp_product_carry__2_n_3\,
      CO(3) => \tmp_product_carry__2_n_4\,
      CO(2) => \tmp_product_carry__2_n_5\,
      CO(1) => \tmp_product_carry__2_n_6\,
      CO(0) => \tmp_product_carry__2_n_7\,
      DI(7 downto 0) => P(30 downto 23),
      O(7 downto 0) => \ap_CS_fsm_reg[0]\(31 downto 24),
      S(7) => \tmp_product_carry__2_i_1_n_0\,
      S(6) => \tmp_product_carry__2_i_2_n_0\,
      S(5) => \tmp_product_carry__2_i_3_n_0\,
      S(4) => \tmp_product_carry__2_i_4_n_0\,
      S(3) => \tmp_product_carry__2_i_5_n_0\,
      S(2) => \tmp_product_carry__2_i_6_n_0\,
      S(1) => \tmp_product_carry__2_i_7_n_0\,
      S(0) => \tmp_product_carry__2_i_8_n_0\
    );
\tmp_product_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(30),
      I1 => \tmp_product_carry__3_0\(13),
      O => \tmp_product_carry__2_i_1_n_0\
    );
\tmp_product_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(29),
      I1 => \tmp_product_carry__3_0\(12),
      O => \tmp_product_carry__2_i_2_n_0\
    );
\tmp_product_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(28),
      I1 => \tmp_product_carry__3_0\(11),
      O => \tmp_product_carry__2_i_3_n_0\
    );
\tmp_product_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(27),
      I1 => \tmp_product_carry__3_0\(10),
      O => \tmp_product_carry__2_i_4_n_0\
    );
\tmp_product_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(26),
      I1 => \tmp_product_carry__3_0\(9),
      O => \tmp_product_carry__2_i_5_n_0\
    );
\tmp_product_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(25),
      I1 => \tmp_product_carry__3_0\(8),
      O => \tmp_product_carry__2_i_6_n_0\
    );
\tmp_product_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(24),
      I1 => \tmp_product_carry__3_0\(7),
      O => \tmp_product_carry__2_i_7_n_0\
    );
\tmp_product_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(23),
      I1 => \tmp_product_carry__3_0\(6),
      O => \tmp_product_carry__2_i_8_n_0\
    );
\tmp_product_carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \tmp_product_carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \tmp_product_carry__3_n_0\,
      CO(6) => \tmp_product_carry__3_n_1\,
      CO(5) => \tmp_product_carry__3_n_2\,
      CO(4) => \tmp_product_carry__3_n_3\,
      CO(3) => \tmp_product_carry__3_n_4\,
      CO(2) => \tmp_product_carry__3_n_5\,
      CO(1) => \tmp_product_carry__3_n_6\,
      CO(0) => \tmp_product_carry__3_n_7\,
      DI(7 downto 0) => P(38 downto 31),
      O(7 downto 0) => \ap_CS_fsm_reg[0]\(39 downto 32),
      S(7) => \tmp_product_carry__3_i_1_n_0\,
      S(6) => \tmp_product_carry__3_i_2_n_0\,
      S(5) => \tmp_product_carry__3_i_3_n_0\,
      S(4) => \tmp_product_carry__3_i_4_n_0\,
      S(3) => \tmp_product_carry__3_i_5_n_0\,
      S(2) => \tmp_product_carry__3_i_6_n_0\,
      S(1) => \tmp_product_carry__3_i_7_n_0\,
      S(0) => \tmp_product_carry__3_i_8_n_0\
    );
\tmp_product_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(38),
      I1 => \tmp_product_carry__3_0\(21),
      O => \tmp_product_carry__3_i_1_n_0\
    );
\tmp_product_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(37),
      I1 => \tmp_product_carry__3_0\(20),
      O => \tmp_product_carry__3_i_2_n_0\
    );
\tmp_product_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(36),
      I1 => \tmp_product_carry__3_0\(19),
      O => \tmp_product_carry__3_i_3_n_0\
    );
\tmp_product_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(35),
      I1 => \tmp_product_carry__3_0\(18),
      O => \tmp_product_carry__3_i_4_n_0\
    );
\tmp_product_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(34),
      I1 => \tmp_product_carry__3_0\(17),
      O => \tmp_product_carry__3_i_5_n_0\
    );
\tmp_product_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(33),
      I1 => \tmp_product_carry__3_0\(16),
      O => \tmp_product_carry__3_i_6_n_0\
    );
\tmp_product_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(32),
      I1 => \tmp_product_carry__3_0\(15),
      O => \tmp_product_carry__3_i_7_n_0\
    );
\tmp_product_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(31),
      I1 => \tmp_product_carry__3_0\(14),
      O => \tmp_product_carry__3_i_8_n_0\
    );
\tmp_product_carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \tmp_product_carry__3_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_tmp_product_carry__4_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \tmp_product_carry__4_n_3\,
      CO(3) => \tmp_product_carry__4_n_4\,
      CO(2) => \tmp_product_carry__4_n_5\,
      CO(1) => \tmp_product_carry__4_n_6\,
      CO(0) => \tmp_product_carry__4_n_7\,
      DI(7 downto 5) => B"000",
      DI(4 downto 0) => P(43 downto 39),
      O(7 downto 6) => \NLW_tmp_product_carry__4_O_UNCONNECTED\(7 downto 6),
      O(5 downto 4) => \mul_ln10_reg_175_reg__1\(61 downto 60),
      O(3 downto 0) => \ap_CS_fsm_reg[0]\(43 downto 40),
      S(7 downto 6) => B"00",
      S(5 downto 0) => \icmp_ln31_fu_155_p2_carry__1_i_3\(5 downto 0)
    );
tmp_product_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(6),
      I1 => \tmp_product_carry__1_0\(6),
      O => tmp_product_carry_i_1_n_0
    );
tmp_product_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => \tmp_product_carry__1_0\(5),
      O => tmp_product_carry_i_2_n_0
    );
tmp_product_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(4),
      I1 => \tmp_product_carry__1_0\(4),
      O => tmp_product_carry_i_3_n_0
    );
tmp_product_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(3),
      I1 => \tmp_product_carry__1_0\(3),
      O => tmp_product_carry_i_4_n_0
    );
tmp_product_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(2),
      I1 => \tmp_product_carry__1_0\(2),
      O => tmp_product_carry_i_5_n_0
    );
tmp_product_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(1),
      I1 => \tmp_product_carry__1_0\(1),
      O => tmp_product_carry_i_6_n_0
    );
tmp_product_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(0),
      I1 => \tmp_product_carry__1_0\(0),
      O => tmp_product_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_9s_9s_18_1_1 is
  port (
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[23]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[31]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[39]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[47]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[55]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sum_diff_sq_fu_70_reg[63]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sum_diff_sq_fu_70_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_9s_9s_18_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_9s_9s_18_1_1 is
  signal A : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \sum_diff_sq_fu_70[0]_i_10_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[0]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[16]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[24]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[32]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[40]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[48]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[56]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_3_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_4_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_5_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_6_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_7_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_8_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70[8]_i_9_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sum_diff_sq_fu_70_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \tmp_product__0\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \tmp_product_i_10__0_n_0\ : STD_LOGIC;
  signal \tmp_product_i_11__0_n_0\ : STD_LOGIC;
  signal \tmp_product_i_12__0_n_0\ : STD_LOGIC;
  signal \tmp_product_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_sum_diff_sq_fu_70_reg[56]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_tmp_product_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_tmp_product_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_tmp_product_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_tmp_product_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_product_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 18 );
  signal NLW_tmp_product_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_tmp_product_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[56]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \sum_diff_sq_fu_70_reg[8]_i_1\ : label is 16;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of tmp_product : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of tmp_product : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tmp_product_i_10__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \tmp_product_i_11__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \tmp_product_i_3__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \tmp_product_i_5__0\ : label is "soft_lutpair69";
begin
\sum_diff_sq_fu_70[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(0),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(0),
      O => \sum_diff_sq_fu_70[0]_i_10_n_0\
    );
\sum_diff_sq_fu_70[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(7),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(7),
      O => \sum_diff_sq_fu_70[0]_i_3_n_0\
    );
\sum_diff_sq_fu_70[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(6),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(6),
      O => \sum_diff_sq_fu_70[0]_i_4_n_0\
    );
\sum_diff_sq_fu_70[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(5),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(5),
      O => \sum_diff_sq_fu_70[0]_i_5_n_0\
    );
\sum_diff_sq_fu_70[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(4),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(4),
      O => \sum_diff_sq_fu_70[0]_i_6_n_0\
    );
\sum_diff_sq_fu_70[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(3),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(3),
      O => \sum_diff_sq_fu_70[0]_i_7_n_0\
    );
\sum_diff_sq_fu_70[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(2),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(2),
      O => \sum_diff_sq_fu_70[0]_i_8_n_0\
    );
\sum_diff_sq_fu_70[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(1),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(1),
      O => \sum_diff_sq_fu_70[0]_i_9_n_0\
    );
\sum_diff_sq_fu_70[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(23),
      O => \sum_diff_sq_fu_70[16]_i_2_n_0\
    );
\sum_diff_sq_fu_70[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(22),
      O => \sum_diff_sq_fu_70[16]_i_3_n_0\
    );
\sum_diff_sq_fu_70[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(21),
      O => \sum_diff_sq_fu_70[16]_i_4_n_0\
    );
\sum_diff_sq_fu_70[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(20),
      O => \sum_diff_sq_fu_70[16]_i_5_n_0\
    );
\sum_diff_sq_fu_70[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(19),
      O => \sum_diff_sq_fu_70[16]_i_6_n_0\
    );
\sum_diff_sq_fu_70[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(18),
      O => \sum_diff_sq_fu_70[16]_i_7_n_0\
    );
\sum_diff_sq_fu_70[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(17),
      O => \sum_diff_sq_fu_70[16]_i_8_n_0\
    );
\sum_diff_sq_fu_70[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(16),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(16),
      O => \sum_diff_sq_fu_70[16]_i_9_n_0\
    );
\sum_diff_sq_fu_70[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(31),
      O => \sum_diff_sq_fu_70[24]_i_2_n_0\
    );
\sum_diff_sq_fu_70[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(30),
      O => \sum_diff_sq_fu_70[24]_i_3_n_0\
    );
\sum_diff_sq_fu_70[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(29),
      O => \sum_diff_sq_fu_70[24]_i_4_n_0\
    );
\sum_diff_sq_fu_70[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(28),
      O => \sum_diff_sq_fu_70[24]_i_5_n_0\
    );
\sum_diff_sq_fu_70[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(27),
      O => \sum_diff_sq_fu_70[24]_i_6_n_0\
    );
\sum_diff_sq_fu_70[24]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(26),
      O => \sum_diff_sq_fu_70[24]_i_7_n_0\
    );
\sum_diff_sq_fu_70[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(25),
      O => \sum_diff_sq_fu_70[24]_i_8_n_0\
    );
\sum_diff_sq_fu_70[24]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(24),
      O => \sum_diff_sq_fu_70[24]_i_9_n_0\
    );
\sum_diff_sq_fu_70[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(39),
      O => \sum_diff_sq_fu_70[32]_i_2_n_0\
    );
\sum_diff_sq_fu_70[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(38),
      O => \sum_diff_sq_fu_70[32]_i_3_n_0\
    );
\sum_diff_sq_fu_70[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(37),
      O => \sum_diff_sq_fu_70[32]_i_4_n_0\
    );
\sum_diff_sq_fu_70[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(36),
      O => \sum_diff_sq_fu_70[32]_i_5_n_0\
    );
\sum_diff_sq_fu_70[32]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(35),
      O => \sum_diff_sq_fu_70[32]_i_6_n_0\
    );
\sum_diff_sq_fu_70[32]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(34),
      O => \sum_diff_sq_fu_70[32]_i_7_n_0\
    );
\sum_diff_sq_fu_70[32]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(33),
      O => \sum_diff_sq_fu_70[32]_i_8_n_0\
    );
\sum_diff_sq_fu_70[32]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(32),
      O => \sum_diff_sq_fu_70[32]_i_9_n_0\
    );
\sum_diff_sq_fu_70[40]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(47),
      O => \sum_diff_sq_fu_70[40]_i_2_n_0\
    );
\sum_diff_sq_fu_70[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(46),
      O => \sum_diff_sq_fu_70[40]_i_3_n_0\
    );
\sum_diff_sq_fu_70[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(45),
      O => \sum_diff_sq_fu_70[40]_i_4_n_0\
    );
\sum_diff_sq_fu_70[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(44),
      O => \sum_diff_sq_fu_70[40]_i_5_n_0\
    );
\sum_diff_sq_fu_70[40]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(43),
      O => \sum_diff_sq_fu_70[40]_i_6_n_0\
    );
\sum_diff_sq_fu_70[40]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(42),
      O => \sum_diff_sq_fu_70[40]_i_7_n_0\
    );
\sum_diff_sq_fu_70[40]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(41),
      O => \sum_diff_sq_fu_70[40]_i_8_n_0\
    );
\sum_diff_sq_fu_70[40]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(40),
      O => \sum_diff_sq_fu_70[40]_i_9_n_0\
    );
\sum_diff_sq_fu_70[48]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(55),
      O => \sum_diff_sq_fu_70[48]_i_2_n_0\
    );
\sum_diff_sq_fu_70[48]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(54),
      O => \sum_diff_sq_fu_70[48]_i_3_n_0\
    );
\sum_diff_sq_fu_70[48]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(53),
      O => \sum_diff_sq_fu_70[48]_i_4_n_0\
    );
\sum_diff_sq_fu_70[48]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(52),
      O => \sum_diff_sq_fu_70[48]_i_5_n_0\
    );
\sum_diff_sq_fu_70[48]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(51),
      O => \sum_diff_sq_fu_70[48]_i_6_n_0\
    );
\sum_diff_sq_fu_70[48]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(50),
      O => \sum_diff_sq_fu_70[48]_i_7_n_0\
    );
\sum_diff_sq_fu_70[48]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(49),
      O => \sum_diff_sq_fu_70[48]_i_8_n_0\
    );
\sum_diff_sq_fu_70[48]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(48),
      O => \sum_diff_sq_fu_70[48]_i_9_n_0\
    );
\sum_diff_sq_fu_70[56]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_diff_sq_fu_70_reg[63]_0\(63),
      I1 => \tmp_product__0\(17),
      O => \sum_diff_sq_fu_70[56]_i_2_n_0\
    );
\sum_diff_sq_fu_70[56]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(62),
      O => \sum_diff_sq_fu_70[56]_i_3_n_0\
    );
\sum_diff_sq_fu_70[56]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(61),
      O => \sum_diff_sq_fu_70[56]_i_4_n_0\
    );
\sum_diff_sq_fu_70[56]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(60),
      O => \sum_diff_sq_fu_70[56]_i_5_n_0\
    );
\sum_diff_sq_fu_70[56]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(59),
      O => \sum_diff_sq_fu_70[56]_i_6_n_0\
    );
\sum_diff_sq_fu_70[56]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(58),
      O => \sum_diff_sq_fu_70[56]_i_7_n_0\
    );
\sum_diff_sq_fu_70[56]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(57),
      O => \sum_diff_sq_fu_70[56]_i_8_n_0\
    );
\sum_diff_sq_fu_70[56]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(17),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(56),
      O => \sum_diff_sq_fu_70[56]_i_9_n_0\
    );
\sum_diff_sq_fu_70[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(15),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(15),
      O => \sum_diff_sq_fu_70[8]_i_2_n_0\
    );
\sum_diff_sq_fu_70[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(14),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(14),
      O => \sum_diff_sq_fu_70[8]_i_3_n_0\
    );
\sum_diff_sq_fu_70[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(13),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(13),
      O => \sum_diff_sq_fu_70[8]_i_4_n_0\
    );
\sum_diff_sq_fu_70[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(12),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(12),
      O => \sum_diff_sq_fu_70[8]_i_5_n_0\
    );
\sum_diff_sq_fu_70[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(11),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(11),
      O => \sum_diff_sq_fu_70[8]_i_6_n_0\
    );
\sum_diff_sq_fu_70[8]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(10),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(10),
      O => \sum_diff_sq_fu_70[8]_i_7_n_0\
    );
\sum_diff_sq_fu_70[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(9),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(9),
      O => \sum_diff_sq_fu_70[8]_i_8_n_0\
    );
\sum_diff_sq_fu_70[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product__0\(8),
      I1 => \sum_diff_sq_fu_70_reg[63]_0\(8),
      O => \sum_diff_sq_fu_70[8]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[0]_i_2_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[0]_i_2_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[0]_i_2_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[0]_i_2_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[0]_i_2_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[0]_i_2_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[0]_i_2_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[0]_i_2_n_7\,
      DI(7 downto 0) => \tmp_product__0\(7 downto 0),
      O(7 downto 0) => O(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[0]_i_3_n_0\,
      S(6) => \sum_diff_sq_fu_70[0]_i_4_n_0\,
      S(5) => \sum_diff_sq_fu_70[0]_i_5_n_0\,
      S(4) => \sum_diff_sq_fu_70[0]_i_6_n_0\,
      S(3) => \sum_diff_sq_fu_70[0]_i_7_n_0\,
      S(2) => \sum_diff_sq_fu_70[0]_i_8_n_0\,
      S(1) => \sum_diff_sq_fu_70[0]_i_9_n_0\,
      S(0) => \sum_diff_sq_fu_70[0]_i_10_n_0\
    );
\sum_diff_sq_fu_70_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[16]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[16]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[16]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[16]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[16]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[16]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[16]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[16]_i_1_n_7\,
      DI(7) => \tmp_product__0\(17),
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1 downto 0) => \tmp_product__0\(17 downto 16),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[23]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[16]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[16]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[16]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[16]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[16]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[16]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[16]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[16]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[24]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[24]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[24]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[24]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[24]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[24]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[24]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[24]_i_1_n_7\,
      DI(7) => \tmp_product__0\(17),
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1) => \tmp_product__0\(17),
      DI(0) => \tmp_product__0\(17),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[31]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[24]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[24]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[24]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[24]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[24]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[24]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[24]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[24]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[32]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[32]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[32]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[32]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[32]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[32]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[32]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[32]_i_1_n_7\,
      DI(7) => \tmp_product__0\(17),
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1) => \tmp_product__0\(17),
      DI(0) => \tmp_product__0\(17),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[39]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[32]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[32]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[32]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[32]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[32]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[32]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[32]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[32]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[40]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[40]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[40]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[40]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[40]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[40]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[40]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[40]_i_1_n_7\,
      DI(7) => \tmp_product__0\(17),
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1) => \tmp_product__0\(17),
      DI(0) => \tmp_product__0\(17),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[47]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[40]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[40]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[40]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[40]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[40]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[40]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[40]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[40]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[48]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[48]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[48]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[48]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[48]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[48]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[48]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[48]_i_1_n_7\,
      DI(7) => \tmp_product__0\(17),
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1) => \tmp_product__0\(17),
      DI(0) => \tmp_product__0\(17),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[55]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[48]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[48]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[48]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[48]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[48]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[48]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[48]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[48]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[56]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[48]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_sum_diff_sq_fu_70_reg[56]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \sum_diff_sq_fu_70_reg[56]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[56]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[56]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[56]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[56]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[56]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[56]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \tmp_product__0\(17),
      DI(5) => \tmp_product__0\(17),
      DI(4) => \tmp_product__0\(17),
      DI(3) => \tmp_product__0\(17),
      DI(2) => \tmp_product__0\(17),
      DI(1) => \tmp_product__0\(17),
      DI(0) => \tmp_product__0\(17),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[63]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[56]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[56]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[56]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[56]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[56]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[56]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[56]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[56]_i_9_n_0\
    );
\sum_diff_sq_fu_70_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_diff_sq_fu_70_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_diff_sq_fu_70_reg[8]_i_1_n_0\,
      CO(6) => \sum_diff_sq_fu_70_reg[8]_i_1_n_1\,
      CO(5) => \sum_diff_sq_fu_70_reg[8]_i_1_n_2\,
      CO(4) => \sum_diff_sq_fu_70_reg[8]_i_1_n_3\,
      CO(3) => \sum_diff_sq_fu_70_reg[8]_i_1_n_4\,
      CO(2) => \sum_diff_sq_fu_70_reg[8]_i_1_n_5\,
      CO(1) => \sum_diff_sq_fu_70_reg[8]_i_1_n_6\,
      CO(0) => \sum_diff_sq_fu_70_reg[8]_i_1_n_7\,
      DI(7 downto 0) => \tmp_product__0\(15 downto 8),
      O(7 downto 0) => \sum_diff_sq_fu_70_reg[15]\(7 downto 0),
      S(7) => \sum_diff_sq_fu_70[8]_i_2_n_0\,
      S(6) => \sum_diff_sq_fu_70[8]_i_3_n_0\,
      S(5) => \sum_diff_sq_fu_70[8]_i_4_n_0\,
      S(4) => \sum_diff_sq_fu_70[8]_i_5_n_0\,
      S(3) => \sum_diff_sq_fu_70[8]_i_6_n_0\,
      S(2) => \sum_diff_sq_fu_70[8]_i_7_n_0\,
      S(1) => \sum_diff_sq_fu_70[8]_i_8_n_0\,
      S(0) => \sum_diff_sq_fu_70[8]_i_9_n_0\
    );
tmp_product: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 0,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => \tmp_product_i_1__0_n_0\,
      A(28) => \tmp_product_i_1__0_n_0\,
      A(27) => \tmp_product_i_1__0_n_0\,
      A(26) => \tmp_product_i_1__0_n_0\,
      A(25) => \tmp_product_i_1__0_n_0\,
      A(24) => \tmp_product_i_1__0_n_0\,
      A(23) => \tmp_product_i_1__0_n_0\,
      A(22) => \tmp_product_i_1__0_n_0\,
      A(21) => \tmp_product_i_1__0_n_0\,
      A(20) => \tmp_product_i_1__0_n_0\,
      A(19) => \tmp_product_i_1__0_n_0\,
      A(18) => \tmp_product_i_1__0_n_0\,
      A(17) => \tmp_product_i_1__0_n_0\,
      A(16) => \tmp_product_i_1__0_n_0\,
      A(15) => \tmp_product_i_1__0_n_0\,
      A(14) => \tmp_product_i_1__0_n_0\,
      A(13) => \tmp_product_i_1__0_n_0\,
      A(12) => \tmp_product_i_1__0_n_0\,
      A(11) => \tmp_product_i_1__0_n_0\,
      A(10) => \tmp_product_i_1__0_n_0\,
      A(9) => \tmp_product_i_1__0_n_0\,
      A(8) => \tmp_product_i_1__0_n_0\,
      A(7 downto 3) => A(7 downto 3),
      A(2) => DSP_ALU_INST(1),
      A(1) => A(1),
      A(0) => DSP_ALU_INST(0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_tmp_product_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \tmp_product_i_1__0_n_0\,
      B(16) => \tmp_product_i_1__0_n_0\,
      B(15) => \tmp_product_i_1__0_n_0\,
      B(14) => \tmp_product_i_1__0_n_0\,
      B(13) => \tmp_product_i_1__0_n_0\,
      B(12) => \tmp_product_i_1__0_n_0\,
      B(11) => \tmp_product_i_1__0_n_0\,
      B(10) => \tmp_product_i_1__0_n_0\,
      B(9) => \tmp_product_i_1__0_n_0\,
      B(8) => \tmp_product_i_1__0_n_0\,
      B(7 downto 3) => A(7 downto 3),
      B(2) => DSP_ALU_INST(1),
      B(1) => A(1),
      B(0) => DSP_ALU_INST(0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_tmp_product_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_tmp_product_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_tmp_product_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_tmp_product_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000000101",
      OVERFLOW => NLW_tmp_product_OVERFLOW_UNCONNECTED,
      P(47 downto 18) => NLW_tmp_product_P_UNCONNECTED(47 downto 18),
      P(17 downto 0) => \tmp_product__0\(17 downto 0),
      PATTERNBDETECT => NLW_tmp_product_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_tmp_product_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_tmp_product_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_tmp_product_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_tmp_product_XOROUT_UNCONNECTED(7 downto 0)
    );
\tmp_product_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => Q(6),
      I1 => DSP_A_B_DATA_INST(6),
      I2 => \tmp_product_i_11__0_n_0\,
      I3 => DSP_A_B_DATA_INST(5),
      I4 => Q(5),
      O => \tmp_product_i_10__0_n_0\
    );
\tmp_product_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => Q(4),
      I1 => DSP_A_B_DATA_INST(4),
      I2 => \tmp_product_i_12__0_n_0\,
      I3 => DSP_A_B_DATA_INST(3),
      I4 => Q(3),
      O => \tmp_product_i_11__0_n_0\
    );
\tmp_product_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => Q(2),
      I1 => DSP_A_B_DATA_INST(2),
      I2 => DSP_A_B_DATA_INST(0),
      I3 => Q(0),
      I4 => DSP_A_B_DATA_INST(1),
      I5 => Q(1),
      O => \tmp_product_i_12__0_n_0\
    );
\tmp_product_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => Q(7),
      I1 => DSP_A_B_DATA_INST(7),
      I2 => \tmp_product_i_10__0_n_0\,
      O => \tmp_product_i_1__0_n_0\
    );
\tmp_product_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \tmp_product_i_10__0_n_0\,
      I1 => Q(7),
      I2 => DSP_A_B_DATA_INST(7),
      O => A(7)
    );
\tmp_product_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \tmp_product_i_11__0_n_0\,
      I1 => DSP_A_B_DATA_INST(5),
      I2 => Q(5),
      I3 => Q(6),
      I4 => DSP_A_B_DATA_INST(6),
      O => A(6)
    );
\tmp_product_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \tmp_product_i_11__0_n_0\,
      I1 => Q(5),
      I2 => DSP_A_B_DATA_INST(5),
      O => A(5)
    );
\tmp_product_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \tmp_product_i_12__0_n_0\,
      I1 => DSP_A_B_DATA_INST(3),
      I2 => Q(3),
      I3 => Q(4),
      I4 => DSP_A_B_DATA_INST(4),
      O => A(4)
    );
\tmp_product_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \tmp_product_i_12__0_n_0\,
      I1 => Q(3),
      I2 => DSP_A_B_DATA_INST(3),
      O => A(3)
    );
\tmp_product_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => Q(0),
      I1 => DSP_A_B_DATA_INST(0),
      I2 => Q(1),
      I3 => DSP_A_B_DATA_INST(1),
      O => A(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p1_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DSP_A_B_DATA_INST : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ack_in_t_i_2_n_0 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_2_n_0\ : STD_LOGIC;
  signal \^data_p1_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair71";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair71";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  \data_p1_reg[7]_0\(7 downto 0) <= \^data_p1_reg[7]_0\(7 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFEF"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => s_axis_video_TVALID,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC05F00"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => \^ack_in_t_reg_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => s_axis_video_TVALID,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0FC0"
    )
        port map (
      I0 => s_axis_video_TVALID,
      I1 => ack_in_t_reg_1,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \^ack_in_t_reg_0\,
      O => ack_in_t_i_2_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_0,
      Q => \^ack_in_t_reg_0\,
      R => SR(0)
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(0),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[0]\,
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[1]\,
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[2]\,
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[3]\,
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(4),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[4]\,
      O => \data_p1[4]_i_1_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(5),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[5]\,
      O => \data_p1[5]_i_1_n_0\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(6),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[6]\,
      O => \data_p1[6]_i_1_n_0\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC20"
    )
        port map (
      I0 => s_axis_video_TVALID,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_1,
      O => load_p1
    );
\data_p1[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axis_video_TDATA(7),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \data_p2_reg_n_0_[7]\,
      O => \data_p1[7]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_0\,
      Q => \^data_p1_reg[7]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_2_n_0\,
      Q => \^data_p1_reg[7]_0\(7),
      R => '0'
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_video_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => s_axis_video_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7C000"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => \^q\(1),
      I2 => s_axis_video_TVALID,
      I3 => \^ack_in_t_reg_0\,
      I4 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(1),
      S => SR(0)
    );
\tmp_product_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^data_p1_reg[7]_0\(0),
      I1 => DSP_A_B_DATA_INST(0),
      I2 => \^data_p1_reg[7]_0\(1),
      I3 => DSP_A_B_DATA_INST(1),
      I4 => DSP_A_B_DATA_INST(2),
      I5 => \^data_p1_reg[7]_0\(2),
      O => \data_p1_reg[0]_0\(1)
    );
\tmp_product_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^data_p1_reg[7]_0\(0),
      I1 => DSP_A_B_DATA_INST(0),
      O => \data_p1_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \sum_diff_sq_fu_70_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \empty_fu_78_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \icmp_ln31_reg_337_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_video_TVALID : in STD_LOGIC;
    icmp_ln31_fu_155_p2_carry_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \mul_ln10_reg_175_reg__1\ : in STD_LOGIC_VECTOR ( 43 downto 0 );
    P : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \tmp_product_carry__4\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \empty_15_fu_86_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln32_fu_167_p2_carry__0_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop is
  signal \^s\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0 : STD_LOGIC;
  signal empty_15_fu_86 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \empty_15_fu_86[7]_i_1_n_0\ : STD_LOGIC;
  signal empty_fu_78 : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \^empty_fu_78_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2 : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_1\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_2\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_3\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_4\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_5\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_6\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__0_n_7\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_n_4\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_n_5\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_n_6\ : STD_LOGIC;
  signal \icmp_ln31_fu_155_p2_carry__1_n_7\ : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_1_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_2_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_3_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_4_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_5_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_6_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_7_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_i_8_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_0 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_1 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_2 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_3 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_4 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_5 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_6 : STD_LOGIC;
  signal icmp_ln31_fu_155_p2_carry_n_7 : STD_LOGIC;
  signal \icmp_ln31_reg_337_reg_n_0_[0]\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_0\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_1\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_2\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_3\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_4\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_5\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_6\ : STD_LOGIC;
  signal \icmp_ln32_fu_167_p2_carry__0_n_7\ : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_10_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_11_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_12_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_13_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_14_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_15_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_16_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_1_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_2_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_3_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_4_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_5_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_6_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_7_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_8_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_i_9_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_0 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_1 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_2 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_3 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_4 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_5 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_6 : STD_LOGIC;
  signal icmp_ln32_fu_167_p2_carry_n_7 : STD_LOGIC;
  signal icmp_ln44_fu_196_p2 : STD_LOGIC;
  signal icmp_ln44_reg_341 : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_2_n_0\ : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_3_n_0\ : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_4_n_0\ : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_5_n_0\ : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_6_n_0\ : STD_LOGIC;
  signal \icmp_ln44_reg_341[0]_i_7_n_0\ : STD_LOGIC;
  signal indvar_flatten_fu_82 : STD_LOGIC;
  signal \indvar_flatten_fu_82[0]_i_2_n_0\ : STD_LOGIC;
  signal indvar_flatten_fu_82_reg : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[32]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[40]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[48]_i_1_n_9\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \indvar_flatten_fu_82_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_0 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_1 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_10 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_11 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_12 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_13 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_14 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_15 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_16 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_17 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_18 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_19 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_2 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_20 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_21 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_22 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_23 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_24 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_25 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_26 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_27 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_28 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_29 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_3 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_30 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_31 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_32 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_33 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_34 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_35 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_36 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_37 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_38 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_39 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_4 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_40 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_41 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_42 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_43 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_44 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_45 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_46 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_47 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_48 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_49 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_5 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_50 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_51 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_52 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_53 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_54 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_55 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_56 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_57 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_58 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_59 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_6 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_60 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_61 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_62 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_63 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_7 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_8 : STD_LOGIC;
  signal mul_9s_9s_18_1_1_U1_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal s_axis_video_TREADY2 : STD_LOGIC;
  signal select_ln25_fu_178_p3 : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal sum_diff_sq_fu_70 : STD_LOGIC;
  signal \^sum_diff_sq_fu_70_reg[63]_0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal x_1_fu_202_p2 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \x_1_fu_202_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_1\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_2\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_3\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_4\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_5\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_6\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__0_n_7\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_1\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_2\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_3\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_4\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_5\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_6\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__1_n_7\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_n_3\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_n_4\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_n_5\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_n_6\ : STD_LOGIC;
  signal \x_1_fu_202_p2_carry__2_n_7\ : STD_LOGIC;
  signal x_1_fu_202_p2_carry_i_5_n_0 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_0 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_1 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_2 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_3 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_4 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_5 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_6 : STD_LOGIC;
  signal x_1_fu_202_p2_carry_n_7 : STD_LOGIC;
  signal NLW_icmp_ln31_fu_155_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_icmp_ln31_fu_155_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_icmp_ln31_fu_155_p2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_icmp_ln31_fu_155_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_icmp_ln32_fu_167_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_icmp_ln32_fu_167_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_indvar_flatten_fu_82_reg[56]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_indvar_flatten_fu_82_reg[56]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_x_1_fu_202_p2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_x_1_fu_202_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ack_in_t_i_3 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair70";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of icmp_ln32_fu_167_p2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \icmp_ln32_fu_167_p2_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[56]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \indvar_flatten_fu_82_reg[8]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of x_1_fu_202_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \x_1_fu_202_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \x_1_fu_202_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \x_1_fu_202_p2_carry__2\ : label is 35;
begin
  S(1 downto 0) <= \^s\(1 downto 0);
  \empty_fu_78_reg[2]_0\(2 downto 0) <= \^empty_fu_78_reg[2]_0\(2 downto 0);
  \sum_diff_sq_fu_70_reg[63]_0\(63 downto 0) <= \^sum_diff_sq_fu_70_reg[63]_0\(63 downto 0);
ack_in_t_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => Q(0),
      I2 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter2,
      O => \ap_CS_fsm_reg[2]\
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FC00000"
    )
        port map (
      I0 => icmp_ln31_fu_155_p2,
      I1 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      I2 => s_axis_video_TREADY2,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => ap_rst_n,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => SR(0)
    );
ap_loop_exit_ready_pp0_iter2_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCACC00000A00"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter2_reg,
      I1 => icmp_ln31_fu_155_p2,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter2,
      I4 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I5 => ap_enable_reg_pp0_iter1,
      O => ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0
    );
ap_loop_exit_ready_pp0_iter2_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter2_reg_i_1_n_0,
      Q => ap_loop_exit_ready_pp0_iter2_reg,
      R => '0'
    );
\empty_15_fu_86[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Q(0),
      I1 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter2,
      O => \empty_15_fu_86[7]_i_1_n_0\
    );
\empty_15_fu_86_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(0),
      Q => empty_15_fu_86(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(1),
      Q => empty_15_fu_86(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(2),
      Q => empty_15_fu_86(2),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(3),
      Q => empty_15_fu_86(3),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(4),
      Q => empty_15_fu_86(4),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(5),
      Q => empty_15_fu_86(5),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(6),
      Q => empty_15_fu_86(6),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_15_fu_86_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => \empty_15_fu_86_reg[7]_0\(7),
      Q => empty_15_fu_86(7),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(0),
      Q => \^empty_fu_78_reg[2]_0\(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(1),
      Q => \^empty_fu_78_reg[2]_0\(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(2),
      Q => \^empty_fu_78_reg[2]_0\(2),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(3),
      Q => empty_fu_78(3),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(4),
      Q => empty_fu_78(4),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(5),
      Q => empty_fu_78(5),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(6),
      Q => empty_fu_78(6),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\empty_fu_78_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \empty_15_fu_86[7]_i_1_n_0\,
      D => empty_15_fu_86(7),
      Q => empty_fu_78(7),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
flow_control_loop_pipe_sequential_init_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_flow_control_loop_pipe_sequential_init
     port map (
      Q(0) => Q(0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\(1 downto 0) => \ap_CS_fsm_reg[2]_0\(1 downto 0),
      \ap_CS_fsm_reg[3]\(1 downto 0) => \ap_CS_fsm_reg[3]\(1 downto 0),
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_loop_exit_ready_pp0_iter2_reg => ap_loop_exit_ready_pp0_iter2_reg,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_3,
      ap_rst_n => ap_rst_n,
      grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      s_axis_video_TREADY2 => s_axis_video_TREADY2
    );
grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFF00"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => s_axis_video_TREADY2,
      I2 => icmp_ln31_fu_155_p2,
      I3 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg(0),
      I4 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      O => ap_enable_reg_pp0_iter1_reg_0
    );
icmp_ln31_fu_155_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => icmp_ln31_fu_155_p2_carry_n_0,
      CO(6) => icmp_ln31_fu_155_p2_carry_n_1,
      CO(5) => icmp_ln31_fu_155_p2_carry_n_2,
      CO(4) => icmp_ln31_fu_155_p2_carry_n_3,
      CO(3) => icmp_ln31_fu_155_p2_carry_n_4,
      CO(2) => icmp_ln31_fu_155_p2_carry_n_5,
      CO(1) => icmp_ln31_fu_155_p2_carry_n_6,
      CO(0) => icmp_ln31_fu_155_p2_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => NLW_icmp_ln31_fu_155_p2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => icmp_ln31_fu_155_p2_carry_i_1_n_0,
      S(6) => icmp_ln31_fu_155_p2_carry_i_2_n_0,
      S(5) => icmp_ln31_fu_155_p2_carry_i_3_n_0,
      S(4) => icmp_ln31_fu_155_p2_carry_i_4_n_0,
      S(3) => icmp_ln31_fu_155_p2_carry_i_5_n_0,
      S(2) => icmp_ln31_fu_155_p2_carry_i_6_n_0,
      S(1) => icmp_ln31_fu_155_p2_carry_i_7_n_0,
      S(0) => icmp_ln31_fu_155_p2_carry_i_8_n_0
    );
\icmp_ln31_fu_155_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => icmp_ln31_fu_155_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \icmp_ln31_fu_155_p2_carry__0_n_0\,
      CO(6) => \icmp_ln31_fu_155_p2_carry__0_n_1\,
      CO(5) => \icmp_ln31_fu_155_p2_carry__0_n_2\,
      CO(4) => \icmp_ln31_fu_155_p2_carry__0_n_3\,
      CO(3) => \icmp_ln31_fu_155_p2_carry__0_n_4\,
      CO(2) => \icmp_ln31_fu_155_p2_carry__0_n_5\,
      CO(1) => \icmp_ln31_fu_155_p2_carry__0_n_6\,
      CO(0) => \icmp_ln31_fu_155_p2_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_icmp_ln31_fu_155_p2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \icmp_ln31_fu_155_p2_carry__0_i_1_n_0\,
      S(6) => \icmp_ln31_fu_155_p2_carry__0_i_2_n_0\,
      S(5) => \icmp_ln31_fu_155_p2_carry__0_i_3_n_0\,
      S(4) => \icmp_ln31_fu_155_p2_carry__0_i_4_n_0\,
      S(3) => \icmp_ln31_fu_155_p2_carry__0_i_5_n_0\,
      S(2) => \icmp_ln31_fu_155_p2_carry__0_i_6_n_0\,
      S(1) => \icmp_ln31_fu_155_p2_carry__0_i_7_n_0\,
      S(0) => \icmp_ln31_fu_155_p2_carry__0_i_8_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(45),
      I1 => \mul_ln10_reg_175_reg__1\(29),
      I2 => indvar_flatten_fu_82_reg(46),
      I3 => \mul_ln10_reg_175_reg__1\(30),
      I4 => \mul_ln10_reg_175_reg__1\(31),
      I5 => indvar_flatten_fu_82_reg(47),
      O => \icmp_ln31_fu_155_p2_carry__0_i_1_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(42),
      I1 => \mul_ln10_reg_175_reg__1\(26),
      I2 => indvar_flatten_fu_82_reg(43),
      I3 => \mul_ln10_reg_175_reg__1\(27),
      I4 => \mul_ln10_reg_175_reg__1\(28),
      I5 => indvar_flatten_fu_82_reg(44),
      O => \icmp_ln31_fu_155_p2_carry__0_i_2_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(39),
      I1 => \mul_ln10_reg_175_reg__1\(23),
      I2 => indvar_flatten_fu_82_reg(40),
      I3 => \mul_ln10_reg_175_reg__1\(24),
      I4 => \mul_ln10_reg_175_reg__1\(25),
      I5 => indvar_flatten_fu_82_reg(41),
      O => \icmp_ln31_fu_155_p2_carry__0_i_3_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(38),
      I1 => \mul_ln10_reg_175_reg__1\(22),
      I2 => indvar_flatten_fu_82_reg(36),
      I3 => \mul_ln10_reg_175_reg__1\(20),
      I4 => \mul_ln10_reg_175_reg__1\(21),
      I5 => indvar_flatten_fu_82_reg(37),
      O => \icmp_ln31_fu_155_p2_carry__0_i_4_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(35),
      I1 => \mul_ln10_reg_175_reg__1\(19),
      I2 => indvar_flatten_fu_82_reg(33),
      I3 => \mul_ln10_reg_175_reg__1\(17),
      I4 => \mul_ln10_reg_175_reg__1\(18),
      I5 => indvar_flatten_fu_82_reg(34),
      O => \icmp_ln31_fu_155_p2_carry__0_i_5_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(30),
      I1 => \mul_ln10_reg_175_reg__1\(14),
      I2 => indvar_flatten_fu_82_reg(31),
      I3 => \mul_ln10_reg_175_reg__1\(15),
      I4 => \mul_ln10_reg_175_reg__1\(16),
      I5 => indvar_flatten_fu_82_reg(32),
      O => \icmp_ln31_fu_155_p2_carry__0_i_6_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(28),
      I1 => \mul_ln10_reg_175_reg__1\(12),
      I2 => indvar_flatten_fu_82_reg(27),
      I3 => \mul_ln10_reg_175_reg__1\(11),
      I4 => \mul_ln10_reg_175_reg__1\(13),
      I5 => indvar_flatten_fu_82_reg(29),
      O => \icmp_ln31_fu_155_p2_carry__0_i_7_n_0\
    );
\icmp_ln31_fu_155_p2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(24),
      I1 => \mul_ln10_reg_175_reg__1\(8),
      I2 => indvar_flatten_fu_82_reg(25),
      I3 => \mul_ln10_reg_175_reg__1\(9),
      I4 => \mul_ln10_reg_175_reg__1\(10),
      I5 => indvar_flatten_fu_82_reg(26),
      O => \icmp_ln31_fu_155_p2_carry__0_i_8_n_0\
    );
\icmp_ln31_fu_155_p2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \icmp_ln31_fu_155_p2_carry__0_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_icmp_ln31_fu_155_p2_carry__1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => icmp_ln31_fu_155_p2,
      CO(3) => \icmp_ln31_fu_155_p2_carry__1_n_4\,
      CO(2) => \icmp_ln31_fu_155_p2_carry__1_n_5\,
      CO(1) => \icmp_ln31_fu_155_p2_carry__1_n_6\,
      CO(0) => \icmp_ln31_fu_155_p2_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \NLW_icmp_ln31_fu_155_p2_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => \icmp_ln31_reg_337_reg[0]_0\(0),
      S(3) => \icmp_ln31_fu_155_p2_carry__1_i_2_n_0\,
      S(2) => \icmp_ln31_fu_155_p2_carry__1_i_3_n_0\,
      S(1) => \icmp_ln31_fu_155_p2_carry__1_i_4_n_0\,
      S(0) => \icmp_ln31_fu_155_p2_carry__1_i_5_n_0\
    );
\icmp_ln31_fu_155_p2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(57),
      I1 => \mul_ln10_reg_175_reg__1\(41),
      I2 => indvar_flatten_fu_82_reg(58),
      I3 => \mul_ln10_reg_175_reg__1\(42),
      I4 => \mul_ln10_reg_175_reg__1\(43),
      I5 => indvar_flatten_fu_82_reg(59),
      O => \icmp_ln31_fu_155_p2_carry__1_i_2_n_0\
    );
\icmp_ln31_fu_155_p2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(54),
      I1 => \mul_ln10_reg_175_reg__1\(38),
      I2 => indvar_flatten_fu_82_reg(55),
      I3 => \mul_ln10_reg_175_reg__1\(39),
      I4 => \mul_ln10_reg_175_reg__1\(40),
      I5 => indvar_flatten_fu_82_reg(56),
      O => \icmp_ln31_fu_155_p2_carry__1_i_3_n_0\
    );
\icmp_ln31_fu_155_p2_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(53),
      I1 => \mul_ln10_reg_175_reg__1\(37),
      I2 => indvar_flatten_fu_82_reg(51),
      I3 => \mul_ln10_reg_175_reg__1\(35),
      I4 => \mul_ln10_reg_175_reg__1\(36),
      I5 => indvar_flatten_fu_82_reg(52),
      O => \icmp_ln31_fu_155_p2_carry__1_i_4_n_0\
    );
\icmp_ln31_fu_155_p2_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(48),
      I1 => \mul_ln10_reg_175_reg__1\(32),
      I2 => indvar_flatten_fu_82_reg(49),
      I3 => \mul_ln10_reg_175_reg__1\(33),
      I4 => \mul_ln10_reg_175_reg__1\(34),
      I5 => indvar_flatten_fu_82_reg(50),
      O => \icmp_ln31_fu_155_p2_carry__1_i_5_n_0\
    );
icmp_ln31_fu_155_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(21),
      I1 => \mul_ln10_reg_175_reg__1\(5),
      I2 => indvar_flatten_fu_82_reg(22),
      I3 => \mul_ln10_reg_175_reg__1\(6),
      I4 => \mul_ln10_reg_175_reg__1\(7),
      I5 => indvar_flatten_fu_82_reg(23),
      O => icmp_ln31_fu_155_p2_carry_i_1_n_0
    );
icmp_ln31_fu_155_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(18),
      I1 => \mul_ln10_reg_175_reg__1\(2),
      I2 => indvar_flatten_fu_82_reg(19),
      I3 => \mul_ln10_reg_175_reg__1\(3),
      I4 => \mul_ln10_reg_175_reg__1\(4),
      I5 => indvar_flatten_fu_82_reg(20),
      O => icmp_ln31_fu_155_p2_carry_i_2_n_0
    );
icmp_ln31_fu_155_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(15),
      I1 => icmp_ln31_fu_155_p2_carry_0(15),
      I2 => indvar_flatten_fu_82_reg(16),
      I3 => \mul_ln10_reg_175_reg__1\(0),
      I4 => \mul_ln10_reg_175_reg__1\(1),
      I5 => indvar_flatten_fu_82_reg(17),
      O => icmp_ln31_fu_155_p2_carry_i_3_n_0
    );
icmp_ln31_fu_155_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(12),
      I1 => icmp_ln31_fu_155_p2_carry_0(12),
      I2 => indvar_flatten_fu_82_reg(13),
      I3 => icmp_ln31_fu_155_p2_carry_0(13),
      I4 => icmp_ln31_fu_155_p2_carry_0(14),
      I5 => indvar_flatten_fu_82_reg(14),
      O => icmp_ln31_fu_155_p2_carry_i_4_n_0
    );
icmp_ln31_fu_155_p2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(9),
      I1 => icmp_ln31_fu_155_p2_carry_0(9),
      I2 => indvar_flatten_fu_82_reg(10),
      I3 => icmp_ln31_fu_155_p2_carry_0(10),
      I4 => icmp_ln31_fu_155_p2_carry_0(11),
      I5 => indvar_flatten_fu_82_reg(11),
      O => icmp_ln31_fu_155_p2_carry_i_5_n_0
    );
icmp_ln31_fu_155_p2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(6),
      I1 => icmp_ln31_fu_155_p2_carry_0(6),
      I2 => indvar_flatten_fu_82_reg(7),
      I3 => icmp_ln31_fu_155_p2_carry_0(7),
      I4 => icmp_ln31_fu_155_p2_carry_0(8),
      I5 => indvar_flatten_fu_82_reg(8),
      O => icmp_ln31_fu_155_p2_carry_i_6_n_0
    );
icmp_ln31_fu_155_p2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(5),
      I1 => icmp_ln31_fu_155_p2_carry_0(5),
      I2 => indvar_flatten_fu_82_reg(3),
      I3 => icmp_ln31_fu_155_p2_carry_0(3),
      I4 => icmp_ln31_fu_155_p2_carry_0(4),
      I5 => indvar_flatten_fu_82_reg(4),
      O => icmp_ln31_fu_155_p2_carry_i_7_n_0
    );
icmp_ln31_fu_155_p2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(0),
      I1 => icmp_ln31_fu_155_p2_carry_0(0),
      I2 => indvar_flatten_fu_82_reg(1),
      I3 => icmp_ln31_fu_155_p2_carry_0(1),
      I4 => icmp_ln31_fu_155_p2_carry_0(2),
      I5 => indvar_flatten_fu_82_reg(2),
      O => icmp_ln31_fu_155_p2_carry_i_8_n_0
    );
\icmp_ln31_reg_337_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => s_axis_video_TREADY2,
      D => icmp_ln31_fu_155_p2,
      Q => \icmp_ln31_reg_337_reg_n_0_[0]\,
      R => '0'
    );
icmp_ln32_fu_167_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => icmp_ln32_fu_167_p2_carry_n_0,
      CO(6) => icmp_ln32_fu_167_p2_carry_n_1,
      CO(5) => icmp_ln32_fu_167_p2_carry_n_2,
      CO(4) => icmp_ln32_fu_167_p2_carry_n_3,
      CO(3) => icmp_ln32_fu_167_p2_carry_n_4,
      CO(2) => icmp_ln32_fu_167_p2_carry_n_5,
      CO(1) => icmp_ln32_fu_167_p2_carry_n_6,
      CO(0) => icmp_ln32_fu_167_p2_carry_n_7,
      DI(7) => icmp_ln32_fu_167_p2_carry_i_1_n_0,
      DI(6) => icmp_ln32_fu_167_p2_carry_i_2_n_0,
      DI(5) => icmp_ln32_fu_167_p2_carry_i_3_n_0,
      DI(4) => icmp_ln32_fu_167_p2_carry_i_4_n_0,
      DI(3) => icmp_ln32_fu_167_p2_carry_i_5_n_0,
      DI(2) => icmp_ln32_fu_167_p2_carry_i_6_n_0,
      DI(1) => icmp_ln32_fu_167_p2_carry_i_7_n_0,
      DI(0) => icmp_ln32_fu_167_p2_carry_i_8_n_0,
      O(7 downto 0) => NLW_icmp_ln32_fu_167_p2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => icmp_ln32_fu_167_p2_carry_i_9_n_0,
      S(6) => icmp_ln32_fu_167_p2_carry_i_10_n_0,
      S(5) => icmp_ln32_fu_167_p2_carry_i_11_n_0,
      S(4) => icmp_ln32_fu_167_p2_carry_i_12_n_0,
      S(3) => icmp_ln32_fu_167_p2_carry_i_13_n_0,
      S(2) => icmp_ln32_fu_167_p2_carry_i_14_n_0,
      S(1) => icmp_ln32_fu_167_p2_carry_i_15_n_0,
      S(0) => icmp_ln32_fu_167_p2_carry_i_16_n_0
    );
\icmp_ln32_fu_167_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => icmp_ln32_fu_167_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      CO(6) => \icmp_ln32_fu_167_p2_carry__0_n_1\,
      CO(5) => \icmp_ln32_fu_167_p2_carry__0_n_2\,
      CO(4) => \icmp_ln32_fu_167_p2_carry__0_n_3\,
      CO(3) => \icmp_ln32_fu_167_p2_carry__0_n_4\,
      CO(2) => \icmp_ln32_fu_167_p2_carry__0_n_5\,
      CO(1) => \icmp_ln32_fu_167_p2_carry__0_n_6\,
      CO(0) => \icmp_ln32_fu_167_p2_carry__0_n_7\,
      DI(7) => \icmp_ln32_fu_167_p2_carry__0_i_1_n_0\,
      DI(6) => \icmp_ln32_fu_167_p2_carry__0_i_2_n_0\,
      DI(5) => \icmp_ln32_fu_167_p2_carry__0_i_3_n_0\,
      DI(4) => \icmp_ln32_fu_167_p2_carry__0_i_4_n_0\,
      DI(3) => \icmp_ln32_fu_167_p2_carry__0_i_5_n_0\,
      DI(2) => \icmp_ln32_fu_167_p2_carry__0_i_6_n_0\,
      DI(1) => \icmp_ln32_fu_167_p2_carry__0_i_7_n_0\,
      DI(0) => \icmp_ln32_fu_167_p2_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_icmp_ln32_fu_167_p2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \icmp_ln32_fu_167_p2_carry__0_i_9_n_0\,
      S(6) => \icmp_ln32_fu_167_p2_carry__0_i_10_n_0\,
      S(5) => \icmp_ln32_fu_167_p2_carry__0_i_11_n_0\,
      S(4) => \icmp_ln32_fu_167_p2_carry__0_i_12_n_0\,
      S(3) => \icmp_ln32_fu_167_p2_carry__0_i_13_n_0\,
      S(2) => \icmp_ln32_fu_167_p2_carry__0_i_14_n_0\,
      S(1) => \icmp_ln32_fu_167_p2_carry__0_i_15_n_0\,
      S(0) => \icmp_ln32_fu_167_p2_carry__0_i_16_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(31),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(30),
      I2 => p_0_in(30),
      O => \icmp_ln32_fu_167_p2_carry__0_i_1_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(29),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(29),
      I2 => p_0_in(28),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(28),
      O => \icmp_ln32_fu_167_p2_carry__0_i_10_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(27),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(27),
      I2 => p_0_in(26),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(26),
      O => \icmp_ln32_fu_167_p2_carry__0_i_11_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(25),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(25),
      I2 => p_0_in(24),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(24),
      O => \icmp_ln32_fu_167_p2_carry__0_i_12_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(23),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(23),
      I2 => p_0_in(22),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(22),
      O => \icmp_ln32_fu_167_p2_carry__0_i_13_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(21),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(21),
      I2 => p_0_in(20),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(20),
      O => \icmp_ln32_fu_167_p2_carry__0_i_14_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(19),
      I2 => p_0_in(18),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(18),
      O => \icmp_ln32_fu_167_p2_carry__0_i_15_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(17),
      I2 => p_0_in(16),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(16),
      O => \icmp_ln32_fu_167_p2_carry__0_i_16_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(29),
      I1 => p_0_in(29),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(28),
      I3 => p_0_in(28),
      O => \icmp_ln32_fu_167_p2_carry__0_i_2_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(27),
      I1 => p_0_in(27),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(26),
      I3 => p_0_in(26),
      O => \icmp_ln32_fu_167_p2_carry__0_i_3_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(25),
      I1 => p_0_in(25),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(24),
      I3 => p_0_in(24),
      O => \icmp_ln32_fu_167_p2_carry__0_i_4_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(23),
      I1 => p_0_in(23),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(22),
      I3 => p_0_in(22),
      O => \icmp_ln32_fu_167_p2_carry__0_i_5_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(21),
      I1 => p_0_in(21),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(20),
      I3 => p_0_in(20),
      O => \icmp_ln32_fu_167_p2_carry__0_i_6_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(19),
      I1 => p_0_in(19),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(18),
      I3 => p_0_in(18),
      O => \icmp_ln32_fu_167_p2_carry__0_i_7_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(17),
      I1 => p_0_in(17),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(16),
      I3 => p_0_in(16),
      O => \icmp_ln32_fu_167_p2_carry__0_i_8_n_0\
    );
\icmp_ln32_fu_167_p2_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => p_0_in(30),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(30),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(31),
      O => \icmp_ln32_fu_167_p2_carry__0_i_9_n_0\
    );
icmp_ln32_fu_167_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(15),
      I1 => p_0_in(15),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(14),
      I3 => p_0_in(14),
      O => icmp_ln32_fu_167_p2_carry_i_1_n_0
    );
icmp_ln32_fu_167_p2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(13),
      I2 => p_0_in(12),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(12),
      O => icmp_ln32_fu_167_p2_carry_i_10_n_0
    );
icmp_ln32_fu_167_p2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(11),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(11),
      I2 => p_0_in(10),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(10),
      O => icmp_ln32_fu_167_p2_carry_i_11_n_0
    );
icmp_ln32_fu_167_p2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(9),
      I2 => p_0_in(8),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(8),
      O => icmp_ln32_fu_167_p2_carry_i_12_n_0
    );
icmp_ln32_fu_167_p2_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(7),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(7),
      I2 => p_0_in(6),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(6),
      O => icmp_ln32_fu_167_p2_carry_i_13_n_0
    );
icmp_ln32_fu_167_p2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(5),
      I2 => p_0_in(4),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(4),
      O => icmp_ln32_fu_167_p2_carry_i_14_n_0
    );
icmp_ln32_fu_167_p2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(3),
      I2 => p_0_in(2),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(2),
      O => icmp_ln32_fu_167_p2_carry_i_15_n_0
    );
icmp_ln32_fu_167_p2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(1),
      I2 => p_0_in(0),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(0),
      O => icmp_ln32_fu_167_p2_carry_i_16_n_0
    );
icmp_ln32_fu_167_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(13),
      I1 => p_0_in(13),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(12),
      I3 => p_0_in(12),
      O => icmp_ln32_fu_167_p2_carry_i_2_n_0
    );
icmp_ln32_fu_167_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(11),
      I1 => p_0_in(11),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(10),
      I3 => p_0_in(10),
      O => icmp_ln32_fu_167_p2_carry_i_3_n_0
    );
icmp_ln32_fu_167_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(9),
      I1 => p_0_in(9),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(8),
      I3 => p_0_in(8),
      O => icmp_ln32_fu_167_p2_carry_i_4_n_0
    );
icmp_ln32_fu_167_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(7),
      I1 => p_0_in(7),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(6),
      I3 => p_0_in(6),
      O => icmp_ln32_fu_167_p2_carry_i_5_n_0
    );
icmp_ln32_fu_167_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(5),
      I1 => p_0_in(5),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(4),
      I3 => p_0_in(4),
      O => icmp_ln32_fu_167_p2_carry_i_6_n_0
    );
icmp_ln32_fu_167_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(3),
      I1 => p_0_in(3),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(2),
      I3 => p_0_in(2),
      O => icmp_ln32_fu_167_p2_carry_i_7_n_0
    );
icmp_ln32_fu_167_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_0\(1),
      I1 => p_0_in(1),
      I2 => \icmp_ln32_fu_167_p2_carry__0_0\(0),
      I3 => p_0_in(0),
      O => icmp_ln32_fu_167_p2_carry_i_8_n_0
    );
icmp_ln32_fu_167_p2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \icmp_ln32_fu_167_p2_carry__0_0\(15),
      I2 => p_0_in(14),
      I3 => \icmp_ln32_fu_167_p2_carry__0_0\(14),
      O => icmp_ln32_fu_167_p2_carry_i_9_n_0
    );
\icmp_ln44_reg_341[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \icmp_ln44_reg_341[0]_i_2_n_0\,
      I1 => \icmp_ln44_reg_341[0]_i_3_n_0\,
      I2 => \icmp_ln44_reg_341[0]_i_4_n_0\,
      I3 => \icmp_ln44_reg_341[0]_i_5_n_0\,
      I4 => \icmp_ln44_reg_341[0]_i_6_n_0\,
      I5 => \icmp_ln44_reg_341[0]_i_7_n_0\,
      O => icmp_ln44_fu_196_p2
    );
\icmp_ln44_reg_341[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(21),
      I1 => p_0_in(24),
      I2 => p_0_in(25),
      I3 => p_0_in(23),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(22),
      O => \icmp_ln44_reg_341[0]_i_2_n_0\
    );
\icmp_ln44_reg_341[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(26),
      I1 => p_0_in(29),
      I2 => p_0_in(30),
      I3 => p_0_in(28),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(27),
      O => \icmp_ln44_reg_341[0]_i_3_n_0\
    );
\icmp_ln44_reg_341[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(14),
      I2 => p_0_in(15),
      I3 => p_0_in(13),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(12),
      O => \icmp_ln44_reg_341[0]_i_4_n_0\
    );
\icmp_ln44_reg_341[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(16),
      I1 => p_0_in(19),
      I2 => p_0_in(20),
      I3 => p_0_in(18),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(17),
      O => \icmp_ln44_reg_341[0]_i_5_n_0\
    );
\icmp_ln44_reg_341[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(9),
      I2 => p_0_in(10),
      I3 => p_0_in(8),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(7),
      O => \icmp_ln44_reg_341[0]_i_6_n_0\
    );
\icmp_ln44_reg_341[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => p_0_in(5),
      I3 => p_0_in(3),
      I4 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I5 => p_0_in(2),
      O => \icmp_ln44_reg_341[0]_i_7_n_0\
    );
\icmp_ln44_reg_341_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => s_axis_video_TREADY2,
      D => icmp_ln44_fu_196_p2,
      Q => icmp_ln44_reg_341,
      R => '0'
    );
\indvar_flatten_fu_82[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_fu_82_reg(0),
      O => \indvar_flatten_fu_82[0]_i_2_n_0\
    );
\indvar_flatten_fu_82_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[0]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[0]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[0]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[0]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[0]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[0]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[0]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \indvar_flatten_fu_82_reg[0]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[0]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[0]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[0]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[0]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[0]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[0]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[0]_i_1_n_15\,
      S(7 downto 1) => indvar_flatten_fu_82_reg(7 downto 1),
      S(0) => \indvar_flatten_fu_82[0]_i_2_n_0\
    );
\indvar_flatten_fu_82_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(10),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(11),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(12),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(13),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(14),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(15),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(16),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[16]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[16]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[16]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[16]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[16]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[16]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[16]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[16]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[16]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[16]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[16]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[16]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[16]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[16]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[16]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(23 downto 16)
    );
\indvar_flatten_fu_82_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(17),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(18),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(19),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(20),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(21),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(22),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[16]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(23),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(24),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[24]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[24]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[24]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[24]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[24]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[24]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[24]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[24]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[24]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[24]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[24]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[24]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[24]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[24]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[24]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(31 downto 24)
    );
\indvar_flatten_fu_82_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(25),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(26),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(27),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(28),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(29),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(2),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(30),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[24]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(31),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(32),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[32]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[32]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[32]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[32]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[32]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[32]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[32]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[32]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[32]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[32]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[32]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[32]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[32]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[32]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[32]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[32]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(39 downto 32)
    );
\indvar_flatten_fu_82_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(33),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(34),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(35),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(36),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(37),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(38),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[32]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(39),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(3),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(40),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[40]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[40]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[40]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[40]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[40]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[40]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[40]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[40]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[40]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[40]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[40]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[40]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[40]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[40]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[40]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[40]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(47 downto 40)
    );
\indvar_flatten_fu_82_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(41),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(42),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(43),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(44),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(45),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(46),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[40]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(47),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(48),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[48]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[48]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[48]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[48]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[48]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[48]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[48]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[48]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[48]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[48]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[48]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[48]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[48]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[48]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[48]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[48]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(55 downto 48)
    );
\indvar_flatten_fu_82_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(49),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(4),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(50),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(51),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_11\,
      Q => indvar_flatten_fu_82_reg(52),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(53),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(54),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[48]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(55),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(56),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[56]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[48]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_indvar_flatten_fu_82_reg[56]_i_1_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \indvar_flatten_fu_82_reg[56]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[56]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[56]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[56]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[56]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_indvar_flatten_fu_82_reg[56]_i_1_O_UNCONNECTED\(7 downto 6),
      O(5) => \indvar_flatten_fu_82_reg[56]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[56]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[56]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[56]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[56]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[56]_i_1_n_15\,
      S(7 downto 6) => B"00",
      S(5 downto 4) => \^s\(1 downto 0),
      S(3 downto 0) => indvar_flatten_fu_82_reg(59 downto 56)
    );
\indvar_flatten_fu_82_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(57),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_13\,
      Q => indvar_flatten_fu_82_reg(58),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_12\,
      Q => indvar_flatten_fu_82_reg(59),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_10\,
      Q => indvar_flatten_fu_82_reg(5),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_11\,
      Q => \^s\(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[56]_i_1_n_10\,
      Q => \^s\(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_9\,
      Q => indvar_flatten_fu_82_reg(6),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[0]_i_1_n_8\,
      Q => indvar_flatten_fu_82_reg(7),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_15\,
      Q => indvar_flatten_fu_82_reg(8),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\indvar_flatten_fu_82_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \indvar_flatten_fu_82_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \indvar_flatten_fu_82_reg[8]_i_1_n_0\,
      CO(6) => \indvar_flatten_fu_82_reg[8]_i_1_n_1\,
      CO(5) => \indvar_flatten_fu_82_reg[8]_i_1_n_2\,
      CO(4) => \indvar_flatten_fu_82_reg[8]_i_1_n_3\,
      CO(3) => \indvar_flatten_fu_82_reg[8]_i_1_n_4\,
      CO(2) => \indvar_flatten_fu_82_reg[8]_i_1_n_5\,
      CO(1) => \indvar_flatten_fu_82_reg[8]_i_1_n_6\,
      CO(0) => \indvar_flatten_fu_82_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \indvar_flatten_fu_82_reg[8]_i_1_n_8\,
      O(6) => \indvar_flatten_fu_82_reg[8]_i_1_n_9\,
      O(5) => \indvar_flatten_fu_82_reg[8]_i_1_n_10\,
      O(4) => \indvar_flatten_fu_82_reg[8]_i_1_n_11\,
      O(3) => \indvar_flatten_fu_82_reg[8]_i_1_n_12\,
      O(2) => \indvar_flatten_fu_82_reg[8]_i_1_n_13\,
      O(1) => \indvar_flatten_fu_82_reg[8]_i_1_n_14\,
      O(0) => \indvar_flatten_fu_82_reg[8]_i_1_n_15\,
      S(7 downto 0) => indvar_flatten_fu_82_reg(15 downto 8)
    );
\indvar_flatten_fu_82_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => \indvar_flatten_fu_82_reg[8]_i_1_n_14\,
      Q => indvar_flatten_fu_82_reg(9),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
mul_9s_9s_18_1_1_U1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_9s_9s_18_1_1
     port map (
      DSP_ALU_INST(1 downto 0) => DSP_ALU_INST(1 downto 0),
      DSP_A_B_DATA_INST(7 downto 0) => \empty_15_fu_86_reg[7]_0\(7 downto 0),
      O(7) => mul_9s_9s_18_1_1_U1_n_0,
      O(6) => mul_9s_9s_18_1_1_U1_n_1,
      O(5) => mul_9s_9s_18_1_1_U1_n_2,
      O(4) => mul_9s_9s_18_1_1_U1_n_3,
      O(3) => mul_9s_9s_18_1_1_U1_n_4,
      O(2) => mul_9s_9s_18_1_1_U1_n_5,
      O(1) => mul_9s_9s_18_1_1_U1_n_6,
      O(0) => mul_9s_9s_18_1_1_U1_n_7,
      Q(7 downto 3) => empty_fu_78(7 downto 3),
      Q(2 downto 0) => \^empty_fu_78_reg[2]_0\(2 downto 0),
      \sum_diff_sq_fu_70_reg[15]\(7) => mul_9s_9s_18_1_1_U1_n_8,
      \sum_diff_sq_fu_70_reg[15]\(6) => mul_9s_9s_18_1_1_U1_n_9,
      \sum_diff_sq_fu_70_reg[15]\(5) => mul_9s_9s_18_1_1_U1_n_10,
      \sum_diff_sq_fu_70_reg[15]\(4) => mul_9s_9s_18_1_1_U1_n_11,
      \sum_diff_sq_fu_70_reg[15]\(3) => mul_9s_9s_18_1_1_U1_n_12,
      \sum_diff_sq_fu_70_reg[15]\(2) => mul_9s_9s_18_1_1_U1_n_13,
      \sum_diff_sq_fu_70_reg[15]\(1) => mul_9s_9s_18_1_1_U1_n_14,
      \sum_diff_sq_fu_70_reg[15]\(0) => mul_9s_9s_18_1_1_U1_n_15,
      \sum_diff_sq_fu_70_reg[23]\(7) => mul_9s_9s_18_1_1_U1_n_16,
      \sum_diff_sq_fu_70_reg[23]\(6) => mul_9s_9s_18_1_1_U1_n_17,
      \sum_diff_sq_fu_70_reg[23]\(5) => mul_9s_9s_18_1_1_U1_n_18,
      \sum_diff_sq_fu_70_reg[23]\(4) => mul_9s_9s_18_1_1_U1_n_19,
      \sum_diff_sq_fu_70_reg[23]\(3) => mul_9s_9s_18_1_1_U1_n_20,
      \sum_diff_sq_fu_70_reg[23]\(2) => mul_9s_9s_18_1_1_U1_n_21,
      \sum_diff_sq_fu_70_reg[23]\(1) => mul_9s_9s_18_1_1_U1_n_22,
      \sum_diff_sq_fu_70_reg[23]\(0) => mul_9s_9s_18_1_1_U1_n_23,
      \sum_diff_sq_fu_70_reg[31]\(7) => mul_9s_9s_18_1_1_U1_n_24,
      \sum_diff_sq_fu_70_reg[31]\(6) => mul_9s_9s_18_1_1_U1_n_25,
      \sum_diff_sq_fu_70_reg[31]\(5) => mul_9s_9s_18_1_1_U1_n_26,
      \sum_diff_sq_fu_70_reg[31]\(4) => mul_9s_9s_18_1_1_U1_n_27,
      \sum_diff_sq_fu_70_reg[31]\(3) => mul_9s_9s_18_1_1_U1_n_28,
      \sum_diff_sq_fu_70_reg[31]\(2) => mul_9s_9s_18_1_1_U1_n_29,
      \sum_diff_sq_fu_70_reg[31]\(1) => mul_9s_9s_18_1_1_U1_n_30,
      \sum_diff_sq_fu_70_reg[31]\(0) => mul_9s_9s_18_1_1_U1_n_31,
      \sum_diff_sq_fu_70_reg[39]\(7) => mul_9s_9s_18_1_1_U1_n_32,
      \sum_diff_sq_fu_70_reg[39]\(6) => mul_9s_9s_18_1_1_U1_n_33,
      \sum_diff_sq_fu_70_reg[39]\(5) => mul_9s_9s_18_1_1_U1_n_34,
      \sum_diff_sq_fu_70_reg[39]\(4) => mul_9s_9s_18_1_1_U1_n_35,
      \sum_diff_sq_fu_70_reg[39]\(3) => mul_9s_9s_18_1_1_U1_n_36,
      \sum_diff_sq_fu_70_reg[39]\(2) => mul_9s_9s_18_1_1_U1_n_37,
      \sum_diff_sq_fu_70_reg[39]\(1) => mul_9s_9s_18_1_1_U1_n_38,
      \sum_diff_sq_fu_70_reg[39]\(0) => mul_9s_9s_18_1_1_U1_n_39,
      \sum_diff_sq_fu_70_reg[47]\(7) => mul_9s_9s_18_1_1_U1_n_40,
      \sum_diff_sq_fu_70_reg[47]\(6) => mul_9s_9s_18_1_1_U1_n_41,
      \sum_diff_sq_fu_70_reg[47]\(5) => mul_9s_9s_18_1_1_U1_n_42,
      \sum_diff_sq_fu_70_reg[47]\(4) => mul_9s_9s_18_1_1_U1_n_43,
      \sum_diff_sq_fu_70_reg[47]\(3) => mul_9s_9s_18_1_1_U1_n_44,
      \sum_diff_sq_fu_70_reg[47]\(2) => mul_9s_9s_18_1_1_U1_n_45,
      \sum_diff_sq_fu_70_reg[47]\(1) => mul_9s_9s_18_1_1_U1_n_46,
      \sum_diff_sq_fu_70_reg[47]\(0) => mul_9s_9s_18_1_1_U1_n_47,
      \sum_diff_sq_fu_70_reg[55]\(7) => mul_9s_9s_18_1_1_U1_n_48,
      \sum_diff_sq_fu_70_reg[55]\(6) => mul_9s_9s_18_1_1_U1_n_49,
      \sum_diff_sq_fu_70_reg[55]\(5) => mul_9s_9s_18_1_1_U1_n_50,
      \sum_diff_sq_fu_70_reg[55]\(4) => mul_9s_9s_18_1_1_U1_n_51,
      \sum_diff_sq_fu_70_reg[55]\(3) => mul_9s_9s_18_1_1_U1_n_52,
      \sum_diff_sq_fu_70_reg[55]\(2) => mul_9s_9s_18_1_1_U1_n_53,
      \sum_diff_sq_fu_70_reg[55]\(1) => mul_9s_9s_18_1_1_U1_n_54,
      \sum_diff_sq_fu_70_reg[55]\(0) => mul_9s_9s_18_1_1_U1_n_55,
      \sum_diff_sq_fu_70_reg[63]\(7) => mul_9s_9s_18_1_1_U1_n_56,
      \sum_diff_sq_fu_70_reg[63]\(6) => mul_9s_9s_18_1_1_U1_n_57,
      \sum_diff_sq_fu_70_reg[63]\(5) => mul_9s_9s_18_1_1_U1_n_58,
      \sum_diff_sq_fu_70_reg[63]\(4) => mul_9s_9s_18_1_1_U1_n_59,
      \sum_diff_sq_fu_70_reg[63]\(3) => mul_9s_9s_18_1_1_U1_n_60,
      \sum_diff_sq_fu_70_reg[63]\(2) => mul_9s_9s_18_1_1_U1_n_61,
      \sum_diff_sq_fu_70_reg[63]\(1) => mul_9s_9s_18_1_1_U1_n_62,
      \sum_diff_sq_fu_70_reg[63]\(0) => mul_9s_9s_18_1_1_U1_n_63,
      \sum_diff_sq_fu_70_reg[63]_0\(63 downto 0) => \^sum_diff_sq_fu_70_reg[63]_0\(63 downto 0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020FF20FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I2 => \ap_CS_fsm_reg[3]\(1),
      I3 => Q(1),
      I4 => s_axis_video_TVALID,
      I5 => Q(0),
      O => D(0)
    );
\sum_diff_sq_fu_70[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => icmp_ln44_reg_341,
      I1 => Q(0),
      I2 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter2,
      O => sum_diff_sq_fu_70
    );
\sum_diff_sq_fu_70_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_7,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_13,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(10),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_12,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(11),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_11,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(12),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_10,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(13),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_9,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(14),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_8,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(15),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_23,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(16),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_22,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(17),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_21,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(18),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_20,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(19),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_6,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_19,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(20),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_18,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(21),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_17,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(22),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_16,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(23),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_31,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(24),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_30,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(25),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_29,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(26),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_28,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(27),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_27,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(28),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_26,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(29),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_5,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(2),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_25,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(30),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_24,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(31),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_39,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(32),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_38,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(33),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_37,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(34),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_36,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(35),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_35,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(36),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_34,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(37),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_33,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(38),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_32,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(39),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_4,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(3),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_47,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(40),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_46,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(41),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_45,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(42),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_44,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(43),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_43,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(44),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_42,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(45),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_41,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(46),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_40,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(47),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_55,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(48),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_54,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(49),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_3,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(4),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_53,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(50),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_52,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(51),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_51,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(52),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_50,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(53),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_49,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(54),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_48,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(55),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_63,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(56),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_62,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(57),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_61,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(58),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_60,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(59),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_2,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(5),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_59,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(60),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_58,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(61),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_57,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(62),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_56,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(63),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_1,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(6),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_0,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(7),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_15,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(8),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\sum_diff_sq_fu_70_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => sum_diff_sq_fu_70,
      D => mul_9s_9s_18_1_1_U1_n_14,
      Q => \^sum_diff_sq_fu_70_reg[63]_0\(9),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\tmp_product_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => P(5),
      I1 => \tmp_product_carry__4\(5),
      O => \ap_CS_fsm_reg[0]\(5)
    );
\tmp_product_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product_carry__4\(4),
      I1 => P(4),
      O => \ap_CS_fsm_reg[0]\(4)
    );
\tmp_product_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product_carry__4\(3),
      I1 => P(3),
      O => \ap_CS_fsm_reg[0]\(3)
    );
\tmp_product_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product_carry__4\(2),
      I1 => P(2),
      O => \ap_CS_fsm_reg[0]\(2)
    );
\tmp_product_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product_carry__4\(1),
      I1 => P(1),
      O => \ap_CS_fsm_reg[0]\(1)
    );
\tmp_product_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \tmp_product_carry__4\(0),
      I1 => P(0),
      O => \ap_CS_fsm_reg[0]\(0)
    );
x_1_fu_202_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => select_ln25_fu_178_p3(0),
      CI_TOP => '0',
      CO(7) => x_1_fu_202_p2_carry_n_0,
      CO(6) => x_1_fu_202_p2_carry_n_1,
      CO(5) => x_1_fu_202_p2_carry_n_2,
      CO(4) => x_1_fu_202_p2_carry_n_3,
      CO(3) => x_1_fu_202_p2_carry_n_4,
      CO(2) => x_1_fu_202_p2_carry_n_5,
      CO(1) => x_1_fu_202_p2_carry_n_6,
      CO(0) => x_1_fu_202_p2_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => x_1_fu_202_p2(8 downto 1),
      S(7 downto 5) => select_ln25_fu_178_p3(8 downto 6),
      S(4) => x_1_fu_202_p2_carry_i_5_n_0,
      S(3 downto 0) => select_ln25_fu_178_p3(4 downto 1)
    );
\x_1_fu_202_p2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => x_1_fu_202_p2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \x_1_fu_202_p2_carry__0_n_0\,
      CO(6) => \x_1_fu_202_p2_carry__0_n_1\,
      CO(5) => \x_1_fu_202_p2_carry__0_n_2\,
      CO(4) => \x_1_fu_202_p2_carry__0_n_3\,
      CO(3) => \x_1_fu_202_p2_carry__0_n_4\,
      CO(2) => \x_1_fu_202_p2_carry__0_n_5\,
      CO(1) => \x_1_fu_202_p2_carry__0_n_6\,
      CO(0) => \x_1_fu_202_p2_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => x_1_fu_202_p2(16 downto 9),
      S(7) => select_ln25_fu_178_p3(16),
      S(6) => \x_1_fu_202_p2_carry__0_i_2_n_0\,
      S(5 downto 2) => select_ln25_fu_178_p3(14 downto 11),
      S(1) => \x_1_fu_202_p2_carry__0_i_7_n_0\,
      S(0) => select_ln25_fu_178_p3(9)
    );
\x_1_fu_202_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(16),
      O => select_ln25_fu_178_p3(16)
    );
\x_1_fu_202_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(15),
      O => \x_1_fu_202_p2_carry__0_i_2_n_0\
    );
\x_1_fu_202_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(14),
      O => select_ln25_fu_178_p3(14)
    );
\x_1_fu_202_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(13),
      O => select_ln25_fu_178_p3(13)
    );
\x_1_fu_202_p2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(12),
      O => select_ln25_fu_178_p3(12)
    );
\x_1_fu_202_p2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(11),
      O => select_ln25_fu_178_p3(11)
    );
\x_1_fu_202_p2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(10),
      O => \x_1_fu_202_p2_carry__0_i_7_n_0\
    );
\x_1_fu_202_p2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(9),
      O => select_ln25_fu_178_p3(9)
    );
\x_1_fu_202_p2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \x_1_fu_202_p2_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \x_1_fu_202_p2_carry__1_n_0\,
      CO(6) => \x_1_fu_202_p2_carry__1_n_1\,
      CO(5) => \x_1_fu_202_p2_carry__1_n_2\,
      CO(4) => \x_1_fu_202_p2_carry__1_n_3\,
      CO(3) => \x_1_fu_202_p2_carry__1_n_4\,
      CO(2) => \x_1_fu_202_p2_carry__1_n_5\,
      CO(1) => \x_1_fu_202_p2_carry__1_n_6\,
      CO(0) => \x_1_fu_202_p2_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => x_1_fu_202_p2(24 downto 17),
      S(7 downto 4) => select_ln25_fu_178_p3(24 downto 21),
      S(3) => \x_1_fu_202_p2_carry__1_i_5_n_0\,
      S(2 downto 0) => select_ln25_fu_178_p3(19 downto 17)
    );
\x_1_fu_202_p2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(24),
      O => select_ln25_fu_178_p3(24)
    );
\x_1_fu_202_p2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(23),
      O => select_ln25_fu_178_p3(23)
    );
\x_1_fu_202_p2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(22),
      O => select_ln25_fu_178_p3(22)
    );
\x_1_fu_202_p2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(21),
      O => select_ln25_fu_178_p3(21)
    );
\x_1_fu_202_p2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(20),
      O => \x_1_fu_202_p2_carry__1_i_5_n_0\
    );
\x_1_fu_202_p2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(19),
      O => select_ln25_fu_178_p3(19)
    );
\x_1_fu_202_p2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(18),
      O => select_ln25_fu_178_p3(18)
    );
\x_1_fu_202_p2_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(17),
      O => select_ln25_fu_178_p3(17)
    );
\x_1_fu_202_p2_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \x_1_fu_202_p2_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_x_1_fu_202_p2_carry__2_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \x_1_fu_202_p2_carry__2_n_3\,
      CO(3) => \x_1_fu_202_p2_carry__2_n_4\,
      CO(2) => \x_1_fu_202_p2_carry__2_n_5\,
      CO(1) => \x_1_fu_202_p2_carry__2_n_6\,
      CO(0) => \x_1_fu_202_p2_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_x_1_fu_202_p2_carry__2_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => x_1_fu_202_p2(30 downto 25),
      S(7 downto 6) => B"00",
      S(5) => \x_1_fu_202_p2_carry__2_i_1_n_0\,
      S(4 downto 1) => select_ln25_fu_178_p3(29 downto 26),
      S(0) => \x_1_fu_202_p2_carry__2_i_6_n_0\
    );
\x_1_fu_202_p2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(30),
      O => \x_1_fu_202_p2_carry__2_i_1_n_0\
    );
\x_1_fu_202_p2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(29),
      O => select_ln25_fu_178_p3(29)
    );
\x_1_fu_202_p2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(28),
      O => select_ln25_fu_178_p3(28)
    );
\x_1_fu_202_p2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(27),
      O => select_ln25_fu_178_p3(27)
    );
\x_1_fu_202_p2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(26),
      O => select_ln25_fu_178_p3(26)
    );
\x_1_fu_202_p2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(25),
      O => \x_1_fu_202_p2_carry__2_i_6_n_0\
    );
x_1_fu_202_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(0),
      O => select_ln25_fu_178_p3(0)
    );
x_1_fu_202_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(8),
      O => select_ln25_fu_178_p3(8)
    );
x_1_fu_202_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(7),
      O => select_ln25_fu_178_p3(7)
    );
x_1_fu_202_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(6),
      O => select_ln25_fu_178_p3(6)
    );
x_1_fu_202_p2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(5),
      O => x_1_fu_202_p2_carry_i_5_n_0
    );
x_1_fu_202_p2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(4),
      O => select_ln25_fu_178_p3(4)
    );
x_1_fu_202_p2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(3),
      O => select_ln25_fu_178_p3(3)
    );
x_1_fu_202_p2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(2),
      O => select_ln25_fu_178_p3(2)
    );
x_1_fu_202_p2_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      I1 => p_0_in(1),
      O => select_ln25_fu_178_p3(1)
    );
\x_fu_74[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \icmp_ln32_fu_167_p2_carry__0_n_0\,
      O => x_1_fu_202_p2(0)
    );
\x_fu_74[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55450000"
    )
        port map (
      I0 => icmp_ln31_fu_155_p2,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter2,
      I3 => \icmp_ln31_reg_337_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1,
      O => indvar_flatten_fu_82
    );
\x_fu_74_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(0),
      Q => p_0_in(0),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(10),
      Q => p_0_in(10),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(11),
      Q => p_0_in(11),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(12),
      Q => p_0_in(12),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(13),
      Q => p_0_in(13),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(14),
      Q => p_0_in(14),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(15),
      Q => p_0_in(15),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(16),
      Q => p_0_in(16),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(17),
      Q => p_0_in(17),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(18),
      Q => p_0_in(18),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(19),
      Q => p_0_in(19),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(1),
      Q => p_0_in(1),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(20),
      Q => p_0_in(20),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(21),
      Q => p_0_in(21),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(22),
      Q => p_0_in(22),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(23),
      Q => p_0_in(23),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(24),
      Q => p_0_in(24),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(25),
      Q => p_0_in(25),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(26),
      Q => p_0_in(26),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(27),
      Q => p_0_in(27),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(28),
      Q => p_0_in(28),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(29),
      Q => p_0_in(29),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(2),
      Q => p_0_in(2),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(30),
      Q => p_0_in(30),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(3),
      Q => p_0_in(3),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(4),
      Q => p_0_in(4),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(5),
      Q => p_0_in(5),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(6),
      Q => p_0_in(6),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(7),
      Q => p_0_in(7),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(8),
      Q => p_0_in(8),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\x_fu_74_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_82,
      D => x_1_fu_202_p2(9),
      Q => p_0_in(9),
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_TVALID : in STD_LOGIC;
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is 6;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is 4;
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is "4'b1000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel is
  signal \<const0>\ : STD_LOGIC;
  signal A : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \ap_CS_fsm_reg_n_0_[1]\ : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal ctrl_s_axi_U_n_10 : STD_LOGIC;
  signal ctrl_s_axi_U_n_11 : STD_LOGIC;
  signal ctrl_s_axi_U_n_12 : STD_LOGIC;
  signal ctrl_s_axi_U_n_13 : STD_LOGIC;
  signal ctrl_s_axi_U_n_14 : STD_LOGIC;
  signal ctrl_s_axi_U_n_15 : STD_LOGIC;
  signal ctrl_s_axi_U_n_16 : STD_LOGIC;
  signal ctrl_s_axi_U_n_17 : STD_LOGIC;
  signal ctrl_s_axi_U_n_18 : STD_LOGIC;
  signal ctrl_s_axi_U_n_19 : STD_LOGIC;
  signal ctrl_s_axi_U_n_20 : STD_LOGIC;
  signal ctrl_s_axi_U_n_21 : STD_LOGIC;
  signal ctrl_s_axi_U_n_22 : STD_LOGIC;
  signal ctrl_s_axi_U_n_23 : STD_LOGIC;
  signal ctrl_s_axi_U_n_24 : STD_LOGIC;
  signal ctrl_s_axi_U_n_25 : STD_LOGIC;
  signal ctrl_s_axi_U_n_26 : STD_LOGIC;
  signal ctrl_s_axi_U_n_27 : STD_LOGIC;
  signal ctrl_s_axi_U_n_28 : STD_LOGIC;
  signal ctrl_s_axi_U_n_29 : STD_LOGIC;
  signal ctrl_s_axi_U_n_30 : STD_LOGIC;
  signal ctrl_s_axi_U_n_31 : STD_LOGIC;
  signal ctrl_s_axi_U_n_32 : STD_LOGIC;
  signal ctrl_s_axi_U_n_33 : STD_LOGIC;
  signal ctrl_s_axi_U_n_34 : STD_LOGIC;
  signal ctrl_s_axi_U_n_35 : STD_LOGIC;
  signal ctrl_s_axi_U_n_36 : STD_LOGIC;
  signal ctrl_s_axi_U_n_37 : STD_LOGIC;
  signal ctrl_s_axi_U_n_38 : STD_LOGIC;
  signal ctrl_s_axi_U_n_39 : STD_LOGIC;
  signal ctrl_s_axi_U_n_8 : STD_LOGIC;
  signal ctrl_s_axi_U_n_9 : STD_LOGIC;
  signal data_p1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal empty_fu_78 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75 : STD_LOGIC;
  signal grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79 : STD_LOGIC;
  signal indvar_flatten_fu_82_reg : STD_LOGIC_VECTOR ( 61 downto 60 );
  signal mul_31ns_31ns_62_1_1_U13_n_0 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_1 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_10 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_100 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_101 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_102 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_103 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_104 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_105 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_106 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_107 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_108 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_109 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_11 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_110 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_111 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_112 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_113 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_114 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_115 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_116 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_117 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_118 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_119 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_12 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_120 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_121 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_122 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_123 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_124 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_125 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_126 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_127 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_128 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_129 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_13 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_130 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_131 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_132 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_133 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_134 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_135 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_136 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_137 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_138 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_139 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_14 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_140 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_141 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_142 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_143 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_144 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_145 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_146 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_147 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_148 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_149 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_15 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_150 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_151 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_152 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_153 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_154 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_155 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_156 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_157 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_158 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_159 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_16 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_17 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_18 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_19 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_2 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_20 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_204 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_21 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_22 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_23 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_24 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_25 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_26 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_27 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_28 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_29 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_3 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_30 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_31 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_32 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_33 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_34 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_35 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_36 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_37 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_38 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_39 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_4 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_40 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_41 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_42 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_43 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_44 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_45 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_46 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_47 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_48 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_49 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_5 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_50 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_51 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_52 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_53 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_54 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_55 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_56 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_57 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_58 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_59 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_6 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_60 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_61 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_62 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_63 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_64 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_65 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_66 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_67 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_68 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_69 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_7 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_70 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_71 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_72 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_73 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_74 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_75 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_76 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_77 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_78 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_79 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_8 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_80 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_81 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_82 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_83 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_84 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_85 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_86 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_87 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_88 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_89 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_9 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_90 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_91 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_92 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_93 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_94 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_95 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_96 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_97 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_98 : STD_LOGIC;
  signal mul_31ns_31ns_62_1_1_U13_n_99 : STD_LOGIC;
  signal mul_ln10_fu_110_p0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal mul_ln10_fu_110_p1 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \mul_ln10_reg_175_reg[0]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[10]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[11]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[12]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[13]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[14]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[15]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[16]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[1]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[2]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[3]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[4]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[5]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[6]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[7]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[8]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg[9]__0_n_0\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_100\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_101\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_102\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_103\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_104\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_105\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_58\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_59\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_60\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_61\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_62\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_63\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_64\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_65\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_66\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_67\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_68\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_69\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_70\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_71\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_72\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_73\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_74\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_75\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_76\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_77\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_78\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_79\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_80\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_81\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_82\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_83\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_84\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_85\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_86\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_87\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_88\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_89\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_90\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_91\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_92\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_93\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_94\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_95\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_96\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_97\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_98\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__0_n_99\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg__1\ : STD_LOGIC_VECTOR ( 59 downto 16 );
  signal \mul_ln10_reg_175_reg_n_0_[0]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[10]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[11]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[12]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[13]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[14]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[15]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[16]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[1]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[2]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[3]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[4]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[5]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[6]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[7]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[8]\ : STD_LOGIC;
  signal \mul_ln10_reg_175_reg_n_0_[9]\ : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_100 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_101 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_102 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_103 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_104 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_105 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_58 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_59 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_60 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_61 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_62 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_63 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_64 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_65 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_66 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_67 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_68 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_69 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_70 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_71 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_72 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_73 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_74 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_75 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_76 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_77 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_78 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_79 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_80 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_81 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_82 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_83 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_84 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_85 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_86 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_87 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_88 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_89 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_90 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_91 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_92 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_93 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_94 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_95 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_96 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_97 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_98 : STD_LOGIC;
  signal mul_ln10_reg_175_reg_n_99 : STD_LOGIC;
  signal regslice_both_s_axis_video_V_data_V_U_n_4 : STD_LOGIC;
  signal s_axis_video_TVALID_int_regslice : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sum_diff_sq_fu_70_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal width_read_reg_164 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mul_ln10_reg_175_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln10_reg_175_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln10_reg_175_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln10_reg_175_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln10_reg_175_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_mul_ln10_reg_175_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_mul_ln10_reg_175_reg__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_mul_ln10_reg_175_reg__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_mul_ln10_reg_175_reg__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_mul_ln10_reg_175_reg__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mul_ln10_reg_175_reg__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_mul_ln10_reg_175_reg__0_XOROUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of mul_ln10_reg_175_reg : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mul_ln10_reg_175_reg : label is "{SYNTH-10 {cell *THIS*} {string 15x15 4}}";
  attribute KEEP_HIERARCHY of \mul_ln10_reg_175_reg__0\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS of \mul_ln10_reg_175_reg__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
begin
  s_axi_ctrl_BRESP(1) <= \<const0>\;
  s_axi_ctrl_BRESP(0) <= \<const0>\;
  s_axi_ctrl_RRESP(1) <= \<const0>\;
  s_axi_ctrl_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \ap_CS_fsm_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
ctrl_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_ctrl_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_ctrl_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_ctrl_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_ctrl_WREADY,
      Q(3) => ap_CS_fsm_state4,
      Q(2) => ap_CS_fsm_state3,
      Q(1) => \ap_CS_fsm_reg_n_0_[1]\,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \int_brenner_score_reg[63]_0\(63 downto 0) => sum_diff_sq_fu_70_reg(63 downto 0),
      \int_width_reg[31]_0\(31) => ctrl_s_axi_U_n_8,
      \int_width_reg[31]_0\(30) => ctrl_s_axi_U_n_9,
      \int_width_reg[31]_0\(29) => ctrl_s_axi_U_n_10,
      \int_width_reg[31]_0\(28) => ctrl_s_axi_U_n_11,
      \int_width_reg[31]_0\(27) => ctrl_s_axi_U_n_12,
      \int_width_reg[31]_0\(26) => ctrl_s_axi_U_n_13,
      \int_width_reg[31]_0\(25) => ctrl_s_axi_U_n_14,
      \int_width_reg[31]_0\(24) => ctrl_s_axi_U_n_15,
      \int_width_reg[31]_0\(23) => ctrl_s_axi_U_n_16,
      \int_width_reg[31]_0\(22) => ctrl_s_axi_U_n_17,
      \int_width_reg[31]_0\(21) => ctrl_s_axi_U_n_18,
      \int_width_reg[31]_0\(20) => ctrl_s_axi_U_n_19,
      \int_width_reg[31]_0\(19) => ctrl_s_axi_U_n_20,
      \int_width_reg[31]_0\(18) => ctrl_s_axi_U_n_21,
      \int_width_reg[31]_0\(17) => ctrl_s_axi_U_n_22,
      \int_width_reg[31]_0\(16) => ctrl_s_axi_U_n_23,
      \int_width_reg[31]_0\(15) => ctrl_s_axi_U_n_24,
      \int_width_reg[31]_0\(14) => ctrl_s_axi_U_n_25,
      \int_width_reg[31]_0\(13) => ctrl_s_axi_U_n_26,
      \int_width_reg[31]_0\(12) => ctrl_s_axi_U_n_27,
      \int_width_reg[31]_0\(11) => ctrl_s_axi_U_n_28,
      \int_width_reg[31]_0\(10) => ctrl_s_axi_U_n_29,
      \int_width_reg[31]_0\(9) => ctrl_s_axi_U_n_30,
      \int_width_reg[31]_0\(8) => ctrl_s_axi_U_n_31,
      \int_width_reg[31]_0\(7) => ctrl_s_axi_U_n_32,
      \int_width_reg[31]_0\(6) => ctrl_s_axi_U_n_33,
      \int_width_reg[31]_0\(5) => ctrl_s_axi_U_n_34,
      \int_width_reg[31]_0\(4) => ctrl_s_axi_U_n_35,
      \int_width_reg[31]_0\(3) => ctrl_s_axi_U_n_36,
      \int_width_reg[31]_0\(2) => ctrl_s_axi_U_n_37,
      \int_width_reg[31]_0\(1) => ctrl_s_axi_U_n_38,
      \int_width_reg[31]_0\(0) => ctrl_s_axi_U_n_39,
      interrupt => interrupt,
      mul_ln10_fu_110_p0(30 downto 0) => mul_ln10_fu_110_p0(30 downto 0),
      mul_ln10_fu_110_p1(30 downto 0) => mul_ln10_fu_110_p1(30 downto 0),
      s_axi_ctrl_ARADDR(5 downto 0) => s_axi_ctrl_ARADDR(5 downto 0),
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_AWADDR(3 downto 0) => s_axi_ctrl_AWADDR(5 downto 2),
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_RDATA(31 downto 0) => s_axi_ctrl_RDATA(31 downto 0),
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_WDATA(31 downto 0) => s_axi_ctrl_WDATA(31 downto 0),
      s_axi_ctrl_WSTRB(3 downto 0) => s_axi_ctrl_WSTRB(3 downto 0),
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID
    );
grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_brenner_accel_Pipeline_row_loop_col_loop
     port map (
      D(0) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66,
      DSP_ALU_INST(1) => A(2),
      DSP_ALU_INST(0) => regslice_both_s_axis_video_V_data_V_U_n_4,
      P(5) => mul_ln10_reg_175_reg_n_78,
      P(4) => mul_ln10_reg_175_reg_n_79,
      P(3) => mul_ln10_reg_175_reg_n_80,
      P(2) => mul_ln10_reg_175_reg_n_81,
      P(1) => mul_ln10_reg_175_reg_n_82,
      P(0) => mul_ln10_reg_175_reg_n_83,
      Q(1) => state(1),
      Q(0) => s_axis_video_TVALID_int_regslice,
      S(1 downto 0) => indvar_flatten_fu_82_reg(61 downto 60),
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[0]\(5) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70,
      \ap_CS_fsm_reg[0]\(4) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71,
      \ap_CS_fsm_reg[0]\(3) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72,
      \ap_CS_fsm_reg[0]\(2) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73,
      \ap_CS_fsm_reg[0]\(1) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74,
      \ap_CS_fsm_reg[0]\(0) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75,
      \ap_CS_fsm_reg[2]\ => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67,
      \ap_CS_fsm_reg[2]_0\(1 downto 0) => ap_NS_fsm(3 downto 2),
      \ap_CS_fsm_reg[3]\(1) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[3]\(0) => \ap_CS_fsm_reg_n_0_[1]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1_reg_0 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79,
      ap_rst_n => ap_rst_n,
      \empty_15_fu_86_reg[7]_0\(7 downto 0) => data_p1(7 downto 0),
      \empty_fu_78_reg[2]_0\(2 downto 0) => empty_fu_78(2 downto 0),
      grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg(0) => ap_NS_fsm(1),
      icmp_ln31_fu_155_p2_carry_0(15) => \mul_ln10_reg_175_reg[15]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(14) => \mul_ln10_reg_175_reg[14]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(13) => \mul_ln10_reg_175_reg[13]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(12) => \mul_ln10_reg_175_reg[12]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(11) => \mul_ln10_reg_175_reg[11]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(10) => \mul_ln10_reg_175_reg[10]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(9) => \mul_ln10_reg_175_reg[9]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(8) => \mul_ln10_reg_175_reg[8]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(7) => \mul_ln10_reg_175_reg[7]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(6) => \mul_ln10_reg_175_reg[6]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(5) => \mul_ln10_reg_175_reg[5]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(4) => \mul_ln10_reg_175_reg[4]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(3) => \mul_ln10_reg_175_reg[3]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(2) => \mul_ln10_reg_175_reg[2]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(1) => \mul_ln10_reg_175_reg[1]__0_n_0\,
      icmp_ln31_fu_155_p2_carry_0(0) => \mul_ln10_reg_175_reg[0]__0_n_0\,
      \icmp_ln31_reg_337_reg[0]_0\(0) => mul_31ns_31ns_62_1_1_U13_n_204,
      \icmp_ln32_fu_167_p2_carry__0_0\(31 downto 0) => width_read_reg_164(31 downto 0),
      \mul_ln10_reg_175_reg__1\(43 downto 0) => \mul_ln10_reg_175_reg__1\(59 downto 16),
      s_axis_video_TVALID => s_axis_video_TVALID,
      \sum_diff_sq_fu_70_reg[63]_0\(63 downto 0) => sum_diff_sq_fu_70_reg(63 downto 0),
      \tmp_product_carry__4\(5) => \mul_ln10_reg_175_reg__0_n_61\,
      \tmp_product_carry__4\(4) => \mul_ln10_reg_175_reg__0_n_62\,
      \tmp_product_carry__4\(3) => \mul_ln10_reg_175_reg__0_n_63\,
      \tmp_product_carry__4\(2) => \mul_ln10_reg_175_reg__0_n_64\,
      \tmp_product_carry__4\(1) => \mul_ln10_reg_175_reg__0_n_65\,
      \tmp_product_carry__4\(0) => \mul_ln10_reg_175_reg__0_n_66\
    );
grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_79,
      Q => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_ap_start_reg,
      R => ap_rst_n_inv
    );
mul_31ns_31ns_62_1_1_U13: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_mul_31ns_31ns_62_1_1
     port map (
      ACOUT(29) => mul_31ns_31ns_62_1_1_U13_n_65,
      ACOUT(28) => mul_31ns_31ns_62_1_1_U13_n_66,
      ACOUT(27) => mul_31ns_31ns_62_1_1_U13_n_67,
      ACOUT(26) => mul_31ns_31ns_62_1_1_U13_n_68,
      ACOUT(25) => mul_31ns_31ns_62_1_1_U13_n_69,
      ACOUT(24) => mul_31ns_31ns_62_1_1_U13_n_70,
      ACOUT(23) => mul_31ns_31ns_62_1_1_U13_n_71,
      ACOUT(22) => mul_31ns_31ns_62_1_1_U13_n_72,
      ACOUT(21) => mul_31ns_31ns_62_1_1_U13_n_73,
      ACOUT(20) => mul_31ns_31ns_62_1_1_U13_n_74,
      ACOUT(19) => mul_31ns_31ns_62_1_1_U13_n_75,
      ACOUT(18) => mul_31ns_31ns_62_1_1_U13_n_76,
      ACOUT(17) => mul_31ns_31ns_62_1_1_U13_n_77,
      ACOUT(16) => mul_31ns_31ns_62_1_1_U13_n_78,
      ACOUT(15) => mul_31ns_31ns_62_1_1_U13_n_79,
      ACOUT(14) => mul_31ns_31ns_62_1_1_U13_n_80,
      ACOUT(13) => mul_31ns_31ns_62_1_1_U13_n_81,
      ACOUT(12) => mul_31ns_31ns_62_1_1_U13_n_82,
      ACOUT(11) => mul_31ns_31ns_62_1_1_U13_n_83,
      ACOUT(10) => mul_31ns_31ns_62_1_1_U13_n_84,
      ACOUT(9) => mul_31ns_31ns_62_1_1_U13_n_85,
      ACOUT(8) => mul_31ns_31ns_62_1_1_U13_n_86,
      ACOUT(7) => mul_31ns_31ns_62_1_1_U13_n_87,
      ACOUT(6) => mul_31ns_31ns_62_1_1_U13_n_88,
      ACOUT(5) => mul_31ns_31ns_62_1_1_U13_n_89,
      ACOUT(4) => mul_31ns_31ns_62_1_1_U13_n_90,
      ACOUT(3) => mul_31ns_31ns_62_1_1_U13_n_91,
      ACOUT(2) => mul_31ns_31ns_62_1_1_U13_n_92,
      ACOUT(1) => mul_31ns_31ns_62_1_1_U13_n_93,
      ACOUT(0) => mul_31ns_31ns_62_1_1_U13_n_94,
      D(16) => mul_31ns_31ns_62_1_1_U13_n_0,
      D(15) => mul_31ns_31ns_62_1_1_U13_n_1,
      D(14) => mul_31ns_31ns_62_1_1_U13_n_2,
      D(13) => mul_31ns_31ns_62_1_1_U13_n_3,
      D(12) => mul_31ns_31ns_62_1_1_U13_n_4,
      D(11) => mul_31ns_31ns_62_1_1_U13_n_5,
      D(10) => mul_31ns_31ns_62_1_1_U13_n_6,
      D(9) => mul_31ns_31ns_62_1_1_U13_n_7,
      D(8) => mul_31ns_31ns_62_1_1_U13_n_8,
      D(7) => mul_31ns_31ns_62_1_1_U13_n_9,
      D(6) => mul_31ns_31ns_62_1_1_U13_n_10,
      D(5) => mul_31ns_31ns_62_1_1_U13_n_11,
      D(4) => mul_31ns_31ns_62_1_1_U13_n_12,
      D(3) => mul_31ns_31ns_62_1_1_U13_n_13,
      D(2) => mul_31ns_31ns_62_1_1_U13_n_14,
      D(1) => mul_31ns_31ns_62_1_1_U13_n_15,
      D(0) => mul_31ns_31ns_62_1_1_U13_n_16,
      DSP_ALU_INST(16) => mul_31ns_31ns_62_1_1_U13_n_95,
      DSP_ALU_INST(15) => mul_31ns_31ns_62_1_1_U13_n_96,
      DSP_ALU_INST(14) => mul_31ns_31ns_62_1_1_U13_n_97,
      DSP_ALU_INST(13) => mul_31ns_31ns_62_1_1_U13_n_98,
      DSP_ALU_INST(12) => mul_31ns_31ns_62_1_1_U13_n_99,
      DSP_ALU_INST(11) => mul_31ns_31ns_62_1_1_U13_n_100,
      DSP_ALU_INST(10) => mul_31ns_31ns_62_1_1_U13_n_101,
      DSP_ALU_INST(9) => mul_31ns_31ns_62_1_1_U13_n_102,
      DSP_ALU_INST(8) => mul_31ns_31ns_62_1_1_U13_n_103,
      DSP_ALU_INST(7) => mul_31ns_31ns_62_1_1_U13_n_104,
      DSP_ALU_INST(6) => mul_31ns_31ns_62_1_1_U13_n_105,
      DSP_ALU_INST(5) => mul_31ns_31ns_62_1_1_U13_n_106,
      DSP_ALU_INST(4) => mul_31ns_31ns_62_1_1_U13_n_107,
      DSP_ALU_INST(3) => mul_31ns_31ns_62_1_1_U13_n_108,
      DSP_ALU_INST(2) => mul_31ns_31ns_62_1_1_U13_n_109,
      DSP_ALU_INST(1) => mul_31ns_31ns_62_1_1_U13_n_110,
      DSP_ALU_INST(0) => mul_31ns_31ns_62_1_1_U13_n_111,
      DSP_ALU_INST_0(47) => mul_31ns_31ns_62_1_1_U13_n_112,
      DSP_ALU_INST_0(46) => mul_31ns_31ns_62_1_1_U13_n_113,
      DSP_ALU_INST_0(45) => mul_31ns_31ns_62_1_1_U13_n_114,
      DSP_ALU_INST_0(44) => mul_31ns_31ns_62_1_1_U13_n_115,
      DSP_ALU_INST_0(43) => mul_31ns_31ns_62_1_1_U13_n_116,
      DSP_ALU_INST_0(42) => mul_31ns_31ns_62_1_1_U13_n_117,
      DSP_ALU_INST_0(41) => mul_31ns_31ns_62_1_1_U13_n_118,
      DSP_ALU_INST_0(40) => mul_31ns_31ns_62_1_1_U13_n_119,
      DSP_ALU_INST_0(39) => mul_31ns_31ns_62_1_1_U13_n_120,
      DSP_ALU_INST_0(38) => mul_31ns_31ns_62_1_1_U13_n_121,
      DSP_ALU_INST_0(37) => mul_31ns_31ns_62_1_1_U13_n_122,
      DSP_ALU_INST_0(36) => mul_31ns_31ns_62_1_1_U13_n_123,
      DSP_ALU_INST_0(35) => mul_31ns_31ns_62_1_1_U13_n_124,
      DSP_ALU_INST_0(34) => mul_31ns_31ns_62_1_1_U13_n_125,
      DSP_ALU_INST_0(33) => mul_31ns_31ns_62_1_1_U13_n_126,
      DSP_ALU_INST_0(32) => mul_31ns_31ns_62_1_1_U13_n_127,
      DSP_ALU_INST_0(31) => mul_31ns_31ns_62_1_1_U13_n_128,
      DSP_ALU_INST_0(30) => mul_31ns_31ns_62_1_1_U13_n_129,
      DSP_ALU_INST_0(29) => mul_31ns_31ns_62_1_1_U13_n_130,
      DSP_ALU_INST_0(28) => mul_31ns_31ns_62_1_1_U13_n_131,
      DSP_ALU_INST_0(27) => mul_31ns_31ns_62_1_1_U13_n_132,
      DSP_ALU_INST_0(26) => mul_31ns_31ns_62_1_1_U13_n_133,
      DSP_ALU_INST_0(25) => mul_31ns_31ns_62_1_1_U13_n_134,
      DSP_ALU_INST_0(24) => mul_31ns_31ns_62_1_1_U13_n_135,
      DSP_ALU_INST_0(23) => mul_31ns_31ns_62_1_1_U13_n_136,
      DSP_ALU_INST_0(22) => mul_31ns_31ns_62_1_1_U13_n_137,
      DSP_ALU_INST_0(21) => mul_31ns_31ns_62_1_1_U13_n_138,
      DSP_ALU_INST_0(20) => mul_31ns_31ns_62_1_1_U13_n_139,
      DSP_ALU_INST_0(19) => mul_31ns_31ns_62_1_1_U13_n_140,
      DSP_ALU_INST_0(18) => mul_31ns_31ns_62_1_1_U13_n_141,
      DSP_ALU_INST_0(17) => mul_31ns_31ns_62_1_1_U13_n_142,
      DSP_ALU_INST_0(16) => mul_31ns_31ns_62_1_1_U13_n_143,
      DSP_ALU_INST_0(15) => mul_31ns_31ns_62_1_1_U13_n_144,
      DSP_ALU_INST_0(14) => mul_31ns_31ns_62_1_1_U13_n_145,
      DSP_ALU_INST_0(13) => mul_31ns_31ns_62_1_1_U13_n_146,
      DSP_ALU_INST_0(12) => mul_31ns_31ns_62_1_1_U13_n_147,
      DSP_ALU_INST_0(11) => mul_31ns_31ns_62_1_1_U13_n_148,
      DSP_ALU_INST_0(10) => mul_31ns_31ns_62_1_1_U13_n_149,
      DSP_ALU_INST_0(9) => mul_31ns_31ns_62_1_1_U13_n_150,
      DSP_ALU_INST_0(8) => mul_31ns_31ns_62_1_1_U13_n_151,
      DSP_ALU_INST_0(7) => mul_31ns_31ns_62_1_1_U13_n_152,
      DSP_ALU_INST_0(6) => mul_31ns_31ns_62_1_1_U13_n_153,
      DSP_ALU_INST_0(5) => mul_31ns_31ns_62_1_1_U13_n_154,
      DSP_ALU_INST_0(4) => mul_31ns_31ns_62_1_1_U13_n_155,
      DSP_ALU_INST_0(3) => mul_31ns_31ns_62_1_1_U13_n_156,
      DSP_ALU_INST_0(2) => mul_31ns_31ns_62_1_1_U13_n_157,
      DSP_ALU_INST_0(1) => mul_31ns_31ns_62_1_1_U13_n_158,
      DSP_ALU_INST_0(0) => mul_31ns_31ns_62_1_1_U13_n_159,
      P(43) => \mul_ln10_reg_175_reg__0_n_62\,
      P(42) => \mul_ln10_reg_175_reg__0_n_63\,
      P(41) => \mul_ln10_reg_175_reg__0_n_64\,
      P(40) => \mul_ln10_reg_175_reg__0_n_65\,
      P(39) => \mul_ln10_reg_175_reg__0_n_66\,
      P(38) => \mul_ln10_reg_175_reg__0_n_67\,
      P(37) => \mul_ln10_reg_175_reg__0_n_68\,
      P(36) => \mul_ln10_reg_175_reg__0_n_69\,
      P(35) => \mul_ln10_reg_175_reg__0_n_70\,
      P(34) => \mul_ln10_reg_175_reg__0_n_71\,
      P(33) => \mul_ln10_reg_175_reg__0_n_72\,
      P(32) => \mul_ln10_reg_175_reg__0_n_73\,
      P(31) => \mul_ln10_reg_175_reg__0_n_74\,
      P(30) => \mul_ln10_reg_175_reg__0_n_75\,
      P(29) => \mul_ln10_reg_175_reg__0_n_76\,
      P(28) => \mul_ln10_reg_175_reg__0_n_77\,
      P(27) => \mul_ln10_reg_175_reg__0_n_78\,
      P(26) => \mul_ln10_reg_175_reg__0_n_79\,
      P(25) => \mul_ln10_reg_175_reg__0_n_80\,
      P(24) => \mul_ln10_reg_175_reg__0_n_81\,
      P(23) => \mul_ln10_reg_175_reg__0_n_82\,
      P(22) => \mul_ln10_reg_175_reg__0_n_83\,
      P(21) => \mul_ln10_reg_175_reg__0_n_84\,
      P(20) => \mul_ln10_reg_175_reg__0_n_85\,
      P(19) => \mul_ln10_reg_175_reg__0_n_86\,
      P(18) => \mul_ln10_reg_175_reg__0_n_87\,
      P(17) => \mul_ln10_reg_175_reg__0_n_88\,
      P(16) => \mul_ln10_reg_175_reg__0_n_89\,
      P(15) => \mul_ln10_reg_175_reg__0_n_90\,
      P(14) => \mul_ln10_reg_175_reg__0_n_91\,
      P(13) => \mul_ln10_reg_175_reg__0_n_92\,
      P(12) => \mul_ln10_reg_175_reg__0_n_93\,
      P(11) => \mul_ln10_reg_175_reg__0_n_94\,
      P(10) => \mul_ln10_reg_175_reg__0_n_95\,
      P(9) => \mul_ln10_reg_175_reg__0_n_96\,
      P(8) => \mul_ln10_reg_175_reg__0_n_97\,
      P(7) => \mul_ln10_reg_175_reg__0_n_98\,
      P(6) => \mul_ln10_reg_175_reg__0_n_99\,
      P(5) => \mul_ln10_reg_175_reg__0_n_100\,
      P(4) => \mul_ln10_reg_175_reg__0_n_101\,
      P(3) => \mul_ln10_reg_175_reg__0_n_102\,
      P(2) => \mul_ln10_reg_175_reg__0_n_103\,
      P(1) => \mul_ln10_reg_175_reg__0_n_104\,
      P(0) => \mul_ln10_reg_175_reg__0_n_105\,
      PCOUT(47) => mul_31ns_31ns_62_1_1_U13_n_17,
      PCOUT(46) => mul_31ns_31ns_62_1_1_U13_n_18,
      PCOUT(45) => mul_31ns_31ns_62_1_1_U13_n_19,
      PCOUT(44) => mul_31ns_31ns_62_1_1_U13_n_20,
      PCOUT(43) => mul_31ns_31ns_62_1_1_U13_n_21,
      PCOUT(42) => mul_31ns_31ns_62_1_1_U13_n_22,
      PCOUT(41) => mul_31ns_31ns_62_1_1_U13_n_23,
      PCOUT(40) => mul_31ns_31ns_62_1_1_U13_n_24,
      PCOUT(39) => mul_31ns_31ns_62_1_1_U13_n_25,
      PCOUT(38) => mul_31ns_31ns_62_1_1_U13_n_26,
      PCOUT(37) => mul_31ns_31ns_62_1_1_U13_n_27,
      PCOUT(36) => mul_31ns_31ns_62_1_1_U13_n_28,
      PCOUT(35) => mul_31ns_31ns_62_1_1_U13_n_29,
      PCOUT(34) => mul_31ns_31ns_62_1_1_U13_n_30,
      PCOUT(33) => mul_31ns_31ns_62_1_1_U13_n_31,
      PCOUT(32) => mul_31ns_31ns_62_1_1_U13_n_32,
      PCOUT(31) => mul_31ns_31ns_62_1_1_U13_n_33,
      PCOUT(30) => mul_31ns_31ns_62_1_1_U13_n_34,
      PCOUT(29) => mul_31ns_31ns_62_1_1_U13_n_35,
      PCOUT(28) => mul_31ns_31ns_62_1_1_U13_n_36,
      PCOUT(27) => mul_31ns_31ns_62_1_1_U13_n_37,
      PCOUT(26) => mul_31ns_31ns_62_1_1_U13_n_38,
      PCOUT(25) => mul_31ns_31ns_62_1_1_U13_n_39,
      PCOUT(24) => mul_31ns_31ns_62_1_1_U13_n_40,
      PCOUT(23) => mul_31ns_31ns_62_1_1_U13_n_41,
      PCOUT(22) => mul_31ns_31ns_62_1_1_U13_n_42,
      PCOUT(21) => mul_31ns_31ns_62_1_1_U13_n_43,
      PCOUT(20) => mul_31ns_31ns_62_1_1_U13_n_44,
      PCOUT(19) => mul_31ns_31ns_62_1_1_U13_n_45,
      PCOUT(18) => mul_31ns_31ns_62_1_1_U13_n_46,
      PCOUT(17) => mul_31ns_31ns_62_1_1_U13_n_47,
      PCOUT(16) => mul_31ns_31ns_62_1_1_U13_n_48,
      PCOUT(15) => mul_31ns_31ns_62_1_1_U13_n_49,
      PCOUT(14) => mul_31ns_31ns_62_1_1_U13_n_50,
      PCOUT(13) => mul_31ns_31ns_62_1_1_U13_n_51,
      PCOUT(12) => mul_31ns_31ns_62_1_1_U13_n_52,
      PCOUT(11) => mul_31ns_31ns_62_1_1_U13_n_53,
      PCOUT(10) => mul_31ns_31ns_62_1_1_U13_n_54,
      PCOUT(9) => mul_31ns_31ns_62_1_1_U13_n_55,
      PCOUT(8) => mul_31ns_31ns_62_1_1_U13_n_56,
      PCOUT(7) => mul_31ns_31ns_62_1_1_U13_n_57,
      PCOUT(6) => mul_31ns_31ns_62_1_1_U13_n_58,
      PCOUT(5) => mul_31ns_31ns_62_1_1_U13_n_59,
      PCOUT(4) => mul_31ns_31ns_62_1_1_U13_n_60,
      PCOUT(3) => mul_31ns_31ns_62_1_1_U13_n_61,
      PCOUT(2) => mul_31ns_31ns_62_1_1_U13_n_62,
      PCOUT(1) => mul_31ns_31ns_62_1_1_U13_n_63,
      PCOUT(0) => mul_31ns_31ns_62_1_1_U13_n_64,
      Q(0) => \mul_ln10_reg_175_reg[16]__0_n_0\,
      S(1 downto 0) => indvar_flatten_fu_82_reg(61 downto 60),
      \ap_CS_fsm_reg[0]\(43 downto 0) => \mul_ln10_reg_175_reg__1\(59 downto 16),
      \icmp_ln31_fu_155_p2_carry__1_i_3\(5) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_70,
      \icmp_ln31_fu_155_p2_carry__1_i_3\(4) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_71,
      \icmp_ln31_fu_155_p2_carry__1_i_3\(3) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_72,
      \icmp_ln31_fu_155_p2_carry__1_i_3\(2) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_73,
      \icmp_ln31_fu_155_p2_carry__1_i_3\(1) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_74,
      \icmp_ln31_fu_155_p2_carry__1_i_3\(0) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_75,
      \indvar_flatten_fu_82_reg[61]\(0) => mul_31ns_31ns_62_1_1_U13_n_204,
      mul_ln10_fu_110_p0(30 downto 0) => mul_ln10_fu_110_p0(30 downto 0),
      mul_ln10_fu_110_p1(16 downto 0) => mul_ln10_fu_110_p1(16 downto 0),
      \tmp_product_carry__1_0\(16) => \mul_ln10_reg_175_reg_n_0_[16]\,
      \tmp_product_carry__1_0\(15) => \mul_ln10_reg_175_reg_n_0_[15]\,
      \tmp_product_carry__1_0\(14) => \mul_ln10_reg_175_reg_n_0_[14]\,
      \tmp_product_carry__1_0\(13) => \mul_ln10_reg_175_reg_n_0_[13]\,
      \tmp_product_carry__1_0\(12) => \mul_ln10_reg_175_reg_n_0_[12]\,
      \tmp_product_carry__1_0\(11) => \mul_ln10_reg_175_reg_n_0_[11]\,
      \tmp_product_carry__1_0\(10) => \mul_ln10_reg_175_reg_n_0_[10]\,
      \tmp_product_carry__1_0\(9) => \mul_ln10_reg_175_reg_n_0_[9]\,
      \tmp_product_carry__1_0\(8) => \mul_ln10_reg_175_reg_n_0_[8]\,
      \tmp_product_carry__1_0\(7) => \mul_ln10_reg_175_reg_n_0_[7]\,
      \tmp_product_carry__1_0\(6) => \mul_ln10_reg_175_reg_n_0_[6]\,
      \tmp_product_carry__1_0\(5) => \mul_ln10_reg_175_reg_n_0_[5]\,
      \tmp_product_carry__1_0\(4) => \mul_ln10_reg_175_reg_n_0_[4]\,
      \tmp_product_carry__1_0\(3) => \mul_ln10_reg_175_reg_n_0_[3]\,
      \tmp_product_carry__1_0\(2) => \mul_ln10_reg_175_reg_n_0_[2]\,
      \tmp_product_carry__1_0\(1) => \mul_ln10_reg_175_reg_n_0_[1]\,
      \tmp_product_carry__1_0\(0) => \mul_ln10_reg_175_reg_n_0_[0]\,
      \tmp_product_carry__3_0\(21) => mul_ln10_reg_175_reg_n_84,
      \tmp_product_carry__3_0\(20) => mul_ln10_reg_175_reg_n_85,
      \tmp_product_carry__3_0\(19) => mul_ln10_reg_175_reg_n_86,
      \tmp_product_carry__3_0\(18) => mul_ln10_reg_175_reg_n_87,
      \tmp_product_carry__3_0\(17) => mul_ln10_reg_175_reg_n_88,
      \tmp_product_carry__3_0\(16) => mul_ln10_reg_175_reg_n_89,
      \tmp_product_carry__3_0\(15) => mul_ln10_reg_175_reg_n_90,
      \tmp_product_carry__3_0\(14) => mul_ln10_reg_175_reg_n_91,
      \tmp_product_carry__3_0\(13) => mul_ln10_reg_175_reg_n_92,
      \tmp_product_carry__3_0\(12) => mul_ln10_reg_175_reg_n_93,
      \tmp_product_carry__3_0\(11) => mul_ln10_reg_175_reg_n_94,
      \tmp_product_carry__3_0\(10) => mul_ln10_reg_175_reg_n_95,
      \tmp_product_carry__3_0\(9) => mul_ln10_reg_175_reg_n_96,
      \tmp_product_carry__3_0\(8) => mul_ln10_reg_175_reg_n_97,
      \tmp_product_carry__3_0\(7) => mul_ln10_reg_175_reg_n_98,
      \tmp_product_carry__3_0\(6) => mul_ln10_reg_175_reg_n_99,
      \tmp_product_carry__3_0\(5) => mul_ln10_reg_175_reg_n_100,
      \tmp_product_carry__3_0\(4) => mul_ln10_reg_175_reg_n_101,
      \tmp_product_carry__3_0\(3) => mul_ln10_reg_175_reg_n_102,
      \tmp_product_carry__3_0\(2) => mul_ln10_reg_175_reg_n_103,
      \tmp_product_carry__3_0\(1) => mul_ln10_reg_175_reg_n_104,
      \tmp_product_carry__3_0\(0) => mul_ln10_reg_175_reg_n_105
    );
mul_ln10_reg_175_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 14) => B"0000000000000000",
      A(13 downto 0) => mul_ln10_fu_110_p0(30 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln10_reg_175_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => mul_ln10_fu_110_p1(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln10_reg_175_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln10_reg_175_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln10_reg_175_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state1,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln10_reg_175_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => NLW_mul_ln10_reg_175_reg_OVERFLOW_UNCONNECTED,
      P(47) => mul_ln10_reg_175_reg_n_58,
      P(46) => mul_ln10_reg_175_reg_n_59,
      P(45) => mul_ln10_reg_175_reg_n_60,
      P(44) => mul_ln10_reg_175_reg_n_61,
      P(43) => mul_ln10_reg_175_reg_n_62,
      P(42) => mul_ln10_reg_175_reg_n_63,
      P(41) => mul_ln10_reg_175_reg_n_64,
      P(40) => mul_ln10_reg_175_reg_n_65,
      P(39) => mul_ln10_reg_175_reg_n_66,
      P(38) => mul_ln10_reg_175_reg_n_67,
      P(37) => mul_ln10_reg_175_reg_n_68,
      P(36) => mul_ln10_reg_175_reg_n_69,
      P(35) => mul_ln10_reg_175_reg_n_70,
      P(34) => mul_ln10_reg_175_reg_n_71,
      P(33) => mul_ln10_reg_175_reg_n_72,
      P(32) => mul_ln10_reg_175_reg_n_73,
      P(31) => mul_ln10_reg_175_reg_n_74,
      P(30) => mul_ln10_reg_175_reg_n_75,
      P(29) => mul_ln10_reg_175_reg_n_76,
      P(28) => mul_ln10_reg_175_reg_n_77,
      P(27) => mul_ln10_reg_175_reg_n_78,
      P(26) => mul_ln10_reg_175_reg_n_79,
      P(25) => mul_ln10_reg_175_reg_n_80,
      P(24) => mul_ln10_reg_175_reg_n_81,
      P(23) => mul_ln10_reg_175_reg_n_82,
      P(22) => mul_ln10_reg_175_reg_n_83,
      P(21) => mul_ln10_reg_175_reg_n_84,
      P(20) => mul_ln10_reg_175_reg_n_85,
      P(19) => mul_ln10_reg_175_reg_n_86,
      P(18) => mul_ln10_reg_175_reg_n_87,
      P(17) => mul_ln10_reg_175_reg_n_88,
      P(16) => mul_ln10_reg_175_reg_n_89,
      P(15) => mul_ln10_reg_175_reg_n_90,
      P(14) => mul_ln10_reg_175_reg_n_91,
      P(13) => mul_ln10_reg_175_reg_n_92,
      P(12) => mul_ln10_reg_175_reg_n_93,
      P(11) => mul_ln10_reg_175_reg_n_94,
      P(10) => mul_ln10_reg_175_reg_n_95,
      P(9) => mul_ln10_reg_175_reg_n_96,
      P(8) => mul_ln10_reg_175_reg_n_97,
      P(7) => mul_ln10_reg_175_reg_n_98,
      P(6) => mul_ln10_reg_175_reg_n_99,
      P(5) => mul_ln10_reg_175_reg_n_100,
      P(4) => mul_ln10_reg_175_reg_n_101,
      P(3) => mul_ln10_reg_175_reg_n_102,
      P(2) => mul_ln10_reg_175_reg_n_103,
      P(1) => mul_ln10_reg_175_reg_n_104,
      P(0) => mul_ln10_reg_175_reg_n_105,
      PATTERNBDETECT => NLW_mul_ln10_reg_175_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln10_reg_175_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => mul_31ns_31ns_62_1_1_U13_n_17,
      PCIN(46) => mul_31ns_31ns_62_1_1_U13_n_18,
      PCIN(45) => mul_31ns_31ns_62_1_1_U13_n_19,
      PCIN(44) => mul_31ns_31ns_62_1_1_U13_n_20,
      PCIN(43) => mul_31ns_31ns_62_1_1_U13_n_21,
      PCIN(42) => mul_31ns_31ns_62_1_1_U13_n_22,
      PCIN(41) => mul_31ns_31ns_62_1_1_U13_n_23,
      PCIN(40) => mul_31ns_31ns_62_1_1_U13_n_24,
      PCIN(39) => mul_31ns_31ns_62_1_1_U13_n_25,
      PCIN(38) => mul_31ns_31ns_62_1_1_U13_n_26,
      PCIN(37) => mul_31ns_31ns_62_1_1_U13_n_27,
      PCIN(36) => mul_31ns_31ns_62_1_1_U13_n_28,
      PCIN(35) => mul_31ns_31ns_62_1_1_U13_n_29,
      PCIN(34) => mul_31ns_31ns_62_1_1_U13_n_30,
      PCIN(33) => mul_31ns_31ns_62_1_1_U13_n_31,
      PCIN(32) => mul_31ns_31ns_62_1_1_U13_n_32,
      PCIN(31) => mul_31ns_31ns_62_1_1_U13_n_33,
      PCIN(30) => mul_31ns_31ns_62_1_1_U13_n_34,
      PCIN(29) => mul_31ns_31ns_62_1_1_U13_n_35,
      PCIN(28) => mul_31ns_31ns_62_1_1_U13_n_36,
      PCIN(27) => mul_31ns_31ns_62_1_1_U13_n_37,
      PCIN(26) => mul_31ns_31ns_62_1_1_U13_n_38,
      PCIN(25) => mul_31ns_31ns_62_1_1_U13_n_39,
      PCIN(24) => mul_31ns_31ns_62_1_1_U13_n_40,
      PCIN(23) => mul_31ns_31ns_62_1_1_U13_n_41,
      PCIN(22) => mul_31ns_31ns_62_1_1_U13_n_42,
      PCIN(21) => mul_31ns_31ns_62_1_1_U13_n_43,
      PCIN(20) => mul_31ns_31ns_62_1_1_U13_n_44,
      PCIN(19) => mul_31ns_31ns_62_1_1_U13_n_45,
      PCIN(18) => mul_31ns_31ns_62_1_1_U13_n_46,
      PCIN(17) => mul_31ns_31ns_62_1_1_U13_n_47,
      PCIN(16) => mul_31ns_31ns_62_1_1_U13_n_48,
      PCIN(15) => mul_31ns_31ns_62_1_1_U13_n_49,
      PCIN(14) => mul_31ns_31ns_62_1_1_U13_n_50,
      PCIN(13) => mul_31ns_31ns_62_1_1_U13_n_51,
      PCIN(12) => mul_31ns_31ns_62_1_1_U13_n_52,
      PCIN(11) => mul_31ns_31ns_62_1_1_U13_n_53,
      PCIN(10) => mul_31ns_31ns_62_1_1_U13_n_54,
      PCIN(9) => mul_31ns_31ns_62_1_1_U13_n_55,
      PCIN(8) => mul_31ns_31ns_62_1_1_U13_n_56,
      PCIN(7) => mul_31ns_31ns_62_1_1_U13_n_57,
      PCIN(6) => mul_31ns_31ns_62_1_1_U13_n_58,
      PCIN(5) => mul_31ns_31ns_62_1_1_U13_n_59,
      PCIN(4) => mul_31ns_31ns_62_1_1_U13_n_60,
      PCIN(3) => mul_31ns_31ns_62_1_1_U13_n_61,
      PCIN(2) => mul_31ns_31ns_62_1_1_U13_n_62,
      PCIN(1) => mul_31ns_31ns_62_1_1_U13_n_63,
      PCIN(0) => mul_31ns_31ns_62_1_1_U13_n_64,
      PCOUT(47 downto 0) => NLW_mul_ln10_reg_175_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln10_reg_175_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_mul_ln10_reg_175_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
\mul_ln10_reg_175_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_16,
      Q => \mul_ln10_reg_175_reg_n_0_[0]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_111,
      Q => \mul_ln10_reg_175_reg[0]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_6,
      Q => \mul_ln10_reg_175_reg_n_0_[10]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_101,
      Q => \mul_ln10_reg_175_reg[10]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_5,
      Q => \mul_ln10_reg_175_reg_n_0_[11]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_100,
      Q => \mul_ln10_reg_175_reg[11]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_4,
      Q => \mul_ln10_reg_175_reg_n_0_[12]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_99,
      Q => \mul_ln10_reg_175_reg[12]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_3,
      Q => \mul_ln10_reg_175_reg_n_0_[13]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_98,
      Q => \mul_ln10_reg_175_reg[13]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_2,
      Q => \mul_ln10_reg_175_reg_n_0_[14]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_97,
      Q => \mul_ln10_reg_175_reg[14]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_1,
      Q => \mul_ln10_reg_175_reg_n_0_[15]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_96,
      Q => \mul_ln10_reg_175_reg[15]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_0,
      Q => \mul_ln10_reg_175_reg_n_0_[16]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_95,
      Q => \mul_ln10_reg_175_reg[16]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_15,
      Q => \mul_ln10_reg_175_reg_n_0_[1]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_110,
      Q => \mul_ln10_reg_175_reg[1]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_14,
      Q => \mul_ln10_reg_175_reg_n_0_[2]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_109,
      Q => \mul_ln10_reg_175_reg[2]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_13,
      Q => \mul_ln10_reg_175_reg_n_0_[3]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_108,
      Q => \mul_ln10_reg_175_reg[3]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_12,
      Q => \mul_ln10_reg_175_reg_n_0_[4]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_107,
      Q => \mul_ln10_reg_175_reg[4]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_11,
      Q => \mul_ln10_reg_175_reg_n_0_[5]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_106,
      Q => \mul_ln10_reg_175_reg[5]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_10,
      Q => \mul_ln10_reg_175_reg_n_0_[6]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_105,
      Q => \mul_ln10_reg_175_reg[6]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_9,
      Q => \mul_ln10_reg_175_reg_n_0_[7]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_104,
      Q => \mul_ln10_reg_175_reg[7]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_8,
      Q => \mul_ln10_reg_175_reg_n_0_[8]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_103,
      Q => \mul_ln10_reg_175_reg[8]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_7,
      Q => \mul_ln10_reg_175_reg_n_0_[9]\,
      R => '0'
    );
\mul_ln10_reg_175_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => mul_31ns_31ns_62_1_1_U13_n_102,
      Q => \mul_ln10_reg_175_reg[9]__0_n_0\,
      R => '0'
    );
\mul_ln10_reg_175_reg__0\: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BMULTSEL => "B",
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => mul_31ns_31ns_62_1_1_U13_n_65,
      ACIN(28) => mul_31ns_31ns_62_1_1_U13_n_66,
      ACIN(27) => mul_31ns_31ns_62_1_1_U13_n_67,
      ACIN(26) => mul_31ns_31ns_62_1_1_U13_n_68,
      ACIN(25) => mul_31ns_31ns_62_1_1_U13_n_69,
      ACIN(24) => mul_31ns_31ns_62_1_1_U13_n_70,
      ACIN(23) => mul_31ns_31ns_62_1_1_U13_n_71,
      ACIN(22) => mul_31ns_31ns_62_1_1_U13_n_72,
      ACIN(21) => mul_31ns_31ns_62_1_1_U13_n_73,
      ACIN(20) => mul_31ns_31ns_62_1_1_U13_n_74,
      ACIN(19) => mul_31ns_31ns_62_1_1_U13_n_75,
      ACIN(18) => mul_31ns_31ns_62_1_1_U13_n_76,
      ACIN(17) => mul_31ns_31ns_62_1_1_U13_n_77,
      ACIN(16) => mul_31ns_31ns_62_1_1_U13_n_78,
      ACIN(15) => mul_31ns_31ns_62_1_1_U13_n_79,
      ACIN(14) => mul_31ns_31ns_62_1_1_U13_n_80,
      ACIN(13) => mul_31ns_31ns_62_1_1_U13_n_81,
      ACIN(12) => mul_31ns_31ns_62_1_1_U13_n_82,
      ACIN(11) => mul_31ns_31ns_62_1_1_U13_n_83,
      ACIN(10) => mul_31ns_31ns_62_1_1_U13_n_84,
      ACIN(9) => mul_31ns_31ns_62_1_1_U13_n_85,
      ACIN(8) => mul_31ns_31ns_62_1_1_U13_n_86,
      ACIN(7) => mul_31ns_31ns_62_1_1_U13_n_87,
      ACIN(6) => mul_31ns_31ns_62_1_1_U13_n_88,
      ACIN(5) => mul_31ns_31ns_62_1_1_U13_n_89,
      ACIN(4) => mul_31ns_31ns_62_1_1_U13_n_90,
      ACIN(3) => mul_31ns_31ns_62_1_1_U13_n_91,
      ACIN(2) => mul_31ns_31ns_62_1_1_U13_n_92,
      ACIN(1) => mul_31ns_31ns_62_1_1_U13_n_93,
      ACIN(0) => mul_31ns_31ns_62_1_1_U13_n_94,
      ACOUT(29 downto 0) => \NLW_mul_ln10_reg_175_reg__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => mul_ln10_fu_110_p1(30 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_mul_ln10_reg_175_reg__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_mul_ln10_reg_175_reg__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_mul_ln10_reg_175_reg__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state1,
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_mul_ln10_reg_175_reg__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(8 downto 0) => B"001010101",
      OVERFLOW => \NLW_mul_ln10_reg_175_reg__0_OVERFLOW_UNCONNECTED\,
      P(47) => \mul_ln10_reg_175_reg__0_n_58\,
      P(46) => \mul_ln10_reg_175_reg__0_n_59\,
      P(45) => \mul_ln10_reg_175_reg__0_n_60\,
      P(44) => \mul_ln10_reg_175_reg__0_n_61\,
      P(43) => \mul_ln10_reg_175_reg__0_n_62\,
      P(42) => \mul_ln10_reg_175_reg__0_n_63\,
      P(41) => \mul_ln10_reg_175_reg__0_n_64\,
      P(40) => \mul_ln10_reg_175_reg__0_n_65\,
      P(39) => \mul_ln10_reg_175_reg__0_n_66\,
      P(38) => \mul_ln10_reg_175_reg__0_n_67\,
      P(37) => \mul_ln10_reg_175_reg__0_n_68\,
      P(36) => \mul_ln10_reg_175_reg__0_n_69\,
      P(35) => \mul_ln10_reg_175_reg__0_n_70\,
      P(34) => \mul_ln10_reg_175_reg__0_n_71\,
      P(33) => \mul_ln10_reg_175_reg__0_n_72\,
      P(32) => \mul_ln10_reg_175_reg__0_n_73\,
      P(31) => \mul_ln10_reg_175_reg__0_n_74\,
      P(30) => \mul_ln10_reg_175_reg__0_n_75\,
      P(29) => \mul_ln10_reg_175_reg__0_n_76\,
      P(28) => \mul_ln10_reg_175_reg__0_n_77\,
      P(27) => \mul_ln10_reg_175_reg__0_n_78\,
      P(26) => \mul_ln10_reg_175_reg__0_n_79\,
      P(25) => \mul_ln10_reg_175_reg__0_n_80\,
      P(24) => \mul_ln10_reg_175_reg__0_n_81\,
      P(23) => \mul_ln10_reg_175_reg__0_n_82\,
      P(22) => \mul_ln10_reg_175_reg__0_n_83\,
      P(21) => \mul_ln10_reg_175_reg__0_n_84\,
      P(20) => \mul_ln10_reg_175_reg__0_n_85\,
      P(19) => \mul_ln10_reg_175_reg__0_n_86\,
      P(18) => \mul_ln10_reg_175_reg__0_n_87\,
      P(17) => \mul_ln10_reg_175_reg__0_n_88\,
      P(16) => \mul_ln10_reg_175_reg__0_n_89\,
      P(15) => \mul_ln10_reg_175_reg__0_n_90\,
      P(14) => \mul_ln10_reg_175_reg__0_n_91\,
      P(13) => \mul_ln10_reg_175_reg__0_n_92\,
      P(12) => \mul_ln10_reg_175_reg__0_n_93\,
      P(11) => \mul_ln10_reg_175_reg__0_n_94\,
      P(10) => \mul_ln10_reg_175_reg__0_n_95\,
      P(9) => \mul_ln10_reg_175_reg__0_n_96\,
      P(8) => \mul_ln10_reg_175_reg__0_n_97\,
      P(7) => \mul_ln10_reg_175_reg__0_n_98\,
      P(6) => \mul_ln10_reg_175_reg__0_n_99\,
      P(5) => \mul_ln10_reg_175_reg__0_n_100\,
      P(4) => \mul_ln10_reg_175_reg__0_n_101\,
      P(3) => \mul_ln10_reg_175_reg__0_n_102\,
      P(2) => \mul_ln10_reg_175_reg__0_n_103\,
      P(1) => \mul_ln10_reg_175_reg__0_n_104\,
      P(0) => \mul_ln10_reg_175_reg__0_n_105\,
      PATTERNBDETECT => \NLW_mul_ln10_reg_175_reg__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_mul_ln10_reg_175_reg__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => mul_31ns_31ns_62_1_1_U13_n_112,
      PCIN(46) => mul_31ns_31ns_62_1_1_U13_n_113,
      PCIN(45) => mul_31ns_31ns_62_1_1_U13_n_114,
      PCIN(44) => mul_31ns_31ns_62_1_1_U13_n_115,
      PCIN(43) => mul_31ns_31ns_62_1_1_U13_n_116,
      PCIN(42) => mul_31ns_31ns_62_1_1_U13_n_117,
      PCIN(41) => mul_31ns_31ns_62_1_1_U13_n_118,
      PCIN(40) => mul_31ns_31ns_62_1_1_U13_n_119,
      PCIN(39) => mul_31ns_31ns_62_1_1_U13_n_120,
      PCIN(38) => mul_31ns_31ns_62_1_1_U13_n_121,
      PCIN(37) => mul_31ns_31ns_62_1_1_U13_n_122,
      PCIN(36) => mul_31ns_31ns_62_1_1_U13_n_123,
      PCIN(35) => mul_31ns_31ns_62_1_1_U13_n_124,
      PCIN(34) => mul_31ns_31ns_62_1_1_U13_n_125,
      PCIN(33) => mul_31ns_31ns_62_1_1_U13_n_126,
      PCIN(32) => mul_31ns_31ns_62_1_1_U13_n_127,
      PCIN(31) => mul_31ns_31ns_62_1_1_U13_n_128,
      PCIN(30) => mul_31ns_31ns_62_1_1_U13_n_129,
      PCIN(29) => mul_31ns_31ns_62_1_1_U13_n_130,
      PCIN(28) => mul_31ns_31ns_62_1_1_U13_n_131,
      PCIN(27) => mul_31ns_31ns_62_1_1_U13_n_132,
      PCIN(26) => mul_31ns_31ns_62_1_1_U13_n_133,
      PCIN(25) => mul_31ns_31ns_62_1_1_U13_n_134,
      PCIN(24) => mul_31ns_31ns_62_1_1_U13_n_135,
      PCIN(23) => mul_31ns_31ns_62_1_1_U13_n_136,
      PCIN(22) => mul_31ns_31ns_62_1_1_U13_n_137,
      PCIN(21) => mul_31ns_31ns_62_1_1_U13_n_138,
      PCIN(20) => mul_31ns_31ns_62_1_1_U13_n_139,
      PCIN(19) => mul_31ns_31ns_62_1_1_U13_n_140,
      PCIN(18) => mul_31ns_31ns_62_1_1_U13_n_141,
      PCIN(17) => mul_31ns_31ns_62_1_1_U13_n_142,
      PCIN(16) => mul_31ns_31ns_62_1_1_U13_n_143,
      PCIN(15) => mul_31ns_31ns_62_1_1_U13_n_144,
      PCIN(14) => mul_31ns_31ns_62_1_1_U13_n_145,
      PCIN(13) => mul_31ns_31ns_62_1_1_U13_n_146,
      PCIN(12) => mul_31ns_31ns_62_1_1_U13_n_147,
      PCIN(11) => mul_31ns_31ns_62_1_1_U13_n_148,
      PCIN(10) => mul_31ns_31ns_62_1_1_U13_n_149,
      PCIN(9) => mul_31ns_31ns_62_1_1_U13_n_150,
      PCIN(8) => mul_31ns_31ns_62_1_1_U13_n_151,
      PCIN(7) => mul_31ns_31ns_62_1_1_U13_n_152,
      PCIN(6) => mul_31ns_31ns_62_1_1_U13_n_153,
      PCIN(5) => mul_31ns_31ns_62_1_1_U13_n_154,
      PCIN(4) => mul_31ns_31ns_62_1_1_U13_n_155,
      PCIN(3) => mul_31ns_31ns_62_1_1_U13_n_156,
      PCIN(2) => mul_31ns_31ns_62_1_1_U13_n_157,
      PCIN(1) => mul_31ns_31ns_62_1_1_U13_n_158,
      PCIN(0) => mul_31ns_31ns_62_1_1_U13_n_159,
      PCOUT(47 downto 0) => \NLW_mul_ln10_reg_175_reg__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_mul_ln10_reg_175_reg__0_UNDERFLOW_UNCONNECTED\,
      XOROUT(7 downto 0) => \NLW_mul_ln10_reg_175_reg__0_XOROUT_UNCONNECTED\(7 downto 0)
    );
regslice_both_s_axis_video_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel_regslice_both
     port map (
      D(0) => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_66,
      DSP_A_B_DATA_INST(2 downto 0) => empty_fu_78(2 downto 0),
      Q(1) => state(1),
      Q(0) => s_axis_video_TVALID_int_regslice,
      SR(0) => ap_rst_n_inv,
      ack_in_t_reg_0 => s_axis_video_TREADY,
      ack_in_t_reg_1 => grp_brenner_accel_Pipeline_row_loop_col_loop_fu_89_n_67,
      ap_clk => ap_clk,
      \data_p1_reg[0]_0\(1) => A(2),
      \data_p1_reg[0]_0\(0) => regslice_both_s_axis_video_V_data_V_U_n_4,
      \data_p1_reg[7]_0\(7 downto 0) => data_p1(7 downto 0),
      s_axis_video_TDATA(7 downto 0) => s_axis_video_TDATA(7 downto 0),
      s_axis_video_TVALID => s_axis_video_TVALID
    );
\width_read_reg_164_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_39,
      Q => width_read_reg_164(0),
      R => '0'
    );
\width_read_reg_164_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_29,
      Q => width_read_reg_164(10),
      R => '0'
    );
\width_read_reg_164_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_28,
      Q => width_read_reg_164(11),
      R => '0'
    );
\width_read_reg_164_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_27,
      Q => width_read_reg_164(12),
      R => '0'
    );
\width_read_reg_164_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_26,
      Q => width_read_reg_164(13),
      R => '0'
    );
\width_read_reg_164_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_25,
      Q => width_read_reg_164(14),
      R => '0'
    );
\width_read_reg_164_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_24,
      Q => width_read_reg_164(15),
      R => '0'
    );
\width_read_reg_164_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_23,
      Q => width_read_reg_164(16),
      R => '0'
    );
\width_read_reg_164_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_22,
      Q => width_read_reg_164(17),
      R => '0'
    );
\width_read_reg_164_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_21,
      Q => width_read_reg_164(18),
      R => '0'
    );
\width_read_reg_164_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_20,
      Q => width_read_reg_164(19),
      R => '0'
    );
\width_read_reg_164_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_38,
      Q => width_read_reg_164(1),
      R => '0'
    );
\width_read_reg_164_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_19,
      Q => width_read_reg_164(20),
      R => '0'
    );
\width_read_reg_164_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_18,
      Q => width_read_reg_164(21),
      R => '0'
    );
\width_read_reg_164_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_17,
      Q => width_read_reg_164(22),
      R => '0'
    );
\width_read_reg_164_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_16,
      Q => width_read_reg_164(23),
      R => '0'
    );
\width_read_reg_164_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_15,
      Q => width_read_reg_164(24),
      R => '0'
    );
\width_read_reg_164_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_14,
      Q => width_read_reg_164(25),
      R => '0'
    );
\width_read_reg_164_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_13,
      Q => width_read_reg_164(26),
      R => '0'
    );
\width_read_reg_164_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_12,
      Q => width_read_reg_164(27),
      R => '0'
    );
\width_read_reg_164_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_11,
      Q => width_read_reg_164(28),
      R => '0'
    );
\width_read_reg_164_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_10,
      Q => width_read_reg_164(29),
      R => '0'
    );
\width_read_reg_164_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_37,
      Q => width_read_reg_164(2),
      R => '0'
    );
\width_read_reg_164_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_9,
      Q => width_read_reg_164(30),
      R => '0'
    );
\width_read_reg_164_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_8,
      Q => width_read_reg_164(31),
      R => '0'
    );
\width_read_reg_164_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_36,
      Q => width_read_reg_164(3),
      R => '0'
    );
\width_read_reg_164_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_35,
      Q => width_read_reg_164(4),
      R => '0'
    );
\width_read_reg_164_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_34,
      Q => width_read_reg_164(5),
      R => '0'
    );
\width_read_reg_164_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_33,
      Q => width_read_reg_164(6),
      R => '0'
    );
\width_read_reg_164_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_32,
      Q => width_read_reg_164(7),
      R => '0'
    );
\width_read_reg_164_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_31,
      Q => width_read_reg_164(8),
      R => '0'
    );
\width_read_reg_164_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => ctrl_s_axi_U_n_30,
      Q => width_read_reg_164(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_ctrl_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_ARREADY : out STD_LOGIC;
    s_axi_ctrl_ARVALID : in STD_LOGIC;
    s_axi_ctrl_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctrl_AWREADY : out STD_LOGIC;
    s_axi_ctrl_AWVALID : in STD_LOGIC;
    s_axi_ctrl_BREADY : in STD_LOGIC;
    s_axi_ctrl_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_BVALID : out STD_LOGIC;
    s_axi_ctrl_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_RREADY : in STD_LOGIC;
    s_axi_ctrl_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_RVALID : out STD_LOGIC;
    s_axi_ctrl_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_WREADY : out STD_LOGIC;
    s_axi_ctrl_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axis_video_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TKEEP : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TREADY : out STD_LOGIC;
    s_axis_video_TSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_TVALID : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_brenner_accel_0_0,brenner_accel,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "brenner_accel,Vivado 2024.2.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 6;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "4'b0001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "4'b0010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "4'b0100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "4'b1000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl:s_axis_video, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  attribute X_INTERFACE_INFO of s_axis_video_TREADY : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute X_INTERFACE_INFO of s_axis_video_TVALID : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  attribute X_INTERFACE_MODE of s_axi_ctrl_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_ARADDR : signal is "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 200000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  attribute X_INTERFACE_INFO of s_axis_video_TDATA : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
  attribute X_INTERFACE_MODE of s_axis_video_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_video_TDATA : signal is "XIL_INTERFACENAME s_axis_video, TUSER_WIDTH 1, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out200, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_TDEST : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDEST";
  attribute X_INTERFACE_INFO of s_axis_video_TID : signal is "xilinx.com:interface:axis:1.0 s_axis_video TID";
  attribute X_INTERFACE_INFO of s_axis_video_TKEEP : signal is "xilinx.com:interface:axis:1.0 s_axis_video TKEEP";
  attribute X_INTERFACE_INFO of s_axis_video_TLAST : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute X_INTERFACE_INFO of s_axis_video_TSTRB : signal is "xilinx.com:interface:axis:1.0 s_axis_video TSTRB";
  attribute X_INTERFACE_INFO of s_axis_video_TUSER : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
begin
  s_axi_ctrl_BRESP(1) <= \<const0>\;
  s_axi_ctrl_BRESP(0) <= \<const0>\;
  s_axi_ctrl_RRESP(1) <= \<const0>\;
  s_axi_ctrl_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_brenner_accel
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_ctrl_ARADDR(5 downto 0) => s_axi_ctrl_ARADDR(5 downto 0),
      s_axi_ctrl_ARREADY => s_axi_ctrl_ARREADY,
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_AWADDR(5 downto 2) => s_axi_ctrl_AWADDR(5 downto 2),
      s_axi_ctrl_AWADDR(1 downto 0) => B"00",
      s_axi_ctrl_AWREADY => s_axi_ctrl_AWREADY,
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_RDATA(31 downto 0) => s_axi_ctrl_RDATA(31 downto 0),
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      s_axi_ctrl_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_WDATA(31 downto 0) => s_axi_ctrl_WDATA(31 downto 0),
      s_axi_ctrl_WREADY => s_axi_ctrl_WREADY,
      s_axi_ctrl_WSTRB(3 downto 0) => s_axi_ctrl_WSTRB(3 downto 0),
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID,
      s_axis_video_TDATA(7 downto 0) => s_axis_video_TDATA(7 downto 0),
      s_axis_video_TDEST(0) => '0',
      s_axis_video_TID(0) => '0',
      s_axis_video_TKEEP(0) => '0',
      s_axis_video_TLAST(0) => '0',
      s_axis_video_TREADY => s_axis_video_TREADY,
      s_axis_video_TSTRB(0) => '0',
      s_axis_video_TUSER(0) => '0',
      s_axis_video_TVALID => s_axis_video_TVALID
    );
end STRUCTURE;
