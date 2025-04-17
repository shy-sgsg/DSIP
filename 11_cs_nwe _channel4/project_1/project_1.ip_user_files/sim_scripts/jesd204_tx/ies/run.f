-makelib ies_lib/xil_defaultlib -sv \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/jesd204_v7_2_4 \
  "../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_address_decoder.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_register_decode.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_axi_lite_ipif.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_counter_f.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_pselect_f.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_slave_attachment.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_reset_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

