// Test bench for p4.v
module tb_p4();
reg[1:8] zone;
wire[2:0] intrusion_zone;
wire valid;
integer i;
p4 uut(intrusion_zone,valid,zone);    // instantiate the unit under test
initial
begin 
	$monitor("zone = %b, intrusion = %b, intrusion_zone = %b\n", zone,valid,intrusion_zone);
	for (i = 1; i <= 255; i = i*2)
	begin
	zone = i; #10;
	end 
end
endmodule 