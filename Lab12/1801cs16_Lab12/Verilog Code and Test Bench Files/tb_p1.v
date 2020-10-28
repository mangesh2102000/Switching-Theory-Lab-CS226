module tb_p1();			// Test Bench for p1

reg [3:0]d;			// Inputs
reg [1:0]s;

wire z;				// Outputs

integer i;
p1 uut (z,d,s);  		// Instantiate the Unit Under Test (uut)
initial 
	begin
		$monitor("D=%b, S=%b, Z=%b, time=%t\n",d,s,z,$time);      // Display outputs for specified inputs
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  			// Specify Inputs 
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule
