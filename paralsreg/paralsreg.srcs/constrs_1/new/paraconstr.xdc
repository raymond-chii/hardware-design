set_property PACKAGE_PIN F22 [get_ports shift_in] 
set_property PACKAGE_PIN G22 [get_ports data_in[0]] 
set_property PACKAGE_PIN H22 [get_ports data_in[1]] 
set_property PACKAGE_PIN F21 [get_ports data_in[2]] 
set_property PACKAGE_PIN H19 [get_ports data_in[3]] 
set_property PACKAGE_PIN H18 [get_ports load] 
set_property PACKAGE_PIN H17 [get_ports shift_en] 
set_property PACKAGE_PIN M15 [get_ports clock] 
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clock}]
						
set_property PACKAGE_PIN T22 [get_ports {reg_cont[0]}] 
set_property PACKAGE_PIN T21 [get_ports {reg_cont[1]}] 
set_property PACKAGE_PIN U22 [get_ports {reg_cont[2]}] 
set_property PACKAGE_PIN U21 [get_ports {reg_cont[3]}] 
set_property PACKAGE_PIN V22 [get_ports shift_out] 



set_property IOSTANDARD LVCMOS18 [get_ports clock] 
set_property IOSTANDARD LVCMOS18 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {data_in[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports load] 
set_property IOSTANDARD LVCMOS18 [get_ports shift_en] 
set_property IOSTANDARD LVCMOS18 [get_ports shift_in] 
		
set_property IOSTANDARD LVCMOS33 [get_ports {reg_cont[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {reg_cont[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {reg_cont[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {reg_cont[0]}]  
set_property IOSTANDARD LVCMOS33 [get_ports shift_out] 

						


