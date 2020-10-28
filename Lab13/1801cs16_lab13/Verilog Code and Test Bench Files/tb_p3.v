// Test bench for module p3.v
module tb_p3();
wire[15:0] result;
wire flagz;
reg [15:0] I1,I2;
reg [2:0] operation;

integer i,r1_seed=1,r2_seed=2;

p3 uut(result,flagz,operation,I1,I2); // Instantiate the unit under test
initial
begin 
	// Check behaviour of each operation for random input values
	for( i = 0; i <= 7; i = i + 1)
	begin
		I1=$urandom%2**15;
		I2=$urandom%2**15;
		operation=i;
	$monitor("Operation = %d", i," | I1 = %d", I1, " | I2 = %d", I2, " | result = %d ", result,, " | flagz = %d ", flagz);
		#10;
	end
end
endmodule 