vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt/example_design/jesd204_0_phy_gt_tx_startup_fsm.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt/example_design/jesd204_0_phy_gt_rx_startup_fsm.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt_init.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt_gt.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt_multi_gt.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt/example_design/jesd204_0_phy_gt_sync_block.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/ip_0/jesd204_0_phy_gt.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy_block.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy_sync_block.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy_support.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy_gt_common_wrapper.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy_gtwizard_0_common.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_0_phy/synth/jesd204_0_phy.v" \

vlog -work xil_defaultlib \
"glbl.v"

