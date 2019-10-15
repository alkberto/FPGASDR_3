
`timescale 1 ns / 1 ps

PUR PUR_INST (.PUR (<powerup reset sig>));

module AMDemod_tb();
reg clkData, clk;
reg[7:0] I_in;
reg[7:0] Q_in;
wire [15:0] d_out;

AMDemodulator AMDemodulator (
.clkData (clkData),
.clk (clk),
.I_in (I_in),
.Q_in (Q_in),
.d_out (d_out)
);  

initial begin
I_in = 10; Q_in = 20; clkData =0; clk =0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clkData=1; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clkData=0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
clk=1; #10;
clk=0; #10;
end
endmodule


