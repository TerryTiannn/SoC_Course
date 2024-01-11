set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS25} [get_ports {transmit[0]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS25} [get_ports {transmit[1]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS25} [get_ports {transmit[2]}]
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS25} [get_ports {transmit[3]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS25} [get_ports {transmit[4]}]

/*set_property PACKAGE_PIN AB10 [get_ports {receive[0]}]
set_property PACKAGE_PIN AB9  [get_ports {receive[1]}]
set_property PACKAGE_PIN AA6  [get_ports {receive[2]}]
set_property PACKAGE_PIN Y11  [get_ports {receive[3]}]
set_property PACKAGE_PIN Y10  [get_ports {receive[4]}]*/

set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS25} [get_ports {receive[4]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS25} [get_ports {receive[3]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS25} [get_ports {receive[2]}]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS25} [get_ports {receive[1]}]
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS25} [get_ports {receive[0]}]

set_property PACKAGE_PIN Y9 [get_ports {clk}]