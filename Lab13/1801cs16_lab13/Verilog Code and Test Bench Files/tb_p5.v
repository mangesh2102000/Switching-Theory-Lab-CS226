// Test bench for p5.v
module tb_vat_buzzer_behavior();
reg[6:0] val;
wire buzzer;
integer i; 

vat_buzzer_behavior UUT(buzzer, val[0], val[1], val[2], val[3], val[4], val[5], val[6]);
initial
begin
	$monitor("val = %b, | buzzer = %b\n", val, buzzer);
	for (i = 0; i <= 10; i = i + 1)
	begin
		val = $urandom($realtime)%(128); #10;
	end
end
endmodule 

module tb_alarm_priority();
reg[1:8] zone;
wire[2:0] intrusion_zone;
wire intrusion;
integer i;

alarm_priority uut(intrusion_zone, intrusion, zone);
initial
begin 
	$monitor("zone = %b, intrusion = %b, intrusion_zone = %b\n",zone,intrusion,intrusion_zone);
	for (i = 0; i <= 20; i = i + 1)
	begin
		zone = $urandom($realtime)%(256); #10;
	end
end
endmodule 