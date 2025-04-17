vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/jesd204_v7_2_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap jesd204_v7_2_4 riviera/jesd204_v7_2_4

vlog -work xil_defaultlib  -sv2k12 \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/setup/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jesd204_v7_2_4  -v2k5 \
"../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
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

