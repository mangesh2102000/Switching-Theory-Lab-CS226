// Module p4 for question 4
module p4(intrusion_zone,valid,zone);
output[2:0] intrusion_zone;
output valid;
input [1:8]zone;

// Logic Implementation
assign intrusion_zone[2] = zone[5] | zone[6] | zone[7] | zone[8];
assign intrusion_zone[1] = zone[3] | zone[4] | zone[7] | zone[8];
assign intrusion_zone[0] = zone[2] | zone[6] | zone[4] | zone[8];
assign valid = zone[1] | zone[2] | zone[3] | zone[4] | zone[5] | zone[6] | zone[7] | zone[8];

endmodule

