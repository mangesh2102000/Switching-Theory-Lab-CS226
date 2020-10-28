module p3(f,g,h,a,b,c);			// List all inputs and outputs, by convention outputs go first
output f,g,h;				// Specification of inputs and outputs
input a,b,c;

not n1(inv_a,a);			// Required Functionality using Structural Model 
not n2(inv_b,b);
not n3(inv_c,c);

and af1(f1,a,inv_b);
and af2(f2,inv_b,inv_c); 
and af3(f3,a,c); 

or of1(f,f1,f2,f3);

or og1(g1,inv_b,c);
or og2(g2,a,b,inv_c);

and ag1(g,g1,g2);

and ah1(h1,inv_b,inv_c);
and ah2(h2,b,c); 
and ah3(h3,a,c); 

or oh1(h,h1,h2,h3);

endmodule 