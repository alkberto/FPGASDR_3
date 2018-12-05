/*
http://surabhig.com/2-bit-signal-generator-nco-in-verilog/

This module generates sin and cos signals according to the input phase_inc_carr
To compute phase_inc use this equation:
f(desired freq) = phase_inc * 2^N * f(clk freq);
Where sin_out and cos_out will operate at desired frequency.
N is the bit width of phase_inc (64 in this case)

If phase_inc limited to 64 bits... Change bits in equation correspondingly.


With clock = 133 MHz phase_inc for  1Hz is 138697310208. 1 Mhz 138697310208000


*/
 
module nco_sig
(clk,
phase_inc_carr,
phase_accum,
sin_out,
cos_out);
 
input clk; 
input [63:0] phase_inc_carr;

output  sin_out;
output  cos_out;
parameter IDLE_nco = 0, START_nco = 1;
reg state_nco_carr = IDLE_nco ;

output reg [63:0] phase_accum;


assign sin_out = (phase_accum[63] == 1'b1)? 1'b0 : 1'b1 ; 
assign cos_out = ((phase_accum[63] ^ phase_accum[62]) == 1'b1)? 1'b0 :  1'b1;

always@(posedge clk) begin
/*	case(state_nco_carr)
		IDLE_nco: begin
			phase_accum <= 64'd0;
			state_nco_carr <= START_nco;
		end
	
		START_nco: begin */
	phase_accum <= phase_accum + phase_inc_carr;
/*			state_nco_carr <= START_nco;
		end	
	endcase
*/
end

endmodule