// Test bench for p2.v
module tb_p2();

reg S,clk=0;
wire Y;
integer i;
p2 uut(Y,S,clk);        // Instantiate the unit under test (uut)

always #5 clk = ~clk;   // Clock 

initial 
begin
	for(i = 0; i < 100; i = i + 1) 
	begin
		S = $urandom($realtime)%2; //assign S randomly 
		#10;
		$monitor(" S = %b | Y = %b \n",S,Y);
	end
end
endmodule 