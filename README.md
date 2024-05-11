# Project Nixie 2.0

## Developer Notes
### Coprocessor and FUS
The FUS v1.2.0 is used with the latest stm32wb5x_BLE_Stack_full_fw.bin, which is flashed to the specific flash region.<br>
On boot, verify that the following happens (if the application fails to start):
- main() calls MX_APPE_Init()
- MX_APPE_Init() calls appe_Tl_Init()
- appe_Tl_Init() registers the callback APPE_SysUserEvtRx with shci_init(APPE_SysUserEvtRx, (void*) &SHci_Tl_Init_Conf)
- IPCC_C1_RX_IRQHandler is asynchronously called, in turn runs APPE_SysUserEvtRx()
- It is expected that in APPE_SysEvtReadyProcessing(), p_sys_ready_event->sysevt_ready_rsp will indicate WIRELESS_FW_RUNNING (which means that C2 is working)
- C2 trace is run with APPD_EnableCPU2
- BLE application runs

The necessary conditions are that the SoC is set to boot from the correct mode (main flash), either with strapping pins or OB, and that the C2 FW is started explicitly (in STM32Prog).
It is also important to ensure that $V_T$ is above BOD ~1.7V
