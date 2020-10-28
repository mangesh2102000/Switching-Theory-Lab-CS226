module mux_4x1(out,s,d);
output out;
input [1:0]s;
input [3:0]d;
assign out = d[s];
endmodule

module mux_16x1(out,s,d);
output out;
input [3:0] s;
input [15:0] d;

mux_4x1 m1(out1,s[1:0],d[3:0]);
mux_4x1 m2(out2,s[1:0],d[7:4]);
mux_4x1 m3(out3,s[1:0],d[11:8]);
mux_4x1 m4(out4,s[1:0],d[15:12]);

mux_4x1 m5(out,s[3:2],{out4,out3,out2,out1});

endmodule 