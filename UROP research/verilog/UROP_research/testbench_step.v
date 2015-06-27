`timescale 1ns/1ps  
module testbench_step();

reg a,b,c;
wire s,carry;

full_adder adder_test(a,b,c,carry,s);

initial 
		begin
			
			#25;
			a=1;
			b=1;
			c=1;
			
			#25 //second cycle
			a=0;
			b=0;
			c=1;
			
			
			#25;

			a=0;
			b=1;
			c=0;
			
			
			#25;//thrid cycle
			a=0;
			b=1;
			c=1;
			
			#25
			a=1;
			b=0;
			c=1;
			
			#25//fourth cycle
			a=1;
			b=1;
			c=1;
			

	end
endmodule
