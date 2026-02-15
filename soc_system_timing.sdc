
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty

create_clock -period "100 MHz" [get_ports pcie_refclk_clk]



# False path for reset inputs
set_false_path -from [get_ports pcie_npor_pin_perst] -to *
set_false_path -from [get_ports pcie_npor_npor] -to *


#False path for reset output

set_false_path -from * -to [get_ports pcie_npor_pin_perst]


############################################################################
# derive_pll_clock is used to calculate all clock derived from PCIe refclk
#  the derive_pll_clocks and derive clock_uncertainty should only
# be applied once across all of the SDC files used in a project
create_clock -period "100MHz" -name {refclk_pci_express} {*refclk_*}


##############################################################################
# PHY IP reconfig controller constraints
# Set reconfig_xcvr clock
# this line will likely need to be modified to match the actual clock pin name
# used for this clock, and also changed to have the correct period set for the actually used clock
create_clock -period "125 MHz" -name {reconfig_xcvr_clk} {*reconfig_xcvr_clk*}

######################################################################
# HIP Soft reset controller SDC constraints
set_false_path -to   [get_registers *altpcie_rs_serdes|fifo_err_sync_r[0]]
set_false_path -from [get_registers *sv_xcvr_pipe_native*] -to [get_registers *altpcie_rs_serdes|*]

# HIP testin pins SDC constraints
set_false_path -from [get_pins -compatibility_mode *hip_ctrl*]



# create fake clocks for SoC clock signals since it is not affecting router, please refer spec for its supported frequency
create_clock -period 16.666  [get_ports USB1_ULPI_CLK]
