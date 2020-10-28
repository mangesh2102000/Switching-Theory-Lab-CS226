module tb_fsm_vendingmachine();
reg reset;
wire open;
reg clk=0;
reg coin_T,coin_F;
fsm_vendingmachine dut (open,clk,reset, coin_T,coin_F);

always #5 clk = ~clk;

 

initial
begin

reset=1'b1; #10;
reset=1'b0; coin_T=1'b0;coin_F=1'b1;#10;
reset=1'b0; coin_T=1'b1;coin_F=1'b0;#10;
reset=1'b0; coin_T=1'b1;coin_F=1'b1;#10;
reset=1'b0; coin_T=1'b0;coin_F=1'b0;#10;
reset=1'b1; #10;
reset=1'b0; coin_T=1'b0;coin_F=1'b1;#10;
reset=1'b0; coin_T=1'b0;coin_F=1'b1;#10;
reset=1'b1; #10;
end
endmodule
