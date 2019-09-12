
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
output [7:0] d_out;
reg [1:0] state;
reg NewSample;


	always@(posedge clkData) begin
	NewSample <= 1'b1;
	end
	

	always@(posedge clk) begin
	case (state)
		S0: state <= S1;
		S1: if (NewSample == 1) 
			begin
				state <= S0;
				NewSample <= 1'b0;
			end
				else
			state <= S1;
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
						select <= select + 1;
						sum_clr <= 16'd0;
					end
			endcase
		end
	   

endmodule