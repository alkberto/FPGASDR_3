/* This module generates sin and cos signals according to the input phase_inc_carr
To compute phase_inc use this equation:
f(desired freq) = phase_inc * 2^N * f(clk freq);
Where sin_out and cos_out will operate at desired frequency.
N is the bit width of phase_inc (64 in this case)

If phase_inc limited to 32 bits... Change bits in equation correspondingly.
*/

module nco_sig
(clk,
reset,
phase_inc_carr,
sin_out,
cos_out);
 
input clk;
input reset;
input [63:0] phase_inc_carr;

output signed [1:0] sin_out;
output signed [1:0] cos_out;

reg [3:0] state_nco_carr;
parameter IDLE_nco = 1, START_nco = 2, DONE_nco = 3;
reg [63:0] phase_accum;
reg signed[1:0] sin_s;
reg signed[1:0] cos_s;

assign sin_out = (phase_accum[63] == 1'b1)? - 2'd1 : 2'd1 ; 
assign cos_out = ((phase_accum[63] ^ phase_accum[62]) == 1'b1)? 2'd1 : - 2'd1;

always@(posedge clk) begin
	case(state_nco_carr)
		IDLE_nco: begin
			phase_accum <= 64'd0;
			state_nco_carr <= START_nco;
		end
	
		START_nco: begin
			phase_accum <= phase_accum + phase_inc_carr;
			state_nco_carr <= START_nco;
		end
	endcase

end

endmodule