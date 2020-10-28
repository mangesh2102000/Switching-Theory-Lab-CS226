// Module p3 for question 3
module p3(result,flagz,operation,I1,I2);
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


