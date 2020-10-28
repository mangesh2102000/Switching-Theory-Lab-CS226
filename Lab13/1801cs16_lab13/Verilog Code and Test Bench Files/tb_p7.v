// Test bench for p7.v

module tb_p7();
wire[15:0] result;
wire flagz;
reg[4:0] RA1,RA2,WA;
reg[15:0] Data_in;
reg clk;
reg WEn,MSe;
reg[2:0] operation;  
integer i,j;


p7 uut(result,flagz,RA1,RA2,WA,Data_in,WEn,MSe,operation,clk);
initial 
clk = 1'b0;

always #5 clk = ~clk;

initial
	begin
$monitor("RA1=%d | RA2=%d | WA=%d | Data_in=%d | WEn=%d | MSe=%d | Operation=%d | result=%d | flagz=%d |\n",RA1,RA2,WA,Data_in,WEn,MSe,operation,result,flagz);
		#10
		WA = 31;
  		RA1 = 25;
  		RA2 = 26; 
  		MSe = 1'b0;  
  		operation = 3'd0;
		
		#10;
		for(i=0;i<=24;i=i+1)
		begin
			WEn = 1'b1;
  			WA = i;	
  			Data_in = $urandom%(64);
			#10;
		end

		WA = 31;
		MSe = 1'b1;
		RA1 = 0;
		RA2 = 1;
		operation = 3'd0;
		
		#10
		RA1 = 31;
		for(j=2;j<=25;j=j+1)
		begin
			RA2 = j;
			#10;
		end
	end
endmodule 