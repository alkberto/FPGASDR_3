`timescale 1 ns / 1 ps
module AMDemodulator
(clkData,
clk,
I_in ,
Q_in ,
d_out); 
 
 localparam S0 = 2'b 00;
 localparam S1 = 2'b 01; 
 
input clk; 
input clkData; 
input [7:0] I_in;
input [7:0] Q_in;
output [15:0] d_out;
reg [1:0] state;
reg NewSample;
reg [15:0] ISquare;
reg [15:0] QSquare;
reg [15:0] SquareSum;

reg signed [7:0] MultDataA;
reg signed [7:0] MultDataB;
wire signed [15:0] MultResult;

Multiplier Multiplier1 (.Clock (clk),
.ClkEn (1'b 1),
.Aclr (1'b 0),
.DataA (MultDataA),
.DataB (MultDataB),
.Result (MultResult)
);

assign d_out = SquareSum;	

	

	always@(posedge clk) begin
	case (state)
		
		S0: 
				state <= S1;
	
		S1: state <= S0;
	endcase
	end
	
	always@(posedge clk) begin
				
			case (state)
				S0: begin
					
					MultDataA <= I_in;
					MultDataB <= I_in;
					ISquare <= MultResult;
					end
				S1: begin
					MultDataA <= Q_in;
					MultDataB <= Q_in;
					QSquare <= MultResult;
					SquareSum <= ISquare + QSquare;
					
					end
			endcase
			 
		end
	 

endmodule