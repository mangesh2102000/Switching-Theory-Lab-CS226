// Test bench for p6.v

module tb_decade_counter();
wire [3:0]q;
reg clk = 0;
decade_counter uut(q, clk);
always #10 clk = ~clk;
endmodule

module tb_decoded_counter();
reg clk = 0;
wire ctrl;
decoded_counter uut(ctrl, clk);
always #10 clk = ~clk;
endmodule