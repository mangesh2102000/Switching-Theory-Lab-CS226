// Type 1
module tb_p7_mux_4x1_type1();
reg [3:0]d;
reg [1:0]s;
wire out;
integer i;
p7_mux_4x1_type1 uut (out,s,d);
initial 
	begin
		$monitor("S=%b, D=%b, out=%b, time=%t\n",s,d,out,$time);
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule 

// Type 2
module tb_p7_mux_4x1_type2();
reg [3:0]d;
reg [1:0]s;
wire out;
integer i;
p7_mux_4x1_type2 uut (out,s,d);
initial 
	begin
		$monitor("S=%b, D=%b, out=%b, time=%t\n",s,d,out,$time);
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule 

// Type 3
module tb_p7_mux_4x1_type3();
reg [3:0]d;
reg [1:0]s;
wire out;
integer i;
p7_mux_4x1_type3 uut (out,s,d);
initial 
	begin
		$monitor("S=%b, D=%b, out=%b, time=%t\n",s,d,out,$time);
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule 

// Type 4
module tb_p7_mux_4x1_type4();
reg [3:0]d;
reg [1:0]s;
wire out;
integer i;
p7_mux_4x1_type4 uut (out,s,d);
initial 
	begin
		$monitor("S=%b, D=%b, out=%b, time=%t\n",s,d,out,$time);
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule 

// Type 5
module tb_p7_mux_4x1_type5();
reg [3:0]d;
reg [1:0]s;
wire out;
integer i;
p7_mux_4x1_type5 uut (out,s,d);
initial 
	begin
		$monitor("S=%b, D=%b, out=%b, time=%t\n",s,d,out,$time);
		for(i=0;i<=15;i=i+1) 
		begin
			d = i;
			s = 0;  
			#10;
		        s = 1;  
		        #10;
		        s = 2;  
		        #10;
		        s = 3;  
		        #10;
		end
	end 

endmodule 
