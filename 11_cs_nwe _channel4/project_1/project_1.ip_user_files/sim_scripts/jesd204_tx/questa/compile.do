vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/jesd204_v7_2_4

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap jesd204_v7_2_4 questa_lib/msim/jesd204_v7_2_4

vlog -work xil_defaultlib -64 -sv \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jesd204_v7_2_4 -64 \
"../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_block.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_address_decoder.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_register_decode.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_axi_lite_ipif.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_counter_f.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_pselect_f.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/axi_ipif/jesd204_tx_slave_attachment.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx_reset_block.v" \
"../../../../project_1.srcs/sources_1/ip/jesd204_tx/synth/jesd204_tx.v" \

vlog -work xil_defaultlib \
"glbl.v"

