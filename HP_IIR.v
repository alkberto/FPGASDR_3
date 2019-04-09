// https://www-users.cs.york.ac.uk/~fisher/mkfilter/
// http://www.micromodeler.com/dsp/


module HP_IIR
			(input wire               clk,
			input wire signed [7:0]  d_in,
			output wire signed [7:0]  d_out
			);
reg signed [7:0]  XLast;	
reg signed [7:0]  LastOut;wire signed [15:0]  MultResult;
wire signed [15:0]  MultResultScaled;
reg signed [15:0]  iir_out;
wire signed [15:0]  d_out16;
reg signed [15:0]  d_in16;

 //Filter clock is 33203.125 Hz when master clock is 136 MHz and decimation is 4096
 
Multiplier  Multiplier1 ( 
.Clock (clk),
.DataA (8'd 64),  // 60/64 = 0.9375
.DataB (LastOut),
.Result (MultResult), 
.ClkEn (1'b 1),
.Aclr (1'b 0)
);

assign MultResultScaled = (MultResult>>>6);
	always @(posedge clk)
	begin
		d_in16 <= d_in;
		XLast <= d_in16;
		LastOut <= d_out;
		iir_out <=  d_in16 - XLast + (MultResultScaled);
	end
		assign d_out16 = (d_in16 <<< 8);

//	assign d_out16 = (iir_out <<< 8);
	assign d_out = d_out16[15:8];
endmodule