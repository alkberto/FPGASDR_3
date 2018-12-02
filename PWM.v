module PWM
(input clk,
input wire [7:0] DataIn,
output reg PWMOut
);

reg [7:0] counter;
reg [7:0] SimIn;
reg [7:0] DataInNoSign;
/*
always @(posedge clk)
	begin
		if (counter == 255)
			SimIn <= SimIn +1;
		else
			SimIn <= SimIn;
	end;

*/

always @(posedge clk)
	begin
		counter <= counter + 1'b 1;
		if (counter == 0) 
			DataInNoSign <= DataIn +  8'd 127;
		else
			DataInNoSign <= DataInNoSign;
			
		if (counter > (DataInNoSign))  //DataIn is signed
			PWMOut <= 1'b 0;
		else
			PWMOut <= 1'b 1;
	end
	
endmodule