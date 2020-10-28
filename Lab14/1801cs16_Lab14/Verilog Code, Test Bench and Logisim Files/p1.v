// Module p1 for question 1

module p1(out,curr_state,clk,reset,inp);

output out;
input clk,reset,inp;
output [2:0] curr_state;
reg [2:0] curr_state;
reg [2:0] next_state;

parameter [2:0] S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100;

initial 
begin 
	curr_state = 3'b000;
	next_state = 3'b000;
end

// Sequential logic

always @(posedge clk)
begin
	if(reset)
		curr_state = S0;
	else
		curr_state = next_state;
end

// Combinational Logic

always @(curr_state or inp)
begin
	case(curr_state)

		S0 :	if(reset) next_state = S0;
				else if(inp) next_state = S1;
				else next_state = S0;

		S1 :	if(reset) next_state = S0;
				else if(inp) next_state = S2;
				else next_state = S0;

		S2 :	if(reset) next_state = S0;
				else if(inp) next_state = S2;
				else next_state = S3;

		S3 :	if(reset) next_state = S0;
				else if(inp) next_state = S4;
				else next_state = S0;

		S4 :	if(reset) next_state = S0;
				else if(inp) next_state = S2;
				else next_state = S0;

	endcase
end
    assign out = (curr_state == S4);
endmodule 

// Test bench for p1.v

module tb_p1();

reg clk,reset,inp;
wire out;
wire [2:0] curr_state;
integer i;

p1 uut(out,curr_state,clk,reset,inp);

reg [20:0] seq = 20'b11101101001001101101;

initial 
	reset = 1'b1;
	always #10 clk = ~clk;

initial
begin
	clk = 1'b1;
	reset = 1'b0;
	for (i = 20; i >= 0; i = i - 1)
	begin
		inp = seq[i]; #20
		$monitor("seq_bit = %b, out = %b, reset = %b\n", inp, out, reset, $time);
	end
end

endmodule
 
