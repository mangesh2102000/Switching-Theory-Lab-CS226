// Module p2 for question 2

module p2(Q,upper,reset,clk); 
output reg [3:0] Q;
output upper;
input reset,clk;

always@(posedge clk)
begin
	if(reset) 
		Q = 4'b0000;	  // reset 
	else
		Q = Q + 4'b0001;  // increment
end
	assign upper = Q[3];
endmodule

// Test bench for module p2

module tb_p2(); 	
reg clk=0, reset;
wire upper;
wire [3:0]Q;

p2 UUT(Q,upper,reset, clk);

// CLock 
always #5 clk = ~clk;

initial 
begin 
	$monitor("COUNT  = %b", Q, " | UPPER = %b", upper);
	reset=1'b1; 
 	#20
 	reset=1'b0;
end

endmodule
	