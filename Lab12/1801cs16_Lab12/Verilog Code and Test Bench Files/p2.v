module p2(L,I);			// List all inputs and outputs, by convention outputs go first
output L;			// Specification of inputs and outputs
input [2:0]I;

or a1(a1_o,I[2],I[1]);		// Required Functionality using Structural Model
or a2(a2_o,I[2],I[0]);

nand o1(L,a1_o,a2_o);

endmodule 