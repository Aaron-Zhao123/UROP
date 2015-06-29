module online_adder_testing(clk);

input clk;

wire[9:0] address;
wire[3:0] data_in;
wire[1:0] data_out;
wire signal;

counter counter1(clk,address,signal);
RAM RAM_input(clk,0,address,0,0,data_in);
On_line_adder adder(data_in[0],data_in[1],data_in[2],data_in[3],clk,data_out);
RAM_OUT RAM_output(clk,data_out,0,address,signal);


endmodule





