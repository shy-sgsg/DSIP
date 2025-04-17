vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/jesd204_v7_2_4

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap jesd204_v7_2_4 activehdl/jesd204_v7_2_4

vlog -work xil_defaultlib  -sv2k12 \
"E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jesd204_v7_2_4  -v2k5 \
"../../../ipstatic/hdl/jesd204_v7_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
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

vlog -work xil_defaultlib \
"glbl.v"

