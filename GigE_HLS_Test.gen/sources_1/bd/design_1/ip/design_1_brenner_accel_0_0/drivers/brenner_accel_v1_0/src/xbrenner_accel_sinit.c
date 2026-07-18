// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xbrenner_accel.h"

extern XBrenner_accel_Config XBrenner_accel_ConfigTable[];

#ifdef SDT
XBrenner_accel_Config *XBrenner_accel_LookupConfig(UINTPTR BaseAddress) {
	XBrenner_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XBrenner_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XBrenner_accel_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XBrenner_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBrenner_accel_Initialize(XBrenner_accel *InstancePtr, UINTPTR BaseAddress) {
	XBrenner_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBrenner_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBrenner_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XBrenner_accel_Config *XBrenner_accel_LookupConfig(u16 DeviceId) {
	XBrenner_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBRENNER_ACCEL_NUM_INSTANCES; Index++) {
		if (XBrenner_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBrenner_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBrenner_accel_Initialize(XBrenner_accel *InstancePtr, u16 DeviceId) {
	XBrenner_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBrenner_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBrenner_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

