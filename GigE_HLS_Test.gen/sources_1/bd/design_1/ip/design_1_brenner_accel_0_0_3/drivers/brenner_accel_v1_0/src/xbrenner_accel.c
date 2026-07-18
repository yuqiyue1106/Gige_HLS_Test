// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xbrenner_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBrenner_accel_CfgInitialize(XBrenner_accel *InstancePtr, XBrenner_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBrenner_accel_Start(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL) & 0x80;
    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBrenner_accel_IsDone(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBrenner_accel_IsIdle(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBrenner_accel_IsReady(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBrenner_accel_EnableAutoRestart(XBrenner_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBrenner_accel_DisableAutoRestart(XBrenner_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_AP_CTRL, 0);
}

u64 XBrenner_accel_Get_brenner_score(XBrenner_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_BRENNER_SCORE_DATA);
    Data += (u64)XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_BRENNER_SCORE_DATA + 4) << 32;
    return Data;
}

u32 XBrenner_accel_Get_brenner_score_vld(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_BRENNER_SCORE_CTRL);
    return Data & 0x1;
}

void XBrenner_accel_Set_width(XBrenner_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBrenner_accel_Get_width(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBrenner_accel_Set_height(XBrenner_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBrenner_accel_Get_height(XBrenner_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBrenner_accel_InterruptGlobalEnable(XBrenner_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_GIE, 1);
}

void XBrenner_accel_InterruptGlobalDisable(XBrenner_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_GIE, 0);
}

void XBrenner_accel_InterruptEnable(XBrenner_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_IER);
    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_IER, Register | Mask);
}

void XBrenner_accel_InterruptDisable(XBrenner_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_IER);
    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_IER, Register & (~Mask));
}

void XBrenner_accel_InterruptClear(XBrenner_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBrenner_accel_WriteReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_ISR, Mask);
}

u32 XBrenner_accel_InterruptGetEnabled(XBrenner_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_IER);
}

u32 XBrenner_accel_InterruptGetStatus(XBrenner_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBrenner_accel_ReadReg(InstancePtr->Ctrl_BaseAddress, XBRENNER_ACCEL_CTRL_ADDR_ISR);
}

