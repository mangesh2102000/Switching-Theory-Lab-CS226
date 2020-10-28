//Module p7 for question 7

module p7(result,flagz,RA1,RA2,WA,Data_in,WEn,MSe,operation,clk);
input[4:0] RA1,RA2,WA;
input[15:0] Data_in;					// Input data
input WEn,MSe;						// Write Enable and MUX Selector
input[2:0] operation;					// AlU operation code
input clk;						// Clock input
output[15:0] result;
wire[15:0] result;
output flagz;
reg[15:0] Reg[31:0];					//array of registers
integer i;
initial
begin
	for(i=0;i<32;i=i+1)
	begin
		Reg[i] = 16'b0;
	end
end				
	
wire[15:0] wire_result;
wire wzf;
ALU alu1(wire_result,wzf,operation,Reg[RA1],Reg[RA2]);		//Calling ALU

assign result = wire_result;
assign flagz = wzf;
wire [15:0] towrite;
mux mux1(towrite,result,Data_in,MSe);				// Calling MUX

always@(posedge clk)
begin
	if (WEn)
		Reg[WA] = towrite;
end
endmodule

// ALU module
module ALU(result,flagz,operation,I1,I2);
output[15:0] result;  
output flagz;     
input[15:0] I1,I2;
input[2:0] operation;
reg [15:0] result;
reg flagz;

parameter  [2:0] ADD = 3'b000,
                 SUB = 3'b001,
                 XOR = 3'b010,
                 AND = 3'b011,
                 OR = 3'b100,
                 INC = 3'b101,
                 LS = 3'b110,
                 RS = 3'b111;

// 16-bit ALU Implementation
always @(operation or I1 or I2)    
	case(operation)
		ADD :  begin result = I1+I2;flagz = (result == 16'b0); end 
		SUB :  begin result = I1-I2;flagz = (result == 16'b0); end
		XOR :  begin result = I1^I2;flagz = (result == 16'b0); end
		AND :  begin result = I1&I2;flagz = (result == 16'b0); end
		OR  :  begin result = I1|I2;flagz = (result == 16'b0); end
		INC :  begin result = I1+1;flagz = (result == 16'b0);  end
		LS  :  begin result = I1<<1;flagz = (result == 16'b0); end
		RS  :  begin result = I1>>1;flagz = (result == 16'b0); end
		default:  begin result = 16'd0;flagz = (result == 16'b0); end
	endcase
endmodule

// MUX module
module mux(out, input1, input2, sel);

output[15:0] out;				
input[15:0] input1;
input[15:0] input2;
input sel;

assign out = sel ? input1 : input2;
endmodule