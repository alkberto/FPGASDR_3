
module top 
  (
   input    i_Rx_Serial,
 //  input Reset,
   output o_Tx_Serial,
   output   o_Rx_DV,
   output[7:0] o_Rx_Byte,
   	output [7:0] MYLED,
	output [7:0] MixerOutSin,
	input  RFIn,
	output PWMOut
   );

  wire osc_clk;
wire reset;
wire [7:0] i_Tx_Byte;
wire [63:0] phase_inc_carr ;
wire  sin_out, cos_out;//wire [7:0] MixerOutSin;
wire [7:0] MixerOutCos;
wire [15:0] decimation_ratio = 16'd 2048;
wire [7:0] CIC_out;
wire CIC_out_clk;


  
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



 assign phase_inc_carr = 64'd 138697310208;// 64'b 0000_0001_0010_1100_0000_0100_1101_0101_0101_11;
assign reset = 1'b0;

nco_sig	 nco (
.clk (osc_clk),
.phase_inc_carr ( phase_inc_carr),
.sin_out (sin_out),
.cos_out (cos_out)
);
	
Mixer Mixer1 (
.clk (osc_clk),
.RFIn (RFIn),
.sin_in (sin_out),
.cos_in (cos_out),
.MixerOutSin (MixerOutSin),
.MixerOutCos (MixerOutCos)
);
	 
CIC  #(.width(12)) CIC1 (
.clk (osc_clk),
.rst (rst),
.decimation_ratio (decimation_ratio),
.d_in (MixerOutCos),
.d_out (CIC_out),
.d_clk (CIC_out_clk)
);

PWM PWM1 (
.clk (osc_clk),
.DataIn (CIC_out),
.PWMOut (PWMOut)
);

	  
	  
assign MYLED[5:0] = MixerOutSin[5:0];
assign MYLED[7] = sin_out;
assign MYLED[6] = cos_out;
 

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
