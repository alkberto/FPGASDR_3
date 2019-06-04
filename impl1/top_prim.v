// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Mon Jun 03 23:42:47 2019
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            XIn, XOut, RFIn, DiffOut, PWMOut, sinGen, sin_out, 
            CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(3[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(5[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    input XIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    output XOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:13])
    output DiffOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:16])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    output sinGen;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:15])
    output sin_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:16])
    output CIC_out_clk;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(20[9:20])
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Rx_DV_c, o_Rx_Byte_c_7, 
        o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
        o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_Byte_c_0, MYLED_c_5, MixerOutSin_c_7, 
        MixerOutSin_c_6, MixerOutSin_c_5, MixerOutSin_c_4, MixerOutSin_c_3, 
        MixerOutSin_c_2, MixerOutSin_c_1, MixerOutSin_c_0, RFIn_c, DiffOut_c, 
        PWMOut_c, CIC_out_clk_c;
    wire [7:0]LOSine;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(34[12:18])
    
    wire n483, n484, MYLED_c_4, MYLED_c_3, MYLED_c_2;
    wire [7:0]DataInNoSign_7__N_2268;
    
    VHI i2 (.Z(VCC_net));
    \uart_rx(CLKS_PER_BIT=1155)  uart_rx1 (.o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .i_Rx_Serial_c(i_Rx_Serial_c), .osc_clk(osc_clk), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_DV_c(o_Rx_DV_c), .o_Rx_Byte_c_0(o_Rx_Byte_c_0), 
            .o_Rx_Byte_c_5(o_Rx_Byte_c_5), .o_Rx_Byte_c_4(o_Rx_Byte_c_4), 
            .GND_net(GND_net), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), .o_Rx_Byte_c_2(o_Rx_Byte_c_2)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(163[34] 168[2])
    Mixer Mixer1 (.DiffOut_c(DiffOut_c), .osc_clk(osc_clk), .RFIn_c(RFIn_c), 
          .LOSine({LOSine}), .MixerOutSin_c_1(MixerOutSin_c_1), .MixerOutSin_c_2(MixerOutSin_c_2), 
          .MixerOutSin_c_3(MixerOutSin_c_3), .MixerOutSin_c_4(MixerOutSin_c_4), 
          .MixerOutSin_c_5(MixerOutSin_c_5), .MixerOutSin_c_6(MixerOutSin_c_6), 
          .MixerOutSin_c_7(MixerOutSin_c_7), .MixerOutSin_c_0(MixerOutSin_c_0), 
          .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(113[7] 121[2])
    PWM PWM1 (.osc_clk(osc_clk), .\DataInNoSign_7__N_2268[0] (DataInNoSign_7__N_2268[0]), 
        .PWMOut_c(PWMOut_c), .\DataInNoSign_7__N_2268[1] (DataInNoSign_7__N_2268[1]), 
        .MYLED_c_2(MYLED_c_2), .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), 
        .n484(n484), .n483(n483), .GND_net(GND_net), .MYLED_c_5(MYLED_c_5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(143[5] 148[2])
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_DV_pad (.I(o_Rx_DV_c), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[13:20])
    OB o_Tx_Serial_pad (.I(GND_net), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[11:22])
    GSR GSR_INST (.GSR(VCC_net));
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[16:25])
    OB MYLED_pad_7 (.I(VCC_net), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_6 (.I(VCC_net), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_5 (.I(MYLED_c_5), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_4 (.I(n483), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_3 (.I(n484), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_2 (.I(MYLED_c_4), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_1 (.I(MYLED_c_3), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MYLED_pad_0 (.I(MYLED_c_2), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_c_6), .O(MixerOutSin[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_c_5), .O(MixerOutSin[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_c_4), .O(MixerOutSin[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_c_3), .O(MixerOutSin[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_c_2), .O(MixerOutSin[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_c_1), .O(MixerOutSin[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB MixerOutSin_pad_0 (.I(MixerOutSin_c_0), .O(MixerOutSin[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[15:26])
    OB XOut_pad (.I(GND_net), .O(XOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:13])
    OB DiffOut_pad (.I(DiffOut_c), .O(DiffOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(16[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[9:15])
    OB sinGen_pad (.I(GND_net), .O(sinGen));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(18[9:15])
    OB sin_out_pad (.I(VCC_net), .O(sin_out));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(19[9:16])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(20[9:20])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(5[13:24])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:13])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CIC CIC1 (.GND_net(GND_net), .osc_clk(osc_clk), .CIC_out_clk_c(CIC_out_clk_c), 
        .\DataInNoSign_7__N_2268[0] (DataInNoSign_7__N_2268[0]), .MixerOutSin_c_0(MixerOutSin_c_0), 
        .\DataInNoSign_7__N_2268[1] (DataInNoSign_7__N_2268[1]), .MYLED_c_2(MYLED_c_2), 
        .MYLED_c_3(MYLED_c_3), .MYLED_c_4(MYLED_c_4), .n484(n484), .n483(n483), 
        .MYLED_c_5(MYLED_c_5), .MixerOutSin_c_7(MixerOutSin_c_7), .MixerOutSin_c_6(MixerOutSin_c_6), 
        .MixerOutSin_c_4(MixerOutSin_c_4), .MixerOutSin_c_5(MixerOutSin_c_5), 
        .MixerOutSin_c_2(MixerOutSin_c_2), .MixerOutSin_c_3(MixerOutSin_c_3), 
        .MixerOutSin_c_1(MixerOutSin_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(123[20] 130[2])
    VLO i1 (.Z(GND_net));
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(150[5] 152[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    SinCos SinCos1 (.osc_clk(osc_clk), .VCC_net(VCC_net), .GND_net(GND_net), 
           .LOSine({LOSine})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=1155) 
//

module \uart_rx(CLKS_PER_BIT=1155)  (o_Rx_Byte_c_1, i_Rx_Serial_c, osc_clk, 
            o_Rx_Byte_c_7, o_Rx_Byte_c_6, o_Rx_DV_c, o_Rx_Byte_c_0, 
            o_Rx_Byte_c_5, o_Rx_Byte_c_4, GND_net, o_Rx_Byte_c_3, o_Rx_Byte_c_2) /* synthesis syn_module_defined=1 */ ;
    output o_Rx_Byte_c_1;
    input i_Rx_Serial_c;
    input osc_clk;
    output o_Rx_Byte_c_7;
    output o_Rx_Byte_c_6;
    output o_Rx_DV_c;
    output o_Rx_Byte_c_0;
    output o_Rx_Byte_c_5;
    output o_Rx_Byte_c_4;
    input GND_net;
    output o_Rx_Byte_c_3;
    output o_Rx_Byte_c_2;
    
    wire [2:0]UartClk /* synthesis SET_AS_NETWORK=\uart_rx1/UartClk[2], is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(42[14:21])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire UartClk_2_enable_1, r_Rx_Data;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(48[17:26])
    
    wire n1507, n1669;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(44[18:31])
    
    wire UartClk_2_enable_27, n746;
    wire [15:0]n69;
    
    wire n1633, r_Rx_Data_R;
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(45[17:28])
    
    wire UartClk_2_enable_15, n1511;
    wire [2:0]r_SM_Main_2__N_2318;
    
    wire n1538, n1505, n936, n1521, n1670, n1631, n1667, n1671, 
        o_Rx_DV_N_2367, n1390, n8, n1492;
    wire [2:0]n30;
    wire [2:0]n17;
    
    wire n6, n6_adj_2422, n955, n1666, UartClk_2_enable_17, UartClk_2_enable_21, 
        UartClk_2_enable_20, UartClk_2_enable_16, n1510, n6_adj_2423, 
        n1632, UartClk_2_enable_25, n4, UartClk_2_enable_18, n1668, 
        n952, n1540, UartClk_2_enable_19, n1536, n1363, n1362, n1361, 
        n1360, n1359, n1358, n1357, n1356, UartClk_2_enable_28;
    
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(UartClk_2_enable_1), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n1669), .CK(UartClk[2]), .CD(n1507), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i10 (.D(n69[10]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i10.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n1633), .CK(UartClk[2]), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_52 (.D(i_Rx_Serial_c), .CK(UartClk[2]), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[12] 71[8])
    defparam r_Rx_Data_R_52.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_53 (.D(r_Rx_Data_R), .CK(UartClk[2]), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[12] 71[8])
    defparam r_Rx_Data_53.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i0 (.D(n69[0]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i0.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n1511), .SP(UartClk_2_enable_15), .CK(UartClk[2]), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i9 (.D(n69[9]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i8 (.D(n69[8]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i7 (.D(n69[7]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i6 (.D(n69[6]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i5 (.D(n69[5]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i4 (.D(n69[4]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i3 (.D(n69[3]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i3.GSR = "ENABLED";
    LUT4 i978_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_2318[0]), .C(r_SM_Main[0]), 
         .Z(n1538)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i978_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX r_Clock_Count_150__i2 (.D(n69[2]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i1 (.D(n69[1]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1505), .SP(UartClk_2_enable_15), .CK(UartClk[2]), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_10 (.A(n936), .B(n1521), .Z(n1669)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i1_2_lut_rep_10.init = 16'heeee;
    LUT4 r_SM_Main_2__N_2318_0__bdd_3_lut_1062_4_lut (.A(n936), .B(n1521), 
         .C(r_SM_Main[0]), .D(n1670), .Z(n1631)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam r_SM_Main_2__N_2318_0__bdd_3_lut_1062_4_lut.init = 16'h1e10;
    LUT4 i736_2_lut_rep_8_3_lut (.A(n936), .B(n1521), .C(r_SM_Main[1]), 
         .Z(n1667)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i736_2_lut_rep_8_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n936), .B(n1521), .C(n1671), .D(r_SM_Main[0]), 
         .Z(o_Rx_DV_N_2367)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i1_4_lut (.A(r_Clock_Count[7]), .B(n1390), .C(n8), .D(n1492), 
         .Z(r_SM_Main_2__N_2318[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[9]), .C(r_Clock_Count[6]), 
         .Z(n1390)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i3_3_lut (.A(n1521), .B(r_Clock_Count[10]), .C(r_Clock_Count[8]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i800_2_lut (.A(n30[1]), .B(n30[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam i800_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[12]), .C(r_Clock_Count[13]), 
         .D(n6), .Z(n1521)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_4 (.A(r_Clock_Count[5]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(n6_adj_2422), .Z(n1492)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i4_4_lut_adj_4.init = 16'hfffe;
    LUT4 i1_2_lut_adj_5 (.A(r_Clock_Count[4]), .B(r_Clock_Count[1]), .Z(n6_adj_2422)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(143[17:47])
    defparam i1_2_lut_adj_5.init = 16'heeee;
    LUT4 i807_3_lut (.A(UartClk[2]), .B(n30[1]), .C(n30[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam i807_3_lut.init = 16'h6a6a;
    LUT4 i724_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(r_Clock_Count[8]), 
         .D(n955), .Z(n936)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i724_4_lut.init = 16'hccc8;
    LUT4 i741_3_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n1492), 
         .Z(n955)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(44[18:31])
    defparam i741_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_12 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .Z(n1671)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(77[7] 168[14])
    defparam i1_2_lut_rep_12.init = 16'h2222;
    LUT4 i1036_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n1507)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(77[7] 168[14])
    defparam i1036_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1053_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_17)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1053_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i1048_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_21)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1048_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1050_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(n1666), .D(r_Bit_Index[1]), .Z(UartClk_2_enable_20)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1050_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1055_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), 
         .C(n1666), .D(r_Bit_Index[1]), .Z(UartClk_2_enable_16)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1055_2_lut_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[0]), .B(n1667), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(n1510)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0440;
    LUT4 i2_3_lut_rep_7_4_lut (.A(r_SM_Main[1]), .B(n1669), .C(r_SM_Main[0]), 
         .D(r_SM_Main[2]), .Z(n1666)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_7_4_lut.init = 16'hfff7;
    LUT4 i1028_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6_adj_2423), 
         .D(r_SM_Main[0]), .Z(UartClk_2_enable_27)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(77[7] 168[14])
    defparam i1028_4_lut.init = 16'h4555;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_2318[0]), .Z(n6_adj_2423)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_6 (.A(r_SM_Main[2]), .B(n1538), .C(n1669), .D(r_SM_Main[1]), 
         .Z(n746)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_6.init = 16'h5011;
    FD1S3AX UartClk_148__i0 (.D(n17[0]), .CK(osc_clk), .Q(n30[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam UartClk_148__i0.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n1669), .B(r_SM_Main[2]), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(UartClk_2_enable_15)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;
    defparam i2_4_lut.init = 16'h0023;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(r_SM_Main[1]), .B(n1669), .C(r_Bit_Index[0]), 
         .D(r_SM_Main[0]), .Z(n1511)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0008;
    FD1P3AX r_Bit_Index_i1 (.D(n1510), .SP(UartClk_2_enable_15), .CK(UartClk[2]), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(UartClk_2_enable_16), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    LUT4 r_SM_Main_2__N_2318_0__bdd_3_lut (.A(r_SM_Main_2__N_2318[0]), .B(r_Rx_Data), 
         .C(r_SM_Main[0]), .Z(n1632)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam r_SM_Main_2__N_2318_0__bdd_3_lut.init = 16'ha3a3;
    LUT4 i1045_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_25)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1045_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i1039_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_1)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1039_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_rep_11_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n1670)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(127[36:54])
    defparam i2_2_lut_rep_11_3_lut.init = 16'h8080;
    LUT4 i798_1_lut (.A(n30[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam i798_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_2_lut_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(127[36:54])
    defparam i1_3_lut_2_lut_3_lut.init = 16'h7878;
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(UartClk_2_enable_17), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_55 (.D(o_Rx_DV_N_2367), .SP(UartClk_2_enable_18), .CK(UartClk[2]), 
            .Q(o_Rx_DV_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_DV_55.GSR = "ENABLED";
    LUT4 r_SM_Main_2__I_0_59_Mux_1_i3_4_lut_4_lut (.A(n1669), .B(r_SM_Main[0]), 
         .C(n1668), .D(r_SM_Main[1]), .Z(n952)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_59_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    FD1S3IX r_SM_Main_i1 (.D(n952), .CK(UartClk[2]), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i26_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(n1540), .Z(UartClk_2_enable_18)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i26_4_lut.init = 16'h2505;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(UartClk_2_enable_19), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i980_3_lut (.A(r_Clock_Count[13]), .B(n1536), .C(r_Clock_Count[12]), 
         .Z(n1540)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i980_3_lut.init = 16'hfefe;
    LUT4 i976_4_lut (.A(n936), .B(r_Clock_Count[15]), .C(r_Clock_Count[14]), 
         .D(r_Clock_Count[11]), .Z(n1536)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i976_4_lut.init = 16'hfffe;
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(UartClk_2_enable_20), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(UartClk_2_enable_21), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    CCU2D r_Clock_Count_150_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1363), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_150_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1362), .COUT(n1363), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1361), .COUT(n1362), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1360), .COUT(n1361), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1359), .COUT(n1360), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1358), .COUT(n1359), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1357), .COUT(n1358), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1356), .COUT(n1357), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_150_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_150_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1356), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_150_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_150_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_150_add_4_1.INJECT1_1 = "NO";
    LUT4 i1023_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_19)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1023_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1042_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[1]), .D(n1666), .Z(UartClk_2_enable_28)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(122[17:39])
    defparam i1042_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_4_lut (.A(n1669), .B(r_SM_Main[0]), .C(n4), .D(r_SM_Main[1]), 
         .Z(n1505)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h2000;
    LUT4 i974_2_lut_rep_9 (.A(r_Rx_Data), .B(r_SM_Main_2__N_2318[0]), .Z(n1668)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i974_2_lut_rep_9.init = 16'heeee;
    PFUMX i1063 (.BLUT(n1632), .ALUT(n1631), .C0(r_SM_Main[1]), .Z(n1633));
    FD1S3AX UartClk_148__i1 (.D(n17[1]), .CK(osc_clk), .Q(n30[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam UartClk_148__i1.GSR = "ENABLED";
    FD1S3AX UartClk_148__i2 (.D(n17[2]), .CK(osc_clk), .Q(UartClk[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(60[15:29])
    defparam UartClk_148__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i15 (.D(n69[15]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i14 (.D(n69[14]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i13 (.D(n69[13]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i13.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(UartClk_2_enable_25), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i12 (.D(n69[12]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_150__i11 (.D(n69[11]), .SP(UartClk_2_enable_27), 
            .CD(n746), .CK(UartClk[2]), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(145[34:54])
    defparam r_Clock_Count_150__i11.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(UartClk_2_enable_28), .CK(UartClk[2]), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=4, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=168 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(74[10] 169[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (DiffOut_c, osc_clk, RFIn_c, LOSine, MixerOutSin_c_1, 
            MixerOutSin_c_2, MixerOutSin_c_3, MixerOutSin_c_4, MixerOutSin_c_5, 
            MixerOutSin_c_6, MixerOutSin_c_7, MixerOutSin_c_0, GND_net) /* synthesis syn_module_defined=1 */ ;
    output DiffOut_c;
    input osc_clk;
    input RFIn_c;
    input [7:0]LOSine;
    output MixerOutSin_c_1;
    output MixerOutSin_c_2;
    output MixerOutSin_c_3;
    output MixerOutSin_c_4;
    output MixerOutSin_c_5;
    output MixerOutSin_c_6;
    output MixerOutSin_c_7;
    output MixerOutSin_c_0;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_83;
    wire [7:0]MixerOutSin_7__N_67;
    
    wire n1355, n1354, n1353, n1352;
    
    FD1S3AY RFInR_14 (.D(RFInR1), .CK(osc_clk), .Q(DiffOut_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR_14.GSR = "ENABLED";
    FD1S3AY RFInR1_13 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(22[8] 25[25])
    defparam RFInR1_13.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i1_3_lut (.A(LOSine[0]), .B(MixerOutSin_7__N_83[0]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i1_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i2 (.D(MixerOutSin_7__N_67[1]), .CK(osc_clk), .Q(MixerOutSin_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i2.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i2_3_lut (.A(LOSine[1]), .B(MixerOutSin_7__N_83[1]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i2_3_lut.init = 16'hcaca;
    FD1S3AX MixerOutSin_i3 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i3.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i4 (.D(MixerOutSin_7__N_67[3]), .CK(osc_clk), .Q(MixerOutSin_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i4.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i5 (.D(MixerOutSin_7__N_67[4]), .CK(osc_clk), .Q(MixerOutSin_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i5.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i6 (.D(MixerOutSin_7__N_67[5]), .CK(osc_clk), .Q(MixerOutSin_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i6.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[6]), .CK(osc_clk), .Q(MixerOutSin_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i8 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i8.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i1 (.D(MixerOutSin_7__N_67[0]), .CK(osc_clk), .Q(MixerOutSin_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=113, LSE_RLINE=121 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(29[8] 42[5])
    defparam MixerOutSin_i1.GSR = "ENABLED";
    LUT4 MixerOutSin_7__I_0_i3_3_lut (.A(LOSine[2]), .B(MixerOutSin_7__N_83[2]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i4_3_lut (.A(LOSine[3]), .B(MixerOutSin_7__N_83[3]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i5_3_lut (.A(LOSine[4]), .B(MixerOutSin_7__N_83[4]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i5_3_lut.init = 16'hcaca;
    CCU2D unary_minus_6_add_3_9 (.A0(LOSine[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1355), .S0(MixerOutSin_7__N_83[7]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_9.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_9.INIT1 = 16'h0000;
    defparam unary_minus_6_add_3_9.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_9.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_7 (.A0(LOSine[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1354), .COUT(n1355), .S0(MixerOutSin_7__N_83[5]), 
          .S1(MixerOutSin_7__N_83[6]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_7.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_7.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_7.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_7.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_5 (.A0(LOSine[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1353), .COUT(n1354), .S0(MixerOutSin_7__N_83[3]), 
          .S1(MixerOutSin_7__N_83[4]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_5.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_5.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_5.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_5.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_3 (.A0(LOSine[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1352), .COUT(n1353), .S0(MixerOutSin_7__N_83[1]), 
          .S1(MixerOutSin_7__N_83[2]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_3.INIT0 = 16'hf555;
    defparam unary_minus_6_add_3_3.INIT1 = 16'hf555;
    defparam unary_minus_6_add_3_3.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_3.INJECT1_1 = "NO";
    CCU2D unary_minus_6_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(LOSine[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1352), .S1(MixerOutSin_7__N_83[0]));   // c:/users/user/lattice/fpgasdr/mixer.v(38[20:27])
    defparam unary_minus_6_add_3_1.INIT0 = 16'hF000;
    defparam unary_minus_6_add_3_1.INIT1 = 16'h0aaa;
    defparam unary_minus_6_add_3_1.INJECT1_0 = "NO";
    defparam unary_minus_6_add_3_1.INJECT1_1 = "NO";
    LUT4 MixerOutSin_7__I_0_i6_3_lut (.A(LOSine[5]), .B(MixerOutSin_7__N_83[5]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i7_3_lut (.A(LOSine[6]), .B(MixerOutSin_7__N_83[6]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 MixerOutSin_7__I_0_i8_3_lut (.A(LOSine[7]), .B(MixerOutSin_7__N_83[7]), 
         .C(DiffOut_c), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(37[5] 41[8])
    defparam MixerOutSin_7__I_0_i8_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (osc_clk, \DataInNoSign_7__N_2268[0] , PWMOut_c, \DataInNoSign_7__N_2268[1] , 
            MYLED_c_2, MYLED_c_3, MYLED_c_4, n484, n483, GND_net, 
            MYLED_c_5) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input \DataInNoSign_7__N_2268[0] ;
    output PWMOut_c;
    input \DataInNoSign_7__N_2268[1] ;
    input MYLED_c_2;
    input MYLED_c_3;
    input MYLED_c_4;
    input n484;
    input n483;
    input GND_net;
    input MYLED_c_5;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    wire [7:0]DataInNoSign;   // c:/users/user/lattice/fpgasdr/pwm.v(9[11:23])
    
    wire osc_clk_enable_577, PWMOut_N_2277, n1577, n1578, n1563, n1675, 
        n1560, n12, n4;
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    
    wire n1672, n6, n1673, n1674;
    wire [7:0]n37;
    
    wire n14, n10, n10_adj_2421, n1590, n1549;
    wire [7:0]n306;
    
    wire n1367, n1366, n1365, n1364;
    
    FD1P3AX DataInNoSign_i0_i0 (.D(\DataInNoSign_7__N_2268[0] ), .SP(osc_clk_enable_577), 
            .CK(osc_clk), .Q(DataInNoSign[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i0.GSR = "ENABLED";
    FD1S3AX PWMOut_15 (.D(PWMOut_N_2277), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    PFUMX DataInNoSign_7__I_0_i16 (.BLUT(n1577), .ALUT(n1578), .C0(n1563), 
          .Z(PWMOut_N_2277)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;
    LUT4 i1016_1_lut_4_lut_4_lut (.A(n1675), .B(n1560), .C(n12), .D(n4), 
         .Z(n1578)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1016_1_lut_4_lut_4_lut.init = 16'h0b4f;
    LUT4 DataInNoSign_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInNoSign[1]), 
         .D(DataInNoSign[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 DataInNoSign_7__I_0_i9_2_lut_rep_13 (.A(DataInNoSign[4]), .B(counter[4]), 
         .Z(n1672)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i9_2_lut_rep_13.init = 16'h6666;
    LUT4 i1015_1_lut_3_lut_3_lut (.A(DataInNoSign[4]), .B(counter[4]), .C(n6), 
         .Z(n1577)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1015_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 DataInNoSign_7__I_0_i11_2_lut_rep_14 (.A(DataInNoSign[5]), .B(counter[5]), 
         .Z(n1673)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i11_2_lut_rep_14.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i13_2_lut_rep_15 (.A(DataInNoSign[6]), .B(counter[6]), 
         .Z(n1674)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i13_2_lut_rep_15.init = 16'h6666;
    LUT4 i999_2_lut_3_lut_4_lut (.A(DataInNoSign[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInNoSign[5]), .Z(n1560)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i999_2_lut_3_lut_4_lut.init = 16'h9009;
    FD1S3AX counter_147__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i0.GSR = "ENABLED";
    LUT4 i1033_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[6]), 
         .Z(osc_clk_enable_577)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i1033_4_lut.init = 16'h0001;
    LUT4 i6_4_lut (.A(counter[3]), .B(counter[1]), .C(counter[5]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(24[7:19])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 DataInNoSign_7__I_0_i10_3_lut_3_lut (.A(DataInNoSign[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10_adj_2421)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInNoSign_7__I_0_i15_2_lut_rep_16 (.A(DataInNoSign[7]), .B(counter[7]), 
         .Z(n1675)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i15_2_lut_rep_16.init = 16'h6666;
    LUT4 DataInNoSign_7__I_0_i12_3_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), 
         .C(n10_adj_2421), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1030_2_lut_3_lut (.A(DataInNoSign[7]), .B(counter[7]), .C(n1590), 
         .Z(n1563)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1030_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i1029_4_lut (.A(n1674), .B(n1673), .C(n1672), .D(n1549), .Z(n1590)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i1029_4_lut.init = 16'hefee;
    LUT4 i988_3_lut_4_lut (.A(DataInNoSign[3]), .B(counter[3]), .C(counter[2]), 
         .D(DataInNoSign[2]), .Z(n1549)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam i988_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInNoSign_7__I_0_i6_3_lut_3_lut (.A(DataInNoSign[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(29[7:31])
    defparam DataInNoSign_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX DataInNoSign_i0_i1 (.D(\DataInNoSign_7__N_2268[1] ), .SP(osc_clk_enable_577), 
            .CK(osc_clk), .Q(DataInNoSign[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i1.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i2 (.D(MYLED_c_2), .SP(osc_clk_enable_577), 
            .CK(osc_clk), .Q(DataInNoSign[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i3 (.D(MYLED_c_3), .SP(osc_clk_enable_577), 
            .CK(osc_clk), .Q(DataInNoSign[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i4 (.D(MYLED_c_4), .SP(osc_clk_enable_577), 
            .CK(osc_clk), .Q(DataInNoSign[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i5 (.D(n484), .SP(osc_clk_enable_577), .CK(osc_clk), 
            .Q(DataInNoSign[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i6 (.D(n483), .SP(osc_clk_enable_577), .CK(osc_clk), 
            .Q(DataInNoSign[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInNoSign_i0_i7 (.D(n306[7]), .SP(osc_clk_enable_577), .CK(osc_clk), 
            .Q(DataInNoSign[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=148 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(21[8] 33[5])
    defparam DataInNoSign_i0_i7.GSR = "ENABLED";
    CCU2D counter_147_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1367), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_147_add_4_9.INIT1 = 16'h0000;
    defparam counter_147_add_4_9.INJECT1_0 = "NO";
    defparam counter_147_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_147_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1366), .COUT(n1367), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_147_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_147_add_4_7.INJECT1_0 = "NO";
    defparam counter_147_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_147_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1365), .COUT(n1366), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_147_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_147_add_4_5.INJECT1_0 = "NO";
    defparam counter_147_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_147_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1364), .COUT(n1365), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_147_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_147_add_4_3.INJECT1_0 = "NO";
    defparam counter_147_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_147_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1364), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147_add_4_1.INIT0 = 16'hF000;
    defparam counter_147_add_4_1.INIT1 = 16'h0555;
    defparam counter_147_add_4_1.INJECT1_0 = "NO";
    defparam counter_147_add_4_1.INJECT1_1 = "NO";
    LUT4 i258_1_lut (.A(MYLED_c_5), .Z(n306[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(27[4:33])
    defparam i258_1_lut.init = 16'h5555;
    FD1S3AX counter_147__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i1.GSR = "ENABLED";
    FD1S3AX counter_147__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i2.GSR = "ENABLED";
    FD1S3AX counter_147__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i3.GSR = "ENABLED";
    FD1S3AX counter_147__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i4.GSR = "ENABLED";
    FD1S3AX counter_147__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i5.GSR = "ENABLED";
    FD1S3AX counter_147__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i6.GSR = "ENABLED";
    FD1S3AX counter_147__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(23[14:29])
    defparam counter_147__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CIC
//

module CIC (GND_net, osc_clk, CIC_out_clk_c, \DataInNoSign_7__N_2268[0] , 
            MixerOutSin_c_0, \DataInNoSign_7__N_2268[1] , MYLED_c_2, MYLED_c_3, 
            MYLED_c_4, n484, n483, MYLED_c_5, MixerOutSin_c_7, MixerOutSin_c_6, 
            MixerOutSin_c_4, MixerOutSin_c_5, MixerOutSin_c_2, MixerOutSin_c_3, 
            MixerOutSin_c_1) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output CIC_out_clk_c;
    output \DataInNoSign_7__N_2268[0] ;
    input MixerOutSin_c_0;
    output \DataInNoSign_7__N_2268[1] ;
    output MYLED_c_2;
    output MYLED_c_3;
    output MYLED_c_4;
    output n484;
    output n483;
    output MYLED_c_5;
    input MixerOutSin_c_7;
    input MixerOutSin_c_6;
    input MixerOutSin_c_4;
    input MixerOutSin_c_5;
    input MixerOutSin_c_2;
    input MixerOutSin_c_3;
    input MixerOutSin_c_1;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire n1079;
    wire [63:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(46[24:26])
    wire [63:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(46[28:32])
    wire [63:0]n1437;
    
    wire n1080, n1078, n1082, n1083, n1077, n1076, n1075;
    wire [63:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(38[24:26])
    wire [63:0]d2_63__N_1213;
    
    wire n1074;
    wire [63:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(39[24:26])
    wire [63:0]d3_63__N_1277;
    wire [63:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(40[24:26])
    wire [63:0]d4_63__N_1341;
    wire [63:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(41[24:26])
    wire [63:0]d5_63__N_1405;
    wire [63:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(32[24:29])
    
    wire osc_clk_enable_59, osc_clk_enable_98;
    wire [63:0]n1;
    
    wire n1073, d_clk_tmp, n724, v_comb;
    wire [63:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(47[24:26])
    wire [63:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(48[24:26])
    wire [63:0]n1502;
    
    wire n1072, n1071, n1070, n1069, n1068, n1067, n1066;
    wire [63:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(45[28:32])
    wire [63:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(45[24:26])
    wire [63:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(47[28:32])
    wire [63:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(48[28:32])
    wire [63:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(49[24:27])
    wire [63:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(32[31:38])
    wire [63:0]n1567;
    wire [63:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(37[24:26])
    wire [63:0]d1_63__N_1149;
    
    wire n1027, n1028, n1065, n1064, n1063;
    wire [63:0]n2;
    
    wire n1062;
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(52[12:17])
    
    wire n26, n22, d_clk_tmp_N_2217, n24, n18, n25, n23, n24_adj_2371, 
        n22_adj_2372, n1031, n1032, n1030, n1033, n1034, n1035, 
        n1041, n1042, n1046, n1047, n1049, n1050, n1029;
    wire [13:0]n61;
    
    wire n1051, n1052, n1048, n1081, n1061, n1060, osc_clk_enable_148, 
        osc_clk_enable_198, osc_clk_enable_248, osc_clk_enable_298, osc_clk_enable_348, 
        osc_clk_enable_398, osc_clk_enable_448, osc_clk_enable_498, osc_clk_enable_548, 
        osc_clk_enable_605, n1059, n1374, n1373, n1372, n1371, n1370, 
        n1369, n1368, n1351, n1350, n1349, n1348, n1347, n1346, 
        n1345, n1344, n1343, n1342, n1341, n1340, n1339, n1338, 
        n1337, n1336, n1335, n1334, n1333, n1332, n1331, n1330, 
        n1329, n1328, n1327, n1326, n1325, n1324, n1323, n1322, 
        n1321, n1320, n1318, n1317, n1316, n1315, n1314, n1313, 
        n1312, n1311, n1310, n1309, n1308, n1307, n1306, n1305, 
        n1304, n1303, n1302, n1301, n1300, n1299, n1298, n1297, 
        n1296, n1295, n1294, n1293, n1292, n1291, n1290, n1289, 
        n1288, n1285, n1284, n1283, n1282, n1281, n1280, n1279, 
        n1278, n1277, n1276, n1275, n1274, n1273, n1272, n1271, 
        n1270, n1269, n1268, n1267, n1266, n1265, n1264, n1263, 
        n1262, n1261, n1260, n1259, n1258, n1257, n1256, n1255, 
        n1252, n1251, n1250, n1249, n1248, n1247, n1246, n1245, 
        n1244, n1243, n1242, n1241, n1240, n1239, n1238, n1237, 
        n1236, n1235, n1234, n1233, n1232, n1231, n1230, n1229, 
        n1228, n1227, n1226, n1225, n1224, n1223, n1222, n1219, 
        n1218, n1217, n1216, n1215, n1214, n1213, n1212, n1211, 
        n1210, n1209, n1208, n1207, n1206, n1205, n1204, n1203, 
        n1202, n1201, n1200, n1199, n1198, n1197, n1196, n1195, 
        n1194, n1193, n1192, n1191, n1190, n1189, n1186, n1185, 
        n1184, n1183, n1182, n1181, n1180, n1179, n1178, n1177, 
        n1176, n1175, n1174, n1173, n1172, n1171, n1170, n1169, 
        n1168, n1167, n1166, n1165, n1164, n1163, n1162, n1161, 
        n1160, n1159, n1158, n1157, n1156, n1154, n1153, n1152, 
        n1151, n1150, n1149, n1148, n1147, n1146, n1145, n1144, 
        n1143, n1142, n1141, n1140, n1139, n1138, n1137, n1136, 
        n1135, n1134, n1133, n1132, n1131, n1130, n1129, n1128, 
        n1127, n1126, n1125, n1124, n1123, n1122, n1121, n1120, 
        n1119, n1118, n1117, n1116, n1115, n1114, n1113, n1112, 
        n1111, n1110, n1109, n1108, n1107, n1106, n1105, n1104, 
        n1103, n1102, n1101, n1100, n1099, n1098, n1097, n1096, 
        n1095, n1094, n1093, n1092, n1091, n1090, n1089, n1088, 
        n1087, n1086, n1084, n1045, n1044, n1043, n1040, n1039, 
        n1058, n1038, n1057, n1037, n1085, n1036, n1056, n1055, 
        n1054, n1053;
    
    CCU2D sub_38_add_2_43 (.A0(d7[41]), .B0(d_d7[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[42]), .B1(d_d7[42]), .C1(GND_net), .D1(GND_net), .CIN(n1079), 
          .COUT(n1080), .S0(n1437[41]), .S1(n1437[42]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_43.INIT0 = 16'h5999;
    defparam sub_38_add_2_43.INIT1 = 16'h5999;
    defparam sub_38_add_2_43.INJECT1_0 = "NO";
    defparam sub_38_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_41 (.A0(d7[39]), .B0(d_d7[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[40]), .B1(d_d7[40]), .C1(GND_net), .D1(GND_net), .CIN(n1078), 
          .COUT(n1079), .S0(n1437[39]), .S1(n1437[40]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_41.INIT0 = 16'h5999;
    defparam sub_38_add_2_41.INIT1 = 16'h5999;
    defparam sub_38_add_2_41.INJECT1_0 = "NO";
    defparam sub_38_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_49 (.A0(d7[47]), .B0(d_d7[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[48]), .B1(d_d7[48]), .C1(GND_net), .D1(GND_net), .CIN(n1082), 
          .COUT(n1083), .S0(n1437[47]), .S1(n1437[48]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_49.INIT0 = 16'h5999;
    defparam sub_38_add_2_49.INIT1 = 16'h5999;
    defparam sub_38_add_2_49.INJECT1_0 = "NO";
    defparam sub_38_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_39 (.A0(d7[37]), .B0(d_d7[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[38]), .B1(d_d7[38]), .C1(GND_net), .D1(GND_net), .CIN(n1077), 
          .COUT(n1078), .S0(n1437[37]), .S1(n1437[38]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_39.INIT0 = 16'h5999;
    defparam sub_38_add_2_39.INIT1 = 16'h5999;
    defparam sub_38_add_2_39.INJECT1_0 = "NO";
    defparam sub_38_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n1076), 
          .COUT(n1077), .S0(n1437[35]), .S1(n1437[36]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_37.INIT0 = 16'h5999;
    defparam sub_38_add_2_37.INIT1 = 16'h5999;
    defparam sub_38_add_2_37.INJECT1_0 = "NO";
    defparam sub_38_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n1075), 
          .COUT(n1076), .S0(n1437[33]), .S1(n1437[34]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_35.INIT0 = 16'h5999;
    defparam sub_38_add_2_35.INIT1 = 16'h5999;
    defparam sub_38_add_2_35.INJECT1_0 = "NO";
    defparam sub_38_add_2_35.INJECT1_1 = "NO";
    FD1S3AX d2_i0 (.D(d2_63__N_1213[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i0.GSR = "ENABLED";
    CCU2D sub_38_add_2_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n1074), 
          .COUT(n1075), .S0(n1437[31]), .S1(n1437[32]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_33.INIT0 = 16'h5999;
    defparam sub_38_add_2_33.INIT1 = 16'h5999;
    defparam sub_38_add_2_33.INJECT1_0 = "NO";
    defparam sub_38_add_2_33.INJECT1_1 = "NO";
    FD1S3AX d3_i0 (.D(d3_63__N_1277[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i0.GSR = "ENABLED";
    FD1S3AX d4_i0 (.D(d4_63__N_1341[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_63__N_1405[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n1[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    CCU2D sub_38_add_2_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n1073), 
          .COUT(n1074), .S0(n1437[29]), .S1(n1437[30]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_31.INIT0 = 16'h5999;
    defparam sub_38_add_2_31.INIT1 = 16'h5999;
    defparam sub_38_add_2_31.INJECT1_0 = "NO";
    defparam sub_38_add_2_31.INJECT1_1 = "NO";
    FD1S3JX d_clk_tmp_86 (.D(n724), .CK(osc_clk), .PD(osc_clk_enable_59), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_clk_tmp_86.GSR = "ENABLED";
    FD1S3AX v_comb_87 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87.GSR = "ENABLED";
    FD1S3AX d_clk_88 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_clk_88.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(n1437[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(n1502[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    CCU2D sub_38_add_2_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n1072), 
          .COUT(n1073), .S0(n1437[27]), .S1(n1437[28]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_29.INIT0 = 16'h5999;
    defparam sub_38_add_2_29.INIT1 = 16'h5999;
    defparam sub_38_add_2_29.INJECT1_0 = "NO";
    defparam sub_38_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n1071), 
          .COUT(n1072), .S0(n1437[25]), .S1(n1437[26]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_27.INIT0 = 16'h5999;
    defparam sub_38_add_2_27.INIT1 = 16'h5999;
    defparam sub_38_add_2_27.INJECT1_0 = "NO";
    defparam sub_38_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n1070), 
          .COUT(n1071), .S0(n1437[23]), .S1(n1437[24]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_25.INIT0 = 16'h5999;
    defparam sub_38_add_2_25.INIT1 = 16'h5999;
    defparam sub_38_add_2_25.INJECT1_0 = "NO";
    defparam sub_38_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n1069), 
          .COUT(n1070), .S0(n1437[21]), .S1(n1437[22]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_23.INIT0 = 16'h5999;
    defparam sub_38_add_2_23.INIT1 = 16'h5999;
    defparam sub_38_add_2_23.INJECT1_0 = "NO";
    defparam sub_38_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n1068), 
          .COUT(n1069), .S0(n1437[19]), .S1(n1437[20]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_21.INIT0 = 16'h5999;
    defparam sub_38_add_2_21.INIT1 = 16'h5999;
    defparam sub_38_add_2_21.INJECT1_0 = "NO";
    defparam sub_38_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n1067), 
          .COUT(n1068), .S0(n1437[17]), .S1(n1437[18]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_19.INIT0 = 16'h5999;
    defparam sub_38_add_2_19.INIT1 = 16'h5999;
    defparam sub_38_add_2_19.INJECT1_0 = "NO";
    defparam sub_38_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n1066), 
          .COUT(n1067), .S0(n1437[15]), .S1(n1437[16]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_17.INIT0 = 16'h5999;
    defparam sub_38_add_2_17.INIT1 = 16'h5999;
    defparam sub_38_add_2_17.INJECT1_0 = "NO";
    defparam sub_38_add_2_17.INJECT1_1 = "NO";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[56]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2268[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n1567[56]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d10[56]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i1.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_63__N_1149[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i0.GSR = "ENABLED";
    CCU2D sub_39_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n1027), 
          .COUT(n1028), .S0(n1502[1]), .S1(n1502[2]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_3.INIT0 = 16'h5999;
    defparam sub_39_add_2_3.INIT1 = 16'h5999;
    defparam sub_39_add_2_3.INJECT1_0 = "NO";
    defparam sub_39_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n1065), 
          .COUT(n1066), .S0(n1437[13]), .S1(n1437[14]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_15.INIT0 = 16'h5999;
    defparam sub_38_add_2_15.INIT1 = 16'h5999;
    defparam sub_38_add_2_15.INJECT1_0 = "NO";
    defparam sub_38_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n1064), 
          .COUT(n1065), .S0(n1437[11]), .S1(n1437[12]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_13.INIT0 = 16'h5999;
    defparam sub_38_add_2_13.INIT1 = 16'h5999;
    defparam sub_38_add_2_13.INJECT1_0 = "NO";
    defparam sub_38_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n1063), 
          .COUT(n1064), .S0(n1437[9]), .S1(n1437[10]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_11.INIT0 = 16'h5999;
    defparam sub_38_add_2_11.INIT1 = 16'h5999;
    defparam sub_38_add_2_11.INJECT1_0 = "NO";
    defparam sub_38_add_2_11.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i0 (.D(n2[0]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    CCU2D sub_38_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n1062), 
          .COUT(n1063), .S0(n1437[7]), .S1(n1437[8]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_9.INIT0 = 16'h5999;
    defparam sub_38_add_2_9.INIT1 = 16'h5999;
    defparam sub_38_add_2_9.INJECT1_0 = "NO";
    defparam sub_38_add_2_9.INJECT1_1 = "NO";
    LUT4 i13_4_lut_rep_18 (.A(count[7]), .B(n26), .C(n22), .D(count[12]), 
         .Z(osc_clk_enable_59)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut_rep_18.init = 16'h8000;
    LUT4 i817_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_63__N_1405[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i817_2_lut.init = 16'h6666;
    LUT4 i13_4_lut (.A(count[7]), .B(n26), .C(n22), .D(count[12]), .Z(d_clk_tmp_N_2217)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13_4_lut.init = 16'h8000;
    LUT4 i12_4_lut (.A(count[9]), .B(n24), .C(n18), .D(count[5]), .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i8_4_lut (.A(count[13]), .B(count[3]), .C(count[11]), .D(count[6]), 
         .Z(n22)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(count[0]), .B(count[4]), .C(count[2]), .D(count[8]), 
         .Z(n24)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 i4_2_lut (.A(count[10]), .B(count[1]), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i513_4_lut (.A(n25), .B(d_clk_tmp), .C(n23), .D(n24_adj_2371), 
         .Z(n724)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam i513_4_lut.init = 16'hccc8;
    LUT4 i11_3_lut (.A(count[1]), .B(n22_adj_2372), .C(count[9]), .Z(n25)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(count[2]), .B(count[8]), .C(count[5]), .D(count[3]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut_adj_2 (.A(count[7]), .B(count[12]), .C(count[11]), 
         .D(count[4]), .Z(n24_adj_2371)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i10_4_lut_adj_2.init = 16'hfffe;
    LUT4 i8_4_lut_adj_3 (.A(count[6]), .B(count[0]), .C(count[10]), .D(count[13]), 
         .Z(n22_adj_2372)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(90[17:47])
    defparam i8_4_lut_adj_3.init = 16'hfeff;
    CCU2D sub_39_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n1031), 
          .COUT(n1032), .S0(n1502[9]), .S1(n1502[10]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_11.INIT0 = 16'h5999;
    defparam sub_39_add_2_11.INIT1 = 16'h5999;
    defparam sub_39_add_2_11.INJECT1_0 = "NO";
    defparam sub_39_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n1030), 
          .COUT(n1031), .S0(n1502[7]), .S1(n1502[8]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_9.INIT0 = 16'h5999;
    defparam sub_39_add_2_9.INIT1 = 16'h5999;
    defparam sub_39_add_2_9.INJECT1_0 = "NO";
    defparam sub_39_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n1033), 
          .COUT(n1034), .S0(n1502[13]), .S1(n1502[14]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_15.INIT0 = 16'h5999;
    defparam sub_39_add_2_15.INIT1 = 16'h5999;
    defparam sub_39_add_2_15.INJECT1_0 = "NO";
    defparam sub_39_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n1034), 
          .COUT(n1035), .S0(n1502[15]), .S1(n1502[16]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_17.INIT0 = 16'h5999;
    defparam sub_39_add_2_17.INIT1 = 16'h5999;
    defparam sub_39_add_2_17.INJECT1_0 = "NO";
    defparam sub_39_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n1027), 
          .S1(n1502[0]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_1.INIT0 = 16'h0000;
    defparam sub_39_add_2_1.INIT1 = 16'h5999;
    defparam sub_39_add_2_1.INJECT1_0 = "NO";
    defparam sub_39_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n1041), 
          .COUT(n1042), .S0(n1502[29]), .S1(n1502[30]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_31.INIT0 = 16'h5999;
    defparam sub_39_add_2_31.INIT1 = 16'h5999;
    defparam sub_39_add_2_31.INJECT1_0 = "NO";
    defparam sub_39_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_41 (.A0(d8[39]), .B0(d_d8[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[40]), .B1(d_d8[40]), .C1(GND_net), .D1(GND_net), .CIN(n1046), 
          .COUT(n1047), .S0(n1502[39]), .S1(n1502[40]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_41.INIT0 = 16'h5999;
    defparam sub_39_add_2_41.INIT1 = 16'h5999;
    defparam sub_39_add_2_41.INJECT1_0 = "NO";
    defparam sub_39_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_47 (.A0(d8[45]), .B0(d_d8[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[46]), .B1(d_d8[46]), .C1(GND_net), .D1(GND_net), .CIN(n1049), 
          .COUT(n1050), .S0(n1502[45]), .S1(n1502[46]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_47.INIT0 = 16'h5999;
    defparam sub_39_add_2_47.INIT1 = 16'h5999;
    defparam sub_39_add_2_47.INJECT1_0 = "NO";
    defparam sub_39_add_2_47.INJECT1_1 = "NO";
    LUT4 i813_2_lut (.A(MixerOutSin_c_0), .B(d1[0]), .Z(d1_63__N_1149[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i813_2_lut.init = 16'h6666;
    CCU2D sub_39_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n1029), 
          .COUT(n1030), .S0(n1502[5]), .S1(n1502[6]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_7.INIT0 = 16'h5999;
    defparam sub_39_add_2_7.INIT1 = 16'h5999;
    defparam sub_39_add_2_7.INJECT1_0 = "NO";
    defparam sub_39_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n1028), 
          .COUT(n1029), .S0(n1502[3]), .S1(n1502[4]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_5.INIT0 = 16'h5999;
    defparam sub_39_add_2_5.INIT1 = 16'h5999;
    defparam sub_39_add_2_5.INJECT1_0 = "NO";
    defparam sub_39_add_2_5.INJECT1_1 = "NO";
    FD1S3IX count_145_146__i1 (.D(n61[0]), .CK(osc_clk), .CD(osc_clk_enable_59), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i1.GSR = "ENABLED";
    CCU2D sub_39_add_2_51 (.A0(d8[49]), .B0(d_d8[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[50]), .B1(d_d8[50]), .C1(GND_net), .D1(GND_net), .CIN(n1051), 
          .COUT(n1052), .S0(n1502[49]), .S1(n1502[50]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_51.INIT0 = 16'h5999;
    defparam sub_39_add_2_51.INIT1 = 16'h5999;
    defparam sub_39_add_2_51.INJECT1_0 = "NO";
    defparam sub_39_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_45 (.A0(d8[43]), .B0(d_d8[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[44]), .B1(d_d8[44]), .C1(GND_net), .D1(GND_net), .CIN(n1048), 
          .COUT(n1049), .S0(n1502[43]), .S1(n1502[44]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_45.INIT0 = 16'h5999;
    defparam sub_39_add_2_45.INIT1 = 16'h5999;
    defparam sub_39_add_2_45.INJECT1_0 = "NO";
    defparam sub_39_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_47 (.A0(d7[45]), .B0(d_d7[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[46]), .B1(d_d7[46]), .C1(GND_net), .D1(GND_net), .CIN(n1081), 
          .COUT(n1082), .S0(n1437[45]), .S1(n1437[46]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_47.INIT0 = 16'h5999;
    defparam sub_38_add_2_47.INIT1 = 16'h5999;
    defparam sub_38_add_2_47.INJECT1_0 = "NO";
    defparam sub_38_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n1061), 
          .COUT(n1062), .S0(n1437[5]), .S1(n1437[6]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_7.INIT0 = 16'h5999;
    defparam sub_38_add_2_7.INIT1 = 16'h5999;
    defparam sub_38_add_2_7.INJECT1_0 = "NO";
    defparam sub_38_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n1060), 
          .COUT(n1061), .S0(n1437[3]), .S1(n1437[4]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_5.INIT0 = 16'h5999;
    defparam sub_38_add_2_5.INIT1 = 16'h5999;
    defparam sub_38_add_2_5.INJECT1_0 = "NO";
    defparam sub_38_add_2_5.INJECT1_1 = "NO";
    FD1S3AX d2_i1 (.D(d2_63__N_1213[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i1.GSR = "ENABLED";
    FD1S3AX d2_i2 (.D(d2_63__N_1213[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_63__N_1213[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_63__N_1213[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_63__N_1213[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_63__N_1213[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_63__N_1213[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_63__N_1213[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_63__N_1213[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_63__N_1213[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_63__N_1213[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_63__N_1213[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_63__N_1213[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_63__N_1213[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_63__N_1213[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_63__N_1213[16]), .CK(osc_clk), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_63__N_1213[17]), .CK(osc_clk), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_63__N_1213[18]), .CK(osc_clk), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_63__N_1213[19]), .CK(osc_clk), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_63__N_1213[20]), .CK(osc_clk), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_63__N_1213[21]), .CK(osc_clk), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_63__N_1213[22]), .CK(osc_clk), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_63__N_1213[23]), .CK(osc_clk), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_63__N_1213[24]), .CK(osc_clk), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_63__N_1213[25]), .CK(osc_clk), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_63__N_1213[26]), .CK(osc_clk), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_63__N_1213[27]), .CK(osc_clk), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_63__N_1213[28]), .CK(osc_clk), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_63__N_1213[29]), .CK(osc_clk), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_63__N_1213[30]), .CK(osc_clk), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_63__N_1213[31]), .CK(osc_clk), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_63__N_1213[32]), .CK(osc_clk), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_63__N_1213[33]), .CK(osc_clk), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_63__N_1213[34]), .CK(osc_clk), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_63__N_1213[35]), .CK(osc_clk), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_63__N_1213[36]), .CK(osc_clk), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_63__N_1213[37]), .CK(osc_clk), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_63__N_1213[38]), .CK(osc_clk), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_63__N_1213[39]), .CK(osc_clk), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_63__N_1213[40]), .CK(osc_clk), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_63__N_1213[41]), .CK(osc_clk), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_63__N_1213[42]), .CK(osc_clk), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_63__N_1213[43]), .CK(osc_clk), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_63__N_1213[44]), .CK(osc_clk), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_63__N_1213[45]), .CK(osc_clk), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_63__N_1213[46]), .CK(osc_clk), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_63__N_1213[47]), .CK(osc_clk), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_63__N_1213[48]), .CK(osc_clk), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_63__N_1213[49]), .CK(osc_clk), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_63__N_1213[50]), .CK(osc_clk), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_63__N_1213[51]), .CK(osc_clk), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_63__N_1213[52]), .CK(osc_clk), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_63__N_1213[53]), .CK(osc_clk), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_63__N_1213[54]), .CK(osc_clk), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_63__N_1213[55]), .CK(osc_clk), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_63__N_1213[56]), .CK(osc_clk), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_63__N_1213[57]), .CK(osc_clk), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d2_i58 (.D(d2_63__N_1213[58]), .CK(osc_clk), .Q(d2[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i58.GSR = "ENABLED";
    FD1S3AX d2_i59 (.D(d2_63__N_1213[59]), .CK(osc_clk), .Q(d2[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i59.GSR = "ENABLED";
    FD1S3AX d2_i60 (.D(d2_63__N_1213[60]), .CK(osc_clk), .Q(d2[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i60.GSR = "ENABLED";
    FD1S3AX d2_i61 (.D(d2_63__N_1213[61]), .CK(osc_clk), .Q(d2[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i61.GSR = "ENABLED";
    FD1S3AX d2_i62 (.D(d2_63__N_1213[62]), .CK(osc_clk), .Q(d2[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i62.GSR = "ENABLED";
    FD1S3AX d2_i63 (.D(d2_63__N_1213[63]), .CK(osc_clk), .Q(d2[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d2_i63.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_63__N_1277[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_63__N_1277[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_63__N_1277[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_63__N_1277[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_63__N_1277[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_63__N_1277[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_63__N_1277[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_63__N_1277[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_63__N_1277[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_63__N_1277[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_63__N_1277[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_63__N_1277[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_63__N_1277[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_63__N_1277[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_63__N_1277[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_63__N_1277[16]), .CK(osc_clk), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_63__N_1277[17]), .CK(osc_clk), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_63__N_1277[18]), .CK(osc_clk), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_63__N_1277[19]), .CK(osc_clk), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_63__N_1277[20]), .CK(osc_clk), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_63__N_1277[21]), .CK(osc_clk), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_63__N_1277[22]), .CK(osc_clk), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_63__N_1277[23]), .CK(osc_clk), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_63__N_1277[24]), .CK(osc_clk), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_63__N_1277[25]), .CK(osc_clk), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_63__N_1277[26]), .CK(osc_clk), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_63__N_1277[27]), .CK(osc_clk), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_63__N_1277[28]), .CK(osc_clk), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_63__N_1277[29]), .CK(osc_clk), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_63__N_1277[30]), .CK(osc_clk), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_63__N_1277[31]), .CK(osc_clk), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_63__N_1277[32]), .CK(osc_clk), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_63__N_1277[33]), .CK(osc_clk), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_63__N_1277[34]), .CK(osc_clk), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_63__N_1277[35]), .CK(osc_clk), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_63__N_1277[36]), .CK(osc_clk), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_63__N_1277[37]), .CK(osc_clk), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_63__N_1277[38]), .CK(osc_clk), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_63__N_1277[39]), .CK(osc_clk), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_63__N_1277[40]), .CK(osc_clk), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_63__N_1277[41]), .CK(osc_clk), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_63__N_1277[42]), .CK(osc_clk), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_63__N_1277[43]), .CK(osc_clk), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_63__N_1277[44]), .CK(osc_clk), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_63__N_1277[45]), .CK(osc_clk), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_63__N_1277[46]), .CK(osc_clk), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_63__N_1277[47]), .CK(osc_clk), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_63__N_1277[48]), .CK(osc_clk), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_63__N_1277[49]), .CK(osc_clk), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_63__N_1277[50]), .CK(osc_clk), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_63__N_1277[51]), .CK(osc_clk), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_63__N_1277[52]), .CK(osc_clk), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_63__N_1277[53]), .CK(osc_clk), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_63__N_1277[54]), .CK(osc_clk), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_63__N_1277[55]), .CK(osc_clk), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_63__N_1277[56]), .CK(osc_clk), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_63__N_1277[57]), .CK(osc_clk), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d3_i58 (.D(d3_63__N_1277[58]), .CK(osc_clk), .Q(d3[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i58.GSR = "ENABLED";
    FD1S3AX d3_i59 (.D(d3_63__N_1277[59]), .CK(osc_clk), .Q(d3[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i59.GSR = "ENABLED";
    FD1S3AX d3_i60 (.D(d3_63__N_1277[60]), .CK(osc_clk), .Q(d3[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i60.GSR = "ENABLED";
    FD1S3AX d3_i61 (.D(d3_63__N_1277[61]), .CK(osc_clk), .Q(d3[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i61.GSR = "ENABLED";
    FD1S3AX d3_i62 (.D(d3_63__N_1277[62]), .CK(osc_clk), .Q(d3[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i62.GSR = "ENABLED";
    FD1S3AX d3_i63 (.D(d3_63__N_1277[63]), .CK(osc_clk), .Q(d3[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d3_i63.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_63__N_1341[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_63__N_1341[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_63__N_1341[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_63__N_1341[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_63__N_1341[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_63__N_1341[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_63__N_1341[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_63__N_1341[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_63__N_1341[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_63__N_1341[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_63__N_1341[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_63__N_1341[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_63__N_1341[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_63__N_1341[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_63__N_1341[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_63__N_1341[16]), .CK(osc_clk), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_63__N_1341[17]), .CK(osc_clk), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_63__N_1341[18]), .CK(osc_clk), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_63__N_1341[19]), .CK(osc_clk), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_63__N_1341[20]), .CK(osc_clk), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_63__N_1341[21]), .CK(osc_clk), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_63__N_1341[22]), .CK(osc_clk), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_63__N_1341[23]), .CK(osc_clk), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_63__N_1341[24]), .CK(osc_clk), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_63__N_1341[25]), .CK(osc_clk), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_63__N_1341[26]), .CK(osc_clk), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_63__N_1341[27]), .CK(osc_clk), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_63__N_1341[28]), .CK(osc_clk), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_63__N_1341[29]), .CK(osc_clk), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_63__N_1341[30]), .CK(osc_clk), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_63__N_1341[31]), .CK(osc_clk), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_63__N_1341[32]), .CK(osc_clk), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_63__N_1341[33]), .CK(osc_clk), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_63__N_1341[34]), .CK(osc_clk), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_63__N_1341[35]), .CK(osc_clk), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_63__N_1341[36]), .CK(osc_clk), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_63__N_1341[37]), .CK(osc_clk), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_63__N_1341[38]), .CK(osc_clk), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_63__N_1341[39]), .CK(osc_clk), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_63__N_1341[40]), .CK(osc_clk), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_63__N_1341[41]), .CK(osc_clk), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_63__N_1341[42]), .CK(osc_clk), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_63__N_1341[43]), .CK(osc_clk), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_63__N_1341[44]), .CK(osc_clk), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_63__N_1341[45]), .CK(osc_clk), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_63__N_1341[46]), .CK(osc_clk), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_63__N_1341[47]), .CK(osc_clk), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_63__N_1341[48]), .CK(osc_clk), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_63__N_1341[49]), .CK(osc_clk), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_63__N_1341[50]), .CK(osc_clk), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_63__N_1341[51]), .CK(osc_clk), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_63__N_1341[52]), .CK(osc_clk), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_63__N_1341[53]), .CK(osc_clk), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_63__N_1341[54]), .CK(osc_clk), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_63__N_1341[55]), .CK(osc_clk), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_63__N_1341[56]), .CK(osc_clk), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_63__N_1341[57]), .CK(osc_clk), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d4_i58 (.D(d4_63__N_1341[58]), .CK(osc_clk), .Q(d4[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i58.GSR = "ENABLED";
    FD1S3AX d4_i59 (.D(d4_63__N_1341[59]), .CK(osc_clk), .Q(d4[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i59.GSR = "ENABLED";
    FD1S3AX d4_i60 (.D(d4_63__N_1341[60]), .CK(osc_clk), .Q(d4[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i60.GSR = "ENABLED";
    FD1S3AX d4_i61 (.D(d4_63__N_1341[61]), .CK(osc_clk), .Q(d4[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i61.GSR = "ENABLED";
    FD1S3AX d4_i62 (.D(d4_63__N_1341[62]), .CK(osc_clk), .Q(d4[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i62.GSR = "ENABLED";
    FD1S3AX d4_i63 (.D(d4_63__N_1341[63]), .CK(osc_clk), .Q(d4[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d4_i63.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_63__N_1405[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_63__N_1405[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_63__N_1405[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_63__N_1405[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_63__N_1405[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_63__N_1405[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_63__N_1405[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_63__N_1405[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_63__N_1405[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_63__N_1405[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_63__N_1405[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_63__N_1405[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_63__N_1405[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_63__N_1405[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_63__N_1405[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_63__N_1405[16]), .CK(osc_clk), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_63__N_1405[17]), .CK(osc_clk), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_63__N_1405[18]), .CK(osc_clk), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_63__N_1405[19]), .CK(osc_clk), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_63__N_1405[20]), .CK(osc_clk), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_63__N_1405[21]), .CK(osc_clk), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_63__N_1405[22]), .CK(osc_clk), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_63__N_1405[23]), .CK(osc_clk), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_63__N_1405[24]), .CK(osc_clk), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_63__N_1405[25]), .CK(osc_clk), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_63__N_1405[26]), .CK(osc_clk), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_63__N_1405[27]), .CK(osc_clk), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_63__N_1405[28]), .CK(osc_clk), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_63__N_1405[29]), .CK(osc_clk), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_63__N_1405[30]), .CK(osc_clk), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_63__N_1405[31]), .CK(osc_clk), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_63__N_1405[32]), .CK(osc_clk), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_63__N_1405[33]), .CK(osc_clk), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_63__N_1405[34]), .CK(osc_clk), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_63__N_1405[35]), .CK(osc_clk), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_63__N_1405[36]), .CK(osc_clk), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_63__N_1405[37]), .CK(osc_clk), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_63__N_1405[38]), .CK(osc_clk), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_63__N_1405[39]), .CK(osc_clk), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_63__N_1405[40]), .CK(osc_clk), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_63__N_1405[41]), .CK(osc_clk), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_63__N_1405[42]), .CK(osc_clk), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_63__N_1405[43]), .CK(osc_clk), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_63__N_1405[44]), .CK(osc_clk), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_63__N_1405[45]), .CK(osc_clk), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_63__N_1405[46]), .CK(osc_clk), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_63__N_1405[47]), .CK(osc_clk), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_63__N_1405[48]), .CK(osc_clk), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_63__N_1405[49]), .CK(osc_clk), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_63__N_1405[50]), .CK(osc_clk), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_63__N_1405[51]), .CK(osc_clk), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_63__N_1405[52]), .CK(osc_clk), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_63__N_1405[53]), .CK(osc_clk), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_63__N_1405[54]), .CK(osc_clk), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_63__N_1405[55]), .CK(osc_clk), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_63__N_1405[56]), .CK(osc_clk), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_63__N_1405[57]), .CK(osc_clk), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1S3AX d5_i58 (.D(d5_63__N_1405[58]), .CK(osc_clk), .Q(d5[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i58.GSR = "ENABLED";
    FD1S3AX d5_i59 (.D(d5_63__N_1405[59]), .CK(osc_clk), .Q(d5[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i59.GSR = "ENABLED";
    FD1S3AX d5_i60 (.D(d5_63__N_1405[60]), .CK(osc_clk), .Q(d5[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i60.GSR = "ENABLED";
    FD1S3AX d5_i61 (.D(d5_63__N_1405[61]), .CK(osc_clk), .Q(d5[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i61.GSR = "ENABLED";
    FD1S3AX d5_i62 (.D(d5_63__N_1405[62]), .CK(osc_clk), .Q(d5[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i62.GSR = "ENABLED";
    FD1S3AX d5_i63 (.D(d5_63__N_1405[63]), .CK(osc_clk), .Q(d5[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d5_i63.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(osc_clk_enable_59), .CK(osc_clk), 
            .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i58 (.D(d5[58]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i59 (.D(d5[59]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i60 (.D(d5[60]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i61 (.D(d5[61]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i62 (.D(d5[62]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i63 (.D(d5[63]), .SP(d_clk_tmp_N_2217), .CK(osc_clk), 
            .Q(d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n1[1]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n1[2]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n1[3]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n1[4]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n1[5]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n1[6]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n1[7]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n1[8]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n1[9]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n1[10]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n1[11]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(n1[12]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(n1[13]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(n1[14]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(n1[15]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(n1[16]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(n1[17]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(n1[18]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(n1[19]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(n1[20]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(n1[21]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(n1[22]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(n1[23]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(n1[24]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(n1[25]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(n1[26]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(n1[27]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(n1[28]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(n1[29]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(n1[30]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(n1[31]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(n1[32]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(n1[33]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(n1[34]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(n1[35]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(n1[36]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(n1[37]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(n1[38]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(n1[39]), .SP(osc_clk_enable_98), .CK(osc_clk), 
            .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(n1[40]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(n1[41]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(n1[42]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(n1[43]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(n1[44]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(n1[45]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(n1[46]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(n1[47]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(n1[48]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(n1[49]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(n1[50]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(n1[51]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(n1[52]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(n1[53]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(n1[54]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(n1[55]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(n1[56]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(n1[57]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i58 (.D(n1[58]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d7_i0_i59 (.D(n1[59]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d7_i0_i60 (.D(n1[60]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d7_i0_i61 (.D(n1[61]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d7_i0_i62 (.D(n1[62]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d7_i0_i63 (.D(n1[63]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n1437[1]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(n1437[2]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n1437[3]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n1437[4]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n1437[5]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n1437[6]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n1437[7]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n1437[8]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n1437[9]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n1437[10]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n1437[11]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(n1437[12]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(n1437[13]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(n1437[14]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(n1437[15]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(n1437[16]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(n1437[17]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(n1437[18]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(n1437[19]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(n1437[20]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(n1437[21]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(n1437[22]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(n1437[23]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(n1437[24]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(n1437[25]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(n1437[26]), .SP(osc_clk_enable_148), .CK(osc_clk), 
            .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(n1437[27]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(n1437[28]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(n1437[29]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(n1437[30]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(n1437[31]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(n1437[32]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(n1437[33]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(n1437[34]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(n1437[35]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(n1437[36]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(n1437[37]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(n1437[38]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(n1437[39]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(n1437[40]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(n1437[41]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(n1437[42]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(n1437[43]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(n1437[44]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(n1437[45]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(n1437[46]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(n1437[47]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(n1437[48]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(n1437[49]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(n1437[50]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(n1437[51]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(n1437[52]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(n1437[53]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(n1437[54]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(n1437[55]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(n1437[56]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(n1437[57]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i58 (.D(n1437[58]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d8_i0_i59 (.D(n1437[59]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d8_i0_i60 (.D(n1437[60]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d8_i0_i61 (.D(n1437[61]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d8_i0_i62 (.D(n1437[62]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d8_i0_i63 (.D(n1437[63]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n1502[1]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n1502[2]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n1502[3]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n1502[4]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n1502[5]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n1502[6]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n1502[7]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n1502[8]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n1502[9]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n1502[10]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n1502[11]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(n1502[12]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(n1502[13]), .SP(osc_clk_enable_198), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(n1502[14]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(n1502[15]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(n1502[16]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(n1502[17]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(n1502[18]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(n1502[19]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(n1502[20]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(n1502[21]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(n1502[22]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(n1502[23]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(n1502[24]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(n1502[25]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(n1502[26]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(n1502[27]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(n1502[28]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(n1502[29]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(n1502[30]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(n1502[31]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(n1502[32]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(n1502[33]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(n1502[34]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(n1502[35]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(n1502[36]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(n1502[37]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(n1502[38]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(n1502[39]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(n1502[40]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(n1502[41]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(n1502[42]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(n1502[43]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(n1502[44]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(n1502[45]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(n1502[46]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(n1502[47]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(n1502[48]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(n1502[49]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(n1502[50]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(n1502[51]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(n1502[52]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(n1502[53]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(n1502[54]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(n1502[55]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(n1502[56]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(n1502[57]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i58 (.D(n1502[58]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d9_i0_i59 (.D(n1502[59]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d9_i0_i60 (.D(n1502[60]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d9_i0_i61 (.D(n1502[61]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d9_i0_i62 (.D(n1502[62]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d9_i0_i63 (.D(n1502[63]), .SP(osc_clk_enable_248), .CK(osc_clk), 
            .Q(d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_enable_298), .CK(osc_clk), 
            .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i58 (.D(d6[58]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i59 (.D(d6[59]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i60 (.D(d6[60]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i61 (.D(d6[61]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i62 (.D(d6[62]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i63 (.D(d6[63]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_enable_348), .CK(osc_clk), 
            .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i58 (.D(d7[58]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i59 (.D(d7[59]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i60 (.D(d7[60]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i61 (.D(d7[61]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i62 (.D(d7[62]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i63 (.D(d7[63]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d7[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_enable_398), .CK(osc_clk), 
            .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i58 (.D(d8[58]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i59 (.D(d8[59]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i60 (.D(d8[60]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i61 (.D(d8[61]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i62 (.D(d8[62]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i63 (.D(d8[63]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d8[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_448), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i58 (.D(d9[58]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i59 (.D(d9[59]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i60 (.D(d9[60]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i61 (.D(d9[61]), .SP(osc_clk_enable_498), .CK(osc_clk), 
            .Q(d_d9[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i62 (.D(d9[62]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i63 (.D(d9[63]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d9[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[57]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(\DataInNoSign_7__N_2268[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[58]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(MYLED_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[59]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(MYLED_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[60]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(MYLED_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[61]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(n484)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[62]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(n483)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[63]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(MYLED_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(osc_clk_enable_548), .CK(osc_clk), 
            .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i58 (.D(d_tmp[58]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i59 (.D(d_tmp[59]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i60 (.D(d_tmp[60]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i61 (.D(d_tmp[61]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i62 (.D(d_tmp[62]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i63 (.D(d_tmp[63]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d_d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d_d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d10__0__i2 (.D(n1567[57]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[57]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i2.GSR = "ENABLED";
    FD1P3AX d10__0__i3 (.D(n1567[58]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[58]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n1567[59]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[59]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n1567[60]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[60]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n1567[61]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[61]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n1567[62]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[62]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n1567[63]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d10[63]));   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d10__0__i8.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_63__N_1149[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_63__N_1149[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_63__N_1149[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_63__N_1149[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_63__N_1149[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_63__N_1149[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_63__N_1149[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_63__N_1149[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_63__N_1149[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_63__N_1149[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_63__N_1149[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_63__N_1149[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_63__N_1149[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_63__N_1149[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_63__N_1149[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_63__N_1149[16]), .CK(osc_clk), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_63__N_1149[17]), .CK(osc_clk), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_63__N_1149[18]), .CK(osc_clk), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_63__N_1149[19]), .CK(osc_clk), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_63__N_1149[20]), .CK(osc_clk), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_63__N_1149[21]), .CK(osc_clk), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_63__N_1149[22]), .CK(osc_clk), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_63__N_1149[23]), .CK(osc_clk), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_63__N_1149[24]), .CK(osc_clk), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_63__N_1149[25]), .CK(osc_clk), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_63__N_1149[26]), .CK(osc_clk), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_63__N_1149[27]), .CK(osc_clk), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_63__N_1149[28]), .CK(osc_clk), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_63__N_1149[29]), .CK(osc_clk), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_63__N_1149[30]), .CK(osc_clk), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_63__N_1149[31]), .CK(osc_clk), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_63__N_1149[32]), .CK(osc_clk), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_63__N_1149[33]), .CK(osc_clk), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_63__N_1149[34]), .CK(osc_clk), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_63__N_1149[35]), .CK(osc_clk), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_63__N_1149[36]), .CK(osc_clk), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_63__N_1149[37]), .CK(osc_clk), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_63__N_1149[38]), .CK(osc_clk), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_63__N_1149[39]), .CK(osc_clk), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_63__N_1149[40]), .CK(osc_clk), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_63__N_1149[41]), .CK(osc_clk), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_63__N_1149[42]), .CK(osc_clk), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_63__N_1149[43]), .CK(osc_clk), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_63__N_1149[44]), .CK(osc_clk), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_63__N_1149[45]), .CK(osc_clk), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_63__N_1149[46]), .CK(osc_clk), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_63__N_1149[47]), .CK(osc_clk), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_63__N_1149[48]), .CK(osc_clk), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_63__N_1149[49]), .CK(osc_clk), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_63__N_1149[50]), .CK(osc_clk), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_63__N_1149[51]), .CK(osc_clk), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_63__N_1149[52]), .CK(osc_clk), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_63__N_1149[53]), .CK(osc_clk), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_63__N_1149[54]), .CK(osc_clk), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_63__N_1149[55]), .CK(osc_clk), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_63__N_1149[56]), .CK(osc_clk), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_63__N_1149[57]), .CK(osc_clk), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i57.GSR = "ENABLED";
    FD1S3AX d1_i58 (.D(d1_63__N_1149[58]), .CK(osc_clk), .Q(d1[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i58.GSR = "ENABLED";
    FD1S3AX d1_i59 (.D(d1_63__N_1149[59]), .CK(osc_clk), .Q(d1[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i59.GSR = "ENABLED";
    FD1S3AX d1_i60 (.D(d1_63__N_1149[60]), .CK(osc_clk), .Q(d1[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i60.GSR = "ENABLED";
    FD1S3AX d1_i61 (.D(d1_63__N_1149[61]), .CK(osc_clk), .Q(d1[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i61.GSR = "ENABLED";
    FD1S3AX d1_i62 (.D(d1_63__N_1149[62]), .CK(osc_clk), .Q(d1[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i62.GSR = "ENABLED";
    FD1S3AX d1_i63 (.D(d1_63__N_1149[63]), .CK(osc_clk), .Q(d1[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam d1_i63.GSR = "ENABLED";
    CCU2D sub_38_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n1059), 
          .COUT(n1060), .S0(n1437[1]), .S1(n1437[2]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_3.INIT0 = 16'h5999;
    defparam sub_38_add_2_3.INIT1 = 16'h5999;
    defparam sub_38_add_2_3.INJECT1_0 = "NO";
    defparam sub_38_add_2_3.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i1 (.D(n2[1]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    CCU2D count_145_146_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1374), .S0(n61[13]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_15.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_15.INIT1 = 16'h0000;
    defparam count_145_146_add_4_15.INJECT1_0 = "NO";
    defparam count_145_146_add_4_15.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1373), .COUT(n1374), .S0(n61[11]), .S1(n61[12]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_13.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_13.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_13.INJECT1_0 = "NO";
    defparam count_145_146_add_4_13.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1372), .COUT(n1373), .S0(n61[9]), .S1(n61[10]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_11.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_11.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_11.INJECT1_0 = "NO";
    defparam count_145_146_add_4_11.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1371), .COUT(n1372), .S0(n61[7]), .S1(n61[8]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_9.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_9.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_9.INJECT1_0 = "NO";
    defparam count_145_146_add_4_9.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1370), .COUT(n1371), .S0(n61[5]), .S1(n61[6]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_7.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_7.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_7.INJECT1_0 = "NO";
    defparam count_145_146_add_4_7.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1369), .COUT(n1370), .S0(n61[3]), .S1(n61[4]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_5.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_5.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_5.INJECT1_0 = "NO";
    defparam count_145_146_add_4_5.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1368), .COUT(n1369), .S0(n61[1]), .S1(n61[2]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_3.INIT0 = 16'hfaaa;
    defparam count_145_146_add_4_3.INIT1 = 16'hfaaa;
    defparam count_145_146_add_4_3.INJECT1_0 = "NO";
    defparam count_145_146_add_4_3.INJECT1_1 = "NO";
    CCU2D count_145_146_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1368), .S1(n61[0]));   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146_add_4_1.INIT0 = 16'hF000;
    defparam count_145_146_add_4_1.INIT1 = 16'h0555;
    defparam count_145_146_add_4_1.INJECT1_0 = "NO";
    defparam count_145_146_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_65 (.A0(d9[63]), .B0(d_d9[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1351), 
          .S0(n1567[63]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_65.INIT0 = 16'h5999;
    defparam sub_40_add_2_65.INIT1 = 16'h0000;
    defparam sub_40_add_2_65.INJECT1_0 = "NO";
    defparam sub_40_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_63 (.A0(d9[61]), .B0(d_d9[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[62]), .B1(d_d9[62]), .C1(GND_net), .D1(GND_net), .CIN(n1350), 
          .COUT(n1351), .S0(n1567[61]), .S1(n1567[62]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_63.INIT0 = 16'h5999;
    defparam sub_40_add_2_63.INIT1 = 16'h5999;
    defparam sub_40_add_2_63.INJECT1_0 = "NO";
    defparam sub_40_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_61 (.A0(d9[59]), .B0(d_d9[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[60]), .B1(d_d9[60]), .C1(GND_net), .D1(GND_net), .CIN(n1349), 
          .COUT(n1350), .S0(n1567[59]), .S1(n1567[60]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_61.INIT0 = 16'h5999;
    defparam sub_40_add_2_61.INIT1 = 16'h5999;
    defparam sub_40_add_2_61.INJECT1_0 = "NO";
    defparam sub_40_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_59 (.A0(d9[57]), .B0(d_d9[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[58]), .B1(d_d9[58]), .C1(GND_net), .D1(GND_net), .CIN(n1348), 
          .COUT(n1349), .S0(n1567[57]), .S1(n1567[58]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_59.INIT0 = 16'h5999;
    defparam sub_40_add_2_59.INIT1 = 16'h5999;
    defparam sub_40_add_2_59.INJECT1_0 = "NO";
    defparam sub_40_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_57 (.A0(d9[55]), .B0(d_d9[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[56]), .B1(d_d9[56]), .C1(GND_net), .D1(GND_net), .CIN(n1347), 
          .COUT(n1348), .S1(n1567[56]));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_57.INIT0 = 16'h5999;
    defparam sub_40_add_2_57.INIT1 = 16'h5999;
    defparam sub_40_add_2_57.INJECT1_0 = "NO";
    defparam sub_40_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_55 (.A0(d9[53]), .B0(d_d9[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[54]), .B1(d_d9[54]), .C1(GND_net), .D1(GND_net), .CIN(n1346), 
          .COUT(n1347));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_55.INIT0 = 16'h5999;
    defparam sub_40_add_2_55.INIT1 = 16'h5999;
    defparam sub_40_add_2_55.INJECT1_0 = "NO";
    defparam sub_40_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_53 (.A0(d9[51]), .B0(d_d9[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[52]), .B1(d_d9[52]), .C1(GND_net), .D1(GND_net), .CIN(n1345), 
          .COUT(n1346));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_53.INIT0 = 16'h5999;
    defparam sub_40_add_2_53.INIT1 = 16'h5999;
    defparam sub_40_add_2_53.INJECT1_0 = "NO";
    defparam sub_40_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_51 (.A0(d9[49]), .B0(d_d9[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[50]), .B1(d_d9[50]), .C1(GND_net), .D1(GND_net), .CIN(n1344), 
          .COUT(n1345));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_51.INIT0 = 16'h5999;
    defparam sub_40_add_2_51.INIT1 = 16'h5999;
    defparam sub_40_add_2_51.INJECT1_0 = "NO";
    defparam sub_40_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_49 (.A0(d9[47]), .B0(d_d9[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[48]), .B1(d_d9[48]), .C1(GND_net), .D1(GND_net), .CIN(n1343), 
          .COUT(n1344));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_49.INIT0 = 16'h5999;
    defparam sub_40_add_2_49.INIT1 = 16'h5999;
    defparam sub_40_add_2_49.INJECT1_0 = "NO";
    defparam sub_40_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_47 (.A0(d9[45]), .B0(d_d9[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[46]), .B1(d_d9[46]), .C1(GND_net), .D1(GND_net), .CIN(n1342), 
          .COUT(n1343));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_47.INIT0 = 16'h5999;
    defparam sub_40_add_2_47.INIT1 = 16'h5999;
    defparam sub_40_add_2_47.INJECT1_0 = "NO";
    defparam sub_40_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_45 (.A0(d9[43]), .B0(d_d9[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[44]), .B1(d_d9[44]), .C1(GND_net), .D1(GND_net), .CIN(n1341), 
          .COUT(n1342));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_45.INIT0 = 16'h5999;
    defparam sub_40_add_2_45.INIT1 = 16'h5999;
    defparam sub_40_add_2_45.INJECT1_0 = "NO";
    defparam sub_40_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_43 (.A0(d9[41]), .B0(d_d9[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[42]), .B1(d_d9[42]), .C1(GND_net), .D1(GND_net), .CIN(n1340), 
          .COUT(n1341));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_43.INIT0 = 16'h5999;
    defparam sub_40_add_2_43.INIT1 = 16'h5999;
    defparam sub_40_add_2_43.INJECT1_0 = "NO";
    defparam sub_40_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_41 (.A0(d9[39]), .B0(d_d9[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[40]), .B1(d_d9[40]), .C1(GND_net), .D1(GND_net), .CIN(n1339), 
          .COUT(n1340));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_41.INIT0 = 16'h5999;
    defparam sub_40_add_2_41.INIT1 = 16'h5999;
    defparam sub_40_add_2_41.INJECT1_0 = "NO";
    defparam sub_40_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_39 (.A0(d9[37]), .B0(d_d9[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[38]), .B1(d_d9[38]), .C1(GND_net), .D1(GND_net), .CIN(n1338), 
          .COUT(n1339));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_39.INIT0 = 16'h5999;
    defparam sub_40_add_2_39.INIT1 = 16'h5999;
    defparam sub_40_add_2_39.INJECT1_0 = "NO";
    defparam sub_40_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n1337), 
          .COUT(n1338));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_37.INIT0 = 16'h5999;
    defparam sub_40_add_2_37.INIT1 = 16'h5999;
    defparam sub_40_add_2_37.INJECT1_0 = "NO";
    defparam sub_40_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n1336), 
          .COUT(n1337));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_35.INIT0 = 16'h5999;
    defparam sub_40_add_2_35.INIT1 = 16'h5999;
    defparam sub_40_add_2_35.INJECT1_0 = "NO";
    defparam sub_40_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n1335), 
          .COUT(n1336));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_33.INIT0 = 16'h5999;
    defparam sub_40_add_2_33.INIT1 = 16'h5999;
    defparam sub_40_add_2_33.INJECT1_0 = "NO";
    defparam sub_40_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n1334), 
          .COUT(n1335));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_31.INIT0 = 16'h5999;
    defparam sub_40_add_2_31.INIT1 = 16'h5999;
    defparam sub_40_add_2_31.INJECT1_0 = "NO";
    defparam sub_40_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n1333), 
          .COUT(n1334));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_29.INIT0 = 16'h5999;
    defparam sub_40_add_2_29.INIT1 = 16'h5999;
    defparam sub_40_add_2_29.INJECT1_0 = "NO";
    defparam sub_40_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n1332), 
          .COUT(n1333));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_27.INIT0 = 16'h5999;
    defparam sub_40_add_2_27.INIT1 = 16'h5999;
    defparam sub_40_add_2_27.INJECT1_0 = "NO";
    defparam sub_40_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n1331), 
          .COUT(n1332));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_25.INIT0 = 16'h5999;
    defparam sub_40_add_2_25.INIT1 = 16'h5999;
    defparam sub_40_add_2_25.INJECT1_0 = "NO";
    defparam sub_40_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n1330), 
          .COUT(n1331));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_23.INIT0 = 16'h5999;
    defparam sub_40_add_2_23.INIT1 = 16'h5999;
    defparam sub_40_add_2_23.INJECT1_0 = "NO";
    defparam sub_40_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n1329), 
          .COUT(n1330));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_21.INIT0 = 16'h5999;
    defparam sub_40_add_2_21.INIT1 = 16'h5999;
    defparam sub_40_add_2_21.INJECT1_0 = "NO";
    defparam sub_40_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n1328), 
          .COUT(n1329));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_19.INIT0 = 16'h5999;
    defparam sub_40_add_2_19.INIT1 = 16'h5999;
    defparam sub_40_add_2_19.INJECT1_0 = "NO";
    defparam sub_40_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n1327), 
          .COUT(n1328));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_17.INIT0 = 16'h5999;
    defparam sub_40_add_2_17.INIT1 = 16'h5999;
    defparam sub_40_add_2_17.INJECT1_0 = "NO";
    defparam sub_40_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n1326), 
          .COUT(n1327));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_15.INIT0 = 16'h5999;
    defparam sub_40_add_2_15.INIT1 = 16'h5999;
    defparam sub_40_add_2_15.INJECT1_0 = "NO";
    defparam sub_40_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n1325), 
          .COUT(n1326));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_13.INIT0 = 16'h5999;
    defparam sub_40_add_2_13.INIT1 = 16'h5999;
    defparam sub_40_add_2_13.INJECT1_0 = "NO";
    defparam sub_40_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n1324), 
          .COUT(n1325));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_11.INIT0 = 16'h5999;
    defparam sub_40_add_2_11.INIT1 = 16'h5999;
    defparam sub_40_add_2_11.INJECT1_0 = "NO";
    defparam sub_40_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n1323), 
          .COUT(n1324));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_9.INIT0 = 16'h5999;
    defparam sub_40_add_2_9.INIT1 = 16'h5999;
    defparam sub_40_add_2_9.INJECT1_0 = "NO";
    defparam sub_40_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n1322), 
          .COUT(n1323));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_7.INIT0 = 16'h5999;
    defparam sub_40_add_2_7.INIT1 = 16'h5999;
    defparam sub_40_add_2_7.INJECT1_0 = "NO";
    defparam sub_40_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n1321), 
          .COUT(n1322));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_5.INIT0 = 16'h5999;
    defparam sub_40_add_2_5.INIT1 = 16'h5999;
    defparam sub_40_add_2_5.INJECT1_0 = "NO";
    defparam sub_40_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n1320), 
          .COUT(n1321));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_3.INIT0 = 16'h5999;
    defparam sub_40_add_2_3.INIT1 = 16'h5999;
    defparam sub_40_add_2_3.INJECT1_0 = "NO";
    defparam sub_40_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n1320));   // c:/users/user/lattice/fpgasdr/cic.v(137[12:21])
    defparam sub_40_add_2_1.INIT0 = 16'h0000;
    defparam sub_40_add_2_1.INIT1 = 16'h5999;
    defparam sub_40_add_2_1.INJECT1_0 = "NO";
    defparam sub_40_add_2_1.INJECT1_1 = "NO";
    CCU2D add_7_64 (.A0(d4[62]), .B0(d5[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[63]), .B1(d5[63]), .C1(GND_net), .D1(GND_net), .CIN(n1318), 
          .S0(d5_63__N_1405[62]), .S1(d5_63__N_1405[63]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_64.INIT0 = 16'h5666;
    defparam add_7_64.INIT1 = 16'h5666;
    defparam add_7_64.INJECT1_0 = "NO";
    defparam add_7_64.INJECT1_1 = "NO";
    CCU2D add_7_62 (.A0(d4[60]), .B0(d5[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[61]), .B1(d5[61]), .C1(GND_net), .D1(GND_net), .CIN(n1317), 
          .COUT(n1318), .S0(d5_63__N_1405[60]), .S1(d5_63__N_1405[61]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_62.INIT0 = 16'h5666;
    defparam add_7_62.INIT1 = 16'h5666;
    defparam add_7_62.INJECT1_0 = "NO";
    defparam add_7_62.INJECT1_1 = "NO";
    CCU2D add_7_60 (.A0(d4[58]), .B0(d5[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[59]), .B1(d5[59]), .C1(GND_net), .D1(GND_net), .CIN(n1316), 
          .COUT(n1317), .S0(d5_63__N_1405[58]), .S1(d5_63__N_1405[59]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_60.INIT0 = 16'h5666;
    defparam add_7_60.INIT1 = 16'h5666;
    defparam add_7_60.INJECT1_0 = "NO";
    defparam add_7_60.INJECT1_1 = "NO";
    CCU2D add_7_58 (.A0(d4[56]), .B0(d5[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[57]), .B1(d5[57]), .C1(GND_net), .D1(GND_net), .CIN(n1315), 
          .COUT(n1316), .S0(d5_63__N_1405[56]), .S1(d5_63__N_1405[57]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_58.INIT0 = 16'h5666;
    defparam add_7_58.INIT1 = 16'h5666;
    defparam add_7_58.INJECT1_0 = "NO";
    defparam add_7_58.INJECT1_1 = "NO";
    CCU2D add_7_56 (.A0(d4[54]), .B0(d5[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[55]), .B1(d5[55]), .C1(GND_net), .D1(GND_net), .CIN(n1314), 
          .COUT(n1315), .S0(d5_63__N_1405[54]), .S1(d5_63__N_1405[55]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_56.INIT0 = 16'h5666;
    defparam add_7_56.INIT1 = 16'h5666;
    defparam add_7_56.INJECT1_0 = "NO";
    defparam add_7_56.INJECT1_1 = "NO";
    CCU2D add_7_54 (.A0(d4[52]), .B0(d5[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[53]), .B1(d5[53]), .C1(GND_net), .D1(GND_net), .CIN(n1313), 
          .COUT(n1314), .S0(d5_63__N_1405[52]), .S1(d5_63__N_1405[53]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_54.INIT0 = 16'h5666;
    defparam add_7_54.INIT1 = 16'h5666;
    defparam add_7_54.INJECT1_0 = "NO";
    defparam add_7_54.INJECT1_1 = "NO";
    CCU2D add_7_52 (.A0(d4[50]), .B0(d5[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[51]), .B1(d5[51]), .C1(GND_net), .D1(GND_net), .CIN(n1312), 
          .COUT(n1313), .S0(d5_63__N_1405[50]), .S1(d5_63__N_1405[51]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_52.INIT0 = 16'h5666;
    defparam add_7_52.INIT1 = 16'h5666;
    defparam add_7_52.INJECT1_0 = "NO";
    defparam add_7_52.INJECT1_1 = "NO";
    CCU2D add_7_50 (.A0(d4[48]), .B0(d5[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[49]), .B1(d5[49]), .C1(GND_net), .D1(GND_net), .CIN(n1311), 
          .COUT(n1312), .S0(d5_63__N_1405[48]), .S1(d5_63__N_1405[49]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_50.INIT0 = 16'h5666;
    defparam add_7_50.INIT1 = 16'h5666;
    defparam add_7_50.INJECT1_0 = "NO";
    defparam add_7_50.INJECT1_1 = "NO";
    CCU2D add_7_48 (.A0(d4[46]), .B0(d5[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[47]), .B1(d5[47]), .C1(GND_net), .D1(GND_net), .CIN(n1310), 
          .COUT(n1311), .S0(d5_63__N_1405[46]), .S1(d5_63__N_1405[47]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_48.INIT0 = 16'h5666;
    defparam add_7_48.INIT1 = 16'h5666;
    defparam add_7_48.INJECT1_0 = "NO";
    defparam add_7_48.INJECT1_1 = "NO";
    CCU2D add_7_46 (.A0(d4[44]), .B0(d5[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[45]), .B1(d5[45]), .C1(GND_net), .D1(GND_net), .CIN(n1309), 
          .COUT(n1310), .S0(d5_63__N_1405[44]), .S1(d5_63__N_1405[45]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_46.INIT0 = 16'h5666;
    defparam add_7_46.INIT1 = 16'h5666;
    defparam add_7_46.INJECT1_0 = "NO";
    defparam add_7_46.INJECT1_1 = "NO";
    CCU2D add_7_44 (.A0(d4[42]), .B0(d5[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[43]), .B1(d5[43]), .C1(GND_net), .D1(GND_net), .CIN(n1308), 
          .COUT(n1309), .S0(d5_63__N_1405[42]), .S1(d5_63__N_1405[43]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_44.INIT0 = 16'h5666;
    defparam add_7_44.INIT1 = 16'h5666;
    defparam add_7_44.INJECT1_0 = "NO";
    defparam add_7_44.INJECT1_1 = "NO";
    CCU2D add_7_42 (.A0(d4[40]), .B0(d5[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[41]), .B1(d5[41]), .C1(GND_net), .D1(GND_net), .CIN(n1307), 
          .COUT(n1308), .S0(d5_63__N_1405[40]), .S1(d5_63__N_1405[41]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_42.INIT0 = 16'h5666;
    defparam add_7_42.INIT1 = 16'h5666;
    defparam add_7_42.INJECT1_0 = "NO";
    defparam add_7_42.INJECT1_1 = "NO";
    CCU2D add_7_40 (.A0(d4[38]), .B0(d5[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[39]), .B1(d5[39]), .C1(GND_net), .D1(GND_net), .CIN(n1306), 
          .COUT(n1307), .S0(d5_63__N_1405[38]), .S1(d5_63__N_1405[39]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_40.INIT0 = 16'h5666;
    defparam add_7_40.INIT1 = 16'h5666;
    defparam add_7_40.INJECT1_0 = "NO";
    defparam add_7_40.INJECT1_1 = "NO";
    CCU2D add_7_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[37]), .B1(d5[37]), .C1(GND_net), .D1(GND_net), .CIN(n1305), 
          .COUT(n1306), .S0(d5_63__N_1405[36]), .S1(d5_63__N_1405[37]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_38.INIT0 = 16'h5666;
    defparam add_7_38.INIT1 = 16'h5666;
    defparam add_7_38.INJECT1_0 = "NO";
    defparam add_7_38.INJECT1_1 = "NO";
    CCU2D add_7_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n1304), 
          .COUT(n1305), .S0(d5_63__N_1405[34]), .S1(d5_63__N_1405[35]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_36.INIT0 = 16'h5666;
    defparam add_7_36.INIT1 = 16'h5666;
    defparam add_7_36.INJECT1_0 = "NO";
    defparam add_7_36.INJECT1_1 = "NO";
    CCU2D add_7_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n1303), 
          .COUT(n1304), .S0(d5_63__N_1405[32]), .S1(d5_63__N_1405[33]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_34.INIT0 = 16'h5666;
    defparam add_7_34.INIT1 = 16'h5666;
    defparam add_7_34.INJECT1_0 = "NO";
    defparam add_7_34.INJECT1_1 = "NO";
    CCU2D add_7_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n1302), 
          .COUT(n1303), .S0(d5_63__N_1405[30]), .S1(d5_63__N_1405[31]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_32.INIT0 = 16'h5666;
    defparam add_7_32.INIT1 = 16'h5666;
    defparam add_7_32.INJECT1_0 = "NO";
    defparam add_7_32.INJECT1_1 = "NO";
    CCU2D add_7_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n1301), 
          .COUT(n1302), .S0(d5_63__N_1405[28]), .S1(d5_63__N_1405[29]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_30.INIT0 = 16'h5666;
    defparam add_7_30.INIT1 = 16'h5666;
    defparam add_7_30.INJECT1_0 = "NO";
    defparam add_7_30.INJECT1_1 = "NO";
    CCU2D add_7_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n1300), 
          .COUT(n1301), .S0(d5_63__N_1405[26]), .S1(d5_63__N_1405[27]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_28.INIT0 = 16'h5666;
    defparam add_7_28.INIT1 = 16'h5666;
    defparam add_7_28.INJECT1_0 = "NO";
    defparam add_7_28.INJECT1_1 = "NO";
    CCU2D add_7_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n1299), 
          .COUT(n1300), .S0(d5_63__N_1405[24]), .S1(d5_63__N_1405[25]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_26.INIT0 = 16'h5666;
    defparam add_7_26.INIT1 = 16'h5666;
    defparam add_7_26.INJECT1_0 = "NO";
    defparam add_7_26.INJECT1_1 = "NO";
    CCU2D add_7_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n1298), 
          .COUT(n1299), .S0(d5_63__N_1405[22]), .S1(d5_63__N_1405[23]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_24.INIT0 = 16'h5666;
    defparam add_7_24.INIT1 = 16'h5666;
    defparam add_7_24.INJECT1_0 = "NO";
    defparam add_7_24.INJECT1_1 = "NO";
    CCU2D add_7_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n1297), 
          .COUT(n1298), .S0(d5_63__N_1405[20]), .S1(d5_63__N_1405[21]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_22.INIT0 = 16'h5666;
    defparam add_7_22.INIT1 = 16'h5666;
    defparam add_7_22.INJECT1_0 = "NO";
    defparam add_7_22.INJECT1_1 = "NO";
    CCU2D add_7_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n1296), 
          .COUT(n1297), .S0(d5_63__N_1405[18]), .S1(d5_63__N_1405[19]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_20.INIT0 = 16'h5666;
    defparam add_7_20.INIT1 = 16'h5666;
    defparam add_7_20.INJECT1_0 = "NO";
    defparam add_7_20.INJECT1_1 = "NO";
    CCU2D add_7_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n1295), 
          .COUT(n1296), .S0(d5_63__N_1405[16]), .S1(d5_63__N_1405[17]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_18.INIT0 = 16'h5666;
    defparam add_7_18.INIT1 = 16'h5666;
    defparam add_7_18.INJECT1_0 = "NO";
    defparam add_7_18.INJECT1_1 = "NO";
    CCU2D add_7_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n1294), 
          .COUT(n1295), .S0(d5_63__N_1405[14]), .S1(d5_63__N_1405[15]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_16.INIT0 = 16'h5666;
    defparam add_7_16.INIT1 = 16'h5666;
    defparam add_7_16.INJECT1_0 = "NO";
    defparam add_7_16.INJECT1_1 = "NO";
    CCU2D add_7_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n1293), 
          .COUT(n1294), .S0(d5_63__N_1405[12]), .S1(d5_63__N_1405[13]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_14.INIT0 = 16'h5666;
    defparam add_7_14.INIT1 = 16'h5666;
    defparam add_7_14.INJECT1_0 = "NO";
    defparam add_7_14.INJECT1_1 = "NO";
    CCU2D add_7_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n1292), 
          .COUT(n1293), .S0(d5_63__N_1405[10]), .S1(d5_63__N_1405[11]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_12.INIT0 = 16'h5666;
    defparam add_7_12.INIT1 = 16'h5666;
    defparam add_7_12.INJECT1_0 = "NO";
    defparam add_7_12.INJECT1_1 = "NO";
    CCU2D add_7_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n1291), 
          .COUT(n1292), .S0(d5_63__N_1405[8]), .S1(d5_63__N_1405[9]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_10.INIT0 = 16'h5666;
    defparam add_7_10.INIT1 = 16'h5666;
    defparam add_7_10.INJECT1_0 = "NO";
    defparam add_7_10.INJECT1_1 = "NO";
    CCU2D add_7_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n1290), 
          .COUT(n1291), .S0(d5_63__N_1405[6]), .S1(d5_63__N_1405[7]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_8.INIT0 = 16'h5666;
    defparam add_7_8.INIT1 = 16'h5666;
    defparam add_7_8.INJECT1_0 = "NO";
    defparam add_7_8.INJECT1_1 = "NO";
    CCU2D add_7_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n1289), 
          .COUT(n1290), .S0(d5_63__N_1405[4]), .S1(d5_63__N_1405[5]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_6.INIT0 = 16'h5666;
    defparam add_7_6.INIT1 = 16'h5666;
    defparam add_7_6.INJECT1_0 = "NO";
    defparam add_7_6.INJECT1_1 = "NO";
    CCU2D add_7_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n1288), 
          .COUT(n1289), .S0(d5_63__N_1405[2]), .S1(d5_63__N_1405[3]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_4.INIT0 = 16'h5666;
    defparam add_7_4.INIT1 = 16'h5666;
    defparam add_7_4.INJECT1_0 = "NO";
    defparam add_7_4.INJECT1_1 = "NO";
    CCU2D add_7_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n1288), 
          .S1(d5_63__N_1405[1]));   // c:/users/user/lattice/fpgasdr/cic.v(80[10:17])
    defparam add_7_2.INIT0 = 16'h7000;
    defparam add_7_2.INIT1 = 16'h5666;
    defparam add_7_2.INJECT1_0 = "NO";
    defparam add_7_2.INJECT1_1 = "NO";
    CCU2D add_6_64 (.A0(d3[62]), .B0(d4[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[63]), .B1(d4[63]), .C1(GND_net), .D1(GND_net), .CIN(n1285), 
          .S0(d4_63__N_1341[62]), .S1(d4_63__N_1341[63]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_64.INIT0 = 16'h5666;
    defparam add_6_64.INIT1 = 16'h5666;
    defparam add_6_64.INJECT1_0 = "NO";
    defparam add_6_64.INJECT1_1 = "NO";
    CCU2D add_6_62 (.A0(d3[60]), .B0(d4[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[61]), .B1(d4[61]), .C1(GND_net), .D1(GND_net), .CIN(n1284), 
          .COUT(n1285), .S0(d4_63__N_1341[60]), .S1(d4_63__N_1341[61]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_62.INIT0 = 16'h5666;
    defparam add_6_62.INIT1 = 16'h5666;
    defparam add_6_62.INJECT1_0 = "NO";
    defparam add_6_62.INJECT1_1 = "NO";
    CCU2D add_6_60 (.A0(d3[58]), .B0(d4[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[59]), .B1(d4[59]), .C1(GND_net), .D1(GND_net), .CIN(n1283), 
          .COUT(n1284), .S0(d4_63__N_1341[58]), .S1(d4_63__N_1341[59]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_60.INIT0 = 16'h5666;
    defparam add_6_60.INIT1 = 16'h5666;
    defparam add_6_60.INJECT1_0 = "NO";
    defparam add_6_60.INJECT1_1 = "NO";
    CCU2D add_6_58 (.A0(d3[56]), .B0(d4[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[57]), .B1(d4[57]), .C1(GND_net), .D1(GND_net), .CIN(n1282), 
          .COUT(n1283), .S0(d4_63__N_1341[56]), .S1(d4_63__N_1341[57]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_58.INIT0 = 16'h5666;
    defparam add_6_58.INIT1 = 16'h5666;
    defparam add_6_58.INJECT1_0 = "NO";
    defparam add_6_58.INJECT1_1 = "NO";
    CCU2D add_6_56 (.A0(d3[54]), .B0(d4[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[55]), .B1(d4[55]), .C1(GND_net), .D1(GND_net), .CIN(n1281), 
          .COUT(n1282), .S0(d4_63__N_1341[54]), .S1(d4_63__N_1341[55]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_56.INIT0 = 16'h5666;
    defparam add_6_56.INIT1 = 16'h5666;
    defparam add_6_56.INJECT1_0 = "NO";
    defparam add_6_56.INJECT1_1 = "NO";
    CCU2D add_6_54 (.A0(d3[52]), .B0(d4[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[53]), .B1(d4[53]), .C1(GND_net), .D1(GND_net), .CIN(n1280), 
          .COUT(n1281), .S0(d4_63__N_1341[52]), .S1(d4_63__N_1341[53]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_54.INIT0 = 16'h5666;
    defparam add_6_54.INIT1 = 16'h5666;
    defparam add_6_54.INJECT1_0 = "NO";
    defparam add_6_54.INJECT1_1 = "NO";
    CCU2D add_6_52 (.A0(d3[50]), .B0(d4[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[51]), .B1(d4[51]), .C1(GND_net), .D1(GND_net), .CIN(n1279), 
          .COUT(n1280), .S0(d4_63__N_1341[50]), .S1(d4_63__N_1341[51]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_52.INIT0 = 16'h5666;
    defparam add_6_52.INIT1 = 16'h5666;
    defparam add_6_52.INJECT1_0 = "NO";
    defparam add_6_52.INJECT1_1 = "NO";
    CCU2D add_6_50 (.A0(d3[48]), .B0(d4[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[49]), .B1(d4[49]), .C1(GND_net), .D1(GND_net), .CIN(n1278), 
          .COUT(n1279), .S0(d4_63__N_1341[48]), .S1(d4_63__N_1341[49]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_50.INIT0 = 16'h5666;
    defparam add_6_50.INIT1 = 16'h5666;
    defparam add_6_50.INJECT1_0 = "NO";
    defparam add_6_50.INJECT1_1 = "NO";
    CCU2D add_6_48 (.A0(d3[46]), .B0(d4[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[47]), .B1(d4[47]), .C1(GND_net), .D1(GND_net), .CIN(n1277), 
          .COUT(n1278), .S0(d4_63__N_1341[46]), .S1(d4_63__N_1341[47]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_48.INIT0 = 16'h5666;
    defparam add_6_48.INIT1 = 16'h5666;
    defparam add_6_48.INJECT1_0 = "NO";
    defparam add_6_48.INJECT1_1 = "NO";
    CCU2D add_6_46 (.A0(d3[44]), .B0(d4[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[45]), .B1(d4[45]), .C1(GND_net), .D1(GND_net), .CIN(n1276), 
          .COUT(n1277), .S0(d4_63__N_1341[44]), .S1(d4_63__N_1341[45]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_46.INIT0 = 16'h5666;
    defparam add_6_46.INIT1 = 16'h5666;
    defparam add_6_46.INJECT1_0 = "NO";
    defparam add_6_46.INJECT1_1 = "NO";
    CCU2D add_6_44 (.A0(d3[42]), .B0(d4[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[43]), .B1(d4[43]), .C1(GND_net), .D1(GND_net), .CIN(n1275), 
          .COUT(n1276), .S0(d4_63__N_1341[42]), .S1(d4_63__N_1341[43]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_44.INIT0 = 16'h5666;
    defparam add_6_44.INIT1 = 16'h5666;
    defparam add_6_44.INJECT1_0 = "NO";
    defparam add_6_44.INJECT1_1 = "NO";
    CCU2D add_6_42 (.A0(d3[40]), .B0(d4[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[41]), .B1(d4[41]), .C1(GND_net), .D1(GND_net), .CIN(n1274), 
          .COUT(n1275), .S0(d4_63__N_1341[40]), .S1(d4_63__N_1341[41]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_42.INIT0 = 16'h5666;
    defparam add_6_42.INIT1 = 16'h5666;
    defparam add_6_42.INJECT1_0 = "NO";
    defparam add_6_42.INJECT1_1 = "NO";
    CCU2D add_6_40 (.A0(d3[38]), .B0(d4[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[39]), .B1(d4[39]), .C1(GND_net), .D1(GND_net), .CIN(n1273), 
          .COUT(n1274), .S0(d4_63__N_1341[38]), .S1(d4_63__N_1341[39]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_40.INIT0 = 16'h5666;
    defparam add_6_40.INIT1 = 16'h5666;
    defparam add_6_40.INJECT1_0 = "NO";
    defparam add_6_40.INJECT1_1 = "NO";
    CCU2D add_6_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[37]), .B1(d4[37]), .C1(GND_net), .D1(GND_net), .CIN(n1272), 
          .COUT(n1273), .S0(d4_63__N_1341[36]), .S1(d4_63__N_1341[37]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_38.INIT0 = 16'h5666;
    defparam add_6_38.INIT1 = 16'h5666;
    defparam add_6_38.INJECT1_0 = "NO";
    defparam add_6_38.INJECT1_1 = "NO";
    CCU2D add_6_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n1271), 
          .COUT(n1272), .S0(d4_63__N_1341[34]), .S1(d4_63__N_1341[35]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_36.INIT0 = 16'h5666;
    defparam add_6_36.INIT1 = 16'h5666;
    defparam add_6_36.INJECT1_0 = "NO";
    defparam add_6_36.INJECT1_1 = "NO";
    CCU2D add_6_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n1270), 
          .COUT(n1271), .S0(d4_63__N_1341[32]), .S1(d4_63__N_1341[33]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_34.INIT0 = 16'h5666;
    defparam add_6_34.INIT1 = 16'h5666;
    defparam add_6_34.INJECT1_0 = "NO";
    defparam add_6_34.INJECT1_1 = "NO";
    CCU2D add_6_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n1269), 
          .COUT(n1270), .S0(d4_63__N_1341[30]), .S1(d4_63__N_1341[31]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_32.INIT0 = 16'h5666;
    defparam add_6_32.INIT1 = 16'h5666;
    defparam add_6_32.INJECT1_0 = "NO";
    defparam add_6_32.INJECT1_1 = "NO";
    CCU2D add_6_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n1268), 
          .COUT(n1269), .S0(d4_63__N_1341[28]), .S1(d4_63__N_1341[29]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_30.INIT0 = 16'h5666;
    defparam add_6_30.INIT1 = 16'h5666;
    defparam add_6_30.INJECT1_0 = "NO";
    defparam add_6_30.INJECT1_1 = "NO";
    CCU2D add_6_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n1267), 
          .COUT(n1268), .S0(d4_63__N_1341[26]), .S1(d4_63__N_1341[27]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_28.INIT0 = 16'h5666;
    defparam add_6_28.INIT1 = 16'h5666;
    defparam add_6_28.INJECT1_0 = "NO";
    defparam add_6_28.INJECT1_1 = "NO";
    CCU2D add_6_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n1266), 
          .COUT(n1267), .S0(d4_63__N_1341[24]), .S1(d4_63__N_1341[25]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_26.INIT0 = 16'h5666;
    defparam add_6_26.INIT1 = 16'h5666;
    defparam add_6_26.INJECT1_0 = "NO";
    defparam add_6_26.INJECT1_1 = "NO";
    CCU2D add_6_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n1265), 
          .COUT(n1266), .S0(d4_63__N_1341[22]), .S1(d4_63__N_1341[23]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_24.INIT0 = 16'h5666;
    defparam add_6_24.INIT1 = 16'h5666;
    defparam add_6_24.INJECT1_0 = "NO";
    defparam add_6_24.INJECT1_1 = "NO";
    CCU2D add_6_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n1264), 
          .COUT(n1265), .S0(d4_63__N_1341[20]), .S1(d4_63__N_1341[21]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_22.INIT0 = 16'h5666;
    defparam add_6_22.INIT1 = 16'h5666;
    defparam add_6_22.INJECT1_0 = "NO";
    defparam add_6_22.INJECT1_1 = "NO";
    CCU2D add_6_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n1263), 
          .COUT(n1264), .S0(d4_63__N_1341[18]), .S1(d4_63__N_1341[19]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_20.INIT0 = 16'h5666;
    defparam add_6_20.INIT1 = 16'h5666;
    defparam add_6_20.INJECT1_0 = "NO";
    defparam add_6_20.INJECT1_1 = "NO";
    CCU2D add_6_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n1262), 
          .COUT(n1263), .S0(d4_63__N_1341[16]), .S1(d4_63__N_1341[17]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_18.INIT0 = 16'h5666;
    defparam add_6_18.INIT1 = 16'h5666;
    defparam add_6_18.INJECT1_0 = "NO";
    defparam add_6_18.INJECT1_1 = "NO";
    CCU2D add_6_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n1261), 
          .COUT(n1262), .S0(d4_63__N_1341[14]), .S1(d4_63__N_1341[15]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_16.INIT0 = 16'h5666;
    defparam add_6_16.INIT1 = 16'h5666;
    defparam add_6_16.INJECT1_0 = "NO";
    defparam add_6_16.INJECT1_1 = "NO";
    CCU2D add_6_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n1260), 
          .COUT(n1261), .S0(d4_63__N_1341[12]), .S1(d4_63__N_1341[13]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_14.INIT0 = 16'h5666;
    defparam add_6_14.INIT1 = 16'h5666;
    defparam add_6_14.INJECT1_0 = "NO";
    defparam add_6_14.INJECT1_1 = "NO";
    CCU2D add_6_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n1259), 
          .COUT(n1260), .S0(d4_63__N_1341[10]), .S1(d4_63__N_1341[11]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_12.INIT0 = 16'h5666;
    defparam add_6_12.INIT1 = 16'h5666;
    defparam add_6_12.INJECT1_0 = "NO";
    defparam add_6_12.INJECT1_1 = "NO";
    CCU2D add_6_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n1258), 
          .COUT(n1259), .S0(d4_63__N_1341[8]), .S1(d4_63__N_1341[9]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_10.INIT0 = 16'h5666;
    defparam add_6_10.INIT1 = 16'h5666;
    defparam add_6_10.INJECT1_0 = "NO";
    defparam add_6_10.INJECT1_1 = "NO";
    CCU2D add_6_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n1257), 
          .COUT(n1258), .S0(d4_63__N_1341[6]), .S1(d4_63__N_1341[7]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_8.INIT0 = 16'h5666;
    defparam add_6_8.INIT1 = 16'h5666;
    defparam add_6_8.INJECT1_0 = "NO";
    defparam add_6_8.INJECT1_1 = "NO";
    CCU2D add_6_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n1256), 
          .COUT(n1257), .S0(d4_63__N_1341[4]), .S1(d4_63__N_1341[5]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_6.INIT0 = 16'h5666;
    defparam add_6_6.INIT1 = 16'h5666;
    defparam add_6_6.INJECT1_0 = "NO";
    defparam add_6_6.INJECT1_1 = "NO";
    CCU2D add_6_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n1255), 
          .COUT(n1256), .S0(d4_63__N_1341[2]), .S1(d4_63__N_1341[3]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_4.INIT0 = 16'h5666;
    defparam add_6_4.INIT1 = 16'h5666;
    defparam add_6_4.INJECT1_0 = "NO";
    defparam add_6_4.INJECT1_1 = "NO";
    CCU2D add_6_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n1255), 
          .S1(d4_63__N_1341[1]));   // c:/users/user/lattice/fpgasdr/cic.v(78[10:17])
    defparam add_6_2.INIT0 = 16'h7000;
    defparam add_6_2.INIT1 = 16'h5666;
    defparam add_6_2.INJECT1_0 = "NO";
    defparam add_6_2.INJECT1_1 = "NO";
    CCU2D add_5_64 (.A0(d2[62]), .B0(d3[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[63]), .B1(d3[63]), .C1(GND_net), .D1(GND_net), .CIN(n1252), 
          .S0(d3_63__N_1277[62]), .S1(d3_63__N_1277[63]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_64.INIT0 = 16'h5666;
    defparam add_5_64.INIT1 = 16'h5666;
    defparam add_5_64.INJECT1_0 = "NO";
    defparam add_5_64.INJECT1_1 = "NO";
    CCU2D add_5_62 (.A0(d2[60]), .B0(d3[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[61]), .B1(d3[61]), .C1(GND_net), .D1(GND_net), .CIN(n1251), 
          .COUT(n1252), .S0(d3_63__N_1277[60]), .S1(d3_63__N_1277[61]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_62.INIT0 = 16'h5666;
    defparam add_5_62.INIT1 = 16'h5666;
    defparam add_5_62.INJECT1_0 = "NO";
    defparam add_5_62.INJECT1_1 = "NO";
    CCU2D add_5_60 (.A0(d2[58]), .B0(d3[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[59]), .B1(d3[59]), .C1(GND_net), .D1(GND_net), .CIN(n1250), 
          .COUT(n1251), .S0(d3_63__N_1277[58]), .S1(d3_63__N_1277[59]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_60.INIT0 = 16'h5666;
    defparam add_5_60.INIT1 = 16'h5666;
    defparam add_5_60.INJECT1_0 = "NO";
    defparam add_5_60.INJECT1_1 = "NO";
    CCU2D add_5_58 (.A0(d2[56]), .B0(d3[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[57]), .B1(d3[57]), .C1(GND_net), .D1(GND_net), .CIN(n1249), 
          .COUT(n1250), .S0(d3_63__N_1277[56]), .S1(d3_63__N_1277[57]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_58.INIT0 = 16'h5666;
    defparam add_5_58.INIT1 = 16'h5666;
    defparam add_5_58.INJECT1_0 = "NO";
    defparam add_5_58.INJECT1_1 = "NO";
    CCU2D add_5_56 (.A0(d2[54]), .B0(d3[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[55]), .B1(d3[55]), .C1(GND_net), .D1(GND_net), .CIN(n1248), 
          .COUT(n1249), .S0(d3_63__N_1277[54]), .S1(d3_63__N_1277[55]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_56.INIT0 = 16'h5666;
    defparam add_5_56.INIT1 = 16'h5666;
    defparam add_5_56.INJECT1_0 = "NO";
    defparam add_5_56.INJECT1_1 = "NO";
    CCU2D add_5_54 (.A0(d2[52]), .B0(d3[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[53]), .B1(d3[53]), .C1(GND_net), .D1(GND_net), .CIN(n1247), 
          .COUT(n1248), .S0(d3_63__N_1277[52]), .S1(d3_63__N_1277[53]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_54.INIT0 = 16'h5666;
    defparam add_5_54.INIT1 = 16'h5666;
    defparam add_5_54.INJECT1_0 = "NO";
    defparam add_5_54.INJECT1_1 = "NO";
    CCU2D add_5_52 (.A0(d2[50]), .B0(d3[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[51]), .B1(d3[51]), .C1(GND_net), .D1(GND_net), .CIN(n1246), 
          .COUT(n1247), .S0(d3_63__N_1277[50]), .S1(d3_63__N_1277[51]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_52.INIT0 = 16'h5666;
    defparam add_5_52.INIT1 = 16'h5666;
    defparam add_5_52.INJECT1_0 = "NO";
    defparam add_5_52.INJECT1_1 = "NO";
    CCU2D add_5_50 (.A0(d2[48]), .B0(d3[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[49]), .B1(d3[49]), .C1(GND_net), .D1(GND_net), .CIN(n1245), 
          .COUT(n1246), .S0(d3_63__N_1277[48]), .S1(d3_63__N_1277[49]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_50.INIT0 = 16'h5666;
    defparam add_5_50.INIT1 = 16'h5666;
    defparam add_5_50.INJECT1_0 = "NO";
    defparam add_5_50.INJECT1_1 = "NO";
    CCU2D add_5_48 (.A0(d2[46]), .B0(d3[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[47]), .B1(d3[47]), .C1(GND_net), .D1(GND_net), .CIN(n1244), 
          .COUT(n1245), .S0(d3_63__N_1277[46]), .S1(d3_63__N_1277[47]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_48.INIT0 = 16'h5666;
    defparam add_5_48.INIT1 = 16'h5666;
    defparam add_5_48.INJECT1_0 = "NO";
    defparam add_5_48.INJECT1_1 = "NO";
    CCU2D add_5_46 (.A0(d2[44]), .B0(d3[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[45]), .B1(d3[45]), .C1(GND_net), .D1(GND_net), .CIN(n1243), 
          .COUT(n1244), .S0(d3_63__N_1277[44]), .S1(d3_63__N_1277[45]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_46.INIT0 = 16'h5666;
    defparam add_5_46.INIT1 = 16'h5666;
    defparam add_5_46.INJECT1_0 = "NO";
    defparam add_5_46.INJECT1_1 = "NO";
    CCU2D add_5_44 (.A0(d2[42]), .B0(d3[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[43]), .B1(d3[43]), .C1(GND_net), .D1(GND_net), .CIN(n1242), 
          .COUT(n1243), .S0(d3_63__N_1277[42]), .S1(d3_63__N_1277[43]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_44.INIT0 = 16'h5666;
    defparam add_5_44.INIT1 = 16'h5666;
    defparam add_5_44.INJECT1_0 = "NO";
    defparam add_5_44.INJECT1_1 = "NO";
    CCU2D add_5_42 (.A0(d2[40]), .B0(d3[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[41]), .B1(d3[41]), .C1(GND_net), .D1(GND_net), .CIN(n1241), 
          .COUT(n1242), .S0(d3_63__N_1277[40]), .S1(d3_63__N_1277[41]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_42.INIT0 = 16'h5666;
    defparam add_5_42.INIT1 = 16'h5666;
    defparam add_5_42.INJECT1_0 = "NO";
    defparam add_5_42.INJECT1_1 = "NO";
    CCU2D add_5_40 (.A0(d2[38]), .B0(d3[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[39]), .B1(d3[39]), .C1(GND_net), .D1(GND_net), .CIN(n1240), 
          .COUT(n1241), .S0(d3_63__N_1277[38]), .S1(d3_63__N_1277[39]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_40.INIT0 = 16'h5666;
    defparam add_5_40.INIT1 = 16'h5666;
    defparam add_5_40.INJECT1_0 = "NO";
    defparam add_5_40.INJECT1_1 = "NO";
    CCU2D add_5_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[37]), .B1(d3[37]), .C1(GND_net), .D1(GND_net), .CIN(n1239), 
          .COUT(n1240), .S0(d3_63__N_1277[36]), .S1(d3_63__N_1277[37]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_38.INIT0 = 16'h5666;
    defparam add_5_38.INIT1 = 16'h5666;
    defparam add_5_38.INJECT1_0 = "NO";
    defparam add_5_38.INJECT1_1 = "NO";
    CCU2D add_5_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n1238), 
          .COUT(n1239), .S0(d3_63__N_1277[34]), .S1(d3_63__N_1277[35]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_36.INIT0 = 16'h5666;
    defparam add_5_36.INIT1 = 16'h5666;
    defparam add_5_36.INJECT1_0 = "NO";
    defparam add_5_36.INJECT1_1 = "NO";
    CCU2D add_5_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n1237), 
          .COUT(n1238), .S0(d3_63__N_1277[32]), .S1(d3_63__N_1277[33]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_34.INIT0 = 16'h5666;
    defparam add_5_34.INIT1 = 16'h5666;
    defparam add_5_34.INJECT1_0 = "NO";
    defparam add_5_34.INJECT1_1 = "NO";
    CCU2D add_5_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n1236), 
          .COUT(n1237), .S0(d3_63__N_1277[30]), .S1(d3_63__N_1277[31]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_32.INIT0 = 16'h5666;
    defparam add_5_32.INIT1 = 16'h5666;
    defparam add_5_32.INJECT1_0 = "NO";
    defparam add_5_32.INJECT1_1 = "NO";
    CCU2D add_5_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n1235), 
          .COUT(n1236), .S0(d3_63__N_1277[28]), .S1(d3_63__N_1277[29]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_30.INIT0 = 16'h5666;
    defparam add_5_30.INIT1 = 16'h5666;
    defparam add_5_30.INJECT1_0 = "NO";
    defparam add_5_30.INJECT1_1 = "NO";
    CCU2D add_5_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n1234), 
          .COUT(n1235), .S0(d3_63__N_1277[26]), .S1(d3_63__N_1277[27]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_28.INIT0 = 16'h5666;
    defparam add_5_28.INIT1 = 16'h5666;
    defparam add_5_28.INJECT1_0 = "NO";
    defparam add_5_28.INJECT1_1 = "NO";
    CCU2D add_5_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n1233), 
          .COUT(n1234), .S0(d3_63__N_1277[24]), .S1(d3_63__N_1277[25]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_26.INIT0 = 16'h5666;
    defparam add_5_26.INIT1 = 16'h5666;
    defparam add_5_26.INJECT1_0 = "NO";
    defparam add_5_26.INJECT1_1 = "NO";
    CCU2D add_5_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n1232), 
          .COUT(n1233), .S0(d3_63__N_1277[22]), .S1(d3_63__N_1277[23]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_24.INIT0 = 16'h5666;
    defparam add_5_24.INIT1 = 16'h5666;
    defparam add_5_24.INJECT1_0 = "NO";
    defparam add_5_24.INJECT1_1 = "NO";
    CCU2D add_5_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n1231), 
          .COUT(n1232), .S0(d3_63__N_1277[20]), .S1(d3_63__N_1277[21]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_22.INIT0 = 16'h5666;
    defparam add_5_22.INIT1 = 16'h5666;
    defparam add_5_22.INJECT1_0 = "NO";
    defparam add_5_22.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n1230), 
          .COUT(n1231), .S0(d3_63__N_1277[18]), .S1(d3_63__N_1277[19]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_20.INIT0 = 16'h5666;
    defparam add_5_20.INIT1 = 16'h5666;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n1229), 
          .COUT(n1230), .S0(d3_63__N_1277[16]), .S1(d3_63__N_1277[17]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_18.INIT0 = 16'h5666;
    defparam add_5_18.INIT1 = 16'h5666;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n1228), 
          .COUT(n1229), .S0(d3_63__N_1277[14]), .S1(d3_63__N_1277[15]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5666;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    CCU2D add_5_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n1227), 
          .COUT(n1228), .S0(d3_63__N_1277[12]), .S1(d3_63__N_1277[13]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n1226), 
          .COUT(n1227), .S0(d3_63__N_1277[10]), .S1(d3_63__N_1277[11]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n1225), 
          .COUT(n1226), .S0(d3_63__N_1277[8]), .S1(d3_63__N_1277[9]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n1224), 
          .COUT(n1225), .S0(d3_63__N_1277[6]), .S1(d3_63__N_1277[7]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    CCU2D add_5_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n1223), 
          .COUT(n1224), .S0(d3_63__N_1277[4]), .S1(d3_63__N_1277[5]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n1222), 
          .COUT(n1223), .S0(d3_63__N_1277[2]), .S1(d3_63__N_1277[3]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    CCU2D add_5_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n1222), 
          .S1(d3_63__N_1277[1]));   // c:/users/user/lattice/fpgasdr/cic.v(76[10:17])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D add_4_64 (.A0(d1[62]), .B0(d2[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[63]), .B1(d2[63]), .C1(GND_net), .D1(GND_net), .CIN(n1219), 
          .S0(d2_63__N_1213[62]), .S1(d2_63__N_1213[63]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_64.INIT0 = 16'h5666;
    defparam add_4_64.INIT1 = 16'h5666;
    defparam add_4_64.INJECT1_0 = "NO";
    defparam add_4_64.INJECT1_1 = "NO";
    CCU2D add_4_62 (.A0(d1[60]), .B0(d2[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[61]), .B1(d2[61]), .C1(GND_net), .D1(GND_net), .CIN(n1218), 
          .COUT(n1219), .S0(d2_63__N_1213[60]), .S1(d2_63__N_1213[61]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_62.INIT0 = 16'h5666;
    defparam add_4_62.INIT1 = 16'h5666;
    defparam add_4_62.INJECT1_0 = "NO";
    defparam add_4_62.INJECT1_1 = "NO";
    CCU2D add_4_60 (.A0(d1[58]), .B0(d2[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[59]), .B1(d2[59]), .C1(GND_net), .D1(GND_net), .CIN(n1217), 
          .COUT(n1218), .S0(d2_63__N_1213[58]), .S1(d2_63__N_1213[59]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_60.INIT0 = 16'h5666;
    defparam add_4_60.INIT1 = 16'h5666;
    defparam add_4_60.INJECT1_0 = "NO";
    defparam add_4_60.INJECT1_1 = "NO";
    CCU2D add_4_58 (.A0(d1[56]), .B0(d2[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[57]), .B1(d2[57]), .C1(GND_net), .D1(GND_net), .CIN(n1216), 
          .COUT(n1217), .S0(d2_63__N_1213[56]), .S1(d2_63__N_1213[57]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_58.INIT0 = 16'h5666;
    defparam add_4_58.INIT1 = 16'h5666;
    defparam add_4_58.INJECT1_0 = "NO";
    defparam add_4_58.INJECT1_1 = "NO";
    CCU2D add_4_56 (.A0(d1[54]), .B0(d2[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[55]), .B1(d2[55]), .C1(GND_net), .D1(GND_net), .CIN(n1215), 
          .COUT(n1216), .S0(d2_63__N_1213[54]), .S1(d2_63__N_1213[55]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_56.INIT0 = 16'h5666;
    defparam add_4_56.INIT1 = 16'h5666;
    defparam add_4_56.INJECT1_0 = "NO";
    defparam add_4_56.INJECT1_1 = "NO";
    CCU2D add_4_54 (.A0(d1[52]), .B0(d2[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[53]), .B1(d2[53]), .C1(GND_net), .D1(GND_net), .CIN(n1214), 
          .COUT(n1215), .S0(d2_63__N_1213[52]), .S1(d2_63__N_1213[53]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_54.INIT0 = 16'h5666;
    defparam add_4_54.INIT1 = 16'h5666;
    defparam add_4_54.INJECT1_0 = "NO";
    defparam add_4_54.INJECT1_1 = "NO";
    CCU2D add_4_52 (.A0(d1[50]), .B0(d2[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[51]), .B1(d2[51]), .C1(GND_net), .D1(GND_net), .CIN(n1213), 
          .COUT(n1214), .S0(d2_63__N_1213[50]), .S1(d2_63__N_1213[51]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_52.INIT0 = 16'h5666;
    defparam add_4_52.INIT1 = 16'h5666;
    defparam add_4_52.INJECT1_0 = "NO";
    defparam add_4_52.INJECT1_1 = "NO";
    CCU2D add_4_50 (.A0(d1[48]), .B0(d2[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[49]), .B1(d2[49]), .C1(GND_net), .D1(GND_net), .CIN(n1212), 
          .COUT(n1213), .S0(d2_63__N_1213[48]), .S1(d2_63__N_1213[49]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_50.INIT0 = 16'h5666;
    defparam add_4_50.INIT1 = 16'h5666;
    defparam add_4_50.INJECT1_0 = "NO";
    defparam add_4_50.INJECT1_1 = "NO";
    CCU2D add_4_48 (.A0(d1[46]), .B0(d2[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[47]), .B1(d2[47]), .C1(GND_net), .D1(GND_net), .CIN(n1211), 
          .COUT(n1212), .S0(d2_63__N_1213[46]), .S1(d2_63__N_1213[47]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_48.INIT0 = 16'h5666;
    defparam add_4_48.INIT1 = 16'h5666;
    defparam add_4_48.INJECT1_0 = "NO";
    defparam add_4_48.INJECT1_1 = "NO";
    CCU2D add_4_46 (.A0(d1[44]), .B0(d2[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[45]), .B1(d2[45]), .C1(GND_net), .D1(GND_net), .CIN(n1210), 
          .COUT(n1211), .S0(d2_63__N_1213[44]), .S1(d2_63__N_1213[45]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_46.INIT0 = 16'h5666;
    defparam add_4_46.INIT1 = 16'h5666;
    defparam add_4_46.INJECT1_0 = "NO";
    defparam add_4_46.INJECT1_1 = "NO";
    CCU2D add_4_44 (.A0(d1[42]), .B0(d2[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[43]), .B1(d2[43]), .C1(GND_net), .D1(GND_net), .CIN(n1209), 
          .COUT(n1210), .S0(d2_63__N_1213[42]), .S1(d2_63__N_1213[43]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_44.INIT0 = 16'h5666;
    defparam add_4_44.INIT1 = 16'h5666;
    defparam add_4_44.INJECT1_0 = "NO";
    defparam add_4_44.INJECT1_1 = "NO";
    CCU2D add_4_42 (.A0(d1[40]), .B0(d2[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[41]), .B1(d2[41]), .C1(GND_net), .D1(GND_net), .CIN(n1208), 
          .COUT(n1209), .S0(d2_63__N_1213[40]), .S1(d2_63__N_1213[41]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_42.INIT0 = 16'h5666;
    defparam add_4_42.INIT1 = 16'h5666;
    defparam add_4_42.INJECT1_0 = "NO";
    defparam add_4_42.INJECT1_1 = "NO";
    CCU2D add_4_40 (.A0(d1[38]), .B0(d2[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[39]), .B1(d2[39]), .C1(GND_net), .D1(GND_net), .CIN(n1207), 
          .COUT(n1208), .S0(d2_63__N_1213[38]), .S1(d2_63__N_1213[39]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_40.INIT0 = 16'h5666;
    defparam add_4_40.INIT1 = 16'h5666;
    defparam add_4_40.INJECT1_0 = "NO";
    defparam add_4_40.INJECT1_1 = "NO";
    CCU2D add_4_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[37]), .B1(d2[37]), .C1(GND_net), .D1(GND_net), .CIN(n1206), 
          .COUT(n1207), .S0(d2_63__N_1213[36]), .S1(d2_63__N_1213[37]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_38.INIT0 = 16'h5666;
    defparam add_4_38.INIT1 = 16'h5666;
    defparam add_4_38.INJECT1_0 = "NO";
    defparam add_4_38.INJECT1_1 = "NO";
    CCU2D add_4_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n1205), 
          .COUT(n1206), .S0(d2_63__N_1213[34]), .S1(d2_63__N_1213[35]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_36.INIT0 = 16'h5666;
    defparam add_4_36.INIT1 = 16'h5666;
    defparam add_4_36.INJECT1_0 = "NO";
    defparam add_4_36.INJECT1_1 = "NO";
    CCU2D add_4_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n1204), 
          .COUT(n1205), .S0(d2_63__N_1213[32]), .S1(d2_63__N_1213[33]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_34.INIT0 = 16'h5666;
    defparam add_4_34.INIT1 = 16'h5666;
    defparam add_4_34.INJECT1_0 = "NO";
    defparam add_4_34.INJECT1_1 = "NO";
    CCU2D add_4_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n1203), 
          .COUT(n1204), .S0(d2_63__N_1213[30]), .S1(d2_63__N_1213[31]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_32.INIT0 = 16'h5666;
    defparam add_4_32.INIT1 = 16'h5666;
    defparam add_4_32.INJECT1_0 = "NO";
    defparam add_4_32.INJECT1_1 = "NO";
    CCU2D add_4_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n1202), 
          .COUT(n1203), .S0(d2_63__N_1213[28]), .S1(d2_63__N_1213[29]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_30.INIT0 = 16'h5666;
    defparam add_4_30.INIT1 = 16'h5666;
    defparam add_4_30.INJECT1_0 = "NO";
    defparam add_4_30.INJECT1_1 = "NO";
    CCU2D add_4_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n1201), 
          .COUT(n1202), .S0(d2_63__N_1213[26]), .S1(d2_63__N_1213[27]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_28.INIT0 = 16'h5666;
    defparam add_4_28.INIT1 = 16'h5666;
    defparam add_4_28.INJECT1_0 = "NO";
    defparam add_4_28.INJECT1_1 = "NO";
    CCU2D add_4_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n1200), 
          .COUT(n1201), .S0(d2_63__N_1213[24]), .S1(d2_63__N_1213[25]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_26.INIT0 = 16'h5666;
    defparam add_4_26.INIT1 = 16'h5666;
    defparam add_4_26.INJECT1_0 = "NO";
    defparam add_4_26.INJECT1_1 = "NO";
    CCU2D add_4_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n1199), 
          .COUT(n1200), .S0(d2_63__N_1213[22]), .S1(d2_63__N_1213[23]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_24.INIT0 = 16'h5666;
    defparam add_4_24.INIT1 = 16'h5666;
    defparam add_4_24.INJECT1_0 = "NO";
    defparam add_4_24.INJECT1_1 = "NO";
    CCU2D add_4_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n1198), 
          .COUT(n1199), .S0(d2_63__N_1213[20]), .S1(d2_63__N_1213[21]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_22.INIT0 = 16'h5666;
    defparam add_4_22.INIT1 = 16'h5666;
    defparam add_4_22.INJECT1_0 = "NO";
    defparam add_4_22.INJECT1_1 = "NO";
    CCU2D add_4_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n1197), 
          .COUT(n1198), .S0(d2_63__N_1213[18]), .S1(d2_63__N_1213[19]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_20.INIT0 = 16'h5666;
    defparam add_4_20.INIT1 = 16'h5666;
    defparam add_4_20.INJECT1_0 = "NO";
    defparam add_4_20.INJECT1_1 = "NO";
    CCU2D add_4_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n1196), 
          .COUT(n1197), .S0(d2_63__N_1213[16]), .S1(d2_63__N_1213[17]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_18.INIT0 = 16'h5666;
    defparam add_4_18.INIT1 = 16'h5666;
    defparam add_4_18.INJECT1_0 = "NO";
    defparam add_4_18.INJECT1_1 = "NO";
    CCU2D add_4_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n1195), 
          .COUT(n1196), .S0(d2_63__N_1213[14]), .S1(d2_63__N_1213[15]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_16.INIT0 = 16'h5666;
    defparam add_4_16.INIT1 = 16'h5666;
    defparam add_4_16.INJECT1_0 = "NO";
    defparam add_4_16.INJECT1_1 = "NO";
    CCU2D add_4_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n1194), 
          .COUT(n1195), .S0(d2_63__N_1213[12]), .S1(d2_63__N_1213[13]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_14.INIT0 = 16'h5666;
    defparam add_4_14.INIT1 = 16'h5666;
    defparam add_4_14.INJECT1_0 = "NO";
    defparam add_4_14.INJECT1_1 = "NO";
    CCU2D add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n1193), 
          .COUT(n1194), .S0(d2_63__N_1213[10]), .S1(d2_63__N_1213[11]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_12.INIT0 = 16'h5666;
    defparam add_4_12.INIT1 = 16'h5666;
    defparam add_4_12.INJECT1_0 = "NO";
    defparam add_4_12.INJECT1_1 = "NO";
    CCU2D add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n1192), 
          .COUT(n1193), .S0(d2_63__N_1213[8]), .S1(d2_63__N_1213[9]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_10.INIT0 = 16'h5666;
    defparam add_4_10.INIT1 = 16'h5666;
    defparam add_4_10.INJECT1_0 = "NO";
    defparam add_4_10.INJECT1_1 = "NO";
    CCU2D add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1191), 
          .COUT(n1192), .S0(d2_63__N_1213[6]), .S1(d2_63__N_1213[7]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_8.INIT0 = 16'h5666;
    defparam add_4_8.INIT1 = 16'h5666;
    defparam add_4_8.INJECT1_0 = "NO";
    defparam add_4_8.INJECT1_1 = "NO";
    CCU2D add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1190), 
          .COUT(n1191), .S0(d2_63__N_1213[4]), .S1(d2_63__N_1213[5]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_6.INIT0 = 16'h5666;
    defparam add_4_6.INIT1 = 16'h5666;
    defparam add_4_6.INJECT1_0 = "NO";
    defparam add_4_6.INJECT1_1 = "NO";
    CCU2D add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1189), 
          .COUT(n1190), .S0(d2_63__N_1213[2]), .S1(d2_63__N_1213[3]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_4.INIT0 = 16'h5666;
    defparam add_4_4.INIT1 = 16'h5666;
    defparam add_4_4.INJECT1_0 = "NO";
    defparam add_4_4.INJECT1_1 = "NO";
    CCU2D add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n1189), 
          .S1(d2_63__N_1213[1]));   // c:/users/user/lattice/fpgasdr/cic.v(74[10:17])
    defparam add_4_2.INIT0 = 16'h7000;
    defparam add_4_2.INIT1 = 16'h5666;
    defparam add_4_2.INJECT1_0 = "NO";
    defparam add_4_2.INJECT1_1 = "NO";
    CCU2D add_3_64 (.A0(MixerOutSin_c_7), .B0(d1[62]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[63]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1186), .S0(d1_63__N_1149[62]), .S1(d1_63__N_1149[63]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_64.INIT0 = 16'h5666;
    defparam add_3_64.INIT1 = 16'h5666;
    defparam add_3_64.INJECT1_0 = "NO";
    defparam add_3_64.INJECT1_1 = "NO";
    CCU2D add_3_62 (.A0(MixerOutSin_c_7), .B0(d1[60]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[61]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1185), .COUT(n1186), .S0(d1_63__N_1149[60]), .S1(d1_63__N_1149[61]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_62.INIT0 = 16'h5666;
    defparam add_3_62.INIT1 = 16'h5666;
    defparam add_3_62.INJECT1_0 = "NO";
    defparam add_3_62.INJECT1_1 = "NO";
    CCU2D add_3_60 (.A0(MixerOutSin_c_7), .B0(d1[58]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[59]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1184), .COUT(n1185), .S0(d1_63__N_1149[58]), .S1(d1_63__N_1149[59]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_60.INIT0 = 16'h5666;
    defparam add_3_60.INIT1 = 16'h5666;
    defparam add_3_60.INJECT1_0 = "NO";
    defparam add_3_60.INJECT1_1 = "NO";
    CCU2D add_3_58 (.A0(MixerOutSin_c_7), .B0(d1[56]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[57]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1183), .COUT(n1184), .S0(d1_63__N_1149[56]), .S1(d1_63__N_1149[57]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_58.INIT0 = 16'h5666;
    defparam add_3_58.INIT1 = 16'h5666;
    defparam add_3_58.INJECT1_0 = "NO";
    defparam add_3_58.INJECT1_1 = "NO";
    CCU2D add_3_56 (.A0(MixerOutSin_c_7), .B0(d1[54]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[55]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1182), .COUT(n1183), .S0(d1_63__N_1149[54]), .S1(d1_63__N_1149[55]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_56.INIT0 = 16'h5666;
    defparam add_3_56.INIT1 = 16'h5666;
    defparam add_3_56.INJECT1_0 = "NO";
    defparam add_3_56.INJECT1_1 = "NO";
    CCU2D add_3_54 (.A0(MixerOutSin_c_7), .B0(d1[52]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[53]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1181), .COUT(n1182), .S0(d1_63__N_1149[52]), .S1(d1_63__N_1149[53]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_54.INIT0 = 16'h5666;
    defparam add_3_54.INIT1 = 16'h5666;
    defparam add_3_54.INJECT1_0 = "NO";
    defparam add_3_54.INJECT1_1 = "NO";
    CCU2D add_3_52 (.A0(MixerOutSin_c_7), .B0(d1[50]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[51]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1180), .COUT(n1181), .S0(d1_63__N_1149[50]), .S1(d1_63__N_1149[51]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_52.INIT0 = 16'h5666;
    defparam add_3_52.INIT1 = 16'h5666;
    defparam add_3_52.INJECT1_0 = "NO";
    defparam add_3_52.INJECT1_1 = "NO";
    CCU2D add_3_50 (.A0(MixerOutSin_c_7), .B0(d1[48]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[49]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1179), .COUT(n1180), .S0(d1_63__N_1149[48]), .S1(d1_63__N_1149[49]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_50.INIT0 = 16'h5666;
    defparam add_3_50.INIT1 = 16'h5666;
    defparam add_3_50.INJECT1_0 = "NO";
    defparam add_3_50.INJECT1_1 = "NO";
    CCU2D add_3_48 (.A0(MixerOutSin_c_7), .B0(d1[46]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[47]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1178), .COUT(n1179), .S0(d1_63__N_1149[46]), .S1(d1_63__N_1149[47]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_48.INIT0 = 16'h5666;
    defparam add_3_48.INIT1 = 16'h5666;
    defparam add_3_48.INJECT1_0 = "NO";
    defparam add_3_48.INJECT1_1 = "NO";
    CCU2D add_3_46 (.A0(MixerOutSin_c_7), .B0(d1[44]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[45]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1177), .COUT(n1178), .S0(d1_63__N_1149[44]), .S1(d1_63__N_1149[45]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_46.INIT0 = 16'h5666;
    defparam add_3_46.INIT1 = 16'h5666;
    defparam add_3_46.INJECT1_0 = "NO";
    defparam add_3_46.INJECT1_1 = "NO";
    CCU2D add_3_44 (.A0(MixerOutSin_c_7), .B0(d1[42]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[43]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1176), .COUT(n1177), .S0(d1_63__N_1149[42]), .S1(d1_63__N_1149[43]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_44.INIT0 = 16'h5666;
    defparam add_3_44.INIT1 = 16'h5666;
    defparam add_3_44.INJECT1_0 = "NO";
    defparam add_3_44.INJECT1_1 = "NO";
    CCU2D add_3_42 (.A0(MixerOutSin_c_7), .B0(d1[40]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[41]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1175), .COUT(n1176), .S0(d1_63__N_1149[40]), .S1(d1_63__N_1149[41]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_42.INIT0 = 16'h5666;
    defparam add_3_42.INIT1 = 16'h5666;
    defparam add_3_42.INJECT1_0 = "NO";
    defparam add_3_42.INJECT1_1 = "NO";
    CCU2D add_3_40 (.A0(MixerOutSin_c_7), .B0(d1[38]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[39]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1174), .COUT(n1175), .S0(d1_63__N_1149[38]), .S1(d1_63__N_1149[39]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_40.INIT0 = 16'h5666;
    defparam add_3_40.INIT1 = 16'h5666;
    defparam add_3_40.INJECT1_0 = "NO";
    defparam add_3_40.INJECT1_1 = "NO";
    CCU2D add_3_38 (.A0(MixerOutSin_c_7), .B0(d1[36]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[37]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1173), .COUT(n1174), .S0(d1_63__N_1149[36]), .S1(d1_63__N_1149[37]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_38.INIT0 = 16'h5666;
    defparam add_3_38.INIT1 = 16'h5666;
    defparam add_3_38.INJECT1_0 = "NO";
    defparam add_3_38.INJECT1_1 = "NO";
    CCU2D add_3_36 (.A0(MixerOutSin_c_7), .B0(d1[34]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[35]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1172), .COUT(n1173), .S0(d1_63__N_1149[34]), .S1(d1_63__N_1149[35]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_36.INIT0 = 16'h5666;
    defparam add_3_36.INIT1 = 16'h5666;
    defparam add_3_36.INJECT1_0 = "NO";
    defparam add_3_36.INJECT1_1 = "NO";
    CCU2D add_3_34 (.A0(MixerOutSin_c_7), .B0(d1[32]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[33]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1171), .COUT(n1172), .S0(d1_63__N_1149[32]), .S1(d1_63__N_1149[33]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_34.INIT0 = 16'h5666;
    defparam add_3_34.INIT1 = 16'h5666;
    defparam add_3_34.INJECT1_0 = "NO";
    defparam add_3_34.INJECT1_1 = "NO";
    CCU2D add_3_32 (.A0(MixerOutSin_c_7), .B0(d1[30]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[31]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1170), .COUT(n1171), .S0(d1_63__N_1149[30]), .S1(d1_63__N_1149[31]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_32.INIT0 = 16'h5666;
    defparam add_3_32.INIT1 = 16'h5666;
    defparam add_3_32.INJECT1_0 = "NO";
    defparam add_3_32.INJECT1_1 = "NO";
    CCU2D add_3_30 (.A0(MixerOutSin_c_7), .B0(d1[28]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[29]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1169), .COUT(n1170), .S0(d1_63__N_1149[28]), .S1(d1_63__N_1149[29]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_30.INIT0 = 16'h5666;
    defparam add_3_30.INIT1 = 16'h5666;
    defparam add_3_30.INJECT1_0 = "NO";
    defparam add_3_30.INJECT1_1 = "NO";
    CCU2D add_3_28 (.A0(MixerOutSin_c_7), .B0(d1[26]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[27]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1168), .COUT(n1169), .S0(d1_63__N_1149[26]), .S1(d1_63__N_1149[27]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_28.INIT0 = 16'h5666;
    defparam add_3_28.INIT1 = 16'h5666;
    defparam add_3_28.INJECT1_0 = "NO";
    defparam add_3_28.INJECT1_1 = "NO";
    CCU2D add_3_26 (.A0(MixerOutSin_c_7), .B0(d1[24]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[25]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1167), .COUT(n1168), .S0(d1_63__N_1149[24]), .S1(d1_63__N_1149[25]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_26.INIT0 = 16'h5666;
    defparam add_3_26.INIT1 = 16'h5666;
    defparam add_3_26.INJECT1_0 = "NO";
    defparam add_3_26.INJECT1_1 = "NO";
    CCU2D add_3_24 (.A0(MixerOutSin_c_7), .B0(d1[22]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[23]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1166), .COUT(n1167), .S0(d1_63__N_1149[22]), .S1(d1_63__N_1149[23]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_24.INIT0 = 16'h5666;
    defparam add_3_24.INIT1 = 16'h5666;
    defparam add_3_24.INJECT1_0 = "NO";
    defparam add_3_24.INJECT1_1 = "NO";
    CCU2D add_3_22 (.A0(MixerOutSin_c_7), .B0(d1[20]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[21]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1165), .COUT(n1166), .S0(d1_63__N_1149[20]), .S1(d1_63__N_1149[21]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_22.INIT0 = 16'h5666;
    defparam add_3_22.INIT1 = 16'h5666;
    defparam add_3_22.INJECT1_0 = "NO";
    defparam add_3_22.INJECT1_1 = "NO";
    CCU2D add_3_20 (.A0(MixerOutSin_c_7), .B0(d1[18]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[19]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1164), .COUT(n1165), .S0(d1_63__N_1149[18]), .S1(d1_63__N_1149[19]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_20.INIT0 = 16'h5666;
    defparam add_3_20.INIT1 = 16'h5666;
    defparam add_3_20.INJECT1_0 = "NO";
    defparam add_3_20.INJECT1_1 = "NO";
    CCU2D add_3_18 (.A0(MixerOutSin_c_7), .B0(d1[16]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[17]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1163), .COUT(n1164), .S0(d1_63__N_1149[16]), .S1(d1_63__N_1149[17]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_18.INIT0 = 16'h5666;
    defparam add_3_18.INIT1 = 16'h5666;
    defparam add_3_18.INJECT1_0 = "NO";
    defparam add_3_18.INJECT1_1 = "NO";
    CCU2D add_3_16 (.A0(MixerOutSin_c_7), .B0(d1[14]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[15]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1162), .COUT(n1163), .S0(d1_63__N_1149[14]), .S1(d1_63__N_1149[15]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_16.INIT0 = 16'h5666;
    defparam add_3_16.INIT1 = 16'h5666;
    defparam add_3_16.INJECT1_0 = "NO";
    defparam add_3_16.INJECT1_1 = "NO";
    CCU2D add_3_14 (.A0(MixerOutSin_c_7), .B0(d1[12]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1161), .COUT(n1162), .S0(d1_63__N_1149[12]), .S1(d1_63__N_1149[13]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_14.INIT0 = 16'h5666;
    defparam add_3_14.INIT1 = 16'h5666;
    defparam add_3_14.INJECT1_0 = "NO";
    defparam add_3_14.INJECT1_1 = "NO";
    CCU2D add_3_12 (.A0(MixerOutSin_c_7), .B0(d1[10]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1160), .COUT(n1161), .S0(d1_63__N_1149[10]), .S1(d1_63__N_1149[11]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_12.INIT0 = 16'h5666;
    defparam add_3_12.INIT1 = 16'h5666;
    defparam add_3_12.INJECT1_0 = "NO";
    defparam add_3_12.INJECT1_1 = "NO";
    CCU2D add_3_10 (.A0(MixerOutSin_c_7), .B0(d1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1159), .COUT(n1160), .S0(d1_63__N_1149[8]), .S1(d1_63__N_1149[9]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_10.INIT0 = 16'h5666;
    defparam add_3_10.INIT1 = 16'h5666;
    defparam add_3_10.INJECT1_0 = "NO";
    defparam add_3_10.INJECT1_1 = "NO";
    CCU2D add_3_8 (.A0(MixerOutSin_c_6), .B0(d1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_7), .B1(d1[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1158), .COUT(n1159), .S0(d1_63__N_1149[6]), .S1(d1_63__N_1149[7]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_8.INIT0 = 16'h5666;
    defparam add_3_8.INIT1 = 16'h5666;
    defparam add_3_8.INJECT1_0 = "NO";
    defparam add_3_8.INJECT1_1 = "NO";
    CCU2D add_3_6 (.A0(MixerOutSin_c_4), .B0(d1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_5), .B1(d1[5]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1157), .COUT(n1158), .S0(d1_63__N_1149[4]), .S1(d1_63__N_1149[5]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_6.INIT0 = 16'h5666;
    defparam add_3_6.INIT1 = 16'h5666;
    defparam add_3_6.INJECT1_0 = "NO";
    defparam add_3_6.INJECT1_1 = "NO";
    CCU2D add_3_4 (.A0(MixerOutSin_c_2), .B0(d1[2]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_3), .B1(d1[3]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1156), .COUT(n1157), .S0(d1_63__N_1149[2]), .S1(d1_63__N_1149[3]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_4.INIT0 = 16'h5666;
    defparam add_3_4.INIT1 = 16'h5666;
    defparam add_3_4.INJECT1_0 = "NO";
    defparam add_3_4.INJECT1_1 = "NO";
    CCU2D add_3_2 (.A0(MixerOutSin_c_0), .B0(d1[0]), .C0(GND_net), .D0(GND_net), 
          .A1(MixerOutSin_c_1), .B1(d1[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1156), .S1(d1_63__N_1149[1]));   // c:/users/user/lattice/fpgasdr/cic.v(72[10:19])
    defparam add_3_2.INIT0 = 16'h7000;
    defparam add_3_2.INIT1 = 16'h5666;
    defparam add_3_2.INJECT1_0 = "NO";
    defparam add_3_2.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_65 (.A0(d_tmp[63]), .B0(d_d_tmp[63]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1154), .S0(n2[63]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_65.INIT0 = 16'h5999;
    defparam sub_36_add_2_65.INIT1 = 16'h0000;
    defparam sub_36_add_2_65.INJECT1_0 = "NO";
    defparam sub_36_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_63 (.A0(d_tmp[61]), .B0(d_d_tmp[61]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[62]), .B1(d_d_tmp[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1153), .COUT(n1154), .S0(n2[61]), .S1(n2[62]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_63.INIT0 = 16'h5999;
    defparam sub_36_add_2_63.INIT1 = 16'h5999;
    defparam sub_36_add_2_63.INJECT1_0 = "NO";
    defparam sub_36_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_61 (.A0(d_tmp[59]), .B0(d_d_tmp[59]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[60]), .B1(d_d_tmp[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1152), .COUT(n1153), .S0(n2[59]), .S1(n2[60]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_61.INIT0 = 16'h5999;
    defparam sub_36_add_2_61.INIT1 = 16'h5999;
    defparam sub_36_add_2_61.INJECT1_0 = "NO";
    defparam sub_36_add_2_61.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i2 (.D(n2[2]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n2[3]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n2[4]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n2[5]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n2[6]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n2[7]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n2[8]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n2[9]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n2[10]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(n2[11]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(n2[12]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(n2[13]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(n2[14]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(n2[15]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(n2[16]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(n2[17]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(n2[18]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(n2[19]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(n2[20]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(n2[21]), .SP(osc_clk_enable_605), .CK(osc_clk), 
            .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(n2[22]), .SP(v_comb), .CK(osc_clk), .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(n2[23]), .SP(v_comb), .CK(osc_clk), .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(n2[24]), .SP(v_comb), .CK(osc_clk), .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(n2[25]), .SP(v_comb), .CK(osc_clk), .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(n2[26]), .SP(v_comb), .CK(osc_clk), .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(n2[27]), .SP(v_comb), .CK(osc_clk), .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(n2[28]), .SP(v_comb), .CK(osc_clk), .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(n2[29]), .SP(v_comb), .CK(osc_clk), .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(n2[30]), .SP(v_comb), .CK(osc_clk), .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(n2[31]), .SP(v_comb), .CK(osc_clk), .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(n2[32]), .SP(v_comb), .CK(osc_clk), .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(n2[33]), .SP(v_comb), .CK(osc_clk), .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(n2[34]), .SP(v_comb), .CK(osc_clk), .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(n2[35]), .SP(v_comb), .CK(osc_clk), .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(n2[36]), .SP(v_comb), .CK(osc_clk), .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(n2[37]), .SP(v_comb), .CK(osc_clk), .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(n2[38]), .SP(v_comb), .CK(osc_clk), .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i39 (.D(n2[39]), .SP(v_comb), .CK(osc_clk), .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(n2[40]), .SP(v_comb), .CK(osc_clk), .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(n2[41]), .SP(v_comb), .CK(osc_clk), .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(n2[42]), .SP(v_comb), .CK(osc_clk), .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i43 (.D(n2[43]), .SP(v_comb), .CK(osc_clk), .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(n2[44]), .SP(v_comb), .CK(osc_clk), .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(n2[45]), .SP(v_comb), .CK(osc_clk), .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i46 (.D(n2[46]), .SP(v_comb), .CK(osc_clk), .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(n2[47]), .SP(v_comb), .CK(osc_clk), .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(n2[48]), .SP(v_comb), .CK(osc_clk), .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(n2[49]), .SP(v_comb), .CK(osc_clk), .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(n2[50]), .SP(v_comb), .CK(osc_clk), .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(n2[51]), .SP(v_comb), .CK(osc_clk), .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(n2[52]), .SP(v_comb), .CK(osc_clk), .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(n2[53]), .SP(v_comb), .CK(osc_clk), .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(n2[54]), .SP(v_comb), .CK(osc_clk), .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(n2[55]), .SP(v_comb), .CK(osc_clk), .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(n2[56]), .SP(v_comb), .CK(osc_clk), .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(n2[57]), .SP(v_comb), .CK(osc_clk), .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i58 (.D(n2[58]), .SP(v_comb), .CK(osc_clk), .Q(d6[58])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d6_i0_i59 (.D(n2[59]), .SP(v_comb), .CK(osc_clk), .Q(d6[59])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d6_i0_i60 (.D(n2[60]), .SP(v_comb), .CK(osc_clk), .Q(d6[60])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d6_i0_i61 (.D(n2[61]), .SP(v_comb), .CK(osc_clk), .Q(d6[61])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d6_i0_i62 (.D(n2[62]), .SP(v_comb), .CK(osc_clk), .Q(d6[62])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d6_i0_i63 (.D(n2[63]), .SP(v_comb), .CK(osc_clk), .Q(d6[63])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(103[9] 148[5])
    defparam d6_i0_i63.GSR = "ENABLED";
    CCU2D sub_36_add_2_59 (.A0(d_tmp[57]), .B0(d_d_tmp[57]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[58]), .B1(d_d_tmp[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1151), .COUT(n1152), .S0(n2[57]), .S1(n2[58]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_59.INIT0 = 16'h5999;
    defparam sub_36_add_2_59.INIT1 = 16'h5999;
    defparam sub_36_add_2_59.INJECT1_0 = "NO";
    defparam sub_36_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_57 (.A0(d_tmp[55]), .B0(d_d_tmp[55]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[56]), .B1(d_d_tmp[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1150), .COUT(n1151), .S0(n2[55]), .S1(n2[56]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_57.INIT0 = 16'h5999;
    defparam sub_36_add_2_57.INIT1 = 16'h5999;
    defparam sub_36_add_2_57.INJECT1_0 = "NO";
    defparam sub_36_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_55 (.A0(d_tmp[53]), .B0(d_d_tmp[53]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[54]), .B1(d_d_tmp[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1149), .COUT(n1150), .S0(n2[53]), .S1(n2[54]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_55.INIT0 = 16'h5999;
    defparam sub_36_add_2_55.INIT1 = 16'h5999;
    defparam sub_36_add_2_55.INJECT1_0 = "NO";
    defparam sub_36_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_53 (.A0(d_tmp[51]), .B0(d_d_tmp[51]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[52]), .B1(d_d_tmp[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1148), .COUT(n1149), .S0(n2[51]), .S1(n2[52]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_53.INIT0 = 16'h5999;
    defparam sub_36_add_2_53.INIT1 = 16'h5999;
    defparam sub_36_add_2_53.INJECT1_0 = "NO";
    defparam sub_36_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_51 (.A0(d_tmp[49]), .B0(d_d_tmp[49]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[50]), .B1(d_d_tmp[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1147), .COUT(n1148), .S0(n2[49]), .S1(n2[50]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_51.INIT0 = 16'h5999;
    defparam sub_36_add_2_51.INIT1 = 16'h5999;
    defparam sub_36_add_2_51.INJECT1_0 = "NO";
    defparam sub_36_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_49 (.A0(d_tmp[47]), .B0(d_d_tmp[47]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[48]), .B1(d_d_tmp[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1146), .COUT(n1147), .S0(n2[47]), .S1(n2[48]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_49.INIT0 = 16'h5999;
    defparam sub_36_add_2_49.INIT1 = 16'h5999;
    defparam sub_36_add_2_49.INJECT1_0 = "NO";
    defparam sub_36_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_47 (.A0(d_tmp[45]), .B0(d_d_tmp[45]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[46]), .B1(d_d_tmp[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1145), .COUT(n1146), .S0(n2[45]), .S1(n2[46]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_47.INIT0 = 16'h5999;
    defparam sub_36_add_2_47.INIT1 = 16'h5999;
    defparam sub_36_add_2_47.INJECT1_0 = "NO";
    defparam sub_36_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_45 (.A0(d_tmp[43]), .B0(d_d_tmp[43]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[44]), .B1(d_d_tmp[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1144), .COUT(n1145), .S0(n2[43]), .S1(n2[44]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_45.INIT0 = 16'h5999;
    defparam sub_36_add_2_45.INIT1 = 16'h5999;
    defparam sub_36_add_2_45.INJECT1_0 = "NO";
    defparam sub_36_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_43 (.A0(d_tmp[41]), .B0(d_d_tmp[41]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[42]), .B1(d_d_tmp[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1143), .COUT(n1144), .S0(n2[41]), .S1(n2[42]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_43.INIT0 = 16'h5999;
    defparam sub_36_add_2_43.INIT1 = 16'h5999;
    defparam sub_36_add_2_43.INJECT1_0 = "NO";
    defparam sub_36_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_41 (.A0(d_tmp[39]), .B0(d_d_tmp[39]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[40]), .B1(d_d_tmp[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1142), .COUT(n1143), .S0(n2[39]), .S1(n2[40]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_41.INIT0 = 16'h5999;
    defparam sub_36_add_2_41.INIT1 = 16'h5999;
    defparam sub_36_add_2_41.INJECT1_0 = "NO";
    defparam sub_36_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_39 (.A0(d_tmp[37]), .B0(d_d_tmp[37]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[38]), .B1(d_d_tmp[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1141), .COUT(n1142), .S0(n2[37]), .S1(n2[38]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_39.INIT0 = 16'h5999;
    defparam sub_36_add_2_39.INIT1 = 16'h5999;
    defparam sub_36_add_2_39.INJECT1_0 = "NO";
    defparam sub_36_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1140), .COUT(n1141), .S0(n2[35]), .S1(n2[36]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_37.INIT0 = 16'h5999;
    defparam sub_36_add_2_37.INIT1 = 16'h5999;
    defparam sub_36_add_2_37.INJECT1_0 = "NO";
    defparam sub_36_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1139), .COUT(n1140), .S0(n2[33]), .S1(n2[34]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_35.INIT0 = 16'h5999;
    defparam sub_36_add_2_35.INIT1 = 16'h5999;
    defparam sub_36_add_2_35.INJECT1_0 = "NO";
    defparam sub_36_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1138), .COUT(n1139), .S0(n2[31]), .S1(n2[32]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_33.INIT0 = 16'h5999;
    defparam sub_36_add_2_33.INIT1 = 16'h5999;
    defparam sub_36_add_2_33.INJECT1_0 = "NO";
    defparam sub_36_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1137), .COUT(n1138), .S0(n2[29]), .S1(n2[30]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_31.INIT0 = 16'h5999;
    defparam sub_36_add_2_31.INIT1 = 16'h5999;
    defparam sub_36_add_2_31.INJECT1_0 = "NO";
    defparam sub_36_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1136), .COUT(n1137), .S0(n2[27]), .S1(n2[28]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_29.INIT0 = 16'h5999;
    defparam sub_36_add_2_29.INIT1 = 16'h5999;
    defparam sub_36_add_2_29.INJECT1_0 = "NO";
    defparam sub_36_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1135), .COUT(n1136), .S0(n2[25]), .S1(n2[26]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_27.INIT0 = 16'h5999;
    defparam sub_36_add_2_27.INIT1 = 16'h5999;
    defparam sub_36_add_2_27.INJECT1_0 = "NO";
    defparam sub_36_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1134), .COUT(n1135), .S0(n2[23]), .S1(n2[24]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_25.INIT0 = 16'h5999;
    defparam sub_36_add_2_25.INIT1 = 16'h5999;
    defparam sub_36_add_2_25.INJECT1_0 = "NO";
    defparam sub_36_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1133), .COUT(n1134), .S0(n2[21]), .S1(n2[22]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_23.INIT0 = 16'h5999;
    defparam sub_36_add_2_23.INIT1 = 16'h5999;
    defparam sub_36_add_2_23.INJECT1_0 = "NO";
    defparam sub_36_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1132), .COUT(n1133), .S0(n2[19]), .S1(n2[20]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_21.INIT0 = 16'h5999;
    defparam sub_36_add_2_21.INIT1 = 16'h5999;
    defparam sub_36_add_2_21.INJECT1_0 = "NO";
    defparam sub_36_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1131), .COUT(n1132), .S0(n2[17]), .S1(n2[18]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_19.INIT0 = 16'h5999;
    defparam sub_36_add_2_19.INIT1 = 16'h5999;
    defparam sub_36_add_2_19.INJECT1_0 = "NO";
    defparam sub_36_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1130), .COUT(n1131), .S0(n2[15]), .S1(n2[16]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_17.INIT0 = 16'h5999;
    defparam sub_36_add_2_17.INIT1 = 16'h5999;
    defparam sub_36_add_2_17.INJECT1_0 = "NO";
    defparam sub_36_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1129), .COUT(n1130), .S0(n2[13]), .S1(n2[14]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_15.INIT0 = 16'h5999;
    defparam sub_36_add_2_15.INIT1 = 16'h5999;
    defparam sub_36_add_2_15.INJECT1_0 = "NO";
    defparam sub_36_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1128), .COUT(n1129), .S0(n2[11]), .S1(n2[12]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_13.INIT0 = 16'h5999;
    defparam sub_36_add_2_13.INIT1 = 16'h5999;
    defparam sub_36_add_2_13.INJECT1_0 = "NO";
    defparam sub_36_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1127), .COUT(n1128), .S0(n2[9]), .S1(n2[10]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_11.INIT0 = 16'h5999;
    defparam sub_36_add_2_11.INIT1 = 16'h5999;
    defparam sub_36_add_2_11.INJECT1_0 = "NO";
    defparam sub_36_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1126), .COUT(n1127), .S0(n2[7]), .S1(n2[8]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_9.INIT0 = 16'h5999;
    defparam sub_36_add_2_9.INIT1 = 16'h5999;
    defparam sub_36_add_2_9.INJECT1_0 = "NO";
    defparam sub_36_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1125), .COUT(n1126), .S0(n2[5]), .S1(n2[6]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_7.INIT0 = 16'h5999;
    defparam sub_36_add_2_7.INIT1 = 16'h5999;
    defparam sub_36_add_2_7.INJECT1_0 = "NO";
    defparam sub_36_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1124), .COUT(n1125), .S0(n2[3]), .S1(n2[4]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_5.INIT0 = 16'h5999;
    defparam sub_36_add_2_5.INIT1 = 16'h5999;
    defparam sub_36_add_2_5.INJECT1_0 = "NO";
    defparam sub_36_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1123), .COUT(n1124), .S0(n2[1]), .S1(n2[2]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_3.INIT0 = 16'h5999;
    defparam sub_36_add_2_3.INIT1 = 16'h5999;
    defparam sub_36_add_2_3.INJECT1_0 = "NO";
    defparam sub_36_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1123), .S1(n2[0]));   // c:/users/user/lattice/fpgasdr/cic.v(125[11:26])
    defparam sub_36_add_2_1.INIT0 = 16'h0000;
    defparam sub_36_add_2_1.INIT1 = 16'h5999;
    defparam sub_36_add_2_1.INJECT1_0 = "NO";
    defparam sub_36_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_65 (.A0(d6[63]), .B0(d_d6[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1122), 
          .S0(n1[63]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_65.INIT0 = 16'h5999;
    defparam sub_37_add_2_65.INIT1 = 16'h0000;
    defparam sub_37_add_2_65.INJECT1_0 = "NO";
    defparam sub_37_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_63 (.A0(d6[61]), .B0(d_d6[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[62]), .B1(d_d6[62]), .C1(GND_net), .D1(GND_net), .CIN(n1121), 
          .COUT(n1122), .S0(n1[61]), .S1(n1[62]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_63.INIT0 = 16'h5999;
    defparam sub_37_add_2_63.INIT1 = 16'h5999;
    defparam sub_37_add_2_63.INJECT1_0 = "NO";
    defparam sub_37_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_61 (.A0(d6[59]), .B0(d_d6[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[60]), .B1(d_d6[60]), .C1(GND_net), .D1(GND_net), .CIN(n1120), 
          .COUT(n1121), .S0(n1[59]), .S1(n1[60]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_61.INIT0 = 16'h5999;
    defparam sub_37_add_2_61.INIT1 = 16'h5999;
    defparam sub_37_add_2_61.INJECT1_0 = "NO";
    defparam sub_37_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_59 (.A0(d6[57]), .B0(d_d6[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[58]), .B1(d_d6[58]), .C1(GND_net), .D1(GND_net), .CIN(n1119), 
          .COUT(n1120), .S0(n1[57]), .S1(n1[58]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_59.INIT0 = 16'h5999;
    defparam sub_37_add_2_59.INIT1 = 16'h5999;
    defparam sub_37_add_2_59.INJECT1_0 = "NO";
    defparam sub_37_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_57 (.A0(d6[55]), .B0(d_d6[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[56]), .B1(d_d6[56]), .C1(GND_net), .D1(GND_net), .CIN(n1118), 
          .COUT(n1119), .S0(n1[55]), .S1(n1[56]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_57.INIT0 = 16'h5999;
    defparam sub_37_add_2_57.INIT1 = 16'h5999;
    defparam sub_37_add_2_57.INJECT1_0 = "NO";
    defparam sub_37_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_55 (.A0(d6[53]), .B0(d_d6[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[54]), .B1(d_d6[54]), .C1(GND_net), .D1(GND_net), .CIN(n1117), 
          .COUT(n1118), .S0(n1[53]), .S1(n1[54]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_55.INIT0 = 16'h5999;
    defparam sub_37_add_2_55.INIT1 = 16'h5999;
    defparam sub_37_add_2_55.INJECT1_0 = "NO";
    defparam sub_37_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_53 (.A0(d6[51]), .B0(d_d6[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[52]), .B1(d_d6[52]), .C1(GND_net), .D1(GND_net), .CIN(n1116), 
          .COUT(n1117), .S0(n1[51]), .S1(n1[52]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_53.INIT0 = 16'h5999;
    defparam sub_37_add_2_53.INIT1 = 16'h5999;
    defparam sub_37_add_2_53.INJECT1_0 = "NO";
    defparam sub_37_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_51 (.A0(d6[49]), .B0(d_d6[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[50]), .B1(d_d6[50]), .C1(GND_net), .D1(GND_net), .CIN(n1115), 
          .COUT(n1116), .S0(n1[49]), .S1(n1[50]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_51.INIT0 = 16'h5999;
    defparam sub_37_add_2_51.INIT1 = 16'h5999;
    defparam sub_37_add_2_51.INJECT1_0 = "NO";
    defparam sub_37_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_49 (.A0(d6[47]), .B0(d_d6[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[48]), .B1(d_d6[48]), .C1(GND_net), .D1(GND_net), .CIN(n1114), 
          .COUT(n1115), .S0(n1[47]), .S1(n1[48]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_49.INIT0 = 16'h5999;
    defparam sub_37_add_2_49.INIT1 = 16'h5999;
    defparam sub_37_add_2_49.INJECT1_0 = "NO";
    defparam sub_37_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_47 (.A0(d6[45]), .B0(d_d6[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[46]), .B1(d_d6[46]), .C1(GND_net), .D1(GND_net), .CIN(n1113), 
          .COUT(n1114), .S0(n1[45]), .S1(n1[46]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_47.INIT0 = 16'h5999;
    defparam sub_37_add_2_47.INIT1 = 16'h5999;
    defparam sub_37_add_2_47.INJECT1_0 = "NO";
    defparam sub_37_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_45 (.A0(d6[43]), .B0(d_d6[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[44]), .B1(d_d6[44]), .C1(GND_net), .D1(GND_net), .CIN(n1112), 
          .COUT(n1113), .S0(n1[43]), .S1(n1[44]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_45.INIT0 = 16'h5999;
    defparam sub_37_add_2_45.INIT1 = 16'h5999;
    defparam sub_37_add_2_45.INJECT1_0 = "NO";
    defparam sub_37_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_43 (.A0(d6[41]), .B0(d_d6[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[42]), .B1(d_d6[42]), .C1(GND_net), .D1(GND_net), .CIN(n1111), 
          .COUT(n1112), .S0(n1[41]), .S1(n1[42]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_43.INIT0 = 16'h5999;
    defparam sub_37_add_2_43.INIT1 = 16'h5999;
    defparam sub_37_add_2_43.INJECT1_0 = "NO";
    defparam sub_37_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_41 (.A0(d6[39]), .B0(d_d6[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[40]), .B1(d_d6[40]), .C1(GND_net), .D1(GND_net), .CIN(n1110), 
          .COUT(n1111), .S0(n1[39]), .S1(n1[40]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_41.INIT0 = 16'h5999;
    defparam sub_37_add_2_41.INIT1 = 16'h5999;
    defparam sub_37_add_2_41.INJECT1_0 = "NO";
    defparam sub_37_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_39 (.A0(d6[37]), .B0(d_d6[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[38]), .B1(d_d6[38]), .C1(GND_net), .D1(GND_net), .CIN(n1109), 
          .COUT(n1110), .S0(n1[37]), .S1(n1[38]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_39.INIT0 = 16'h5999;
    defparam sub_37_add_2_39.INIT1 = 16'h5999;
    defparam sub_37_add_2_39.INJECT1_0 = "NO";
    defparam sub_37_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n1108), 
          .COUT(n1109), .S0(n1[35]), .S1(n1[36]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_37.INIT0 = 16'h5999;
    defparam sub_37_add_2_37.INIT1 = 16'h5999;
    defparam sub_37_add_2_37.INJECT1_0 = "NO";
    defparam sub_37_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n1107), 
          .COUT(n1108), .S0(n1[33]), .S1(n1[34]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_35.INIT0 = 16'h5999;
    defparam sub_37_add_2_35.INIT1 = 16'h5999;
    defparam sub_37_add_2_35.INJECT1_0 = "NO";
    defparam sub_37_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n1106), 
          .COUT(n1107), .S0(n1[31]), .S1(n1[32]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_33.INIT0 = 16'h5999;
    defparam sub_37_add_2_33.INIT1 = 16'h5999;
    defparam sub_37_add_2_33.INJECT1_0 = "NO";
    defparam sub_37_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n1105), 
          .COUT(n1106), .S0(n1[29]), .S1(n1[30]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_31.INIT0 = 16'h5999;
    defparam sub_37_add_2_31.INIT1 = 16'h5999;
    defparam sub_37_add_2_31.INJECT1_0 = "NO";
    defparam sub_37_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n1104), 
          .COUT(n1105), .S0(n1[27]), .S1(n1[28]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_29.INIT0 = 16'h5999;
    defparam sub_37_add_2_29.INIT1 = 16'h5999;
    defparam sub_37_add_2_29.INJECT1_0 = "NO";
    defparam sub_37_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n1103), 
          .COUT(n1104), .S0(n1[25]), .S1(n1[26]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_27.INIT0 = 16'h5999;
    defparam sub_37_add_2_27.INIT1 = 16'h5999;
    defparam sub_37_add_2_27.INJECT1_0 = "NO";
    defparam sub_37_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n1102), 
          .COUT(n1103), .S0(n1[23]), .S1(n1[24]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_25.INIT0 = 16'h5999;
    defparam sub_37_add_2_25.INIT1 = 16'h5999;
    defparam sub_37_add_2_25.INJECT1_0 = "NO";
    defparam sub_37_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n1101), 
          .COUT(n1102), .S0(n1[21]), .S1(n1[22]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_23.INIT0 = 16'h5999;
    defparam sub_37_add_2_23.INIT1 = 16'h5999;
    defparam sub_37_add_2_23.INJECT1_0 = "NO";
    defparam sub_37_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n1100), 
          .COUT(n1101), .S0(n1[19]), .S1(n1[20]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_21.INIT0 = 16'h5999;
    defparam sub_37_add_2_21.INIT1 = 16'h5999;
    defparam sub_37_add_2_21.INJECT1_0 = "NO";
    defparam sub_37_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n1099), 
          .COUT(n1100), .S0(n1[17]), .S1(n1[18]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_19.INIT0 = 16'h5999;
    defparam sub_37_add_2_19.INIT1 = 16'h5999;
    defparam sub_37_add_2_19.INJECT1_0 = "NO";
    defparam sub_37_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n1098), 
          .COUT(n1099), .S0(n1[15]), .S1(n1[16]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_17.INIT0 = 16'h5999;
    defparam sub_37_add_2_17.INIT1 = 16'h5999;
    defparam sub_37_add_2_17.INJECT1_0 = "NO";
    defparam sub_37_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n1097), 
          .COUT(n1098), .S0(n1[13]), .S1(n1[14]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_15.INIT0 = 16'h5999;
    defparam sub_37_add_2_15.INIT1 = 16'h5999;
    defparam sub_37_add_2_15.INJECT1_0 = "NO";
    defparam sub_37_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n1096), 
          .COUT(n1097), .S0(n1[11]), .S1(n1[12]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_13.INIT0 = 16'h5999;
    defparam sub_37_add_2_13.INIT1 = 16'h5999;
    defparam sub_37_add_2_13.INJECT1_0 = "NO";
    defparam sub_37_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n1095), 
          .COUT(n1096), .S0(n1[9]), .S1(n1[10]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_11.INIT0 = 16'h5999;
    defparam sub_37_add_2_11.INIT1 = 16'h5999;
    defparam sub_37_add_2_11.INJECT1_0 = "NO";
    defparam sub_37_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n1094), 
          .COUT(n1095), .S0(n1[7]), .S1(n1[8]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_9.INIT0 = 16'h5999;
    defparam sub_37_add_2_9.INIT1 = 16'h5999;
    defparam sub_37_add_2_9.INJECT1_0 = "NO";
    defparam sub_37_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n1093), 
          .COUT(n1094), .S0(n1[5]), .S1(n1[6]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_7.INIT0 = 16'h5999;
    defparam sub_37_add_2_7.INIT1 = 16'h5999;
    defparam sub_37_add_2_7.INJECT1_0 = "NO";
    defparam sub_37_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n1092), 
          .COUT(n1093), .S0(n1[3]), .S1(n1[4]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_5.INIT0 = 16'h5999;
    defparam sub_37_add_2_5.INIT1 = 16'h5999;
    defparam sub_37_add_2_5.INJECT1_0 = "NO";
    defparam sub_37_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n1091), 
          .COUT(n1092), .S0(n1[1]), .S1(n1[2]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_3.INIT0 = 16'h5999;
    defparam sub_37_add_2_3.INIT1 = 16'h5999;
    defparam sub_37_add_2_3.INJECT1_0 = "NO";
    defparam sub_37_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n1091), 
          .S1(n1[0]));   // c:/users/user/lattice/fpgasdr/cic.v(128[11:20])
    defparam sub_37_add_2_1.INIT0 = 16'h0000;
    defparam sub_37_add_2_1.INIT1 = 16'h5999;
    defparam sub_37_add_2_1.INJECT1_0 = "NO";
    defparam sub_37_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_65 (.A0(d7[63]), .B0(d_d7[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1090), 
          .S0(n1437[63]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_65.INIT0 = 16'h5999;
    defparam sub_38_add_2_65.INIT1 = 16'h0000;
    defparam sub_38_add_2_65.INJECT1_0 = "NO";
    defparam sub_38_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_63 (.A0(d7[61]), .B0(d_d7[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[62]), .B1(d_d7[62]), .C1(GND_net), .D1(GND_net), .CIN(n1089), 
          .COUT(n1090), .S0(n1437[61]), .S1(n1437[62]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_63.INIT0 = 16'h5999;
    defparam sub_38_add_2_63.INIT1 = 16'h5999;
    defparam sub_38_add_2_63.INJECT1_0 = "NO";
    defparam sub_38_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_61 (.A0(d7[59]), .B0(d_d7[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[60]), .B1(d_d7[60]), .C1(GND_net), .D1(GND_net), .CIN(n1088), 
          .COUT(n1089), .S0(n1437[59]), .S1(n1437[60]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_61.INIT0 = 16'h5999;
    defparam sub_38_add_2_61.INIT1 = 16'h5999;
    defparam sub_38_add_2_61.INJECT1_0 = "NO";
    defparam sub_38_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_59 (.A0(d7[57]), .B0(d_d7[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[58]), .B1(d_d7[58]), .C1(GND_net), .D1(GND_net), .CIN(n1087), 
          .COUT(n1088), .S0(n1437[57]), .S1(n1437[58]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_59.INIT0 = 16'h5999;
    defparam sub_38_add_2_59.INIT1 = 16'h5999;
    defparam sub_38_add_2_59.INJECT1_0 = "NO";
    defparam sub_38_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_57 (.A0(d7[55]), .B0(d_d7[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[56]), .B1(d_d7[56]), .C1(GND_net), .D1(GND_net), .CIN(n1086), 
          .COUT(n1087), .S0(n1437[55]), .S1(n1437[56]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_57.INIT0 = 16'h5999;
    defparam sub_38_add_2_57.INIT1 = 16'h5999;
    defparam sub_38_add_2_57.INJECT1_0 = "NO";
    defparam sub_38_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_51 (.A0(d7[49]), .B0(d_d7[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[50]), .B1(d_d7[50]), .C1(GND_net), .D1(GND_net), .CIN(n1083), 
          .COUT(n1084), .S0(n1437[49]), .S1(n1437[50]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_51.INIT0 = 16'h5999;
    defparam sub_38_add_2_51.INIT1 = 16'h5999;
    defparam sub_38_add_2_51.INJECT1_0 = "NO";
    defparam sub_38_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_43 (.A0(d8[41]), .B0(d_d8[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[42]), .B1(d_d8[42]), .C1(GND_net), .D1(GND_net), .CIN(n1047), 
          .COUT(n1048), .S0(n1502[41]), .S1(n1502[42]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_43.INIT0 = 16'h5999;
    defparam sub_39_add_2_43.INIT1 = 16'h5999;
    defparam sub_39_add_2_43.INJECT1_0 = "NO";
    defparam sub_39_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_39 (.A0(d8[37]), .B0(d_d8[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[38]), .B1(d_d8[38]), .C1(GND_net), .D1(GND_net), .CIN(n1045), 
          .COUT(n1046), .S0(n1502[37]), .S1(n1502[38]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_39.INIT0 = 16'h5999;
    defparam sub_39_add_2_39.INIT1 = 16'h5999;
    defparam sub_39_add_2_39.INJECT1_0 = "NO";
    defparam sub_39_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n1059), 
          .S1(n1437[0]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_1.INIT0 = 16'h0000;
    defparam sub_38_add_2_1.INIT1 = 16'h5999;
    defparam sub_38_add_2_1.INJECT1_0 = "NO";
    defparam sub_38_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_49 (.A0(d8[47]), .B0(d_d8[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[48]), .B1(d_d8[48]), .C1(GND_net), .D1(GND_net), .CIN(n1050), 
          .COUT(n1051), .S0(n1502[47]), .S1(n1502[48]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_49.INIT0 = 16'h5999;
    defparam sub_39_add_2_49.INIT1 = 16'h5999;
    defparam sub_39_add_2_49.INJECT1_0 = "NO";
    defparam sub_39_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n1044), 
          .COUT(n1045), .S0(n1502[35]), .S1(n1502[36]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_37.INIT0 = 16'h5999;
    defparam sub_39_add_2_37.INIT1 = 16'h5999;
    defparam sub_39_add_2_37.INJECT1_0 = "NO";
    defparam sub_39_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_45 (.A0(d7[43]), .B0(d_d7[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[44]), .B1(d_d7[44]), .C1(GND_net), .D1(GND_net), .CIN(n1080), 
          .COUT(n1081), .S0(n1437[43]), .S1(n1437[44]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_45.INIT0 = 16'h5999;
    defparam sub_38_add_2_45.INIT1 = 16'h5999;
    defparam sub_38_add_2_45.INJECT1_0 = "NO";
    defparam sub_38_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n1043), 
          .COUT(n1044), .S0(n1502[33]), .S1(n1502[34]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_35.INIT0 = 16'h5999;
    defparam sub_39_add_2_35.INIT1 = 16'h5999;
    defparam sub_39_add_2_35.INJECT1_0 = "NO";
    defparam sub_39_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n1042), 
          .COUT(n1043), .S0(n1502[31]), .S1(n1502[32]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_33.INIT0 = 16'h5999;
    defparam sub_39_add_2_33.INIT1 = 16'h5999;
    defparam sub_39_add_2_33.INJECT1_0 = "NO";
    defparam sub_39_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n1040), 
          .COUT(n1041), .S0(n1502[27]), .S1(n1502[28]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_29.INIT0 = 16'h5999;
    defparam sub_39_add_2_29.INIT1 = 16'h5999;
    defparam sub_39_add_2_29.INJECT1_0 = "NO";
    defparam sub_39_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n1039), 
          .COUT(n1040), .S0(n1502[25]), .S1(n1502[26]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_27.INIT0 = 16'h5999;
    defparam sub_39_add_2_27.INIT1 = 16'h5999;
    defparam sub_39_add_2_27.INJECT1_0 = "NO";
    defparam sub_39_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_65 (.A0(d8[63]), .B0(d_d8[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1058), 
          .S0(n1502[63]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_65.INIT0 = 16'h5999;
    defparam sub_39_add_2_65.INIT1 = 16'h0000;
    defparam sub_39_add_2_65.INJECT1_0 = "NO";
    defparam sub_39_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n1038), 
          .COUT(n1039), .S0(n1502[23]), .S1(n1502[24]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_25.INIT0 = 16'h5999;
    defparam sub_39_add_2_25.INIT1 = 16'h5999;
    defparam sub_39_add_2_25.INJECT1_0 = "NO";
    defparam sub_39_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_63 (.A0(d8[61]), .B0(d_d8[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[62]), .B1(d_d8[62]), .C1(GND_net), .D1(GND_net), .CIN(n1057), 
          .COUT(n1058), .S0(n1502[61]), .S1(n1502[62]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_63.INIT0 = 16'h5999;
    defparam sub_39_add_2_63.INIT1 = 16'h5999;
    defparam sub_39_add_2_63.INJECT1_0 = "NO";
    defparam sub_39_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n1037), 
          .COUT(n1038), .S0(n1502[21]), .S1(n1502[22]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_23.INIT0 = 16'h5999;
    defparam sub_39_add_2_23.INIT1 = 16'h5999;
    defparam sub_39_add_2_23.INJECT1_0 = "NO";
    defparam sub_39_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_53 (.A0(d7[51]), .B0(d_d7[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[52]), .B1(d_d7[52]), .C1(GND_net), .D1(GND_net), .CIN(n1084), 
          .COUT(n1085), .S0(n1437[51]), .S1(n1437[52]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_53.INIT0 = 16'h5999;
    defparam sub_38_add_2_53.INIT1 = 16'h5999;
    defparam sub_38_add_2_53.INJECT1_0 = "NO";
    defparam sub_38_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_55 (.A0(d7[53]), .B0(d_d7[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[54]), .B1(d_d7[54]), .C1(GND_net), .D1(GND_net), .CIN(n1085), 
          .COUT(n1086), .S0(n1437[53]), .S1(n1437[54]));   // c:/users/user/lattice/fpgasdr/cic.v(131[11:20])
    defparam sub_38_add_2_55.INIT0 = 16'h5999;
    defparam sub_38_add_2_55.INIT1 = 16'h5999;
    defparam sub_38_add_2_55.INJECT1_0 = "NO";
    defparam sub_38_add_2_55.INJECT1_1 = "NO";
    LUT4 i814_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_63__N_1213[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i814_2_lut.init = 16'h6666;
    CCU2D sub_39_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n1032), 
          .COUT(n1033), .S0(n1502[11]), .S1(n1502[12]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_13.INIT0 = 16'h5999;
    defparam sub_39_add_2_13.INIT1 = 16'h5999;
    defparam sub_39_add_2_13.INJECT1_0 = "NO";
    defparam sub_39_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n1036), 
          .COUT(n1037), .S0(n1502[19]), .S1(n1502[20]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_21.INIT0 = 16'h5999;
    defparam sub_39_add_2_21.INIT1 = 16'h5999;
    defparam sub_39_add_2_21.INJECT1_0 = "NO";
    defparam sub_39_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n1035), 
          .COUT(n1036), .S0(n1502[17]), .S1(n1502[18]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_19.INIT0 = 16'h5999;
    defparam sub_39_add_2_19.INIT1 = 16'h5999;
    defparam sub_39_add_2_19.INJECT1_0 = "NO";
    defparam sub_39_add_2_19.INJECT1_1 = "NO";
    LUT4 i815_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_63__N_1277[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i815_2_lut.init = 16'h6666;
    LUT4 i816_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_63__N_1341[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i816_2_lut.init = 16'h6666;
    FD1S3AX v_comb_87_rep_30 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_605)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_30.GSR = "ENABLED";
    FD1S3IX count_145_146__i2 (.D(n61[1]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i2.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_29 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_548)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_29.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_28 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_498)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_28.GSR = "ENABLED";
    CCU2D sub_39_add_2_61 (.A0(d8[59]), .B0(d_d8[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[60]), .B1(d_d8[60]), .C1(GND_net), .D1(GND_net), .CIN(n1056), 
          .COUT(n1057), .S0(n1502[59]), .S1(n1502[60]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_61.INIT0 = 16'h5999;
    defparam sub_39_add_2_61.INIT1 = 16'h5999;
    defparam sub_39_add_2_61.INJECT1_0 = "NO";
    defparam sub_39_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_59 (.A0(d8[57]), .B0(d_d8[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[58]), .B1(d_d8[58]), .C1(GND_net), .D1(GND_net), .CIN(n1055), 
          .COUT(n1056), .S0(n1502[57]), .S1(n1502[58]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_59.INIT0 = 16'h5999;
    defparam sub_39_add_2_59.INIT1 = 16'h5999;
    defparam sub_39_add_2_59.INJECT1_0 = "NO";
    defparam sub_39_add_2_59.INJECT1_1 = "NO";
    FD1S3AX v_comb_87_rep_27 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_448)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_27.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_26 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_398)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_26.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_23 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_248)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_23.GSR = "ENABLED";
    FD1S3IX count_145_146__i3 (.D(n61[2]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i3.GSR = "ENABLED";
    FD1S3IX count_145_146__i4 (.D(n61[3]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i4.GSR = "ENABLED";
    FD1S3IX count_145_146__i5 (.D(n61[4]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i5.GSR = "ENABLED";
    FD1S3IX count_145_146__i6 (.D(n61[5]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i6.GSR = "ENABLED";
    FD1S3IX count_145_146__i7 (.D(n61[6]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i7.GSR = "ENABLED";
    FD1S3IX count_145_146__i8 (.D(n61[7]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i8.GSR = "ENABLED";
    FD1S3IX count_145_146__i9 (.D(n61[8]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i9.GSR = "ENABLED";
    FD1S3IX count_145_146__i10 (.D(n61[9]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i10.GSR = "ENABLED";
    FD1S3IX count_145_146__i11 (.D(n61[10]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i11.GSR = "ENABLED";
    FD1S3IX count_145_146__i12 (.D(n61[11]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i12.GSR = "ENABLED";
    FD1S3IX count_145_146__i13 (.D(n61[12]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i13.GSR = "ENABLED";
    FD1S3IX count_145_146__i14 (.D(n61[13]), .CK(osc_clk), .CD(d_clk_tmp_N_2217), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(97[14:27])
    defparam count_145_146__i14.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_22 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_198)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_22.GSR = "ENABLED";
    CCU2D sub_39_add_2_57 (.A0(d8[55]), .B0(d_d8[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[56]), .B1(d_d8[56]), .C1(GND_net), .D1(GND_net), .CIN(n1054), 
          .COUT(n1055), .S0(n1502[55]), .S1(n1502[56]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_57.INIT0 = 16'h5999;
    defparam sub_39_add_2_57.INIT1 = 16'h5999;
    defparam sub_39_add_2_57.INJECT1_0 = "NO";
    defparam sub_39_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_55 (.A0(d8[53]), .B0(d_d8[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[54]), .B1(d_d8[54]), .C1(GND_net), .D1(GND_net), .CIN(n1053), 
          .COUT(n1054), .S0(n1502[53]), .S1(n1502[54]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_55.INIT0 = 16'h5999;
    defparam sub_39_add_2_55.INIT1 = 16'h5999;
    defparam sub_39_add_2_55.INJECT1_0 = "NO";
    defparam sub_39_add_2_55.INJECT1_1 = "NO";
    FD1S3AX v_comb_87_rep_21 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_148)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_21.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_25 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_348)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_25.GSR = "ENABLED";
    FD1S3AX v_comb_87_rep_24 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_298)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_24.GSR = "ENABLED";
    CCU2D sub_39_add_2_53 (.A0(d8[51]), .B0(d_d8[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[52]), .B1(d_d8[52]), .C1(GND_net), .D1(GND_net), .CIN(n1052), 
          .COUT(n1053), .S0(n1502[51]), .S1(n1502[52]));   // c:/users/user/lattice/fpgasdr/cic.v(134[11:20])
    defparam sub_39_add_2_53.INIT0 = 16'h5999;
    defparam sub_39_add_2_53.INIT1 = 16'h5999;
    defparam sub_39_add_2_53.INJECT1_0 = "NO";
    defparam sub_39_add_2_53.INJECT1_1 = "NO";
    FD1S3AX v_comb_87_rep_20 (.D(osc_clk_enable_59), .CK(osc_clk), .Q(osc_clk_enable_98)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=130 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[9] 101[5])
    defparam v_comb_87_rep_20.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="80.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=152 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(150[5] 152[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 10;
    defparam PLLInst_0.CLKOP_DIV = 6;
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
    defparam PLLInst_0.CLKOP_CPHASE = 5;
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
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module SinCos
//

module SinCos (osc_clk, VCC_net, GND_net, LOSine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input osc_clk;
    input VCC_net;
    input GND_net;
    output [7:0]LOSine;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[8:15])
    
    wire Sine_6_ffin, Sine_5_ffin, Sine_4_ffin, Sine_3_ffin, Sine_2_ffin, 
        Sine_1_ffin, Sine_0_ffin, Sine_7_ffin;
    
    FD1P3DX FF_14 (.D(Sine_6_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(37[13] 38[21])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(Sine_5_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(41[13] 42[21])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(Sine_4_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(45[13] 46[21])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(Sine_3_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(49[13] 50[21])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(Sine_2_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(53[13] 54[21])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(Sine_1_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(57[13:84])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(Sine_0_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(60[13:84])
    defparam FF_8.GSR = "ENABLED";
    ROM256X1A triglut_1_0_15 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_7_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_15.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    ROM256X1A triglut_1_0_14 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_6_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_14.initval = 256'b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000001111111111100000000000000000000000000000000000000000000000000000000000;
    FD1P3DX FF_15 (.D(Sine_7_ffin), .SP(VCC_net), .CK(osc_clk), .CD(GND_net), 
            .Q(LOSine[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/sincos.v(33[13] 34[21])
    defparam FF_15.GSR = "ENABLED";
    ROM256X1A triglut_1_0_13 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_5_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_13.initval = 256'b1111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111000000000000000000000111111111111111111111111111111111111110000000000011111111111111111111111111111111111111000000000000000000000;
    ROM256X1A triglut_1_0_12 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_4_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_12.initval = 256'b1111111111000000000001111111111111100000000000000000000000000000000000000000000000000000000011111111111111000000000001111111111000000000011111111111000000000000001111111111111111111111110000000000011111111111111111111111100000000000000111111111110000000000;
    ROM256X1A triglut_1_0_11 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_3_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_11.initval = 256'b1111100000111111000001111110000000011111111100000000000000000000000000000000000000011111111100000000111111000001111110000011111000001111100000011111000000011111110000000011111111111111110000000000011111111111111110000000011111110000000111110000001111100000;
    ROM256X1A triglut_1_0_10 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_2_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_10.initval = 256'b1100011100111000110001110001111000011110000011111100000000000000000000000000011111100000111100001111000111000110001110011100011000110001100011100011000111100011110000111100000011111111110000000000011111111110000001111000011110001111000110001110001100011000;
    ROM256X1A triglut_1_0_9 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_1_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_9.initval = 256'b1011010010100100101101101101100110011001100011000011111000000000000000001111100001100011001100110011011011011010010010100101101011010010100101101101001001101100110011001100011100001111110000000000011111100001110001100110011001101100100101101101001010010110;
    ROM256X1A triglut_1_0_8 (.AD0(GND_net), .AD1(GND_net), .AD2(GND_net), 
            .AD3(GND_net), .AD4(GND_net), .AD5(GND_net), .AD6(GND_net), 
            .AD7(GND_net), .DO0(Sine_0_ffin)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=8, LSE_RCOL=2, LSE_LLINE=93, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(93[8] 100[2])
    defparam triglut_1_0_8.initval = 256'b0110011000110010011001001011010101010101010010110011000111000000000001110001100110100101010101010101101001001100100110001100110001100110001100100110010010110101010101010100101100110001110000000000011100011001101001010101010101011010010011001001100011001100;
    
endmodule
