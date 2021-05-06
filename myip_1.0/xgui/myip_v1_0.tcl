# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.lu10_1 { PARAM_VALUE.lu10_1 } {
	# Procedure called to update lu10_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu10_1 { PARAM_VALUE.lu10_1 } {
	# Procedure called to validate lu10_1
	return true
}

proc update_PARAM_VALUE.lu10_2 { PARAM_VALUE.lu10_2 } {
	# Procedure called to update lu10_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu10_2 { PARAM_VALUE.lu10_2 } {
	# Procedure called to validate lu10_2
	return true
}

proc update_PARAM_VALUE.lu10_3 { PARAM_VALUE.lu10_3 } {
	# Procedure called to update lu10_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu10_3 { PARAM_VALUE.lu10_3 } {
	# Procedure called to validate lu10_3
	return true
}

proc update_PARAM_VALUE.lu10_4 { PARAM_VALUE.lu10_4 } {
	# Procedure called to update lu10_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu10_4 { PARAM_VALUE.lu10_4 } {
	# Procedure called to validate lu10_4
	return true
}

proc update_PARAM_VALUE.lu10_5 { PARAM_VALUE.lu10_5 } {
	# Procedure called to update lu10_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu10_5 { PARAM_VALUE.lu10_5 } {
	# Procedure called to validate lu10_5
	return true
}

proc update_PARAM_VALUE.lu14_1 { PARAM_VALUE.lu14_1 } {
	# Procedure called to update lu14_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu14_1 { PARAM_VALUE.lu14_1 } {
	# Procedure called to validate lu14_1
	return true
}

proc update_PARAM_VALUE.lu14_2 { PARAM_VALUE.lu14_2 } {
	# Procedure called to update lu14_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu14_2 { PARAM_VALUE.lu14_2 } {
	# Procedure called to validate lu14_2
	return true
}

proc update_PARAM_VALUE.lu14_3 { PARAM_VALUE.lu14_3 } {
	# Procedure called to update lu14_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu14_3 { PARAM_VALUE.lu14_3 } {
	# Procedure called to validate lu14_3
	return true
}

proc update_PARAM_VALUE.lu14_4 { PARAM_VALUE.lu14_4 } {
	# Procedure called to update lu14_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu14_4 { PARAM_VALUE.lu14_4 } {
	# Procedure called to validate lu14_4
	return true
}

proc update_PARAM_VALUE.lu14_5 { PARAM_VALUE.lu14_5 } {
	# Procedure called to update lu14_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu14_5 { PARAM_VALUE.lu14_5 } {
	# Procedure called to validate lu14_5
	return true
}

proc update_PARAM_VALUE.lu18_1 { PARAM_VALUE.lu18_1 } {
	# Procedure called to update lu18_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu18_1 { PARAM_VALUE.lu18_1 } {
	# Procedure called to validate lu18_1
	return true
}

proc update_PARAM_VALUE.lu18_2 { PARAM_VALUE.lu18_2 } {
	# Procedure called to update lu18_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu18_2 { PARAM_VALUE.lu18_2 } {
	# Procedure called to validate lu18_2
	return true
}

proc update_PARAM_VALUE.lu18_3 { PARAM_VALUE.lu18_3 } {
	# Procedure called to update lu18_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu18_3 { PARAM_VALUE.lu18_3 } {
	# Procedure called to validate lu18_3
	return true
}

proc update_PARAM_VALUE.lu18_4 { PARAM_VALUE.lu18_4 } {
	# Procedure called to update lu18_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu18_4 { PARAM_VALUE.lu18_4 } {
	# Procedure called to validate lu18_4
	return true
}

proc update_PARAM_VALUE.lu18_5 { PARAM_VALUE.lu18_5 } {
	# Procedure called to update lu18_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu18_5 { PARAM_VALUE.lu18_5 } {
	# Procedure called to validate lu18_5
	return true
}

proc update_PARAM_VALUE.lu6_1 { PARAM_VALUE.lu6_1 } {
	# Procedure called to update lu6_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu6_1 { PARAM_VALUE.lu6_1 } {
	# Procedure called to validate lu6_1
	return true
}

proc update_PARAM_VALUE.lu6_2 { PARAM_VALUE.lu6_2 } {
	# Procedure called to update lu6_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu6_2 { PARAM_VALUE.lu6_2 } {
	# Procedure called to validate lu6_2
	return true
}

proc update_PARAM_VALUE.lu6_3 { PARAM_VALUE.lu6_3 } {
	# Procedure called to update lu6_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu6_3 { PARAM_VALUE.lu6_3 } {
	# Procedure called to validate lu6_3
	return true
}

proc update_PARAM_VALUE.lu6_4 { PARAM_VALUE.lu6_4 } {
	# Procedure called to update lu6_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu6_4 { PARAM_VALUE.lu6_4 } {
	# Procedure called to validate lu6_4
	return true
}

proc update_PARAM_VALUE.lu6_5 { PARAM_VALUE.lu6_5 } {
	# Procedure called to update lu6_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.lu6_5 { PARAM_VALUE.lu6_5 } {
	# Procedure called to validate lu6_5
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.lu6_2 { MODELPARAM_VALUE.lu6_2 PARAM_VALUE.lu6_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu6_2}] ${MODELPARAM_VALUE.lu6_2}
}

proc update_MODELPARAM_VALUE.lu10_2 { MODELPARAM_VALUE.lu10_2 PARAM_VALUE.lu10_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu10_2}] ${MODELPARAM_VALUE.lu10_2}
}

proc update_MODELPARAM_VALUE.lu14_2 { MODELPARAM_VALUE.lu14_2 PARAM_VALUE.lu14_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu14_2}] ${MODELPARAM_VALUE.lu14_2}
}

proc update_MODELPARAM_VALUE.lu18_2 { MODELPARAM_VALUE.lu18_2 PARAM_VALUE.lu18_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu18_2}] ${MODELPARAM_VALUE.lu18_2}
}

proc update_MODELPARAM_VALUE.lu6_3 { MODELPARAM_VALUE.lu6_3 PARAM_VALUE.lu6_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu6_3}] ${MODELPARAM_VALUE.lu6_3}
}

proc update_MODELPARAM_VALUE.lu10_3 { MODELPARAM_VALUE.lu10_3 PARAM_VALUE.lu10_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu10_3}] ${MODELPARAM_VALUE.lu10_3}
}

proc update_MODELPARAM_VALUE.lu14_3 { MODELPARAM_VALUE.lu14_3 PARAM_VALUE.lu14_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu14_3}] ${MODELPARAM_VALUE.lu14_3}
}

proc update_MODELPARAM_VALUE.lu18_3 { MODELPARAM_VALUE.lu18_3 PARAM_VALUE.lu18_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu18_3}] ${MODELPARAM_VALUE.lu18_3}
}

proc update_MODELPARAM_VALUE.lu6_4 { MODELPARAM_VALUE.lu6_4 PARAM_VALUE.lu6_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu6_4}] ${MODELPARAM_VALUE.lu6_4}
}

proc update_MODELPARAM_VALUE.lu10_4 { MODELPARAM_VALUE.lu10_4 PARAM_VALUE.lu10_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu10_4}] ${MODELPARAM_VALUE.lu10_4}
}

proc update_MODELPARAM_VALUE.lu14_4 { MODELPARAM_VALUE.lu14_4 PARAM_VALUE.lu14_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu14_4}] ${MODELPARAM_VALUE.lu14_4}
}

proc update_MODELPARAM_VALUE.lu18_4 { MODELPARAM_VALUE.lu18_4 PARAM_VALUE.lu18_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu18_4}] ${MODELPARAM_VALUE.lu18_4}
}

proc update_MODELPARAM_VALUE.lu6_5 { MODELPARAM_VALUE.lu6_5 PARAM_VALUE.lu6_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu6_5}] ${MODELPARAM_VALUE.lu6_5}
}

proc update_MODELPARAM_VALUE.lu10_5 { MODELPARAM_VALUE.lu10_5 PARAM_VALUE.lu10_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu10_5}] ${MODELPARAM_VALUE.lu10_5}
}

proc update_MODELPARAM_VALUE.lu14_5 { MODELPARAM_VALUE.lu14_5 PARAM_VALUE.lu14_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu14_5}] ${MODELPARAM_VALUE.lu14_5}
}

proc update_MODELPARAM_VALUE.lu18_5 { MODELPARAM_VALUE.lu18_5 PARAM_VALUE.lu18_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu18_5}] ${MODELPARAM_VALUE.lu18_5}
}

proc update_MODELPARAM_VALUE.lu6_1 { MODELPARAM_VALUE.lu6_1 PARAM_VALUE.lu6_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu6_1}] ${MODELPARAM_VALUE.lu6_1}
}

proc update_MODELPARAM_VALUE.lu10_1 { MODELPARAM_VALUE.lu10_1 PARAM_VALUE.lu10_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu10_1}] ${MODELPARAM_VALUE.lu10_1}
}

proc update_MODELPARAM_VALUE.lu14_1 { MODELPARAM_VALUE.lu14_1 PARAM_VALUE.lu14_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu14_1}] ${MODELPARAM_VALUE.lu14_1}
}

proc update_MODELPARAM_VALUE.lu18_1 { MODELPARAM_VALUE.lu18_1 PARAM_VALUE.lu18_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.lu18_1}] ${MODELPARAM_VALUE.lu18_1}
}

