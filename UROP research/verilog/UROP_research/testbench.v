`timescale 1ns/1ps  
module testbench();
	reg x_plus,x_minus,y_plus,y_minus;
	reg clk;
	wire[1:0] z;
	
	On_line_adder test_adder(x_plus,x_minus,y_plus,y_minus,clk,z);
	
	initial 
		begin 

			clk=0; //fist cycle
			
			#25;

			x_plus=1'b0;
			x_minus=1'b0;
			y_plus=1;
			y_minus=0;
			clk=1;
			
			#25 //second cycle
			clk=0;
			
			
			#25;

			x_plus=1'b1;      
			x_minus=1'b0;
			y_plus=0;
			y_minus=0;
			clk=1;
			
			
			#25;//thrid cycle
			clk=0;	
			
			#25

			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=1;
			clk=1;
			
			#25;//fourth cycle
			clk=0;	
			
			#25
	
			x_plus=0;
			x_minus=1;
			y_plus=0;
			y_minus=0;
			clk=1;

			#25;//5th cycle
			clk=0;
		
			#25

			x_plus=1;
			x_minus=0;
			y_plus=1;
			y_minus=0;
			clk=1;


			#25;//6th cycle
			clk=0;	
			
			#25

			x_plus=1;
			x_minus=0;
			y_plus=0;
			y_minus=1;
			clk=1;
			
			#25;//7th cycle
			clk=0;	
			
			#25

			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=1;
			clk=1;

			#25;//8th cycle
			clk=0;	
			
			#25
			x_plus=0;
			x_minus=1;
			y_plus=0;
			y_minus=0;
			clk=1;
			
			#25;//9th cycle,waiting output of z
			clk=0;	
			
			#25
			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=0;
			clk=1;

			#25;//10th cycle,waiting output of z
			clk=0;	
			
			#25
			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=0;
			clk=1;

			#25;//10th cycle,waiting output of z
			clk=0;	
			
			#25
			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=0;
			clk=1;

			#25;//10th cycle,waiting output of z
			clk=0;	
			
			#25
			x_plus=0;
			x_minus=0;
			y_plus=0;
			y_minus=0;
			clk=1;

				
			
	
	end 
endmodule
			
			
			