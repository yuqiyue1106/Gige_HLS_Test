# create_bd_design_1.tcl
# ============================================================================
# GigE_HLS_Test Block Design - PHY-Direct Architecture (v2)
# ============================================================================
# 时钟架构: 3 个 Clock Wizard + 独立 PSR per domain
#   clk_wiz_0: 100MHz board -> 125MHz + 125MHz@90 + 156.25MHz (GigE MAC/PCS)
#   clk_wiz_1: 100MHz board -> 200MHz             (数据链路: 视频输出)
#   clk_wiz_2: 100MHz board -> 100MHz             (控制链路: AXI-Lite)
#
# 数据流:
#   PHY (RGMII) -> gige_dual_speed_top_0 -> axis_data_fifo_0
#   -> axis_dwidth_converter_0 (64->8 bit) -> brenner_accel_0
#
# 控制流:
#   PS M_AXI_HPM0_FPD (100MHz) -> SmartConnect (100MHz)
#     M00 -> axi_clock_converter -> brenner_accel_0/s_axi_ctrl (200MHz)
#     M01 -> gige_dual_speed_top_0/s_axi_lite (100MHz)
#
# 用法: Vivado Tcl Console 中:
#   source D:/Projects/FPGA_projects/GigE_HLS_Test/create_bd_design_1.tcl
# ============================================================================

# --------------------------------------------------------------------------
# 0. 准备
# --------------------------------------------------------------------------
set proj_dir "D:/Projects/FPGA_projects/GigE_HLS_Test"
catch {close_project}

if {[file exists "$proj_dir/GigE_HLS_Test.xpr"]} {
    puts "INFO: 项目已存在，直接打开"
    open_project "$proj_dir/GigE_HLS_Test.xpr"
} else {
    create_project GigE_HLS_Test $proj_dir -part xczu3eg-sfvc784-1-i
}

set_property ip_repo_paths {D:/Projects/FPGA_projects/IPCores} [current_project]
update_ip_catalog -rebuild

# 删除旧的 design_1
set existingbd [get_bd_designs design_1 -quiet]
if {$existingbd ne ""} { close_bd_design [get_bd_designs design_1] }
set existingbd_files [get_files design_1.bd -quiet]
if {$existingbd_files ne ""} { remove_files -fileset sources_1 design_1.bd }

create_bd_design "design_1"
current_bd_design design_1

# --------------------------------------------------------------------------
# 1. 创建 IP 实例
# --------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.5 zynq_ultra_ps_e_0

# 3 个 Clock Wizard (分离数据链路和控制链路)
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_2

# 4 个独立 Processor System Reset
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_100m
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_125m
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_156m
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_200m

# AXI 互联与转换
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_clk_conv_0

# GigE Vision IP
create_bd_cell -type ip -vlnv xilinx.com:user:gige_dual_speed_top_wrapper:1.0 gige_dual_speed_top_0

# 视频 CDC 和位宽转换
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 axis_data_fifo_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0

# HLS Brenner 加速器
create_bd_cell -type ip -vlnv xilinx.com:hls:brenner_accel:1.0 brenner_accel_0

# --------------------------------------------------------------------------
# 2. 配置 IP
# --------------------------------------------------------------------------

# === Zynq UltraScale+ PS ===
set_property -dict [list \
    CONFIG.PSU__USE__M_AXI_GP0 {1} \
    CONFIG.PSU__USE__M_AXI_GP1 {0} \
    CONFIG.PSU__USE__M_AXI_GP2 {0} \
    CONFIG.PSU__USE__S_AXI_GP2 {0} \
    CONFIG.PSU__USE__IRQ0 {0} \
    CONFIG.PSU__MAXIGP0__DATA_WIDTH {128} \
    CONFIG.PSU__FPGA_PL0_ENABLE {1} \
    CONFIG.PSU__FPGA_PL0_FREQMHZ {100} \
    CONFIG.PSU__FPGA_PL1_ENABLE {0} \
    CONFIG.PSU__FPGA_PL2_ENABLE {0} \
    CONFIG.PSU__FPGA_PL3_ENABLE {0} \
    CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {0} \
    CONFIG.PSU__DDRC__ENABLE {1} \
    CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
    CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
    CONFIG.PSU__DDRC__DEVICE_CAPACITY {2048 MBits} \
    CONFIG.PSU__DDRC__DRAM_WIDTH {8 Bits} \
    CONFIG.PSU__DDRC__SPEED_BIN {DDR4_1600J} \
    CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
    CONFIG.PSU__DDRC__ROW_ADDR_COUNT {14} \
    CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
    CONFIG.PSU__DDRC__BG_ADDR_COUNT {2} \
    CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
    CONFIG.PSU__DDRC__CL {10} \
    CONFIG.PSU__DDRC__CWL {9} \
    CONFIG.PSU__DDRC__T_RCD {10} \
    CONFIG.PSU__DDRC__T_RP {10} \
    CONFIG.PSU__DDRC__T_RC {47.5} \
    CONFIG.PSU__DDRC__T_RAS_MIN {35} \
    CONFIG.PSU__DDRC__T_FAW {35} \
    CONFIG.PSU__DDRC__ECC {Disabled} \
    CONFIG.PSU__DDRC__ECC_SCRUB {0} \
    CONFIG.PSU__DDRC__COMPONENTS {Components} \
    CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
    CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
    CONFIG.PSU__DDRC__VREF {1} \
    CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
    CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
    CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
    CONFIG.PSU__DDRC__FGRM {1X} \
    CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
    CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
    CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {0} \
    CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {1} \
    CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
    CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
    CONFIG.PSU__DDRC__LP_ASR {manual normal} \
    CONFIG.PSU__DDRC__PWR_DOWN_EN {0} \
    CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
    CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
    CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
    CONFIG.PSU__DDRC__PLL_BYPASS {0} \
    CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
    CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
    CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
    CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
    CONFIG.PSU__DDRC__ENABLE_DP_SWITCH {0} \
    CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0} \
    CONFIG.PSU__DDRC__RD_DQS_CENTER {0} \
    CONFIG.PSU__DDRC__AL {0} \
    CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE {0} \
    CONFIG.PSU__DDR_SW_REFRESH_ENABLED {1} \
    CONFIG.PSU__DDR_QOS_ENABLE {0} \
    CONFIG.PSU__DEVICE_TYPE {EG} \
    CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
    CONFIG.PSU__PROTECTION__ENABLE {0} \
    CONFIG.PSU__EN_AXI_STATUS_PORTS {0} \
    CONFIG.PSU__USE__DDR_INTF_REQUESTED {0} \
    CONFIG.PSU_DDR_RAM_HIGHADDR {0x7FFFFFFF} \
    CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x00000002} \
    CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
    CONFIG.PSU_VALUE_SILVERSION {3} \
] [get_bd_cells zynq_ultra_ps_e_0]

# === clk_wiz_0: 数据链路 - 100MHz -> 125MHz + 125MHz@90 + 156.25MHz (GigE MAC) ===
# VCO = 100 * 12.5 = 1250 MHz; /10=125MHz, /10+90deg=125MHz, /8=156.25MHz
set_property -dict [list \
    CONFIG.PRIMITIVE {MMCM} \
    CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
    CONFIG.PRIM_IN_FREQ {100} \
    CONFIG.NUM_OUT_CLKS {3} \
    CONFIG.USE_RESET {false} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_PHASE_ALIGNMENT {true} \
    CONFIG.PHASESHIFT_MODE {WAVEFORM} \
    CONFIG.MMCM_DIVCLK_DIVIDE {1} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {12.500} \
    CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
    CONFIG.MMCM_COMPENSATION {AUTO} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
    CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
    CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
    CONFIG.MMCM_CLKOUT1_DUTY_CYCLE {0.500} \
    CONFIG.MMCM_CLKOUT1_PHASE {90.000} \
    CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
    CONFIG.MMCM_CLKOUT2_DUTY_CYCLE {0.500} \
    CONFIG.MMCM_CLKOUT2_PHASE {0.000} \
    CONFIG.CLKOUT1_USED {true} \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLKOUT3_USED {true} \
    CONFIG.CLKOUT4_USED {false} \
    CONFIG.CLKOUT5_USED {false} \
    CONFIG.CLKOUT6_USED {false} \
    CONFIG.CLKOUT7_USED {false} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125} \
    CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
    CONFIG.CLKOUT1_REQUESTED_DUTY_CYCLE {50.000} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {125} \
    CONFIG.CLKOUT2_REQUESTED_PHASE {90.000} \
    CONFIG.CLKOUT2_REQUESTED_DUTY_CYCLE {50.000} \
    CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {156.25} \
    CONFIG.CLKOUT3_REQUESTED_PHASE {0.000} \
    CONFIG.CLKOUT3_REQUESTED_DUTY_CYCLE {50.000} \
    CONFIG.RESET_TYPE {ACTIVE_HIGH} \
] [get_bd_cells clk_wiz_0]

# === clk_wiz_1: 数据链路 - 100MHz -> 200MHz (视频输出) ===
# VCO = 100 * 12 = 1200 MHz; /6 = 200MHz (精确)
set_property -dict [list \
    CONFIG.PRIMITIVE {MMCM} \
    CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
    CONFIG.PRIM_IN_FREQ {100} \
    CONFIG.NUM_OUT_CLKS {1} \
    CONFIG.USE_RESET {false} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_PHASE_ALIGNMENT {false} \
    CONFIG.MMCM_DIVCLK_DIVIDE {1} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {12.000} \
    CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
    CONFIG.MMCM_COMPENSATION {AUTO} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.000} \
    CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
    CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
    CONFIG.CLKOUT1_USED {true} \
    CONFIG.CLKOUT2_USED {false} \
    CONFIG.CLKOUT3_USED {false} \
    CONFIG.CLKOUT4_USED {false} \
    CONFIG.CLKOUT5_USED {false} \
    CONFIG.CLKOUT6_USED {false} \
    CONFIG.CLKOUT7_USED {false} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200} \
    CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
    CONFIG.CLKOUT1_REQUESTED_DUTY_CYCLE {50.000} \
    CONFIG.RESET_TYPE {ACTIVE_HIGH} \
] [get_bd_cells clk_wiz_1]

# === clk_wiz_2: 控制链路 - 100MHz -> 100MHz (AXI-Lite 基础设施) ===
# VCO = 100 * 10 = 1000 MHz; /10 = 100MHz (精确，消除 PS pl_clk0 偏差)
set_property -dict [list \
    CONFIG.PRIMITIVE {MMCM} \
    CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
    CONFIG.PRIM_IN_FREQ {100} \
    CONFIG.NUM_OUT_CLKS {1} \
    CONFIG.USE_RESET {false} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_PHASE_ALIGNMENT {false} \
    CONFIG.MMCM_DIVCLK_DIVIDE {1} \
    CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
    CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
    CONFIG.MMCM_COMPENSATION {AUTO} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
    CONFIG.MMCM_CLKOUT0_DUTY_CYCLE {0.500} \
    CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
    CONFIG.CLKOUT1_USED {true} \
    CONFIG.CLKOUT2_USED {false} \
    CONFIG.CLKOUT3_USED {false} \
    CONFIG.CLKOUT4_USED {false} \
    CONFIG.CLKOUT5_USED {false} \
    CONFIG.CLKOUT6_USED {false} \
    CONFIG.CLKOUT7_USED {false} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
    CONFIG.CLKOUT1_REQUESTED_PHASE {0.000} \
    CONFIG.CLKOUT1_REQUESTED_DUTY_CYCLE {50.000} \
    CONFIG.RESET_TYPE {ACTIVE_HIGH} \
] [get_bd_cells clk_wiz_2]

# === SmartConnect: 1 SI, 2 MI ===
set_property -dict [list \
    CONFIG.NUM_SI {1} \
    CONFIG.NUM_MI {2} \
] [get_bd_cells smartconnect_0]

# === GigE Vision IP ===
set_property -dict [list \
    CONFIG.DEFAULT_LOCAL_IP {0xC0A80180} \
    CONFIG.DEFAULT_LOCAL_MAC {0x0010A5010101} \
    CONFIG.DEFAULT_CAM_PORT {0x2333} \
] [get_bd_cells gige_dual_speed_top_0]
# 显式声明 s_axi_lite 总线接口时钟频率: gige_dual_speed_top_wrapper 的 IP-XACT
# 虽已声明 ASSOCIATED_BUSIF=s_axi_lite, 但 Vivado 不会把时钟引脚 FREQ_HZ
# 自动传播到总线接口, 导致 SmartConnect 无法推断 M01_AXI 所连 slave 的时钟
# 域, 报 "device does not share a common clock" 致命警告。必须直接给总线
# 接口引脚贴 FREQ_HZ。
set_property CONFIG.FREQ_HZ {100000000} [get_bd_intf_pins gige_dual_speed_top_0/s_axi_lite]

# === axis_data_fifo_0: 异步 FIFO, 64-bit, 512 深度 ===
set_property -dict [list \
    CONFIG.TDATA_NUM_BYTES {8} \
    CONFIG.TUSER_WIDTH {1} \
    CONFIG.FIFO_DEPTH {512} \
    CONFIG.FIFO_MODE {1} \
    CONFIG.IS_ACLK_ASYNC {1} \
    CONFIG.HAS_TREADY {1} \
    CONFIG.HAS_TSTRB {0} \
    CONFIG.HAS_TKEEP {0} \
    CONFIG.HAS_TLAST {1} \
    CONFIG.SYNCHRONIZATION_STAGES {3} \
    CONFIG.HAS_WR_DATA_COUNT {0} \
    CONFIG.HAS_RD_DATA_COUNT {0} \
    CONFIG.ENABLE_ECC {0} \
] [get_bd_cells axis_data_fifo_0]

# === axis_dwidth_converter_0: 64-bit -> 8-bit ===
set_property -dict [list \
    CONFIG.S_TDATA_NUM_BYTES {8} \
    CONFIG.M_TDATA_NUM_BYTES {1} \
    CONFIG.HAS_TSTRB {0} \
    CONFIG.HAS_TKEEP {0} \
    CONFIG.HAS_TLAST {1} \
    CONFIG.TUSER_BITS_PER_BYTE {1} \
    CONFIG.HAS_MI_TKEEP {0} \
] [get_bd_cells axis_dwidth_converter_0]

# === axi_clock_converter_0: 100MHz -> 200MHz (AXI-Lite 跨时钟域) ===
# HLS 生成的 brenner_accel_0/s_axi_ctrl 仅支持 AXI-Lite (MAX_BURST_LENGTH=1),
# 显式限制 converter 的 S_AXI 端最大突发长度, 消除 41-237 警告。
set_property -dict [list \
    CONFIG.PROTOCOL {AXI4LITE} \
    CONFIG.SYNCHRONIZATION_STAGES {3} \
    CONFIG.M_AXI_MAX_BURST_LENGTH {1} \
] [get_bd_cells axi_clk_conv_0]

# --------------------------------------------------------------------------
# 3. 创建外部端口
# --------------------------------------------------------------------------
# 注意: diff_clock 从端口只能被一个 Clock Wizard 消费, 因此为每个 wizard
# 各创建一个独立的外部端口 (clk_wiz_0/1/2 分别对应 CLK_IN1_D_wiz0/1/2)。
# 三个端口在 XDC 中绑定到同一对物理差分时钟引脚即可。
create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN1_D_wiz0
set_property CONFIG.FREQ_HZ {100000000} [get_bd_intf_ports CLK_IN1_D_wiz0]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN1_D_wiz1
set_property CONFIG.FREQ_HZ {100000000} [get_bd_intf_ports CLK_IN1_D_wiz1]

create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN1_D_wiz2
set_property CONFIG.FREQ_HZ {100000000} [get_bd_intf_ports CLK_IN1_D_wiz2]

create_bd_port -dir I  phy_1g_rx_clk
set_property CONFIG.FREQ_HZ {125000000} [get_bd_ports phy_1g_rx_clk]
create_bd_port -dir I  -from 3 -to 0 phy_1g_rxd
create_bd_port -dir I  phy_1g_rx_ctl
create_bd_port -dir O  phy_1g_tx_clk
create_bd_port -dir O  -from 3 -to 0 phy_1g_txd
create_bd_port -dir O  phy_1g_tx_ctl
create_bd_port -dir O  phy_1g_reset_n
create_bd_port -dir I  phy_1g_int_n

# --------------------------------------------------------------------------
# 4. 时钟连接
# --------------------------------------------------------------------------

# --- 板载 100 MHz 差分时钟 -> 3 个 Clock Wizard (每个 wizard 独立端口) ---
# Vivado 限制: diff_clock 从端口只能驱动一个时钟 IP, 不可扇出到多个 wizard。
# 物理上这三个端口在 XDC 约束中绑定到同一对差分时钟引脚即可。
connect_bd_intf_net -intf_net CLK_IN1_D_wiz0_net \
    [get_bd_intf_ports CLK_IN1_D_wiz0] \
    [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]

connect_bd_intf_net -intf_net CLK_IN1_D_wiz1_net \
    [get_bd_intf_ports CLK_IN1_D_wiz1] \
    [get_bd_intf_pins clk_wiz_1/CLK_IN1_D]

connect_bd_intf_net -intf_net CLK_IN1_D_wiz2_net \
    [get_bd_intf_ports CLK_IN1_D_wiz2] \
    [get_bd_intf_pins clk_wiz_2/CLK_IN1_D]

# --- 控制链路: 100 MHz (clk_wiz_2 精确输出) ---
connect_bd_net -net clk_ctrl_100m \
    [get_bd_pins clk_wiz_2/clk_out1] \
    [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] \
    [get_bd_pins smartconnect_0/aclk] \
    [get_bd_pins axi_clk_conv_0/s_axi_aclk] \
    [get_bd_pins gige_dual_speed_top_0/s_axi_lite_aclk] \
    [get_bd_pins psr_100m/slowest_sync_clk]

# --- 数据链路: 125 MHz (clk_wiz_0, GigE MAC 逻辑) ---
connect_bd_net -net clk_data_125m \
    [get_bd_pins clk_wiz_0/clk_out1] \
    [get_bd_pins gige_dual_speed_top_0/clk_125m] \
    [get_bd_pins psr_125m/slowest_sync_clk]

# --- 数据链路: 125 MHz 90° (clk_wiz_0, RGMII TX) ---
connect_bd_net -net clk_data_125m_90 \
    [get_bd_pins clk_wiz_0/clk_out2] \
    [get_bd_pins gige_dual_speed_top_0/clk90_125m]

# --- 数据链路: 156.25 MHz (clk_wiz_0, GigE 10G PCS/SerDes 参考时钟) ---
connect_bd_net -net clk_data_156m \
    [get_bd_pins clk_wiz_0/clk_out3] \
    [get_bd_pins gige_dual_speed_top_0/clk_156m] \
    [get_bd_pins psr_156m/slowest_sync_clk]

# --- 数据链路: 200 MHz (clk_wiz_1, 视频输出 + HLS) ---
connect_bd_net -net clk_data_200m \
    [get_bd_pins clk_wiz_1/clk_out1] \
    [get_bd_pins gige_dual_speed_top_0/clk_200m] \
    [get_bd_pins axis_data_fifo_0/s_axis_aclk] \
    [get_bd_pins axis_data_fifo_0/m_axis_aclk] \
    [get_bd_pins axis_dwidth_converter_0/aclk] \
    [get_bd_pins brenner_accel_0/ap_clk] \
    [get_bd_pins axi_clk_conv_0/m_axi_aclk] \
    [get_bd_pins psr_200m/slowest_sync_clk]

# --------------------------------------------------------------------------
# 5. 复位连接
# --------------------------------------------------------------------------

# --- PS pl_resetn0 -> 所有 PSR 的 ext_reset_in ---
connect_bd_net -net ps_pl_resetn0 \
    [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0] \
    [get_bd_pins psr_100m/ext_reset_in] \
    [get_bd_pins psr_125m/ext_reset_in] \
    [get_bd_pins psr_156m/ext_reset_in] \
    [get_bd_pins psr_200m/ext_reset_in]

# --- 100 MHz 控制链路复位 ---
connect_bd_net -net rst_ctrl_100m \
    [get_bd_pins psr_100m/peripheral_aresetn] \
    [get_bd_pins smartconnect_0/aresetn] \
    [get_bd_pins axi_clk_conv_0/s_axi_aresetn] \
    [get_bd_pins gige_dual_speed_top_0/s_axi_lite_aresetn]

# --- 125 MHz 数据链路复位 (active-high) ---
connect_bd_net -net rst_data_125m \
    [get_bd_pins psr_125m/peripheral_reset] \
    [get_bd_pins gige_dual_speed_top_0/rst_125m]

# --- 156.25 MHz 数据链路复位 (active-high) ---
connect_bd_net -net rst_data_156m \
    [get_bd_pins psr_156m/peripheral_reset] \
    [get_bd_pins gige_dual_speed_top_0/rst_156m]

# --- 200 MHz 数据链路复位 ---
connect_bd_net -net rst_data_200m \
    [get_bd_pins psr_200m/peripheral_aresetn] \
    [get_bd_pins axis_data_fifo_0/s_axis_aresetn] \
    [get_bd_pins axis_data_fifo_0/m_axis_aresetn] \
    [get_bd_pins axis_dwidth_converter_0/aresetn] \
    [get_bd_pins brenner_accel_0/ap_rst_n] \
    [get_bd_pins axi_clk_conv_0/m_axi_aresetn]

# --------------------------------------------------------------------------
# 6. AXI Memory-Mapped 控制链路 (100 MHz 域)
# --------------------------------------------------------------------------

# PS M_AXI_HPM0_FPD -> SmartConnect S00_AXI (100 MHz)
connect_bd_intf_net -intf_net ps_to_smartconnect \
    [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD] \
    [get_bd_intf_pins smartconnect_0/S00_AXI]

# SmartConnect M00_AXI -> axi_clock_converter S_AXI (100MHz -> 200MHz)
connect_bd_intf_net -intf_net smartconnect_to_clkconv \
    [get_bd_intf_pins smartconnect_0/M00_AXI] \
    [get_bd_intf_pins axi_clk_conv_0/S_AXI]

# axi_clock_converter M_AXI -> brenner_accel_0/s_axi_ctrl (200 MHz)
connect_bd_intf_net -intf_net clkconv_to_brenner \
    [get_bd_intf_pins axi_clk_conv_0/M_AXI] \
    [get_bd_intf_pins brenner_accel_0/s_axi_ctrl]

# SmartConnect M01_AXI -> gige_dual_speed_top_0/s_axi_lite (100 MHz)
connect_bd_intf_net -intf_net smartconnect_to_gige \
    [get_bd_intf_pins smartconnect_0/M01_AXI] \
    [get_bd_intf_pins gige_dual_speed_top_0/s_axi_lite]

# --------------------------------------------------------------------------
# 7. AXI-Stream 数据链路 (200 MHz 域)
# --------------------------------------------------------------------------

# GigE IP m_axis_video -> FIFO S_AXIS (64-bit, 200MHz)
connect_bd_intf_net -intf_net video_to_fifo \
    [get_bd_intf_pins gige_dual_speed_top_0/m_axis_video] \
    [get_bd_intf_pins axis_data_fifo_0/S_AXIS]

# FIFO M_AXIS -> dwidth_converter S_AXIS (64-bit, 200MHz)
connect_bd_intf_net -intf_net fifo_to_dwidth \
    [get_bd_intf_pins axis_data_fifo_0/M_AXIS] \
    [get_bd_intf_pins axis_dwidth_converter_0/S_AXIS]

# dwidth_converter M_AXIS -> brenner s_axis_video (8-bit, 200MHz)
connect_bd_intf_net -intf_net dwidth_to_brenner \
    [get_bd_intf_pins axis_dwidth_converter_0/M_AXIS] \
    [get_bd_intf_pins brenner_accel_0/s_axis_video]

# --------------------------------------------------------------------------
# 8. PHY 信号连接 (直连外部端口)
# --------------------------------------------------------------------------
connect_bd_net [get_bd_ports phy_1g_rx_clk]   [get_bd_pins gige_dual_speed_top_0/phy_1g_rx_clk]
connect_bd_net [get_bd_ports phy_1g_rxd]      [get_bd_pins gige_dual_speed_top_0/phy_1g_rxd]
connect_bd_net [get_bd_ports phy_1g_rx_ctl]   [get_bd_pins gige_dual_speed_top_0/phy_1g_rx_ctl]
connect_bd_net [get_bd_pins gige_dual_speed_top_0/phy_1g_tx_clk]   [get_bd_ports phy_1g_tx_clk]
connect_bd_net [get_bd_pins gige_dual_speed_top_0/phy_1g_txd]      [get_bd_ports phy_1g_txd]
connect_bd_net [get_bd_pins gige_dual_speed_top_0/phy_1g_tx_ctl]   [get_bd_ports phy_1g_tx_ctl]
connect_bd_net [get_bd_pins gige_dual_speed_top_0/phy_1g_reset_n]  [get_bd_ports phy_1g_reset_n]
connect_bd_net [get_bd_ports phy_1g_int_n]    [get_bd_pins gige_dual_speed_top_0/phy_1g_int_n]

# --------------------------------------------------------------------------
# 9. 地址分配
# --------------------------------------------------------------------------
assign_bd_address

puts "=== Address Map ==="
foreach seg [get_bd_addr_segs] {
    set addr [get_property CONFIG.BASE_VALUE $seg -quiet]
    set range [get_property CONFIG.RANGE $seg -quiet]
    if {$addr ne ""} {
        puts "  $seg : base=$addr range=$range"
    }
}

# --------------------------------------------------------------------------
# 10. 验证
# --------------------------------------------------------------------------
validate_bd_design
puts ""
puts "============================================================"
puts "Block Design 'design_1' 创建完成!"
puts ""
puts "时钟架构:"
puts "  clk_wiz_0 (数据): 100MHz -> 125MHz + 125MHz@90deg"
puts "  clk_wiz_1 (数据): 100MHz -> 200MHz"
puts "  clk_wiz_2 (控制): 100MHz -> 100MHz (精确)"
puts ""
puts "下一步:"
puts "  1) Sources -> 右键 design_1 -> Create HDL Wrapper"
puts "  2) 添加约束文件 (.xdc)"
puts "  3) Synthesis -> Implementation -> Generate Bitstream"
puts "============================================================"
