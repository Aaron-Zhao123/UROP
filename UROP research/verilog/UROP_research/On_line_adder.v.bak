module four_bits_on_line_adder (x_plus,x_minus,y_plus,y_minus,clk,z_plus,z_minus);
 //this part of code follows diagram of RADIX_2 ON-line ADDER
 
	output z_plus,z_minus;
	input clk;
	input x_plus,x_minus,y_plus,y_minus;
	

	wire [1:0] g_in,g_out;
	wire t,h,w_in,w_out;
	
	
	full_adder (x_plus,~x_minus,y_plus,h,g_in[1]);
	
	assign g_in[1]=~g_in[1];
	
	D_flipflop(clk,g_in[1],g_out[1]);
	D_flipflop(clk,g_in[0],g_out[0]);
	
	assign g_out=~g_out;
	
	full_adder (g_out[1],g_out[0],h,t,w_in);
	
	D_flipflop(clk,w_in,w_out);
	
	assign t=~t;
	
	D_flipflop(clk,t,z_minus);
	D_flipflop(clk,w_out,z_plus);
	
endmodule
	