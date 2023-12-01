set_property PACKAGE_PIN Y9 [get_ports clock]
set_property IOSTANDARD LVCMOS18 [get_ports clock]
set_property PACKAGE_PIN U10 [get_ports oled_dc_n_0]
set_property PACKAGE_PIN U9 [get_ports oled_reset_n_0]
set_property PACKAGE_PIN AB12 [get_ports oled_spi_clk_0]
set_property PACKAGE_PIN AA12 [get_ports oled_spi_data_0]
set_property PACKAGE_PIN U11 [get_ports oled_vbat_0]
set_property PACKAGE_PIN U12 [get_ports oled_vdd_0]
set_property PACKAGE_PIN P16 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports oled_dc_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports oled_reset_n_0]
set_property IOSTANDARD LVCMOS18 [get_ports oled_spi_clk_0]
set_property IOSTANDARD LVCMOS18 [get_ports oled_spi_data_0]
set_property IOSTANDARD LVCMOS18 [get_ports oled_vbat_0]
set_property IOSTANDARD LVCMOS18 [get_ports oled_vdd_0]
set_property IOSTANDARD LVCMOS18 [get_ports reset]
create_clock -period 10.000 -name clock -waveform {0.000 5.000} clock