# qsys scripting (.tcl) file for pcie_rp_ed_5csxfc6
package require -exact qsys 16.0

create_system {pcie_rp_ed_5csxfc6}

set_project_property DEVICE_FAMILY {Cyclone V}
set_project_property DEVICE {5CSXFC6C6U23C7}
set_project_property HIDE_FROM_IP_CATALOG {false}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance alt_xcvr_reconfig_0 alt_xcvr_reconfig 18.1
set_instance_parameter_value alt_xcvr_reconfig_0 {ber_en} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_adce} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_analog} {1}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_dcd} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_dcd_power_up} {1}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_dfe} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_eyemon} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_mif} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {enable_offset} {1}
set_instance_parameter_value alt_xcvr_reconfig_0 {gui_cal_status_port} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {gui_enable_pll} {0}
set_instance_parameter_value alt_xcvr_reconfig_0 {gui_split_sizes} {}
set_instance_parameter_value alt_xcvr_reconfig_0 {number_of_reconfig_interfaces} {3}

add_instance ase_f2sdram altera_address_span_extender 18.1
set_instance_parameter_value ase_f2sdram {BURSTCOUNT_WIDTH} {7}
set_instance_parameter_value ase_f2sdram {DATA_WIDTH} {64}
set_instance_parameter_value ase_f2sdram {ENABLE_SLAVE_PORT} {0}
set_instance_parameter_value ase_f2sdram {MASTER_ADDRESS_DEF} {0}
set_instance_parameter_value ase_f2sdram {MASTER_ADDRESS_WIDTH} {32}
set_instance_parameter_value ase_f2sdram {MAX_PENDING_READS} {2}
set_instance_parameter_value ase_f2sdram {SLAVE_ADDRESS_WIDTH} {28}
set_instance_parameter_value ase_f2sdram {SUB_WINDOW_COUNT} {1}

add_instance ccb_f2sdram altera_avalon_mm_clock_crossing_bridge 18.1
set_instance_parameter_value ccb_f2sdram {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value ccb_f2sdram {ADDRESS_WIDTH} {31}
set_instance_parameter_value ccb_f2sdram {COMMAND_FIFO_DEPTH} {4}
set_instance_parameter_value ccb_f2sdram {DATA_WIDTH} {64}
set_instance_parameter_value ccb_f2sdram {MASTER_SYNC_DEPTH} {2}
set_instance_parameter_value ccb_f2sdram {MAX_BURST_SIZE} {64}
set_instance_parameter_value ccb_f2sdram {RESPONSE_FIFO_DEPTH} {128}
set_instance_parameter_value ccb_f2sdram {SLAVE_SYNC_DEPTH} {2}
set_instance_parameter_value ccb_f2sdram {SYMBOL_WIDTH} {8}
set_instance_parameter_value ccb_f2sdram {USE_AUTO_ADDRESS_WIDTH} {0}

add_instance ccb_h2f_50_to_125 altera_avalon_mm_clock_crossing_bridge 18.1
set_instance_parameter_value ccb_h2f_50_to_125 {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value ccb_h2f_50_to_125 {ADDRESS_WIDTH} {30}
set_instance_parameter_value ccb_h2f_50_to_125 {COMMAND_FIFO_DEPTH} {128}
set_instance_parameter_value ccb_h2f_50_to_125 {DATA_WIDTH} {64}
set_instance_parameter_value ccb_h2f_50_to_125 {MASTER_SYNC_DEPTH} {16}
set_instance_parameter_value ccb_h2f_50_to_125 {MAX_BURST_SIZE} {32}
set_instance_parameter_value ccb_h2f_50_to_125 {RESPONSE_FIFO_DEPTH} {128}
set_instance_parameter_value ccb_h2f_50_to_125 {SLAVE_SYNC_DEPTH} {16}
set_instance_parameter_value ccb_h2f_50_to_125 {SYMBOL_WIDTH} {8}
set_instance_parameter_value ccb_h2f_50_to_125 {USE_AUTO_ADDRESS_WIDTH} {0}

add_instance ccb_lw_50_to_125 altera_avalon_mm_clock_crossing_bridge 18.1
set_instance_parameter_value ccb_lw_50_to_125 {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value ccb_lw_50_to_125 {ADDRESS_WIDTH} {14}
set_instance_parameter_value ccb_lw_50_to_125 {COMMAND_FIFO_DEPTH} {2}
set_instance_parameter_value ccb_lw_50_to_125 {DATA_WIDTH} {32}
set_instance_parameter_value ccb_lw_50_to_125 {MASTER_SYNC_DEPTH} {2}
set_instance_parameter_value ccb_lw_50_to_125 {MAX_BURST_SIZE} {1}
set_instance_parameter_value ccb_lw_50_to_125 {RESPONSE_FIFO_DEPTH} {2}
set_instance_parameter_value ccb_lw_50_to_125 {SLAVE_SYNC_DEPTH} {2}
set_instance_parameter_value ccb_lw_50_to_125 {SYMBOL_WIDTH} {8}
set_instance_parameter_value ccb_lw_50_to_125 {USE_AUTO_ADDRESS_WIDTH} {0}

add_instance coreclk_fanout clock_source 18.1
set_instance_parameter_value coreclk_fanout {clockFrequency} {125000000.0}
set_instance_parameter_value coreclk_fanout {clockFrequencyKnown} {1}
set_instance_parameter_value coreclk_fanout {resetSynchronousEdges} {NONE}

add_instance hps_0 altera_hps 18.1
set_instance_parameter_value hps_0 {ABSTRACT_REAL_COMPARE_TEST} {0}
set_instance_parameter_value hps_0 {ABS_RAM_MEM_INIT_FILENAME} {meminit}
set_instance_parameter_value hps_0 {ACV_PHY_CLK_ADD_FR_PHASE} {0.0}
set_instance_parameter_value hps_0 {AC_PACKAGE_DESKEW} {0}
set_instance_parameter_value hps_0 {AC_ROM_USER_ADD_0} {0_0000_0000_0000}
set_instance_parameter_value hps_0 {AC_ROM_USER_ADD_1} {0_0000_0000_1000}
set_instance_parameter_value hps_0 {ADDR_ORDER} {0}
set_instance_parameter_value hps_0 {ADD_EFFICIENCY_MONITOR} {0}
set_instance_parameter_value hps_0 {ADD_EXTERNAL_SEQ_DEBUG_NIOS} {0}
set_instance_parameter_value hps_0 {ADVANCED_CK_PHASES} {0}
set_instance_parameter_value hps_0 {ADVERTIZE_SEQUENCER_SW_BUILD_FILES} {0}
set_instance_parameter_value hps_0 {AFI_DEBUG_INFO_WIDTH} {32}
set_instance_parameter_value hps_0 {ALTMEMPHY_COMPATIBLE_MODE} {0}
set_instance_parameter_value hps_0 {AP_MODE} {0}
set_instance_parameter_value hps_0 {AP_MODE_EN} {0}
set_instance_parameter_value hps_0 {AUTO_PD_CYCLES} {0}
set_instance_parameter_value hps_0 {AUTO_POWERDN_EN} {0}
set_instance_parameter_value hps_0 {AVL_DATA_WIDTH_PORT} {32 32 32 32 32 32}
set_instance_parameter_value hps_0 {AVL_MAX_SIZE} {4}
set_instance_parameter_value hps_0 {BONDING_OUT_ENABLED} {0}
set_instance_parameter_value hps_0 {BOOTFROMFPGA_Enable} {0}
set_instance_parameter_value hps_0 {BSEL} {1}
set_instance_parameter_value hps_0 {BSEL_EN} {0}
set_instance_parameter_value hps_0 {BYTE_ENABLE} {1}
set_instance_parameter_value hps_0 {C2P_WRITE_CLOCK_ADD_PHASE} {0.0}
set_instance_parameter_value hps_0 {CALIBRATION_MODE} {Skip}
set_instance_parameter_value hps_0 {CALIB_REG_WIDTH} {8}
set_instance_parameter_value hps_0 {CAN0_Mode} {N/A}
set_instance_parameter_value hps_0 {CAN0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {CAN1_Mode} {N/A}
set_instance_parameter_value hps_0 {CAN1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {CFG_DATA_REORDERING_TYPE} {INTER_BANK}
set_instance_parameter_value hps_0 {CFG_REORDER_DATA} {1}
set_instance_parameter_value hps_0 {CFG_TCCD_NS} {2.5}
set_instance_parameter_value hps_0 {COMMAND_PHASE} {0.0}
set_instance_parameter_value hps_0 {CONTROLLER_LATENCY} {5}
set_instance_parameter_value hps_0 {CORE_DEBUG_CONNECTION} {EXPORT}
set_instance_parameter_value hps_0 {CPORT_TYPE_PORT} {Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional Bidirectional}
set_instance_parameter_value hps_0 {CSEL} {0}
set_instance_parameter_value hps_0 {CSEL_EN} {0}
set_instance_parameter_value hps_0 {CTI_Enable} {0}
set_instance_parameter_value hps_0 {CTL_AUTOPCH_EN} {0}
set_instance_parameter_value hps_0 {CTL_CMD_QUEUE_DEPTH} {8}
set_instance_parameter_value hps_0 {CTL_CSR_CONNECTION} {INTERNAL_JTAG}
set_instance_parameter_value hps_0 {CTL_CSR_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_CSR_READ_ONLY} {1}
set_instance_parameter_value hps_0 {CTL_DEEP_POWERDN_EN} {0}
set_instance_parameter_value hps_0 {CTL_DYNAMIC_BANK_ALLOCATION} {0}
set_instance_parameter_value hps_0 {CTL_DYNAMIC_BANK_NUM} {4}
set_instance_parameter_value hps_0 {CTL_ECC_AUTO_CORRECTION_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_ECC_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_ENABLE_BURST_INTERRUPT} {1}
set_instance_parameter_value hps_0 {CTL_ENABLE_BURST_TERMINATE} {1}
set_instance_parameter_value hps_0 {CTL_HRB_ENABLED} {0}
set_instance_parameter_value hps_0 {CTL_LOOK_AHEAD_DEPTH} {4}
set_instance_parameter_value hps_0 {CTL_SELF_REFRESH_EN} {0}
set_instance_parameter_value hps_0 {CTL_USR_REFRESH_EN} {0}
set_instance_parameter_value hps_0 {CTL_ZQCAL_EN} {0}
set_instance_parameter_value hps_0 {CUT_NEW_FAMILY_TIMING} {1}
set_instance_parameter_value hps_0 {DAT_DATA_WIDTH} {32}
set_instance_parameter_value hps_0 {DEBUGAPB_Enable} {0}
set_instance_parameter_value hps_0 {DEBUG_MODE} {0}
set_instance_parameter_value hps_0 {DEVICE_DEPTH} {1}
set_instance_parameter_value hps_0 {DEVICE_FAMILY_PARAM} {}
set_instance_parameter_value hps_0 {DISABLE_CHILD_MESSAGING} {0}
set_instance_parameter_value hps_0 {DISCRETE_FLY_BY} {1}
set_instance_parameter_value hps_0 {DLL_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {DMA_Enable} {No No No No No No No No}
set_instance_parameter_value hps_0 {DQS_DQSN_MODE} {DIFFERENTIAL}
set_instance_parameter_value hps_0 {DQ_INPUT_REG_USE_CLKN} {0}
set_instance_parameter_value hps_0 {DUPLICATE_AC} {0}
set_instance_parameter_value hps_0 {ED_EXPORT_SEQ_DEBUG} {0}
set_instance_parameter_value hps_0 {EMAC0_Mode} {N/A}
set_instance_parameter_value hps_0 {EMAC0_PTP} {0}
set_instance_parameter_value hps_0 {EMAC0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {EMAC1_Mode} {RGMII}
set_instance_parameter_value hps_0 {EMAC1_PTP} {0}
set_instance_parameter_value hps_0 {EMAC1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {ENABLE_ABS_RAM_MEM_INIT} {0}
set_instance_parameter_value hps_0 {ENABLE_BONDING} {0}
set_instance_parameter_value hps_0 {ENABLE_BURST_MERGE} {0}
set_instance_parameter_value hps_0 {ENABLE_CTRL_AVALON_INTERFACE} {1}
set_instance_parameter_value hps_0 {ENABLE_DELAY_CHAIN_WRITE} {0}
set_instance_parameter_value hps_0 {ENABLE_EMIT_BFM_MASTER} {0}
set_instance_parameter_value hps_0 {ENABLE_EXPORT_SEQ_DEBUG_BRIDGE} {0}
set_instance_parameter_value hps_0 {ENABLE_EXTRA_REPORTING} {0}
set_instance_parameter_value hps_0 {ENABLE_ISS_PROBES} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DESTRUCTIVE_CALIB} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DES_CAL} {0}
set_instance_parameter_value hps_0 {ENABLE_NON_DES_CAL_TEST} {0}
set_instance_parameter_value hps_0 {ENABLE_SEQUENCER_MARGINING_ON_BY_DEFAULT} {0}
set_instance_parameter_value hps_0 {ENABLE_USER_ECC} {0}
set_instance_parameter_value hps_0 {EXPORT_AFI_HALF_CLK} {0}
set_instance_parameter_value hps_0 {EXTRA_SETTINGS} {}
set_instance_parameter_value hps_0 {F2SCLK_COLDRST_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_DBGRST_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_PERIPHCLK_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_SDRAMCLK_Enable} {0}
set_instance_parameter_value hps_0 {F2SCLK_WARMRST_Enable} {0}
set_instance_parameter_value hps_0 {F2SDRAM_Type} {Avalon-MM\ Bidirectional}
set_instance_parameter_value hps_0 {F2SDRAM_Width} {64}
set_instance_parameter_value hps_0 {F2SINTERRUPT_Enable} {1}
set_instance_parameter_value hps_0 {F2S_Width} {2}
set_instance_parameter_value hps_0 {FIX_READ_LATENCY} {8}
set_instance_parameter_value hps_0 {FORCED_NON_LDC_ADDR_CMD_MEM_CK_INVERT} {0}
set_instance_parameter_value hps_0 {FORCED_NUM_WRITE_FR_CYCLE_SHIFTS} {0}
set_instance_parameter_value hps_0 {FORCE_DQS_TRACKING} {AUTO}
set_instance_parameter_value hps_0 {FORCE_MAX_LATENCY_COUNT_WIDTH} {0}
set_instance_parameter_value hps_0 {FORCE_SEQUENCER_TCL_DEBUG_MODE} {0}
set_instance_parameter_value hps_0 {FORCE_SHADOW_REGS} {AUTO}
set_instance_parameter_value hps_0 {FORCE_SYNTHESIS_LANGUAGE} {}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_GTX_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC0_MD_CLK} {100.0}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_GTX_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_EMAC1_MD_CLK} {100.0}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C0_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C1_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C2_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_I2C3_CLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_QSPI_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SDIO_CCLK} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM0_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {FPGA_PERIPHERAL_OUTPUT_CLOCK_FREQ_SPIM1_SCLK_OUT} {100}
set_instance_parameter_value hps_0 {GPIO_Enable} {Yes No No No No No No No No Yes No No No No No No No No No No No No No No No No No No Yes No No No No No No Yes No No No No No No No No Yes No No No Yes No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
set_instance_parameter_value hps_0 {GP_Enable} {0}
set_instance_parameter_value hps_0 {HARD_EMIF} {1}
set_instance_parameter_value hps_0 {HCX_COMPAT_MODE} {0}
set_instance_parameter_value hps_0 {HHP_HPS} {1}
set_instance_parameter_value hps_0 {HHP_HPS_SIMULATION} {0}
set_instance_parameter_value hps_0 {HHP_HPS_VERIFICATION} {0}
set_instance_parameter_value hps_0 {HLGPI_Enable} {0}
set_instance_parameter_value hps_0 {HPS_PROTOCOL} {DDR3}
set_instance_parameter_value hps_0 {I2C0_Mode} {N/A}
set_instance_parameter_value hps_0 {I2C0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {I2C1_Mode} {N/A}
set_instance_parameter_value hps_0 {I2C1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {I2C2_Mode} {N/A}
set_instance_parameter_value hps_0 {I2C2_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {I2C3_Mode} {Full}
set_instance_parameter_value hps_0 {I2C3_PinMuxing} {FPGA}
set_instance_parameter_value hps_0 {INCLUDE_BOARD_DELAY_MODEL} {0}
set_instance_parameter_value hps_0 {INCLUDE_MULTIRANK_BOARD_DELAY_MODEL} {0}
set_instance_parameter_value hps_0 {IS_ES_DEVICE} {0}
set_instance_parameter_value hps_0 {LOANIO_Enable} {No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No No}
set_instance_parameter_value hps_0 {LOCAL_ID_WIDTH} {8}
set_instance_parameter_value hps_0 {LRDIMM_EXTENDED_CONFIG} {0x000000000000000000}
set_instance_parameter_value hps_0 {LWH2F_Enable} {true}
set_instance_parameter_value hps_0 {MARGIN_VARIATION_TEST} {0}
set_instance_parameter_value hps_0 {MAX_PENDING_RD_CMD} {16}
set_instance_parameter_value hps_0 {MAX_PENDING_WR_CMD} {8}
set_instance_parameter_value hps_0 {MEM_ASR} {Manual}
set_instance_parameter_value hps_0 {MEM_ATCL} {Disabled}
set_instance_parameter_value hps_0 {MEM_AUTO_LEVELING_MODE} {1}
set_instance_parameter_value hps_0 {MEM_BANKADDR_WIDTH} {3}
set_instance_parameter_value hps_0 {MEM_BL} {OTF}
set_instance_parameter_value hps_0 {MEM_BT} {Sequential}
set_instance_parameter_value hps_0 {MEM_CK_PHASE} {0.0}
set_instance_parameter_value hps_0 {MEM_CK_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_CLK_EN_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ} {533.333}
set_instance_parameter_value hps_0 {MEM_CLK_FREQ_MAX} {800.0}
set_instance_parameter_value hps_0 {MEM_COL_ADDR_WIDTH} {10}
set_instance_parameter_value hps_0 {MEM_CS_WIDTH} {1}
set_instance_parameter_value hps_0 {MEM_DEVICE} {MISSING_MODEL}
set_instance_parameter_value hps_0 {MEM_DLL_EN} {1}
set_instance_parameter_value hps_0 {MEM_DQ_PER_DQS} {8}
set_instance_parameter_value hps_0 {MEM_DQ_WIDTH} {40}
set_instance_parameter_value hps_0 {MEM_DRV_STR} {RZQ/7}
set_instance_parameter_value hps_0 {MEM_FORMAT} {DISCRETE}
set_instance_parameter_value hps_0 {MEM_GUARANTEED_WRITE_INIT} {0}
set_instance_parameter_value hps_0 {MEM_IF_BOARD_BASE_DELAY} {10}
set_instance_parameter_value hps_0 {MEM_IF_DM_PINS_EN} {1}
set_instance_parameter_value hps_0 {MEM_IF_DQSN_EN} {1}
set_instance_parameter_value hps_0 {MEM_IF_SIM_VALID_WINDOW} {0}
set_instance_parameter_value hps_0 {MEM_INIT_EN} {0}
set_instance_parameter_value hps_0 {MEM_INIT_FILE} {}
set_instance_parameter_value hps_0 {MEM_MIRROR_ADDRESSING} {0}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_DIMMS} {1}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_RANKS_PER_DEVICE} {1}
set_instance_parameter_value hps_0 {MEM_NUMBER_OF_RANKS_PER_DIMM} {1}
set_instance_parameter_value hps_0 {MEM_PD} {DLL off}
set_instance_parameter_value hps_0 {MEM_RANK_MULTIPLICATION_FACTOR} {1}
set_instance_parameter_value hps_0 {MEM_ROW_ADDR_WIDTH} {16}
set_instance_parameter_value hps_0 {MEM_RTT_NOM} {RZQ/4}
set_instance_parameter_value hps_0 {MEM_RTT_WR} {RZQ/4}
set_instance_parameter_value hps_0 {MEM_SRT} {Normal}
set_instance_parameter_value hps_0 {MEM_TCL} {7}
set_instance_parameter_value hps_0 {MEM_TFAW_NS} {40.0}
set_instance_parameter_value hps_0 {MEM_TINIT_US} {500}
set_instance_parameter_value hps_0 {MEM_TMRD_CK} {4}
set_instance_parameter_value hps_0 {MEM_TRAS_NS} {35.0}
set_instance_parameter_value hps_0 {MEM_TRCD_NS} {13.75}
set_instance_parameter_value hps_0 {MEM_TREFI_US} {7.8}
set_instance_parameter_value hps_0 {MEM_TRFC_NS} {350.0}
set_instance_parameter_value hps_0 {MEM_TRP_NS} {13.75}
set_instance_parameter_value hps_0 {MEM_TRRD_NS} {7.5}
set_instance_parameter_value hps_0 {MEM_TRTP_NS} {7.5}
set_instance_parameter_value hps_0 {MEM_TWR_NS} {15.0}
set_instance_parameter_value hps_0 {MEM_TWTR} {4}
set_instance_parameter_value hps_0 {MEM_USER_LEVELING_MODE} {Leveling}
set_instance_parameter_value hps_0 {MEM_VENDOR} {Micron}
set_instance_parameter_value hps_0 {MEM_VERBOSE} {1}
set_instance_parameter_value hps_0 {MEM_VOLTAGE} {1.35V DDR3L}
set_instance_parameter_value hps_0 {MEM_WTCL} {6}
set_instance_parameter_value hps_0 {MPU_EVENTS_Enable} {0}
set_instance_parameter_value hps_0 {MRS_MIRROR_PING_PONG_ATSO} {0}
set_instance_parameter_value hps_0 {MULTICAST_EN} {0}
set_instance_parameter_value hps_0 {NAND_Mode} {N/A}
set_instance_parameter_value hps_0 {NAND_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {NEXTGEN} {1}
set_instance_parameter_value hps_0 {NIOS_ROM_DATA_WIDTH} {32}
set_instance_parameter_value hps_0 {NUM_DLL_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {NUM_EXTRA_REPORT_PATH} {10}
set_instance_parameter_value hps_0 {NUM_OCT_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {NUM_OF_PORTS} {1}
set_instance_parameter_value hps_0 {NUM_PLL_SHARING_INTERFACES} {1}
set_instance_parameter_value hps_0 {OCT_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {P2C_READ_CLOCK_ADD_PHASE} {0.0}
set_instance_parameter_value hps_0 {PACKAGE_DESKEW} {0}
set_instance_parameter_value hps_0 {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM} {}
set_instance_parameter_value hps_0 {PARSE_FRIENDLY_DEVICE_FAMILY_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {PHY_CSR_CONNECTION} {INTERNAL_JTAG}
set_instance_parameter_value hps_0 {PHY_CSR_ENABLED} {0}
set_instance_parameter_value hps_0 {PHY_ONLY} {0}
set_instance_parameter_value hps_0 {PINGPONGPHY_EN} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_ADDR_CMD_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_HALF_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_AFI_PHY_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_C2P_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_CLK_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_CONFIG_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_DR_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_DR_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_DR_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_HR_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_HR_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_HR_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_LOCATION} {Top_Bottom}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_MEM_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_NIOS_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_P2C_READ_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_SHARING_MODE} {None}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_DIV_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_FREQ_PARAM} {0.0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_FREQ_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_MULT_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_PHASE_PS_PARAM} {0}
set_instance_parameter_value hps_0 {PLL_WRITE_CLK_PHASE_PS_SIM_STR_PARAM} {}
set_instance_parameter_value hps_0 {POWER_OF_TWO_BUS} {0}
set_instance_parameter_value hps_0 {PRIORITY_PORT} {1 1 1 1 1 1}
set_instance_parameter_value hps_0 {QSPI_Mode} {1 SS}
set_instance_parameter_value hps_0 {QSPI_PinMuxing} {HPS I/O Set 1}
set_instance_parameter_value hps_0 {RATE} {Full}
set_instance_parameter_value hps_0 {RDIMM_CONFIG} {0000000000000000}
set_instance_parameter_value hps_0 {READ_DQ_DQS_CLOCK_SOURCE} {INVERTED_DQS_BUS}
set_instance_parameter_value hps_0 {READ_FIFO_SIZE} {8}
set_instance_parameter_value hps_0 {REFRESH_BURST_VALIDATION} {0}
set_instance_parameter_value hps_0 {REFRESH_INTERVAL} {15000}
set_instance_parameter_value hps_0 {REF_CLK_FREQ} {25.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_MAX_PARAM} {0.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_MIN_PARAM} {0.0}
set_instance_parameter_value hps_0 {REF_CLK_FREQ_PARAM_VALID} {0}
set_instance_parameter_value hps_0 {S2FCLK_COLDRST_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_PENDINGRST_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER0CLK_Enable} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_Enable} {0}
set_instance_parameter_value hps_0 {S2FCLK_USER1CLK_FREQ} {100.0}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK} {12}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_Enable} {1}
set_instance_parameter_value hps_0 {S2FCLK_USER2CLK_FREQ} {100.0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CAN_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CLOCKPERIPHERAL_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_CTI_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_DMA_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_EMAC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_FPGAMANAGER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_GPIO_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_I2CEMAC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_I2CPERIPHERAL_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_L4TIMER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_NAND_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_OSCTIMER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_QSPI_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SDMMC_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SPIMASTER_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_SPISLAVE_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_UART_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_USB_Enable} {0}
set_instance_parameter_value hps_0 {S2FINTERRUPT_WATCHDOG_Enable} {0}
set_instance_parameter_value hps_0 {S2F_Width} {2}
set_instance_parameter_value hps_0 {SDIO_Mode} {4-bit Data with PWREN}
set_instance_parameter_value hps_0 {SDIO_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {SEQUENCER_TYPE} {NIOS}
set_instance_parameter_value hps_0 {SEQ_MODE} {0}
set_instance_parameter_value hps_0 {SKIP_MEM_INIT} {1}
set_instance_parameter_value hps_0 {SOPC_COMPAT_RESET} {0}
set_instance_parameter_value hps_0 {SPEED_GRADE} {7}
set_instance_parameter_value hps_0 {SPIM0_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIM0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {SPIM1_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIM1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {SPIS0_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIS0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {SPIS1_Mode} {N/A}
set_instance_parameter_value hps_0 {SPIS1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {STARVE_LIMIT} {10}
set_instance_parameter_value hps_0 {STM_Enable} {0}
set_instance_parameter_value hps_0 {TEST_Enable} {0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_EYE_REDUCTION_H} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_EYE_REDUCTION_SU} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_SKEW} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_SLEW_RATE} {1.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_AC_TO_CK_SKEW} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_CK_CKN_SLEW_RATE} {2.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DELTA_DQS_ARRIVAL_TIME} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DELTA_READ_DQS_ARRIVAL_TIME} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DERATE_METHOD} {AUTO}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQS_DQSN_SLEW_RATE} {2.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_EYE_REDUCTION} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_SLEW_RATE} {1.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_DQ_TO_DQS_SKEW} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_ISI_METHOD} {AUTO}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_CK_DELAY} {0.52}
set_instance_parameter_value hps_0 {TIMING_BOARD_MAX_DQS_DELAY} {0.22}
set_instance_parameter_value hps_0 {TIMING_BOARD_READ_DQ_EYE_REDUCTION} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_BETWEEN_DIMMS} {0.05}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_BETWEEN_DQS} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MAX} {0.3}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_CKDQS_DIMM_MIN} {0.13}
set_instance_parameter_value hps_0 {TIMING_BOARD_SKEW_WITHIN_DQS} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TDH} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TDS} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TIH} {0.0}
set_instance_parameter_value hps_0 {TIMING_BOARD_TIS} {0.0}
set_instance_parameter_value hps_0 {TIMING_TDH} {55}
set_instance_parameter_value hps_0 {TIMING_TDQSCK} {225}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDL} {1200}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDM} {900}
set_instance_parameter_value hps_0 {TIMING_TDQSCKDS} {450}
set_instance_parameter_value hps_0 {TIMING_TDQSH} {0.35}
set_instance_parameter_value hps_0 {TIMING_TDQSQ} {100}
set_instance_parameter_value hps_0 {TIMING_TDQSS} {0.27}
set_instance_parameter_value hps_0 {TIMING_TDS} {25}
set_instance_parameter_value hps_0 {TIMING_TDSH} {0.18}
set_instance_parameter_value hps_0 {TIMING_TDSS} {0.18}
set_instance_parameter_value hps_0 {TIMING_TIH} {130}
set_instance_parameter_value hps_0 {TIMING_TIS} {60}
set_instance_parameter_value hps_0 {TIMING_TQH} {0.38}
set_instance_parameter_value hps_0 {TIMING_TQHS} {300}
set_instance_parameter_value hps_0 {TIMING_TQSH} {0.4}
set_instance_parameter_value hps_0 {TPIUFPGA_Enable} {0}
set_instance_parameter_value hps_0 {TPIUFPGA_alt} {0}
set_instance_parameter_value hps_0 {TRACE_Mode} {N/A}
set_instance_parameter_value hps_0 {TRACE_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {TRACKING_ERROR_TEST} {0}
set_instance_parameter_value hps_0 {TRACKING_WATCH_TEST} {0}
set_instance_parameter_value hps_0 {TREFI} {35100}
set_instance_parameter_value hps_0 {TRFC} {350}
set_instance_parameter_value hps_0 {UART0_Mode} {No Flow Control}
set_instance_parameter_value hps_0 {UART0_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {UART1_Mode} {N/A}
set_instance_parameter_value hps_0 {UART1_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {USB0_Mode} {N/A}
set_instance_parameter_value hps_0 {USB0_PinMuxing} {Unused}
set_instance_parameter_value hps_0 {USB1_Mode} {SDR}
set_instance_parameter_value hps_0 {USB1_PinMuxing} {HPS I/O Set 0}
set_instance_parameter_value hps_0 {USER_DEBUG_LEVEL} {1}
set_instance_parameter_value hps_0 {USE_AXI_ADAPTOR} {0}
set_instance_parameter_value hps_0 {USE_FAKE_PHY} {0}
set_instance_parameter_value hps_0 {USE_MEM_CLK_FREQ} {0}
set_instance_parameter_value hps_0 {USE_MM_ADAPTOR} {1}
set_instance_parameter_value hps_0 {USE_SEQUENCER_BFM} {0}
set_instance_parameter_value hps_0 {WEIGHT_PORT} {0 0 0 0 0 0}
set_instance_parameter_value hps_0 {WRBUFFER_ADDR_WIDTH} {6}
set_instance_parameter_value hps_0 {can0_clk_div} {1}
set_instance_parameter_value hps_0 {can1_clk_div} {1}
set_instance_parameter_value hps_0 {configure_advanced_parameters} {0}
set_instance_parameter_value hps_0 {customize_device_pll_info} {0}
set_instance_parameter_value hps_0 {dbctrl_stayosc1} {1}
set_instance_parameter_value hps_0 {dbg_at_clk_div} {0}
set_instance_parameter_value hps_0 {dbg_clk_div} {1}
set_instance_parameter_value hps_0 {dbg_trace_clk_div} {0}
set_instance_parameter_value hps_0 {desired_can0_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_can1_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_cfg_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_emac0_clk_mhz} {250.0}
set_instance_parameter_value hps_0 {desired_emac1_clk_mhz} {250.0}
set_instance_parameter_value hps_0 {desired_gpio_db_clk_hz} {32000}
set_instance_parameter_value hps_0 {desired_l4_mp_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_l4_sp_clk_mhz} {100.0}
set_instance_parameter_value hps_0 {desired_mpu_clk_mhz} {800.0}
set_instance_parameter_value hps_0 {desired_nand_clk_mhz} {12.5}
set_instance_parameter_value hps_0 {desired_qspi_clk_mhz} {400.0}
set_instance_parameter_value hps_0 {desired_sdmmc_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {desired_spi_m_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {desired_usb_mp_clk_mhz} {200.0}
set_instance_parameter_value hps_0 {device_pll_info_manual} {{320000000 1600000000} {320000000 1000000000} {800000000 400000000 400000000}}
set_instance_parameter_value hps_0 {eosc1_clk_mhz} {25.0}
set_instance_parameter_value hps_0 {eosc2_clk_mhz} {25.0}
set_instance_parameter_value hps_0 {gpio_db_clk_div} {6249}
set_instance_parameter_value hps_0 {l3_mp_clk_div} {1}
set_instance_parameter_value hps_0 {l3_sp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_mp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_mp_clk_source} {1}
set_instance_parameter_value hps_0 {l4_sp_clk_div} {1}
set_instance_parameter_value hps_0 {l4_sp_clk_source} {1}
set_instance_parameter_value hps_0 {main_pll_c3} {3}
set_instance_parameter_value hps_0 {main_pll_c4} {3}
set_instance_parameter_value hps_0 {main_pll_c5} {15}
set_instance_parameter_value hps_0 {main_pll_m} {63}
set_instance_parameter_value hps_0 {main_pll_n} {0}
set_instance_parameter_value hps_0 {nand_clk_source} {2}
set_instance_parameter_value hps_0 {periph_pll_c0} {3}
set_instance_parameter_value hps_0 {periph_pll_c1} {3}
set_instance_parameter_value hps_0 {periph_pll_c2} {1}
set_instance_parameter_value hps_0 {periph_pll_c3} {19}
set_instance_parameter_value hps_0 {periph_pll_c4} {4}
set_instance_parameter_value hps_0 {periph_pll_c5} {9}
set_instance_parameter_value hps_0 {periph_pll_m} {79}
set_instance_parameter_value hps_0 {periph_pll_n} {1}
set_instance_parameter_value hps_0 {periph_pll_source} {0}
set_instance_parameter_value hps_0 {qspi_clk_source} {1}
set_instance_parameter_value hps_0 {sdmmc_clk_source} {2}
set_instance_parameter_value hps_0 {show_advanced_parameters} {0}
set_instance_parameter_value hps_0 {show_debug_info_as_warning_msg} {0}
set_instance_parameter_value hps_0 {show_warning_as_error_msg} {0}
set_instance_parameter_value hps_0 {spi_m_clk_div} {0}
set_instance_parameter_value hps_0 {usb_mp_clk_div} {0}
set_instance_parameter_value hps_0 {use_default_mpu_clk} {1}

add_instance msi_to_gic_gen_0 altera_msi_to_gic_gen 1.0
set_instance_parameter_value msi_to_gic_gen_0 {DATA_ENTRY_DEPTH} {1}
set_instance_parameter_value msi_to_gic_gen_0 {MEMORY_TYPE} {RAM_BLOCK_TYPE=MLAB}
set_instance_parameter_value msi_to_gic_gen_0 {MSG_DATA_WORD} {1}

add_instance pb_f2sdram altera_avalon_mm_bridge 18.1
set_instance_parameter_value pb_f2sdram {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value pb_f2sdram {ADDRESS_WIDTH} {31}
set_instance_parameter_value pb_f2sdram {DATA_WIDTH} {64}
set_instance_parameter_value pb_f2sdram {LINEWRAPBURSTS} {0}
set_instance_parameter_value pb_f2sdram {MAX_BURST_SIZE} {64}
set_instance_parameter_value pb_f2sdram {MAX_PENDING_RESPONSES} {4}
set_instance_parameter_value pb_f2sdram {PIPELINE_COMMAND} {1}
set_instance_parameter_value pb_f2sdram {PIPELINE_RESPONSE} {1}
set_instance_parameter_value pb_f2sdram {SYMBOL_WIDTH} {8}
set_instance_parameter_value pb_f2sdram {USE_AUTO_ADDRESS_WIDTH} {0}
set_instance_parameter_value pb_f2sdram {USE_RESPONSE} {0}

add_instance pb_rxm_2_msi altera_avalon_mm_bridge 18.1
set_instance_parameter_value pb_rxm_2_msi {ADDRESS_UNITS} {SYMBOLS}
set_instance_parameter_value pb_rxm_2_msi {ADDRESS_WIDTH} {7}
set_instance_parameter_value pb_rxm_2_msi {DATA_WIDTH} {32}
set_instance_parameter_value pb_rxm_2_msi {LINEWRAPBURSTS} {0}
set_instance_parameter_value pb_rxm_2_msi {MAX_BURST_SIZE} {1}
set_instance_parameter_value pb_rxm_2_msi {MAX_PENDING_RESPONSES} {2}
set_instance_parameter_value pb_rxm_2_msi {PIPELINE_COMMAND} {1}
set_instance_parameter_value pb_rxm_2_msi {PIPELINE_RESPONSE} {1}
set_instance_parameter_value pb_rxm_2_msi {SYMBOL_WIDTH} {8}
set_instance_parameter_value pb_rxm_2_msi {USE_AUTO_ADDRESS_WIDTH} {0}
set_instance_parameter_value pb_rxm_2_msi {USE_RESPONSE} {0}

add_instance pcie_cv_hip_avmm_0 altera_pcie_cv_hip_avmm 18.1
set_instance_parameter_value pcie_cv_hip_avmm_0 {AST_LITE} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {AVALON_ADDR_WIDTH} {32}
set_instance_parameter_value pcie_cv_hip_avmm_0 {AddressPage} {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}
set_instance_parameter_value pcie_cv_hip_avmm_0 {BYPASSS_A2P_TRANSLATION} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_0_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_0_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_10_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_10_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_11_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_11_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_12_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_12_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_13_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_13_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_14_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_14_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_15_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_15_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_1_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_1_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_2_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_2_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_3_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_3_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_4_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_4_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_5_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_5_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_6_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_6_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_7_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_7_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_8_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_8_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_9_HIGH} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_FIXED_TABLE_9_LOW} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_IS_FIXED} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_NUM_ENTRIES} {2}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_A2P_ADDR_MAP_PASS_THRU_BITS} {28}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B0} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B1} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B2} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B3} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B4} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_AVALON_ADDR_B5} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B0} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B1} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B2} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B3} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B4} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_P2A_FIXED_AVALON_ADDR_B5} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_PCIE_MODE} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_PCIE_RX_LITE} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CB_RP_S_ADDR_WIDTH} {32}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_COMMON_CLOCK_MODE} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_ENABLE_A2P_INTERRUPT} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_ENABLE_ADVANCED_INTERRUPT} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_ENABLE_HIP_STATUS} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_ENABLE_HIP_STATUS_EXTENSION} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_IMPL_CRA_AV_SLAVE_PORT} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {CG_RXM_IRQ_NUM} {16}
set_instance_parameter_value pcie_cv_hip_avmm_0 {NUM_PREFETCH_MASTERS} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {PCIeAddress31_0} {0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000}
set_instance_parameter_value pcie_cv_hip_avmm_0 {PCIeAddress63_32} {0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000}
set_instance_parameter_value pcie_cv_hip_avmm_0 {RXM_BEN_WIDTH} {8}
set_instance_parameter_value pcie_cv_hip_avmm_0 {RXM_DATA_WIDTH} {64}
set_instance_parameter_value pcie_cv_hip_avmm_0 {TX_S_ADDR_WIDTH} {32}
set_instance_parameter_value pcie_cv_hip_avmm_0 {advanced_default_parameter_override} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {altpcie_avmm_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {atomic_malformed_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {atomic_op_completer_32bit_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {atomic_op_completer_64bit_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {atomic_op_routing_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {avmm_width_hwtcl} {64}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar0_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar1_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar2_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar3_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar4_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bar5_type_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bridge_port_ssid_support_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bridge_port_vga_enable_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bypass_cdc_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {bypass_tl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {cas_completer_128bit_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {cdc_dummy_insert_limit_advanced_default_hwtcl} {11}
set_instance_parameter_value pcie_cv_hip_avmm_0 {class_code_hwtcl} {394240}
set_instance_parameter_value pcie_cv_hip_avmm_0 {completion_timeout_hwtcl} {ABCD}
set_instance_parameter_value pcie_cv_hip_avmm_0 {coreclkout_hip_phaseshift_hwtcl} {0 ps}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d0_pme_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d1_pme_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d1_support_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d2_pme_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d2_support_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d3_cold_pme_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {d3_hot_pme_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {data_pack_rx_hwtcl} {disable}
set_instance_parameter_value pcie_cv_hip_avmm_0 {deemphasis_enable_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {deskew_comma_hwtcl} {skp_eieos_deskw}
set_instance_parameter_value pcie_cv_hip_avmm_0 {device_id_hwtcl} {57344}
set_instance_parameter_value pcie_cv_hip_avmm_0 {device_number_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {diffclock_nfts_count_advanced_default_hwtcl} {255}
set_instance_parameter_value pcie_cv_hip_avmm_0 {disable_link_x2_support_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {disable_snoop_packet_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {dll_active_report_support_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ecrc_check_capable_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ecrc_gen_capable_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ei_delay_powerdown_count_advanced_default_hwtcl} {10}
set_instance_parameter_value pcie_cv_hip_avmm_0 {eie_before_nfts_count_advanced_default_hwtcl} {4}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_completion_timeout_disable_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_function_msix_support_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_l0s_aspm_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_l1_aspm_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_rx_buffer_checking_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {enable_slot_register_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {endpoint_l0_latency_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {endpoint_l1_latency_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {expansion_base_address_register_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {extend_tag_field_hwtcl} {32}
set_instance_parameter_value pcie_cv_hip_avmm_0 {extended_format_field_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {extended_tag_reset_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {fc_init_timer_advanced_default_hwtcl} {1024}
set_instance_parameter_value pcie_cv_hip_avmm_0 {fixed_address_mode} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {flow_control_timeout_count_advanced_default_hwtcl} {200}
set_instance_parameter_value pcie_cv_hip_avmm_0 {flow_control_update_count_advanced_default_hwtcl} {30}
set_instance_parameter_value pcie_cv_hip_avmm_0 {flr_capability_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {force_hrc} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {force_src} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {gen123_lane_rate_mode_hwtcl} {Gen1 (2.5 Gbps)}
set_instance_parameter_value pcie_cv_hip_avmm_0 {gen2_diffclock_nfts_count_advanced_default_hwtcl} {255}
set_instance_parameter_value pcie_cv_hip_avmm_0 {gen2_sameclock_nfts_count_advanced_default_hwtcl} {255}
set_instance_parameter_value pcie_cv_hip_avmm_0 {gen3_rxfreqlock_counter_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {hip_reconfig_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {hot_plug_support_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {in_cvp_mode_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {indicator_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {interrupt_pin_hwtcl} {inta}
set_instance_parameter_value pcie_cv_hip_avmm_0 {io_window_addr_width_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l01_entry_latency_advanced_default_hwtcl} {31}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l0_exit_latency_diffclock_advanced_default_hwtcl} {6}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l0_exit_latency_sameclock_advanced_default_hwtcl} {6}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l1_exit_latency_diffclock_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l1_exit_latency_sameclock_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {l2_async_logic_advanced_default_hwtcl} {disable}
set_instance_parameter_value pcie_cv_hip_avmm_0 {lane_mask_hwtcl} {x2}
set_instance_parameter_value pcie_cv_hip_avmm_0 {low_priority_vc_advanced_default_hwtcl} {single_vc}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ltr_mechanism_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ltssm_1ms_timeout_hwtcl} {disable}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ltssm_freqlocked_check_hwtcl} {disable}
set_instance_parameter_value pcie_cv_hip_avmm_0 {max_payload_size_hwtcl} {256}
set_instance_parameter_value pcie_cv_hip_avmm_0 {maximum_current_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msi_64bit_addressing_capable_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msi_masking_capable_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msi_multi_message_capable_hwtcl} {4}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msi_support_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msix_pba_bir_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msix_pba_offset_hwtcl} {0.0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msix_table_bir_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msix_table_offset_hwtcl} {0.0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {msix_table_size_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {no_command_completed_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {no_soft_reset_advanced_default_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {override_rxbuffer_cred_preset} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {override_tbpartner_driver_setting_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {pcie_qsys} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {pclk_out_sel_advanced_default_hwtcl} {pclk}
set_instance_parameter_value pcie_cv_hip_avmm_0 {pipex1_debug_sel_advanced_default_hwtcl} {disable}
set_instance_parameter_value pcie_cv_hip_avmm_0 {pldclk_hip_phase_shift_hwtcl} {0 ps}
set_instance_parameter_value pcie_cv_hip_avmm_0 {pll_refclk_freq_hwtcl} {100 MHz}
set_instance_parameter_value pcie_cv_hip_avmm_0 {port_link_number_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {port_type_hwtcl} {Root port}
set_instance_parameter_value pcie_cv_hip_avmm_0 {prefetchable_mem_window_addr_width_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {register_pipe_signals_advanced_default_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {reserved_debug_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {retry_buffer_last_active_address_advanced_default_hwtcl} {255}
set_instance_parameter_value pcie_cv_hip_avmm_0 {revision_id_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rpre_emph_a_val_hwtcl} {11}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rpre_emph_b_val_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rpre_emph_c_val_hwtcl} {22}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rpre_emph_d_val_hwtcl} {12}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rpre_emph_e_val_hwtcl} {21}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rvod_sel_a_val_hwtcl} {50}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rvod_sel_b_val_hwtcl} {34}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rvod_sel_c_val_hwtcl} {50}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rvod_sel_d_val_hwtcl} {50}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rvod_sel_e_val_hwtcl} {9}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rx_cdc_almost_full_advanced_default_hwtcl} {12}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rx_l0s_count_idl_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {rxbuffer_rxreq_hwtcl} {Balanced}
set_instance_parameter_value pcie_cv_hip_avmm_0 {sameclock_nfts_count_advanced_default_hwtcl} {255}
set_instance_parameter_value pcie_cv_hip_avmm_0 {serial_sim_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {set_pld_clk_x1_625MHz_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {skp_os_gen3_count_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {skp_os_schedule_count_advanced_default_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {slot_number_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {slot_power_limit_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {slot_power_scale_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {slotclkcfg_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ssid_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {ssvid_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {subsystem_device_id_hwtcl} {57344}
set_instance_parameter_value pcie_cv_hip_avmm_0 {subsystem_vendor_id_hwtcl} {4466}
set_instance_parameter_value pcie_cv_hip_avmm_0 {surprise_down_error_support_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {tph_completer_hwtcl} {false}
set_instance_parameter_value pcie_cv_hip_avmm_0 {tx_cdc_almost_empty_advanced_default_hwtcl} {5}
set_instance_parameter_value pcie_cv_hip_avmm_0 {tx_cdc_almost_full_advanced_default_hwtcl} {11}
set_instance_parameter_value pcie_cv_hip_avmm_0 {use_aer_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {use_ast_parity} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {use_crc_forwarding_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {use_rx_st_be_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {use_tl_cfg_sync_advanced_default_hwtcl} {1}
set_instance_parameter_value pcie_cv_hip_avmm_0 {user_id_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {vc0_clk_enable_advanced_default_hwtcl} {true}
set_instance_parameter_value pcie_cv_hip_avmm_0 {vendor_id_hwtcl} {4466}
set_instance_parameter_value pcie_cv_hip_avmm_0 {vsec_id_hwtcl} {40960}
set_instance_parameter_value pcie_cv_hip_avmm_0 {vsec_rev_hwtcl} {0}
set_instance_parameter_value pcie_cv_hip_avmm_0 {wrong_device_id_hwtcl} {disable}

add_instance pio_pcie_reset altera_avalon_pio 18.1
set_instance_parameter_value pio_pcie_reset {bitClearingEdgeCapReg} {0}
set_instance_parameter_value pio_pcie_reset {bitModifyingOutReg} {0}
set_instance_parameter_value pio_pcie_reset {captureEdge} {0}
set_instance_parameter_value pio_pcie_reset {direction} {Output}
set_instance_parameter_value pio_pcie_reset {edgeType} {RISING}
set_instance_parameter_value pio_pcie_reset {generateIRQ} {0}
set_instance_parameter_value pio_pcie_reset {irqType} {LEVEL}
set_instance_parameter_value pio_pcie_reset {resetValue} {0.0}
set_instance_parameter_value pio_pcie_reset {simDoTestBenchWiring} {0}
set_instance_parameter_value pio_pcie_reset {simDrivenValue} {0.0}
set_instance_parameter_value pio_pcie_reset {width} {1}

add_instance pio_rp_reset altera_avalon_pio 18.1
set_instance_parameter_value pio_rp_reset {bitClearingEdgeCapReg} {0}
set_instance_parameter_value pio_rp_reset {bitModifyingOutReg} {0}
set_instance_parameter_value pio_rp_reset {captureEdge} {0}
set_instance_parameter_value pio_rp_reset {direction} {Output}
set_instance_parameter_value pio_rp_reset {edgeType} {RISING}
set_instance_parameter_value pio_rp_reset {generateIRQ} {0}
set_instance_parameter_value pio_rp_reset {irqType} {LEVEL}
set_instance_parameter_value pio_rp_reset {resetValue} {0.0}
set_instance_parameter_value pio_rp_reset {simDoTestBenchWiring} {0}
set_instance_parameter_value pio_rp_reset {simDrivenValue} {0.0}
set_instance_parameter_value pio_rp_reset {width} {2}

add_instance reset_bridge_0 altera_reset_bridge 18.1
set_instance_parameter_value reset_bridge_0 {ACTIVE_LOW_RESET} {1}
set_instance_parameter_value reset_bridge_0 {NUM_RESET_OUTPUTS} {1}
set_instance_parameter_value reset_bridge_0 {SYNCHRONOUS_EDGES} {none}
set_instance_parameter_value reset_bridge_0 {USE_RESET_REQUEST} {0}

add_instance sysid_qsys altera_avalon_sysid_qsys 18.1
set_instance_parameter_value sysid_qsys {id} {-1395322094}

# exported interfaces
add_interface alt_xcvr_reconfig_0_reconfig_mgmt avalon slave
set_interface_property alt_xcvr_reconfig_0_reconfig_mgmt EXPORT_OF alt_xcvr_reconfig_0.reconfig_mgmt
add_interface coreclk_fan_clk clock source
set_interface_property coreclk_fan_clk EXPORT_OF coreclk_fanout.clk
add_interface coreclk_fan_reset reset source
set_interface_property coreclk_fan_reset EXPORT_OF coreclk_fanout.clk_reset
add_interface hps_0_h2f_reset reset source
set_interface_property hps_0_h2f_reset EXPORT_OF hps_0.h2f_reset
add_interface hps_0_hps_io conduit end
set_interface_property hps_0_hps_io EXPORT_OF hps_0.hps_io
add_interface hps_clk0 clock source
set_interface_property hps_clk0 EXPORT_OF hps_0.h2f_user0_clock
add_interface i2c3 conduit end
set_interface_property i2c3 EXPORT_OF hps_0.i2c3
add_interface i2c3_clk clock source
set_interface_property i2c3_clk EXPORT_OF hps_0.i2c3_clk
add_interface i2c3_scl_in clock sink
set_interface_property i2c3_scl_in EXPORT_OF hps_0.i2c3_scl_in
add_interface memory conduit end
set_interface_property memory EXPORT_OF hps_0.memory
add_interface pcie_cv_hip_avmm_0_hip_ctrl conduit end
set_interface_property pcie_cv_hip_avmm_0_hip_ctrl EXPORT_OF pcie_cv_hip_avmm_0.hip_ctrl
add_interface pcie_cv_hip_avmm_0_hip_pipe conduit end
set_interface_property pcie_cv_hip_avmm_0_hip_pipe EXPORT_OF pcie_cv_hip_avmm_0.hip_pipe
add_interface pcie_cv_hip_avmm_0_hip_serial conduit end
set_interface_property pcie_cv_hip_avmm_0_hip_serial EXPORT_OF pcie_cv_hip_avmm_0.hip_serial
add_interface pcie_cv_hip_avmm_0_npor conduit end
set_interface_property pcie_cv_hip_avmm_0_npor EXPORT_OF pcie_cv_hip_avmm_0.npor
add_interface pcie_cv_hip_avmm_0_reconfig_clk_locked conduit end
set_interface_property pcie_cv_hip_avmm_0_reconfig_clk_locked EXPORT_OF pcie_cv_hip_avmm_0.reconfig_clk_locked
add_interface pcie_cv_hip_avmm_0_refclk clock sink
set_interface_property pcie_cv_hip_avmm_0_refclk EXPORT_OF pcie_cv_hip_avmm_0.refclk
add_interface pio_pcie_reset conduit end
set_interface_property pio_pcie_reset EXPORT_OF pio_pcie_reset.external_connection
add_interface reset_1 reset sink
set_interface_property reset_1 EXPORT_OF reset_bridge_0.in_reset
add_interface w_disable conduit end
set_interface_property w_disable EXPORT_OF pio_rp_reset.external_connection

# connections and connection parameters
add_connection alt_xcvr_reconfig_0.reconfig_from_xcvr pcie_cv_hip_avmm_0.reconfig_from_xcvr
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_from_xcvr/pcie_cv_hip_avmm_0.reconfig_from_xcvr endPort {}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_from_xcvr/pcie_cv_hip_avmm_0.reconfig_from_xcvr endPortLSB {0}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_from_xcvr/pcie_cv_hip_avmm_0.reconfig_from_xcvr startPort {}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_from_xcvr/pcie_cv_hip_avmm_0.reconfig_from_xcvr startPortLSB {0}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_from_xcvr/pcie_cv_hip_avmm_0.reconfig_from_xcvr width {0}

add_connection alt_xcvr_reconfig_0.reconfig_to_xcvr pcie_cv_hip_avmm_0.reconfig_to_xcvr
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_to_xcvr/pcie_cv_hip_avmm_0.reconfig_to_xcvr endPort {}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_to_xcvr/pcie_cv_hip_avmm_0.reconfig_to_xcvr endPortLSB {0}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_to_xcvr/pcie_cv_hip_avmm_0.reconfig_to_xcvr startPort {}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_to_xcvr/pcie_cv_hip_avmm_0.reconfig_to_xcvr startPortLSB {0}
set_connection_parameter_value alt_xcvr_reconfig_0.reconfig_to_xcvr/pcie_cv_hip_avmm_0.reconfig_to_xcvr width {0}

add_connection ase_f2sdram.expanded_master hps_0.f2h_sdram0_data
set_connection_parameter_value ase_f2sdram.expanded_master/hps_0.f2h_sdram0_data arbitrationPriority {1}
set_connection_parameter_value ase_f2sdram.expanded_master/hps_0.f2h_sdram0_data baseAddress {0x0000}
set_connection_parameter_value ase_f2sdram.expanded_master/hps_0.f2h_sdram0_data defaultConnection {0}

add_connection ccb_f2sdram.m0 ase_f2sdram.windowed_slave
set_connection_parameter_value ccb_f2sdram.m0/ase_f2sdram.windowed_slave arbitrationPriority {1}
set_connection_parameter_value ccb_f2sdram.m0/ase_f2sdram.windowed_slave baseAddress {0x0000}
set_connection_parameter_value ccb_f2sdram.m0/ase_f2sdram.windowed_slave defaultConnection {0}

add_connection ccb_h2f_50_to_125.m0 pcie_cv_hip_avmm_0.Txs
set_connection_parameter_value ccb_h2f_50_to_125.m0/pcie_cv_hip_avmm_0.Txs arbitrationPriority {1}
set_connection_parameter_value ccb_h2f_50_to_125.m0/pcie_cv_hip_avmm_0.Txs baseAddress {0x0000}
set_connection_parameter_value ccb_h2f_50_to_125.m0/pcie_cv_hip_avmm_0.Txs defaultConnection {0}

add_connection ccb_lw_50_to_125.m0 pcie_cv_hip_avmm_0.Cra
set_connection_parameter_value ccb_lw_50_to_125.m0/pcie_cv_hip_avmm_0.Cra arbitrationPriority {1}
set_connection_parameter_value ccb_lw_50_to_125.m0/pcie_cv_hip_avmm_0.Cra baseAddress {0x0000}
set_connection_parameter_value ccb_lw_50_to_125.m0/pcie_cv_hip_avmm_0.Cra defaultConnection {0}

add_connection hps_0.f2h_irq0 msi_to_gic_gen_0.interrupt_sender
set_connection_parameter_value hps_0.f2h_irq0/msi_to_gic_gen_0.interrupt_sender irqNumber {2}

add_connection hps_0.f2h_irq0 pcie_cv_hip_avmm_0.CraIrq
set_connection_parameter_value hps_0.f2h_irq0/pcie_cv_hip_avmm_0.CraIrq irqNumber {0}

add_connection hps_0.h2f_axi_master ccb_h2f_50_to_125.s0
set_connection_parameter_value hps_0.h2f_axi_master/ccb_h2f_50_to_125.s0 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_axi_master/ccb_h2f_50_to_125.s0 baseAddress {0x0000}
set_connection_parameter_value hps_0.h2f_axi_master/ccb_h2f_50_to_125.s0 defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master ccb_lw_50_to_125.s0
set_connection_parameter_value hps_0.h2f_lw_axi_master/ccb_lw_50_to_125.s0 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/ccb_lw_50_to_125.s0 baseAddress {0x00020000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/ccb_lw_50_to_125.s0 defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master msi_to_gic_gen_0.csr
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.csr arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.csr baseAddress {0x0080}
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.csr defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master msi_to_gic_gen_0.vector_slave
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.vector_slave arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.vector_slave baseAddress {0x0000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/msi_to_gic_gen_0.vector_slave defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master pio_pcie_reset.s1
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_pcie_reset.s1 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_pcie_reset.s1 baseAddress {0x2000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_pcie_reset.s1 defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master pio_rp_reset.s1
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_rp_reset.s1 arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_rp_reset.s1 baseAddress {0x00010040}
set_connection_parameter_value hps_0.h2f_lw_axi_master/pio_rp_reset.s1 defaultConnection {0}

add_connection hps_0.h2f_lw_axi_master sysid_qsys.control_slave
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys.control_slave arbitrationPriority {1}
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys.control_slave baseAddress {0x00010000}
set_connection_parameter_value hps_0.h2f_lw_axi_master/sysid_qsys.control_slave defaultConnection {0}

add_connection hps_0.h2f_user2_clock ase_f2sdram.clock

add_connection hps_0.h2f_user2_clock ccb_f2sdram.m0_clk

add_connection hps_0.h2f_user2_clock ccb_h2f_50_to_125.s0_clk

add_connection hps_0.h2f_user2_clock ccb_lw_50_to_125.s0_clk

add_connection hps_0.h2f_user2_clock hps_0.f2h_axi_clock

add_connection hps_0.h2f_user2_clock hps_0.f2h_sdram0_clock

add_connection hps_0.h2f_user2_clock hps_0.h2f_axi_clock

add_connection hps_0.h2f_user2_clock hps_0.h2f_lw_axi_clock

add_connection hps_0.h2f_user2_clock msi_to_gic_gen_0.clock

add_connection hps_0.h2f_user2_clock pio_pcie_reset.clk

add_connection hps_0.h2f_user2_clock pio_rp_reset.clk

add_connection hps_0.h2f_user2_clock sysid_qsys.clk

add_connection pb_f2sdram.m0 ccb_f2sdram.s0
set_connection_parameter_value pb_f2sdram.m0/ccb_f2sdram.s0 arbitrationPriority {1}
set_connection_parameter_value pb_f2sdram.m0/ccb_f2sdram.s0 baseAddress {0x0000}
set_connection_parameter_value pb_f2sdram.m0/ccb_f2sdram.s0 defaultConnection {0}

add_connection pb_rxm_2_msi.m0 msi_to_gic_gen_0.vector_slave
set_connection_parameter_value pb_rxm_2_msi.m0/msi_to_gic_gen_0.vector_slave arbitrationPriority {1}
set_connection_parameter_value pb_rxm_2_msi.m0/msi_to_gic_gen_0.vector_slave baseAddress {0x0000}
set_connection_parameter_value pb_rxm_2_msi.m0/msi_to_gic_gen_0.vector_slave defaultConnection {0}

add_connection pcie_cv_hip_avmm_0.RP_Master pb_f2sdram.s0
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_f2sdram.s0 arbitrationPriority {1}
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_f2sdram.s0 baseAddress {0x0000}
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_f2sdram.s0 defaultConnection {0}

add_connection pcie_cv_hip_avmm_0.RP_Master pb_rxm_2_msi.s0
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_rxm_2_msi.s0 arbitrationPriority {1}
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_rxm_2_msi.s0 baseAddress {0xff200000}
set_connection_parameter_value pcie_cv_hip_avmm_0.RP_Master/pb_rxm_2_msi.s0 defaultConnection {0}

add_connection pcie_cv_hip_avmm_0.coreclkout alt_xcvr_reconfig_0.mgmt_clk_clk

add_connection pcie_cv_hip_avmm_0.coreclkout ccb_f2sdram.s0_clk

add_connection pcie_cv_hip_avmm_0.coreclkout ccb_h2f_50_to_125.m0_clk

add_connection pcie_cv_hip_avmm_0.coreclkout ccb_lw_50_to_125.m0_clk

add_connection pcie_cv_hip_avmm_0.coreclkout coreclk_fanout.clk_in

add_connection pcie_cv_hip_avmm_0.coreclkout pb_f2sdram.clk

add_connection pcie_cv_hip_avmm_0.coreclkout pb_rxm_2_msi.clk

add_connection pcie_cv_hip_avmm_0.nreset_status alt_xcvr_reconfig_0.mgmt_rst_reset

add_connection pcie_cv_hip_avmm_0.nreset_status ccb_f2sdram.s0_reset

add_connection pcie_cv_hip_avmm_0.nreset_status ccb_h2f_50_to_125.m0_reset

add_connection pcie_cv_hip_avmm_0.nreset_status ccb_lw_50_to_125.m0_reset

add_connection pcie_cv_hip_avmm_0.nreset_status coreclk_fanout.clk_in_reset

add_connection pcie_cv_hip_avmm_0.nreset_status pb_f2sdram.reset

add_connection pcie_cv_hip_avmm_0.nreset_status pb_rxm_2_msi.reset

add_connection pcie_cv_hip_avmm_0.reconfig_busy alt_xcvr_reconfig_0.reconfig_busy
set_connection_parameter_value pcie_cv_hip_avmm_0.reconfig_busy/alt_xcvr_reconfig_0.reconfig_busy endPort {}
set_connection_parameter_value pcie_cv_hip_avmm_0.reconfig_busy/alt_xcvr_reconfig_0.reconfig_busy endPortLSB {0}
set_connection_parameter_value pcie_cv_hip_avmm_0.reconfig_busy/alt_xcvr_reconfig_0.reconfig_busy startPort {}
set_connection_parameter_value pcie_cv_hip_avmm_0.reconfig_busy/alt_xcvr_reconfig_0.reconfig_busy startPortLSB {0}
set_connection_parameter_value pcie_cv_hip_avmm_0.reconfig_busy/alt_xcvr_reconfig_0.reconfig_busy width {0}

add_connection reset_bridge_0.out_reset ase_f2sdram.reset

add_connection reset_bridge_0.out_reset ccb_f2sdram.m0_reset

add_connection reset_bridge_0.out_reset ccb_h2f_50_to_125.s0_reset

add_connection reset_bridge_0.out_reset ccb_lw_50_to_125.s0_reset

add_connection reset_bridge_0.out_reset msi_to_gic_gen_0.reset

add_connection reset_bridge_0.out_reset pio_pcie_reset.reset

add_connection reset_bridge_0.out_reset pio_rp_reset.reset

add_connection reset_bridge_0.out_reset sysid_qsys.reset

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {false}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {0}

save_system {pcie_rp_ed_5csxfc6.qsys}
