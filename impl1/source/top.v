
module top 
  (
   input    i_Rx_Serial,
 //  input Reset,
   output o_Tx_Serial,
   output   o_Rx_DV,
   output[7:0] o_Rx_Byte,
   	output [7:0] MYLED,
	
	input wire In0
   );

  wire osc_clk;
wire reset;
wire [7:0] i_Tx_Byte;
wire [63:0] phase_inc_carr;
wire [1:0] sin_out, cos_out;

  
//// Internal Oscillator
	defparam OSCH_inst.NOM_FREQ = "133.00";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
		.OSC(osc_clk),
		.SEDSTDBY()     		// this signal is not required if not using SED
		);

/*	
	GSR GSR_INST (.GSR (Reset));
*/


nco_sig	 nco (
.clk (osc_clk),
.reset (reset),
.phase_inc_carr (phase_inc_carr),
.sin_out (sin_out),
.cos_out (cos_out)
);
	
assign MYLED[1:0] = sin_out;
assign MYLED[3:2] = cos_out;
assign phase_inc_carr = 64'b 10000001001011000000010011010101010110;
assign reset = 1'b0;

uart_rx  #(.CLKS_PER_BIT(1155))  uart_rx1 (
.osc_clk (osc_clk), 
.i_Rx_Serial (i_Rx_Serial),
.o_Rx_DV  (o_Rx_DV),
.o_Rx_Byte (o_Rx_Byte)
);
	

uart_tx  #(.CLKS_PER_BIT(1155))  uart_tx1 (
.osc_clk (osc_clk), 
.o_Tx_Serial (o_Tx_Serial),
.i_Tx_DV  (o_Rx_DV),
.i_Tx_Byte (o_Rx_Byte),
.o_Tx_Active (o_Tx_Active),
.o_Tx_Done (o_Tx_Done)
);	
	
	
/*	
blinking_led blinking_led1 (
.MYLED (MYLED),
.In0 (In0),
.osc_clk (osc_clk)
);
*/


endmodule
