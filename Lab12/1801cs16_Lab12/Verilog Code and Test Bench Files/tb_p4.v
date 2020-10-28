module tb_p4_comparators();
parameter N = 8;
reg [N-1:0] a, b;
wire eq, neq, lt, lte, gt, gte;
integer i;
p4_comparators uut (eq,neq,lt,lte,gt,gte,a,b); 

initial 
	begin
	$monitor("a=%b, b=%b, eq=%b, neq=%b, lt=%b, lte=%b, gt=%b, gte=%b, time=%t\n",a,b,eq,neq,lt,lte,gt,gte,$time);
	
	// Checking for 10 random pair of integers
	for(i=0;i<=9;i=i+1)
	begin
		a = $urandom%2**N-1;
		b = $urandom%2**N-1;
		#10;
	end
	end

endmodule 