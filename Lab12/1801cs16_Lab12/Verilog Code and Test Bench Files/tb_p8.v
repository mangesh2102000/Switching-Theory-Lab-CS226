module tb_p8();
  reg[15:0] d;
  reg[3:0] s;
  wire out;
  integer i;
  mux_16x1 uut (out,s,d);
  initial
  begin
    $monitor("S=%b, D=%b, out=%b, time=$t\n",s,d,out,$time);
    for( i = 1; i <= 65535; i = i * 2)
    begin
      d = i;
      s = 0; #10;
      s = 1; #10;
      s = 2; #10;
      s = 3; #10;
      s = 4; #10;
      s = 5; #10;
      s = 6; #10;
      s = 7; #10;
      s = 8; #10;
      s = 9; #10;
      s = 10; #10;
      s = 11; #10;
      s = 12; #10;
      s = 13; #10;
      s = 14; #10;
      s = 15; #10;
    end
  end
endmodule

