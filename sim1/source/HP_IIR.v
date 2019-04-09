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

 
 
Multiplier  Multiplier1 ( 
.Clock (clk),
.DataA (8'd 60),  // 60/64 = 0.9375
.DataB (LastOut),
.Result (MultResult), 
.ClkEn (1'b 1),
.Aclr (1'b 0)
);

assign MultResultScaled = (MultResult>>>6);
	always @(posedge clk)
	begin
		XLast <= d_in;
		LastOut <= d_out;
		iir_out <=  d_in - XLast + (MultResultScaled);
	end
	assign d_out16 = (iir_out <<< 8);
	assign d_out = d_out16[15:8];
endmodule