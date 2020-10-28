// Module for D-flipflop
module dff(q,d,clk);  
input d, clk;
output reg q;
always @ ( posedge clk)
assign q = d;
endmodule

// Module p2 for question 2
module p2(Y,S,clk);

input S,clk;     // Inputs
output Y;	 // Output

dff ff1(S1,S,clk);		// Logic Implementation
dff ff2(S2,S1,clk);

and a1(out1,S,S1,S2);

not n1(inv_S,S);
not n2(inv_S1,S1);
not n3(inv_S2,S2);

and a2(out2,inv_S,inv_S1,inv_S2);

or or1(Y,out1,out2);

endmodule





