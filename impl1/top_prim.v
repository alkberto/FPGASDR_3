// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed Sep 18 22:57:27 2019
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            XIn, XOut, RFIn, DiffOut, PWMOut, sinGen, sin_out, 
            CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(3[8:11])
    input i_Rx_Serial;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(5[13:24])
    output o_Tx_Serial;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(7[11:22])
    output o_Rx_DV;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(8[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    output [7:0]MYLED;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    output [7:0]MixerOutSin;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    input XIn;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[8:11])
    output XOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(13[9:13])
    input RFIn;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(14[9:13])
    output DiffOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(16[9:16])
    output PWMOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(17[9:15])
    output sinGen;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(18[9:15])
    output sin_out;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(19[9:16])
    output CIC_out_clk;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(20[9:20])
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [7:0]UartClk_adj_2190 /* synthesis SET_AS_NETWORK=\uart_tx1/UartClk[2], is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(37[14:21])
    wire osc_clk_derived_991 /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk_derived_991 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Tx_Serial_c, o_Rx_Byte_c_7, 
        o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
        o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_Byte_c_0, MYLED_c_5, MixerOutSin_c_7, 
        MixerOutSin_c_6, MixerOutSin_c_5, MixerOutSin_c_4, MixerOutSin_c_3, 
        MixerOutSin_c_2, MixerOutSin_c_1, MixerOutSin_c_0, RFIn_c, DiffOut_c, 
        PWMOut_c, CIC_out_clk_c;
    wire [7:0]CIC1_out;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(32[12:20])
    wire [7:0]LOSine;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(35[12:18])
    
    wire n657, n658, MYLED_c_4, MYLED_c_3, MYLED_c_2;
    wire [7:0]DataInNoSign_7__N_1896;
    
    wire o_Rx_DV_c_0;
    
    VHI i2 (.Z(VCC_net));
    \uart_tx(CLKS_PER_BIT=130)  uart_tx1 (.\UartClk[2] (UartClk_adj_2190[2]), 
            .o_Tx_Serial_c(o_Tx_Serial_c), .o_Rx_Byte_c_0(o_Rx_Byte_c_0), 
            .osc_clk(osc_clk), .o_Rx_DV_c_0(o_Rx_DV_c_0), .GND_net(GND_net), 
            .o_Rx_Byte_c_1(o_Rx_Byte_c_1), .o_Rx_Byte_c_2(o_Rx_Byte_c_2), 
            .o_Rx_Byte_c_3(o_Rx_Byte_c_3), .o_Rx_Byte_c_4(o_Rx_Byte_c_4), 
            .o_Rx_Byte_c_5(o_Rx_Byte_c_5), .o_Rx_Byte_c_6(o_Rx_Byte_c_6), 
            .o_Rx_Byte_c_7(o_Rx_Byte_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(181[33] 188[2])
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    Mixer Mixer1 (.MixerOutSin_c_0(MixerOutSin_c_0), .osc_clk(osc_clk), 
          .DiffOut_c(DiffOut_c), .RFIn_c(RFIn_c), .LOSine({LOSine}), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .MixerOutSin_c_6(MixerOutSin_c_6), .MixerOutSin_c_5(MixerOutSin_c_5), 
          .MixerOutSin_c_4(MixerOutSin_c_4), .MixerOutSin_c_3(MixerOutSin_c_3), 
          .MixerOutSin_c_2(MixerOutSin_c_2), .MixerOutSin_c_1(MixerOutSin_c_1), 
          .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(114[7] 122[2])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    PWM PWM1 (.osc_clk(osc_clk), .\DataInNoSign_7__N_1896[0] (DataInNoSign_7__N_1896[0]), 
        .PWMOut_c(PWMOut_c), .MYLED_c_5(MYLED_c_5), .\DataInNoSign_7__N_1896[1] (DataInNoSign_7__N_1896[1]), 
        .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
        .n658(n658), .n657(n657), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(151[5] 156[2])
    VLO i1 (.Z(GND_net));
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_DV_pad (.I(o_Rx_DV_c_0), .O(o_Rx_DV));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(8[13:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(7[11:22])
    GSR GSR_INST (.GSR(VCC_net));
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB MYLED_pad_7 (.I(VCC_net), .O(MYLED[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_6 (.I(VCC_net), .O(MYLED[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_5 (.I(MYLED_c_5), .O(MYLED[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_4 (.I(n657), .O(MYLED[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_3 (.I(n658), .O(MYLED[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_2 (.I(MYLED_c_4), .O(MYLED[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_1 (.I(MYLED_c_3), .O(MYLED[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_0 (.I(MYLED_c_2), .O(MYLED[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_c_6), .O(MixerOutSin[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_c_5), .O(MixerOutSin[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_c_4), .O(MixerOutSin[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_c_3), .O(MixerOutSin[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_c_2), .O(MixerOutSin[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_c_1), .O(MixerOutSin[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_0 (.I(MixerOutSin_c_0), .O(MixerOutSin[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[15:26])
    OB XOut_pad (.I(GND_net), .O(XOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(13[9:13])
    OB DiffOut_pad (.I(DiffOut_c), .O(DiffOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(16[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(17[9:15])
    OB sinGen_pad (.I(GND_net), .O(sinGen));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(18[9:15])
    OB sin_out_pad (.I(VCC_net), .O(sin_out));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(19[9:16])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(20[9:20])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(5[13:24])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[8:11])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(14[9:13])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(158[5] 160[2])
    \uart_rx(CLKS_PER_BIT=130)  uart_rx1 (.\UartClk[2] (UartClk_adj_2190[2]), 
            .GND_net(GND_net), .i_Rx_Serial_c(i_Rx_Serial_c), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_0(o_Rx_Byte_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(171[33] 176[2])
    \CIC(width=63,decimation_ratio=2048)  CIC2 (.osc_clk_derived_991(osc_clk_derived_991), 
            .GND_net(GND_net), .CIC1_out({CIC1_out}), .CIC_out_clk_c(CIC_out_clk_c), 
            .\DataInNoSign_7__N_1896[0] (DataInNoSign_7__N_1896[0]), .\DataInNoSign_7__N_1896[1] (DataInNoSign_7__N_1896[1]), 
            .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
            .n658(n658), .n657(n657), .MYLED_c_5(MYLED_c_5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(131[45] 136[2])
    SinCos SinCos1 (.osc_clk(osc_clk), .VCC_net(VCC_net), .GND_net(GND_net), 
           .LOSine({LOSine})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    \CIC(width=16,decimation_ratio=8)  CIC1 (.osc_clk(osc_clk), .CIC1_out({CIC1_out}), 
            .GND_net(GND_net), .MixerOutSin_c_7(MixerOutSin_c_7), .MixerOutSin_c_6(MixerOutSin_c_6), 
            .MixerOutSin_c_4(MixerOutSin_c_4), .MixerOutSin_c_5(MixerOutSin_c_5), 
            .MixerOutSin_c_2(MixerOutSin_c_2), .MixerOutSin_c_3(MixerOutSin_c_3), 
            .MixerOutSin_c_0(MixerOutSin_c_0), .MixerOutSin_c_1(MixerOutSin_c_1), 
            .osc_clk_derived_991(osc_clk_derived_991)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(124[42] 129[2])
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=130) 
//

module \uart_tx(CLKS_PER_BIT=130)  (\UartClk[2] , o_Tx_Serial_c, o_Rx_Byte_c_0, 
            osc_clk, o_Rx_DV_c_0, GND_net, o_Rx_Byte_c_1, o_Rx_Byte_c_2, 
            o_Rx_Byte_c_3, o_Rx_Byte_c_4, o_Rx_Byte_c_5, o_Rx_Byte_c_6, 
            o_Rx_Byte_c_7) /* synthesis syn_module_defined=1 */ ;
    output \UartClk[2] ;
    output o_Tx_Serial_c;
    input o_Rx_Byte_c_0;
    input osc_clk;
    input o_Rx_DV_c_0;
    input GND_net;
    input o_Rx_Byte_c_1;
    input o_Rx_Byte_c_2;
    input o_Rx_Byte_c_3;
    input o_Rx_Byte_c_4;
    input o_Rx_Byte_c_5;
    input o_Rx_Byte_c_6;
    input o_Rx_Byte_c_7;
    
    wire \UartClk[2]  /* synthesis SET_AS_NETWORK=\uart_tx1/UartClk[2], is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(37[14:21])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [2:0]r_SM_Main;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(31[16:25])
    
    wire n844;
    wire [2:0]r_Bit_Index;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(33[16:27])
    
    wire UartClk_2_enable_9, n3, UartClk_2_enable_52, n3_adj_2156;
    wire [7:0]r_Tx_Data;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(34[16:25])
    
    wire UartClk_2_enable_47;
    wire [2:0]n30;
    wire [2:0]n17;
    
    wire n2595, n3242, n2610, n3_adj_2158, n2321, n2554, n3241, 
        n7, n3240, n3260;
    wire [15:0]r_Clock_Count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    
    wire n2845, n2843, n2805, n2799, n1205;
    wire [15:0]n69;
    
    wire o_Tx_Serial_N_2085, n3301, n3297, n3298, n3300, n3_adj_2159, 
        n2809, n3302, n2212, n2211, n2210, n2209, n2208, n2207, 
        n2206, n2205, n3299, n1863, n6;
    
    FD1S3IX r_SM_Main_i0 (.D(n844), .CK(\UartClk[2] ), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n3), .SP(UartClk_2_enable_9), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_47 (.D(n3_adj_2156), .SP(UartClk_2_enable_52), .CK(\UartClk[2] ), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam o_Tx_Serial_47.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(o_Rx_Byte_c_0), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1S3AX UartClk_286_297__i0 (.D(n17[0]), .CK(osc_clk), .Q(n30[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(42[15:29])
    defparam UartClk_286_297__i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n3242), .CK(\UartClk[2] ), .CD(n2595), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n2610), .SP(UartClk_2_enable_9), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n3_adj_2158), .SP(UartClk_2_enable_9), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_33_3_lut (.A(n2321), .B(n2554), .C(r_SM_Main[0]), 
         .Z(n3241)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_rep_33_3_lut.init = 16'h0e0e;
    LUT4 i10_3_lut_4_lut (.A(n2321), .B(n2554), .C(r_SM_Main[0]), .D(n7), 
         .Z(n844)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i10_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_rep_32_3_lut_4_lut (.A(n2321), .B(n2554), .C(r_SM_Main[1]), 
         .D(r_SM_Main[0]), .Z(n3240)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_rep_32_3_lut_4_lut.init = 16'h00e0;
    LUT4 i1_3_lut_4_lut (.A(n2321), .B(n2554), .C(n3260), .D(r_SM_Main[1]), 
         .Z(UartClk_2_enable_9)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0e0f;
    LUT4 i1_4_lut (.A(r_Clock_Count[8]), .B(r_Clock_Count[9]), .C(r_Clock_Count[13]), 
         .D(r_Clock_Count[12]), .Z(n2845)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_37 (.A(r_Clock_Count[14]), .B(n2845), .C(n2843), 
         .D(r_Clock_Count[11]), .Z(n2321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i1_4_lut_adj_37.init = 16'hfffe;
    LUT4 i1_2_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), .Z(n2843)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i135_rep_7_4_lut (.A(n2805), .B(r_Clock_Count[7]), .C(n2799), 
         .D(r_Clock_Count[5]), .Z(n2554)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i135_rep_7_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut_adj_38 (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .C(r_Clock_Count[0]), 
         .D(r_Clock_Count[6]), .Z(n2805)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i1_4_lut_adj_38.init = 16'hfffe;
    LUT4 i1_2_lut_adj_39 (.A(r_Clock_Count[3]), .B(r_Clock_Count[1]), .Z(n2799)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(32[17:30])
    defparam i1_2_lut_adj_39.init = 16'heeee;
    FD1P3IX r_Clock_Count_288__i15 (.D(n69[15]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i14 (.D(n69[14]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i13 (.D(n69[13]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i12 (.D(n69[12]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i11 (.D(n69[11]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i10 (.D(n69[10]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i9 (.D(n69[9]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i8 (.D(n69[8]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i8.GSR = "ENABLED";
    LUT4 i1_1_lut (.A(r_SM_Main[2]), .Z(UartClk_2_enable_52)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 r_SM_Main_2__I_0_58_i3_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_2085), 
         .C(r_SM_Main[1]), .Z(n3_adj_2156)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(48[7] 147[14])
    defparam r_SM_Main_2__I_0_58_i3_3_lut.init = 16'he5e5;
    LUT4 i1739_2_lut_rep_52 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .Z(n3260)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1739_2_lut_rep_52.init = 16'heeee;
    LUT4 i2358_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n2595)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(48[7] 147[14])
    defparam i2358_3_lut.init = 16'hdfdf;
    LUT4 r_Tx_Data_0__bdd_3_lut_2414 (.A(r_Tx_Data[0]), .B(r_Tx_Data[2]), 
         .C(r_Bit_Index[1]), .Z(n3301)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_2414.init = 16'hcaca;
    LUT4 i1_4_lut_adj_40 (.A(r_Bit_Index[1]), .B(n3241), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[0]), .Z(n2610)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(48[7] 147[14])
    defparam i1_4_lut_adj_40.init = 16'h4080;
    FD1P3IX r_Clock_Count_288__i7 (.D(n69[7]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i7.GSR = "ENABLED";
    LUT4 r_Tx_Data_5__bdd_3_lut_2401 (.A(r_Tx_Data[5]), .B(r_Tx_Data[7]), 
         .C(r_Bit_Index[1]), .Z(n3297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut_2401.init = 16'hcaca;
    LUT4 r_Tx_Data_5__bdd_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[6]), .C(r_Bit_Index[1]), 
         .Z(n3298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut.init = 16'hcaca;
    LUT4 r_Tx_Data_0__bdd_3_lut_2404 (.A(r_Tx_Data[3]), .B(r_Tx_Data[1]), 
         .C(r_Bit_Index[1]), .Z(n3300)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_2404.init = 16'hacac;
    LUT4 i1_3_lut_4_lut_adj_41 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(o_Rx_DV_c_0), 
         .D(r_SM_Main[1]), .Z(UartClk_2_enable_47)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_41.init = 16'h0010;
    LUT4 i46_3_lut_4_lut (.A(n2321), .B(n2554), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(n3_adj_2159)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i46_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i9_4_lut (.A(o_Rx_DV_c_0), .B(n2809), .C(r_SM_Main[1]), .D(n3242), 
         .Z(n7)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(31[16:25])
    defparam i9_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n2809)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_42 (.A(n3240), .B(r_Bit_Index[2]), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(n3_adj_2158)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam i1_4_lut_adj_42.init = 16'h2888;
    PFUMX i2405 (.BLUT(n3301), .ALUT(n3300), .C0(r_Bit_Index[0]), .Z(n3302));
    CCU2D r_Clock_Count_288_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2212), .S0(n69[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_288_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2211), .COUT(n2212), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2209), .COUT(n2210), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2208), .COUT(n2209), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2207), .COUT(n2208), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_288_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_288_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2205), .S1(n69[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_288_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_288_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_288_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_288__i6 (.D(n69[6]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i5 (.D(n69[5]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i5.GSR = "ENABLED";
    L6MUX21 i2407 (.D0(n3302), .D1(n3299), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_2085));
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_2159), .CK(\UartClk[2] ), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i4 (.D(n69[4]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i4.GSR = "ENABLED";
    CCU2D UartClk_286_297_add_4_3 (.A0(n30[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\UartClk[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1863), .S0(n17[1]), .S1(n17[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(42[15:29])
    defparam UartClk_286_297_add_4_3.INIT0 = 16'hfaaa;
    defparam UartClk_286_297_add_4_3.INIT1 = 16'hfaaa;
    defparam UartClk_286_297_add_4_3.INJECT1_0 = "NO";
    defparam UartClk_286_297_add_4_3.INJECT1_1 = "NO";
    FD1P3AX r_Tx_Data_i1 (.D(o_Rx_Byte_c_1), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(o_Rx_Byte_c_2), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(o_Rx_Byte_c_3), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(o_Rx_Byte_c_4), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(o_Rx_Byte_c_5), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(o_Rx_Byte_c_6), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(o_Rx_Byte_c_7), .SP(UartClk_2_enable_47), .CK(\UartClk[2] ), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=181, LSE_RLINE=188 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1S3AX UartClk_286_297__i1 (.D(n17[1]), .CK(osc_clk), .Q(n30[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(42[15:29])
    defparam UartClk_286_297__i1.GSR = "ENABLED";
    CCU2D UartClk_286_297_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n30[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1863), .S1(n17[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(42[15:29])
    defparam UartClk_286_297_add_4_1.INIT0 = 16'hF000;
    defparam UartClk_286_297_add_4_1.INIT1 = 16'h0555;
    defparam UartClk_286_297_add_4_1.INJECT1_0 = "NO";
    defparam UartClk_286_297_add_4_1.INJECT1_1 = "NO";
    LUT4 i2337_4_lut (.A(r_SM_Main[2]), .B(n2321), .C(n2554), .D(n6), 
         .Z(n1205)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i2337_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_adj_43 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_43.init = 16'heeee;
    PFUMX i2402 (.BLUT(n3298), .ALUT(n3297), .C0(r_Bit_Index[0]), .Z(n3299));
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3242), .B(r_SM_Main[0]), .C(r_Bit_Index[0]), 
         .D(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(45[10] 148[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    FD1S3AX UartClk_286_297__i2 (.D(n17[2]), .CK(osc_clk), .Q(\UartClk[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(42[15:29])
    defparam UartClk_286_297__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_34 (.A(n2321), .B(n2554), .Z(n3242)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_34.init = 16'heeee;
    FD1P3IX r_Clock_Count_288__i3 (.D(n69[3]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i2 (.D(n69[2]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i1 (.D(n69[1]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_288__i0 (.D(n69[0]), .SP(UartClk_2_enable_52), 
            .CD(n1205), .CK(\UartClk[2] ), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(123[34:54])
    defparam r_Clock_Count_288__i0.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (MixerOutSin_c_0, osc_clk, DiffOut_c, RFIn_c, LOSine, 
            MixerOutSin_c_7, MixerOutSin_c_6, MixerOutSin_c_5, MixerOutSin_c_4, 
            MixerOutSin_c_3, MixerOutSin_c_2, MixerOutSin_c_1, GND_net) /* synthesis syn_module_defined=1 */ ;
    output MixerOutSin_c_0;
    input osc_clk;
    output DiffOut_c;
    input RFIn_c;
    input [7:0]LOSine;
    output MixerOutSin_c_7;
    output MixerOutSin_c_6;
    output MixerOutSin_c_5;
    output MixerOutSin_c_4;
    output MixerOutSin_c_3;
    output MixerOutSin_c_2;
    output MixerOutSin_c_1;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [7:0]MixerOutSin_7__N_67;
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_83;
    
    wire n2188, n2187, n2186, n2185;
    
    FD1S3AX MixerOutSin_i1 (.D(MixerOutSin_7__N_67[0]), .CK(osc_clk), .Q(MixerOutSin_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i1.GSR = "ENABLED";
    FD1S3AY RFInR_14 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(22[8] 25[25])
    defparam RFInR_14.GSR = "ENABLED";
    FD1S3AY RFInR1_13 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(22[8] 25[25])
    defparam RFInR1_13.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i5_3_lut (.A(LOSine[4]), .B(MixerOutSin_7__N_83[4]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i4_3_lut (.A(LOSine[3]), .B(MixerOutSin_7__N_83[3]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i3_3_lut (.A(LOSine[2]), .B(MixerOutSin_7__N_83[2]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i2_3_lut (.A(LOSine[1]), .B(MixerOutSin_7__N_83[1]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i1_3_lut (.A(LOSine[0]), .B(MixerOutSin_7__N_83[0]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i1_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i8 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i8.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[6]), .CK(osc_clk), .Q(MixerOutSin_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i6 (.D(MixerOutSin_7__N_67[5]), .CK(osc_clk), .Q(MixerOutSin_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i6.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i5 (.D(MixerOutSin_7__N_67[4]), .CK(osc_clk), .Q(MixerOutSin_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i5.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i4 (.D(MixerOutSin_7__N_67[3]), .CK(osc_clk), .Q(MixerOutSin_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i4.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i3 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i3.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i2 (.D(MixerOutSin_7__N_67[1]), .CK(osc_clk), .Q(MixerOutSin_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=114, LSE_RLINE=122 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i2.GSR = "ENABLED";
    CCU2D unary_minus_6_add_3_9 (.A0(LOSine[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2188), .S0(MixerOutSin_7__N_83[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_9.INIT1 = 16'h0000;
    defparam unary_minus_6_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_9.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_7 (.A0(LOSine[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2187), .COUT(n2188), .S0(MixerOutSin_7__N_83[5]), 
          .S1(MixerOutSin_7__N_83[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_7.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_5 (.A0(LOSine[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(MixerOutSin_7__N_83[3]), 
          .S1(MixerOutSin_7__N_83[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_5.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_3 (.A0(LOSine[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2185), .COUT(n2186), .S0(MixerOutSin_7__N_83[1]), 
          .S1(MixerOutSin_7__N_83[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2185), .S1(MixerOutSin_7__N_83[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_6_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_6_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_1.INJECT1_1 = "NO";
    LUT4 MixerOutSin_7__I_0_i8_3_lut (.A(LOSine[7]), .B(MixerOutSin_7__N_83[7]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i7_3_lut (.A(LOSine[6]), .B(MixerOutSin_7__N_83[6]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i6_3_lut (.A(LOSine[5]), .B(MixerOutSin_7__N_83[5]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i6_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (osc_clk, \DataInNoSign_7__N_1896[0] , PWMOut_c, MYLED_c_5, 
            \DataInNoSign_7__N_1896[1] , MYLED_c_2, MYLED_c_3, MYLED_c_4, 
            n658, n657, GND_net) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input \DataInNoSign_7__N_1896[0] ;
    output PWMOut_c;
    input MYLED_c_5;
    input \DataInNoSign_7__N_1896[1] ;
    input MYLED_c_2;
    input MYLED_c_3;
    input MYLED_c_4;
    input n658;
    input n657;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [7:0]DataInNoSign;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(9[11:23])
    
    wire osc_clk_enable_153, PWMOut_N_1905, n3257, n3256, n3252, n3011, 
        n3022, n3254, n3253;
    wire [7:0]counter;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(7[11:18])
    wire [7:0]n477;
    
    wire n10, n3019, n12;
    wire [7:0]n37;
    
    wire n6, n4, n2965, n2959, n3040, n3041, n2224, n2223, n2222, 
        n2221;
    
    FD1P3AX DataInNoSign_i0_i0 (.D(\DataInNoSign_7__N_1896[0] ), .SP(osc_clk_enable_153), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_1905), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    LUT4 i2360_4_lut (.A(n3257), .B(n3256), .C(n3252), .D(n3011), .Z(n3022)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam i2360_4_lut.init = 16'hfffe;
    LUT4 i2282_4_lut (.A(n3254), .B(n3253), .C(DataInNoSign[2]), .D(counter[2]), 
         .Z(n3011)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam i2282_4_lut.init = 16'h1001;
    LUT4 i363_1_lut (.A(MYLED_c_5), .Z(n477[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(27[4:33])
    defparam i363_1_lut.init = 16'h5555;
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_48 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n3256)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_48.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2290_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n3019)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam i2290_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_49 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n3257)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_49.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    FD1S3AX counter_282__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i0.GSR = "ENABLED";
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_44 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n3252)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_44.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i7_2_lut_rep_45 (.A(DataInNoSign[3]), .B(counter[3]), 
         .Z(n3253)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i7_2_lut_rep_45.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i2331_4_lut (.A(n2965), .B(counter[7]), .C(n2959), .D(counter[3]), 
         .Z(osc_clk_enable_153)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(24[7:19])
    defparam i2331_4_lut.init = 16'h0001;
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n3040), .ALUT(n3041), .C0(n3022), 
          .Z(PWMOut_N_1905)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;
    LUT4 i1_4_lut (.A(counter[2]), .B(counter[6]), .C(counter[0]), .D(counter[1]), 
         .Z(n2965)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(24[7:19])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(counter[5]), .B(counter[4]), .Z(n2959)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(24[7:19])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_46 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n3254)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_46.init = 16'h6666;
    FD1P3AX DataInNoSign_i0_i1 (.D(\DataInNoSign_7__N_1896[1] ), .SP(osc_clk_enable_153), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i2 (.D(MYLED_c_2), .SP(osc_clk_enable_153), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(MYLED_c_3), .SP(osc_clk_enable_153), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(MYLED_c_4), .SP(osc_clk_enable_153), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(n658), .SP(osc_clk_enable_153), .CK(osc_clk), 
            .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(n657), .SP(osc_clk_enable_153), .CK(osc_clk), 
            .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(n477[7]), .SP(osc_clk_enable_153), .CK(osc_clk), 
            .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=151, LSE_RLINE=156 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    CCU2D counter_282_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2224), .S0(n37[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_282_add_4_9.INIT1 = 16'h0000;
    defparam counter_282_add_4_9.INJECT1_0 = "NO";
    defparam counter_282_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_282_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2223), .COUT(n2224), .S0(n37[5]), .S1(n37[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_282_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_282_add_4_7.INJECT1_0 = "NO";
    defparam counter_282_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_282_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2222), .COUT(n2223), .S0(n37[3]), .S1(n37[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_282_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_282_add_4_5.INJECT1_0 = "NO";
    defparam counter_282_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_282_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2221), .COUT(n2222), .S0(n37[1]), .S1(n37[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_282_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_282_add_4_3.INJECT1_0 = "NO";
    defparam counter_282_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_282_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2221), .S1(n37[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282_add_4_1.INIT0 = 16'hF000;
    defparam counter_282_add_4_1.INIT1 = 16'h0555;
    defparam counter_282_add_4_1.INJECT1_0 = "NO";
    defparam counter_282_add_4_1.INJECT1_1 = "NO";
    LUT4 i2313_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n3040)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam i2313_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 i2314_1_lut_4_lut_4_lut (.A(n3257), .B(n3019), .C(n12), .D(n4), 
         .Z(n3041)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(29[7:31])
    defparam i2314_1_lut_4_lut_4_lut.init = 16'h0b4f;
    FD1S3AX counter_282__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i1.GSR = "ENABLED";
    FD1S3AX counter_282__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i2.GSR = "ENABLED";
    FD1S3AX counter_282__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i3.GSR = "ENABLED";
    FD1S3AX counter_282__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i4.GSR = "ENABLED";
    FD1S3AX counter_282__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i5.GSR = "ENABLED";
    FD1S3AX counter_282__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i6.GSR = "ENABLED";
    FD1S3AX counter_282__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_282__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    
    EHXPLLJ PLLInst_0 (.CLKI(XIn_c), .CLKFB(osc_clk), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="120.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=158, LSE_RLINE=160 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(158[5] 160[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 15;
    defparam PLLInst_0.CLKOP_DIV = 4;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 3;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=130) 
//

module \uart_rx(CLKS_PER_BIT=130)  (\UartClk[2] , GND_net, i_Rx_Serial_c, 
            o_Rx_Byte_c_7, o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, 
            o_Rx_Byte_c_3, o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_DV_c_0, 
            o_Rx_Byte_c_0) /* synthesis syn_module_defined=1 */ ;
    input \UartClk[2] ;
    input GND_net;
    input i_Rx_Serial_c;
    output o_Rx_Byte_c_7;
    output o_Rx_Byte_c_6;
    output o_Rx_Byte_c_5;
    output o_Rx_Byte_c_4;
    output o_Rx_Byte_c_3;
    output o_Rx_Byte_c_2;
    output o_Rx_Byte_c_1;
    output o_Rx_DV_c_0;
    output o_Rx_Byte_c_0;
    
    wire \UartClk[2]  /* synthesis SET_AS_NETWORK=\uart_tx1/UartClk[2], is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uarttx.v(37[14:21])
    wire [15:0]r_Clock_Count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(44[18:31])
    
    wire UartClk_2_enable_56, n1178;
    wire [15:0]n69;
    
    wire n1880;
    wire [2:0]r_SM_Main;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(48[17:26])
    
    wire n3182, r_Rx_Data_R, r_Rx_Data, n3248, n2501, n2673, n2461, 
        n3243, n2669;
    wire [2:0]r_Bit_Index;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(45[17:28])
    
    wire UartClk_2_enable_15, n2589, n2441, n3249, n2861, n3266, 
        n1879, n2593, UartClk_2_enable_17, n1878;
    wire [2:0]r_SM_Main_2__N_1945;
    
    wire o_Rx_DV_N_2000, UartClk_2_enable_18, UartClk_2_enable_19, UartClk_2_enable_39, 
        n2494, UartClk_2_enable_22, n2727, n3244, UartClk_2_enable_20, 
        n3178, n3238, n2867, n3239, n1563, n2859, n3258, UartClk_2_enable_51, 
        n2791, n3177, n3245, n2651, n2705, n9, n2679, n3250, 
        n2687, n2996, n3251, n3259, UartClk_2_enable_21, UartClk_2_enable_23, 
        n3247, n3265, n3176, n1877, n3264, n2717, n2737, n3246, 
        n2523, n2789, n1526, n2757, n2745, n2779, n3255, n2697, 
        n2777, n1876, n1875, n1874, n1873, n2994, n2761;
    
    FD1P3IX r_Clock_Count_285__i5 (.D(n69[5]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i5.GSR = "ENABLED";
    CCU2D r_Clock_Count_285_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1880), .S0(n69[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_285_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_17.INJECT1_1 = "NO";
    FD1S3IX r_SM_Main_i0 (.D(n3182), .CK(\UartClk[2] ), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_52 (.D(i_Rx_Serial_c), .CK(\UartClk[2] ), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(66[12] 70[8])
    defparam r_Rx_Data_R_52.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_53 (.D(r_Rx_Data_R), .CK(\UartClk[2] ), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(66[12] 70[8])
    defparam r_Rx_Data_53.GSR = "ENABLED";
    LUT4 i1743_4_lut (.A(r_SM_Main[0]), .B(n3248), .C(n2501), .D(n2673), 
         .Z(n2461)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1743_4_lut.init = 16'haaa8;
    FD1P3IX r_Clock_Count_285__i6 (.D(n69[6]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n3243), .B(n2669), .C(r_Clock_Count[8]), .D(r_Clock_Count[13]), 
         .Z(n2673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_4_lut.init = 16'hfffe;
    FD1P3AX r_Bit_Index_i0 (.D(n2589), .SP(UartClk_2_enable_15), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    LUT4 i2340_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n2441)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(76[7] 167[14])
    defparam i2340_2_lut_3_lut.init = 16'hdfdf;
    FD1P3IX r_Clock_Count_285__i7 (.D(n69[7]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n3249), .B(r_Rx_Data), .C(r_Clock_Count[13]), 
         .D(r_Clock_Count[14]), .Z(n2861)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX r_Bit_Index_i2 (.D(n3266), .SP(UartClk_2_enable_15), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    CCU2D r_Clock_Count_285_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1879), .COUT(n1880), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_15.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_285__i8 (.D(n69[8]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i9 (.D(n69[9]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i10 (.D(n69[10]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i0 (.D(n69[0]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i0.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n2593), .SP(UartClk_2_enable_15), .CK(\UartClk[2] ), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i11 (.D(n69[11]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i11.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(UartClk_2_enable_17), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    CCU2D r_Clock_Count_285_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1878), .COUT(n1879), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1945[2]), .Z(o_Rx_DV_N_2000)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(76[7] 167[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(UartClk_2_enable_18), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(UartClk_2_enable_19), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    LUT4 i21_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_1945[2]), .Z(UartClk_2_enable_39)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(76[7] 167[14])
    defparam i21_4_lut_4_lut.init = 16'h2505;
    LUT4 i2345_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .C(n2494), 
         .D(r_Bit_Index[1]), .Z(UartClk_2_enable_22)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2345_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .C(r_SM_Main[0]), 
         .Z(n2727)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_36 (.A(r_Clock_Count[13]), .B(r_Clock_Count[12]), 
         .Z(n3244)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_36.init = 16'heeee;
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(UartClk_2_enable_20), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    LUT4 n3178_bdd_4_lut_4_lut (.A(r_Rx_Data), .B(r_SM_Main[0]), .C(n2501), 
         .D(n3178), .Z(n3238)) /* synthesis lut_function=(A (B (C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam n3178_bdd_4_lut_4_lut.init = 16'hddd1;
    LUT4 r_SM_Main_2__I_0_59_Mux_1_i3_4_lut (.A(n2867), .B(n3239), .C(r_SM_Main[1]), 
         .D(n2501), .Z(n1563)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(76[7] 167[14])
    defparam r_SM_Main_2__I_0_59_Mux_1_i3_4_lut.init = 16'h3035;
    LUT4 i1_4_lut_adj_16 (.A(n3248), .B(r_SM_Main[0]), .C(n2861), .D(n2859), 
         .Z(n2867)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_4_lut_adj_16.init = 16'hfffb;
    LUT4 i2320_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_2__N_1945[2]), .C(n2727), 
         .D(n3258), .Z(UartClk_2_enable_51)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2320_4_lut.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_17 (.A(r_Clock_Count[15]), .B(r_Clock_Count[8]), 
         .C(r_Clock_Count[11]), .D(r_Clock_Count[10]), .Z(n2859)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_3_lut_4_lut_adj_17.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_18 (.A(r_Clock_Count[13]), .B(r_Clock_Count[12]), 
         .C(r_Clock_Count[8]), .D(r_Clock_Count[11]), .Z(n2791)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_3_lut_4_lut_adj_18.init = 16'hfffe;
    LUT4 n3177_bdd_2_lut_3_lut (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), 
         .C(n3177), .Z(n3178)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam n3177_bdd_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_37 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .Z(n3245)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_2_lut_rep_37.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(r_Clock_Count[3]), .B(r_Clock_Count[0]), 
         .C(r_Clock_Count[6]), .Z(n2651)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(142[17:47])
    defparam i1_2_lut_3_lut_adj_19.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[2]), 
         .Z(n2705)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_2_lut_3_lut_adj_20.init = 16'hefef;
    LUT4 i1_2_lut_rep_50 (.A(r_SM_Main[2]), .B(r_Bit_Index[1]), .Z(n3258)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_2_lut_rep_50.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_21 (.A(r_Clock_Count[3]), .B(r_Clock_Count[0]), 
         .C(n9), .D(n2679), .Z(n2501)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(142[17:47])
    defparam i1_3_lut_4_lut_adj_21.init = 16'hfffe;
    LUT4 i1_2_lut_rep_41 (.A(r_Clock_Count[12]), .B(r_Clock_Count[9]), .Z(n3249)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_41.init = 16'heeee;
    LUT4 i1_2_lut_rep_35_3_lut (.A(r_Clock_Count[12]), .B(r_Clock_Count[9]), 
         .C(r_Rx_Data), .Z(n3243)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_35_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_42 (.A(r_Clock_Count[9]), .B(r_Clock_Count[14]), .Z(n3250)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_42.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_22 (.A(r_SM_Main[2]), .B(r_Bit_Index[1]), .C(r_SM_Main[0]), 
         .D(r_Bit_Index[2]), .Z(n2687)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_3_lut_4_lut_adj_22.init = 16'hfeff;
    LUT4 i2268_2_lut_3_lut_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[13]), .D(r_Clock_Count[11]), .Z(n2996)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i2268_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_43 (.A(r_Clock_Count[14]), .B(r_Clock_Count[10]), 
         .Z(n3251)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_43.init = 16'heeee;
    LUT4 i323_2_lut_rep_51 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n3259)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(126[36:54])
    defparam i323_2_lut_rep_51.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_23 (.A(r_Clock_Count[14]), .B(r_Clock_Count[10]), 
         .C(r_Clock_Count[15]), .D(r_Clock_Count[11]), .Z(n2669)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_3_lut_4_lut_adj_23.init = 16'hfffe;
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(UartClk_2_enable_21), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(UartClk_2_enable_22), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(UartClk_2_enable_23), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_1945[2]), .CK(\UartClk[2] ), 
            .CD(n2441), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_then_4_lut (.A(r_SM_Main_2__N_1945[2]), .B(n3247), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(n3265)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0888;
    LUT4 n3181_bdd_3_lut (.A(n3238), .B(n3176), .C(r_SM_Main[1]), .Z(n3182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3181_bdd_3_lut.init = 16'hcaca;
    CCU2D r_Clock_Count_285_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1877), .COUT(n1878), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_4_lut (.A(r_SM_Main_2__N_1945[2]), .B(n3247), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(n3264)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_24 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(n2717)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_3_lut_4_lut_adj_24.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_25 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main_2__N_1945[2]), 
         .D(r_SM_Main[1]), .Z(n2494)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_3_lut_4_lut_adj_25.init = 16'hefff;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[1]), .Z(n2737)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_3_lut_4_lut_adj_26.init = 16'hfffe;
    LUT4 i1_2_lut_rep_38 (.A(r_Clock_Count[11]), .B(r_Clock_Count[13]), 
         .Z(n3246)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_38.init = 16'heeee;
    LUT4 i3_2_lut (.A(r_Clock_Count[1]), .B(r_Clock_Count[4]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(142[17:47])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(r_Clock_Count[2]), .B(r_Clock_Count[5]), .Z(n2679)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(142[17:47])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_rep_1_4_lut (.A(n2523), .B(n3250), .C(n2791), .D(n2789), 
         .Z(r_SM_Main_2__N_1945[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_rep_1_4_lut.init = 16'hfffe;
    LUT4 r_SM_Main_2__N_1945_2__bdd_3_lut (.A(r_SM_Main_2__N_1945[2]), .B(n1526), 
         .C(r_SM_Main[0]), .Z(n3176)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;
    defparam r_SM_Main_2__N_1945_2__bdd_3_lut.init = 16'h5858;
    LUT4 i1_2_lut_rep_39 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .Z(n3247)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_39.init = 16'h2222;
    LUT4 i2323_4_lut (.A(n3245), .B(n2757), .C(n2523), .D(n2996), .Z(UartClk_2_enable_15)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i2323_4_lut.init = 16'h5551;
    LUT4 i1269_rep_2_4_lut (.A(n2651), .B(r_Clock_Count[7]), .C(n9), .D(n2679), 
         .Z(n2523)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1269_rep_2_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut_adj_27 (.A(r_Clock_Count[12]), .B(n2745), .C(r_Clock_Count[15]), 
         .D(r_Clock_Count[8]), .Z(n2757)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_27.init = 16'h0004;
    LUT4 i1_2_lut_adj_28 (.A(r_Clock_Count[10]), .B(r_SM_Main[1]), .Z(n2745)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_28.init = 16'h4444;
    LUT4 i2334_4_lut (.A(r_SM_Main[2]), .B(n3248), .C(n2501), .D(n2779), 
         .Z(UartClk_2_enable_56)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(76[7] 167[14])
    defparam i2334_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_rep_40 (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n3248)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_40.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_29 (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), 
         .Z(n2789)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_adj_29.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_30 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(r_Bit_Index[0]), 
         .D(r_SM_Main_2__N_1945[2]), .Z(n2589)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_30.init = 16'h0200;
    LUT4 i1_3_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_Bit_Index[2]), 
         .Z(n1526)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_31 (.A(n3247), .B(r_SM_Main_2__N_1945[2]), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(n2593)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_31.init = 16'h0880;
    LUT4 n5_bdd_4_lut (.A(n3251), .B(n3249), .C(n3246), .D(n3255), .Z(n3177)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n5_bdd_4_lut.init = 16'hfffe;
    FD1S3IX r_SM_Main_i1 (.D(n1563), .CK(\UartClk[2] ), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i2356_4_lut (.A(n2705), .B(r_SM_Main_2__N_1945[2]), .C(n3259), 
         .D(r_SM_Main[1]), .Z(UartClk_2_enable_17)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2356_4_lut.init = 16'h4000;
    LUT4 i2354_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_2__N_1945[2]), .C(n2697), 
         .D(r_Bit_Index[1]), .Z(UartClk_2_enable_18)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2354_4_lut.init = 16'h0800;
    FD1P3IX r_Clock_Count_285__i12 (.D(n69[12]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i13 (.D(n69[13]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i14 (.D(n69[14]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i14.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_32 (.A(r_Bit_Index[2]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_Bit_Index[0]), .Z(n2697)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i1_4_lut_adj_32.init = 16'hfffd;
    LUT4 i1277_2_lut_rep_31 (.A(r_SM_Main_2__N_1945[2]), .B(r_SM_Main[0]), 
         .Z(n3239)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1277_2_lut_rep_31.init = 16'h8888;
    LUT4 i2352_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_2__N_1945[2]), .C(n2687), 
         .D(r_Bit_Index[0]), .Z(UartClk_2_enable_19)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2352_4_lut.init = 16'h0800;
    FD1P3IX r_Clock_Count_285__i15 (.D(n69[15]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i15.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_55 (.D(o_Rx_DV_N_2000), .SP(UartClk_2_enable_39), .CK(\UartClk[2] ), 
            .Q(o_Rx_DV_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_DV_55.GSR = "ENABLED";
    LUT4 i2350_4_lut (.A(r_Bit_Index[2]), .B(r_SM_Main_2__N_1945[2]), .C(r_SM_Main[1]), 
         .D(n2717), .Z(UartClk_2_enable_20)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2350_4_lut.init = 16'h0080;
    LUT4 i2348_4_lut (.A(r_Bit_Index[1]), .B(n2494), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[2]), .Z(UartClk_2_enable_21)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2348_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_33 (.A(n2777), .B(r_SM_Main[1]), .C(r_Clock_Count[9]), 
         .D(r_Clock_Count[10]), .Z(n2779)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_33.init = 16'h0002;
    CCU2D r_Clock_Count_285_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1876), .COUT(n1877), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_285_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1875), .COUT(n1876), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_285_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1874), .COUT(n1875), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_285_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1873), .COUT(n1874), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_285_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_285_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1873), .S1(n69[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_285_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_285_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_285_add_4_1.INJECT1_1 = "NO";
    LUT4 i2342_4_lut (.A(r_Bit_Index[0]), .B(r_SM_Main_2__N_1945[2]), .C(r_SM_Main[1]), 
         .D(n2737), .Z(UartClk_2_enable_23)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(121[17:39])
    defparam i2342_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_34 (.A(n2994), .B(n3244), .C(r_Clock_Count[8]), 
         .D(n2761), .Z(n2777)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_34.init = 16'h0100;
    PFUMX i2399 (.BLUT(n3264), .ALUT(n3265), .C0(r_Bit_Index[2]), .Z(n3266));
    LUT4 i2266_3_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[15]), .C(r_Clock_Count[14]), 
         .Z(n2994)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2266_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_35 (.A(r_SM_Main[0]), .B(r_Rx_Data), .Z(n2761)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_35.init = 16'h8888;
    LUT4 i1_2_lut_rep_47 (.A(r_Clock_Count[15]), .B(r_Clock_Count[8]), .Z(n3255)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(92[17:52])
    defparam i1_2_lut_rep_47.init = 16'heeee;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(UartClk_2_enable_51), .CK(\UartClk[2] ), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=171, LSE_RLINE=176 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(73[10] 168[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_36 (.A(r_SM_Main[2]), .B(n2461), .C(r_SM_Main_2__N_1945[2]), 
         .D(r_SM_Main[1]), .Z(n1178)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_36.init = 16'h5011;
    FD1P3IX r_Clock_Count_285__i1 (.D(n69[1]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i2 (.D(n69[2]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i3 (.D(n69[3]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_285__i4 (.D(n69[4]), .SP(UartClk_2_enable_56), 
            .CD(n1178), .CK(\UartClk[2] ), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/uartrx.v(144[34:54])
    defparam r_Clock_Count_285__i4.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \CIC(width=63,decimation_ratio=2048) 
//

module \CIC(width=63,decimation_ratio=2048)  (osc_clk_derived_991, GND_net, 
            CIC1_out, CIC_out_clk_c, \DataInNoSign_7__N_1896[0] , \DataInNoSign_7__N_1896[1] , 
            MYLED_c_2, MYLED_c_3, MYLED_c_4, n658, n657, MYLED_c_5) /* synthesis syn_module_defined=1 */ ;
    input osc_clk_derived_991;
    input GND_net;
    input [7:0]CIC1_out;
    output CIC_out_clk_c;
    output \DataInNoSign_7__N_1896[0] ;
    output \DataInNoSign_7__N_1896[1] ;
    output MYLED_c_2;
    output MYLED_c_3;
    output MYLED_c_4;
    output n658;
    output n657;
    output MYLED_c_5;
    
    wire osc_clk_derived_991 /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk_derived_991 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [62:0]d_tmp;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(34[24:29])
    
    wire osc_clk_derived_991_enable_597;
    wire [62:0]d5;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(43[24:26])
    
    wire n2002;
    wire [62:0]d3;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(41[24:26])
    wire [62:0]d4;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(42[24:26])
    wire [62:0]d4_62__N_804;
    
    wire n2003, n2001, n2000, n1999, n1998, n1997, n1996;
    wire [62:0]d_d_tmp;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(34[31:38])
    
    wire osc_clk_derived_991_enable_96;
    wire [62:0]d2;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(40[24:26])
    wire [62:0]d2_62__N_678;
    
    wire n1914;
    wire [62:0]d1;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(39[24:26])
    
    wire n1915, n1896;
    wire [62:0]d1_62__N_615;
    
    wire n1897;
    wire [62:0]d3_62__N_741;
    
    wire n1995;
    wire [62:0]d5_62__N_867;
    wire [62:0]d6;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(47[24:26])
    wire [62:0]d6_62__N_1530;
    
    wire d_clk_tmp, n1139, v_comb, n1994;
    wire [62:0]d_d6;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(47[28:32])
    wire [62:0]d7;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(48[24:26])
    wire [62:0]d7_62__N_1593;
    wire [62:0]d_d7;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(48[28:32])
    wire [62:0]d8;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(49[24:26])
    wire [62:0]d8_62__N_1656;
    wire [62:0]d_d8;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(49[28:32])
    wire [62:0]d9;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(50[24:26])
    wire [62:0]d9_62__N_1719;
    wire [62:0]d_d9;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(50[28:32])
    wire [62:0]d10;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(51[24:27])
    wire [62:0]d10_62__N_1782;
    
    wire n1993, n1844, n1845, n1843, n2011, n2012, n1992, n1895, 
        n1823, n1991;
    wire [15:0]count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(54[12:17])
    wire [15:0]count_15__N_1513;
    
    wire n1894, n1990, n1836, n1837, n1228;
    wire [15:0]n330;
    
    wire n1912, d_clk_tmp_N_1845, n1989, n1988, n1987, n1986, n1985, 
        n1984, n1911, n1893, n1910, n1983, n1909, n1892, n1982, 
        n2572, n2827, n10, n2821, n2823, n2817, osc_clk_derived_991_enable_596, 
        osc_clk_derived_991_enable_546, n1908, n3435, n1891, n1981, 
        n1980, n1907, n1979, n1978, n1906, n1976, n1975, n1974, 
        n1973, n1972, n1971, n1970, n1969, n1968, n1967, n2951, 
        n18, n2947, n2909, n2013, osc_clk_derived_991_enable_146, 
        osc_clk_derived_991_enable_196, osc_clk_derived_991_enable_496, 
        osc_clk_derived_991_enable_446, osc_clk_derived_991_enable_396, 
        osc_clk_derived_991_enable_346, osc_clk_derived_991_enable_296, 
        osc_clk_derived_991_enable_246, n1966, n1965, n2183, n2182, 
        n2181, n2180, n2179, n2178, n2177, n2176, n2175, n2174, 
        n2173, n2172, n2171, n2170, n2169, n2168, n2167, n2166, 
        n2165, n2164, n2163, n2162, n2161, n2160, n2159, n2158, 
        n2157, n2156, n2155, n2154, n2153, n1964, n1963, n1962, 
        n1961, n2143, n2142, n2141, n2140, n2139, n2138, n2137, 
        n2136, n2135, n2134, n2133, n2132, n2131, n2130, n2129, 
        n2128, n2127, n2126, n2125, n2124, n2123, n2122, n2121, 
        n2120, n2119, n2118, n2117, n2116, n2115, n2114, n2113, 
        n2111, n2110, n2109, n2108, n2107, n2106, n2105, n2104, 
        n2103, n2102, n2101, n2100, n2099, n2098, n2097, n2096, 
        n2095, n2094, n2093, n2092, n2091, n2090, n2089, n2088, 
        n2087, n2086, n2085, n2084, n2083, n2082, n2081, n2079, 
        n2078, n2077, n2076, n2075, n2074, n2073, n2072, n2071, 
        n2070, n2069, n2068, n2067, n2066, n2065, n2064, n2063, 
        n2062, n1905, n2061, n2060, n2059, n1960, n2058, n2057, 
        n2056, n2055, n2054, n2053, n2052, n2051, n2050, n2049, 
        n2048, n2047, n2046, n2045, n2044, n2043, n2042, n2041, 
        n2040, n2039, n2038, n2037, n2036, n2035, n2034, n2033, 
        n2032, n2031, n2030, n2029, n2028, n2027, n2026, n2025, 
        n2024, n2023, n2022, n2021, n2020, n2019, n2018, n2017, 
        n2016, n2015, n2004, n1959, n1958, n1957, n1956, n1955, 
        n1890, n1904, n1828, n1829, n1903, n1842, n1827, n1889, 
        n1954, n1953, n1952, n1951, n1950, n1888, n1902, n1887, 
        n1826, n1825, n1833, n1834, n1832, n1831, n1830, n1835, 
        n1901, n1900, n2005, n2006, n1949, n1948, n1947, n1946, 
        n1853, n1944, n1943, n1942, n1941, n1940, n1939, n1938, 
        n1937, n1936, n1935, n1841, n1852, n1851, n1850, n1849, 
        n1886, n1934, n1840, n1839, n2014, n1933, n1932, n1931, 
        n1930, n1929, n1928, n1927, n1926, n1925, n1924, n2007, 
        n1923, n1922, n1899, n1898, n1885, n1884, n1921, n1920, 
        n1919, n1918, n1848, n1838, n1847, n1846, n1883, n1917, 
        n1824, n1882, n1916, n2008, n2010;
    
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    CCU2D d3_62__I_0_52 (.A0(d3[50]), .B0(d4[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[51]), .B1(d4[51]), .C1(GND_net), .D1(GND_net), .CIN(n2002), 
          .COUT(n2003), .S0(d4_62__N_804[50]), .S1(d4_62__N_804[51]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_52.INIT0 = 16'h5666;
    defparam d3_62__I_0_52.INIT1 = 16'h5666;
    defparam d3_62__I_0_52.INJECT1_0 = "NO";
    defparam d3_62__I_0_52.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    CCU2D d3_62__I_0_50 (.A0(d3[48]), .B0(d4[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[49]), .B1(d4[49]), .C1(GND_net), .D1(GND_net), .CIN(n2001), 
          .COUT(n2002), .S0(d4_62__N_804[48]), .S1(d4_62__N_804[49]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_50.INIT0 = 16'h5666;
    defparam d3_62__I_0_50.INIT1 = 16'h5666;
    defparam d3_62__I_0_50.INJECT1_0 = "NO";
    defparam d3_62__I_0_50.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    CCU2D d3_62__I_0_48 (.A0(d3[46]), .B0(d4[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[47]), .B1(d4[47]), .C1(GND_net), .D1(GND_net), .CIN(n2000), 
          .COUT(n2001), .S0(d4_62__N_804[46]), .S1(d4_62__N_804[47]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_48.INIT0 = 16'h5666;
    defparam d3_62__I_0_48.INIT1 = 16'h5666;
    defparam d3_62__I_0_48.INJECT1_0 = "NO";
    defparam d3_62__I_0_48.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    CCU2D d3_62__I_0_46 (.A0(d3[44]), .B0(d4[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[45]), .B1(d4[45]), .C1(GND_net), .D1(GND_net), .CIN(n1999), 
          .COUT(n2000), .S0(d4_62__N_804[44]), .S1(d4_62__N_804[45]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_46.INIT0 = 16'h5666;
    defparam d3_62__I_0_46.INIT1 = 16'h5666;
    defparam d3_62__I_0_46.INJECT1_0 = "NO";
    defparam d3_62__I_0_46.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_44 (.A0(d3[42]), .B0(d4[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[43]), .B1(d4[43]), .C1(GND_net), .D1(GND_net), .CIN(n1998), 
          .COUT(n1999), .S0(d4_62__N_804[42]), .S1(d4_62__N_804[43]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_44.INIT0 = 16'h5666;
    defparam d3_62__I_0_44.INIT1 = 16'h5666;
    defparam d3_62__I_0_44.INJECT1_0 = "NO";
    defparam d3_62__I_0_44.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    CCU2D d3_62__I_0_42 (.A0(d3[40]), .B0(d4[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[41]), .B1(d4[41]), .C1(GND_net), .D1(GND_net), .CIN(n1997), 
          .COUT(n1998), .S0(d4_62__N_804[40]), .S1(d4_62__N_804[41]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_42.INIT0 = 16'h5666;
    defparam d3_62__I_0_42.INIT1 = 16'h5666;
    defparam d3_62__I_0_42.INJECT1_0 = "NO";
    defparam d3_62__I_0_42.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    CCU2D d3_62__I_0_40 (.A0(d3[38]), .B0(d4[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[39]), .B1(d4[39]), .C1(GND_net), .D1(GND_net), .CIN(n1996), 
          .COUT(n1997), .S0(d4_62__N_804[38]), .S1(d4_62__N_804[39]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_40.INIT0 = 16'h5666;
    defparam d3_62__I_0_40.INIT1 = 16'h5666;
    defparam d3_62__I_0_40.INJECT1_0 = "NO";
    defparam d3_62__I_0_40.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1S3AX d2_i0 (.D(d2_62__N_678[0]), .CK(osc_clk_derived_991), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i0.GSR = "ENABLED";
    CCU2D d1_62__I_0_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1914), 
          .COUT(n1915), .S0(d2_62__N_678[2]), .S1(d2_62__N_678[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_4.INIT0 = 16'h5666;
    defparam d1_62__I_0_4.INIT1 = 16'h5666;
    defparam d1_62__I_0_4.INJECT1_0 = "NO";
    defparam d1_62__I_0_4.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_32 (.A0(CIC1_out[7]), .B0(d1[30]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[31]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1896), .COUT(n1897), .S0(d1_62__N_615[30]), 
          .S1(d1_62__N_615[31]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_32.INIT0 = 16'h5666;
    defparam d_in_7__I_0_32.INIT1 = 16'h5666;
    defparam d_in_7__I_0_32.INJECT1_0 = "NO";
    defparam d_in_7__I_0_32.INJECT1_1 = "NO";
    FD1S3AX d3_i0 (.D(d3_62__N_741[0]), .CK(osc_clk_derived_991), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i0.GSR = "ENABLED";
    CCU2D d3_62__I_0_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[37]), .B1(d4[37]), .C1(GND_net), .D1(GND_net), .CIN(n1995), 
          .COUT(n1996), .S0(d4_62__N_804[36]), .S1(d4_62__N_804[37]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_38.INIT0 = 16'h5666;
    defparam d3_62__I_0_38.INIT1 = 16'h5666;
    defparam d3_62__I_0_38.INJECT1_0 = "NO";
    defparam d3_62__I_0_38.INJECT1_1 = "NO";
    FD1S3AX d4_i0 (.D(d4_62__N_804[0]), .CK(osc_clk_derived_991), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_62__N_867[0]), .CK(osc_clk_derived_991), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i0 (.D(d6_62__N_1530[0]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_63 (.D(n1139), .CK(osc_clk_derived_991), .PD(osc_clk_derived_991_enable_597), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_clk_tmp_63.GSR = "ENABLED";
    FD1S3AX v_comb_64 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64.GSR = "ENABLED";
    FD1S3AX d_clk_65 (.D(d_clk_tmp), .CK(osc_clk_derived_991), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_clk_65.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    CCU2D d3_62__I_0_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n1994), 
          .COUT(n1995), .S0(d4_62__N_804[34]), .S1(d4_62__N_804[35]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_36.INIT0 = 16'h5666;
    defparam d3_62__I_0_36.INIT1 = 16'h5666;
    defparam d3_62__I_0_36.INJECT1_0 = "NO";
    defparam d3_62__I_0_36.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_derived_991_enable_96), .CK(osc_clk_derived_991), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(d7_62__N_1593[0]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_derived_991_enable_96), .CK(osc_clk_derived_991), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(d8_62__N_1656[0]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_derived_991_enable_96), .CK(osc_clk_derived_991), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(d9_62__N_1719[0]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_derived_991_enable_96), .CK(osc_clk_derived_991), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__i1 (.D(d10_62__N_1782[55]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d10[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[55]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(\DataInNoSign_7__N_1896[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_62__N_615[0]), .CK(osc_clk_derived_991), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    CCU2D d3_62__I_0_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n1993), 
          .COUT(n1994), .S0(d4_62__N_804[32]), .S1(d4_62__N_804[33]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_34.INIT0 = 16'h5666;
    defparam d3_62__I_0_34.INIT1 = 16'h5666;
    defparam d3_62__I_0_34.INJECT1_0 = "NO";
    defparam d3_62__I_0_34.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_45 (.A0(d_tmp[43]), .B0(d_d_tmp[43]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[44]), .B1(d_d_tmp[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1844), .COUT(n1845), .S0(d6_62__N_1530[43]), 
          .S1(d6_62__N_1530[44]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_45.INIT0 = 16'h5999;
    defparam sub_25_add_2_45.INIT1 = 16'h5999;
    defparam sub_25_add_2_45.INJECT1_0 = "NO";
    defparam sub_25_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_43 (.A0(d_tmp[41]), .B0(d_d_tmp[41]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[42]), .B1(d_d_tmp[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1843), .COUT(n1844), .S0(d6_62__N_1530[41]), 
          .S1(d6_62__N_1530[42]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_43.INIT0 = 16'h5999;
    defparam sub_25_add_2_43.INIT1 = 16'h5999;
    defparam sub_25_add_2_43.INJECT1_0 = "NO";
    defparam sub_25_add_2_43.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n1914), 
          .S1(d2_62__N_678[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_2.INIT0 = 16'h7000;
    defparam d1_62__I_0_2.INIT1 = 16'h5666;
    defparam d1_62__I_0_2.INJECT1_0 = "NO";
    defparam d1_62__I_0_2.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n2011), 
          .COUT(n2012), .S0(d5_62__N_867[4]), .S1(d5_62__N_867[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_6.INIT0 = 16'h5666;
    defparam d4_62__I_0_6.INIT1 = 16'h5666;
    defparam d4_62__I_0_6.INJECT1_0 = "NO";
    defparam d4_62__I_0_6.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n1992), 
          .COUT(n1993), .S0(d4_62__N_804[30]), .S1(d4_62__N_804[31]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_32.INIT0 = 16'h5666;
    defparam d3_62__I_0_32.INIT1 = 16'h5666;
    defparam d3_62__I_0_32.INJECT1_0 = "NO";
    defparam d3_62__I_0_32.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_30 (.A0(CIC1_out[7]), .B0(d1[28]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[29]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1895), .COUT(n1896), .S0(d1_62__N_615[28]), 
          .S1(d1_62__N_615[29]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_30.INIT0 = 16'h5666;
    defparam d_in_7__I_0_30.INIT1 = 16'h5666;
    defparam d_in_7__I_0_30.INJECT1_0 = "NO";
    defparam d_in_7__I_0_30.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    CCU2D sub_25_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1823), .S1(d6_62__N_1530[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_1.INIT0 = 16'h0000;
    defparam sub_25_add_2_1.INIT1 = 16'h5999;
    defparam sub_25_add_2_1.INJECT1_0 = "NO";
    defparam sub_25_add_2_1.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    CCU2D d3_62__I_0_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n1991), 
          .COUT(n1992), .S0(d4_62__N_804[28]), .S1(d4_62__N_804[29]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_30.INIT0 = 16'h5666;
    defparam d3_62__I_0_30.INIT1 = 16'h5666;
    defparam d3_62__I_0_30.INJECT1_0 = "NO";
    defparam d3_62__I_0_30.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1S3IX count__i0 (.D(count_15__N_1513[0]), .CK(osc_clk_derived_991), 
            .CD(osc_clk_derived_991_enable_597), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    CCU2D d_in_7__I_0_28 (.A0(CIC1_out[7]), .B0(d1[26]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[27]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1894), .COUT(n1895), .S0(d1_62__N_615[26]), 
          .S1(d1_62__N_615[27]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_28.INIT0 = 16'h5666;
    defparam d_in_7__I_0_28.INIT1 = 16'h5666;
    defparam d_in_7__I_0_28.INJECT1_0 = "NO";
    defparam d_in_7__I_0_28.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    CCU2D d3_62__I_0_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n1990), 
          .COUT(n1991), .S0(d4_62__N_804[26]), .S1(d4_62__N_804[27]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_28.INIT0 = 16'h5666;
    defparam d3_62__I_0_28.INIT1 = 16'h5666;
    defparam d3_62__I_0_28.INJECT1_0 = "NO";
    defparam d3_62__I_0_28.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    CCU2D sub_25_add_2_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1836), .COUT(n1837), .S0(d6_62__N_1530[27]), 
          .S1(d6_62__N_1530[28]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_29.INIT0 = 16'h5999;
    defparam sub_25_add_2_29.INIT1 = 16'h5999;
    defparam sub_25_add_2_29.INJECT1_0 = "NO";
    defparam sub_25_add_2_29.INJECT1_1 = "NO";
    FD1S3IX count__i1 (.D(n330[1]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i1.GSR = "ENABLED";
    CCU2D d_in_7__I_0_64 (.A0(CIC1_out[7]), .B0(d1[62]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1912), .S0(d1_62__N_615[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_64.INIT0 = 16'h5666;
    defparam d_in_7__I_0_64.INIT1 = 16'h0000;
    defparam d_in_7__I_0_64.INJECT1_0 = "NO";
    defparam d_in_7__I_0_64.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    CCU2D d3_62__I_0_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n1989), 
          .COUT(n1990), .S0(d4_62__N_804[24]), .S1(d4_62__N_804[25]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_26.INIT0 = 16'h5666;
    defparam d3_62__I_0_26.INIT1 = 16'h5666;
    defparam d3_62__I_0_26.INJECT1_0 = "NO";
    defparam d3_62__I_0_26.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n1988), 
          .COUT(n1989), .S0(d4_62__N_804[22]), .S1(d4_62__N_804[23]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_24.INIT0 = 16'h5666;
    defparam d3_62__I_0_24.INIT1 = 16'h5666;
    defparam d3_62__I_0_24.INJECT1_0 = "NO";
    defparam d3_62__I_0_24.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n1987), 
          .COUT(n1988), .S0(d4_62__N_804[20]), .S1(d4_62__N_804[21]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_22.INIT0 = 16'h5666;
    defparam d3_62__I_0_22.INIT1 = 16'h5666;
    defparam d3_62__I_0_22.INJECT1_0 = "NO";
    defparam d3_62__I_0_22.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n1986), 
          .COUT(n1987), .S0(d4_62__N_804[18]), .S1(d4_62__N_804[19]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_20.INIT0 = 16'h5666;
    defparam d3_62__I_0_20.INIT1 = 16'h5666;
    defparam d3_62__I_0_20.INJECT1_0 = "NO";
    defparam d3_62__I_0_20.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n1985), 
          .COUT(n1986), .S0(d4_62__N_804[16]), .S1(d4_62__N_804[17]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_18.INIT0 = 16'h5666;
    defparam d3_62__I_0_18.INIT1 = 16'h5666;
    defparam d3_62__I_0_18.INJECT1_0 = "NO";
    defparam d3_62__I_0_18.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n1984), 
          .COUT(n1985), .S0(d4_62__N_804[14]), .S1(d4_62__N_804[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_16.INIT0 = 16'h5666;
    defparam d3_62__I_0_16.INIT1 = 16'h5666;
    defparam d3_62__I_0_16.INJECT1_0 = "NO";
    defparam d3_62__I_0_16.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_62 (.A0(CIC1_out[7]), .B0(d1[60]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[61]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1911), .COUT(n1912), .S0(d1_62__N_615[60]), 
          .S1(d1_62__N_615[61]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_62.INIT0 = 16'h5666;
    defparam d_in_7__I_0_62.INIT1 = 16'h5666;
    defparam d_in_7__I_0_62.INJECT1_0 = "NO";
    defparam d_in_7__I_0_62.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_26 (.A0(CIC1_out[7]), .B0(d1[24]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[25]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1893), .COUT(n1894), .S0(d1_62__N_615[24]), 
          .S1(d1_62__N_615[25]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_26.INIT0 = 16'h5666;
    defparam d_in_7__I_0_26.INIT1 = 16'h5666;
    defparam d_in_7__I_0_26.INJECT1_0 = "NO";
    defparam d_in_7__I_0_26.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_60 (.A0(CIC1_out[7]), .B0(d1[58]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[59]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1910), .COUT(n1911), .S0(d1_62__N_615[58]), 
          .S1(d1_62__N_615[59]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_60.INIT0 = 16'h5666;
    defparam d_in_7__I_0_60.INIT1 = 16'h5666;
    defparam d_in_7__I_0_60.INJECT1_0 = "NO";
    defparam d_in_7__I_0_60.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n1983), 
          .COUT(n1984), .S0(d4_62__N_804[12]), .S1(d4_62__N_804[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_14.INIT0 = 16'h5666;
    defparam d3_62__I_0_14.INIT1 = 16'h5666;
    defparam d3_62__I_0_14.INJECT1_0 = "NO";
    defparam d3_62__I_0_14.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_58 (.A0(CIC1_out[7]), .B0(d1[56]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[57]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1909), .COUT(n1910), .S0(d1_62__N_615[56]), 
          .S1(d1_62__N_615[57]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_58.INIT0 = 16'h5666;
    defparam d_in_7__I_0_58.INIT1 = 16'h5666;
    defparam d_in_7__I_0_58.INJECT1_0 = "NO";
    defparam d_in_7__I_0_58.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_24 (.A0(CIC1_out[7]), .B0(d1[22]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[23]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1892), .COUT(n1893), .S0(d1_62__N_615[22]), 
          .S1(d1_62__N_615[23]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_24.INIT0 = 16'h5666;
    defparam d_in_7__I_0_24.INIT1 = 16'h5666;
    defparam d_in_7__I_0_24.INJECT1_0 = "NO";
    defparam d_in_7__I_0_24.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n1982), 
          .COUT(n1983), .S0(d4_62__N_804[10]), .S1(d4_62__N_804[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_12.INIT0 = 16'h5666;
    defparam d3_62__I_0_12.INIT1 = 16'h5666;
    defparam d3_62__I_0_12.INJECT1_0 = "NO";
    defparam d3_62__I_0_12.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n330[10]), .B(n2572), .Z(count_15__N_1513[10])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(n2827), .B(n10), .C(count[15]), .D(n2821), .Z(d_clk_tmp_N_1845)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0200;
    LUT4 i1_4_lut_adj_4 (.A(count[1]), .B(n2823), .C(n2817), .D(count[8]), 
         .Z(n2827)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h8000;
    FD1S3AX v_comb_64_rep_71 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_596)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_71.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(count[7]), .B(count[2]), .C(count[6]), .Z(n2821)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_5 (.A(count[3]), .B(count[0]), .C(count[5]), .D(count[4]), 
         .Z(n2823)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_5.init = 16'h8000;
    LUT4 i1_2_lut_adj_6 (.A(count[9]), .B(count[10]), .Z(n2817)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'h8888;
    LUT4 i1_4_lut_adj_7 (.A(count[14]), .B(count[12]), .C(count[13]), 
         .D(count[11]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hfffe;
    FD1S3AX v_comb_64_rep_70 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_546)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_70.GSR = "ENABLED";
    CCU2D d_in_7__I_0_56 (.A0(CIC1_out[7]), .B0(d1[54]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[55]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1908), .COUT(n1909), .S0(d1_62__N_615[54]), 
          .S1(d1_62__N_615[55]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_56.INIT0 = 16'h5666;
    defparam d_in_7__I_0_56.INIT1 = 16'h5666;
    defparam d_in_7__I_0_56.INJECT1_0 = "NO";
    defparam d_in_7__I_0_56.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_54 (.A(n2827), .B(n10), .C(count[15]), .D(n2821), 
         .Z(n3435)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_rep_54.init = 16'h0200;
    CCU2D d_in_7__I_0_22 (.A0(CIC1_out[7]), .B0(d1[20]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[21]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1891), .COUT(n1892), .S0(d1_62__N_615[20]), 
          .S1(d1_62__N_615[21]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_22.INIT0 = 16'h5666;
    defparam d_in_7__I_0_22.INIT1 = 16'h5666;
    defparam d_in_7__I_0_22.INJECT1_0 = "NO";
    defparam d_in_7__I_0_22.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n1981), 
          .COUT(n1982), .S0(d4_62__N_804[8]), .S1(d4_62__N_804[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_10.INIT0 = 16'h5666;
    defparam d3_62__I_0_10.INIT1 = 16'h5666;
    defparam d3_62__I_0_10.INJECT1_0 = "NO";
    defparam d3_62__I_0_10.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n1980), 
          .COUT(n1981), .S0(d4_62__N_804[6]), .S1(d4_62__N_804[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_8.INIT0 = 16'h5666;
    defparam d3_62__I_0_8.INIT1 = 16'h5666;
    defparam d3_62__I_0_8.INJECT1_0 = "NO";
    defparam d3_62__I_0_8.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_54 (.A0(CIC1_out[7]), .B0(d1[52]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[53]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1907), .COUT(n1908), .S0(d1_62__N_615[52]), 
          .S1(d1_62__N_615[53]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_54.INIT0 = 16'h5666;
    defparam d_in_7__I_0_54.INIT1 = 16'h5666;
    defparam d_in_7__I_0_54.INJECT1_0 = "NO";
    defparam d_in_7__I_0_54.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n1979), 
          .COUT(n1980), .S0(d4_62__N_804[4]), .S1(d4_62__N_804[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_6.INIT0 = 16'h5666;
    defparam d3_62__I_0_6.INIT1 = 16'h5666;
    defparam d3_62__I_0_6.INJECT1_0 = "NO";
    defparam d3_62__I_0_6.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n1978), 
          .COUT(n1979), .S0(d4_62__N_804[2]), .S1(d4_62__N_804[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_4.INIT0 = 16'h5666;
    defparam d3_62__I_0_4.INIT1 = 16'h5666;
    defparam d3_62__I_0_4.INJECT1_0 = "NO";
    defparam d3_62__I_0_4.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_52 (.A0(CIC1_out[7]), .B0(d1[50]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[51]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1906), .COUT(n1907), .S0(d1_62__N_615[50]), 
          .S1(d1_62__N_615[51]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_52.INIT0 = 16'h5666;
    defparam d_in_7__I_0_52.INIT1 = 16'h5666;
    defparam d_in_7__I_0_52.INJECT1_0 = "NO";
    defparam d_in_7__I_0_52.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n1978), 
          .S1(d4_62__N_804[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_2.INIT0 = 16'h7000;
    defparam d3_62__I_0_2.INIT1 = 16'h5666;
    defparam d3_62__I_0_2.INJECT1_0 = "NO";
    defparam d3_62__I_0_2.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_64 (.A0(d2[62]), .B0(d3[62]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1976), 
          .S0(d3_62__N_741[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_64.INIT0 = 16'h5666;
    defparam d2_62__I_0_64.INIT1 = 16'h0000;
    defparam d2_62__I_0_64.INJECT1_0 = "NO";
    defparam d2_62__I_0_64.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_62 (.A0(d2[60]), .B0(d3[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[61]), .B1(d3[61]), .C1(GND_net), .D1(GND_net), .CIN(n1975), 
          .COUT(n1976), .S0(d3_62__N_741[60]), .S1(d3_62__N_741[61]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_62.INIT0 = 16'h5666;
    defparam d2_62__I_0_62.INIT1 = 16'h5666;
    defparam d2_62__I_0_62.INJECT1_0 = "NO";
    defparam d2_62__I_0_62.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_60 (.A0(d2[58]), .B0(d3[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[59]), .B1(d3[59]), .C1(GND_net), .D1(GND_net), .CIN(n1974), 
          .COUT(n1975), .S0(d3_62__N_741[58]), .S1(d3_62__N_741[59]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_60.INIT0 = 16'h5666;
    defparam d2_62__I_0_60.INIT1 = 16'h5666;
    defparam d2_62__I_0_60.INJECT1_0 = "NO";
    defparam d2_62__I_0_60.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_58 (.A0(d2[56]), .B0(d3[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[57]), .B1(d3[57]), .C1(GND_net), .D1(GND_net), .CIN(n1973), 
          .COUT(n1974), .S0(d3_62__N_741[56]), .S1(d3_62__N_741[57]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_58.INIT0 = 16'h5666;
    defparam d2_62__I_0_58.INIT1 = 16'h5666;
    defparam d2_62__I_0_58.INJECT1_0 = "NO";
    defparam d2_62__I_0_58.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_56 (.A0(d2[54]), .B0(d3[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[55]), .B1(d3[55]), .C1(GND_net), .D1(GND_net), .CIN(n1972), 
          .COUT(n1973), .S0(d3_62__N_741[54]), .S1(d3_62__N_741[55]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_56.INIT0 = 16'h5666;
    defparam d2_62__I_0_56.INIT1 = 16'h5666;
    defparam d2_62__I_0_56.INJECT1_0 = "NO";
    defparam d2_62__I_0_56.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_54 (.A0(d2[52]), .B0(d3[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[53]), .B1(d3[53]), .C1(GND_net), .D1(GND_net), .CIN(n1971), 
          .COUT(n1972), .S0(d3_62__N_741[52]), .S1(d3_62__N_741[53]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_54.INIT0 = 16'h5666;
    defparam d2_62__I_0_54.INIT1 = 16'h5666;
    defparam d2_62__I_0_54.INJECT1_0 = "NO";
    defparam d2_62__I_0_54.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_52 (.A0(d2[50]), .B0(d3[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[51]), .B1(d3[51]), .C1(GND_net), .D1(GND_net), .CIN(n1970), 
          .COUT(n1971), .S0(d3_62__N_741[50]), .S1(d3_62__N_741[51]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_52.INIT0 = 16'h5666;
    defparam d2_62__I_0_52.INIT1 = 16'h5666;
    defparam d2_62__I_0_52.INJECT1_0 = "NO";
    defparam d2_62__I_0_52.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_50 (.A0(d2[48]), .B0(d3[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[49]), .B1(d3[49]), .C1(GND_net), .D1(GND_net), .CIN(n1969), 
          .COUT(n1970), .S0(d3_62__N_741[48]), .S1(d3_62__N_741[49]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_50.INIT0 = 16'h5666;
    defparam d2_62__I_0_50.INIT1 = 16'h5666;
    defparam d2_62__I_0_50.INJECT1_0 = "NO";
    defparam d2_62__I_0_50.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_48 (.A0(d2[46]), .B0(d3[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[47]), .B1(d3[47]), .C1(GND_net), .D1(GND_net), .CIN(n1968), 
          .COUT(n1969), .S0(d3_62__N_741[46]), .S1(d3_62__N_741[47]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_48.INIT0 = 16'h5666;
    defparam d2_62__I_0_48.INIT1 = 16'h5666;
    defparam d2_62__I_0_48.INJECT1_0 = "NO";
    defparam d2_62__I_0_48.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_8 (.A(n330[0]), .B(n2572), .Z(count_15__N_1513[0])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_8.init = 16'hbbbb;
    CCU2D d2_62__I_0_46 (.A0(d2[44]), .B0(d3[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[45]), .B1(d3[45]), .C1(GND_net), .D1(GND_net), .CIN(n1967), 
          .COUT(n1968), .S0(d3_62__N_741[44]), .S1(d3_62__N_741[45]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_46.INIT0 = 16'h5666;
    defparam d2_62__I_0_46.INIT1 = 16'h5666;
    defparam d2_62__I_0_46.INJECT1_0 = "NO";
    defparam d2_62__I_0_46.INJECT1_1 = "NO";
    LUT4 i1_4_lut_rep_55 (.A(n2827), .B(n10), .C(count[15]), .D(n2821), 
         .Z(osc_clk_derived_991_enable_597)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_rep_55.init = 16'h0200;
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    LUT4 i1545_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_62__N_678[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1545_2_lut.init = 16'h6666;
    LUT4 i1546_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_62__N_741[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1546_2_lut.init = 16'h6666;
    LUT4 i1547_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_62__N_804[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1547_2_lut.init = 16'h6666;
    LUT4 i1548_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_62__N_867[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1548_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_9 (.A(n2572), .B(d_clk_tmp), .Z(n1139)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(54[12:17])
    defparam i1_2_lut_adj_9.init = 16'h8888;
    LUT4 i1_4_lut_adj_10 (.A(n2951), .B(n18), .C(n2947), .D(count[10]), 
         .Z(n2572)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_10.init = 16'hfeff;
    LUT4 i1_4_lut_adj_11 (.A(count[2]), .B(n10), .C(n2909), .D(count[3]), 
         .Z(n2951)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_4_lut_adj_12 (.A(count[4]), .B(count[6]), .C(count[7]), .D(count[9]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_12.init = 16'hfffe;
    LUT4 i1_3_lut_adj_13 (.A(count[5]), .B(count[15]), .C(count[0]), .Z(n2947)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_13.init = 16'hfefe;
    LUT4 i1_2_lut_adj_14 (.A(count[8]), .B(count[1]), .Z(n2909)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'heeee;
    CCU2D d4_62__I_0_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n2012), 
          .COUT(n2013), .S0(d5_62__N_867[6]), .S1(d5_62__N_867[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_8.INIT0 = 16'h5666;
    defparam d4_62__I_0_8.INIT1 = 16'h5666;
    defparam d4_62__I_0_8.INJECT1_0 = "NO";
    defparam d4_62__I_0_8.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i58 (.D(d5[58]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i59 (.D(d5[59]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i60 (.D(d5[60]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i61 (.D(d5[61]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i62 (.D(d5[62]), .SP(d_clk_tmp_N_1845), .CK(osc_clk_derived_991), 
            .Q(d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(osc_clk_derived_991_enable_96), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i58 (.D(d_tmp[58]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i59 (.D(d_tmp[59]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i60 (.D(d_tmp[60]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i61 (.D(d_tmp[61]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i62 (.D(d_tmp[62]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d_d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i62.GSR = "ENABLED";
    FD1S3AX d2_i1 (.D(d2_62__N_678[1]), .CK(osc_clk_derived_991), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i1.GSR = "ENABLED";
    FD1S3AX d2_i2 (.D(d2_62__N_678[2]), .CK(osc_clk_derived_991), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_62__N_678[3]), .CK(osc_clk_derived_991), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_62__N_678[4]), .CK(osc_clk_derived_991), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_62__N_678[5]), .CK(osc_clk_derived_991), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_62__N_678[6]), .CK(osc_clk_derived_991), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_62__N_678[7]), .CK(osc_clk_derived_991), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_62__N_678[8]), .CK(osc_clk_derived_991), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_62__N_678[9]), .CK(osc_clk_derived_991), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_62__N_678[10]), .CK(osc_clk_derived_991), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_62__N_678[11]), .CK(osc_clk_derived_991), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_62__N_678[12]), .CK(osc_clk_derived_991), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_62__N_678[13]), .CK(osc_clk_derived_991), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_62__N_678[14]), .CK(osc_clk_derived_991), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_62__N_678[15]), .CK(osc_clk_derived_991), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_62__N_678[16]), .CK(osc_clk_derived_991), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_62__N_678[17]), .CK(osc_clk_derived_991), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_62__N_678[18]), .CK(osc_clk_derived_991), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_62__N_678[19]), .CK(osc_clk_derived_991), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_62__N_678[20]), .CK(osc_clk_derived_991), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_62__N_678[21]), .CK(osc_clk_derived_991), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_62__N_678[22]), .CK(osc_clk_derived_991), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_62__N_678[23]), .CK(osc_clk_derived_991), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_62__N_678[24]), .CK(osc_clk_derived_991), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_62__N_678[25]), .CK(osc_clk_derived_991), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_62__N_678[26]), .CK(osc_clk_derived_991), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_62__N_678[27]), .CK(osc_clk_derived_991), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_62__N_678[28]), .CK(osc_clk_derived_991), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_62__N_678[29]), .CK(osc_clk_derived_991), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_62__N_678[30]), .CK(osc_clk_derived_991), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_62__N_678[31]), .CK(osc_clk_derived_991), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_62__N_678[32]), .CK(osc_clk_derived_991), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_62__N_678[33]), .CK(osc_clk_derived_991), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_62__N_678[34]), .CK(osc_clk_derived_991), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_62__N_678[35]), .CK(osc_clk_derived_991), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_62__N_678[36]), .CK(osc_clk_derived_991), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_62__N_678[37]), .CK(osc_clk_derived_991), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_62__N_678[38]), .CK(osc_clk_derived_991), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_62__N_678[39]), .CK(osc_clk_derived_991), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_62__N_678[40]), .CK(osc_clk_derived_991), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_62__N_678[41]), .CK(osc_clk_derived_991), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_62__N_678[42]), .CK(osc_clk_derived_991), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_62__N_678[43]), .CK(osc_clk_derived_991), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_62__N_678[44]), .CK(osc_clk_derived_991), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_62__N_678[45]), .CK(osc_clk_derived_991), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_62__N_678[46]), .CK(osc_clk_derived_991), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_62__N_678[47]), .CK(osc_clk_derived_991), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_62__N_678[48]), .CK(osc_clk_derived_991), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_62__N_678[49]), .CK(osc_clk_derived_991), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_62__N_678[50]), .CK(osc_clk_derived_991), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_62__N_678[51]), .CK(osc_clk_derived_991), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_62__N_678[52]), .CK(osc_clk_derived_991), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_62__N_678[53]), .CK(osc_clk_derived_991), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_62__N_678[54]), .CK(osc_clk_derived_991), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_62__N_678[55]), .CK(osc_clk_derived_991), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_62__N_678[56]), .CK(osc_clk_derived_991), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_62__N_678[57]), .CK(osc_clk_derived_991), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d2_i58 (.D(d2_62__N_678[58]), .CK(osc_clk_derived_991), .Q(d2[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i58.GSR = "ENABLED";
    FD1S3AX d2_i59 (.D(d2_62__N_678[59]), .CK(osc_clk_derived_991), .Q(d2[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i59.GSR = "ENABLED";
    FD1S3AX d2_i60 (.D(d2_62__N_678[60]), .CK(osc_clk_derived_991), .Q(d2[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i60.GSR = "ENABLED";
    FD1S3AX d2_i61 (.D(d2_62__N_678[61]), .CK(osc_clk_derived_991), .Q(d2[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i61.GSR = "ENABLED";
    FD1S3AX d2_i62 (.D(d2_62__N_678[62]), .CK(osc_clk_derived_991), .Q(d2[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d2_i62.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_62__N_741[1]), .CK(osc_clk_derived_991), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_62__N_741[2]), .CK(osc_clk_derived_991), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_62__N_741[3]), .CK(osc_clk_derived_991), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_62__N_741[4]), .CK(osc_clk_derived_991), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_62__N_741[5]), .CK(osc_clk_derived_991), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_62__N_741[6]), .CK(osc_clk_derived_991), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_62__N_741[7]), .CK(osc_clk_derived_991), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_62__N_741[8]), .CK(osc_clk_derived_991), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_62__N_741[9]), .CK(osc_clk_derived_991), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_62__N_741[10]), .CK(osc_clk_derived_991), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_62__N_741[11]), .CK(osc_clk_derived_991), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_62__N_741[12]), .CK(osc_clk_derived_991), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_62__N_741[13]), .CK(osc_clk_derived_991), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_62__N_741[14]), .CK(osc_clk_derived_991), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_62__N_741[15]), .CK(osc_clk_derived_991), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_62__N_741[16]), .CK(osc_clk_derived_991), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_62__N_741[17]), .CK(osc_clk_derived_991), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_62__N_741[18]), .CK(osc_clk_derived_991), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_62__N_741[19]), .CK(osc_clk_derived_991), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_62__N_741[20]), .CK(osc_clk_derived_991), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_62__N_741[21]), .CK(osc_clk_derived_991), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_62__N_741[22]), .CK(osc_clk_derived_991), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_62__N_741[23]), .CK(osc_clk_derived_991), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_62__N_741[24]), .CK(osc_clk_derived_991), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_62__N_741[25]), .CK(osc_clk_derived_991), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_62__N_741[26]), .CK(osc_clk_derived_991), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_62__N_741[27]), .CK(osc_clk_derived_991), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_62__N_741[28]), .CK(osc_clk_derived_991), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_62__N_741[29]), .CK(osc_clk_derived_991), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_62__N_741[30]), .CK(osc_clk_derived_991), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_62__N_741[31]), .CK(osc_clk_derived_991), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_62__N_741[32]), .CK(osc_clk_derived_991), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_62__N_741[33]), .CK(osc_clk_derived_991), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_62__N_741[34]), .CK(osc_clk_derived_991), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_62__N_741[35]), .CK(osc_clk_derived_991), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_62__N_741[36]), .CK(osc_clk_derived_991), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_62__N_741[37]), .CK(osc_clk_derived_991), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_62__N_741[38]), .CK(osc_clk_derived_991), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_62__N_741[39]), .CK(osc_clk_derived_991), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_62__N_741[40]), .CK(osc_clk_derived_991), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_62__N_741[41]), .CK(osc_clk_derived_991), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_62__N_741[42]), .CK(osc_clk_derived_991), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_62__N_741[43]), .CK(osc_clk_derived_991), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_62__N_741[44]), .CK(osc_clk_derived_991), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_62__N_741[45]), .CK(osc_clk_derived_991), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_62__N_741[46]), .CK(osc_clk_derived_991), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_62__N_741[47]), .CK(osc_clk_derived_991), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_62__N_741[48]), .CK(osc_clk_derived_991), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_62__N_741[49]), .CK(osc_clk_derived_991), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_62__N_741[50]), .CK(osc_clk_derived_991), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_62__N_741[51]), .CK(osc_clk_derived_991), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_62__N_741[52]), .CK(osc_clk_derived_991), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_62__N_741[53]), .CK(osc_clk_derived_991), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_62__N_741[54]), .CK(osc_clk_derived_991), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_62__N_741[55]), .CK(osc_clk_derived_991), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_62__N_741[56]), .CK(osc_clk_derived_991), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_62__N_741[57]), .CK(osc_clk_derived_991), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d3_i58 (.D(d3_62__N_741[58]), .CK(osc_clk_derived_991), .Q(d3[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i58.GSR = "ENABLED";
    FD1S3AX d3_i59 (.D(d3_62__N_741[59]), .CK(osc_clk_derived_991), .Q(d3[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i59.GSR = "ENABLED";
    FD1S3AX d3_i60 (.D(d3_62__N_741[60]), .CK(osc_clk_derived_991), .Q(d3[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i60.GSR = "ENABLED";
    FD1S3AX d3_i61 (.D(d3_62__N_741[61]), .CK(osc_clk_derived_991), .Q(d3[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i61.GSR = "ENABLED";
    FD1S3AX d3_i62 (.D(d3_62__N_741[62]), .CK(osc_clk_derived_991), .Q(d3[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d3_i62.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_62__N_804[1]), .CK(osc_clk_derived_991), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_62__N_804[2]), .CK(osc_clk_derived_991), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_62__N_804[3]), .CK(osc_clk_derived_991), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_62__N_804[4]), .CK(osc_clk_derived_991), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_62__N_804[5]), .CK(osc_clk_derived_991), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_62__N_804[6]), .CK(osc_clk_derived_991), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_62__N_804[7]), .CK(osc_clk_derived_991), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_62__N_804[8]), .CK(osc_clk_derived_991), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_62__N_804[9]), .CK(osc_clk_derived_991), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_62__N_804[10]), .CK(osc_clk_derived_991), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_62__N_804[11]), .CK(osc_clk_derived_991), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_62__N_804[12]), .CK(osc_clk_derived_991), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_62__N_804[13]), .CK(osc_clk_derived_991), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_62__N_804[14]), .CK(osc_clk_derived_991), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_62__N_804[15]), .CK(osc_clk_derived_991), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_62__N_804[16]), .CK(osc_clk_derived_991), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_62__N_804[17]), .CK(osc_clk_derived_991), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_62__N_804[18]), .CK(osc_clk_derived_991), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_62__N_804[19]), .CK(osc_clk_derived_991), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_62__N_804[20]), .CK(osc_clk_derived_991), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_62__N_804[21]), .CK(osc_clk_derived_991), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_62__N_804[22]), .CK(osc_clk_derived_991), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_62__N_804[23]), .CK(osc_clk_derived_991), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_62__N_804[24]), .CK(osc_clk_derived_991), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_62__N_804[25]), .CK(osc_clk_derived_991), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_62__N_804[26]), .CK(osc_clk_derived_991), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_62__N_804[27]), .CK(osc_clk_derived_991), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_62__N_804[28]), .CK(osc_clk_derived_991), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_62__N_804[29]), .CK(osc_clk_derived_991), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_62__N_804[30]), .CK(osc_clk_derived_991), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_62__N_804[31]), .CK(osc_clk_derived_991), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_62__N_804[32]), .CK(osc_clk_derived_991), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_62__N_804[33]), .CK(osc_clk_derived_991), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_62__N_804[34]), .CK(osc_clk_derived_991), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_62__N_804[35]), .CK(osc_clk_derived_991), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_62__N_804[36]), .CK(osc_clk_derived_991), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_62__N_804[37]), .CK(osc_clk_derived_991), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_62__N_804[38]), .CK(osc_clk_derived_991), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_62__N_804[39]), .CK(osc_clk_derived_991), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_62__N_804[40]), .CK(osc_clk_derived_991), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_62__N_804[41]), .CK(osc_clk_derived_991), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_62__N_804[42]), .CK(osc_clk_derived_991), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_62__N_804[43]), .CK(osc_clk_derived_991), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_62__N_804[44]), .CK(osc_clk_derived_991), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_62__N_804[45]), .CK(osc_clk_derived_991), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_62__N_804[46]), .CK(osc_clk_derived_991), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_62__N_804[47]), .CK(osc_clk_derived_991), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_62__N_804[48]), .CK(osc_clk_derived_991), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_62__N_804[49]), .CK(osc_clk_derived_991), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_62__N_804[50]), .CK(osc_clk_derived_991), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_62__N_804[51]), .CK(osc_clk_derived_991), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_62__N_804[52]), .CK(osc_clk_derived_991), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_62__N_804[53]), .CK(osc_clk_derived_991), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_62__N_804[54]), .CK(osc_clk_derived_991), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_62__N_804[55]), .CK(osc_clk_derived_991), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_62__N_804[56]), .CK(osc_clk_derived_991), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_62__N_804[57]), .CK(osc_clk_derived_991), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d4_i58 (.D(d4_62__N_804[58]), .CK(osc_clk_derived_991), .Q(d4[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i58.GSR = "ENABLED";
    FD1S3AX d4_i59 (.D(d4_62__N_804[59]), .CK(osc_clk_derived_991), .Q(d4[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i59.GSR = "ENABLED";
    FD1S3AX d4_i60 (.D(d4_62__N_804[60]), .CK(osc_clk_derived_991), .Q(d4[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i60.GSR = "ENABLED";
    FD1S3AX d4_i61 (.D(d4_62__N_804[61]), .CK(osc_clk_derived_991), .Q(d4[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i61.GSR = "ENABLED";
    FD1S3AX d4_i62 (.D(d4_62__N_804[62]), .CK(osc_clk_derived_991), .Q(d4[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d4_i62.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_62__N_867[1]), .CK(osc_clk_derived_991), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_62__N_867[2]), .CK(osc_clk_derived_991), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_62__N_867[3]), .CK(osc_clk_derived_991), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_62__N_867[4]), .CK(osc_clk_derived_991), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_62__N_867[5]), .CK(osc_clk_derived_991), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_62__N_867[6]), .CK(osc_clk_derived_991), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_62__N_867[7]), .CK(osc_clk_derived_991), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_62__N_867[8]), .CK(osc_clk_derived_991), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_62__N_867[9]), .CK(osc_clk_derived_991), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_62__N_867[10]), .CK(osc_clk_derived_991), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_62__N_867[11]), .CK(osc_clk_derived_991), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_62__N_867[12]), .CK(osc_clk_derived_991), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_62__N_867[13]), .CK(osc_clk_derived_991), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_62__N_867[14]), .CK(osc_clk_derived_991), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_62__N_867[15]), .CK(osc_clk_derived_991), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_62__N_867[16]), .CK(osc_clk_derived_991), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_62__N_867[17]), .CK(osc_clk_derived_991), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_62__N_867[18]), .CK(osc_clk_derived_991), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_62__N_867[19]), .CK(osc_clk_derived_991), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_62__N_867[20]), .CK(osc_clk_derived_991), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_62__N_867[21]), .CK(osc_clk_derived_991), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_62__N_867[22]), .CK(osc_clk_derived_991), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_62__N_867[23]), .CK(osc_clk_derived_991), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_62__N_867[24]), .CK(osc_clk_derived_991), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_62__N_867[25]), .CK(osc_clk_derived_991), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_62__N_867[26]), .CK(osc_clk_derived_991), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_62__N_867[27]), .CK(osc_clk_derived_991), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_62__N_867[28]), .CK(osc_clk_derived_991), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_62__N_867[29]), .CK(osc_clk_derived_991), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_62__N_867[30]), .CK(osc_clk_derived_991), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_62__N_867[31]), .CK(osc_clk_derived_991), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_62__N_867[32]), .CK(osc_clk_derived_991), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_62__N_867[33]), .CK(osc_clk_derived_991), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_62__N_867[34]), .CK(osc_clk_derived_991), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_62__N_867[35]), .CK(osc_clk_derived_991), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_62__N_867[36]), .CK(osc_clk_derived_991), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_62__N_867[37]), .CK(osc_clk_derived_991), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_62__N_867[38]), .CK(osc_clk_derived_991), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_62__N_867[39]), .CK(osc_clk_derived_991), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_62__N_867[40]), .CK(osc_clk_derived_991), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_62__N_867[41]), .CK(osc_clk_derived_991), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_62__N_867[42]), .CK(osc_clk_derived_991), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_62__N_867[43]), .CK(osc_clk_derived_991), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_62__N_867[44]), .CK(osc_clk_derived_991), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_62__N_867[45]), .CK(osc_clk_derived_991), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_62__N_867[46]), .CK(osc_clk_derived_991), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_62__N_867[47]), .CK(osc_clk_derived_991), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_62__N_867[48]), .CK(osc_clk_derived_991), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_62__N_867[49]), .CK(osc_clk_derived_991), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_62__N_867[50]), .CK(osc_clk_derived_991), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_62__N_867[51]), .CK(osc_clk_derived_991), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_62__N_867[52]), .CK(osc_clk_derived_991), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_62__N_867[53]), .CK(osc_clk_derived_991), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_62__N_867[54]), .CK(osc_clk_derived_991), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_62__N_867[55]), .CK(osc_clk_derived_991), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_62__N_867[56]), .CK(osc_clk_derived_991), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_62__N_867[57]), .CK(osc_clk_derived_991), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1S3AX d5_i58 (.D(d5_62__N_867[58]), .CK(osc_clk_derived_991), .Q(d5[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i58.GSR = "ENABLED";
    FD1S3AX d5_i59 (.D(d5_62__N_867[59]), .CK(osc_clk_derived_991), .Q(d5[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i59.GSR = "ENABLED";
    FD1S3AX d5_i60 (.D(d5_62__N_867[60]), .CK(osc_clk_derived_991), .Q(d5[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i60.GSR = "ENABLED";
    FD1S3AX d5_i61 (.D(d5_62__N_867[61]), .CK(osc_clk_derived_991), .Q(d5[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i61.GSR = "ENABLED";
    FD1S3AX d5_i62 (.D(d5_62__N_867[62]), .CK(osc_clk_derived_991), .Q(d5[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d5_i62.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(d6_62__N_1530[1]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d6_i0_i2 (.D(d6_62__N_1530[2]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(d6_62__N_1530[3]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(d6_62__N_1530[4]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(d6_62__N_1530[5]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(d6_62__N_1530[6]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(d6_62__N_1530[7]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(d6_62__N_1530[8]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(d6_62__N_1530[9]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(d6_62__N_1530[10]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(d6_62__N_1530[11]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(d6_62__N_1530[12]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(d6_62__N_1530[13]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(d6_62__N_1530[14]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(d6_62__N_1530[15]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(d6_62__N_1530[16]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(d6_62__N_1530[17]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(d6_62__N_1530[18]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(d6_62__N_1530[19]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(d6_62__N_1530[20]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(d6_62__N_1530[21]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(d6_62__N_1530[22]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(d6_62__N_1530[23]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(d6_62__N_1530[24]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(d6_62__N_1530[25]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(d6_62__N_1530[26]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(d6_62__N_1530[27]), .SP(osc_clk_derived_991_enable_146), 
            .CK(osc_clk_derived_991), .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(d6_62__N_1530[28]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(d6_62__N_1530[29]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(d6_62__N_1530[30]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(d6_62__N_1530[31]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(d6_62__N_1530[32]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(d6_62__N_1530[33]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(d6_62__N_1530[34]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(d6_62__N_1530[35]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(d6_62__N_1530[36]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(d6_62__N_1530[37]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(d6_62__N_1530[38]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i39 (.D(d6_62__N_1530[39]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(d6_62__N_1530[40]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(d6_62__N_1530[41]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(d6_62__N_1530[42]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i43 (.D(d6_62__N_1530[43]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(d6_62__N_1530[44]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(d6_62__N_1530[45]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i46 (.D(d6_62__N_1530[46]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(d6_62__N_1530[47]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(d6_62__N_1530[48]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(d6_62__N_1530[49]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(d6_62__N_1530[50]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(d6_62__N_1530[51]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(d6_62__N_1530[52]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(d6_62__N_1530[53]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(d6_62__N_1530[54]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(d6_62__N_1530[55]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(d6_62__N_1530[56]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(d6_62__N_1530[57]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i58 (.D(d6_62__N_1530[58]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d6_i0_i59 (.D(d6_62__N_1530[59]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d6_i0_i60 (.D(d6_62__N_1530[60]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d6_i0_i61 (.D(d6_62__N_1530[61]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d6_i0_i62 (.D(d6_62__N_1530[62]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i62.GSR = "ENABLED";
    LUT4 i1544_2_lut (.A(CIC1_out[0]), .B(d1[0]), .Z(d1_62__N_615[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1544_2_lut.init = 16'h6666;
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_69 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_496)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_69.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_68 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_446)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_68.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_67 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_396)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_67.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_66 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_346)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_66.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_15 (.A(n3435), .B(n2572), .Z(n1228)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'hbbbb;
    FD1S3AX v_comb_64_rep_65 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_296)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_65.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_64 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_246)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_64.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_63 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_196)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_63.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_62 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_146)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_62.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_derived_991_enable_196), 
            .CK(osc_clk_derived_991), .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i58 (.D(d6[58]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i59 (.D(d6[59]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i60 (.D(d6[60]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i61 (.D(d6[61]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i62 (.D(d6[62]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d_d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(d7_62__N_1593[1]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(d7_62__N_1593[2]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(d7_62__N_1593[3]), .SP(osc_clk_derived_991_enable_246), 
            .CK(osc_clk_derived_991), .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(d7_62__N_1593[4]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(d7_62__N_1593[5]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(d7_62__N_1593[6]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(d7_62__N_1593[7]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(d7_62__N_1593[8]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(d7_62__N_1593[9]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(d7_62__N_1593[10]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(d7_62__N_1593[11]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(d7_62__N_1593[12]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(d7_62__N_1593[13]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(d7_62__N_1593[14]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(d7_62__N_1593[15]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(d7_62__N_1593[16]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(d7_62__N_1593[17]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(d7_62__N_1593[18]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(d7_62__N_1593[19]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(d7_62__N_1593[20]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(d7_62__N_1593[21]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(d7_62__N_1593[22]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(d7_62__N_1593[23]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(d7_62__N_1593[24]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(d7_62__N_1593[25]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(d7_62__N_1593[26]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(d7_62__N_1593[27]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(d7_62__N_1593[28]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(d7_62__N_1593[29]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(d7_62__N_1593[30]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(d7_62__N_1593[31]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(d7_62__N_1593[32]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(d7_62__N_1593[33]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(d7_62__N_1593[34]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(d7_62__N_1593[35]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(d7_62__N_1593[36]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(d7_62__N_1593[37]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(d7_62__N_1593[38]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(d7_62__N_1593[39]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(d7_62__N_1593[40]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(d7_62__N_1593[41]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(d7_62__N_1593[42]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(d7_62__N_1593[43]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(d7_62__N_1593[44]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(d7_62__N_1593[45]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(d7_62__N_1593[46]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(d7_62__N_1593[47]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(d7_62__N_1593[48]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(d7_62__N_1593[49]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(d7_62__N_1593[50]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(d7_62__N_1593[51]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(d7_62__N_1593[52]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(d7_62__N_1593[53]), .SP(osc_clk_derived_991_enable_296), 
            .CK(osc_clk_derived_991), .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(d7_62__N_1593[54]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(d7_62__N_1593[55]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(d7_62__N_1593[56]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(d7_62__N_1593[57]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i58 (.D(d7_62__N_1593[58]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d7_i0_i59 (.D(d7_62__N_1593[59]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d7_i0_i60 (.D(d7_62__N_1593[60]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d7_i0_i61 (.D(d7_62__N_1593[61]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d7_i0_i62 (.D(d7_62__N_1593[62]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_derived_991_enable_346), 
            .CK(osc_clk_derived_991), .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i58 (.D(d7[58]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i59 (.D(d7[59]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i60 (.D(d7[60]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i61 (.D(d7[61]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i62 (.D(d7[62]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d_d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(d8_62__N_1656[1]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(d8_62__N_1656[2]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(d8_62__N_1656[3]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(d8_62__N_1656[4]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(d8_62__N_1656[5]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(d8_62__N_1656[6]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(d8_62__N_1656[7]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(d8_62__N_1656[8]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(d8_62__N_1656[9]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(d8_62__N_1656[10]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(d8_62__N_1656[11]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(d8_62__N_1656[12]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(d8_62__N_1656[13]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(d8_62__N_1656[14]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(d8_62__N_1656[15]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(d8_62__N_1656[16]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(d8_62__N_1656[17]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(d8_62__N_1656[18]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(d8_62__N_1656[19]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(d8_62__N_1656[20]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(d8_62__N_1656[21]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(d8_62__N_1656[22]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(d8_62__N_1656[23]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(d8_62__N_1656[24]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(d8_62__N_1656[25]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(d8_62__N_1656[26]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(d8_62__N_1656[27]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(d8_62__N_1656[28]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(d8_62__N_1656[29]), .SP(osc_clk_derived_991_enable_396), 
            .CK(osc_clk_derived_991), .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(d8_62__N_1656[30]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(d8_62__N_1656[31]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(d8_62__N_1656[32]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(d8_62__N_1656[33]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(d8_62__N_1656[34]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(d8_62__N_1656[35]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(d8_62__N_1656[36]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(d8_62__N_1656[37]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(d8_62__N_1656[38]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(d8_62__N_1656[39]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(d8_62__N_1656[40]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(d8_62__N_1656[41]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(d8_62__N_1656[42]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(d8_62__N_1656[43]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(d8_62__N_1656[44]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(d8_62__N_1656[45]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(d8_62__N_1656[46]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(d8_62__N_1656[47]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(d8_62__N_1656[48]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(d8_62__N_1656[49]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(d8_62__N_1656[50]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(d8_62__N_1656[51]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(d8_62__N_1656[52]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(d8_62__N_1656[53]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(d8_62__N_1656[54]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(d8_62__N_1656[55]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(d8_62__N_1656[56]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(d8_62__N_1656[57]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i58 (.D(d8_62__N_1656[58]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d8_i0_i59 (.D(d8_62__N_1656[59]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d8_i0_i60 (.D(d8_62__N_1656[60]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d8_i0_i61 (.D(d8_62__N_1656[61]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d8_i0_i62 (.D(d8_62__N_1656[62]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_derived_991_enable_446), 
            .CK(osc_clk_derived_991), .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i58 (.D(d8[58]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i59 (.D(d8[59]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i60 (.D(d8[60]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i61 (.D(d8[61]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i62 (.D(d8[62]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d_d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(d9_62__N_1719[1]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(d9_62__N_1719[2]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(d9_62__N_1719[3]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(d9_62__N_1719[4]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(d9_62__N_1719[5]), .SP(osc_clk_derived_991_enable_496), 
            .CK(osc_clk_derived_991), .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(d9_62__N_1719[6]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(d9_62__N_1719[7]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(d9_62__N_1719[8]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(d9_62__N_1719[9]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(d9_62__N_1719[10]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(d9_62__N_1719[11]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(d9_62__N_1719[12]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(d9_62__N_1719[13]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(d9_62__N_1719[14]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(d9_62__N_1719[15]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(d9_62__N_1719[16]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(d9_62__N_1719[17]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(d9_62__N_1719[18]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(d9_62__N_1719[19]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(d9_62__N_1719[20]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(d9_62__N_1719[21]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(d9_62__N_1719[22]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(d9_62__N_1719[23]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(d9_62__N_1719[24]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(d9_62__N_1719[25]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(d9_62__N_1719[26]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(d9_62__N_1719[27]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(d9_62__N_1719[28]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(d9_62__N_1719[29]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(d9_62__N_1719[30]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(d9_62__N_1719[31]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(d9_62__N_1719[32]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(d9_62__N_1719[33]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(d9_62__N_1719[34]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(d9_62__N_1719[35]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(d9_62__N_1719[36]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(d9_62__N_1719[37]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(d9_62__N_1719[38]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(d9_62__N_1719[39]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(d9_62__N_1719[40]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(d9_62__N_1719[41]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(d9_62__N_1719[42]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(d9_62__N_1719[43]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(d9_62__N_1719[44]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(d9_62__N_1719[45]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(d9_62__N_1719[46]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(d9_62__N_1719[47]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(d9_62__N_1719[48]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(d9_62__N_1719[49]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(d9_62__N_1719[50]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(d9_62__N_1719[51]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(d9_62__N_1719[52]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(d9_62__N_1719[53]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(d9_62__N_1719[54]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(d9_62__N_1719[55]), .SP(osc_clk_derived_991_enable_546), 
            .CK(osc_clk_derived_991), .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(d9_62__N_1719[56]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(d9_62__N_1719[57]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i58 (.D(d9_62__N_1719[58]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d9_i0_i59 (.D(d9_62__N_1719[59]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d9_i0_i60 (.D(d9_62__N_1719[60]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d9_i0_i61 (.D(d9_62__N_1719[61]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d9_i0_i62 (.D(d9_62__N_1719[62]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_derived_991_enable_596), 
            .CK(osc_clk_derived_991), .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i58 (.D(d9[58]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i59 (.D(d9[59]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i60 (.D(d9[60]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i61 (.D(d9[61]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i62 (.D(d9[62]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d_d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d10__i2 (.D(d10_62__N_1782[56]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i2.GSR = "ENABLED";
    FD1P3AX d10__i3 (.D(d10_62__N_1782[57]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i3.GSR = "ENABLED";
    FD1P3AX d10__i4 (.D(d10_62__N_1782[58]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i4.GSR = "ENABLED";
    FD1P3AX d10__i5 (.D(d10_62__N_1782[59]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i5.GSR = "ENABLED";
    FD1P3AX d10__i6 (.D(d10_62__N_1782[60]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i6.GSR = "ENABLED";
    FD1P3AX d10__i7 (.D(d10_62__N_1782[61]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i7.GSR = "ENABLED";
    FD1P3AX d10__i8 (.D(d10_62__N_1782[62]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(d10[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i8.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[56]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(\DataInNoSign_7__N_1896[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[57]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(MYLED_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[58]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(MYLED_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[59]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(MYLED_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[60]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(n658)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[61]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(n657)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[62]), .SP(v_comb), .CK(osc_clk_derived_991), 
            .Q(MYLED_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_62__N_615[1]), .CK(osc_clk_derived_991), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_61 (.D(osc_clk_derived_991_enable_597), .CK(osc_clk_derived_991), 
            .Q(osc_clk_derived_991_enable_96)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_61.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_62__N_615[2]), .CK(osc_clk_derived_991), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_62__N_615[3]), .CK(osc_clk_derived_991), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_62__N_615[4]), .CK(osc_clk_derived_991), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_62__N_615[5]), .CK(osc_clk_derived_991), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_62__N_615[6]), .CK(osc_clk_derived_991), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_62__N_615[7]), .CK(osc_clk_derived_991), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_62__N_615[8]), .CK(osc_clk_derived_991), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_62__N_615[9]), .CK(osc_clk_derived_991), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_62__N_615[10]), .CK(osc_clk_derived_991), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_62__N_615[11]), .CK(osc_clk_derived_991), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_62__N_615[12]), .CK(osc_clk_derived_991), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_62__N_615[13]), .CK(osc_clk_derived_991), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_62__N_615[14]), .CK(osc_clk_derived_991), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_62__N_615[15]), .CK(osc_clk_derived_991), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_62__N_615[16]), .CK(osc_clk_derived_991), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_62__N_615[17]), .CK(osc_clk_derived_991), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_62__N_615[18]), .CK(osc_clk_derived_991), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_62__N_615[19]), .CK(osc_clk_derived_991), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_62__N_615[20]), .CK(osc_clk_derived_991), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_62__N_615[21]), .CK(osc_clk_derived_991), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_62__N_615[22]), .CK(osc_clk_derived_991), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_62__N_615[23]), .CK(osc_clk_derived_991), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_62__N_615[24]), .CK(osc_clk_derived_991), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_62__N_615[25]), .CK(osc_clk_derived_991), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_62__N_615[26]), .CK(osc_clk_derived_991), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_62__N_615[27]), .CK(osc_clk_derived_991), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_62__N_615[28]), .CK(osc_clk_derived_991), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_62__N_615[29]), .CK(osc_clk_derived_991), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_62__N_615[30]), .CK(osc_clk_derived_991), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_62__N_615[31]), .CK(osc_clk_derived_991), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_62__N_615[32]), .CK(osc_clk_derived_991), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_62__N_615[33]), .CK(osc_clk_derived_991), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_62__N_615[34]), .CK(osc_clk_derived_991), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_62__N_615[35]), .CK(osc_clk_derived_991), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_62__N_615[36]), .CK(osc_clk_derived_991), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_62__N_615[37]), .CK(osc_clk_derived_991), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_62__N_615[38]), .CK(osc_clk_derived_991), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_62__N_615[39]), .CK(osc_clk_derived_991), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_62__N_615[40]), .CK(osc_clk_derived_991), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_62__N_615[41]), .CK(osc_clk_derived_991), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_62__N_615[42]), .CK(osc_clk_derived_991), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_62__N_615[43]), .CK(osc_clk_derived_991), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_62__N_615[44]), .CK(osc_clk_derived_991), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_62__N_615[45]), .CK(osc_clk_derived_991), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_62__N_615[46]), .CK(osc_clk_derived_991), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_62__N_615[47]), .CK(osc_clk_derived_991), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_62__N_615[48]), .CK(osc_clk_derived_991), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_62__N_615[49]), .CK(osc_clk_derived_991), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_62__N_615[50]), .CK(osc_clk_derived_991), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_62__N_615[51]), .CK(osc_clk_derived_991), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_62__N_615[52]), .CK(osc_clk_derived_991), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_62__N_615[53]), .CK(osc_clk_derived_991), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_62__N_615[54]), .CK(osc_clk_derived_991), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_62__N_615[55]), .CK(osc_clk_derived_991), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_62__N_615[56]), .CK(osc_clk_derived_991), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_62__N_615[57]), .CK(osc_clk_derived_991), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i57.GSR = "ENABLED";
    FD1S3AX d1_i58 (.D(d1_62__N_615[58]), .CK(osc_clk_derived_991), .Q(d1[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i58.GSR = "ENABLED";
    FD1S3AX d1_i59 (.D(d1_62__N_615[59]), .CK(osc_clk_derived_991), .Q(d1[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i59.GSR = "ENABLED";
    FD1S3AX d1_i60 (.D(d1_62__N_615[60]), .CK(osc_clk_derived_991), .Q(d1[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i60.GSR = "ENABLED";
    FD1S3AX d1_i61 (.D(d1_62__N_615[61]), .CK(osc_clk_derived_991), .Q(d1[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i61.GSR = "ENABLED";
    FD1S3AX d1_i62 (.D(d1_62__N_615[62]), .CK(osc_clk_derived_991), .Q(d1[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d1_i62.GSR = "ENABLED";
    CCU2D d2_62__I_0_44 (.A0(d2[42]), .B0(d3[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[43]), .B1(d3[43]), .C1(GND_net), .D1(GND_net), .CIN(n1966), 
          .COUT(n1967), .S0(d3_62__N_741[42]), .S1(d3_62__N_741[43]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_44.INIT0 = 16'h5666;
    defparam d2_62__I_0_44.INIT1 = 16'h5666;
    defparam d2_62__I_0_44.INJECT1_0 = "NO";
    defparam d2_62__I_0_44.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_42 (.A0(d2[40]), .B0(d3[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[41]), .B1(d3[41]), .C1(GND_net), .D1(GND_net), .CIN(n1965), 
          .COUT(n1966), .S0(d3_62__N_741[40]), .S1(d3_62__N_741[41]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_42.INIT0 = 16'h5666;
    defparam d2_62__I_0_42.INIT1 = 16'h5666;
    defparam d2_62__I_0_42.INJECT1_0 = "NO";
    defparam d2_62__I_0_42.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_63 (.A0(d6[61]), .B0(d_d6[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[62]), .B1(d_d6[62]), .C1(GND_net), .D1(GND_net), .CIN(n2183), 
          .S0(d7_62__N_1593[61]), .S1(d7_62__N_1593[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_63.INIT0 = 16'h5999;
    defparam sub_26_add_2_63.INIT1 = 16'h5999;
    defparam sub_26_add_2_63.INJECT1_0 = "NO";
    defparam sub_26_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_61 (.A0(d6[59]), .B0(d_d6[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[60]), .B1(d_d6[60]), .C1(GND_net), .D1(GND_net), .CIN(n2182), 
          .COUT(n2183), .S0(d7_62__N_1593[59]), .S1(d7_62__N_1593[60]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_61.INIT0 = 16'h5999;
    defparam sub_26_add_2_61.INIT1 = 16'h5999;
    defparam sub_26_add_2_61.INJECT1_0 = "NO";
    defparam sub_26_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_59 (.A0(d6[57]), .B0(d_d6[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[58]), .B1(d_d6[58]), .C1(GND_net), .D1(GND_net), .CIN(n2181), 
          .COUT(n2182), .S0(d7_62__N_1593[57]), .S1(d7_62__N_1593[58]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_59.INIT0 = 16'h5999;
    defparam sub_26_add_2_59.INIT1 = 16'h5999;
    defparam sub_26_add_2_59.INJECT1_0 = "NO";
    defparam sub_26_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_57 (.A0(d6[55]), .B0(d_d6[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[56]), .B1(d_d6[56]), .C1(GND_net), .D1(GND_net), .CIN(n2180), 
          .COUT(n2181), .S0(d7_62__N_1593[55]), .S1(d7_62__N_1593[56]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_57.INIT0 = 16'h5999;
    defparam sub_26_add_2_57.INIT1 = 16'h5999;
    defparam sub_26_add_2_57.INJECT1_0 = "NO";
    defparam sub_26_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_55 (.A0(d6[53]), .B0(d_d6[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[54]), .B1(d_d6[54]), .C1(GND_net), .D1(GND_net), .CIN(n2179), 
          .COUT(n2180), .S0(d7_62__N_1593[53]), .S1(d7_62__N_1593[54]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_55.INIT0 = 16'h5999;
    defparam sub_26_add_2_55.INIT1 = 16'h5999;
    defparam sub_26_add_2_55.INJECT1_0 = "NO";
    defparam sub_26_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_53 (.A0(d6[51]), .B0(d_d6[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[52]), .B1(d_d6[52]), .C1(GND_net), .D1(GND_net), .CIN(n2178), 
          .COUT(n2179), .S0(d7_62__N_1593[51]), .S1(d7_62__N_1593[52]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_53.INIT0 = 16'h5999;
    defparam sub_26_add_2_53.INIT1 = 16'h5999;
    defparam sub_26_add_2_53.INJECT1_0 = "NO";
    defparam sub_26_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_51 (.A0(d6[49]), .B0(d_d6[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[50]), .B1(d_d6[50]), .C1(GND_net), .D1(GND_net), .CIN(n2177), 
          .COUT(n2178), .S0(d7_62__N_1593[49]), .S1(d7_62__N_1593[50]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_51.INIT0 = 16'h5999;
    defparam sub_26_add_2_51.INIT1 = 16'h5999;
    defparam sub_26_add_2_51.INJECT1_0 = "NO";
    defparam sub_26_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_49 (.A0(d6[47]), .B0(d_d6[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[48]), .B1(d_d6[48]), .C1(GND_net), .D1(GND_net), .CIN(n2176), 
          .COUT(n2177), .S0(d7_62__N_1593[47]), .S1(d7_62__N_1593[48]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_49.INIT0 = 16'h5999;
    defparam sub_26_add_2_49.INIT1 = 16'h5999;
    defparam sub_26_add_2_49.INJECT1_0 = "NO";
    defparam sub_26_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_47 (.A0(d6[45]), .B0(d_d6[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[46]), .B1(d_d6[46]), .C1(GND_net), .D1(GND_net), .CIN(n2175), 
          .COUT(n2176), .S0(d7_62__N_1593[45]), .S1(d7_62__N_1593[46]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_47.INIT0 = 16'h5999;
    defparam sub_26_add_2_47.INIT1 = 16'h5999;
    defparam sub_26_add_2_47.INJECT1_0 = "NO";
    defparam sub_26_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_45 (.A0(d6[43]), .B0(d_d6[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[44]), .B1(d_d6[44]), .C1(GND_net), .D1(GND_net), .CIN(n2174), 
          .COUT(n2175), .S0(d7_62__N_1593[43]), .S1(d7_62__N_1593[44]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_45.INIT0 = 16'h5999;
    defparam sub_26_add_2_45.INIT1 = 16'h5999;
    defparam sub_26_add_2_45.INJECT1_0 = "NO";
    defparam sub_26_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_43 (.A0(d6[41]), .B0(d_d6[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[42]), .B1(d_d6[42]), .C1(GND_net), .D1(GND_net), .CIN(n2173), 
          .COUT(n2174), .S0(d7_62__N_1593[41]), .S1(d7_62__N_1593[42]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_43.INIT0 = 16'h5999;
    defparam sub_26_add_2_43.INIT1 = 16'h5999;
    defparam sub_26_add_2_43.INJECT1_0 = "NO";
    defparam sub_26_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_41 (.A0(d6[39]), .B0(d_d6[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[40]), .B1(d_d6[40]), .C1(GND_net), .D1(GND_net), .CIN(n2172), 
          .COUT(n2173), .S0(d7_62__N_1593[39]), .S1(d7_62__N_1593[40]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_41.INIT0 = 16'h5999;
    defparam sub_26_add_2_41.INIT1 = 16'h5999;
    defparam sub_26_add_2_41.INJECT1_0 = "NO";
    defparam sub_26_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_39 (.A0(d6[37]), .B0(d_d6[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[38]), .B1(d_d6[38]), .C1(GND_net), .D1(GND_net), .CIN(n2171), 
          .COUT(n2172), .S0(d7_62__N_1593[37]), .S1(d7_62__N_1593[38]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_39.INIT0 = 16'h5999;
    defparam sub_26_add_2_39.INIT1 = 16'h5999;
    defparam sub_26_add_2_39.INJECT1_0 = "NO";
    defparam sub_26_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n2170), 
          .COUT(n2171), .S0(d7_62__N_1593[35]), .S1(d7_62__N_1593[36]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_37.INIT0 = 16'h5999;
    defparam sub_26_add_2_37.INIT1 = 16'h5999;
    defparam sub_26_add_2_37.INJECT1_0 = "NO";
    defparam sub_26_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n2169), 
          .COUT(n2170), .S0(d7_62__N_1593[33]), .S1(d7_62__N_1593[34]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_35.INIT0 = 16'h5999;
    defparam sub_26_add_2_35.INIT1 = 16'h5999;
    defparam sub_26_add_2_35.INJECT1_0 = "NO";
    defparam sub_26_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n2168), 
          .COUT(n2169), .S0(d7_62__N_1593[31]), .S1(d7_62__N_1593[32]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_33.INIT0 = 16'h5999;
    defparam sub_26_add_2_33.INIT1 = 16'h5999;
    defparam sub_26_add_2_33.INJECT1_0 = "NO";
    defparam sub_26_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n2167), 
          .COUT(n2168), .S0(d7_62__N_1593[29]), .S1(d7_62__N_1593[30]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_31.INIT0 = 16'h5999;
    defparam sub_26_add_2_31.INIT1 = 16'h5999;
    defparam sub_26_add_2_31.INJECT1_0 = "NO";
    defparam sub_26_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n2166), 
          .COUT(n2167), .S0(d7_62__N_1593[27]), .S1(d7_62__N_1593[28]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_29.INIT0 = 16'h5999;
    defparam sub_26_add_2_29.INIT1 = 16'h5999;
    defparam sub_26_add_2_29.INJECT1_0 = "NO";
    defparam sub_26_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n2165), 
          .COUT(n2166), .S0(d7_62__N_1593[25]), .S1(d7_62__N_1593[26]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_27.INIT0 = 16'h5999;
    defparam sub_26_add_2_27.INIT1 = 16'h5999;
    defparam sub_26_add_2_27.INJECT1_0 = "NO";
    defparam sub_26_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n2164), 
          .COUT(n2165), .S0(d7_62__N_1593[23]), .S1(d7_62__N_1593[24]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_25.INIT0 = 16'h5999;
    defparam sub_26_add_2_25.INIT1 = 16'h5999;
    defparam sub_26_add_2_25.INJECT1_0 = "NO";
    defparam sub_26_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n2163), 
          .COUT(n2164), .S0(d7_62__N_1593[21]), .S1(d7_62__N_1593[22]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_23.INIT0 = 16'h5999;
    defparam sub_26_add_2_23.INIT1 = 16'h5999;
    defparam sub_26_add_2_23.INJECT1_0 = "NO";
    defparam sub_26_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n2162), 
          .COUT(n2163), .S0(d7_62__N_1593[19]), .S1(d7_62__N_1593[20]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_21.INIT0 = 16'h5999;
    defparam sub_26_add_2_21.INIT1 = 16'h5999;
    defparam sub_26_add_2_21.INJECT1_0 = "NO";
    defparam sub_26_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n2161), 
          .COUT(n2162), .S0(d7_62__N_1593[17]), .S1(d7_62__N_1593[18]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_19.INIT0 = 16'h5999;
    defparam sub_26_add_2_19.INIT1 = 16'h5999;
    defparam sub_26_add_2_19.INJECT1_0 = "NO";
    defparam sub_26_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n2160), 
          .COUT(n2161), .S0(d7_62__N_1593[15]), .S1(d7_62__N_1593[16]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_17.INIT0 = 16'h5999;
    defparam sub_26_add_2_17.INIT1 = 16'h5999;
    defparam sub_26_add_2_17.INJECT1_0 = "NO";
    defparam sub_26_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n2159), 
          .COUT(n2160), .S0(d7_62__N_1593[13]), .S1(d7_62__N_1593[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_15.INIT0 = 16'h5999;
    defparam sub_26_add_2_15.INIT1 = 16'h5999;
    defparam sub_26_add_2_15.INJECT1_0 = "NO";
    defparam sub_26_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n2158), 
          .COUT(n2159), .S0(d7_62__N_1593[11]), .S1(d7_62__N_1593[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_13.INIT0 = 16'h5999;
    defparam sub_26_add_2_13.INIT1 = 16'h5999;
    defparam sub_26_add_2_13.INJECT1_0 = "NO";
    defparam sub_26_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n2157), 
          .COUT(n2158), .S0(d7_62__N_1593[9]), .S1(d7_62__N_1593[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_11.INIT0 = 16'h5999;
    defparam sub_26_add_2_11.INIT1 = 16'h5999;
    defparam sub_26_add_2_11.INJECT1_0 = "NO";
    defparam sub_26_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n2156), 
          .COUT(n2157), .S0(d7_62__N_1593[7]), .S1(d7_62__N_1593[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_9.INIT0 = 16'h5999;
    defparam sub_26_add_2_9.INIT1 = 16'h5999;
    defparam sub_26_add_2_9.INJECT1_0 = "NO";
    defparam sub_26_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n2155), 
          .COUT(n2156), .S0(d7_62__N_1593[5]), .S1(d7_62__N_1593[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_7.INIT0 = 16'h5999;
    defparam sub_26_add_2_7.INIT1 = 16'h5999;
    defparam sub_26_add_2_7.INJECT1_0 = "NO";
    defparam sub_26_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n2154), 
          .COUT(n2155), .S0(d7_62__N_1593[3]), .S1(d7_62__N_1593[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_5.INIT0 = 16'h5999;
    defparam sub_26_add_2_5.INIT1 = 16'h5999;
    defparam sub_26_add_2_5.INJECT1_0 = "NO";
    defparam sub_26_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n2153), 
          .COUT(n2154), .S0(d7_62__N_1593[1]), .S1(d7_62__N_1593[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_3.INIT0 = 16'h5999;
    defparam sub_26_add_2_3.INIT1 = 16'h5999;
    defparam sub_26_add_2_3.INJECT1_0 = "NO";
    defparam sub_26_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n2153), 
          .S1(d7_62__N_1593[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_1.INIT0 = 16'h0000;
    defparam sub_26_add_2_1.INIT1 = 16'h5999;
    defparam sub_26_add_2_1.INJECT1_0 = "NO";
    defparam sub_26_add_2_1.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_40 (.A0(d2[38]), .B0(d3[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[39]), .B1(d3[39]), .C1(GND_net), .D1(GND_net), .CIN(n1964), 
          .COUT(n1965), .S0(d3_62__N_741[38]), .S1(d3_62__N_741[39]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_40.INIT0 = 16'h5666;
    defparam d2_62__I_0_40.INIT1 = 16'h5666;
    defparam d2_62__I_0_40.INJECT1_0 = "NO";
    defparam d2_62__I_0_40.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[37]), .B1(d3[37]), .C1(GND_net), .D1(GND_net), .CIN(n1963), 
          .COUT(n1964), .S0(d3_62__N_741[36]), .S1(d3_62__N_741[37]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_38.INIT0 = 16'h5666;
    defparam d2_62__I_0_38.INIT1 = 16'h5666;
    defparam d2_62__I_0_38.INJECT1_0 = "NO";
    defparam d2_62__I_0_38.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n1962), 
          .COUT(n1963), .S0(d3_62__N_741[34]), .S1(d3_62__N_741[35]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_36.INIT0 = 16'h5666;
    defparam d2_62__I_0_36.INIT1 = 16'h5666;
    defparam d2_62__I_0_36.INJECT1_0 = "NO";
    defparam d2_62__I_0_36.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n1961), 
          .COUT(n1962), .S0(d3_62__N_741[32]), .S1(d3_62__N_741[33]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_34.INIT0 = 16'h5666;
    defparam d2_62__I_0_34.INIT1 = 16'h5666;
    defparam d2_62__I_0_34.INJECT1_0 = "NO";
    defparam d2_62__I_0_34.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_63 (.A0(d7[61]), .B0(d_d7[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[62]), .B1(d_d7[62]), .C1(GND_net), .D1(GND_net), .CIN(n2143), 
          .S0(d8_62__N_1656[61]), .S1(d8_62__N_1656[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_63.INIT0 = 16'h5999;
    defparam sub_27_add_2_63.INIT1 = 16'h5999;
    defparam sub_27_add_2_63.INJECT1_0 = "NO";
    defparam sub_27_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_61 (.A0(d7[59]), .B0(d_d7[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[60]), .B1(d_d7[60]), .C1(GND_net), .D1(GND_net), .CIN(n2142), 
          .COUT(n2143), .S0(d8_62__N_1656[59]), .S1(d8_62__N_1656[60]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_61.INIT0 = 16'h5999;
    defparam sub_27_add_2_61.INIT1 = 16'h5999;
    defparam sub_27_add_2_61.INJECT1_0 = "NO";
    defparam sub_27_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_59 (.A0(d7[57]), .B0(d_d7[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[58]), .B1(d_d7[58]), .C1(GND_net), .D1(GND_net), .CIN(n2141), 
          .COUT(n2142), .S0(d8_62__N_1656[57]), .S1(d8_62__N_1656[58]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_59.INIT0 = 16'h5999;
    defparam sub_27_add_2_59.INIT1 = 16'h5999;
    defparam sub_27_add_2_59.INJECT1_0 = "NO";
    defparam sub_27_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_57 (.A0(d7[55]), .B0(d_d7[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[56]), .B1(d_d7[56]), .C1(GND_net), .D1(GND_net), .CIN(n2140), 
          .COUT(n2141), .S0(d8_62__N_1656[55]), .S1(d8_62__N_1656[56]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_57.INIT0 = 16'h5999;
    defparam sub_27_add_2_57.INIT1 = 16'h5999;
    defparam sub_27_add_2_57.INJECT1_0 = "NO";
    defparam sub_27_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_55 (.A0(d7[53]), .B0(d_d7[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[54]), .B1(d_d7[54]), .C1(GND_net), .D1(GND_net), .CIN(n2139), 
          .COUT(n2140), .S0(d8_62__N_1656[53]), .S1(d8_62__N_1656[54]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_55.INIT0 = 16'h5999;
    defparam sub_27_add_2_55.INIT1 = 16'h5999;
    defparam sub_27_add_2_55.INJECT1_0 = "NO";
    defparam sub_27_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_53 (.A0(d7[51]), .B0(d_d7[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[52]), .B1(d_d7[52]), .C1(GND_net), .D1(GND_net), .CIN(n2138), 
          .COUT(n2139), .S0(d8_62__N_1656[51]), .S1(d8_62__N_1656[52]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_53.INIT0 = 16'h5999;
    defparam sub_27_add_2_53.INIT1 = 16'h5999;
    defparam sub_27_add_2_53.INJECT1_0 = "NO";
    defparam sub_27_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_51 (.A0(d7[49]), .B0(d_d7[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[50]), .B1(d_d7[50]), .C1(GND_net), .D1(GND_net), .CIN(n2137), 
          .COUT(n2138), .S0(d8_62__N_1656[49]), .S1(d8_62__N_1656[50]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_51.INIT0 = 16'h5999;
    defparam sub_27_add_2_51.INIT1 = 16'h5999;
    defparam sub_27_add_2_51.INJECT1_0 = "NO";
    defparam sub_27_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_49 (.A0(d7[47]), .B0(d_d7[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[48]), .B1(d_d7[48]), .C1(GND_net), .D1(GND_net), .CIN(n2136), 
          .COUT(n2137), .S0(d8_62__N_1656[47]), .S1(d8_62__N_1656[48]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_49.INIT0 = 16'h5999;
    defparam sub_27_add_2_49.INIT1 = 16'h5999;
    defparam sub_27_add_2_49.INJECT1_0 = "NO";
    defparam sub_27_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_47 (.A0(d7[45]), .B0(d_d7[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[46]), .B1(d_d7[46]), .C1(GND_net), .D1(GND_net), .CIN(n2135), 
          .COUT(n2136), .S0(d8_62__N_1656[45]), .S1(d8_62__N_1656[46]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_47.INIT0 = 16'h5999;
    defparam sub_27_add_2_47.INIT1 = 16'h5999;
    defparam sub_27_add_2_47.INJECT1_0 = "NO";
    defparam sub_27_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_45 (.A0(d7[43]), .B0(d_d7[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[44]), .B1(d_d7[44]), .C1(GND_net), .D1(GND_net), .CIN(n2134), 
          .COUT(n2135), .S0(d8_62__N_1656[43]), .S1(d8_62__N_1656[44]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_45.INIT0 = 16'h5999;
    defparam sub_27_add_2_45.INIT1 = 16'h5999;
    defparam sub_27_add_2_45.INJECT1_0 = "NO";
    defparam sub_27_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_43 (.A0(d7[41]), .B0(d_d7[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[42]), .B1(d_d7[42]), .C1(GND_net), .D1(GND_net), .CIN(n2133), 
          .COUT(n2134), .S0(d8_62__N_1656[41]), .S1(d8_62__N_1656[42]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_43.INIT0 = 16'h5999;
    defparam sub_27_add_2_43.INIT1 = 16'h5999;
    defparam sub_27_add_2_43.INJECT1_0 = "NO";
    defparam sub_27_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_41 (.A0(d7[39]), .B0(d_d7[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[40]), .B1(d_d7[40]), .C1(GND_net), .D1(GND_net), .CIN(n2132), 
          .COUT(n2133), .S0(d8_62__N_1656[39]), .S1(d8_62__N_1656[40]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_41.INIT0 = 16'h5999;
    defparam sub_27_add_2_41.INIT1 = 16'h5999;
    defparam sub_27_add_2_41.INJECT1_0 = "NO";
    defparam sub_27_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_39 (.A0(d7[37]), .B0(d_d7[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[38]), .B1(d_d7[38]), .C1(GND_net), .D1(GND_net), .CIN(n2131), 
          .COUT(n2132), .S0(d8_62__N_1656[37]), .S1(d8_62__N_1656[38]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_39.INIT0 = 16'h5999;
    defparam sub_27_add_2_39.INIT1 = 16'h5999;
    defparam sub_27_add_2_39.INJECT1_0 = "NO";
    defparam sub_27_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n2130), 
          .COUT(n2131), .S0(d8_62__N_1656[35]), .S1(d8_62__N_1656[36]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_37.INIT0 = 16'h5999;
    defparam sub_27_add_2_37.INIT1 = 16'h5999;
    defparam sub_27_add_2_37.INJECT1_0 = "NO";
    defparam sub_27_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n2129), 
          .COUT(n2130), .S0(d8_62__N_1656[33]), .S1(d8_62__N_1656[34]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_35.INIT0 = 16'h5999;
    defparam sub_27_add_2_35.INIT1 = 16'h5999;
    defparam sub_27_add_2_35.INJECT1_0 = "NO";
    defparam sub_27_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n2128), 
          .COUT(n2129), .S0(d8_62__N_1656[31]), .S1(d8_62__N_1656[32]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_33.INIT0 = 16'h5999;
    defparam sub_27_add_2_33.INIT1 = 16'h5999;
    defparam sub_27_add_2_33.INJECT1_0 = "NO";
    defparam sub_27_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n2127), 
          .COUT(n2128), .S0(d8_62__N_1656[29]), .S1(d8_62__N_1656[30]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_31.INIT0 = 16'h5999;
    defparam sub_27_add_2_31.INIT1 = 16'h5999;
    defparam sub_27_add_2_31.INJECT1_0 = "NO";
    defparam sub_27_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n2126), 
          .COUT(n2127), .S0(d8_62__N_1656[27]), .S1(d8_62__N_1656[28]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_29.INIT0 = 16'h5999;
    defparam sub_27_add_2_29.INIT1 = 16'h5999;
    defparam sub_27_add_2_29.INJECT1_0 = "NO";
    defparam sub_27_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n2125), 
          .COUT(n2126), .S0(d8_62__N_1656[25]), .S1(d8_62__N_1656[26]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_27.INIT0 = 16'h5999;
    defparam sub_27_add_2_27.INIT1 = 16'h5999;
    defparam sub_27_add_2_27.INJECT1_0 = "NO";
    defparam sub_27_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n2124), 
          .COUT(n2125), .S0(d8_62__N_1656[23]), .S1(d8_62__N_1656[24]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_25.INIT0 = 16'h5999;
    defparam sub_27_add_2_25.INIT1 = 16'h5999;
    defparam sub_27_add_2_25.INJECT1_0 = "NO";
    defparam sub_27_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n2123), 
          .COUT(n2124), .S0(d8_62__N_1656[21]), .S1(d8_62__N_1656[22]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_23.INIT0 = 16'h5999;
    defparam sub_27_add_2_23.INIT1 = 16'h5999;
    defparam sub_27_add_2_23.INJECT1_0 = "NO";
    defparam sub_27_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n2122), 
          .COUT(n2123), .S0(d8_62__N_1656[19]), .S1(d8_62__N_1656[20]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_21.INIT0 = 16'h5999;
    defparam sub_27_add_2_21.INIT1 = 16'h5999;
    defparam sub_27_add_2_21.INJECT1_0 = "NO";
    defparam sub_27_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n2121), 
          .COUT(n2122), .S0(d8_62__N_1656[17]), .S1(d8_62__N_1656[18]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_19.INIT0 = 16'h5999;
    defparam sub_27_add_2_19.INIT1 = 16'h5999;
    defparam sub_27_add_2_19.INJECT1_0 = "NO";
    defparam sub_27_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n2120), 
          .COUT(n2121), .S0(d8_62__N_1656[15]), .S1(d8_62__N_1656[16]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_17.INIT0 = 16'h5999;
    defparam sub_27_add_2_17.INIT1 = 16'h5999;
    defparam sub_27_add_2_17.INJECT1_0 = "NO";
    defparam sub_27_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n2119), 
          .COUT(n2120), .S0(d8_62__N_1656[13]), .S1(d8_62__N_1656[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_15.INIT0 = 16'h5999;
    defparam sub_27_add_2_15.INIT1 = 16'h5999;
    defparam sub_27_add_2_15.INJECT1_0 = "NO";
    defparam sub_27_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n2118), 
          .COUT(n2119), .S0(d8_62__N_1656[11]), .S1(d8_62__N_1656[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_13.INIT0 = 16'h5999;
    defparam sub_27_add_2_13.INIT1 = 16'h5999;
    defparam sub_27_add_2_13.INJECT1_0 = "NO";
    defparam sub_27_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n2117), 
          .COUT(n2118), .S0(d8_62__N_1656[9]), .S1(d8_62__N_1656[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_11.INIT0 = 16'h5999;
    defparam sub_27_add_2_11.INIT1 = 16'h5999;
    defparam sub_27_add_2_11.INJECT1_0 = "NO";
    defparam sub_27_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n2116), 
          .COUT(n2117), .S0(d8_62__N_1656[7]), .S1(d8_62__N_1656[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_9.INIT0 = 16'h5999;
    defparam sub_27_add_2_9.INIT1 = 16'h5999;
    defparam sub_27_add_2_9.INJECT1_0 = "NO";
    defparam sub_27_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n2115), 
          .COUT(n2116), .S0(d8_62__N_1656[5]), .S1(d8_62__N_1656[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_7.INIT0 = 16'h5999;
    defparam sub_27_add_2_7.INIT1 = 16'h5999;
    defparam sub_27_add_2_7.INJECT1_0 = "NO";
    defparam sub_27_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n2114), 
          .COUT(n2115), .S0(d8_62__N_1656[3]), .S1(d8_62__N_1656[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_5.INIT0 = 16'h5999;
    defparam sub_27_add_2_5.INIT1 = 16'h5999;
    defparam sub_27_add_2_5.INJECT1_0 = "NO";
    defparam sub_27_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n2113), 
          .COUT(n2114), .S0(d8_62__N_1656[1]), .S1(d8_62__N_1656[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_3.INIT0 = 16'h5999;
    defparam sub_27_add_2_3.INIT1 = 16'h5999;
    defparam sub_27_add_2_3.INJECT1_0 = "NO";
    defparam sub_27_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n2113), 
          .S1(d8_62__N_1656[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_1.INIT0 = 16'h0000;
    defparam sub_27_add_2_1.INIT1 = 16'h5999;
    defparam sub_27_add_2_1.INJECT1_0 = "NO";
    defparam sub_27_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_63 (.A0(d8[61]), .B0(d_d8[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[62]), .B1(d_d8[62]), .C1(GND_net), .D1(GND_net), .CIN(n2111), 
          .S0(d9_62__N_1719[61]), .S1(d9_62__N_1719[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_63.INIT0 = 16'h5999;
    defparam sub_28_add_2_63.INIT1 = 16'h5999;
    defparam sub_28_add_2_63.INJECT1_0 = "NO";
    defparam sub_28_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_61 (.A0(d8[59]), .B0(d_d8[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[60]), .B1(d_d8[60]), .C1(GND_net), .D1(GND_net), .CIN(n2110), 
          .COUT(n2111), .S0(d9_62__N_1719[59]), .S1(d9_62__N_1719[60]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_61.INIT0 = 16'h5999;
    defparam sub_28_add_2_61.INIT1 = 16'h5999;
    defparam sub_28_add_2_61.INJECT1_0 = "NO";
    defparam sub_28_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_59 (.A0(d8[57]), .B0(d_d8[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[58]), .B1(d_d8[58]), .C1(GND_net), .D1(GND_net), .CIN(n2109), 
          .COUT(n2110), .S0(d9_62__N_1719[57]), .S1(d9_62__N_1719[58]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_59.INIT0 = 16'h5999;
    defparam sub_28_add_2_59.INIT1 = 16'h5999;
    defparam sub_28_add_2_59.INJECT1_0 = "NO";
    defparam sub_28_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_57 (.A0(d8[55]), .B0(d_d8[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[56]), .B1(d_d8[56]), .C1(GND_net), .D1(GND_net), .CIN(n2108), 
          .COUT(n2109), .S0(d9_62__N_1719[55]), .S1(d9_62__N_1719[56]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_57.INIT0 = 16'h5999;
    defparam sub_28_add_2_57.INIT1 = 16'h5999;
    defparam sub_28_add_2_57.INJECT1_0 = "NO";
    defparam sub_28_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_55 (.A0(d8[53]), .B0(d_d8[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[54]), .B1(d_d8[54]), .C1(GND_net), .D1(GND_net), .CIN(n2107), 
          .COUT(n2108), .S0(d9_62__N_1719[53]), .S1(d9_62__N_1719[54]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_55.INIT0 = 16'h5999;
    defparam sub_28_add_2_55.INIT1 = 16'h5999;
    defparam sub_28_add_2_55.INJECT1_0 = "NO";
    defparam sub_28_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_53 (.A0(d8[51]), .B0(d_d8[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[52]), .B1(d_d8[52]), .C1(GND_net), .D1(GND_net), .CIN(n2106), 
          .COUT(n2107), .S0(d9_62__N_1719[51]), .S1(d9_62__N_1719[52]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_53.INIT0 = 16'h5999;
    defparam sub_28_add_2_53.INIT1 = 16'h5999;
    defparam sub_28_add_2_53.INJECT1_0 = "NO";
    defparam sub_28_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_51 (.A0(d8[49]), .B0(d_d8[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[50]), .B1(d_d8[50]), .C1(GND_net), .D1(GND_net), .CIN(n2105), 
          .COUT(n2106), .S0(d9_62__N_1719[49]), .S1(d9_62__N_1719[50]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_51.INIT0 = 16'h5999;
    defparam sub_28_add_2_51.INIT1 = 16'h5999;
    defparam sub_28_add_2_51.INJECT1_0 = "NO";
    defparam sub_28_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_49 (.A0(d8[47]), .B0(d_d8[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[48]), .B1(d_d8[48]), .C1(GND_net), .D1(GND_net), .CIN(n2104), 
          .COUT(n2105), .S0(d9_62__N_1719[47]), .S1(d9_62__N_1719[48]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_49.INIT0 = 16'h5999;
    defparam sub_28_add_2_49.INIT1 = 16'h5999;
    defparam sub_28_add_2_49.INJECT1_0 = "NO";
    defparam sub_28_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_47 (.A0(d8[45]), .B0(d_d8[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[46]), .B1(d_d8[46]), .C1(GND_net), .D1(GND_net), .CIN(n2103), 
          .COUT(n2104), .S0(d9_62__N_1719[45]), .S1(d9_62__N_1719[46]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_47.INIT0 = 16'h5999;
    defparam sub_28_add_2_47.INIT1 = 16'h5999;
    defparam sub_28_add_2_47.INJECT1_0 = "NO";
    defparam sub_28_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_45 (.A0(d8[43]), .B0(d_d8[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[44]), .B1(d_d8[44]), .C1(GND_net), .D1(GND_net), .CIN(n2102), 
          .COUT(n2103), .S0(d9_62__N_1719[43]), .S1(d9_62__N_1719[44]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_45.INIT0 = 16'h5999;
    defparam sub_28_add_2_45.INIT1 = 16'h5999;
    defparam sub_28_add_2_45.INJECT1_0 = "NO";
    defparam sub_28_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_43 (.A0(d8[41]), .B0(d_d8[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[42]), .B1(d_d8[42]), .C1(GND_net), .D1(GND_net), .CIN(n2101), 
          .COUT(n2102), .S0(d9_62__N_1719[41]), .S1(d9_62__N_1719[42]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_43.INIT0 = 16'h5999;
    defparam sub_28_add_2_43.INIT1 = 16'h5999;
    defparam sub_28_add_2_43.INJECT1_0 = "NO";
    defparam sub_28_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_41 (.A0(d8[39]), .B0(d_d8[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[40]), .B1(d_d8[40]), .C1(GND_net), .D1(GND_net), .CIN(n2100), 
          .COUT(n2101), .S0(d9_62__N_1719[39]), .S1(d9_62__N_1719[40]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_41.INIT0 = 16'h5999;
    defparam sub_28_add_2_41.INIT1 = 16'h5999;
    defparam sub_28_add_2_41.INJECT1_0 = "NO";
    defparam sub_28_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_39 (.A0(d8[37]), .B0(d_d8[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[38]), .B1(d_d8[38]), .C1(GND_net), .D1(GND_net), .CIN(n2099), 
          .COUT(n2100), .S0(d9_62__N_1719[37]), .S1(d9_62__N_1719[38]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_39.INIT0 = 16'h5999;
    defparam sub_28_add_2_39.INIT1 = 16'h5999;
    defparam sub_28_add_2_39.INJECT1_0 = "NO";
    defparam sub_28_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n2098), 
          .COUT(n2099), .S0(d9_62__N_1719[35]), .S1(d9_62__N_1719[36]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_37.INIT0 = 16'h5999;
    defparam sub_28_add_2_37.INIT1 = 16'h5999;
    defparam sub_28_add_2_37.INJECT1_0 = "NO";
    defparam sub_28_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n2097), 
          .COUT(n2098), .S0(d9_62__N_1719[33]), .S1(d9_62__N_1719[34]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_35.INIT0 = 16'h5999;
    defparam sub_28_add_2_35.INIT1 = 16'h5999;
    defparam sub_28_add_2_35.INJECT1_0 = "NO";
    defparam sub_28_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n2096), 
          .COUT(n2097), .S0(d9_62__N_1719[31]), .S1(d9_62__N_1719[32]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_33.INIT0 = 16'h5999;
    defparam sub_28_add_2_33.INIT1 = 16'h5999;
    defparam sub_28_add_2_33.INJECT1_0 = "NO";
    defparam sub_28_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n2095), 
          .COUT(n2096), .S0(d9_62__N_1719[29]), .S1(d9_62__N_1719[30]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_31.INIT0 = 16'h5999;
    defparam sub_28_add_2_31.INIT1 = 16'h5999;
    defparam sub_28_add_2_31.INJECT1_0 = "NO";
    defparam sub_28_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n2094), 
          .COUT(n2095), .S0(d9_62__N_1719[27]), .S1(d9_62__N_1719[28]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_29.INIT0 = 16'h5999;
    defparam sub_28_add_2_29.INIT1 = 16'h5999;
    defparam sub_28_add_2_29.INJECT1_0 = "NO";
    defparam sub_28_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n2093), 
          .COUT(n2094), .S0(d9_62__N_1719[25]), .S1(d9_62__N_1719[26]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_27.INIT0 = 16'h5999;
    defparam sub_28_add_2_27.INIT1 = 16'h5999;
    defparam sub_28_add_2_27.INJECT1_0 = "NO";
    defparam sub_28_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n2092), 
          .COUT(n2093), .S0(d9_62__N_1719[23]), .S1(d9_62__N_1719[24]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_25.INIT0 = 16'h5999;
    defparam sub_28_add_2_25.INIT1 = 16'h5999;
    defparam sub_28_add_2_25.INJECT1_0 = "NO";
    defparam sub_28_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n2091), 
          .COUT(n2092), .S0(d9_62__N_1719[21]), .S1(d9_62__N_1719[22]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_23.INIT0 = 16'h5999;
    defparam sub_28_add_2_23.INIT1 = 16'h5999;
    defparam sub_28_add_2_23.INJECT1_0 = "NO";
    defparam sub_28_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n2090), 
          .COUT(n2091), .S0(d9_62__N_1719[19]), .S1(d9_62__N_1719[20]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_21.INIT0 = 16'h5999;
    defparam sub_28_add_2_21.INIT1 = 16'h5999;
    defparam sub_28_add_2_21.INJECT1_0 = "NO";
    defparam sub_28_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n2089), 
          .COUT(n2090), .S0(d9_62__N_1719[17]), .S1(d9_62__N_1719[18]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_19.INIT0 = 16'h5999;
    defparam sub_28_add_2_19.INIT1 = 16'h5999;
    defparam sub_28_add_2_19.INJECT1_0 = "NO";
    defparam sub_28_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n2088), 
          .COUT(n2089), .S0(d9_62__N_1719[15]), .S1(d9_62__N_1719[16]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_17.INIT0 = 16'h5999;
    defparam sub_28_add_2_17.INIT1 = 16'h5999;
    defparam sub_28_add_2_17.INJECT1_0 = "NO";
    defparam sub_28_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n2087), 
          .COUT(n2088), .S0(d9_62__N_1719[13]), .S1(d9_62__N_1719[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_15.INIT0 = 16'h5999;
    defparam sub_28_add_2_15.INIT1 = 16'h5999;
    defparam sub_28_add_2_15.INJECT1_0 = "NO";
    defparam sub_28_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n2086), 
          .COUT(n2087), .S0(d9_62__N_1719[11]), .S1(d9_62__N_1719[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_13.INIT0 = 16'h5999;
    defparam sub_28_add_2_13.INIT1 = 16'h5999;
    defparam sub_28_add_2_13.INJECT1_0 = "NO";
    defparam sub_28_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n2085), 
          .COUT(n2086), .S0(d9_62__N_1719[9]), .S1(d9_62__N_1719[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_11.INIT0 = 16'h5999;
    defparam sub_28_add_2_11.INIT1 = 16'h5999;
    defparam sub_28_add_2_11.INJECT1_0 = "NO";
    defparam sub_28_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n2084), 
          .COUT(n2085), .S0(d9_62__N_1719[7]), .S1(d9_62__N_1719[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_9.INIT0 = 16'h5999;
    defparam sub_28_add_2_9.INIT1 = 16'h5999;
    defparam sub_28_add_2_9.INJECT1_0 = "NO";
    defparam sub_28_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n2083), 
          .COUT(n2084), .S0(d9_62__N_1719[5]), .S1(d9_62__N_1719[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_7.INIT0 = 16'h5999;
    defparam sub_28_add_2_7.INIT1 = 16'h5999;
    defparam sub_28_add_2_7.INJECT1_0 = "NO";
    defparam sub_28_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n2082), 
          .COUT(n2083), .S0(d9_62__N_1719[3]), .S1(d9_62__N_1719[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_5.INIT0 = 16'h5999;
    defparam sub_28_add_2_5.INIT1 = 16'h5999;
    defparam sub_28_add_2_5.INJECT1_0 = "NO";
    defparam sub_28_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n2081), 
          .COUT(n2082), .S0(d9_62__N_1719[1]), .S1(d9_62__N_1719[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_3.INIT0 = 16'h5999;
    defparam sub_28_add_2_3.INIT1 = 16'h5999;
    defparam sub_28_add_2_3.INJECT1_0 = "NO";
    defparam sub_28_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n2081), 
          .S1(d9_62__N_1719[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_1.INIT0 = 16'h0000;
    defparam sub_28_add_2_1.INIT1 = 16'h5999;
    defparam sub_28_add_2_1.INJECT1_0 = "NO";
    defparam sub_28_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_63 (.A0(d9[61]), .B0(d_d9[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[62]), .B1(d_d9[62]), .C1(GND_net), .D1(GND_net), .CIN(n2079), 
          .S0(d10_62__N_1782[61]), .S1(d10_62__N_1782[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_63.INIT0 = 16'h5999;
    defparam sub_29_add_2_63.INIT1 = 16'h5999;
    defparam sub_29_add_2_63.INJECT1_0 = "NO";
    defparam sub_29_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_61 (.A0(d9[59]), .B0(d_d9[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[60]), .B1(d_d9[60]), .C1(GND_net), .D1(GND_net), .CIN(n2078), 
          .COUT(n2079), .S0(d10_62__N_1782[59]), .S1(d10_62__N_1782[60]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_61.INIT0 = 16'h5999;
    defparam sub_29_add_2_61.INIT1 = 16'h5999;
    defparam sub_29_add_2_61.INJECT1_0 = "NO";
    defparam sub_29_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_59 (.A0(d9[57]), .B0(d_d9[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[58]), .B1(d_d9[58]), .C1(GND_net), .D1(GND_net), .CIN(n2077), 
          .COUT(n2078), .S0(d10_62__N_1782[57]), .S1(d10_62__N_1782[58]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_59.INIT0 = 16'h5999;
    defparam sub_29_add_2_59.INIT1 = 16'h5999;
    defparam sub_29_add_2_59.INJECT1_0 = "NO";
    defparam sub_29_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_57 (.A0(d9[55]), .B0(d_d9[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[56]), .B1(d_d9[56]), .C1(GND_net), .D1(GND_net), .CIN(n2076), 
          .COUT(n2077), .S0(d10_62__N_1782[55]), .S1(d10_62__N_1782[56]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_57.INIT0 = 16'h5999;
    defparam sub_29_add_2_57.INIT1 = 16'h5999;
    defparam sub_29_add_2_57.INJECT1_0 = "NO";
    defparam sub_29_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_55 (.A0(d9[53]), .B0(d_d9[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[54]), .B1(d_d9[54]), .C1(GND_net), .D1(GND_net), .CIN(n2075), 
          .COUT(n2076));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_55.INIT0 = 16'h5999;
    defparam sub_29_add_2_55.INIT1 = 16'h5999;
    defparam sub_29_add_2_55.INJECT1_0 = "NO";
    defparam sub_29_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_53 (.A0(d9[51]), .B0(d_d9[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[52]), .B1(d_d9[52]), .C1(GND_net), .D1(GND_net), .CIN(n2074), 
          .COUT(n2075));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_53.INIT0 = 16'h5999;
    defparam sub_29_add_2_53.INIT1 = 16'h5999;
    defparam sub_29_add_2_53.INJECT1_0 = "NO";
    defparam sub_29_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_51 (.A0(d9[49]), .B0(d_d9[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[50]), .B1(d_d9[50]), .C1(GND_net), .D1(GND_net), .CIN(n2073), 
          .COUT(n2074));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_51.INIT0 = 16'h5999;
    defparam sub_29_add_2_51.INIT1 = 16'h5999;
    defparam sub_29_add_2_51.INJECT1_0 = "NO";
    defparam sub_29_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_49 (.A0(d9[47]), .B0(d_d9[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[48]), .B1(d_d9[48]), .C1(GND_net), .D1(GND_net), .CIN(n2072), 
          .COUT(n2073));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_49.INIT0 = 16'h5999;
    defparam sub_29_add_2_49.INIT1 = 16'h5999;
    defparam sub_29_add_2_49.INJECT1_0 = "NO";
    defparam sub_29_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_47 (.A0(d9[45]), .B0(d_d9[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[46]), .B1(d_d9[46]), .C1(GND_net), .D1(GND_net), .CIN(n2071), 
          .COUT(n2072));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_47.INIT0 = 16'h5999;
    defparam sub_29_add_2_47.INIT1 = 16'h5999;
    defparam sub_29_add_2_47.INJECT1_0 = "NO";
    defparam sub_29_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_45 (.A0(d9[43]), .B0(d_d9[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[44]), .B1(d_d9[44]), .C1(GND_net), .D1(GND_net), .CIN(n2070), 
          .COUT(n2071));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_45.INIT0 = 16'h5999;
    defparam sub_29_add_2_45.INIT1 = 16'h5999;
    defparam sub_29_add_2_45.INJECT1_0 = "NO";
    defparam sub_29_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_43 (.A0(d9[41]), .B0(d_d9[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[42]), .B1(d_d9[42]), .C1(GND_net), .D1(GND_net), .CIN(n2069), 
          .COUT(n2070));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_43.INIT0 = 16'h5999;
    defparam sub_29_add_2_43.INIT1 = 16'h5999;
    defparam sub_29_add_2_43.INJECT1_0 = "NO";
    defparam sub_29_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_41 (.A0(d9[39]), .B0(d_d9[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[40]), .B1(d_d9[40]), .C1(GND_net), .D1(GND_net), .CIN(n2068), 
          .COUT(n2069));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_41.INIT0 = 16'h5999;
    defparam sub_29_add_2_41.INIT1 = 16'h5999;
    defparam sub_29_add_2_41.INJECT1_0 = "NO";
    defparam sub_29_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_39 (.A0(d9[37]), .B0(d_d9[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[38]), .B1(d_d9[38]), .C1(GND_net), .D1(GND_net), .CIN(n2067), 
          .COUT(n2068));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_39.INIT0 = 16'h5999;
    defparam sub_29_add_2_39.INIT1 = 16'h5999;
    defparam sub_29_add_2_39.INJECT1_0 = "NO";
    defparam sub_29_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n2066), 
          .COUT(n2067));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_37.INIT0 = 16'h5999;
    defparam sub_29_add_2_37.INIT1 = 16'h5999;
    defparam sub_29_add_2_37.INJECT1_0 = "NO";
    defparam sub_29_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n2065), 
          .COUT(n2066));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_35.INIT0 = 16'h5999;
    defparam sub_29_add_2_35.INIT1 = 16'h5999;
    defparam sub_29_add_2_35.INJECT1_0 = "NO";
    defparam sub_29_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n2064), 
          .COUT(n2065));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_33.INIT0 = 16'h5999;
    defparam sub_29_add_2_33.INIT1 = 16'h5999;
    defparam sub_29_add_2_33.INJECT1_0 = "NO";
    defparam sub_29_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n2063), 
          .COUT(n2064));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_31.INIT0 = 16'h5999;
    defparam sub_29_add_2_31.INIT1 = 16'h5999;
    defparam sub_29_add_2_31.INJECT1_0 = "NO";
    defparam sub_29_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n2062), 
          .COUT(n2063));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_29.INIT0 = 16'h5999;
    defparam sub_29_add_2_29.INIT1 = 16'h5999;
    defparam sub_29_add_2_29.INJECT1_0 = "NO";
    defparam sub_29_add_2_29.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_50 (.A0(CIC1_out[7]), .B0(d1[48]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[49]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1905), .COUT(n1906), .S0(d1_62__N_615[48]), 
          .S1(d1_62__N_615[49]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_50.INIT0 = 16'h5666;
    defparam d_in_7__I_0_50.INIT1 = 16'h5666;
    defparam d_in_7__I_0_50.INJECT1_0 = "NO";
    defparam d_in_7__I_0_50.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n2061), 
          .COUT(n2062));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_27.INIT0 = 16'h5999;
    defparam sub_29_add_2_27.INIT1 = 16'h5999;
    defparam sub_29_add_2_27.INJECT1_0 = "NO";
    defparam sub_29_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n2060), 
          .COUT(n2061));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_25.INIT0 = 16'h5999;
    defparam sub_29_add_2_25.INIT1 = 16'h5999;
    defparam sub_29_add_2_25.INJECT1_0 = "NO";
    defparam sub_29_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n2059), 
          .COUT(n2060));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_23.INIT0 = 16'h5999;
    defparam sub_29_add_2_23.INIT1 = 16'h5999;
    defparam sub_29_add_2_23.INJECT1_0 = "NO";
    defparam sub_29_add_2_23.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n1960), 
          .COUT(n1961), .S0(d3_62__N_741[30]), .S1(d3_62__N_741[31]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_32.INIT0 = 16'h5666;
    defparam d2_62__I_0_32.INIT1 = 16'h5666;
    defparam d2_62__I_0_32.INJECT1_0 = "NO";
    defparam d2_62__I_0_32.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n2058), 
          .COUT(n2059));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_21.INIT0 = 16'h5999;
    defparam sub_29_add_2_21.INIT1 = 16'h5999;
    defparam sub_29_add_2_21.INJECT1_0 = "NO";
    defparam sub_29_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n2057), 
          .COUT(n2058));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_19.INIT0 = 16'h5999;
    defparam sub_29_add_2_19.INIT1 = 16'h5999;
    defparam sub_29_add_2_19.INJECT1_0 = "NO";
    defparam sub_29_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n2056), 
          .COUT(n2057));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_17.INIT0 = 16'h5999;
    defparam sub_29_add_2_17.INIT1 = 16'h5999;
    defparam sub_29_add_2_17.INJECT1_0 = "NO";
    defparam sub_29_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n2055), 
          .COUT(n2056));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_15.INIT0 = 16'h5999;
    defparam sub_29_add_2_15.INIT1 = 16'h5999;
    defparam sub_29_add_2_15.INJECT1_0 = "NO";
    defparam sub_29_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n2054), 
          .COUT(n2055));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_13.INIT0 = 16'h5999;
    defparam sub_29_add_2_13.INIT1 = 16'h5999;
    defparam sub_29_add_2_13.INJECT1_0 = "NO";
    defparam sub_29_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n2053), 
          .COUT(n2054));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_11.INIT0 = 16'h5999;
    defparam sub_29_add_2_11.INIT1 = 16'h5999;
    defparam sub_29_add_2_11.INJECT1_0 = "NO";
    defparam sub_29_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n2052), 
          .COUT(n2053));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_9.INIT0 = 16'h5999;
    defparam sub_29_add_2_9.INIT1 = 16'h5999;
    defparam sub_29_add_2_9.INJECT1_0 = "NO";
    defparam sub_29_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n2051), 
          .COUT(n2052));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_7.INIT0 = 16'h5999;
    defparam sub_29_add_2_7.INIT1 = 16'h5999;
    defparam sub_29_add_2_7.INJECT1_0 = "NO";
    defparam sub_29_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n2050), 
          .COUT(n2051));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_5.INIT0 = 16'h5999;
    defparam sub_29_add_2_5.INIT1 = 16'h5999;
    defparam sub_29_add_2_5.INJECT1_0 = "NO";
    defparam sub_29_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n2049), 
          .COUT(n2050));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_3.INIT0 = 16'h5999;
    defparam sub_29_add_2_3.INIT1 = 16'h5999;
    defparam sub_29_add_2_3.INJECT1_0 = "NO";
    defparam sub_29_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n2049));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_1.INIT0 = 16'h0000;
    defparam sub_29_add_2_1.INIT1 = 16'h5999;
    defparam sub_29_add_2_1.INJECT1_0 = "NO";
    defparam sub_29_add_2_1.INJECT1_1 = "NO";
    CCU2D add_10_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2048), 
          .S0(n330[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_17.INIT0 = 16'h5aaa;
    defparam add_10_17.INIT1 = 16'h0000;
    defparam add_10_17.INJECT1_0 = "NO";
    defparam add_10_17.INJECT1_1 = "NO";
    CCU2D add_10_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2047), .COUT(n2048), .S0(n330[13]), .S1(n330[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_15.INIT0 = 16'h5aaa;
    defparam add_10_15.INIT1 = 16'h5aaa;
    defparam add_10_15.INJECT1_0 = "NO";
    defparam add_10_15.INJECT1_1 = "NO";
    CCU2D add_10_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2046), .COUT(n2047), .S0(n330[11]), .S1(n330[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_13.INIT0 = 16'h5aaa;
    defparam add_10_13.INIT1 = 16'h5aaa;
    defparam add_10_13.INJECT1_0 = "NO";
    defparam add_10_13.INJECT1_1 = "NO";
    CCU2D add_10_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2045), .COUT(n2046), .S0(n330[9]), .S1(n330[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_11.INIT0 = 16'h5aaa;
    defparam add_10_11.INIT1 = 16'h5aaa;
    defparam add_10_11.INJECT1_0 = "NO";
    defparam add_10_11.INJECT1_1 = "NO";
    CCU2D add_10_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2044), 
          .COUT(n2045), .S0(n330[7]), .S1(n330[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_9.INIT0 = 16'h5aaa;
    defparam add_10_9.INIT1 = 16'h5aaa;
    defparam add_10_9.INJECT1_0 = "NO";
    defparam add_10_9.INJECT1_1 = "NO";
    CCU2D add_10_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2043), 
          .COUT(n2044), .S0(n330[5]), .S1(n330[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_7.INIT0 = 16'h5aaa;
    defparam add_10_7.INIT1 = 16'h5aaa;
    defparam add_10_7.INJECT1_0 = "NO";
    defparam add_10_7.INJECT1_1 = "NO";
    CCU2D add_10_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2042), 
          .COUT(n2043), .S0(n330[3]), .S1(n330[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    CCU2D add_10_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2041), 
          .COUT(n2042), .S0(n330[1]), .S1(n330[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2041), 
          .S1(n330[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_64 (.A0(d4[62]), .B0(d5[62]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2040), 
          .S0(d5_62__N_867[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_64.INIT0 = 16'h5666;
    defparam d4_62__I_0_64.INIT1 = 16'h0000;
    defparam d4_62__I_0_64.INJECT1_0 = "NO";
    defparam d4_62__I_0_64.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_62 (.A0(d4[60]), .B0(d5[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[61]), .B1(d5[61]), .C1(GND_net), .D1(GND_net), .CIN(n2039), 
          .COUT(n2040), .S0(d5_62__N_867[60]), .S1(d5_62__N_867[61]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_62.INIT0 = 16'h5666;
    defparam d4_62__I_0_62.INIT1 = 16'h5666;
    defparam d4_62__I_0_62.INJECT1_0 = "NO";
    defparam d4_62__I_0_62.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_60 (.A0(d4[58]), .B0(d5[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[59]), .B1(d5[59]), .C1(GND_net), .D1(GND_net), .CIN(n2038), 
          .COUT(n2039), .S0(d5_62__N_867[58]), .S1(d5_62__N_867[59]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_60.INIT0 = 16'h5666;
    defparam d4_62__I_0_60.INIT1 = 16'h5666;
    defparam d4_62__I_0_60.INJECT1_0 = "NO";
    defparam d4_62__I_0_60.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_58 (.A0(d4[56]), .B0(d5[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[57]), .B1(d5[57]), .C1(GND_net), .D1(GND_net), .CIN(n2037), 
          .COUT(n2038), .S0(d5_62__N_867[56]), .S1(d5_62__N_867[57]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_58.INIT0 = 16'h5666;
    defparam d4_62__I_0_58.INIT1 = 16'h5666;
    defparam d4_62__I_0_58.INJECT1_0 = "NO";
    defparam d4_62__I_0_58.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_56 (.A0(d4[54]), .B0(d5[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[55]), .B1(d5[55]), .C1(GND_net), .D1(GND_net), .CIN(n2036), 
          .COUT(n2037), .S0(d5_62__N_867[54]), .S1(d5_62__N_867[55]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_56.INIT0 = 16'h5666;
    defparam d4_62__I_0_56.INIT1 = 16'h5666;
    defparam d4_62__I_0_56.INJECT1_0 = "NO";
    defparam d4_62__I_0_56.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_54 (.A0(d4[52]), .B0(d5[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[53]), .B1(d5[53]), .C1(GND_net), .D1(GND_net), .CIN(n2035), 
          .COUT(n2036), .S0(d5_62__N_867[52]), .S1(d5_62__N_867[53]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_54.INIT0 = 16'h5666;
    defparam d4_62__I_0_54.INIT1 = 16'h5666;
    defparam d4_62__I_0_54.INJECT1_0 = "NO";
    defparam d4_62__I_0_54.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_52 (.A0(d4[50]), .B0(d5[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[51]), .B1(d5[51]), .C1(GND_net), .D1(GND_net), .CIN(n2034), 
          .COUT(n2035), .S0(d5_62__N_867[50]), .S1(d5_62__N_867[51]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_52.INIT0 = 16'h5666;
    defparam d4_62__I_0_52.INIT1 = 16'h5666;
    defparam d4_62__I_0_52.INJECT1_0 = "NO";
    defparam d4_62__I_0_52.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_50 (.A0(d4[48]), .B0(d5[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[49]), .B1(d5[49]), .C1(GND_net), .D1(GND_net), .CIN(n2033), 
          .COUT(n2034), .S0(d5_62__N_867[48]), .S1(d5_62__N_867[49]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_50.INIT0 = 16'h5666;
    defparam d4_62__I_0_50.INIT1 = 16'h5666;
    defparam d4_62__I_0_50.INJECT1_0 = "NO";
    defparam d4_62__I_0_50.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_48 (.A0(d4[46]), .B0(d5[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[47]), .B1(d5[47]), .C1(GND_net), .D1(GND_net), .CIN(n2032), 
          .COUT(n2033), .S0(d5_62__N_867[46]), .S1(d5_62__N_867[47]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_48.INIT0 = 16'h5666;
    defparam d4_62__I_0_48.INIT1 = 16'h5666;
    defparam d4_62__I_0_48.INJECT1_0 = "NO";
    defparam d4_62__I_0_48.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_46 (.A0(d4[44]), .B0(d5[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[45]), .B1(d5[45]), .C1(GND_net), .D1(GND_net), .CIN(n2031), 
          .COUT(n2032), .S0(d5_62__N_867[44]), .S1(d5_62__N_867[45]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_46.INIT0 = 16'h5666;
    defparam d4_62__I_0_46.INIT1 = 16'h5666;
    defparam d4_62__I_0_46.INJECT1_0 = "NO";
    defparam d4_62__I_0_46.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_44 (.A0(d4[42]), .B0(d5[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[43]), .B1(d5[43]), .C1(GND_net), .D1(GND_net), .CIN(n2030), 
          .COUT(n2031), .S0(d5_62__N_867[42]), .S1(d5_62__N_867[43]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_44.INIT0 = 16'h5666;
    defparam d4_62__I_0_44.INIT1 = 16'h5666;
    defparam d4_62__I_0_44.INJECT1_0 = "NO";
    defparam d4_62__I_0_44.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_42 (.A0(d4[40]), .B0(d5[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[41]), .B1(d5[41]), .C1(GND_net), .D1(GND_net), .CIN(n2029), 
          .COUT(n2030), .S0(d5_62__N_867[40]), .S1(d5_62__N_867[41]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_42.INIT0 = 16'h5666;
    defparam d4_62__I_0_42.INIT1 = 16'h5666;
    defparam d4_62__I_0_42.INJECT1_0 = "NO";
    defparam d4_62__I_0_42.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_40 (.A0(d4[38]), .B0(d5[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[39]), .B1(d5[39]), .C1(GND_net), .D1(GND_net), .CIN(n2028), 
          .COUT(n2029), .S0(d5_62__N_867[38]), .S1(d5_62__N_867[39]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_40.INIT0 = 16'h5666;
    defparam d4_62__I_0_40.INIT1 = 16'h5666;
    defparam d4_62__I_0_40.INJECT1_0 = "NO";
    defparam d4_62__I_0_40.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[37]), .B1(d5[37]), .C1(GND_net), .D1(GND_net), .CIN(n2027), 
          .COUT(n2028), .S0(d5_62__N_867[36]), .S1(d5_62__N_867[37]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_38.INIT0 = 16'h5666;
    defparam d4_62__I_0_38.INIT1 = 16'h5666;
    defparam d4_62__I_0_38.INJECT1_0 = "NO";
    defparam d4_62__I_0_38.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n2026), 
          .COUT(n2027), .S0(d5_62__N_867[34]), .S1(d5_62__N_867[35]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_36.INIT0 = 16'h5666;
    defparam d4_62__I_0_36.INIT1 = 16'h5666;
    defparam d4_62__I_0_36.INJECT1_0 = "NO";
    defparam d4_62__I_0_36.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n2025), 
          .COUT(n2026), .S0(d5_62__N_867[32]), .S1(d5_62__N_867[33]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_34.INIT0 = 16'h5666;
    defparam d4_62__I_0_34.INIT1 = 16'h5666;
    defparam d4_62__I_0_34.INJECT1_0 = "NO";
    defparam d4_62__I_0_34.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n2024), 
          .COUT(n2025), .S0(d5_62__N_867[30]), .S1(d5_62__N_867[31]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_32.INIT0 = 16'h5666;
    defparam d4_62__I_0_32.INIT1 = 16'h5666;
    defparam d4_62__I_0_32.INJECT1_0 = "NO";
    defparam d4_62__I_0_32.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n2023), 
          .COUT(n2024), .S0(d5_62__N_867[28]), .S1(d5_62__N_867[29]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_30.INIT0 = 16'h5666;
    defparam d4_62__I_0_30.INIT1 = 16'h5666;
    defparam d4_62__I_0_30.INJECT1_0 = "NO";
    defparam d4_62__I_0_30.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n2022), 
          .COUT(n2023), .S0(d5_62__N_867[26]), .S1(d5_62__N_867[27]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_28.INIT0 = 16'h5666;
    defparam d4_62__I_0_28.INIT1 = 16'h5666;
    defparam d4_62__I_0_28.INJECT1_0 = "NO";
    defparam d4_62__I_0_28.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n2021), 
          .COUT(n2022), .S0(d5_62__N_867[24]), .S1(d5_62__N_867[25]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_26.INIT0 = 16'h5666;
    defparam d4_62__I_0_26.INIT1 = 16'h5666;
    defparam d4_62__I_0_26.INJECT1_0 = "NO";
    defparam d4_62__I_0_26.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n2020), 
          .COUT(n2021), .S0(d5_62__N_867[22]), .S1(d5_62__N_867[23]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_24.INIT0 = 16'h5666;
    defparam d4_62__I_0_24.INIT1 = 16'h5666;
    defparam d4_62__I_0_24.INJECT1_0 = "NO";
    defparam d4_62__I_0_24.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n2019), 
          .COUT(n2020), .S0(d5_62__N_867[20]), .S1(d5_62__N_867[21]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_22.INIT0 = 16'h5666;
    defparam d4_62__I_0_22.INIT1 = 16'h5666;
    defparam d4_62__I_0_22.INJECT1_0 = "NO";
    defparam d4_62__I_0_22.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n2018), 
          .COUT(n2019), .S0(d5_62__N_867[18]), .S1(d5_62__N_867[19]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_20.INIT0 = 16'h5666;
    defparam d4_62__I_0_20.INIT1 = 16'h5666;
    defparam d4_62__I_0_20.INJECT1_0 = "NO";
    defparam d4_62__I_0_20.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n2017), 
          .COUT(n2018), .S0(d5_62__N_867[16]), .S1(d5_62__N_867[17]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_18.INIT0 = 16'h5666;
    defparam d4_62__I_0_18.INIT1 = 16'h5666;
    defparam d4_62__I_0_18.INJECT1_0 = "NO";
    defparam d4_62__I_0_18.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n2016), 
          .COUT(n2017), .S0(d5_62__N_867[14]), .S1(d5_62__N_867[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_16.INIT0 = 16'h5666;
    defparam d4_62__I_0_16.INIT1 = 16'h5666;
    defparam d4_62__I_0_16.INJECT1_0 = "NO";
    defparam d4_62__I_0_16.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n2015), 
          .COUT(n2016), .S0(d5_62__N_867[12]), .S1(d5_62__N_867[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_14.INIT0 = 16'h5666;
    defparam d4_62__I_0_14.INIT1 = 16'h5666;
    defparam d4_62__I_0_14.INJECT1_0 = "NO";
    defparam d4_62__I_0_14.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_54 (.A0(d3[52]), .B0(d4[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[53]), .B1(d4[53]), .C1(GND_net), .D1(GND_net), .CIN(n2003), 
          .COUT(n2004), .S0(d4_62__N_804[52]), .S1(d4_62__N_804[53]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_54.INIT0 = 16'h5666;
    defparam d3_62__I_0_54.INIT1 = 16'h5666;
    defparam d3_62__I_0_54.INJECT1_0 = "NO";
    defparam d3_62__I_0_54.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n1959), 
          .COUT(n1960), .S0(d3_62__N_741[28]), .S1(d3_62__N_741[29]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_30.INIT0 = 16'h5666;
    defparam d2_62__I_0_30.INIT1 = 16'h5666;
    defparam d2_62__I_0_30.INJECT1_0 = "NO";
    defparam d2_62__I_0_30.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n1958), 
          .COUT(n1959), .S0(d3_62__N_741[26]), .S1(d3_62__N_741[27]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_28.INIT0 = 16'h5666;
    defparam d2_62__I_0_28.INIT1 = 16'h5666;
    defparam d2_62__I_0_28.INJECT1_0 = "NO";
    defparam d2_62__I_0_28.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n1957), 
          .COUT(n1958), .S0(d3_62__N_741[24]), .S1(d3_62__N_741[25]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_26.INIT0 = 16'h5666;
    defparam d2_62__I_0_26.INIT1 = 16'h5666;
    defparam d2_62__I_0_26.INJECT1_0 = "NO";
    defparam d2_62__I_0_26.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n1956), 
          .COUT(n1957), .S0(d3_62__N_741[22]), .S1(d3_62__N_741[23]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_24.INIT0 = 16'h5666;
    defparam d2_62__I_0_24.INIT1 = 16'h5666;
    defparam d2_62__I_0_24.INJECT1_0 = "NO";
    defparam d2_62__I_0_24.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n1955), 
          .COUT(n1956), .S0(d3_62__N_741[20]), .S1(d3_62__N_741[21]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_22.INIT0 = 16'h5666;
    defparam d2_62__I_0_22.INIT1 = 16'h5666;
    defparam d2_62__I_0_22.INJECT1_0 = "NO";
    defparam d2_62__I_0_22.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_20 (.A0(CIC1_out[7]), .B0(d1[18]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1890), .COUT(n1891), .S0(d1_62__N_615[18]), 
          .S1(d1_62__N_615[19]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_20.INIT0 = 16'h5666;
    defparam d_in_7__I_0_20.INIT1 = 16'h5666;
    defparam d_in_7__I_0_20.INJECT1_0 = "NO";
    defparam d_in_7__I_0_20.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_48 (.A0(CIC1_out[7]), .B0(d1[46]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[47]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1904), .COUT(n1905), .S0(d1_62__N_615[46]), 
          .S1(d1_62__N_615[47]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_48.INIT0 = 16'h5666;
    defparam d_in_7__I_0_48.INIT1 = 16'h5666;
    defparam d_in_7__I_0_48.INJECT1_0 = "NO";
    defparam d_in_7__I_0_48.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1828), .COUT(n1829), .S0(d6_62__N_1530[11]), 
          .S1(d6_62__N_1530[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_13.INIT0 = 16'h5999;
    defparam sub_25_add_2_13.INIT1 = 16'h5999;
    defparam sub_25_add_2_13.INJECT1_0 = "NO";
    defparam sub_25_add_2_13.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_46 (.A0(CIC1_out[7]), .B0(d1[44]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[45]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1903), .COUT(n1904), .S0(d1_62__N_615[44]), 
          .S1(d1_62__N_615[45]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_46.INIT0 = 16'h5666;
    defparam d_in_7__I_0_46.INIT1 = 16'h5666;
    defparam d_in_7__I_0_46.INJECT1_0 = "NO";
    defparam d_in_7__I_0_46.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_41 (.A0(d_tmp[39]), .B0(d_d_tmp[39]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[40]), .B1(d_d_tmp[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1842), .COUT(n1843), .S0(d6_62__N_1530[39]), 
          .S1(d6_62__N_1530[40]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_41.INIT0 = 16'h5999;
    defparam sub_25_add_2_41.INIT1 = 16'h5999;
    defparam sub_25_add_2_41.INJECT1_0 = "NO";
    defparam sub_25_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1827), .COUT(n1828), .S0(d6_62__N_1530[9]), 
          .S1(d6_62__N_1530[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_11.INIT0 = 16'h5999;
    defparam sub_25_add_2_11.INIT1 = 16'h5999;
    defparam sub_25_add_2_11.INJECT1_0 = "NO";
    defparam sub_25_add_2_11.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_18 (.A0(CIC1_out[7]), .B0(d1[16]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[17]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1889), .COUT(n1890), .S0(d1_62__N_615[16]), 
          .S1(d1_62__N_615[17]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_18.INIT0 = 16'h5666;
    defparam d_in_7__I_0_18.INIT1 = 16'h5666;
    defparam d_in_7__I_0_18.INJECT1_0 = "NO";
    defparam d_in_7__I_0_18.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n1954), 
          .COUT(n1955), .S0(d3_62__N_741[18]), .S1(d3_62__N_741[19]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_20.INIT0 = 16'h5666;
    defparam d2_62__I_0_20.INIT1 = 16'h5666;
    defparam d2_62__I_0_20.INJECT1_0 = "NO";
    defparam d2_62__I_0_20.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n1953), 
          .COUT(n1954), .S0(d3_62__N_741[16]), .S1(d3_62__N_741[17]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_18.INIT0 = 16'h5666;
    defparam d2_62__I_0_18.INIT1 = 16'h5666;
    defparam d2_62__I_0_18.INJECT1_0 = "NO";
    defparam d2_62__I_0_18.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n1952), 
          .COUT(n1953), .S0(d3_62__N_741[14]), .S1(d3_62__N_741[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_16.INIT0 = 16'h5666;
    defparam d2_62__I_0_16.INIT1 = 16'h5666;
    defparam d2_62__I_0_16.INJECT1_0 = "NO";
    defparam d2_62__I_0_16.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n1951), 
          .COUT(n1952), .S0(d3_62__N_741[12]), .S1(d3_62__N_741[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_14.INIT0 = 16'h5666;
    defparam d2_62__I_0_14.INIT1 = 16'h5666;
    defparam d2_62__I_0_14.INJECT1_0 = "NO";
    defparam d2_62__I_0_14.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n1950), 
          .COUT(n1951), .S0(d3_62__N_741[10]), .S1(d3_62__N_741[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_12.INIT0 = 16'h5666;
    defparam d2_62__I_0_12.INIT1 = 16'h5666;
    defparam d2_62__I_0_12.INJECT1_0 = "NO";
    defparam d2_62__I_0_12.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_16 (.A0(CIC1_out[7]), .B0(d1[14]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1888), .COUT(n1889), .S0(d1_62__N_615[14]), 
          .S1(d1_62__N_615[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_16.INIT0 = 16'h5666;
    defparam d_in_7__I_0_16.INIT1 = 16'h5666;
    defparam d_in_7__I_0_16.INJECT1_0 = "NO";
    defparam d_in_7__I_0_16.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_44 (.A0(CIC1_out[7]), .B0(d1[42]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[43]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1902), .COUT(n1903), .S0(d1_62__N_615[42]), 
          .S1(d1_62__N_615[43]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_44.INIT0 = 16'h5666;
    defparam d_in_7__I_0_44.INIT1 = 16'h5666;
    defparam d_in_7__I_0_44.INJECT1_0 = "NO";
    defparam d_in_7__I_0_44.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_14 (.A0(CIC1_out[7]), .B0(d1[12]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1887), .COUT(n1888), .S0(d1_62__N_615[12]), 
          .S1(d1_62__N_615[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_14.INIT0 = 16'h5666;
    defparam d_in_7__I_0_14.INIT1 = 16'h5666;
    defparam d_in_7__I_0_14.INJECT1_0 = "NO";
    defparam d_in_7__I_0_14.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1826), .COUT(n1827), .S0(d6_62__N_1530[7]), 
          .S1(d6_62__N_1530[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_9.INIT0 = 16'h5999;
    defparam sub_25_add_2_9.INIT1 = 16'h5999;
    defparam sub_25_add_2_9.INJECT1_0 = "NO";
    defparam sub_25_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1825), .COUT(n1826), .S0(d6_62__N_1530[5]), 
          .S1(d6_62__N_1530[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_7.INIT0 = 16'h5999;
    defparam sub_25_add_2_7.INIT1 = 16'h5999;
    defparam sub_25_add_2_7.INJECT1_0 = "NO";
    defparam sub_25_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1833), .COUT(n1834), .S0(d6_62__N_1530[21]), 
          .S1(d6_62__N_1530[22]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_23.INIT0 = 16'h5999;
    defparam sub_25_add_2_23.INIT1 = 16'h5999;
    defparam sub_25_add_2_23.INJECT1_0 = "NO";
    defparam sub_25_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1832), .COUT(n1833), .S0(d6_62__N_1530[19]), 
          .S1(d6_62__N_1530[20]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_21.INIT0 = 16'h5999;
    defparam sub_25_add_2_21.INIT1 = 16'h5999;
    defparam sub_25_add_2_21.INJECT1_0 = "NO";
    defparam sub_25_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1831), .COUT(n1832), .S0(d6_62__N_1530[17]), 
          .S1(d6_62__N_1530[18]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_19.INIT0 = 16'h5999;
    defparam sub_25_add_2_19.INIT1 = 16'h5999;
    defparam sub_25_add_2_19.INJECT1_0 = "NO";
    defparam sub_25_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1830), .COUT(n1831), .S0(d6_62__N_1530[15]), 
          .S1(d6_62__N_1530[16]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_17.INIT0 = 16'h5999;
    defparam sub_25_add_2_17.INIT1 = 16'h5999;
    defparam sub_25_add_2_17.INJECT1_0 = "NO";
    defparam sub_25_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1835), .COUT(n1836), .S0(d6_62__N_1530[25]), 
          .S1(d6_62__N_1530[26]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_27.INIT0 = 16'h5999;
    defparam sub_25_add_2_27.INIT1 = 16'h5999;
    defparam sub_25_add_2_27.INJECT1_0 = "NO";
    defparam sub_25_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1834), .COUT(n1835), .S0(d6_62__N_1530[23]), 
          .S1(d6_62__N_1530[24]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_25.INIT0 = 16'h5999;
    defparam sub_25_add_2_25.INIT1 = 16'h5999;
    defparam sub_25_add_2_25.INJECT1_0 = "NO";
    defparam sub_25_add_2_25.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_42 (.A0(CIC1_out[7]), .B0(d1[40]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[41]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1901), .COUT(n1902), .S0(d1_62__N_615[40]), 
          .S1(d1_62__N_615[41]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_42.INIT0 = 16'h5666;
    defparam d_in_7__I_0_42.INIT1 = 16'h5666;
    defparam d_in_7__I_0_42.INJECT1_0 = "NO";
    defparam d_in_7__I_0_42.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_40 (.A0(CIC1_out[7]), .B0(d1[38]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[39]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1900), .COUT(n1901), .S0(d1_62__N_615[38]), 
          .S1(d1_62__N_615[39]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_40.INIT0 = 16'h5666;
    defparam d_in_7__I_0_40.INIT1 = 16'h5666;
    defparam d_in_7__I_0_40.INJECT1_0 = "NO";
    defparam d_in_7__I_0_40.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_56 (.A0(d3[54]), .B0(d4[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[55]), .B1(d4[55]), .C1(GND_net), .D1(GND_net), .CIN(n2004), 
          .COUT(n2005), .S0(d4_62__N_804[54]), .S1(d4_62__N_804[55]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_56.INIT0 = 16'h5666;
    defparam d3_62__I_0_56.INIT1 = 16'h5666;
    defparam d3_62__I_0_56.INJECT1_0 = "NO";
    defparam d3_62__I_0_56.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_58 (.A0(d3[56]), .B0(d4[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[57]), .B1(d4[57]), .C1(GND_net), .D1(GND_net), .CIN(n2005), 
          .COUT(n2006), .S0(d4_62__N_804[56]), .S1(d4_62__N_804[57]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_58.INIT0 = 16'h5666;
    defparam d3_62__I_0_58.INIT1 = 16'h5666;
    defparam d3_62__I_0_58.INJECT1_0 = "NO";
    defparam d3_62__I_0_58.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n1949), 
          .COUT(n1950), .S0(d3_62__N_741[8]), .S1(d3_62__N_741[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_10.INIT0 = 16'h5666;
    defparam d2_62__I_0_10.INIT1 = 16'h5666;
    defparam d2_62__I_0_10.INJECT1_0 = "NO";
    defparam d2_62__I_0_10.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n1948), 
          .COUT(n1949), .S0(d3_62__N_741[6]), .S1(d3_62__N_741[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_8.INIT0 = 16'h5666;
    defparam d2_62__I_0_8.INIT1 = 16'h5666;
    defparam d2_62__I_0_8.INJECT1_0 = "NO";
    defparam d2_62__I_0_8.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n1947), 
          .COUT(n1948), .S0(d3_62__N_741[4]), .S1(d3_62__N_741[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_6.INIT0 = 16'h5666;
    defparam d2_62__I_0_6.INIT1 = 16'h5666;
    defparam d2_62__I_0_6.INJECT1_0 = "NO";
    defparam d2_62__I_0_6.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n1946), 
          .COUT(n1947), .S0(d3_62__N_741[2]), .S1(d3_62__N_741[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_4.INIT0 = 16'h5666;
    defparam d2_62__I_0_4.INIT1 = 16'h5666;
    defparam d2_62__I_0_4.INJECT1_0 = "NO";
    defparam d2_62__I_0_4.INJECT1_1 = "NO";
    CCU2D d2_62__I_0_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n1946), 
          .S1(d3_62__N_741[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d2_62__I_0_2.INIT0 = 16'h7000;
    defparam d2_62__I_0_2.INIT1 = 16'h5666;
    defparam d2_62__I_0_2.INJECT1_0 = "NO";
    defparam d2_62__I_0_2.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_63 (.A0(d_tmp[61]), .B0(d_d_tmp[61]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[62]), .B1(d_d_tmp[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1853), .S0(d6_62__N_1530[61]), .S1(d6_62__N_1530[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_63.INIT0 = 16'h5999;
    defparam sub_25_add_2_63.INIT1 = 16'h5999;
    defparam sub_25_add_2_63.INJECT1_0 = "NO";
    defparam sub_25_add_2_63.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_64 (.A0(d1[62]), .B0(d2[62]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1944), 
          .S0(d2_62__N_678[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_64.INIT0 = 16'h5666;
    defparam d1_62__I_0_64.INIT1 = 16'h0000;
    defparam d1_62__I_0_64.INJECT1_0 = "NO";
    defparam d1_62__I_0_64.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_62 (.A0(d1[60]), .B0(d2[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[61]), .B1(d2[61]), .C1(GND_net), .D1(GND_net), .CIN(n1943), 
          .COUT(n1944), .S0(d2_62__N_678[60]), .S1(d2_62__N_678[61]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_62.INIT0 = 16'h5666;
    defparam d1_62__I_0_62.INIT1 = 16'h5666;
    defparam d1_62__I_0_62.INJECT1_0 = "NO";
    defparam d1_62__I_0_62.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_60 (.A0(d1[58]), .B0(d2[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[59]), .B1(d2[59]), .C1(GND_net), .D1(GND_net), .CIN(n1942), 
          .COUT(n1943), .S0(d2_62__N_678[58]), .S1(d2_62__N_678[59]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_60.INIT0 = 16'h5666;
    defparam d1_62__I_0_60.INIT1 = 16'h5666;
    defparam d1_62__I_0_60.INJECT1_0 = "NO";
    defparam d1_62__I_0_60.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_58 (.A0(d1[56]), .B0(d2[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[57]), .B1(d2[57]), .C1(GND_net), .D1(GND_net), .CIN(n1941), 
          .COUT(n1942), .S0(d2_62__N_678[56]), .S1(d2_62__N_678[57]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_58.INIT0 = 16'h5666;
    defparam d1_62__I_0_58.INIT1 = 16'h5666;
    defparam d1_62__I_0_58.INJECT1_0 = "NO";
    defparam d1_62__I_0_58.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_56 (.A0(d1[54]), .B0(d2[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[55]), .B1(d2[55]), .C1(GND_net), .D1(GND_net), .CIN(n1940), 
          .COUT(n1941), .S0(d2_62__N_678[54]), .S1(d2_62__N_678[55]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_56.INIT0 = 16'h5666;
    defparam d1_62__I_0_56.INIT1 = 16'h5666;
    defparam d1_62__I_0_56.INJECT1_0 = "NO";
    defparam d1_62__I_0_56.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_54 (.A0(d1[52]), .B0(d2[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[53]), .B1(d2[53]), .C1(GND_net), .D1(GND_net), .CIN(n1939), 
          .COUT(n1940), .S0(d2_62__N_678[52]), .S1(d2_62__N_678[53]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_54.INIT0 = 16'h5666;
    defparam d1_62__I_0_54.INIT1 = 16'h5666;
    defparam d1_62__I_0_54.INJECT1_0 = "NO";
    defparam d1_62__I_0_54.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_52 (.A0(d1[50]), .B0(d2[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[51]), .B1(d2[51]), .C1(GND_net), .D1(GND_net), .CIN(n1938), 
          .COUT(n1939), .S0(d2_62__N_678[50]), .S1(d2_62__N_678[51]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_52.INIT0 = 16'h5666;
    defparam d1_62__I_0_52.INIT1 = 16'h5666;
    defparam d1_62__I_0_52.INJECT1_0 = "NO";
    defparam d1_62__I_0_52.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_50 (.A0(d1[48]), .B0(d2[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[49]), .B1(d2[49]), .C1(GND_net), .D1(GND_net), .CIN(n1937), 
          .COUT(n1938), .S0(d2_62__N_678[48]), .S1(d2_62__N_678[49]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_50.INIT0 = 16'h5666;
    defparam d1_62__I_0_50.INIT1 = 16'h5666;
    defparam d1_62__I_0_50.INJECT1_0 = "NO";
    defparam d1_62__I_0_50.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_48 (.A0(d1[46]), .B0(d2[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[47]), .B1(d2[47]), .C1(GND_net), .D1(GND_net), .CIN(n1936), 
          .COUT(n1937), .S0(d2_62__N_678[46]), .S1(d2_62__N_678[47]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_48.INIT0 = 16'h5666;
    defparam d1_62__I_0_48.INIT1 = 16'h5666;
    defparam d1_62__I_0_48.INJECT1_0 = "NO";
    defparam d1_62__I_0_48.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_46 (.A0(d1[44]), .B0(d2[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[45]), .B1(d2[45]), .C1(GND_net), .D1(GND_net), .CIN(n1935), 
          .COUT(n1936), .S0(d2_62__N_678[44]), .S1(d2_62__N_678[45]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_46.INIT0 = 16'h5666;
    defparam d1_62__I_0_46.INIT1 = 16'h5666;
    defparam d1_62__I_0_46.INJECT1_0 = "NO";
    defparam d1_62__I_0_46.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_39 (.A0(d_tmp[37]), .B0(d_d_tmp[37]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[38]), .B1(d_d_tmp[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1841), .COUT(n1842), .S0(d6_62__N_1530[37]), 
          .S1(d6_62__N_1530[38]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_39.INIT0 = 16'h5999;
    defparam sub_25_add_2_39.INIT1 = 16'h5999;
    defparam sub_25_add_2_39.INJECT1_0 = "NO";
    defparam sub_25_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_61 (.A0(d_tmp[59]), .B0(d_d_tmp[59]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[60]), .B1(d_d_tmp[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1852), .COUT(n1853), .S0(d6_62__N_1530[59]), 
          .S1(d6_62__N_1530[60]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_61.INIT0 = 16'h5999;
    defparam sub_25_add_2_61.INIT1 = 16'h5999;
    defparam sub_25_add_2_61.INJECT1_0 = "NO";
    defparam sub_25_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_59 (.A0(d_tmp[57]), .B0(d_d_tmp[57]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[58]), .B1(d_d_tmp[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1851), .COUT(n1852), .S0(d6_62__N_1530[57]), 
          .S1(d6_62__N_1530[58]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_59.INIT0 = 16'h5999;
    defparam sub_25_add_2_59.INIT1 = 16'h5999;
    defparam sub_25_add_2_59.INJECT1_0 = "NO";
    defparam sub_25_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_57 (.A0(d_tmp[55]), .B0(d_d_tmp[55]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[56]), .B1(d_d_tmp[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1850), .COUT(n1851), .S0(d6_62__N_1530[55]), 
          .S1(d6_62__N_1530[56]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_57.INIT0 = 16'h5999;
    defparam sub_25_add_2_57.INIT1 = 16'h5999;
    defparam sub_25_add_2_57.INJECT1_0 = "NO";
    defparam sub_25_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_55 (.A0(d_tmp[53]), .B0(d_d_tmp[53]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[54]), .B1(d_d_tmp[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1849), .COUT(n1850), .S0(d6_62__N_1530[53]), 
          .S1(d6_62__N_1530[54]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_55.INIT0 = 16'h5999;
    defparam sub_25_add_2_55.INIT1 = 16'h5999;
    defparam sub_25_add_2_55.INJECT1_0 = "NO";
    defparam sub_25_add_2_55.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_12 (.A0(CIC1_out[7]), .B0(d1[10]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1886), .COUT(n1887), .S0(d1_62__N_615[10]), 
          .S1(d1_62__N_615[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_12.INIT0 = 16'h5666;
    defparam d_in_7__I_0_12.INIT1 = 16'h5666;
    defparam d_in_7__I_0_12.INJECT1_0 = "NO";
    defparam d_in_7__I_0_12.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_44 (.A0(d1[42]), .B0(d2[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[43]), .B1(d2[43]), .C1(GND_net), .D1(GND_net), .CIN(n1934), 
          .COUT(n1935), .S0(d2_62__N_678[42]), .S1(d2_62__N_678[43]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_44.INIT0 = 16'h5666;
    defparam d1_62__I_0_44.INIT1 = 16'h5666;
    defparam d1_62__I_0_44.INJECT1_0 = "NO";
    defparam d1_62__I_0_44.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1840), .COUT(n1841), .S0(d6_62__N_1530[35]), 
          .S1(d6_62__N_1530[36]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_37.INIT0 = 16'h5999;
    defparam sub_25_add_2_37.INIT1 = 16'h5999;
    defparam sub_25_add_2_37.INJECT1_0 = "NO";
    defparam sub_25_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1839), .COUT(n1840), .S0(d6_62__N_1530[33]), 
          .S1(d6_62__N_1530[34]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_35.INIT0 = 16'h5999;
    defparam sub_25_add_2_35.INIT1 = 16'h5999;
    defparam sub_25_add_2_35.INJECT1_0 = "NO";
    defparam sub_25_add_2_35.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n2013), 
          .COUT(n2014), .S0(d5_62__N_867[8]), .S1(d5_62__N_867[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_10.INIT0 = 16'h5666;
    defparam d4_62__I_0_10.INIT1 = 16'h5666;
    defparam d4_62__I_0_10.INJECT1_0 = "NO";
    defparam d4_62__I_0_10.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n2014), 
          .COUT(n2015), .S0(d5_62__N_867[10]), .S1(d5_62__N_867[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_12.INIT0 = 16'h5666;
    defparam d4_62__I_0_12.INIT1 = 16'h5666;
    defparam d4_62__I_0_12.INJECT1_0 = "NO";
    defparam d4_62__I_0_12.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_42 (.A0(d1[40]), .B0(d2[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[41]), .B1(d2[41]), .C1(GND_net), .D1(GND_net), .CIN(n1933), 
          .COUT(n1934), .S0(d2_62__N_678[40]), .S1(d2_62__N_678[41]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_42.INIT0 = 16'h5666;
    defparam d1_62__I_0_42.INIT1 = 16'h5666;
    defparam d1_62__I_0_42.INJECT1_0 = "NO";
    defparam d1_62__I_0_42.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_40 (.A0(d1[38]), .B0(d2[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[39]), .B1(d2[39]), .C1(GND_net), .D1(GND_net), .CIN(n1932), 
          .COUT(n1933), .S0(d2_62__N_678[38]), .S1(d2_62__N_678[39]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_40.INIT0 = 16'h5666;
    defparam d1_62__I_0_40.INIT1 = 16'h5666;
    defparam d1_62__I_0_40.INJECT1_0 = "NO";
    defparam d1_62__I_0_40.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[37]), .B1(d2[37]), .C1(GND_net), .D1(GND_net), .CIN(n1931), 
          .COUT(n1932), .S0(d2_62__N_678[36]), .S1(d2_62__N_678[37]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_38.INIT0 = 16'h5666;
    defparam d1_62__I_0_38.INIT1 = 16'h5666;
    defparam d1_62__I_0_38.INJECT1_0 = "NO";
    defparam d1_62__I_0_38.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n1930), 
          .COUT(n1931), .S0(d2_62__N_678[34]), .S1(d2_62__N_678[35]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_36.INIT0 = 16'h5666;
    defparam d1_62__I_0_36.INIT1 = 16'h5666;
    defparam d1_62__I_0_36.INJECT1_0 = "NO";
    defparam d1_62__I_0_36.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n1929), 
          .COUT(n1930), .S0(d2_62__N_678[32]), .S1(d2_62__N_678[33]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_34.INIT0 = 16'h5666;
    defparam d1_62__I_0_34.INIT1 = 16'h5666;
    defparam d1_62__I_0_34.INJECT1_0 = "NO";
    defparam d1_62__I_0_34.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n1928), 
          .COUT(n1929), .S0(d2_62__N_678[30]), .S1(d2_62__N_678[31]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_32.INIT0 = 16'h5666;
    defparam d1_62__I_0_32.INIT1 = 16'h5666;
    defparam d1_62__I_0_32.INJECT1_0 = "NO";
    defparam d1_62__I_0_32.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n1927), 
          .COUT(n1928), .S0(d2_62__N_678[28]), .S1(d2_62__N_678[29]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_30.INIT0 = 16'h5666;
    defparam d1_62__I_0_30.INIT1 = 16'h5666;
    defparam d1_62__I_0_30.INJECT1_0 = "NO";
    defparam d1_62__I_0_30.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n1926), 
          .COUT(n1927), .S0(d2_62__N_678[26]), .S1(d2_62__N_678[27]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_28.INIT0 = 16'h5666;
    defparam d1_62__I_0_28.INIT1 = 16'h5666;
    defparam d1_62__I_0_28.INJECT1_0 = "NO";
    defparam d1_62__I_0_28.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n1925), 
          .COUT(n1926), .S0(d2_62__N_678[24]), .S1(d2_62__N_678[25]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_26.INIT0 = 16'h5666;
    defparam d1_62__I_0_26.INIT1 = 16'h5666;
    defparam d1_62__I_0_26.INJECT1_0 = "NO";
    defparam d1_62__I_0_26.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n1924), 
          .COUT(n1925), .S0(d2_62__N_678[22]), .S1(d2_62__N_678[23]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_24.INIT0 = 16'h5666;
    defparam d1_62__I_0_24.INIT1 = 16'h5666;
    defparam d1_62__I_0_24.INJECT1_0 = "NO";
    defparam d1_62__I_0_24.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_60 (.A0(d3[58]), .B0(d4[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[59]), .B1(d4[59]), .C1(GND_net), .D1(GND_net), .CIN(n2006), 
          .COUT(n2007), .S0(d4_62__N_804[58]), .S1(d4_62__N_804[59]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_60.INIT0 = 16'h5666;
    defparam d3_62__I_0_60.INIT1 = 16'h5666;
    defparam d3_62__I_0_60.INJECT1_0 = "NO";
    defparam d3_62__I_0_60.INJECT1_1 = "NO";
    FD1S3IX count__i2 (.D(n330[2]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i2.GSR = "ENABLED";
    FD1S3IX count__i3 (.D(n330[3]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i3.GSR = "ENABLED";
    FD1S3IX count__i4 (.D(n330[4]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i4.GSR = "ENABLED";
    FD1S3IX count__i5 (.D(n330[5]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i5.GSR = "ENABLED";
    FD1S3IX count__i6 (.D(n330[6]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i6.GSR = "ENABLED";
    FD1S3IX count__i7 (.D(n330[7]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i7.GSR = "ENABLED";
    FD1S3IX count__i8 (.D(n330[8]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i8.GSR = "ENABLED";
    FD1S3IX count__i9 (.D(n330[9]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i9.GSR = "ENABLED";
    FD1S3IX count__i10 (.D(count_15__N_1513[10]), .CK(osc_clk_derived_991), 
            .CD(d_clk_tmp_N_1845), .Q(count[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i10.GSR = "ENABLED";
    FD1S3IX count__i11 (.D(n330[11]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i11.GSR = "ENABLED";
    FD1S3IX count__i12 (.D(n330[12]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i12.GSR = "ENABLED";
    FD1S3IX count__i13 (.D(n330[13]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i13.GSR = "ENABLED";
    FD1S3IX count__i14 (.D(n330[14]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i14.GSR = "ENABLED";
    FD1S3IX count__i15 (.D(n330[15]), .CK(osc_clk_derived_991), .CD(n1228), 
            .Q(count[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i15.GSR = "ENABLED";
    CCU2D d1_62__I_0_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n1923), 
          .COUT(n1924), .S0(d2_62__N_678[20]), .S1(d2_62__N_678[21]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_22.INIT0 = 16'h5666;
    defparam d1_62__I_0_22.INIT1 = 16'h5666;
    defparam d1_62__I_0_22.INJECT1_0 = "NO";
    defparam d1_62__I_0_22.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n1922), 
          .COUT(n1923), .S0(d2_62__N_678[18]), .S1(d2_62__N_678[19]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_20.INIT0 = 16'h5666;
    defparam d1_62__I_0_20.INIT1 = 16'h5666;
    defparam d1_62__I_0_20.INJECT1_0 = "NO";
    defparam d1_62__I_0_20.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_38 (.A0(CIC1_out[7]), .B0(d1[36]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[37]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1899), .COUT(n1900), .S0(d1_62__N_615[36]), 
          .S1(d1_62__N_615[37]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_38.INIT0 = 16'h5666;
    defparam d_in_7__I_0_38.INIT1 = 16'h5666;
    defparam d_in_7__I_0_38.INJECT1_0 = "NO";
    defparam d_in_7__I_0_38.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_36 (.A0(CIC1_out[7]), .B0(d1[34]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[35]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1898), .COUT(n1899), .S0(d1_62__N_615[34]), 
          .S1(d1_62__N_615[35]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_36.INIT0 = 16'h5666;
    defparam d_in_7__I_0_36.INIT1 = 16'h5666;
    defparam d_in_7__I_0_36.INJECT1_0 = "NO";
    defparam d_in_7__I_0_36.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_10 (.A0(CIC1_out[7]), .B0(d1[8]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1885), .COUT(n1886), .S0(d1_62__N_615[8]), 
          .S1(d1_62__N_615[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_10.INIT0 = 16'h5666;
    defparam d_in_7__I_0_10.INIT1 = 16'h5666;
    defparam d_in_7__I_0_10.INJECT1_0 = "NO";
    defparam d_in_7__I_0_10.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_8 (.A0(CIC1_out[6]), .B0(d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(CIC1_out[7]), .B1(d1[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1884), .COUT(n1885), .S0(d1_62__N_615[6]), .S1(d1_62__N_615[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_8.INIT0 = 16'h5666;
    defparam d_in_7__I_0_8.INIT1 = 16'h5666;
    defparam d_in_7__I_0_8.INJECT1_0 = "NO";
    defparam d_in_7__I_0_8.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n1921), 
          .COUT(n1922), .S0(d2_62__N_678[16]), .S1(d2_62__N_678[17]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_18.INIT0 = 16'h5666;
    defparam d1_62__I_0_18.INIT1 = 16'h5666;
    defparam d1_62__I_0_18.INJECT1_0 = "NO";
    defparam d1_62__I_0_18.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n1920), 
          .COUT(n1921), .S0(d2_62__N_678[14]), .S1(d2_62__N_678[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_16.INIT0 = 16'h5666;
    defparam d1_62__I_0_16.INIT1 = 16'h5666;
    defparam d1_62__I_0_16.INJECT1_0 = "NO";
    defparam d1_62__I_0_16.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n1919), 
          .COUT(n1920), .S0(d2_62__N_678[12]), .S1(d2_62__N_678[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_14.INIT0 = 16'h5666;
    defparam d1_62__I_0_14.INIT1 = 16'h5666;
    defparam d1_62__I_0_14.INJECT1_0 = "NO";
    defparam d1_62__I_0_14.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n1918), 
          .COUT(n1919), .S0(d2_62__N_678[10]), .S1(d2_62__N_678[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_12.INIT0 = 16'h5666;
    defparam d1_62__I_0_12.INIT1 = 16'h5666;
    defparam d1_62__I_0_12.INJECT1_0 = "NO";
    defparam d1_62__I_0_12.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_53 (.A0(d_tmp[51]), .B0(d_d_tmp[51]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[52]), .B1(d_d_tmp[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1848), .COUT(n1849), .S0(d6_62__N_1530[51]), 
          .S1(d6_62__N_1530[52]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_53.INIT0 = 16'h5999;
    defparam sub_25_add_2_53.INIT1 = 16'h5999;
    defparam sub_25_add_2_53.INJECT1_0 = "NO";
    defparam sub_25_add_2_53.INJECT1_1 = "NO";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(osc_clk_derived_991_enable_597), 
            .CK(osc_clk_derived_991), .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=45, LSE_RCOL=2, LSE_LLINE=131, LSE_RLINE=136 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    CCU2D sub_25_add_2_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1838), .COUT(n1839), .S0(d6_62__N_1530[31]), 
          .S1(d6_62__N_1530[32]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_33.INIT0 = 16'h5999;
    defparam sub_25_add_2_33.INIT1 = 16'h5999;
    defparam sub_25_add_2_33.INJECT1_0 = "NO";
    defparam sub_25_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_51 (.A0(d_tmp[49]), .B0(d_d_tmp[49]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[50]), .B1(d_d_tmp[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1847), .COUT(n1848), .S0(d6_62__N_1530[49]), 
          .S1(d6_62__N_1530[50]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_51.INIT0 = 16'h5999;
    defparam sub_25_add_2_51.INIT1 = 16'h5999;
    defparam sub_25_add_2_51.INJECT1_0 = "NO";
    defparam sub_25_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_49 (.A0(d_tmp[47]), .B0(d_d_tmp[47]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[48]), .B1(d_d_tmp[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1846), .COUT(n1847), .S0(d6_62__N_1530[47]), 
          .S1(d6_62__N_1530[48]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_49.INIT0 = 16'h5999;
    defparam sub_25_add_2_49.INIT1 = 16'h5999;
    defparam sub_25_add_2_49.INJECT1_0 = "NO";
    defparam sub_25_add_2_49.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_6 (.A0(CIC1_out[4]), .B0(d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(CIC1_out[5]), .B1(d1[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1883), .COUT(n1884), .S0(d1_62__N_615[4]), .S1(d1_62__N_615[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_6.INIT0 = 16'h5666;
    defparam d_in_7__I_0_6.INIT1 = 16'h5666;
    defparam d_in_7__I_0_6.INJECT1_0 = "NO";
    defparam d_in_7__I_0_6.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_47 (.A0(d_tmp[45]), .B0(d_d_tmp[45]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[46]), .B1(d_d_tmp[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1845), .COUT(n1846), .S0(d6_62__N_1530[45]), 
          .S1(d6_62__N_1530[46]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_47.INIT0 = 16'h5999;
    defparam sub_25_add_2_47.INIT1 = 16'h5999;
    defparam sub_25_add_2_47.INJECT1_0 = "NO";
    defparam sub_25_add_2_47.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n1917), 
          .COUT(n1918), .S0(d2_62__N_678[8]), .S1(d2_62__N_678[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_10.INIT0 = 16'h5666;
    defparam d1_62__I_0_10.INIT1 = 16'h5666;
    defparam d1_62__I_0_10.INJECT1_0 = "NO";
    defparam d1_62__I_0_10.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_34 (.A0(CIC1_out[7]), .B0(d1[32]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC1_out[7]), .B1(d1[33]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1897), .COUT(n1898), .S0(d1_62__N_615[32]), 
          .S1(d1_62__N_615[33]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_34.INIT0 = 16'h5666;
    defparam d_in_7__I_0_34.INIT1 = 16'h5666;
    defparam d_in_7__I_0_34.INJECT1_0 = "NO";
    defparam d_in_7__I_0_34.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1829), .COUT(n1830), .S0(d6_62__N_1530[13]), 
          .S1(d6_62__N_1530[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_15.INIT0 = 16'h5999;
    defparam sub_25_add_2_15.INIT1 = 16'h5999;
    defparam sub_25_add_2_15.INJECT1_0 = "NO";
    defparam sub_25_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1823), .COUT(n1824), .S0(d6_62__N_1530[1]), 
          .S1(d6_62__N_1530[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_3.INIT0 = 16'h5999;
    defparam sub_25_add_2_3.INIT1 = 16'h5999;
    defparam sub_25_add_2_3.INJECT1_0 = "NO";
    defparam sub_25_add_2_3.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_4 (.A0(CIC1_out[2]), .B0(d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(CIC1_out[3]), .B1(d1[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1882), .COUT(n1883), .S0(d1_62__N_615[2]), .S1(d1_62__N_615[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_4.INIT0 = 16'h5666;
    defparam d_in_7__I_0_4.INIT1 = 16'h5666;
    defparam d_in_7__I_0_4.INJECT1_0 = "NO";
    defparam d_in_7__I_0_4.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1916), 
          .COUT(n1917), .S0(d2_62__N_678[6]), .S1(d2_62__N_678[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_8.INIT0 = 16'h5666;
    defparam d1_62__I_0_8.INIT1 = 16'h5666;
    defparam d1_62__I_0_8.INJECT1_0 = "NO";
    defparam d1_62__I_0_8.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1824), .COUT(n1825), .S0(d6_62__N_1530[3]), 
          .S1(d6_62__N_1530[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_5.INIT0 = 16'h5999;
    defparam sub_25_add_2_5.INIT1 = 16'h5999;
    defparam sub_25_add_2_5.INJECT1_0 = "NO";
    defparam sub_25_add_2_5.INJECT1_1 = "NO";
    CCU2D d_in_7__I_0_2 (.A0(CIC1_out[0]), .B0(d1[0]), .C0(GND_net), .D0(GND_net), 
          .A1(CIC1_out[1]), .B1(d1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1882), .S1(d1_62__N_615[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d_in_7__I_0_2.INIT0 = 16'h7000;
    defparam d_in_7__I_0_2.INIT1 = 16'h5666;
    defparam d_in_7__I_0_2.INJECT1_0 = "NO";
    defparam d_in_7__I_0_2.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1837), .COUT(n1838), .S0(d6_62__N_1530[29]), 
          .S1(d6_62__N_1530[30]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_31.INIT0 = 16'h5999;
    defparam sub_25_add_2_31.INIT1 = 16'h5999;
    defparam sub_25_add_2_31.INJECT1_0 = "NO";
    defparam sub_25_add_2_31.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_62 (.A0(d3[60]), .B0(d4[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[61]), .B1(d4[61]), .C1(GND_net), .D1(GND_net), .CIN(n2007), 
          .COUT(n2008), .S0(d4_62__N_804[60]), .S1(d4_62__N_804[61]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_62.INIT0 = 16'h5666;
    defparam d3_62__I_0_62.INIT1 = 16'h5666;
    defparam d3_62__I_0_62.INJECT1_0 = "NO";
    defparam d3_62__I_0_62.INJECT1_1 = "NO";
    CCU2D d3_62__I_0_64 (.A0(d3[62]), .B0(d4[62]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2008), 
          .S0(d4_62__N_804[62]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d3_62__I_0_64.INIT0 = 16'h5666;
    defparam d3_62__I_0_64.INIT1 = 16'h0000;
    defparam d3_62__I_0_64.INJECT1_0 = "NO";
    defparam d3_62__I_0_64.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n2010), 
          .S1(d5_62__N_867[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_2.INIT0 = 16'h7000;
    defparam d4_62__I_0_2.INIT1 = 16'h5666;
    defparam d4_62__I_0_2.INJECT1_0 = "NO";
    defparam d4_62__I_0_2.INJECT1_1 = "NO";
    CCU2D d4_62__I_0_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n2010), 
          .COUT(n2011), .S0(d5_62__N_867[2]), .S1(d5_62__N_867[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d4_62__I_0_4.INIT0 = 16'h5666;
    defparam d4_62__I_0_4.INIT1 = 16'h5666;
    defparam d4_62__I_0_4.INJECT1_0 = "NO";
    defparam d4_62__I_0_4.INJECT1_1 = "NO";
    CCU2D d1_62__I_0_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1915), 
          .COUT(n1916), .S0(d2_62__N_678[4]), .S1(d2_62__N_678[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d1_62__I_0_6.INIT0 = 16'h5666;
    defparam d1_62__I_0_6.INIT1 = 16'h5666;
    defparam d1_62__I_0_6.INJECT1_0 = "NO";
    defparam d1_62__I_0_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module SinCos
//

module SinCos (osc_clk, VCC_net, GND_net, LOSine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input VCC_net;
    input GND_net;
    output [7:0]LOSine;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    
    wire Sine_6_ffin, Sine_5_ffin, Sine_4_ffin, Sine_3_ffin, Sine_2_ffin, 
        Sine_1_ffin, Sine_0_ffin, Sine_7_ffin;
    
    FD1P3DX FF_14 (.D(Sine_6_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(37[13] 38[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(Sine_5_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(41[13] 42[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(Sine_4_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(45[13] 46[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Sine_3_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(49[13] 50[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Sine_2_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(53[13] 54[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Sine_1_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(57[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Sine_0_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(60[13:84])
    defparam FF_8.GSR = "ENABLED";
    ROM256X1A triglut_1_0_15 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_15.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_14 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000001111111111100000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_15 (.D(Sine_7_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/sincos.v(33[13] 34[21])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_13 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111000000000000000000000111111111111111111111111111111111111110000000000011111111111111111111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_12.initval = 256'b1111111111000000000001111111111111100000000000000000000000000000000000000000000000000000000011111111111111000000000001111111111000000000011111111111000000000000001111111111111111111111110000000000011111111111111111111111100000000000000111111111110000000000;
    ROM256X1A triglut_1_0_11 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_11.initval = 256'b1111100000111111000001111110000000011111111100000000000000000000000000000000000000011111111100000000111111000001111110000011111000001111100000011111000000011111110000000011111111111111110000000000011111111111111110000000011111110000000111110000001111100000;
    ROM256X1A triglut_1_0_10 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_10.initval = 256'b1100011100111000110001110001111000011110000011111100000000000000000000000000011111100000111100001111000111000110001110011100011000110001100011100011000111100011110000111100000011111111110000000000011111111110000001111000011110001111000110001110001100011000;
    ROM256X1A triglut_1_0_9 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_9.initval = 256'b1011010010100100101101101101100110011001100011000011111000000000000000001111100001100011001100110011011011011010010010100101101011010010100101101101001001101100110011001100011100001111110000000000011111100001110001100110011001101100100101101101001010010110;
    ROM256X1A triglut_1_0_8 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=101 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(94[8] 101[2])
    defparam triglut_1_0_8.initval = 256'b0110011000110010011001001011010101010101010010110011000111000000000001110001100110100101010101010101101001001100100110001100110001100110001100100110010010110101010101010100101100110001110000000000011100011001101001010101010101011010010011001001100011001100;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \CIC(width=16,decimation_ratio=8) 
//

module \CIC(width=16,decimation_ratio=8)  (osc_clk, CIC1_out, GND_net, 
            MixerOutSin_c_7, MixerOutSin_c_6, MixerOutSin_c_4, MixerOutSin_c_5, 
            MixerOutSin_c_2, MixerOutSin_c_3, MixerOutSin_c_0, MixerOutSin_c_1, 
            osc_clk_derived_991) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output [7:0]CIC1_out;
    input GND_net;
    input MixerOutSin_c_7;
    input MixerOutSin_c_6;
    input MixerOutSin_c_4;
    input MixerOutSin_c_5;
    input MixerOutSin_c_2;
    input MixerOutSin_c_3;
    input MixerOutSin_c_0;
    input MixerOutSin_c_1;
    output osc_clk_derived_991;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire osc_clk_derived_991 /* synthesis is_clock=1, SET_AS_NETWORK=osc_clk_derived_991 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(23[8:15])
    wire [15:0]count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(54[12:17])
    
    wire d_clk_tmp_N_478;
    wire [15:0]count_15__N_381;
    wire [15:0]d6;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(47[24:26])
    
    wire osc_clk_enable_51;
    wire [15:0]d6_15__N_398;
    
    wire d_clk_tmp, n1155, v_comb;
    wire [15:0]d_d6;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(47[28:32])
    wire [15:0]d7;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(48[24:26])
    wire [15:0]d7_15__N_414;
    wire [15:0]d_d7;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(48[28:32])
    wire [15:0]d8;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(49[24:26])
    wire [15:0]d8_15__N_430;
    wire [15:0]d_d8;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(49[28:32])
    wire [15:0]d9;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(50[24:26])
    wire [15:0]d9_15__N_446;
    wire [15:0]d_d9;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(50[28:32])
    wire [15:0]d10;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(51[24:27])
    wire [15:0]d10_15__N_462;
    wire [15:0]d_tmp;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(34[24:29])
    wire [15:0]d5;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(43[24:26])
    
    wire n1867;
    wire [15:0]n95;
    
    wire n1868;
    wire [15:0]d_d_tmp;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(34[31:38])
    
    wire osc_clk_enable_101, n1032, n1866;
    wire [15:0]n69;
    
    wire osc_clk_enable_158;
    wire [15:0]d4;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(42[24:26])
    wire [15:0]n69_adj_2152;
    wire [15:0]d3;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(41[24:26])
    wire [15:0]n69_adj_2153;
    wire [15:0]d2;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(40[24:26])
    wire [15:0]n69_adj_2154;
    wire [15:0]d1;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(39[24:26])
    wire [15:0]n69_adj_2155;
    
    wire n1199, n2887, n2889, n2885, n2879, n2268, n2267, n2266, 
        n2265, n2264, n2263, n2262, n2259, n2258, n2257, n2256, 
        n2255, n2254, n2253, n2250, n2249, n2248, n2247, n2246, 
        n2245, n2244, n2241, n2240, n2239, n2238, n2237, n2236, 
        n2235, n2232, n2231, n2230, n2229, n2228, n2227, n2226, 
        n2220, n2219, n2218, n2217, n2216, n2215, n2214, n2213, 
        n2204, n2203, n2202, n2201, n2200, n2199, n2198, n2197, 
        n2196, n2195, n2194, n2193, n2192, n2191, n2190, n2189, 
        n2152, n2151, n2150, n2149, n2148, n2147, n2146, n2145, 
        n1865, n1855, n1856, n1862, n1861, n1860, n1872, n1871, 
        n1859, n1858, n1870, n1857, n1869;
    
    FD1S3IX count__i0 (.D(count_15__N_381[0]), .CK(osc_clk), .CD(d_clk_tmp_N_478), 
            .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i0.GSR = "ENABLED";
    FD1P3AX d6_i0_i0 (.D(d6_15__N_398[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_63 (.D(n1155), .CK(osc_clk), .PD(d_clk_tmp_N_478), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_clk_tmp_63.GSR = "ENABLED";
    FD1S3AX v_comb_64 (.D(d_clk_tmp_N_478), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(d7_15__N_414[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(d8_15__N_430[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(d9_15__N_446[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__i1 (.D(d10_15__N_462[8]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[8]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    CCU2D add_10_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1867), 
          .COUT(n1868), .S0(n95[5]), .S1(n95[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_7.INIT0 = 16'h5aaa;
    defparam add_10_7.INIT1 = 16'h5aaa;
    defparam add_10_7.INJECT1_0 = "NO";
    defparam add_10_7.INJECT1_1 = "NO";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[15]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[14]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[13]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[12]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[11]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[10]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[9]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(CIC1_out[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d10__i8 (.D(d10_15__N_462[15]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i8.GSR = "ENABLED";
    FD1P3AX d10__i7 (.D(d10_15__N_462[14]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i7.GSR = "ENABLED";
    FD1P3AX d10__i6 (.D(d10_15__N_462[13]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i6.GSR = "ENABLED";
    FD1P3AX d10__i5 (.D(d10_15__N_462[12]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i5.GSR = "ENABLED";
    FD1P3AX d10__i4 (.D(d10_15__N_462[11]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i4.GSR = "ENABLED";
    FD1P3AX d10__i3 (.D(d10_15__N_462[10]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i3.GSR = "ENABLED";
    FD1P3AX d10__i2 (.D(d10_15__N_462[9]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d10[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d10__i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(d9_15__N_446[15]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(d9_15__N_446[14]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(d9_15__N_446[13]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(d9_15__N_446[12]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(d9_15__N_446[11]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(d9_15__N_446[10]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(d9_15__N_446[9]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(d9_15__N_446[8]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(d9_15__N_446[7]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(d9_15__N_446[6]), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(d9_15__N_446[5]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(d9_15__N_446[4]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(d9_15__N_446[3]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(d9_15__N_446[2]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(d9_15__N_446[1]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(d8_15__N_430[15]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(d8_15__N_430[14]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(d8_15__N_430[13]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(d8_15__N_430[12]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(d8_15__N_430[11]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(d8_15__N_430[10]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(d8_15__N_430[9]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(d8_15__N_430[8]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    LUT4 i872_2_lut_4_lut (.A(count[1]), .B(n1032), .C(count[0]), .D(d_clk_tmp), 
         .Z(n1155)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(84[17:47])
    defparam i872_2_lut_4_lut.init = 16'hfe00;
    LUT4 i1189_2_lut_4_lut (.A(count[1]), .B(n1032), .C(count[0]), .D(n95[2]), 
         .Z(count_15__N_381[2])) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(84[17:47])
    defparam i1189_2_lut_4_lut.init = 16'hff01;
    LUT4 i2325_3_lut (.A(count[1]), .B(n1032), .C(count[0]), .Z(d_clk_tmp_N_478)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i2325_3_lut.init = 16'h2020;
    FD1P3AX d8_i0_i7 (.D(d8_15__N_430[7]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(d8_15__N_430[6]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(d8_15__N_430[5]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(d8_15__N_430[4]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(d8_15__N_430[3]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(d8_15__N_430[2]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(d8_15__N_430[1]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    CCU2D add_10_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1866), 
          .COUT(n1867), .S0(n95[3]), .S1(n95[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_5.INIT0 = 16'h5aaa;
    defparam add_10_5.INIT1 = 16'h5aaa;
    defparam add_10_5.INJECT1_0 = "NO";
    defparam add_10_5.INJECT1_1 = "NO";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1S3AX d5_281__i0 (.D(n69[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_101), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(d7_15__N_414[15]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(d7_15__N_414[14]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(d7_15__N_414[13]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(d7_15__N_414[12]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(d7_15__N_414[11]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(d7_15__N_414[10]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(d7_15__N_414[9]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(d7_15__N_414[8]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(d7_15__N_414[7]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(d7_15__N_414[6]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(d7_15__N_414[5]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(d7_15__N_414[4]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(d7_15__N_414[3]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(d7_15__N_414[2]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(d7_15__N_414[1]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1S3AX d4_280__i0 (.D(n69_adj_2152[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i0.GSR = "ENABLED";
    FD1S3AX d3_279__i0 (.D(n69_adj_2153[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i0.GSR = "ENABLED";
    FD1S3AX d2_278__i0 (.D(n69_adj_2154[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i0.GSR = "ENABLED";
    FD1S3AX d1_277__i0 (.D(n69_adj_2155[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i0.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(d6_15__N_398[15]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(d6_15__N_398[14]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(d6_15__N_398[13]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(d6_15__N_398[12]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(d6_15__N_398[11]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(d6_15__N_398[10]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(d6_15__N_398[9]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(d6_15__N_398[8]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(d6_15__N_398[7]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(d6_15__N_398[6]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(d6_15__N_398[5]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(d6_15__N_398[4]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(d6_15__N_398[3]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i2 (.D(d6_15__N_398[2]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(d6_15__N_398[1]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    FD1S3IX count__i14 (.D(n95[14]), .CK(osc_clk), .CD(n1199), .Q(count[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i14.GSR = "ENABLED";
    FD1S3IX count__i13 (.D(n95[13]), .CK(osc_clk), .CD(n1199), .Q(count[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i13.GSR = "ENABLED";
    FD1S3IX count__i12 (.D(n95[12]), .CK(osc_clk), .CD(n1199), .Q(count[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i12.GSR = "ENABLED";
    FD1S3IX count__i11 (.D(n95[11]), .CK(osc_clk), .CD(n1199), .Q(count[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i11.GSR = "ENABLED";
    FD1S3IX count__i10 (.D(n95[10]), .CK(osc_clk), .CD(n1199), .Q(count[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i10.GSR = "ENABLED";
    FD1S3IX count__i9 (.D(n95[9]), .CK(osc_clk), .CD(n1199), .Q(count[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i9.GSR = "ENABLED";
    FD1S3IX count__i8 (.D(n95[8]), .CK(osc_clk), .CD(n1199), .Q(count[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i8.GSR = "ENABLED";
    FD1S3IX count__i7 (.D(n95[7]), .CK(osc_clk), .CD(n1199), .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i7.GSR = "ENABLED";
    FD1S3IX count__i6 (.D(n95[6]), .CK(osc_clk), .CD(n1199), .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i6.GSR = "ENABLED";
    FD1S3IX count__i5 (.D(n95[5]), .CK(osc_clk), .CD(n1199), .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i5.GSR = "ENABLED";
    FD1S3IX count__i4 (.D(n95[4]), .CK(osc_clk), .CD(n1199), .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i4.GSR = "ENABLED";
    FD1S3IX count__i3 (.D(n95[3]), .CK(osc_clk), .CD(n1199), .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i3.GSR = "ENABLED";
    FD1S3IX count__i2 (.D(count_15__N_381[2]), .CK(osc_clk), .CD(d_clk_tmp_N_478), 
            .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i2.GSR = "ENABLED";
    FD1S3IX count__i1 (.D(n95[1]), .CK(osc_clk), .CD(n1199), .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n2887), .B(n2889), .C(count[2]), .D(n2885), .Z(n1032)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i1_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_1 (.A(count[11]), .B(count[7]), .C(count[8]), .D(count[14]), 
         .Z(n2887)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i1_4_lut_adj_1.init = 16'hfffe;
    LUT4 i1_4_lut_adj_2 (.A(count[9]), .B(n2879), .C(count[3]), .D(count[12]), 
         .Z(n2889)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i1_4_lut_adj_2.init = 16'hfffe;
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(d_clk_tmp_N_478), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_3 (.A(count[4]), .B(count[6]), .C(count[13]), .D(count[15]), 
         .Z(n2885)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i1_4_lut_adj_3.init = 16'hfffe;
    LUT4 i1_2_lut (.A(count[10]), .B(count[5]), .Z(n2879)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(78[8:37])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX v_comb_64_rep_59 (.D(d_clk_tmp_N_478), .CK(osc_clk), .Q(osc_clk_enable_158)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_59.GSR = "ENABLED";
    CCU2D d1_277_add_4_16 (.A0(MixerOutSin_c_7), .B0(d1[14]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2268), .S0(n69_adj_2155[14]), .S1(n69_adj_2155[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_16.INIT0 = 16'h5666;
    defparam d1_277_add_4_16.INIT1 = 16'h5666;
    defparam d1_277_add_4_16.INJECT1_0 = "NO";
    defparam d1_277_add_4_16.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_14 (.A0(MixerOutSin_c_7), .B0(d1[12]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2267), .COUT(n2268), .S0(n69_adj_2155[12]), 
          .S1(n69_adj_2155[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_14.INIT0 = 16'h5666;
    defparam d1_277_add_4_14.INIT1 = 16'h5666;
    defparam d1_277_add_4_14.INJECT1_0 = "NO";
    defparam d1_277_add_4_14.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_12 (.A0(MixerOutSin_c_7), .B0(d1[10]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2266), .COUT(n2267), .S0(n69_adj_2155[10]), 
          .S1(n69_adj_2155[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_12.INIT0 = 16'h5666;
    defparam d1_277_add_4_12.INIT1 = 16'h5666;
    defparam d1_277_add_4_12.INJECT1_0 = "NO";
    defparam d1_277_add_4_12.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_10 (.A0(MixerOutSin_c_7), .B0(d1[8]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .COUT(n2266), .S0(n69_adj_2155[8]), 
          .S1(n69_adj_2155[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_10.INIT0 = 16'h5666;
    defparam d1_277_add_4_10.INIT1 = 16'h5666;
    defparam d1_277_add_4_10.INJECT1_0 = "NO";
    defparam d1_277_add_4_10.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_8 (.A0(MixerOutSin_c_6), .B0(d1[6]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_7), .B1(d1[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2264), .COUT(n2265), .S0(n69_adj_2155[6]), 
          .S1(n69_adj_2155[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_8.INIT0 = 16'h5666;
    defparam d1_277_add_4_8.INIT1 = 16'h5666;
    defparam d1_277_add_4_8.INJECT1_0 = "NO";
    defparam d1_277_add_4_8.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_6 (.A0(MixerOutSin_c_4), .B0(d1[4]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_5), .B1(d1[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2263), .COUT(n2264), .S0(n69_adj_2155[4]), 
          .S1(n69_adj_2155[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_6.INIT0 = 16'h5666;
    defparam d1_277_add_4_6.INIT1 = 16'h5666;
    defparam d1_277_add_4_6.INJECT1_0 = "NO";
    defparam d1_277_add_4_6.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_4 (.A0(MixerOutSin_c_2), .B0(d1[2]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_3), .B1(d1[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2262), .COUT(n2263), .S0(n69_adj_2155[2]), 
          .S1(n69_adj_2155[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_4.INIT0 = 16'h5666;
    defparam d1_277_add_4_4.INIT1 = 16'h5666;
    defparam d1_277_add_4_4.INJECT1_0 = "NO";
    defparam d1_277_add_4_4.INJECT1_1 = "NO";
    CCU2D d1_277_add_4_2 (.A0(MixerOutSin_c_0), .B0(d1[0]), .C0(GND_net), 
          .D0(GND_net), .A1(MixerOutSin_c_1), .B1(d1[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2262), .S1(n69_adj_2155[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277_add_4_2.INIT0 = 16'h7000;
    defparam d1_277_add_4_2.INIT1 = 16'h5666;
    defparam d1_277_add_4_2.INJECT1_0 = "NO";
    defparam d1_277_add_4_2.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n2259), 
          .S0(n69_adj_2154[14]), .S1(n69_adj_2154[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_16.INIT0 = 16'h5666;
    defparam d2_278_add_4_16.INIT1 = 16'h5666;
    defparam d2_278_add_4_16.INJECT1_0 = "NO";
    defparam d2_278_add_4_16.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n2258), 
          .COUT(n2259), .S0(n69_adj_2154[12]), .S1(n69_adj_2154[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_14.INIT0 = 16'h5666;
    defparam d2_278_add_4_14.INIT1 = 16'h5666;
    defparam d2_278_add_4_14.INJECT1_0 = "NO";
    defparam d2_278_add_4_14.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n2257), 
          .COUT(n2258), .S0(n69_adj_2154[10]), .S1(n69_adj_2154[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_12.INIT0 = 16'h5666;
    defparam d2_278_add_4_12.INIT1 = 16'h5666;
    defparam d2_278_add_4_12.INJECT1_0 = "NO";
    defparam d2_278_add_4_12.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n2256), 
          .COUT(n2257), .S0(n69_adj_2154[8]), .S1(n69_adj_2154[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_10.INIT0 = 16'h5666;
    defparam d2_278_add_4_10.INIT1 = 16'h5666;
    defparam d2_278_add_4_10.INJECT1_0 = "NO";
    defparam d2_278_add_4_10.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n2255), 
          .COUT(n2256), .S0(n69_adj_2154[6]), .S1(n69_adj_2154[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_8.INIT0 = 16'h5666;
    defparam d2_278_add_4_8.INIT1 = 16'h5666;
    defparam d2_278_add_4_8.INJECT1_0 = "NO";
    defparam d2_278_add_4_8.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n2254), 
          .COUT(n2255), .S0(n69_adj_2154[4]), .S1(n69_adj_2154[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_6.INIT0 = 16'h5666;
    defparam d2_278_add_4_6.INIT1 = 16'h5666;
    defparam d2_278_add_4_6.INJECT1_0 = "NO";
    defparam d2_278_add_4_6.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n2253), 
          .COUT(n2254), .S0(n69_adj_2154[2]), .S1(n69_adj_2154[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_4.INIT0 = 16'h5666;
    defparam d2_278_add_4_4.INIT1 = 16'h5666;
    defparam d2_278_add_4_4.INJECT1_0 = "NO";
    defparam d2_278_add_4_4.INJECT1_1 = "NO";
    CCU2D d2_278_add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n2253), 
          .S1(n69_adj_2154[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278_add_4_2.INIT0 = 16'h7000;
    defparam d2_278_add_4_2.INIT1 = 16'h5666;
    defparam d2_278_add_4_2.INJECT1_0 = "NO";
    defparam d2_278_add_4_2.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n2250), 
          .S0(n69_adj_2153[14]), .S1(n69_adj_2153[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_16.INIT0 = 16'h5666;
    defparam d3_279_add_4_16.INIT1 = 16'h5666;
    defparam d3_279_add_4_16.INJECT1_0 = "NO";
    defparam d3_279_add_4_16.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n2249), 
          .COUT(n2250), .S0(n69_adj_2153[12]), .S1(n69_adj_2153[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_14.INIT0 = 16'h5666;
    defparam d3_279_add_4_14.INIT1 = 16'h5666;
    defparam d3_279_add_4_14.INJECT1_0 = "NO";
    defparam d3_279_add_4_14.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n2248), 
          .COUT(n2249), .S0(n69_adj_2153[10]), .S1(n69_adj_2153[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_12.INIT0 = 16'h5666;
    defparam d3_279_add_4_12.INIT1 = 16'h5666;
    defparam d3_279_add_4_12.INJECT1_0 = "NO";
    defparam d3_279_add_4_12.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n2247), 
          .COUT(n2248), .S0(n69_adj_2153[8]), .S1(n69_adj_2153[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_10.INIT0 = 16'h5666;
    defparam d3_279_add_4_10.INIT1 = 16'h5666;
    defparam d3_279_add_4_10.INJECT1_0 = "NO";
    defparam d3_279_add_4_10.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n2246), 
          .COUT(n2247), .S0(n69_adj_2153[6]), .S1(n69_adj_2153[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_8.INIT0 = 16'h5666;
    defparam d3_279_add_4_8.INIT1 = 16'h5666;
    defparam d3_279_add_4_8.INJECT1_0 = "NO";
    defparam d3_279_add_4_8.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n2245), 
          .COUT(n2246), .S0(n69_adj_2153[4]), .S1(n69_adj_2153[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_6.INIT0 = 16'h5666;
    defparam d3_279_add_4_6.INIT1 = 16'h5666;
    defparam d3_279_add_4_6.INJECT1_0 = "NO";
    defparam d3_279_add_4_6.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n2244), 
          .COUT(n2245), .S0(n69_adj_2153[2]), .S1(n69_adj_2153[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_4.INIT0 = 16'h5666;
    defparam d3_279_add_4_4.INIT1 = 16'h5666;
    defparam d3_279_add_4_4.INJECT1_0 = "NO";
    defparam d3_279_add_4_4.INJECT1_1 = "NO";
    CCU2D d3_279_add_4_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n2244), 
          .S1(n69_adj_2153[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279_add_4_2.INIT0 = 16'h7000;
    defparam d3_279_add_4_2.INIT1 = 16'h5666;
    defparam d3_279_add_4_2.INJECT1_0 = "NO";
    defparam d3_279_add_4_2.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n2241), 
          .S0(n69_adj_2152[14]), .S1(n69_adj_2152[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_16.INIT0 = 16'h5666;
    defparam d4_280_add_4_16.INIT1 = 16'h5666;
    defparam d4_280_add_4_16.INJECT1_0 = "NO";
    defparam d4_280_add_4_16.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n2240), 
          .COUT(n2241), .S0(n69_adj_2152[12]), .S1(n69_adj_2152[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_14.INIT0 = 16'h5666;
    defparam d4_280_add_4_14.INIT1 = 16'h5666;
    defparam d4_280_add_4_14.INJECT1_0 = "NO";
    defparam d4_280_add_4_14.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n2239), 
          .COUT(n2240), .S0(n69_adj_2152[10]), .S1(n69_adj_2152[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_12.INIT0 = 16'h5666;
    defparam d4_280_add_4_12.INIT1 = 16'h5666;
    defparam d4_280_add_4_12.INJECT1_0 = "NO";
    defparam d4_280_add_4_12.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n2238), 
          .COUT(n2239), .S0(n69_adj_2152[8]), .S1(n69_adj_2152[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_10.INIT0 = 16'h5666;
    defparam d4_280_add_4_10.INIT1 = 16'h5666;
    defparam d4_280_add_4_10.INJECT1_0 = "NO";
    defparam d4_280_add_4_10.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n2237), 
          .COUT(n2238), .S0(n69_adj_2152[6]), .S1(n69_adj_2152[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_8.INIT0 = 16'h5666;
    defparam d4_280_add_4_8.INIT1 = 16'h5666;
    defparam d4_280_add_4_8.INJECT1_0 = "NO";
    defparam d4_280_add_4_8.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n2236), 
          .COUT(n2237), .S0(n69_adj_2152[4]), .S1(n69_adj_2152[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_6.INIT0 = 16'h5666;
    defparam d4_280_add_4_6.INIT1 = 16'h5666;
    defparam d4_280_add_4_6.INJECT1_0 = "NO";
    defparam d4_280_add_4_6.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n2235), 
          .COUT(n2236), .S0(n69_adj_2152[2]), .S1(n69_adj_2152[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_4.INIT0 = 16'h5666;
    defparam d4_280_add_4_4.INIT1 = 16'h5666;
    defparam d4_280_add_4_4.INJECT1_0 = "NO";
    defparam d4_280_add_4_4.INJECT1_1 = "NO";
    CCU2D d4_280_add_4_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n2235), 
          .S1(n69_adj_2152[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280_add_4_2.INIT0 = 16'h7000;
    defparam d4_280_add_4_2.INIT1 = 16'h5666;
    defparam d4_280_add_4_2.INJECT1_0 = "NO";
    defparam d4_280_add_4_2.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n2232), 
          .S0(n69[14]), .S1(n69[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_16.INIT0 = 16'h5666;
    defparam d5_281_add_4_16.INIT1 = 16'h5666;
    defparam d5_281_add_4_16.INJECT1_0 = "NO";
    defparam d5_281_add_4_16.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n2231), 
          .COUT(n2232), .S0(n69[12]), .S1(n69[13]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_14.INIT0 = 16'h5666;
    defparam d5_281_add_4_14.INIT1 = 16'h5666;
    defparam d5_281_add_4_14.INJECT1_0 = "NO";
    defparam d5_281_add_4_14.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n2230), 
          .COUT(n2231), .S0(n69[10]), .S1(n69[11]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_12.INIT0 = 16'h5666;
    defparam d5_281_add_4_12.INIT1 = 16'h5666;
    defparam d5_281_add_4_12.INJECT1_0 = "NO";
    defparam d5_281_add_4_12.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n2229), 
          .COUT(n2230), .S0(n69[8]), .S1(n69[9]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_10.INIT0 = 16'h5666;
    defparam d5_281_add_4_10.INIT1 = 16'h5666;
    defparam d5_281_add_4_10.INJECT1_0 = "NO";
    defparam d5_281_add_4_10.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n2228), 
          .COUT(n2229), .S0(n69[6]), .S1(n69[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_8.INIT0 = 16'h5666;
    defparam d5_281_add_4_8.INIT1 = 16'h5666;
    defparam d5_281_add_4_8.INJECT1_0 = "NO";
    defparam d5_281_add_4_8.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n2227), 
          .COUT(n2228), .S0(n69[4]), .S1(n69[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_6.INIT0 = 16'h5666;
    defparam d5_281_add_4_6.INIT1 = 16'h5666;
    defparam d5_281_add_4_6.INJECT1_0 = "NO";
    defparam d5_281_add_4_6.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n2226), 
          .COUT(n2227), .S0(n69[2]), .S1(n69[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_4.INIT0 = 16'h5666;
    defparam d5_281_add_4_4.INIT1 = 16'h5666;
    defparam d5_281_add_4_4.INJECT1_0 = "NO";
    defparam d5_281_add_4_4.INJECT1_1 = "NO";
    CCU2D d5_281_add_4_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n2226), 
          .S1(n69[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281_add_4_2.INIT0 = 16'h7000;
    defparam d5_281_add_4_2.INIT1 = 16'h5666;
    defparam d5_281_add_4_2.INJECT1_0 = "NO";
    defparam d5_281_add_4_2.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2220), .S0(d6_15__N_398[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_17.INIT0 = 16'h5999;
    defparam sub_25_add_2_17.INIT1 = 16'h0000;
    defparam sub_25_add_2_17.INJECT1_0 = "NO";
    defparam sub_25_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2219), .COUT(n2220), .S0(d6_15__N_398[13]), 
          .S1(d6_15__N_398[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_15.INIT0 = 16'h5999;
    defparam sub_25_add_2_15.INIT1 = 16'h5999;
    defparam sub_25_add_2_15.INJECT1_0 = "NO";
    defparam sub_25_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2218), .COUT(n2219), .S0(d6_15__N_398[11]), 
          .S1(d6_15__N_398[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_13.INIT0 = 16'h5999;
    defparam sub_25_add_2_13.INIT1 = 16'h5999;
    defparam sub_25_add_2_13.INJECT1_0 = "NO";
    defparam sub_25_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2217), .COUT(n2218), .S0(d6_15__N_398[9]), 
          .S1(d6_15__N_398[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_11.INIT0 = 16'h5999;
    defparam sub_25_add_2_11.INIT1 = 16'h5999;
    defparam sub_25_add_2_11.INJECT1_0 = "NO";
    defparam sub_25_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2216), .COUT(n2217), .S0(d6_15__N_398[7]), 
          .S1(d6_15__N_398[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_9.INIT0 = 16'h5999;
    defparam sub_25_add_2_9.INIT1 = 16'h5999;
    defparam sub_25_add_2_9.INJECT1_0 = "NO";
    defparam sub_25_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2215), .COUT(n2216), .S0(d6_15__N_398[5]), 
          .S1(d6_15__N_398[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_7.INIT0 = 16'h5999;
    defparam sub_25_add_2_7.INIT1 = 16'h5999;
    defparam sub_25_add_2_7.INJECT1_0 = "NO";
    defparam sub_25_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2214), .COUT(n2215), .S0(d6_15__N_398[3]), 
          .S1(d6_15__N_398[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_5.INIT0 = 16'h5999;
    defparam sub_25_add_2_5.INIT1 = 16'h5999;
    defparam sub_25_add_2_5.INJECT1_0 = "NO";
    defparam sub_25_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2213), .COUT(n2214), .S0(d6_15__N_398[1]), 
          .S1(d6_15__N_398[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_3.INIT0 = 16'h5999;
    defparam sub_25_add_2_3.INIT1 = 16'h5999;
    defparam sub_25_add_2_3.INJECT1_0 = "NO";
    defparam sub_25_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_25_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2213), .S1(d6_15__N_398[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(107[11:26])
    defparam sub_25_add_2_1.INIT0 = 16'h0000;
    defparam sub_25_add_2_1.INIT1 = 16'h5999;
    defparam sub_25_add_2_1.INJECT1_0 = "NO";
    defparam sub_25_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2204), 
          .S0(d7_15__N_414[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_17.INIT0 = 16'h5999;
    defparam sub_26_add_2_17.INIT1 = 16'h0000;
    defparam sub_26_add_2_17.INJECT1_0 = "NO";
    defparam sub_26_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n2203), 
          .COUT(n2204), .S0(d7_15__N_414[13]), .S1(d7_15__N_414[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_15.INIT0 = 16'h5999;
    defparam sub_26_add_2_15.INIT1 = 16'h5999;
    defparam sub_26_add_2_15.INJECT1_0 = "NO";
    defparam sub_26_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n2202), 
          .COUT(n2203), .S0(d7_15__N_414[11]), .S1(d7_15__N_414[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_13.INIT0 = 16'h5999;
    defparam sub_26_add_2_13.INIT1 = 16'h5999;
    defparam sub_26_add_2_13.INJECT1_0 = "NO";
    defparam sub_26_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n2201), 
          .COUT(n2202), .S0(d7_15__N_414[9]), .S1(d7_15__N_414[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_11.INIT0 = 16'h5999;
    defparam sub_26_add_2_11.INIT1 = 16'h5999;
    defparam sub_26_add_2_11.INJECT1_0 = "NO";
    defparam sub_26_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n2200), 
          .COUT(n2201), .S0(d7_15__N_414[7]), .S1(d7_15__N_414[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_9.INIT0 = 16'h5999;
    defparam sub_26_add_2_9.INIT1 = 16'h5999;
    defparam sub_26_add_2_9.INJECT1_0 = "NO";
    defparam sub_26_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n2199), 
          .COUT(n2200), .S0(d7_15__N_414[5]), .S1(d7_15__N_414[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_7.INIT0 = 16'h5999;
    defparam sub_26_add_2_7.INIT1 = 16'h5999;
    defparam sub_26_add_2_7.INJECT1_0 = "NO";
    defparam sub_26_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n2198), 
          .COUT(n2199), .S0(d7_15__N_414[3]), .S1(d7_15__N_414[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_5.INIT0 = 16'h5999;
    defparam sub_26_add_2_5.INIT1 = 16'h5999;
    defparam sub_26_add_2_5.INJECT1_0 = "NO";
    defparam sub_26_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n2197), 
          .COUT(n2198), .S0(d7_15__N_414[1]), .S1(d7_15__N_414[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_3.INIT0 = 16'h5999;
    defparam sub_26_add_2_3.INIT1 = 16'h5999;
    defparam sub_26_add_2_3.INJECT1_0 = "NO";
    defparam sub_26_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_26_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n2197), 
          .S1(d7_15__N_414[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(110[11:20])
    defparam sub_26_add_2_1.INIT0 = 16'h0000;
    defparam sub_26_add_2_1.INIT1 = 16'h5999;
    defparam sub_26_add_2_1.INJECT1_0 = "NO";
    defparam sub_26_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2196), 
          .S0(d8_15__N_430[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_17.INIT0 = 16'h5999;
    defparam sub_27_add_2_17.INIT1 = 16'h0000;
    defparam sub_27_add_2_17.INJECT1_0 = "NO";
    defparam sub_27_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n2195), 
          .COUT(n2196), .S0(d8_15__N_430[13]), .S1(d8_15__N_430[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_15.INIT0 = 16'h5999;
    defparam sub_27_add_2_15.INIT1 = 16'h5999;
    defparam sub_27_add_2_15.INJECT1_0 = "NO";
    defparam sub_27_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n2194), 
          .COUT(n2195), .S0(d8_15__N_430[11]), .S1(d8_15__N_430[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_13.INIT0 = 16'h5999;
    defparam sub_27_add_2_13.INIT1 = 16'h5999;
    defparam sub_27_add_2_13.INJECT1_0 = "NO";
    defparam sub_27_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n2193), 
          .COUT(n2194), .S0(d8_15__N_430[9]), .S1(d8_15__N_430[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_11.INIT0 = 16'h5999;
    defparam sub_27_add_2_11.INIT1 = 16'h5999;
    defparam sub_27_add_2_11.INJECT1_0 = "NO";
    defparam sub_27_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n2192), 
          .COUT(n2193), .S0(d8_15__N_430[7]), .S1(d8_15__N_430[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_9.INIT0 = 16'h5999;
    defparam sub_27_add_2_9.INIT1 = 16'h5999;
    defparam sub_27_add_2_9.INJECT1_0 = "NO";
    defparam sub_27_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n2191), 
          .COUT(n2192), .S0(d8_15__N_430[5]), .S1(d8_15__N_430[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_7.INIT0 = 16'h5999;
    defparam sub_27_add_2_7.INIT1 = 16'h5999;
    defparam sub_27_add_2_7.INJECT1_0 = "NO";
    defparam sub_27_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n2190), 
          .COUT(n2191), .S0(d8_15__N_430[3]), .S1(d8_15__N_430[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_5.INIT0 = 16'h5999;
    defparam sub_27_add_2_5.INIT1 = 16'h5999;
    defparam sub_27_add_2_5.INJECT1_0 = "NO";
    defparam sub_27_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n2189), 
          .COUT(n2190), .S0(d8_15__N_430[1]), .S1(d8_15__N_430[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_3.INIT0 = 16'h5999;
    defparam sub_27_add_2_3.INIT1 = 16'h5999;
    defparam sub_27_add_2_3.INJECT1_0 = "NO";
    defparam sub_27_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_27_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n2189), 
          .S1(d8_15__N_430[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(113[11:20])
    defparam sub_27_add_2_1.INIT0 = 16'h0000;
    defparam sub_27_add_2_1.INIT1 = 16'h5999;
    defparam sub_27_add_2_1.INJECT1_0 = "NO";
    defparam sub_27_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2152), 
          .S0(d9_15__N_446[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_17.INIT0 = 16'h5999;
    defparam sub_28_add_2_17.INIT1 = 16'h0000;
    defparam sub_28_add_2_17.INJECT1_0 = "NO";
    defparam sub_28_add_2_17.INJECT1_1 = "NO";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1S3AX v_comb_64_rep_57 (.D(d_clk_tmp_N_478), .CK(osc_clk), .Q(osc_clk_enable_51)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_57.GSR = "ENABLED";
    CCU2D sub_28_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n2151), 
          .COUT(n2152), .S0(d9_15__N_446[13]), .S1(d9_15__N_446[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_15.INIT0 = 16'h5999;
    defparam sub_28_add_2_15.INIT1 = 16'h5999;
    defparam sub_28_add_2_15.INJECT1_0 = "NO";
    defparam sub_28_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n2150), 
          .COUT(n2151), .S0(d9_15__N_446[11]), .S1(d9_15__N_446[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_13.INIT0 = 16'h5999;
    defparam sub_28_add_2_13.INIT1 = 16'h5999;
    defparam sub_28_add_2_13.INJECT1_0 = "NO";
    defparam sub_28_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n2149), 
          .COUT(n2150), .S0(d9_15__N_446[9]), .S1(d9_15__N_446[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_11.INIT0 = 16'h5999;
    defparam sub_28_add_2_11.INIT1 = 16'h5999;
    defparam sub_28_add_2_11.INJECT1_0 = "NO";
    defparam sub_28_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n2148), 
          .COUT(n2149), .S0(d9_15__N_446[7]), .S1(d9_15__N_446[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_9.INIT0 = 16'h5999;
    defparam sub_28_add_2_9.INIT1 = 16'h5999;
    defparam sub_28_add_2_9.INJECT1_0 = "NO";
    defparam sub_28_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n2147), 
          .COUT(n2148), .S0(d9_15__N_446[5]), .S1(d9_15__N_446[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_7.INIT0 = 16'h5999;
    defparam sub_28_add_2_7.INIT1 = 16'h5999;
    defparam sub_28_add_2_7.INJECT1_0 = "NO";
    defparam sub_28_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n2146), 
          .COUT(n2147), .S0(d9_15__N_446[3]), .S1(d9_15__N_446[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_5.INIT0 = 16'h5999;
    defparam sub_28_add_2_5.INIT1 = 16'h5999;
    defparam sub_28_add_2_5.INJECT1_0 = "NO";
    defparam sub_28_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n2145), 
          .COUT(n2146), .S0(d9_15__N_446[1]), .S1(d9_15__N_446[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_3.INIT0 = 16'h5999;
    defparam sub_28_add_2_3.INIT1 = 16'h5999;
    defparam sub_28_add_2_3.INJECT1_0 = "NO";
    defparam sub_28_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_28_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n2145), 
          .S1(d9_15__N_446[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(116[11:20])
    defparam sub_28_add_2_1.INIT0 = 16'h0000;
    defparam sub_28_add_2_1.INIT1 = 16'h5999;
    defparam sub_28_add_2_1.INJECT1_0 = "NO";
    defparam sub_28_add_2_1.INJECT1_1 = "NO";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_158), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(v_comb), .CK(osc_clk), .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(v_comb), .CK(osc_clk), .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(v_comb), .CK(osc_clk), .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(v_comb), .CK(osc_clk), .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    CCU2D add_10_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1865), 
          .COUT(n1866), .S0(n95[1]), .S1(n95[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_3.INIT0 = 16'h5aaa;
    defparam add_10_3.INIT1 = 16'h5aaa;
    defparam add_10_3.INJECT1_0 = "NO";
    defparam add_10_3.INJECT1_1 = "NO";
    CCU2D add_10_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1865), 
          .S1(n95[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_1.INIT0 = 16'hF000;
    defparam add_10_1.INIT1 = 16'h5555;
    defparam add_10_1.INJECT1_0 = "NO";
    defparam add_10_1.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n1855), 
          .COUT(n1856));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_3.INIT0 = 16'h5999;
    defparam sub_29_add_2_3.INIT1 = 16'h5999;
    defparam sub_29_add_2_3.INJECT1_0 = "NO";
    defparam sub_29_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1862), 
          .S0(d10_15__N_462[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_17.INIT0 = 16'h5999;
    defparam sub_29_add_2_17.INIT1 = 16'h0000;
    defparam sub_29_add_2_17.INJECT1_0 = "NO";
    defparam sub_29_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n1861), 
          .COUT(n1862), .S0(d10_15__N_462[13]), .S1(d10_15__N_462[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_15.INIT0 = 16'h5999;
    defparam sub_29_add_2_15.INIT1 = 16'h5999;
    defparam sub_29_add_2_15.INJECT1_0 = "NO";
    defparam sub_29_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n1855));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_1.INIT0 = 16'h0000;
    defparam sub_29_add_2_1.INIT1 = 16'h5999;
    defparam sub_29_add_2_1.INJECT1_0 = "NO";
    defparam sub_29_add_2_1.INJECT1_1 = "NO";
    FD1S3AX v_comb_64_rep_58 (.D(d_clk_tmp_N_478), .CK(osc_clk), .Q(osc_clk_enable_101)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam v_comb_64_rep_58.GSR = "ENABLED";
    LUT4 i1549_2_lut (.A(d4[0]), .B(d5[0]), .Z(n69[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1549_2_lut.init = 16'h6666;
    CCU2D sub_29_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n1860), 
          .COUT(n1861), .S0(d10_15__N_462[11]), .S1(d10_15__N_462[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_13.INIT0 = 16'h5999;
    defparam sub_29_add_2_13.INIT1 = 16'h5999;
    defparam sub_29_add_2_13.INJECT1_0 = "NO";
    defparam sub_29_add_2_13.INJECT1_1 = "NO";
    CCU2D add_10_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1872), 
          .S0(n95[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_17.INIT0 = 16'h5aaa;
    defparam add_10_17.INIT1 = 16'h0000;
    defparam add_10_17.INJECT1_0 = "NO";
    defparam add_10_17.INJECT1_1 = "NO";
    CCU2D add_10_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1871), .COUT(n1872), .S0(n95[13]), .S1(n95[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_15.INIT0 = 16'h5aaa;
    defparam add_10_15.INIT1 = 16'h5aaa;
    defparam add_10_15.INJECT1_0 = "NO";
    defparam add_10_15.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n1859), 
          .COUT(n1860), .S0(d10_15__N_462[9]), .S1(d10_15__N_462[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_11.INIT0 = 16'h5999;
    defparam sub_29_add_2_11.INIT1 = 16'h5999;
    defparam sub_29_add_2_11.INJECT1_0 = "NO";
    defparam sub_29_add_2_11.INJECT1_1 = "NO";
    LUT4 i1137_2_lut_4_lut (.A(count[1]), .B(n1032), .C(count[0]), .D(n95[0]), 
         .Z(count_15__N_381[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(84[17:47])
    defparam i1137_2_lut_4_lut.init = 16'hff01;
    CCU2D sub_29_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n1858), 
          .COUT(n1859), .S1(d10_15__N_462[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_9.INIT0 = 16'h5999;
    defparam sub_29_add_2_9.INIT1 = 16'h5999;
    defparam sub_29_add_2_9.INJECT1_0 = "NO";
    defparam sub_29_add_2_9.INJECT1_1 = "NO";
    LUT4 i1550_2_lut (.A(d3[0]), .B(d4[0]), .Z(n69_adj_2152[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1550_2_lut.init = 16'h6666;
    LUT4 i1551_2_lut (.A(d2[0]), .B(d3[0]), .Z(n69_adj_2153[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1551_2_lut.init = 16'h6666;
    LUT4 i1552_2_lut (.A(d1[0]), .B(d2[0]), .Z(n69_adj_2154[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1552_2_lut.init = 16'h6666;
    LUT4 i1553_2_lut (.A(MixerOutSin_c_0), .B(d1[0]), .Z(n69_adj_2155[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1553_2_lut.init = 16'h6666;
    LUT4 i2328_3_lut (.A(n1032), .B(count[1]), .C(count[0]), .Z(n1199)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam i2328_3_lut.init = 16'h4141;
    CCU2D add_10_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1870), .COUT(n1871), .S0(n95[11]), .S1(n95[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_13.INIT0 = 16'h5aaa;
    defparam add_10_13.INIT1 = 16'h5aaa;
    defparam add_10_13.INJECT1_0 = "NO";
    defparam add_10_13.INJECT1_1 = "NO";
    FD1S3AX d_clk_65_rep_53 (.D(d_clk_tmp), .CK(osc_clk), .Q(osc_clk_derived_991)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(97[9] 128[5])
    defparam d_clk_65_rep_53.GSR = "ENABLED";
    FD1S3AX d5_281__i1 (.D(n69[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i1.GSR = "ENABLED";
    FD1S3IX count__i15 (.D(n95[15]), .CK(osc_clk), .CD(n1199), .Q(count[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=42, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=129 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(61[9] 95[5])
    defparam count__i15.GSR = "ENABLED";
    CCU2D sub_29_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n1857), 
          .COUT(n1858));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_7.INIT0 = 16'h5999;
    defparam sub_29_add_2_7.INIT1 = 16'h5999;
    defparam sub_29_add_2_7.INJECT1_0 = "NO";
    defparam sub_29_add_2_7.INJECT1_1 = "NO";
    FD1S3AX d5_281__i2 (.D(n69[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i2.GSR = "ENABLED";
    FD1S3AX d5_281__i3 (.D(n69[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i3.GSR = "ENABLED";
    FD1S3AX d5_281__i4 (.D(n69[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i4.GSR = "ENABLED";
    FD1S3AX d5_281__i5 (.D(n69[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i5.GSR = "ENABLED";
    FD1S3AX d5_281__i6 (.D(n69[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i6.GSR = "ENABLED";
    FD1S3AX d5_281__i7 (.D(n69[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i7.GSR = "ENABLED";
    FD1S3AX d5_281__i8 (.D(n69[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i8.GSR = "ENABLED";
    FD1S3AX d5_281__i9 (.D(n69[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i9.GSR = "ENABLED";
    FD1S3AX d5_281__i10 (.D(n69[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i10.GSR = "ENABLED";
    FD1S3AX d5_281__i11 (.D(n69[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i11.GSR = "ENABLED";
    FD1S3AX d5_281__i12 (.D(n69[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i12.GSR = "ENABLED";
    FD1S3AX d5_281__i13 (.D(n69[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i13.GSR = "ENABLED";
    FD1S3AX d5_281__i14 (.D(n69[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i14.GSR = "ENABLED";
    FD1S3AX d5_281__i15 (.D(n69[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(74[10:17])
    defparam d5_281__i15.GSR = "ENABLED";
    FD1S3AX d4_280__i1 (.D(n69_adj_2152[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i1.GSR = "ENABLED";
    FD1S3AX d4_280__i2 (.D(n69_adj_2152[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i2.GSR = "ENABLED";
    FD1S3AX d4_280__i3 (.D(n69_adj_2152[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i3.GSR = "ENABLED";
    FD1S3AX d4_280__i4 (.D(n69_adj_2152[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i4.GSR = "ENABLED";
    FD1S3AX d4_280__i5 (.D(n69_adj_2152[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i5.GSR = "ENABLED";
    FD1S3AX d4_280__i6 (.D(n69_adj_2152[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i6.GSR = "ENABLED";
    FD1S3AX d4_280__i7 (.D(n69_adj_2152[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i7.GSR = "ENABLED";
    FD1S3AX d4_280__i8 (.D(n69_adj_2152[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i8.GSR = "ENABLED";
    FD1S3AX d4_280__i9 (.D(n69_adj_2152[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i9.GSR = "ENABLED";
    FD1S3AX d4_280__i10 (.D(n69_adj_2152[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i10.GSR = "ENABLED";
    FD1S3AX d4_280__i11 (.D(n69_adj_2152[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i11.GSR = "ENABLED";
    FD1S3AX d4_280__i12 (.D(n69_adj_2152[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i12.GSR = "ENABLED";
    FD1S3AX d4_280__i13 (.D(n69_adj_2152[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i13.GSR = "ENABLED";
    FD1S3AX d4_280__i14 (.D(n69_adj_2152[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i14.GSR = "ENABLED";
    FD1S3AX d4_280__i15 (.D(n69_adj_2152[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(72[10:17])
    defparam d4_280__i15.GSR = "ENABLED";
    FD1S3AX d3_279__i1 (.D(n69_adj_2153[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i1.GSR = "ENABLED";
    FD1S3AX d3_279__i2 (.D(n69_adj_2153[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i2.GSR = "ENABLED";
    FD1S3AX d3_279__i3 (.D(n69_adj_2153[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i3.GSR = "ENABLED";
    FD1S3AX d3_279__i4 (.D(n69_adj_2153[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i4.GSR = "ENABLED";
    FD1S3AX d3_279__i5 (.D(n69_adj_2153[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i5.GSR = "ENABLED";
    FD1S3AX d3_279__i6 (.D(n69_adj_2153[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i6.GSR = "ENABLED";
    FD1S3AX d3_279__i7 (.D(n69_adj_2153[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i7.GSR = "ENABLED";
    FD1S3AX d3_279__i8 (.D(n69_adj_2153[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i8.GSR = "ENABLED";
    FD1S3AX d3_279__i9 (.D(n69_adj_2153[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i9.GSR = "ENABLED";
    FD1S3AX d3_279__i10 (.D(n69_adj_2153[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i10.GSR = "ENABLED";
    FD1S3AX d3_279__i11 (.D(n69_adj_2153[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i11.GSR = "ENABLED";
    FD1S3AX d3_279__i12 (.D(n69_adj_2153[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i12.GSR = "ENABLED";
    FD1S3AX d3_279__i13 (.D(n69_adj_2153[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i13.GSR = "ENABLED";
    FD1S3AX d3_279__i14 (.D(n69_adj_2153[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i14.GSR = "ENABLED";
    FD1S3AX d3_279__i15 (.D(n69_adj_2153[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(70[10:17])
    defparam d3_279__i15.GSR = "ENABLED";
    FD1S3AX d2_278__i1 (.D(n69_adj_2154[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i1.GSR = "ENABLED";
    FD1S3AX d2_278__i2 (.D(n69_adj_2154[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i2.GSR = "ENABLED";
    FD1S3AX d2_278__i3 (.D(n69_adj_2154[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i3.GSR = "ENABLED";
    FD1S3AX d2_278__i4 (.D(n69_adj_2154[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i4.GSR = "ENABLED";
    FD1S3AX d2_278__i5 (.D(n69_adj_2154[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i5.GSR = "ENABLED";
    FD1S3AX d2_278__i6 (.D(n69_adj_2154[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i6.GSR = "ENABLED";
    FD1S3AX d2_278__i7 (.D(n69_adj_2154[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i7.GSR = "ENABLED";
    FD1S3AX d2_278__i8 (.D(n69_adj_2154[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i8.GSR = "ENABLED";
    FD1S3AX d2_278__i9 (.D(n69_adj_2154[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i9.GSR = "ENABLED";
    FD1S3AX d2_278__i10 (.D(n69_adj_2154[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i10.GSR = "ENABLED";
    FD1S3AX d2_278__i11 (.D(n69_adj_2154[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i11.GSR = "ENABLED";
    FD1S3AX d2_278__i12 (.D(n69_adj_2154[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i12.GSR = "ENABLED";
    FD1S3AX d2_278__i13 (.D(n69_adj_2154[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i13.GSR = "ENABLED";
    FD1S3AX d2_278__i14 (.D(n69_adj_2154[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i14.GSR = "ENABLED";
    FD1S3AX d2_278__i15 (.D(n69_adj_2154[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(68[10:17])
    defparam d2_278__i15.GSR = "ENABLED";
    FD1S3AX d1_277__i1 (.D(n69_adj_2155[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i1.GSR = "ENABLED";
    FD1S3AX d1_277__i2 (.D(n69_adj_2155[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i2.GSR = "ENABLED";
    FD1S3AX d1_277__i3 (.D(n69_adj_2155[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i3.GSR = "ENABLED";
    FD1S3AX d1_277__i4 (.D(n69_adj_2155[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i4.GSR = "ENABLED";
    FD1S3AX d1_277__i5 (.D(n69_adj_2155[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i5.GSR = "ENABLED";
    FD1S3AX d1_277__i6 (.D(n69_adj_2155[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i6.GSR = "ENABLED";
    FD1S3AX d1_277__i7 (.D(n69_adj_2155[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i7.GSR = "ENABLED";
    FD1S3AX d1_277__i8 (.D(n69_adj_2155[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i8.GSR = "ENABLED";
    FD1S3AX d1_277__i9 (.D(n69_adj_2155[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i9.GSR = "ENABLED";
    FD1S3AX d1_277__i10 (.D(n69_adj_2155[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i10.GSR = "ENABLED";
    FD1S3AX d1_277__i11 (.D(n69_adj_2155[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i11.GSR = "ENABLED";
    FD1S3AX d1_277__i12 (.D(n69_adj_2155[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i12.GSR = "ENABLED";
    FD1S3AX d1_277__i13 (.D(n69_adj_2155[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i13.GSR = "ENABLED";
    FD1S3AX d1_277__i14 (.D(n69_adj_2155[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i14.GSR = "ENABLED";
    FD1S3AX d1_277__i15 (.D(n69_adj_2155[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(66[10:19])
    defparam d1_277__i15.GSR = "ENABLED";
    CCU2D add_10_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1869), .COUT(n1870), .S0(n95[9]), .S1(n95[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_11.INIT0 = 16'h5aaa;
    defparam add_10_11.INIT1 = 16'h5aaa;
    defparam add_10_11.INJECT1_0 = "NO";
    defparam add_10_11.INJECT1_1 = "NO";
    CCU2D sub_29_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n1856), 
          .COUT(n1857));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(119[12:21])
    defparam sub_29_add_2_5.INIT0 = 16'h5999;
    defparam sub_29_add_2_5.INIT1 = 16'h5999;
    defparam sub_29_add_2_5.INJECT1_0 = "NO";
    defparam sub_29_add_2_5.INJECT1_1 = "NO";
    CCU2D add_10_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1868), 
          .COUT(n1869), .S0(n95[7]), .S1(n95[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/cic.v(91[14:27])
    defparam add_10_9.INIT0 = 16'h5aaa;
    defparam add_10_9.INIT1 = 16'h5aaa;
    defparam add_10_9.INJECT1_0 = "NO";
    defparam add_10_9.INJECT1_1 = "NO";
    
endmodule
