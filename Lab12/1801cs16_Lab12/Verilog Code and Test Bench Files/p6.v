module p6(f,g,a,b,c);
output f,g;
input a,b,c;

not U3(x4,c);
nand U1b(x2,a,b);
nor U2a(x1,a,b);

not U6(x3,x2);
not U8(x6,x4);

not U9(x7,x6);
nor U2b(x5,x1,x3);

or U5(x8,x1,x7);
xnor U4(x9,x5,x6);

nand U1a(f,x2,x8);
not U7(g,x9);

endmodule 