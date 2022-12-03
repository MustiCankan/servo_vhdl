# clk
set_property PACKAGE_PIN W5 [get_ports clk]       
 set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports {pos[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[0]}]
set_property PACKAGE_PIN V16 [get_ports {pos[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[1]}]
set_property PACKAGE_PIN W16 [get_ports {pos[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[2]}]
set_property PACKAGE_PIN W17 [get_ports {pos[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[3]}]
set_property PACKAGE_PIN W15 [get_ports {pos[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[4]}]
set_property PACKAGE_PIN V15 [get_ports {pos[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[5]}]
set_property PACKAGE_PIN W14 [get_ports {pos[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {pos[6]}]
 
# reset pin   
set_property PACKAGE_PIN R2 [get_ports {reset}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
    
# servo data output
set_property PACKAGE_PIN J1 [get_ports {servo}]
    set_property IOSTANDARD LVCMOS33 [get_ports {servo}]