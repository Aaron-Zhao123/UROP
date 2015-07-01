module online_adder_testing(clk,data_out,data_in);

input clk;
output[1:0] data_out;
output[3:0] data_in;
wire[9:0] address;
wire[3:0] data_in;
wire[1:0] data_out;
wire signal;

counter counter1(clk,address,signal);
ROM_in ROM_input(address,clk,data_in);
On_line_adder adder(data_in[0],data_in[1],data_in[2],data_in[3],clk,data_out);
RAM_out RAM_output(address,clk,data_out,signal);


endmodule





