// Type 1
module p7_mux_4x1_type1(out,s,d);
output out;
input [1:0]s;
input [3:0]d;

not n1(inv_s0,s[0]);
not n2(inv_s1,s[1]);

and a1(a1_o,d[0],inv_s0,inv_s1);
and a2(a2_o,d[1],inv_s1,s[0]);
and a3(a3_o,d[2],s[1],inv_s0);
and a4(a4_o,d[3],s[1],s[0]);

or o1(out,a1_o,a2_o,a3_o,a4_o);

endmodule 

// Type 2
module p7_mux_4x1_type2(out,s,d);
output out;
input [1:0]s;
input [3:0]d;

assign out = s[1] ? (s[0] ? d[3]:d[2] ) : (s[0] ? d[1]:d[0] );

endmodule 

// Type 3
module p7_mux_4x1_type3(out,s,d);
output reg out;
input [1:0]s;
input [3:0]d;

always @(s or d)
begin
	case(s)
	0 : out = d[0];
	1 : out = d[1];
	2 : out = d[2];
	3 : out = d[3];
	endcase	
end
endmodule

// Type 4
module p7_mux_4x1_type4(out,s,d);
output reg out;
input [1:0]s;
input [3:0]d;

always @(s or d)
begin
	if(s==0)
	out = d[0];
	if(s==1)
	out = d[1];
	if(s==2)
	out = d[2];
	if(s==3)
	out = d[3];
end
endmodule

// Type 5
module p7_mux_4x1_type5(out,s,d);
output reg out;
input [1:0]s;
input [3:0]d;

always @(s or d)
begin
	out = d[s];
end
endmodule

