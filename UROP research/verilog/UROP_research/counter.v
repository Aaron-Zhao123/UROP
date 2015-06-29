module counter(clk,number,signal);

input clk;
output[9:0] number;
output signal;
reg[9:0] number;
reg signal;


initial begin
number=10'd0;
signal=1;
end

always@(posedge clk) begin 
	if(number==1023) begin 
			number<=0;
			signal<=0;
	end
	number<=number+10'd1;
end


endmodule	