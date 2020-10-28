module p1(z,d,s);		// List all inputs and outputs, by convention outputs go first
output z;  			// Specification of inputs and outputs
input [3:0]d;
input [1:0]s;

not n1(inv_s0,s[0]);		// Required Functionality using Structural Model 
not n2(inv_s1,s[1]);

and a1(a1_o,d[3],s[0],s[1]);
and a2(a2_o,d[2],s[0],inv_s1);
and a3(a3_o,d[1],inv_s0,s[1]);
and a4(a4_o,d[0],inv_s0,inv_s1);

nor nr1(z,a1_o,a2_o,a3_o,a4_o);

endmodule 