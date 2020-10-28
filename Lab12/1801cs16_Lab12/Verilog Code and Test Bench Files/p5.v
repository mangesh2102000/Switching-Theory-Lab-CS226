module p5(A,m2,m1,m0);
output A;
input m2,m1,m0;

and aA1(A1,m0,m1);
and aA2(A2,m0,m2);
and aA3(A3,m1,m2);
or oA(A,A1,A2,A3);

endmodule 