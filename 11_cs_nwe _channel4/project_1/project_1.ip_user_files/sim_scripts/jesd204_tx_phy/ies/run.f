-makelib ies_lib/xil_defaultlib -sv \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_tx_startup_fsm.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_rx_startup_fsm.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt_init.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt_gt.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt_multi_gt.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_gtrxreset_seq.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_rxpmarst_seq.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_rxrate_seq.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt/example_design/jesd204_tx_phy_gt_sync_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/ip_0/jesd204_tx_phy_gt.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy_sync_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy_support.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy_gt_common_wrapper.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy_gtwizard_0_common.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx_phy/synth/jesd204_tx_phy.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

