
`timescale 1ns/1ns

module pcie_rp_ed_top (

	inout wire				iic_3_sda,
	inout wire				iic_3_scl,
	
	output wire				w_dis1_n,
	output wire				w_dis2_n,
	
	output wire [15:0 ] HPS_DDR_A,
	output wire [2:0] HPS_DDR_BAS,
	output wire HPS_DDR_CK_P,
	output wire HPS_DDR_CK_N,
	output wire HPS_DDR_CKE,
	output wire HPS_DDR_CS0_N,
	output wire HPS_DDR_RAS_N,
	output wire HPS_DDR_CAS_N,
	output wire HPS_DDR_WE_N,
	output wire HPS_DDR_RESET_N,
	inout wire [39:0] HPS_DDR_D,
	inout wire [4:0] HPS_DDR_DQS_P,
	inout wire [4:0] HPS_DDR_DQS_N,
	output wire [4:0] HPS_DDR_DQM,
	input wire HPS_RZQ0,
	output wire HPS_ODT,
    
	// RGMII1                                                       
	output wire RGMII1_TX_CLK,
	output wire RGMII1_TXD0,
	output wire RGMII1_TXD1,
	output wire RGMII1_TXD2,
	output wire RGMII1_TXD3,
	input wire RGMII1_RXD0,
	inout wire RGMII1_MDIO,
	output wire RGMII1_MDC,
	input wire RGMII1_RX_CTL,
	output wire RGMII1_TX_CTL,
	input wire RGMII1_RX_CLK,
	input wire RGMII1_RXD1,
	input wire RGMII1_RXD2,
	input wire RGMII1_RXD3,
	
	// QSPI                                                         
	inout wire QSPI_DQ0,
	inout wire QSPI_DQ1,
	inout wire QSPI_DQ2,
	inout wire QSPI_DQ3,
	output wire QSPI_SS0,
	output wire QSPI_CLK,
	// SDMMC                                                        
	inout wire SDMMC_CMD,
	inout wire SDMMC_D0,
	inout wire SDMMC_D1,
	output wire SDMMC_PWRN,
	output wire SDMMC_CLK,
	inout wire SDMMC_D2,
	inout wire SDMMC_D3,
	// USB1                                                         
	inout wire USB1_ULPI_D0,
	inout wire USB1_ULPI_D1,
	inout wire USB1_ULPI_D2,
	inout wire USB1_ULPI_D3,
	inout wire USB1_ULPI_D4,
	inout wire USB1_ULPI_D5,
	inout wire USB1_ULPI_D6,
	inout wire USB1_ULPI_D7,
	input wire USB1_ULPI_CLK,
	output wire USB1_ULPI_STP,
	input wire USB1_ULPI_DIR,
	input wire USB1_ULPI_NXT,
	inout wire USB1_ULPI_CS,
	
	inout wire	GPIO00,
	inout wire	GPIO09,
	inout wire	GPIO28,
	inout wire	GPIO35,
	inout wire	GPIO44,
	inout wire	GPIO48,
	
	// UART0                                                        
	input wire				UART0_RX,
	output wire				UART0_TX,
	

    // PCIe signals
    input  wire        pcie_refclk_clk,
	
	output  wire        perst_fw,
	inout wire        pcie_npor_pin_perst,
    input  wire        pcie_hip_rx_in0,
    input  wire        pcie_hip_rx_in1,
    output wire        pcie_hip_tx_out0,
    output wire        pcie_hip_tx_out1
	//    output wire        pcie_perstn_out,
);
	
	wire i2c3_out_data;
	wire i2c3_sda;
	wire i2c3_clk_clk;
	wire i2c3_scl_in_clk;
	
	// internal wires and registers declaration
	
	wire       hps_fpga_reset_n;
	wire       pcie_npor_npor;
	wire [4:0] pipe_sim_ltssmstate;
	
	wire       coreclk_fan_clk;
	wire       coreclk_fan_reset_n;
	wire       pcie_reconfig_clk_locked_fixedclk_locked;
	
	wire pcie_reset; 

	// connection of internal logics
	assign perst_fw = hps_fpga_reset_n;
	assign pcie_npor_pin_perst = pcie_reset ? ~pcie_reset : 1'bz;
	assign pcie_npor_npor = hps_fpga_reset_n & pcie_npor_pin_perst; // & fpga_rst_n;
	
	pcie_rp_ed_5csxfc6 soc_inst(
		
		.memory_mem_a                                           (HPS_DDR_A), //hps_memory_mem_a),
		.memory_mem_ba                                          (HPS_DDR_BAS), //hps_memory_mem_ba),
		.memory_mem_ck                                          (HPS_DDR_CK_P), //hps_memory_mem_ck),
		.memory_mem_ck_n                                        (HPS_DDR_CK_N), //hps_memory_mem_ck_n),
		.memory_mem_cke                                         (HPS_DDR_CKE), //hps_memory_mem_cke),
		.memory_mem_cs_n                                        (HPS_DDR_CS0_N), //hps_memory_mem_cs_n),
		.memory_mem_ras_n                                       (HPS_DDR_RAS_N), //hps_memory_mem_ras_n),
		.memory_mem_cas_n                                       (HPS_DDR_CAS_N), //hps_memory_mem_cas_n),
		.memory_mem_we_n                                        (HPS_DDR_WE_N), //hps_memory_mem_we_n),
		.memory_mem_reset_n                                     (HPS_DDR_RESET_N), //hps_memory_mem_reset_n),
		.memory_mem_dq                                          (HPS_DDR_D), //hps_memory_mem_dq),
		.memory_mem_dqs                                         (HPS_DDR_DQS_P), //hps_memory_mem_dqs),
		.memory_mem_dqs_n                                       (HPS_DDR_DQS_N), //hps_memory_mem_dqs_n),
		.memory_mem_odt                                         (HPS_ODT), //hps_memory_mem_odt),
		.memory_mem_dm                                          (HPS_DDR_DQM), //hps_memory_mem_dm),
		.memory_oct_rzqin                                       (HPS_RZQ0), //hps_memory_oct_rzqin),
		
		.w_disable_export										({w_dis2_n, w_dis1_n}),
		
		.hps_0_hps_io_hps_io_emac1_inst_TX_CLK                  (RGMII1_TX_CLK),
		.hps_0_hps_io_hps_io_emac1_inst_TXD0                    (RGMII1_TXD0),
		.hps_0_hps_io_hps_io_emac1_inst_TXD1                    (RGMII1_TXD1),
		.hps_0_hps_io_hps_io_emac1_inst_TXD2                    (RGMII1_TXD2),
		.hps_0_hps_io_hps_io_emac1_inst_TXD3                    (RGMII1_TXD3),
		.hps_0_hps_io_hps_io_emac1_inst_RXD0                    (RGMII1_RXD0),
		.hps_0_hps_io_hps_io_emac1_inst_MDIO                    (RGMII1_MDIO),
		.hps_0_hps_io_hps_io_emac1_inst_MDC                     (RGMII1_MDC),
		.hps_0_hps_io_hps_io_emac1_inst_RX_CTL                  (RGMII1_RX_CTL),
		.hps_0_hps_io_hps_io_emac1_inst_TX_CTL                  (RGMII1_TX_CTL),
		.hps_0_hps_io_hps_io_emac1_inst_RX_CLK                  (RGMII1_RX_CLK),
		.hps_0_hps_io_hps_io_emac1_inst_RXD1                    (RGMII1_RXD1),
		.hps_0_hps_io_hps_io_emac1_inst_RXD2                    (RGMII1_RXD2),
		.hps_0_hps_io_hps_io_emac1_inst_RXD3                    (RGMII1_RXD3),
		
		.hps_0_hps_io_hps_io_qspi_inst_IO0                      (QSPI_DQ0),
		.hps_0_hps_io_hps_io_qspi_inst_IO1                      (QSPI_DQ1),
		.hps_0_hps_io_hps_io_qspi_inst_IO2                      (QSPI_DQ2),
		.hps_0_hps_io_hps_io_qspi_inst_IO3                      (QSPI_DQ3),
		.hps_0_hps_io_hps_io_qspi_inst_SS0                      (QSPI_SS0),
		.hps_0_hps_io_hps_io_qspi_inst_CLK                      (QSPI_CLK),
		
		.hps_0_hps_io_hps_io_sdio_inst_PWREN                    (SDMMC_PWRN),
		.hps_0_hps_io_hps_io_sdio_inst_CMD                      (SDMMC_CMD),
		.hps_0_hps_io_hps_io_sdio_inst_D0                       (SDMMC_D0),
		.hps_0_hps_io_hps_io_sdio_inst_D1                       (SDMMC_D1),
		.hps_0_hps_io_hps_io_sdio_inst_CLK                      (SDMMC_CLK),
		.hps_0_hps_io_hps_io_sdio_inst_D2                       (SDMMC_D2),
		.hps_0_hps_io_hps_io_sdio_inst_D3                       (SDMMC_D3),
		
		.hps_0_hps_io_hps_io_usb1_inst_D0                       (USB1_ULPI_D0),
		.hps_0_hps_io_hps_io_usb1_inst_D1                       (USB1_ULPI_D1),
		.hps_0_hps_io_hps_io_usb1_inst_D2                       (USB1_ULPI_D2),
		.hps_0_hps_io_hps_io_usb1_inst_D3                       (USB1_ULPI_D3),
		.hps_0_hps_io_hps_io_usb1_inst_D4                       (USB1_ULPI_D4),
		.hps_0_hps_io_hps_io_usb1_inst_D5                       (USB1_ULPI_D5),
		.hps_0_hps_io_hps_io_usb1_inst_D6                       (USB1_ULPI_D6),
		.hps_0_hps_io_hps_io_usb1_inst_D7                       (USB1_ULPI_D7),
		.hps_0_hps_io_hps_io_usb1_inst_CLK                      (USB1_ULPI_CLK),
		.hps_0_hps_io_hps_io_usb1_inst_STP                      (USB1_ULPI_STP),
		.hps_0_hps_io_hps_io_usb1_inst_DIR                      (USB1_ULPI_DIR),
		.hps_0_hps_io_hps_io_usb1_inst_NXT                      (USB1_ULPI_NXT),
		
		.hps_0_hps_io_hps_io_uart0_inst_RX                      (UART0_RX),
		.hps_0_hps_io_hps_io_uart0_inst_TX                      (UART0_TX),
		
		.hps_0_hps_io_hps_io_gpio_inst_GPIO00                   (GPIO00),
		.hps_0_hps_io_hps_io_gpio_inst_GPIO09                   (GPIO09),
		.hps_0_hps_io_hps_io_gpio_inst_GPIO28                   (GPIO28),
		.hps_0_hps_io_hps_io_gpio_inst_GPIO35                   (GPIO35),
		.hps_0_hps_io_hps_io_gpio_inst_GPIO44                   (GPIO44),
		.hps_0_hps_io_hps_io_gpio_inst_GPIO48                   (GPIO48),
		
		.pcie_cv_hip_avmm_0_refclk_clk                          (pcie_refclk_clk),
		
		.pcie_cv_hip_avmm_0_npor_npor                           (pcie_npor_npor),
		.pcie_cv_hip_avmm_0_npor_pin_perst                      (pcie_npor_pin_perst),
		.pcie_cv_hip_avmm_0_reconfig_clk_locked_fixedclk_locked (pcie_reconfig_clk_locked_fixedclk_locked),
		
		.pcie_cv_hip_avmm_0_hip_serial_rx_in0                   (pcie_hip_rx_in0),
		.pcie_cv_hip_avmm_0_hip_serial_tx_out0                  (pcie_hip_tx_out0),
		
		.pcie_cv_hip_avmm_0_hip_serial_rx_in1                   (pcie_hip_rx_in1),
		.pcie_cv_hip_avmm_0_hip_serial_tx_out1                  (pcie_hip_tx_out1),
		
		.pcie_cv_hip_avmm_0_hip_ctrl_test_in				(32'd0),
		.pcie_cv_hip_avmm_0_hip_ctrl_simu_mode_pipe			(1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_sim_pipe_pclk_in		(1'b0),
		
		.pcie_cv_hip_avmm_0_hip_pipe_sim_pipe_rate			(),
		.pcie_cv_hip_avmm_0_hip_pipe_sim_ltssmstate			(pipe_sim_ltssmstate),
		.pcie_cv_hip_avmm_0_hip_pipe_eidleinfersel0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_powerdown0				(),
		
		.alt_xcvr_reconfig_0_reconfig_mgmt_address              (7'h0),
		.alt_xcvr_reconfig_0_reconfig_mgmt_read                 (1'b0),
		.alt_xcvr_reconfig_0_reconfig_mgmt_readdata				(),
		.alt_xcvr_reconfig_0_reconfig_mgmt_waitrequest			(),
		.alt_xcvr_reconfig_0_reconfig_mgmt_write                (1'b0),
		.alt_xcvr_reconfig_0_reconfig_mgmt_writedata            (32'h0),
		
		.pcie_cv_hip_avmm_0_hip_pipe_rxpolarity0		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txcompl0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdata0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdatak0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdetectrx0		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txelecidle0		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txswing0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txmargin0			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdeemph0			(),
		
		.pcie_cv_hip_avmm_0_hip_pipe_phystatus0                 (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxdata0                    (8'h0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxdatak0                   (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxelecidle0                (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxstatus0                  (3'h0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxvalid0                   (1'b0),
		
		.pcie_cv_hip_avmm_0_hip_pipe_rxpolarity1		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txcompl1			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdata1			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdatak1			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdetectrx1		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txelecidle1		(),
		.pcie_cv_hip_avmm_0_hip_pipe_txswing1			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txmargin1			(),
		.pcie_cv_hip_avmm_0_hip_pipe_txdeemph1			(),
		
		.pcie_cv_hip_avmm_0_hip_pipe_phystatus1                 (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxdata1                    (8'h0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxdatak1                   (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxelecidle1                (1'b0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxstatus1                  (3'h0),
		.pcie_cv_hip_avmm_0_hip_pipe_rxvalid1                   (1'b0),
		
		.i2c3_scl_in_clk                                        ( i2c3_scl_in_clk ),
		.i2c3_clk_clk                                           ( i2c3_clk_clk ),
		.i2c3_out_data                                          ( i2c3_out_data ),
		.i2c3_sda                                               ( i2c3_sda ),
		
		.coreclk_fan_clk_clk                                    (coreclk_fan_clk),
		.coreclk_fan_reset_reset_n                              (coreclk_fan_reset_n),
		
		.hps_clk0_clk			                                (  ),
		.hps_0_h2f_reset_reset_n                                (hps_fpga_reset_n),
		
		.reset_1_reset_n			(hps_fpga_reset_n),
		.pio_pcie_reset_export		(pcie_reset)
	);
	
	// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	
	iic_io iic_scl3_inst(
		
		.oe			(i2c3_clk_clk),
		.dataio		(iic_3_scl),
		.dataout	(i2c3_scl_in_clk)
	);
	
	iic_io iic_sda3_inst(
		
		.oe			(i2c3_out_data),
		.dataio		(iic_3_sda),
		.dataout	(i2c3_sda)
	);
	
	// @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

endmodule
