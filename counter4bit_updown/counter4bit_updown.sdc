# Set the clock (10 ns period = 100 MHz)
create_clock -name clk -period 10 [get_ports clk]

# Set the reset as a false path (optional, since rst_n is asynchronous)
set_false_path -from [get_ports rst_n]

# (Optional) Set input and output delays if your design interfaces with external logic
# set_input_delay 2.0 -clock clk [get_ports up]
# set_output_delay 2.0 -clock clk [get_ports count]