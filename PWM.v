module PWM
(input clk,
input [7:0] DataIn,
output reg PWMOut
);

reg [7:0] counter;

	
always @(posedge clk)
	begin
		counter <= counter + 1'b 1;
		if (counter > DataIn)
			PWMOut <= 1'b 1;
		else
			PWMOut <= 1'b 0;
	end
	
endmodule