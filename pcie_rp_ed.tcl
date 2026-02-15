# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: pcie_rp_ed.tcl
# Generated on: Sun Feb 15 13:26:14 2026

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "pcie_rp_ed_5csxfc6"]} {
		puts "Project pcie_rp_ed_5csxfc6 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists pcie_rp_ed_5csxfc6]} {
		project_open -revision pcie_rp_ed_5csxfc6 pcie_rp_ed_5csxfc6
	} else {
		project_new -revision pcie_rp_ed_5csxfc6 pcie_rp_ed_5csxfc6
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6C6U23C7
	set_global_assignment -name TOP_LEVEL_ENTITY pcie_rp_ed_top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 13.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "15:45:14  DECEMBER 20, 2013"
	set_global_assignment -name LAST_QUARTUS_VERSION "18.1.0 Standard Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name EDA_SIMULATION_TOOL "<None>"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT NONE -section_id eda_simulation
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 3A
	set_global_assignment -name IOBANK_VCCIO 2.5V -section_id 3B
	set_global_assignment -name IOBANK_VCCIO 1.35V -section_id 4A
	set_global_assignment -name IOBANK_VCCIO 2.5V -section_id 5A
	set_global_assignment -name IOBANK_VCCIO 2.5V -section_id 5B
	set_global_assignment -name IOBANK_VCCIO 1.35V -section_id 6A
	set_global_assignment -name IOBANK_VCCIO 1.35V -section_id 6B
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7A
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7B
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7C
	set_global_assignment -name IOBANK_VCCIO 3.3V -section_id 7D
	set_global_assignment -name IOBANK_VCCIO 2.5V -section_id 8A
	set_global_assignment -name SEED 1
	set_global_assignment -name OPTIMIZATION_TECHNIQUE SPEED
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS"
	set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
	set_global_assignment -name PRE_MAPPING_RESYNTHESIS ON
	set_global_assignment -name FINAL_PLACEMENT_OPTIMIZATION ALWAYS
	set_global_assignment -name ENABLE_SIGNALTAP OFF
	set_global_assignment -name USE_DLL_FREQUENCY_FOR_DQS_DELAY_CHAIN ON
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name UNIPHY_SEQUENCER_DQS_CONFIG_ENABLE ON
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
	set_global_assignment -name ECO_REGENERATE_REPORT ON
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name OPTIMIZATION_MODE "AGGRESSIVE PERFORMANCE"
	set_global_assignment -name ALLOW_REGISTER_RETIMING OFF
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON
	set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL
	set_global_assignment -name VERILOG_FILE pcie_rp_ed_top.v
	set_global_assignment -name QSYS_FILE pcie_rp_ed_5csxfc6.qsys
	set_global_assignment -name VERILOG_FILE iic_io.v
	set_global_assignment -name SDC_FILE soc_system_timing.sdc
	set_location_assignment PIN_W15 -to pcie_npor_pin_perst
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_hip_rx_in0
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_hip_tx_out0
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to "pcie_hip_rx_in0(n)"
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to "pcie_hip_tx_out0(n)"
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_refclk_clk
	set_instance_assignment -name AUTO_OPEN_DRAIN_PINS ON -to pcie_perstn_out
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[4].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[4] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[4] -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to soc_inst|hps_0|hps_io|border|hps_sdram_inst -tag __hps_sdram_p0
	set_instance_assignment -name PLL_COMPENSATION_MODE DIRECT -to soc_inst|hps_0|hps_io|border|hps_sdram_inst|pll0|fbout -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TX_CTL
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_MDC
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_MDIO
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RXD0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RXD1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RXD2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RXD3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RX_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_RX_CTL
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TXD0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TXD1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TXD2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TXD3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to RGMII1_TX_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_DQ0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_DQ1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_DQ2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_DQ3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to QSPI_SS0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_CMD
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_D0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_D1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_D2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_D3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_STP
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_CS
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D1
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D2
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D3
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D4
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D5
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D6
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_D7
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_DIR
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to USB1_ULPI_NXT
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_RZQ0 -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[4] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[5] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[5] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[6] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[6] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[7] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[7] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[8] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[8] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[9] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[9] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[10] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[10] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[11] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[11] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[12] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[12] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[13] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[13] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[14] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[14] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[15] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[15] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[15] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[16] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[16] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[16] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[17] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[17] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[17] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[18] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[18] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[18] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[19] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[19] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[19] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[20] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[20] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[20] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[21] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[21] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[21] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[22] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[22] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[22] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[23] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[23] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[23] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[24] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[24] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[24] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[25] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[25] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[25] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[26] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[26] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[26] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[27] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[27] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[27] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[28] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[28] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[28] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[29] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[29] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[29] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[30] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[30] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[30] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[31] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[31] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[31] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[32] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[32] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[32] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[33] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[33] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[33] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[34] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[34] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[34] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[35] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[35] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[35] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[36] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[36] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[36] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[37] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[37] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[37] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[38] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[38] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[38] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_D[39] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_D[39] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_D[39] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_P[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_P[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_P[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_P[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_P[4] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_P[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_N[0] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_N[1] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_N[2] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_N[3] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_DQS_N[4] -tag __hps_sdram_p0
	set_instance_assignment -name INPUT_TERMINATION "PARALLEL 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQS_N[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_CK_P -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_CK_P -tag __hps_sdram_p0
	set_instance_assignment -name D5_DELAY 2 -to HPS_DDR_CK_P -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.35-V SSTL" -to HPS_DDR_CK_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_CK_N -tag __hps_sdram_p0
	set_instance_assignment -name D5_DELAY 2 -to HPS_DDR_CK_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[10] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[10] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[11] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[11] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[12] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[12] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[13] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[13] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[14] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[14] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[4] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[5] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[5] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[6] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[6] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[7] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[7] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[8] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[8] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[9] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[9] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_BAS[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_BAS[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_BAS[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_BAS[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_BAS[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_BAS[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_CAS_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_CAS_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_CKE -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_CKE -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_CS0_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_CS0_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_RAS_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_RAS_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_WE_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_WE_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name BOARD_MODEL_FAR_PULLUP_R OPEN -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name BOARD_MODEL_NEAR_PULLUP_R OPEN -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name BOARD_MODEL_FAR_PULLDOWN_R OPEN -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name BOARD_MODEL_NEAR_PULLDOWN_R OPEN -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_DQM[0] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQM[0] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_DQM[1] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQM[1] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_DQM[2] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQM[2] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_DQM[3] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQM[3] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_DQM[4] -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITH CALIBRATION" -to HPS_DDR_DQM[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[5] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[6] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[7] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[8] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[9] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[10] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[11] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[12] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[13] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[14] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[15] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[16] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[17] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[18] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[19] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[20] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[21] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[22] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[23] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[24] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[25] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[26] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[27] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[28] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[29] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[30] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[31] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[32] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[33] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[34] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[35] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[36] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[37] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[38] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_D[39] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQM[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQM[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQM[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQM[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQM[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_P[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_P[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_P[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_P[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_P[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_N[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_N[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_N[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_N[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_DQS_N[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[10] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[11] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[12] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[13] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[14] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[3] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[4] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[5] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[6] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[7] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[8] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[9] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_BAS[0] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_BAS[1] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_BAS[2] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_CAS_N -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_CKE -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_CS0_N -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_RAS_N -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_WE_N -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to NC_ODT1 -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_RESET_N -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_CK_P -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_CK_N -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_mem_stable_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|ureset|phy_reset_n -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[0].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[0] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[1].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[1] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[2].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[2] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[3].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[3] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[4].read_capture_clk_buffer -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_write_side[4] -tag __hps_sdram_p0
	set_instance_assignment -name GLOBAL_SIGNAL OFF -to u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uread_datapath|reset_n_fifo_wraddress[4] -tag __hps_sdram_p0
	set_instance_assignment -name ENABLE_BENEFICIAL_SKEW_OPTIMIZATION_FOR_NON_GLOBAL_CLOCKS ON -to u0|hps_0|hps_io|border|hps_sdram_inst -tag __hps_sdram_p0
	set_instance_assignment -name PLL_COMPENSATION_MODE DIRECT -to u0|hps_0|hps_io|border|hps_sdram_inst|pll0|fbout -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_ODT -tag __hps_sdram_p0
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_ODT -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_ODT -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO09
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO00
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO28
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO35
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO44
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to GPIO48
	set_instance_assignment -name IO_STANDARD "SSTL-135" -to HPS_DDR_A[15] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to SDMMC_PWRN
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to UART0_RX
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to UART0_TX
	set_location_assignment PIN_V5 -to pcie_refclk_clk
	set_location_assignment PIN_V4 -to "pcie_refclk_clk(n)"
	set_location_assignment PIN_AF2 -to pcie_hip_rx_in0
	set_location_assignment PIN_AF1 -to "pcie_hip_rx_in0(n)"
	set_location_assignment PIN_AD2 -to pcie_hip_tx_out0
	set_location_assignment PIN_AD1 -to "pcie_hip_tx_out0(n)"
	set_location_assignment PIN_E8 -to iic_3_sda
	set_location_assignment PIN_D8 -to iic_3_scl
	set_instance_assignment -name OUTPUT_TERMINATION "SERIES 40 OHM WITHOUT CALIBRATION" -to HPS_DDR_A[15] -tag __hps_sdram_p0
	set_instance_assignment -name PACKAGE_SKEW_COMPENSATION OFF -to HPS_DDR_A[15] -tag __hps_sdram_p0
	set_instance_assignment -name IO_STANDARD "2.5 V" -to iic_3_sda
	set_instance_assignment -name IO_STANDARD "2.5 V" -to iic_3_scl
	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to iic_3_scl
	set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to iic_3_sda
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to w_dis1_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to w_dis2_n
	set_location_assignment PIN_AA11 -to w_dis1_n
	set_location_assignment PIN_V10 -to w_dis2_n
	set_location_assignment PIN_Y11 -to perst_fw
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to perst_fw
	set_location_assignment PIN_Y2 -to pcie_hip_tx_out1
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_hip_tx_out1
	set_location_assignment PIN_Y1 -to "pcie_hip_tx_out1(n)"
	set_instance_assignment -name IO_STANDARD "1.5-V PCML" -to pcie_hip_rx_in1
	set_location_assignment PIN_AB2 -to pcie_hip_rx_in1
	set_location_assignment PIN_AB1 -to "pcie_hip_rx_in1(n)"
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name REVISION_TYPE BASE -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS OFF -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone V"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 30 -family "Cyclone V"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "Cyclone V"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "Cyclone V"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 3 -family "Cyclone V"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Cyclone V"
	set_global_assignment -name STRATIXV_CONFIGURATION_SCHEME "PASSIVE SERIAL" -family "Cyclone V"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "Cyclone V"
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN ON -family "Cyclone V"
	set_global_assignment -name ACTIVE_SERIAL_CLOCK FREQ_100MHZ -family "Cyclone V"
	set_global_assignment -name ADVANCED_PHYSICAL_OPTIMIZATION ON -family "Cyclone V"
	set_global_assignment -name ENABLE_OCT_DONE OFF -family "Cyclone V"

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
