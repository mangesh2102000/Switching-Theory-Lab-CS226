module tb_p2();			// Test Bench for p2
reg [2:0]I;			// Inputs
wire L;				// Outputs
integer i;
p2 uut (L,I);			// Instantiate the Unit Under Test (uut)

initial
	begin
		$monitor("I=%b, L=%b, time=%t\n",I,L,$time);	// Display outputs for specified inputs
		for(i=0;i<=7;i=i+1) 
		begin
			I = i;		// Specify Inputs
			#10;
		end
	end 

endmodule 