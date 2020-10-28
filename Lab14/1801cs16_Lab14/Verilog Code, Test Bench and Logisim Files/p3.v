// Module p3 for question 3 including implementation of finite state machine for adding two numbers

module p3(out,operation_out,clk,I1,I2);

output reg[7:0] out, operation_out;		// out is the output of alu and operation_out is the final output of the sum of two numbers
input clk;
input[7:0] I1, I2;				// I1 and I2 are the external inputs for the two muxes
reg[2:0] sela, selb, seld; 			// sela, selb, seld are select bits.				
reg[7:0] Register[1:7], A_bus, B_bus;		// Register is the memory storage and A_bus and B_bus are outputs of muxes	
reg carry;
reg[1:0] curr_state, next_state, opr;
parameter[1:0] FIRST = 2'b00;
parameter[1:0] SECOND = 2'b01;
parameter[1:0] THIRD = 2'b10;
integer i;

initial 
begin
	curr_state <= FIRST;
	A_bus = 8'd0;
	B_bus = 8'd0;
	for(i=1;i<=7;i=i+1)
	begin
		Register[i] = 8'd0;
	end
end

// State descriptions
always @(curr_state)
begin
	$monitor("Register: %p, A_bus: %b, B_bus: %b, seld: %b", Register, A_bus, B_bus, seld);
	case(curr_state)
		FIRST: 
		begin
			next_state <= SECOND;
			sela = 3'd0;
			selb = 3'd4;
			seld = 3'd1;
			opr <=	2'd0;
		end
		SECOND:
		begin
			next_state <= THIRD;
			sela = 3'd4;
			selb = 3'd0;
			seld = 3'd2;
			opr <=	2'd0;
		end
		THIRD:
		begin		
			next_state <= FIRST;
			sela = 3'd1;
			selb = 3'd2;
			seld = 3'd7;
			opr <=	2'd0;
		end
	endcase
end

always @(posedge clk) curr_state <= next_state;

// Selecting the output of mux a
always @(posedge clk)
begin
	case (sela) 
		3'b000 : A_bus = I1; 
		3'b001 : A_bus = Register[1]; 
		3'b010 : A_bus = Register[2]; 
		3'b011 : A_bus = Register[3];
		3'b100 : A_bus = Register[4]; 
		3'b101 : A_bus = Register[5]; 
		3'b110 : A_bus = Register[6]; 
		3'b111 : A_bus = Register[7]; 
	endcase 
end

// Selecting the output of mux b
always @(posedge clk)
begin
	case (selb) 
		3'b000 : B_bus = I2; 
		3'b001 : B_bus = Register[1]; 
		3'b010 : B_bus = Register[2]; 
		3'b011 : B_bus = Register[3];
		3'b100 : B_bus = Register[4]; 
		3'b101 : B_bus = Register[5]; 
		3'b110 : B_bus = Register[6]; 
		3'b111 : B_bus = Register[7]; 
	endcase
end

// ALU
always @(A_bus, B_bus, opr)
begin
	carry <= 0;
	case(opr)
	2'b00 : {carry ,out} = A_bus + B_bus;
	2'b01 : {carry ,out} = A_bus - B_bus;
	2'b10 : out = A_bus & B_bus;
	2'b11 : out = A_bus ^ B_bus;
	endcase
	Register[seld] = out;
end

always @(posedge clk)
begin
	operation_out = Register[7];
end

endmodule 

// Test bench for module p3

module tb_p3();
reg clk = 0;
reg[7:0] I1, I2;
wire[7:0] operation_out;
wire[7:0] out;

p3 uut(out,operation_out,clk,I1,I2);

always #5 clk = ~clk;
always 
begin
	I1 <= 8'd6;
	I2 <= 8'd0;
	#10;
	I1 <= 8'd0;
	I2 <= 8'd14;
	#10;
end
	
endmodule

