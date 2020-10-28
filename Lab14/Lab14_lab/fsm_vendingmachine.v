module fsm_vendingmachine(open,clk,reset, coin_T,coin_F);
input clk, reset;
input coin_T,coin_F;
output open;
reg [1:0] next_state;
reg[1:0]  state;
parameter [1:0] FIRST= 2'b00;
parameter [1:0] SECOND= 2'b01;
parameter [1:0] THIRD = 2'b10;
parameter [1:0] FOURTH=2'b11;
always @(posedge clk) // sequential
begin
if (reset) state <= FIRST;
else state <= next_state;
end

always @(state,coin_T,coin_F) // combinational
begin
case(state)
FIRST: if (coin_F)
 	next_state = SECOND;
	else if (coin_T) next_state = THIRD;
SECOND: if (coin_F)
	next_state = SECOND;
	else 	next_state = FOURTH;
THIRD: if (coin_F) 
	next_state = FOURTH;
	else 	next_state = FOURTH;
FOURTH: if (coin_F) 
	next_state =  FOURTH;
	else 	next_state =  FOURTH;
	endcase end
// output logic described using continuous assignment

assign open = (state ==  FOURTH);


endmodule


