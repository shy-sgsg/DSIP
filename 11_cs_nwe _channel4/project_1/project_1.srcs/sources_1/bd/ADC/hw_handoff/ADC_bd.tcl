
################################################################
# This is a generated script based on design: ADC
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ADC_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# SPI_choose, axi_lite_spi, axi_lite_spi, axi_lite_spi, axi_lite_spi, ctrl_204b, ADC_spi_interface_0_0, sysref_gen

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx690tffg1927-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ADC

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ada16d6000_1_csn [ create_bd_port -dir O -from 0 -to 0 ada16d6000_1_csn ]
  set ada16d6000_1_rst [ create_bd_port -dir O -from 0 -to 0 ada16d6000_1_rst ]
  set ada16d6000_1_sclk [ create_bd_port -dir O ada16d6000_1_sclk ]
  set ada16d6000_1_sdio [ create_bd_port -dir O ada16d6000_1_sdio ]
  set ada16d6000_1_sdo [ create_bd_port -dir I ada16d6000_1_sdo ]
  set adc1_cs_n [ create_bd_port -dir O adc1_cs_n ]
  set adc1_miso [ create_bd_port -dir I adc1_miso ]
  set adc1_mosi [ create_bd_port -dir O adc1_mosi ]
  set adc1_rst [ create_bd_port -dir O -type rst adc1_rst ]
  set adc1_sclk [ create_bd_port -dir O adc1_sclk ]
  set adc2_cs [ create_bd_port -dir O adc2_cs ]
  set adc2_miso [ create_bd_port -dir I adc2_miso ]
  set adc2_mosi [ create_bd_port -dir O adc2_mosi ]
  set adc2_rst [ create_bd_port -dir O -type rst adc2_rst ]
  set adc2_sclk [ create_bd_port -dir O adc2_sclk ]
  set adc3_cs [ create_bd_port -dir O adc3_cs ]
  set adc3_miso [ create_bd_port -dir I adc3_miso ]
  set adc3_mosi [ create_bd_port -dir O adc3_mosi ]
  set adc3_rst [ create_bd_port -dir O -type rst adc3_rst ]
  set adc3_sclk [ create_bd_port -dir O adc3_sclk ]
  set adc_clk [ create_bd_port -dir I -type clk adc_clk ]
  set adc_lmx2952_cs [ create_bd_port -dir O -from 0 -to 0 adc_lmx2952_cs ]
  set adc_lmx2952_sclk [ create_bd_port -dir O adc_lmx2952_sclk ]
  set adc_lmx2952_sdio [ create_bd_port -dir O adc_lmx2952_sdio ]
  set adc_lmx2952_sdo [ create_bd_port -dir I adc_lmx2952_sdo ]
  set adc_sync [ create_bd_port -dir I -from 0 -to 0 adc_sync ]
  set clk_100m [ create_bd_port -dir I -type clk clk_100m ]
  set config_done [ create_bd_port -dir O -from 1 -to 0 config_done ]
  set cs_n [ create_bd_port -dir O cs_n ]
  set dac_lmx2592_csn [ create_bd_port -dir O -from 0 -to 0 dac_lmx2592_csn ]
  set dac_lmx2592_sclk [ create_bd_port -dir O dac_lmx2592_sclk ]
  set dac_lmx2592_sdio [ create_bd_port -dir O dac_lmx2592_sdio ]
  set dac_lmx2592_sdo [ create_bd_port -dir I dac_lmx2592_sdo ]
  set dac_status [ create_bd_port -dir I -from 0 -to 0 dac_status ]
  set jesd204b_rstp [ create_bd_port -dir O jesd204b_rstp ]
  set jesd_rst_p [ create_bd_port -dir O -from 0 -to 0 jesd_rst_p ]
  set jesd_sysref_rst [ create_bd_port -dir O -from 0 -to 0 jesd_sysref_rst ]
  set lmk04828_cs [ create_bd_port -dir O -from 0 -to 0 lmk04828_cs ]
  set lmk04828_gpo [ create_bd_port -dir O -from 0 -to 0 lmk04828_gpo ]
  set lmk04828_ld [ create_bd_port -dir I -from 1 -to 0 lmk04828_ld ]
  set lmk04828_sclk [ create_bd_port -dir O lmk04828_sclk ]
  set lmk04828_sdio [ create_bd_port -dir O lmk04828_sdio ]
  set lmk04828_sdo [ create_bd_port -dir I lmk04828_sdo ]
  set lmk04828_switch [ create_bd_port -dir O -from 0 -to 0 lmk04828_switch ]
  set lmk04828_sync [ create_bd_port -dir O -from 0 -to 0 lmk04828_sync ]
  set miso [ create_bd_port -dir I miso ]
  set mosi [ create_bd_port -dir O mosi ]
  set rst_spi [ create_bd_port -dir O -type rst rst_spi ]
  set sclk [ create_bd_port -dir O sclk ]
  set sdk_reset [ create_bd_port -dir I -type rst sdk_reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $sdk_reset
  set sysref [ create_bd_port -dir O sysref ]
  set sysref_div [ create_bd_port -dir O -from 7 -to 0 sysref_div ]
  set sysref_num [ create_bd_port -dir O -from 7 -to 0 sysref_num ]

  # Create instance: SPI_choose_0, and set properties
  set block_name SPI_choose
  set block_cell_name SPI_choose_0
  if { [catch {set SPI_choose_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $SPI_choose_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ada16d6000_1, and set properties
  set ada16d6000_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 ada16d6000_1 ]
  set_property -dict [ list \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $ada16d6000_1

  # Create instance: ada16d6000_1_rst, and set properties
  set ada16d6000_1_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 ada16d6000_1_rst ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $ada16d6000_1_rst

  # Create instance: adc1_spi, and set properties
  set block_name axi_lite_spi
  set block_cell_name adc1_spi
  if { [catch {set adc1_spi [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adc1_spi eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /adc1_spi/rst]

  # Create instance: adc2_spi, and set properties
  set block_name axi_lite_spi
  set block_cell_name adc2_spi
  if { [catch {set adc2_spi [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adc2_spi eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /adc2_spi/rst]

  # Create instance: adc3_spi, and set properties
  set block_name axi_lite_spi
  set block_cell_name adc3_spi
  if { [catch {set adc3_spi [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $adc3_spi eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /adc3_spi/rst]

  # Create instance: adc_lmx2592, and set properties
  set adc_lmx2592 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 adc_lmx2592 ]
  set_property -dict [ list \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $adc_lmx2592

  # Create instance: adc_sync, and set properties
  set adc_sync [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 adc_sync ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $adc_sync

  # Create instance: axi_lite_spi_0, and set properties
  set block_name axi_lite_spi
  set block_cell_name axi_lite_spi_0
  if { [catch {set axi_lite_spi_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_lite_spi_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /axi_lite_spi_0/rst]

  # Create instance: config_done, and set properties
  set config_done [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 config_done ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $config_done

  # Create instance: ctrl_204b_0, and set properties
  set block_name ctrl_204b
  set block_cell_name ctrl_204b_0
  if { [catch {set ctrl_204b_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ctrl_204b_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dac_lmx2592, and set properties
  set dac_lmx2592 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 dac_lmx2592 ]
  set_property -dict [ list \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $dac_lmx2592

  # Create instance: dac_status, and set properties
  set dac_status [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 dac_status ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $dac_status

  # Create instance: jesd_rst_p, and set properties
  set jesd_rst_p [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 jesd_rst_p ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $jesd_rst_p

  # Create instance: jesd_sysref_rst, and set properties
  set jesd_sysref_rst [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 jesd_sysref_rst ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $jesd_sysref_rst

  # Create instance: lmk04828_gpo, and set properties
  set lmk04828_gpo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 lmk04828_gpo ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $lmk04828_gpo

  # Create instance: lmk04828_ld, and set properties
  set lmk04828_ld [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 lmk04828_ld ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $lmk04828_ld

  # Create instance: lmk04828_spi, and set properties
  set lmk04828_spi [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 lmk04828_spi ]
  set_property -dict [ list \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
 ] $lmk04828_spi

  # Create instance: lmk04828_switch, and set properties
  set lmk04828_switch [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 lmk04828_switch ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $lmk04828_switch

  # Create instance: lmk04828_sync, and set properties
  set lmk04828_sync [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 lmk04828_sync ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $lmk04828_sync

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {21} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_adc_clk_100M, and set properties
  set rst_adc_clk_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_adc_clk_100M ]

  # Create instance: spi_interface_0, and set properties
  set block_name ADC_spi_interface_0_0
  set block_cell_name spi_interface_0
  if { [catch {set spi_interface_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $spi_interface_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sysref_div, and set properties
  set sysref_div [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 sysref_div ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $sysref_div

  # Create instance: sysref_gen_0, and set properties
  set block_name sysref_gen
  set block_cell_name sysref_gen_0
  if { [catch {set sysref_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sysref_gen_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: sysref_num, and set properties
  set sysref_num [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 sysref_num ]
  set_property -dict [ list \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $sysref_num

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_NUM_PROBE_IN {2} \
   CONFIG.C_NUM_PROBE_OUT {5} \
   CONFIG.C_PROBE_OUT0_WIDTH {16} \
   CONFIG.C_PROBE_OUT1_WIDTH {16} \
 ] $vio_0

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_lite_spi_0/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins ctrl_204b_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins lmk04828_spi/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins lmk04828_sync/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins lmk04828_switch/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins lmk04828_ld/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins config_done/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins lmk04828_gpo/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins adc_sync/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins adc_lmx2592/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins dac_lmx2592/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins ada16d6000_1/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins ada16d6000_1_rst/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M13_AXI [get_bd_intf_pins jesd_rst_p/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M14_AXI [get_bd_intf_pins jesd_sysref_rst/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M15_AXI [get_bd_intf_pins microblaze_0_axi_periph/M15_AXI] [get_bd_intf_pins sysref_div/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M16_AXI [get_bd_intf_pins microblaze_0_axi_periph/M16_AXI] [get_bd_intf_pins sysref_num/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M17_AXI [get_bd_intf_pins dac_status/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M18_AXI [get_bd_intf_pins adc1_spi/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M19_AXI [get_bd_intf_pins adc2_spi/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M19_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M20_AXI [get_bd_intf_pins adc3_spi/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M20_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]

  # Create port connections
  connect_bd_net -net SPI_choose_0_csn [get_bd_ports cs_n] [get_bd_pins SPI_choose_0/csn]
  connect_bd_net -net SPI_choose_0_sclk [get_bd_ports sclk] [get_bd_pins SPI_choose_0/sclk]
  connect_bd_net -net SPI_choose_0_sdi [get_bd_ports mosi] [get_bd_pins SPI_choose_0/sdi]
  connect_bd_net -net ada16d6000_1_io0_o [get_bd_ports ada16d6000_1_sdio] [get_bd_pins ada16d6000_1/io0_o]
  connect_bd_net -net ada16d6000_1_rst1_gpio_io_o [get_bd_ports jesd_rst_p] [get_bd_pins jesd_rst_p/gpio_io_o]
  connect_bd_net -net ada16d6000_1_rst_gpio_io_o [get_bd_ports ada16d6000_1_rst] [get_bd_pins ada16d6000_1_rst/gpio_io_o]
  connect_bd_net -net ada16d6000_1_sck_o [get_bd_ports ada16d6000_1_sclk] [get_bd_pins ada16d6000_1/sck_o]
  connect_bd_net -net ada16d6000_1_ss_o [get_bd_ports ada16d6000_1_csn] [get_bd_pins ada16d6000_1/ss_o]
  connect_bd_net -net adc1_miso [get_bd_ports adc1_miso] [get_bd_pins adc1_spi/miso]
  connect_bd_net -net adc1_spi1_cs_n [get_bd_ports adc2_cs] [get_bd_pins adc2_spi/cs_n]
  connect_bd_net -net adc1_spi1_cs_n1 [get_bd_ports adc3_cs] [get_bd_pins adc3_spi/cs_n]
  connect_bd_net -net adc1_spi1_mosi [get_bd_ports adc2_mosi] [get_bd_pins adc2_spi/mosi]
  connect_bd_net -net adc1_spi1_mosi1 [get_bd_ports adc3_mosi] [get_bd_pins adc3_spi/mosi]
  connect_bd_net -net adc1_spi1_rst [get_bd_ports adc2_rst] [get_bd_pins adc2_spi/rst]
  connect_bd_net -net adc1_spi1_rst1 [get_bd_ports adc3_rst] [get_bd_pins adc3_spi/rst]
  connect_bd_net -net adc1_spi1_sclk [get_bd_ports adc2_sclk] [get_bd_pins adc2_spi/sclk]
  connect_bd_net -net adc1_spi1_sclk1 [get_bd_ports adc3_sclk] [get_bd_pins adc3_spi/sclk]
  connect_bd_net -net adc2_miso [get_bd_ports adc2_miso] [get_bd_pins adc2_spi/miso]
  connect_bd_net -net adc3_miso [get_bd_ports adc3_miso] [get_bd_pins adc3_spi/miso]
  connect_bd_net -net adc_clk_1 [get_bd_ports adc_clk] [get_bd_pins ctrl_204b_0/core_clk] [get_bd_pins sysref_gen_0/clk]
  connect_bd_net -net adc_lmx2592_io0_o [get_bd_ports adc_lmx2952_sdio] [get_bd_pins adc_lmx2592/io0_o]
  connect_bd_net -net adc_lmx2592_sck_o [get_bd_ports adc_lmx2952_sclk] [get_bd_pins adc_lmx2592/sck_o]
  connect_bd_net -net adc_lmx2592_ss_o [get_bd_ports adc_lmx2952_cs] [get_bd_pins adc_lmx2592/ss_o]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_ports lmk04828_sync] [get_bd_pins lmk04828_sync/gpio_io_o]
  connect_bd_net -net axi_lite_spi_0_cs_n [get_bd_pins SPI_choose_0/csn_sdk] [get_bd_pins axi_lite_spi_0/cs_n]
  connect_bd_net -net axi_lite_spi_0_mosi [get_bd_pins SPI_choose_0/sdi_sdk] [get_bd_pins axi_lite_spi_0/mosi]
  connect_bd_net -net axi_lite_spi_0_rst [get_bd_ports rst_spi] [get_bd_pins axi_lite_spi_0/rst]
  connect_bd_net -net axi_lite_spi_0_sclk [get_bd_pins SPI_choose_0/sclk_sdk] [get_bd_pins axi_lite_spi_0/sclk]
  connect_bd_net -net axi_lite_spi_1_cs_n [get_bd_ports adc1_cs_n] [get_bd_pins adc1_spi/cs_n]
  connect_bd_net -net axi_lite_spi_1_mosi [get_bd_ports adc1_mosi] [get_bd_pins adc1_spi/mosi]
  connect_bd_net -net axi_lite_spi_1_rst [get_bd_ports adc1_rst] [get_bd_pins adc1_spi/rst]
  connect_bd_net -net axi_lite_spi_1_sclk [get_bd_ports adc1_sclk] [get_bd_pins adc1_spi/sclk]
  connect_bd_net -net config_done_gpio_io_o [get_bd_ports config_done] [get_bd_pins config_done/gpio_io_o]
  connect_bd_net -net ctrl_204b_0_rst_jesd204b [get_bd_ports jesd204b_rstp] [get_bd_pins ctrl_204b_0/rst_jesd204b]
  connect_bd_net -net ctrl_204b_0_rst_sysref [get_bd_pins ctrl_204b_0/rst_sysref] [get_bd_pins sysref_gen_0/rst]
  connect_bd_net -net ctrl_204b_0_sysref_div_cfg [get_bd_pins ctrl_204b_0/sysref_div_cfg] [get_bd_pins sysref_gen_0/div_cfg]
  connect_bd_net -net ctrl_204b_0_sysref_num [get_bd_pins ctrl_204b_0/sysref_num] [get_bd_pins sysref_gen_0/sysref_num]
  connect_bd_net -net dac_lmx2592_io0_o [get_bd_ports dac_lmx2592_sdio] [get_bd_pins dac_lmx2592/io0_o]
  connect_bd_net -net dac_lmx2592_sck_o [get_bd_ports dac_lmx2592_sclk] [get_bd_pins dac_lmx2592/sck_o]
  connect_bd_net -net dac_lmx2592_ss_o [get_bd_ports dac_lmx2592_csn] [get_bd_pins dac_lmx2592/ss_o]
  connect_bd_net -net dac_status_1 [get_bd_ports dac_status] [get_bd_pins dac_status/gpio_io_i]
  connect_bd_net -net gpio_io_i_0_1 [get_bd_ports lmk04828_ld] [get_bd_pins lmk04828_ld/gpio_io_i]
  connect_bd_net -net gpio_io_i_0_2 [get_bd_ports adc_sync] [get_bd_pins adc_sync/gpio_io_i]
  connect_bd_net -net io1_i_0_1 [get_bd_ports lmk04828_sdo] [get_bd_pins lmk04828_spi/io1_i]
  connect_bd_net -net io1_i_0_2 [get_bd_ports dac_lmx2592_sdo] [get_bd_pins dac_lmx2592/io1_i]
  connect_bd_net -net io1_i_0_3 [get_bd_ports ada16d6000_1_sdo] [get_bd_pins ada16d6000_1/io1_i]
  connect_bd_net -net io1_i_1_1 [get_bd_ports adc_lmx2952_sdo] [get_bd_pins adc_lmx2592/io1_i]
  connect_bd_net -net jesd_sysref_rst_gpio_io_o [get_bd_ports jesd_sysref_rst] [get_bd_pins jesd_sysref_rst/gpio_io_o]
  connect_bd_net -net lmk04828_gpo_gpio_io_o [get_bd_ports lmk04828_gpo] [get_bd_pins lmk04828_gpo/gpio_io_o]
  connect_bd_net -net lmk04828_spi_io0_o [get_bd_ports lmk04828_sdio] [get_bd_pins lmk04828_spi/io0_o]
  connect_bd_net -net lmk04828_spi_sck_o [get_bd_ports lmk04828_sclk] [get_bd_pins lmk04828_spi/sck_o]
  connect_bd_net -net lmk04828_spi_ss_o [get_bd_ports lmk04828_cs] [get_bd_pins lmk04828_spi/ss_o]
  connect_bd_net -net lmk04828_switch_gpio_io_o [get_bd_ports lmk04828_switch] [get_bd_pins lmk04828_switch/gpio_io_o]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_adc_clk_100M/mb_debug_sys_rst]
  connect_bd_net -net miso_0_1 [get_bd_ports miso] [get_bd_pins axi_lite_spi_0/miso] [get_bd_pins spi_interface_0/miso]
  connect_bd_net -net reset_rtl_0_1 [get_bd_ports sdk_reset] [get_bd_pins rst_adc_clk_100M/ext_reset_in]
  connect_bd_net -net rst_adc_clk_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_adc_clk_100M/bus_struct_reset]
  connect_bd_net -net rst_adc_clk_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_adc_clk_100M/mb_reset]
  connect_bd_net -net rst_adc_clk_100M_peripheral_aresetn [get_bd_pins ada16d6000_1/s_axi_aresetn] [get_bd_pins ada16d6000_1_rst/s_axi_aresetn] [get_bd_pins adc1_spi/s_axi_aresetn] [get_bd_pins adc2_spi/s_axi_aresetn] [get_bd_pins adc3_spi/s_axi_aresetn] [get_bd_pins adc_lmx2592/s_axi_aresetn] [get_bd_pins adc_sync/s_axi_aresetn] [get_bd_pins axi_lite_spi_0/s_axi_aresetn] [get_bd_pins config_done/s_axi_aresetn] [get_bd_pins ctrl_204b_0/S_AXI_ARESETN] [get_bd_pins dac_lmx2592/s_axi_aresetn] [get_bd_pins dac_status/s_axi_aresetn] [get_bd_pins jesd_rst_p/s_axi_aresetn] [get_bd_pins jesd_sysref_rst/s_axi_aresetn] [get_bd_pins lmk04828_gpo/s_axi_aresetn] [get_bd_pins lmk04828_ld/s_axi_aresetn] [get_bd_pins lmk04828_spi/s_axi_aresetn] [get_bd_pins lmk04828_switch/s_axi_aresetn] [get_bd_pins lmk04828_sync/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/M12_ARESETN] [get_bd_pins microblaze_0_axi_periph/M13_ARESETN] [get_bd_pins microblaze_0_axi_periph/M14_ARESETN] [get_bd_pins microblaze_0_axi_periph/M15_ARESETN] [get_bd_pins microblaze_0_axi_periph/M16_ARESETN] [get_bd_pins microblaze_0_axi_periph/M17_ARESETN] [get_bd_pins microblaze_0_axi_periph/M18_ARESETN] [get_bd_pins microblaze_0_axi_periph/M19_ARESETN] [get_bd_pins microblaze_0_axi_periph/M20_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_adc_clk_100M/peripheral_aresetn] [get_bd_pins sysref_div/s_axi_aresetn] [get_bd_pins sysref_num/s_axi_aresetn]
  connect_bd_net -net slowest_sync_clk_0_1 [get_bd_ports clk_100m] [get_bd_pins ada16d6000_1/ext_spi_clk] [get_bd_pins ada16d6000_1/s_axi_aclk] [get_bd_pins ada16d6000_1_rst/s_axi_aclk] [get_bd_pins adc1_spi/s_axi_aclk] [get_bd_pins adc2_spi/s_axi_aclk] [get_bd_pins adc3_spi/s_axi_aclk] [get_bd_pins adc_lmx2592/ext_spi_clk] [get_bd_pins adc_lmx2592/s_axi_aclk] [get_bd_pins adc_sync/s_axi_aclk] [get_bd_pins axi_lite_spi_0/s_axi_aclk] [get_bd_pins config_done/s_axi_aclk] [get_bd_pins ctrl_204b_0/S_AXI_ACLK] [get_bd_pins dac_lmx2592/ext_spi_clk] [get_bd_pins dac_lmx2592/s_axi_aclk] [get_bd_pins dac_status/s_axi_aclk] [get_bd_pins jesd_rst_p/s_axi_aclk] [get_bd_pins jesd_sysref_rst/s_axi_aclk] [get_bd_pins lmk04828_gpo/s_axi_aclk] [get_bd_pins lmk04828_ld/s_axi_aclk] [get_bd_pins lmk04828_spi/ext_spi_clk] [get_bd_pins lmk04828_spi/s_axi_aclk] [get_bd_pins lmk04828_switch/s_axi_aclk] [get_bd_pins lmk04828_sync/s_axi_aclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/M12_ACLK] [get_bd_pins microblaze_0_axi_periph/M13_ACLK] [get_bd_pins microblaze_0_axi_periph/M14_ACLK] [get_bd_pins microblaze_0_axi_periph/M15_ACLK] [get_bd_pins microblaze_0_axi_periph/M16_ACLK] [get_bd_pins microblaze_0_axi_periph/M17_ACLK] [get_bd_pins microblaze_0_axi_periph/M18_ACLK] [get_bd_pins microblaze_0_axi_periph/M19_ACLK] [get_bd_pins microblaze_0_axi_periph/M20_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_adc_clk_100M/slowest_sync_clk] [get_bd_pins spi_interface_0/clk] [get_bd_pins sysref_div/s_axi_aclk] [get_bd_pins sysref_num/s_axi_aclk] [get_bd_pins vio_0/clk]
  connect_bd_net -net spi_interface_0_busy [get_bd_pins spi_interface_0/busy] [get_bd_pins vio_0/probe_in1]
  connect_bd_net -net spi_interface_0_cs_n [get_bd_pins SPI_choose_0/csn_spi] [get_bd_pins spi_interface_0/cs_n]
  connect_bd_net -net spi_interface_0_data_out [get_bd_pins spi_interface_0/data_out] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net spi_interface_0_mosi [get_bd_pins SPI_choose_0/sdi_spi] [get_bd_pins spi_interface_0/mosi]
  connect_bd_net -net spi_interface_0_sclk [get_bd_pins SPI_choose_0/sclk_spi] [get_bd_pins spi_interface_0/sclk]
  connect_bd_net -net sysref_div_gpio_io_o [get_bd_ports sysref_div] [get_bd_pins sysref_div/gpio_io_o]
  connect_bd_net -net sysref_gen_0_sysref [get_bd_ports sysref] [get_bd_pins sysref_gen_0/sysref]
  connect_bd_net -net sysref_num_gpio_io_o [get_bd_ports sysref_num] [get_bd_pins sysref_num/gpio_io_o]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins spi_interface_0/addr] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net vio_0_probe_out1 [get_bd_pins spi_interface_0/data_in] [get_bd_pins vio_0/probe_out1]
  connect_bd_net -net vio_0_probe_out2 [get_bd_pins spi_interface_0/ready] [get_bd_pins vio_0/probe_out2]
  connect_bd_net -net vio_0_probe_out3 [get_bd_pins spi_interface_0/rst] [get_bd_pins vio_0/probe_out3]
  connect_bd_net -net vio_0_probe_out4 [get_bd_pins SPI_choose_0/vio_en] [get_bd_pins vio_0/probe_out4]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A50000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ada16d6000_1/AXI_LITE/Reg] SEG_ada16d6000_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40060000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ada16d6000_1_rst/S_AXI/Reg] SEG_ada16d6000_1_rst_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A80000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs adc3_spi/s_axi/reg0] SEG_adc1_spi1_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A60000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs adc1_spi/s_axi/reg0] SEG_adc1_spi_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A70000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs adc2_spi/s_axi/reg0] SEG_adc2_spi_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs adc_lmx2592/AXI_LITE/Reg] SEG_adc_lmx2592_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40050000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs adc_sync/S_AXI/Reg] SEG_adc_sync_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_lite_spi_0/s_axi/reg0] SEG_axi_lite_spi_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs config_done/S_AXI/Reg] SEG_config_done_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ctrl_204b_0/S_AXI/reg0] SEG_ctrl_204b_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A40000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs dac_lmx2592/AXI_LITE/Reg] SEG_dac_lmx2592_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400B0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs dac_status/S_AXI/Reg] SEG_dac_status_Reg
  create_bd_addr_seg -range 0x00080000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00080000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x40070000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs jesd_rst_p/S_AXI/Reg] SEG_jesd_rst_p_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40080000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs jesd_sysref_rst/S_AXI/Reg] SEG_jesd_sysref_rst_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40040000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs lmk04828_gpo/S_AXI/Reg] SEG_lmk04828_gpo_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs lmk04828_ld/S_AXI/Reg] SEG_lmk04828_ld_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs lmk04828_spi/AXI_LITE/Reg] SEG_lmk04828_spi_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs lmk04828_switch/S_AXI/Reg] SEG_lmk04828_switch_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs lmk04828_sync/S_AXI/Reg] SEG_lmk04828_sync_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40090000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sysref_div/S_AXI/Reg] SEG_sysref_div_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400A0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs sysref_num/S_AXI/Reg] SEG_sysref_num_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


