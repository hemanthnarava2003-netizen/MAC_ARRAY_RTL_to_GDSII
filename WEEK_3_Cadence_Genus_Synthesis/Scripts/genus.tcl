set_db library [list \
/mnt/cadence/cadence/Digital_tools/FOUNDRY/digital/45nm/dig/lib/typical.lib]
set_db lef_library [list \
/mnt/cadence/cadence/Digital_tools/FOUNDRY/digital/45nm/dig/lef/gsclib045_tech.lef \
/mnt/cadence/cadence/Digital_tools/FOUNDRY/digital/45nm/dig/lef/gsclib045_macro.lef]
read_hdl MAC.v
elaborate mac_array
create_clock -name clk -period 10 [get_ports clk]

set_input_delay 1 -clock clk \
[remove_from_collection [all_inputs] [get_ports clk]]

set_output_delay 1 -clock clk [all_outputs]
check_design
check_timing
synthesize -to_generic
synthesize -to_mapped 
report_timing > timing.rpt
report_area   > area.rpt
report_power  > power.rpt
write_hdl > synthesized_netlist.v

write_design -hierarchical -basename mac_array
