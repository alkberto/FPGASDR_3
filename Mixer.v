
module Mixer
(clk,
RFIn,
sin_in,
cos_in,
RFOut,MixerOutSin,
MixerOutCos
);


input clk;
input  sin_in;
input  cos_in;
input RFIn;
output RFOut;
output  reg [7:0] MixerOutSin;
output  reg [7:0] MixerOutCos;
reg  RFInR1 = 1'b1;
reg  RFInR = 1'b1;

always @(posedge clk)
	begin 
		RFInR1 <= RFIn;
		RFInR <= RFInR1;		end

assign RFOut = RFInR;

always @(posedge clk)
	begin
		if (RFInR == 1'b 0)
			if (sin_in == 1'b 0)
				MixerOutSin <=  8'b 01111111;
			else
				MixerOutSin <= 8'b 10000001;
		else
			if (sin_in == 1'b 0)
				MixerOutSin <= 8'b 10000001;
			else
				MixerOutSin <=  8'b 01111111;	
				
		if (RFInR == 1'b 0)
			if (cos_in == 1'b 0)
				MixerOutCos <=  8'b 01111111;
			else
				MixerOutCos <= 8'b 10000001;
		else
			if (cos_in == 1'b 0)
				MixerOutCos <= 8'b 10000001;	
			else
				MixerOutCos <= 8'b 01111111;	
	end


/*
always @(posedge clk)
	begin
		if (RFInR == 1'b 0)
			if (sin_in[1] == 1'b 0)
				MixerOutSin <=  64'b 1;
			else
				MixerOutSin <= 64'h ffff_ffff_ffff_ffff;
		else
			if (sin_in[1] == 1'b 0)
				MixerOutSin <= 64'b 1;
			else
				MixerOutSin <=  64'h ffff_ffff_ffff_ffff;	
				
		if (RFInR == 1'b 0)
			if (cos_in[1] == 1'b 0)
				MixerOutCos <=  64'b 1;
			else
				MixerOutCos <= 64'h ffff_ffff_ffff_ffff;
		else
			if (cos_in[1] == 1'b 0)
				MixerOutCos <= 64'b 1;
			else
				MixerOutCos <= 64'h ffff_ffff_ffff_ffff;	
	end

*/




endmodule