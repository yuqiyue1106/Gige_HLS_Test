// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XBRENNER_ACCEL_H
#define XBRENNER_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xbrenner_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XBrenner_accel_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XBrenner_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBrenner_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBrenner_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBrenner_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBrenner_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XBrenner_accel_Initialize(XBrenner_accel *InstancePtr, UINTPTR BaseAddress);
XBrenner_accel_Config* XBrenner_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XBrenner_accel_Initialize(XBrenner_accel *InstancePtr, u16 DeviceId);
XBrenner_accel_Config* XBrenner_accel_LookupConfig(u16 DeviceId);
#endif
int XBrenner_accel_CfgInitialize(XBrenner_accel *InstancePtr, XBrenner_accel_Config *ConfigPtr);
#else
int XBrenner_accel_Initialize(XBrenner_accel *InstancePtr, const char* InstanceName);
int XBrenner_accel_Release(XBrenner_accel *InstancePtr);
#endif

void XBrenner_accel_Start(XBrenner_accel *InstancePtr);
u32 XBrenner_accel_IsDone(XBrenner_accel *InstancePtr);
u32 XBrenner_accel_IsIdle(XBrenner_accel *InstancePtr);
u32 XBrenner_accel_IsReady(XBrenner_accel *InstancePtr);
void XBrenner_accel_EnableAutoRestart(XBrenner_accel *InstancePtr);
void XBrenner_accel_DisableAutoRestart(XBrenner_accel *InstancePtr);

u64 XBrenner_accel_Get_brenner_score(XBrenner_accel *InstancePtr);
u32 XBrenner_accel_Get_brenner_score_vld(XBrenner_accel *InstancePtr);
void XBrenner_accel_Set_width(XBrenner_accel *InstancePtr, u32 Data);
u32 XBrenner_accel_Get_width(XBrenner_accel *InstancePtr);
void XBrenner_accel_Set_height(XBrenner_accel *InstancePtr, u32 Data);
u32 XBrenner_accel_Get_height(XBrenner_accel *InstancePtr);

void XBrenner_accel_InterruptGlobalEnable(XBrenner_accel *InstancePtr);
void XBrenner_accel_InterruptGlobalDisable(XBrenner_accel *InstancePtr);
void XBrenner_accel_InterruptEnable(XBrenner_accel *InstancePtr, u32 Mask);
void XBrenner_accel_InterruptDisable(XBrenner_accel *InstancePtr, u32 Mask);
void XBrenner_accel_InterruptClear(XBrenner_accel *InstancePtr, u32 Mask);
u32 XBrenner_accel_InterruptGetEnabled(XBrenner_accel *InstancePtr);
u32 XBrenner_accel_InterruptGetStatus(XBrenner_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
