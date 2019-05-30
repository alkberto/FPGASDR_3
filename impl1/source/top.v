//https://www.youtube.com/watch?v=SmdEP_ZsBgM

module top 
  (
   input    i_Rx_Serial,
 //  input Reset,
   output o_Tx_Serial,
   output   o_Rx_DV,
   output[7:0] o_Rx_Byte,
   	output [7:0] MYLED,
	output [7:0] MixerOutSin,
	input XIn,
	output XOut,
	input  RFIn, 
	input DiffIn,
	output DiffOut,
	output PWMOut,
	output sinGen,
	output sin_out,
	output CIC_out_clk
   );

  wire osc_clk;
wire reset;
wire [7:0] i_Tx_Byte;
wire [63:0] phase_inc_carr, phase_inc_carrGen ;
//wire  sin_out, cos_out;
wire  cosGen;//wire [7:0] MixerOutSin;
wire [7:0] MixerOutCos;
wire [15:0] decimation_ratio = 16'd 16384;  //4096
wire [7:0] CIC_out;
wire [63:0] phase_accum;
wire [7:0] LOSine;
wire [7:0] LOCosine;
wire [7:0] IIR_out;

// wire CIC_out_clk;

/*
 Valid values are 2.08,2.15,2.22,2.29,2.38,2.46,2.56,2.66,2.77,2.89,3.02,3.17,3.33,3.50,3.69,3.91,4.16,
 4.29,4.43,4.59,4.75,4.93,5.12,5.32,5.54,5.78,6.05,6.33,6.65,7.00,7.39,7.82,8.31,8.58,8.87,9.17,9.50,9.85,
 10.23,10.64,11.08,11.57,12.09,12.67,13.30,14.00,14.78,15.65,16.63,17.73,19.00,20.46,22.17,24.18,26.60,
 29.56,33.25,38.00,44.33,53.20,66.50,88.67,133.00 MHz. 

*/
/*
//// Internal Oscillator
	defparam OSCH_inst.NOM_FREQ = "133.00";
	OSCH OSCH_inst
		( 
		.STDBY(1'b0), 		// 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
		.OSC(osc_clk),
		.SEDSTDBY()     		// this signal is not required if not using SED
		);
 
 */
 
/*	
	GSR GSR_INST (.GSR (Reset));
*/
// 136 MHz Clock:
// 1000000 1E1E1E1E1DBDFC0
// 900000  1B1B1B1B1B1B1B1  RAI 1 Siziano Milano
// 540000  104376A9DD10437  Kossuth Budapest 
// 1359000 28EE0CC5170287A  Radio Spore Bologna, Radio Wombat Firenze, Radio Gramma Genova 
// 855000  19c0268cf359c02  Radio Romania Actualitati
// 963000  1d00d7e21f90340
// NCO additional increment for 9 KHz is  0X45641C6E59DF0
// NCO additional increment for 1 KHz is  0X7B5CA45266E2
// inc = 2^64 * Fout / Fclock
// Python: print(hex(pow(2,64) * 1359000 // 136000000))


// assign phase_inc_carr =    64'h  104376A9DD10437; //1B1B1B1B1B1B1B1;// 1E1E1E1E1DBDFC0; //17215ECF734A5; //  // C56106EA3BC;//138697310208;// 64'b 0000_0001_0010_1100_0000_0100_1101_0101_0101_11;
assign phase_inc_carr =    64'h 1B1B1B1B1B1B1B1;// 1E1E1E1E1DBDFC0; //17215ECF734A5; //  // C56106EA3BC;//138697310208;// 64'b 0000_0001_0010_1100_0000_0100_1101_0101_0101_11;
 //assign phase_inc_carr =    64'h 1B1B4294E949F45;// 1E1E1E1E1DBDFC0; //17215ECF734A5; //  // C56106EA3BC;//138697310208;// 64'b 0000_0001_0010_1100_0000_0100_1101_0101_0101_11;
//assign phase_inc_carr =    64'h 104376A9DD10437;// 1E1E1E1E1DBDFC0; //17215ECF734A5; //  // C56106EA3BC;//138697310208;// 64'b 0000_0001_0010_1100_0000_0100_1101_0101_0101_11;
 

assign phase_inc_carrGen = 64'h 1E25D3E862E4518; //E8943073C00000;
assign reset = 1'b0;


nco_sig	 nco (
.clk (osc_clk),
.phase_inc_carr ( phase_inc_carr),
.phase_accum (phase_accum),
.sin_out (sin_out),
.cos_out (cos_out)
);

SinCos SinCos1 (
.Clock (osc_clk),
.ClkEn (1'b 1),
.Reset (1'b 0),
.Theta (phase_accum[63:56]),
.Sine (LOSine),
.Cosine (LOCosine)
);
	
/*
nco_sig	 ncoGen (
.clk (osc_clk),
.phase_inc_carr ( phase_inc_carrGen),
.phase_accum (phase_accum),
.sin_out (sinGen),
.cos_out (cosGen)
);
*/	
	
	
Mixer Mixer1 (
.clk (osc_clk),
.RFIn (RFIn),
.sin_in (LOSine),
.cos_in (LOCosine),
.RFOut (DiffOut),
.MixerOutSin (MixerOutSin),
.MixerOutCos (MixerOutCos)
);
	 //width was 68 for decimation = 4096
CIC  #(.width(74)) CIC1 (
.clk (osc_clk),
.rst (rst),
.decimation_ratio (decimation_ratio),
.d_in (MixerOutSin),
.d_out (CIC_out),
.d_clk (CIC_out_clk)
);  
 /*
HP_IIR HP_IIR1 (.clk (CIC_out_clk),
.d_in (CIC_out),
.d_out (IIR_out)
);

 */
HP_shift HP_shift1 (.clk (osc_clk),
.d_in (CIC_out),
.d_out (IIR_out)
);
 
PWM PWM1 (
.clk (osc_clk),
//.DataIn (IIR_out), //(CIC_out),
.DataIn (CIC_out), //(IIR_out),
.PWMOut (PWMOut)
);

PLL PLL1 (
.CLKI (XIn),.CLKOP (osc_clk)
);

	  
//assign MYLED[5:0] = MixerOutSin[7:2];
//assign MYLED[5:0] = CIC_out [7:2];
assign MYLED[5:0] = CIC_out [7:2];
assign MYLED[7] = sin_out;
assign MYLED[6] = cos_out;
 
/*

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
*/	


/*	
blinking_led blinking_led1 (
.MYLED (MYLED),
.In0 (In0),
.osc_clk (osc_clk)
);
*/


endmodule
