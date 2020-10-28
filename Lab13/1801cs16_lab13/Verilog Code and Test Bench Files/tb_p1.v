// Test bench for p1.v
module tb_p1();

reg [3:0] bin;
wire [3:0] G;
integer i;
p1 uut(G,bin); 			// instantiate the unit under test (uut)

initial 
begin 
	for( i = 0; i <= 15; i = i + 1) //varying bin
	begin
		bin = i;
		#10;
		$monitor("bin = %b", bin, "  |  G = %b", G);
	end
end
endmodule 