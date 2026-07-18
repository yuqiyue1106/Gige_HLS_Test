# GigE HLS Test

> 基于 **Zynq UltraScale+ MPSoC ZU3EG**（`xczu3eg-sfvc784-1-i`）的 GigE Vision 相机接收 + HLS 加速 Brenner 清晰度评分系统。使用 **Vivado 2024.2.2** IP Integrator 与 **Vitis HLS** 构建。

---

## 📋 项目概述

本项目实现了一个基于 FPGA 的图像处理流水线，主要包括：

1. 通过 **RGMII** 以太网 PHY（当前仅启用 1G 通道）从 **GigE Vision 工业相机** 接收原始图像帧。
2. 在可编程逻辑内使用自定义 Verilog MAC + UDP/IP/ARP + GVSP 解析器，解包 **GVSP**（GigE Vision 流协议）数据包。
3. 将像素数据送入由 **Vitis HLS 综合生成的 Brenner 清晰度评分加速器**。
4. 通过 AXI-Lite 向 **Zynq PS（Cortex-A53）** 暴露控制与状态寄存器。

整体设计以 **Vivado Block Design**（`design_1`）的形式组织，并可通过提供的 Tcl 脚本完整重建。

---

## 🧩 系统架构

```
                          ┌───────────────────────────────────────────────┐
                          │             Zynq UltraScale+ PS               │
                          │     (Cortex-A53 / R5, Linux / 裸机)           │
                          │         M_AXI_HPM0_FPD  (100 MHz AXI)         │
                          └───────────────┬───────────────────────────────┘
                                          │
                                  ┌───────▼────────┐
                                  │  SmartConnect  │   (100 MHz, AXI-Lite)
                                  │   1 个从机 →     │
                                  │   2 个主机       │
                                  └───┬─────────┬───┘
                                      │         │
              (100→200 MHz CDC)       │         │  (100 MHz, 直连)
          ┌───────────────────┐       │         │       ┌────────────────────────┐
          │ axi_clock_converter│      │         │       │ gige_dual_speed_top_0    │
          └─────────┬─────────┘       │         └──────►│  (s_axi_lite @ 0xA001_0000)
                    │                 │                 └────────────────────────┘
                    ▼                 │                           │
   ┌────────────────────────────┐     │       64-bit AXI-Stream @ 200 MHz
   │ brenner_accel_0            │     │       (来自 RGMII PHY → MAC → GVSP 解析器)
   │ (s_axi_ctrl @ 0xA002_0000) │     │                           │
   │ HLS Brenner 清晰度评分核    │     │                           ▼
   └─────────────▲──────────────┘     │               ┌──────────────────────┐
                 │                    │               │ axis_data_fifo_0     │
                 │  8-bit AXI-Stream  │               │ (异步, 64-bit, 512)  │
                 │  (dwidth_conv)     │               └──────────┬───────────┘
                 └────────────────────┘                          │
                                                                 ▼
                                                     ┌────────────────────────┐
                                                     │ axis_dwidth_converter  │
                                                     │    (64-bit → 8-bit)    │
                                                     └───────────┬────────────┘
                                                                 │
                                                                 ▼
                                                     ┌────────────────────────┐
                                                     │    brenner_accel_0     │
                                                     │     (像素数据输入)      │
                                                     └────────────────────────┘
```

### 数据流

```
RGMII PHY ──► gige_dual_speed_top (内置 MAC + UDP/IP/ARP + GVSP)
           ──► axis_data_fifo_0   (异步 FIFO, 64-bit, 200 MHz)
           ──► axis_dwidth_converter_0 (64-bit → 8-bit)
           ──► brenner_accel_0    (HLS Brenner 清晰度评分器, 200 MHz)
```

### AXI 地址映射

| 从机 IP | 基地址 | 大小 | 时钟域 |
|---|---|---|---|
| `gige_dual_speed_top_0/s_axi_lite` | `0xA001_0000` | 4 KB | 100 MHz |
| `brenner_accel_0/s_axi_ctrl`       | `0xA002_0000` | 64 B | 200 MHz (经 CDC) |

---

## 🕰️ 时钟架构

三个独立的 `clk_wiz` 实例，全部来自同一颗 100 MHz 板载晶振。

| 时钟向导 | 输出频率 | 用途 |
|---|---|---|
| `clk_wiz_0` | 125 MHz、125 MHz @ 90°、156.25 MHz | GigE MAC 数据通路 (RGMII TX/RX) |
| `clk_wiz_1` | 200 MHz | 视频流水线 + HLS 加速器 |
| `clk_wiz_2` | 100 MHz | AXI-Lite 控制通路 (PS 接口) |

每个时钟域都有独立的 `proc_sys_reset` 复位管理实例。

---

## 📦 IP 核清单

### 自定义 IP

| IP | 来源 | 描述 |
|---|---|---|
| `gige_dual_speed_top_wrapper` v1.0 | `xilinx.com:user:gige_dual_speed_top_wrapper:1.0` | 自定义 GigE Vision 双速率（1G/10G）接收器。内置 RGMII MAC（源自 [verilog-ethernet](https://github.com/alexforencich/verilog-ethernet)，MIT 许可）、完整的 UDP/IP/ARP 协议栈，以及带 5 状态 FSM 的 GVSP 解析器。输出 64-bit AXI4-Stream @ 200 MHz。 |
| `brenner_accel` v1.0 | `xilinx.com:hls:brenner_accel:1.0` | Vitis HLS 生成的加速器。对 8-bit 像素帧计算 Brenner 清晰度评分。AXI-Lite 寄存器接口 + AXI-Stream 像素输入 + 64-bit 评分输出。 |

### Xilinx 标准 IP

| IP | 版本 | 用途 |
|---|---|---|
| `zynq_ultra_ps_e` | 3.5 | Zynq UltraScale+ 处理系统 |
| `clk_wiz` ×3 | 6.0 | 时钟生成 |
| `proc_sys_reset` ×4 | 5.0 | 各时钟域复位管理 |
| `smartconnect` | 1.0 | AXI-Lite 互联 (1S/2M) |
| `axi_clock_converter` | 2.1 | AXI-Lite 跨时钟域 CDC (100 → 200 MHz) |
| `axis_data_fifo` | 2.0 | 异步 AXI-Stream FIFO (64-bit, 深度 512) |
| `axis_dwidth_converter` | 1.1 | AXI-Stream 数据宽度转换 (64 → 8) |

---

## 📁 工程目录结构

```
GigE_HLS_Test/
├── GigE_HLS_Test.xpr              # Vivado 工程文件
├── create_bd_design_1.tcl         # 用于重建 Block Design 的 Tcl 脚本
├── ip_upgrade.log                 # IP 升级历史记录
├── README.md                      # 本文件
├── GigE_HLS_Test.srcs/
│   └── sources_1/bd/design_1/     # Block Design (.bd) 和 IP XCI 文件
├── GigE_HLS_Test.gen/             # 生成产物 (BD wrapper、IP stubs)
│   └── sources_1/bd/design_1/hdl/design_1_wrapper.v
├── GigE_HLS_Test.cache/           # 编译好的 IP DCP 和仿真网表
├── GigE_HLS_Test.hw/              # 硬件定义文件 (.lpr)
├── GigE_HLS_Test.ip_user_files/   # IP 用户文件与仿真脚本
├── GigE_HLS_Test.runs/            # 综合与实现运行结果
│   ├── synth_1/                   # 顶层综合
│   ├── impl_1/                    # 实现 (完整布线)
│   └── design_1_*_synth_1/        # IP OOC (Out-of-Context) 综合
└── GigE_HLS_Test.sim/             # 仿真目录 (当前为空)
```

> **说明：** 本仓库保留了 `.cache/`、`.gen/`、`.runs/`、`.ip_user_files/`、`.hw/` 和 `.sim/` 等全部文件夹，以确保可复现性。这些目录可以安全删除，并使用 Vivado 2024.2.2 从 `GigE_HLS_Test.xpr` + `create_bd_design_1.tcl` 重新生成。

---

## 🚀 快速开始

### 前置条件

- **Vivado 2024.2.2**（推荐 Design Edition 或 ML Enterprise 版本，以支持 Zynq UltraScale+）
- **Vitis HLS 2024.2.2**（仅在需要修改 Brenner 加速器时使用）
- 基于 **xczu3eg-sfvc784-1-i** 的开发板，且 PL 端连接了 RGMII PHY

### 重建 Block Design

1. 打开 Vivado，加载 `GigE_HLS_Test.xpr`。
2. 如果 Block Design 缺失或需要重新生成，执行：
   ```tcl
   source create_bd_design_1.tcl
   ```
3. 生成输出产物（右键点击 BD → *Generate Output Products*）。
4. 创建 HDL 封装（右键点击 BD → *Create HDL Wrapper*）。

### 运行综合与实现

```tcl
reset_run synth_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
```

---

## ⚠️ 已知问题

- **当前没有 XDC 约束文件。** `constrs_1` 文件集为空，因此：
  - 所有 I/O 端口的 `IOSTANDARD = DEFAULT`（DRC 告警 `NSTD-1`）。
  - 没有 `LOC` 引脚分配（DRC 告警 `UCIO-1`）。
  - 在添加用户 XDC 之前，比特流生成会失败。
- **时序尚未收敛。** `phy_1g_rx_clk` 未在任何 XDC 中声明为主时钟，导致存在未约束路径与建立时间违例。RGMII I/O 延迟也未约束。
- **没有仿真测试平台。** `sim_1` 文件集为空。
- **只有 1G 以太网通路被启用。** IP 中存在 10G RTL，但 Block Design 中未连接。

这些问题被有意保留，以便本仓库可以作为针对具体开发板适配的**起点**。

---

## 🧠 Brenner 加速器寄存器映射

| 偏移地址 | 位宽 | 访问 | 名称 | 描述 |
|---|---|---|---|---|
| `0x00` | 32 | R/W | Control | `ap_start`、`ap_done`、`ap_idle`、`ap_ready`、`auto_restart`、中断位 |
| `0x10` | 64 | R | `brenner_score` | 计算得到的清晰度评分（低 32 位 @ `0x10`，高 32 位 @ `0x14`） |
| `0x28` | 32 | R/W | `width` | 图像宽度（像素） |
| `0x30` | 32 | R/W | `height` | 图像高度（像素） |

C 驱动 API（位于 `brenner_accel/drivers/`）：
```c
XBrenner_accel_Set_width(&dev, w);
XBrenner_accel_Set_height(&dev, h);
XBrenner_accel_Start(&dev);
while (!XBrenner_accel_IsDone(&dev));
u64 score = XBrenner_accel_Get_brenner_score(&dev);
```

---

## 📊 资源占用（实现后）

| 资源 | 已用 | 可用 | 使用率 |
|---|---|---|---|
| CLB LUT | 2,826 | 70,560 | 4.01 % |
| CLB 寄存器 | 4,183 | 141,120 | 2.96 % |
| CARRY8 | 69 | 8,820 | 0.78 % |

该设计在 ZU3EG 上的资源占用非常低。

---

## 📄 许可证

本仓库以 "as-is" 形式提供，仅供教育与研究使用。依赖以下第三方 IP：

- [verilog-ethernet](https://github.com/alexforencich/verilog-ethernet)，作者 Alex Forencich —— **MIT 许可证**
- [verilog-axis](https://github.com/alexforencich/verilog-axis)，作者 Alex Forencich —— **MIT 许可证**
- Xilinx IP 核 —— 受 **Xilinx 最终用户许可协议 (EULA)** 约束

商用前请仔细审阅各依赖项的许可证。

---

## 🤝 贡献

欢迎提交 Issue 与 Pull Request。参与贡献时请注意：

1. 保持 Block Design 可从 `create_bd_design_1.tcl` 重新生成。
2. 如果架构或地址映射发生变化，请同步更新本 `README.md`。
3. **不要**提交 Vivado 的 `.jou`、`.log` 或 `.str` 文件。

---

## 📧 联系方式

维护者：**yuqiyue1106** —— [GitHub 主页](https://github.com/yuqiyue1106)
