# GigE HLS Test

> A GigE Vision camera receiver + HLS-accelerated Brenner sharpness scorer, targeting the **Zynq UltraScale+ MPSoC ZU3EG** (`xczu3eg-sfvc784-1-i`). Built with **Vivado 2024.2.2** IP Integrator and **Vitis HLS**.

---

## 📋 Overview

This project implements an FPGA-based image-processing pipeline that:

1. Receives raw image frames from a **GigE Vision industrial camera** over an **RGMII** Ethernet PHY (1G path active).
2. Unpacks **GVSP** (GigE Vision Stream Protocol) packets inside programmable logic using a custom Verilog MAC + UDP/IP/ARP + GVSP parser.
3. Feeds pixel data into a **Vitis HLS-synthesized Brenner sharpness-score accelerator**.
4. Exposes control and status registers to the **Zynq PS (Cortex-A53)** through AXI-Lite.

The design is captured as a **Vivado Block Design** (`design_1`) and can be fully regenerated from the provided Tcl script.

---

## 🧩 Architecture

```
                          ┌───────────────────────────────────────────────┐
                          │             Zynq UltraScale+ PS               │
                          │     (Cortex-A53 / R5, Linux / bare-metal)     │
                          │         M_AXI_HPM0_FPD  (100 MHz AXI)         │
                          └───────────────┬───────────────────────────────┘
                                          │
                                  ┌───────▼────────┐
                                  │  SmartConnect  │   (100 MHz, AXI-Lite)
                                  │   1 slave →     │
                                  │   2 masters     │
                                  └───┬─────────┬───┘
                                      │         │
              (100→200 MHz CDC)       │         │  (100 MHz, direct)
          ┌───────────────────┐       │         │       ┌────────────────────────┐
          │ axi_clock_converter│      │         │       │ gige_dual_speed_top_0    │
          └─────────┬─────────┘       │         └──────►│  (s_axi_lite @ 0xA001_0000)
                    │                 │                 └────────────────────────┘
                    ▼                 │                           │
   ┌────────────────────────────┐     │       64-bit AXI-Stream @ 200 MHz
   │ brenner_accel_0            │     │       (from RGMII PHY → MAC → GVSP parser)
   │ (s_axi_ctrl @ 0xA002_0000) │     │                           │
   │ HLS Brenner sharpness core │     │                           ▼
   └─────────────▲──────────────┘     │               ┌──────────────────────┐
                 │                    │               │ axis_data_fifo_0     │
                 │  8-bit AXI-Stream  │               │ (async, 64-bit, 512) │
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
                                                     │   (pixel data input)   │
                                                     └────────────────────────┘
```

### Data Flow

```
RGMII PHY ──► gige_dual_speed_top (built-in MAC + UDP/IP/ARP + GVSP)
           ──► axis_data_fifo_0   (async FIFO, 64-bit, 200 MHz)
           ──► axis_dwidth_converter_0 (64-bit → 8-bit)
           ──► brenner_accel_0    (HLS Brenner sharpness scorer, 200 MHz)
```

### AXI Address Map

| Slave IP | Base Address | Size | Domain |
|---|---|---|---|
| `gige_dual_speed_top_0/s_axi_lite` | `0xA001_0000` | 4 KB | 100 MHz |
| `brenner_accel_0/s_axi_ctrl`       | `0xA002_0000` | 64 B | 200 MHz (via CDC) |

---

## 🕰️ Clock Architecture

Three independent `clk_wiz` instances, all fed from the same 100 MHz board oscillator.

| Clock Wizard | Outputs | Domain |
|---|---|---|
| `clk_wiz_0` | 125 MHz, 125 MHz @ 90°, 156.25 MHz | GigE MAC data path (RGMII TX/RX) |
| `clk_wiz_1` | 200 MHz | Video pipeline + HLS accelerator |
| `clk_wiz_2` | 100 MHz | AXI-Lite control path (PS interface) |

Each clock domain has its own `proc_sys_reset` instance.

---

## 📦 IP Cores

### Custom IP

| IP | Source | Description |
|---|---|---|
| `gige_dual_speed_top_wrapper` v1.0 | `xilinx.com:user:gige_dual_speed_top_wrapper:1.0` | Custom GigE Vision dual-speed (1G/10G) receiver. Contains built-in RGMII MAC (from [verilog-ethernet](https://github.com/alexforencich/verilog-ethernet), MIT), full UDP/IP/ARP stack, and a GVSP parser with 5-state FSM. Outputs a 64-bit AXI4-Stream at 200 MHz. |
| `brenner_accel` v1.0 | `xilinx.com:hls:brenner_accel:1.0` | Vitis HLS-generated accelerator. Computes the Brenner sharpness score on 8-bit pixel frames. AXI-Lite register interface + AXI-Stream pixel input + 64-bit score output. |

### Xilinx Catalog IP

| IP | Version | Role |
|---|---|---|
| `zynq_ultra_ps_e` | 3.5 | Zynq UltraScale+ Processing System |
| `clk_wiz` ×3 | 6.0 | Clock generation |
| `proc_sys_reset` ×4 | 5.0 | Reset management per clock domain |
| `smartconnect` | 1.0 | AXI-Lite interconnect (1S/2M) |
| `axi_clock_converter` | 2.1 | AXI-Lite CDC (100 → 200 MHz) |
| `axis_data_fifo` | 2.0 | Async AXI-Stream FIFO (64-bit, depth 512) |
| `axis_dwidth_converter` | 1.1 | AXI-Stream width conversion (64 → 8) |

---

## 📁 Project Structure

```
GigE_HLS_Test/
├── GigE_HLS_Test.xpr              # Vivado project file
├── create_bd_design_1.tcl         # Tcl script to recreate the block design
├── ip_upgrade.log                 # IP upgrade history
├── README.md                      # This file
├── GigE_HLS_Test.srcs/
│   └── sources_1/bd/design_1/     # Block design (.bd) and IP XCI files
├── GigE_HLS_Test.gen/             # Generated output products (BD wrapper, IP stubs)
│   └── sources_1/bd/design_1/hdl/design_1_wrapper.v
├── GigE_HLS_Test.cache/           # Compiled IP DCPs and sim netlists
├── GigE_HLS_Test.hw/              # Hardware definitions (.lpr)
├── GigE_HLS_Test.ip_user_files/   # IP user files and simulation scripts
├── GigE_HLS_Test.runs/            # Synthesis and implementation runs
│   ├── synth_1/                   # Top-level synthesis
│   ├── impl_1/                    # Implementation (fully routed)
│   └── design_1_*_synth_1/        # Out-of-context IP synthesis runs
└── GigE_HLS_Test.sim/             # Simulation directory (currently empty)
```

> **Note:** All `.cache/`, `.gen/`, `.runs/`, `.ip_user_files/`, `.hw/`, and `.sim/` folders are included in this repository for reproducibility. They can be safely deleted and regenerated from `GigE_HLS_Test.xpr` + `create_bd_design_1.tcl` using Vivado 2024.2.2.

---

## 🚀 Getting Started

### Prerequisites

- **Vivado 2024.2.2** (Design Edition or ML Enterprise recommended for Zynq UltraScale+)
- **Vitis HLS 2024.2.2** (only needed if modifying the Brenner accelerator)
- A board based on **xczu3eg-sfvc784-1-i** with an RGMII PHY connected to the PL

### Recreating the Block Design

1. Open Vivado and load `GigE_HLS_Test.xpr`.
2. If the block design is missing or needs regeneration, run:
   ```tcl
   source create_bd_design_1.tcl
   ```
3. Generate the output products (right-click the BD → *Generate Output Products*).
4. Create the HDL wrapper (right-click the BD → *Create HDL Wrapper*).

### Running Synthesis & Implementation

```tcl
reset_run synth_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
```

---

## ⚠️ Known Issues

- **No XDC constraint file is present.** The `constrs_1` fileset is empty, so:
  - All I/O ports have `IOSTANDARD = DEFAULT` (DRC `NSTD-1`).
  - No `LOC` pin assignments exist (DRC `UCIO-1`).
  - Bitstream generation will fail until a user XDC is added.
- **Timing is not closed.** The `phy_1g_rx_clk` is not defined as a primary clock in any XDC, leading to unconstrained paths and setup violations. RGMII I/O delays are also unconstrained.
- **No testbenches.** The `sim_1` fileset is empty.
- **Only the 1G Ethernet path is active.** 10G RTL exists in the IP but is not connected in the block design.

These issues are left open intentionally so the repository can serve as a **starting point** for board-specific adaptation.

---

## 🧠 Brenner Accelerator Register Map

| Offset | Width | Access | Name | Description |
|---|---|---|---|---|
| `0x00` | 32 | R/W | Control | `ap_start`, `ap_done`, `ap_idle`, `ap_ready`, `auto_restart`, interrupt bits |
| `0x10` | 64 | R | `brenner_score` | Computed sharpness score (low 32 bits @ `0x10`, high 32 @ `0x14`) |
| `0x28` | 32 | R/W | `width` | Frame width in pixels |
| `0x30` | 32 | R/W | `height` | Frame height in pixels |

C driver API (in `brenner_accel/drivers/`):
```c
XBrenner_accel_Set_width(&dev, w);
XBrenner_accel_Set_height(&dev, h);
XBrenner_accel_Start(&dev);
while (!XBrenner_accel_IsDone(&dev));
u64 score = XBrenner_accel_Get_brenner_score(&dev);
```

---

## 📊 Resource Utilization (post-implementation)

| Resource | Used | Available | Util% |
|---|---|---|---|
| CLB LUTs | 2,826 | 70,560 | 4.01 % |
| CLB Registers | 4,183 | 141,120 | 2.96 % |
| CARRY8 | 69 | 8,820 | 0.78 % |

The design fits comfortably in the ZU3EG.

---

## 📄 License

This repository is provided as-is for educational and research purposes. It depends on third-party IP:

- [verilog-ethernet](https://github.com/alexforencich/verilog-ethernet) by Alex Forencich — **MIT License**
- [verilog-axis](https://github.com/alexforencich/verilog-axis) by Alex Forencich — **MIT License**
- Xilinx IP cores — subject to the **Xilinx End User License Agreement**

Please review each dependency's license before commercial use.

---

## 🤝 Contributing

Issues and pull requests are welcome. When contributing, please:

1. Keep the block design regenerable from `create_bd_design_1.tcl`.
2. Update this `README.md` if the architecture or address map changes.
3. Do **not** commit Vivado `.jou`, `.log`, or `.str` files.

---

## 📧 Contact

Maintainer: **yuqiyue1106** — [GitHub profile](https://github.com/yuqiyue1106)
