-makelib ies_lib/xil_defaultlib -sv \
  "E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/jesd204_v7_2_4 \
  "../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/jesd204_0_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/axi_ipif/jesd204_0_address_decoder.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/jesd204_0_register_decode.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/axi_ipif/jesd204_0_axi_lite_ipif.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/axi_ipif/jesd204_0_counter_f.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/axi_ipif/jesd204_0_pselect_f.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/axi_ipif/jesd204_0_slave_attachment.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/jesd204_0_count_err.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/jesd204_0_reset_block.v" \
  "../../../../project_1.srcs/sources_1/ip/jesd204_0/synth/jesd204_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

