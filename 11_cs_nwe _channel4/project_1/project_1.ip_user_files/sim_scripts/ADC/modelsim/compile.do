vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/lib_fifo_v1_0_12
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_quad_spi_v3_2_17
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/microblaze_v11_0_0
vlib modelsim_lib/msim/mdm_v3_2_15
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 modelsim_lib/msim/lib_fifo_v1_0_12
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_quad_spi_v3_2_17 modelsim_lib/msim/axi_quad_spi_v3_2_17
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap microblaze_v11_0_0 modelsim_lib/msim/microblaze_v11_0_0
vmap mdm_v3_2_15 modelsim_lib/msim/mdm_v3_2_15
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"D:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/soft_stup/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../bd/ADC/ip/ADC_sysref_gen_0_0/sim/ADC_sysref_gen_0_0.v" \
"../../../bd/ADC/ip/ADC_axi_lite_spi_0_0/sim/ADC_axi_lite_spi_0_0.v" \
"../../../bd/ADC/ip/ADC_SPI_choose_0_0/sim/ADC_SPI_choose_0_0.v" \
"../../../bd/ADC/ip/ADC_ctrl_204b_0_0/sim/ADC_ctrl_204b_0_0.v" \
"../../../bd/ADC/ip/ADC_ADC_spi_interface_0_0_0_0/sim/ADC_ADC_spi_interface_0_0_0_0.v" \
"../../../bd/ADC/ip/ADC_vio_0_0/sim/ADC_vio_0_0.v" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_17 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/c3d3/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_axi_quad_spi_0_0/sim/ADC_axi_quad_spi_0_0.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_axi_gpio_0_0/sim/ADC_axi_gpio_0_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_sync_0/sim/ADC_lmk04828_sync_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_sync_1/sim/ADC_lmk04828_sync_1.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_sync_2/sim/ADC_lmk04828_sync_2.vhd" \
"../../../bd/ADC/ip/ADC_config_done_0/sim/ADC_config_done_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_ld_0/sim/ADC_lmk04828_ld_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_spi_0/sim/ADC_lmk04828_spi_0.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_microblaze_0_0/sim/ADC_microblaze_0_0.vhd" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_mdm_1_0/sim/ADC_mdm_1_0.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_rst_adc_clk_100M_0/sim/ADC_rst_adc_clk_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../bd/ADC/ip/ADC_xbar_0/sim/ADC_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_dlmb_v10_0/sim/ADC_dlmb_v10_0.vhd" \
"../../../bd/ADC/ip/ADC_ilmb_v10_0/sim/ADC_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_dlmb_bram_if_cntlr_0/sim/ADC_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/ADC/ip/ADC_ilmb_bram_if_cntlr_0/sim/ADC_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../../project_1.srcs/sources_1/bd/ADC/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../bd/ADC/ip/ADC_lmb_bram_0/sim/ADC_lmb_bram_0.v" \
"../../../bd/ADC/sim/ADC.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ADC/ip/ADC_adc_lmx2592_0/sim/ADC_adc_lmx2592_0.vhd" \
"../../../bd/ADC/ip/ADC_dac_lmx2592_0/sim/ADC_dac_lmx2592_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_sync_3/sim/ADC_lmk04828_sync_3.vhd" \
"../../../bd/ADC/ip/ADC_ada16d6000_1_rst_0/sim/ADC_ada16d6000_1_rst_0.vhd" \
"../../../bd/ADC/ip/ADC_jesd_rst_p_0/sim/ADC_jesd_rst_p_0.vhd" \
"../../../bd/ADC/ip/ADC_jesd_sysref_rst_0/sim/ADC_jesd_sysref_rst_0.vhd" \
"../../../bd/ADC/ip/ADC_sysref_div_0/sim/ADC_sysref_div_0.vhd" \
"../../../bd/ADC/ip/ADC_lmk04828_ld_1/sim/ADC_lmk04828_ld_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ADC/ipshared/46fd/hdl" \
"../../../bd/ADC/ip/ADC_axi_lite_spi_0_1/sim/ADC_axi_lite_spi_0_1.v" \
"../../../bd/ADC/ip/ADC_adc1_spi_0/sim/ADC_adc1_spi_0.v" \
"../../../bd/ADC/ip/ADC_adc1_spi_1/sim/ADC_adc1_spi_1.v" \
"../../../bd/ADC/ip/ADC_tier2_xbar_0_0/sim/ADC_tier2_xbar_0_0.v" \
"../../../bd/ADC/ip/ADC_tier2_xbar_1_0/sim/ADC_tier2_xbar_1_0.v" \
"../../../bd/ADC/ip/ADC_tier2_xbar_2_0/sim/ADC_tier2_xbar_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

