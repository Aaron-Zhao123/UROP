module D_flipflop (clk,in,out);

	input in,clk;
	output out;
	reg out;
	
	initial 
		out=0;
		
	
	always@(posedge clk)
		out<=in;
	
	endmodule
	
	