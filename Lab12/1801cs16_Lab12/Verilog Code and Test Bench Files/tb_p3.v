module tb_p3();			// Test Bench for p3
reg a,b,c;			// Inputs
wire f,g,h;			// Outputs

p3 uut (f,g,h,a,b,c);		// Instantiate the Unit Under Test (uut)

initial
	begin
		a=1'b0;b=1'b0;c=1'b0;
		#10; a=1'b0;b=1'b0;c=1'b1;
		#10; a=1'b0;b=1'b1;c=1'b0;
		#10; a=1'b0;b=1'b1;c=1'b1;		// Specify Inputs
		#10; a=1'b1;b=1'b0;c=1'b0;
		#10; a=1'b1;b=1'b0;c=1'b1;
		#10; a=1'b1;b=1'b1;c=1'b0;
		#10; a=1'b1;b=1'b1;c=1'b1;
		#10;
	end

initial
	begin
		$monitor("a=%b, b=%b, c=%b, f=%b, g=%b, h=%b, time=%t\n",a,b,c,f,g,h,$time);   // Display Output for Inputs specified
	end

endmodule 