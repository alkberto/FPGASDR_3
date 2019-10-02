// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.3.144
// Netlist written on Wed Oct 02 22:35:31 2019
//
// Verilog Description of module top
//

module top (CICCos_out_clk, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, 
            XIn, XOut, RFIn, DiffOut, PWMOut, sinGen, sin_out, 
            CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(3[8:11])
    input CICCos_out_clk;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(5[13:27])
    output o_Tx_Serial;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(7[11:22])
    output o_Rx_DV;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(8[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    output [7:0]MYLED;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    input XIn;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[8:11])
    output XOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[9:13])
    input RFIn;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(13[9:13])
    output DiffOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(15[9:16])
    output PWMOut;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(16[9:15])
    output sinGen;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(17[9:15])
    output sin_out;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(18[9:16])
    output CIC_out_clk;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(19[9:20])
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    
    wire GND_net, VCC_net, o_Tx_Serial_c, o_Rx_Byte_c_7, o_Rx_Byte_c_6, 
        o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, o_Rx_Byte_c_2, 
        o_Rx_Byte_c_1, o_Rx_Byte_c_0, PWMOut_c, o_Rx_DV_c_0, n2005;
    
    VHI i2 (.Z(VCC_net));
    \uart_tx(CLKS_PER_BIT=130)  uart_tx1 (.osc_clk(osc_clk), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(130[33] 137[2])
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_DV_pad (.I(o_Rx_DV_c_0), .O(o_Rx_DV));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(8[13:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(7[11:22])
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(9[16:25])
    OB MYLED_pad_7 (.I(GND_net), .O(MYLED[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_6 (.I(GND_net), .O(MYLED[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_5 (.I(GND_net), .O(MYLED[5]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_4 (.I(GND_net), .O(MYLED[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_3 (.I(GND_net), .O(MYLED[3]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_2 (.I(GND_net), .O(MYLED[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_1 (.I(VCC_net), .O(MYLED[1]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB MYLED_pad_0 (.I(GND_net), .O(MYLED[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(10[18:23])
    OB XOut_pad (.I(GND_net), .O(XOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(12[9:13])
    OB DiffOut_pad (.I(GND_net), .O(DiffOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(15[9:16])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(16[9:15])
    OB sinGen_pad (.I(GND_net), .O(sinGen));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(17[9:15])
    OB sin_out_pad (.I(GND_net), .O(sin_out));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(18[9:16])
    OB CIC_out_clk_pad (.I(GND_net), .O(CIC_out_clk));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(19[9:20])
    IB XIn_pad (.I(XIn), .O(XIn_c));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[8:11])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 m0_lut (.Z(n2005)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PLL PLL1 (.XIn_c(XIn_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(109[5] 111[2])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    \uart_rx(CLKS_PER_BIT=130)  uart_rx1 (.osc_clk(osc_clk), .GND_net(GND_net), 
            .n2005(n2005), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), .o_Rx_Byte_c_2(o_Rx_Byte_c_2), 
            .o_Rx_Byte_c_3(o_Rx_Byte_c_3), .o_Rx_Byte_c_4(o_Rx_Byte_c_4), 
            .o_Rx_Byte_c_5(o_Rx_Byte_c_5), .o_Rx_Byte_c_6(o_Rx_Byte_c_6), 
            .o_Rx_Byte_c_7(o_Rx_Byte_c_7), .o_Rx_Byte_c_0(o_Rx_Byte_c_0), 
            .o_Rx_DV_c_0(o_Rx_DV_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(121[33] 126[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    PWM PWM1 (.PWMOut_c(PWMOut_c), .osc_clk(osc_clk), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(102[5] 107[2])
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=130) 
//

module \uart_tx(CLKS_PER_BIT=130)  (osc_clk, o_Tx_Serial_c, o_Rx_Byte_c_0, 
            o_Rx_DV_c_0, o_Rx_Byte_c_7, o_Rx_Byte_c_6, o_Rx_Byte_c_5, 
            o_Rx_Byte_c_4, o_Rx_Byte_c_3, o_Rx_Byte_c_2, o_Rx_Byte_c_1, 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output o_Tx_Serial_c;
    input o_Rx_Byte_c_0;
    input o_Rx_DV_c_0;
    input o_Rx_Byte_c_7;
    input o_Rx_Byte_c_6;
    input o_Rx_Byte_c_5;
    input o_Rx_Byte_c_4;
    input o_Rx_Byte_c_3;
    input o_Rx_Byte_c_2;
    input o_Rx_Byte_c_1;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    wire [15:0]r_Clock_Count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(32[17:30])
    
    wire osc_clk_enable_56, n880;
    wire [15:0]n69;
    wire [2:0]r_SM_Main;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(31[16:25])
    
    wire o_Tx_Serial_N_190, n3;
    wire [2:0]r_Bit_Index;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(33[16:27])
    
    wire osc_clk_enable_53, n1291;
    wire [7:0]r_Tx_Data;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(34[16:25])
    
    wire osc_clk_enable_19, n1903, n1889, n6, n1452, n1098, n1672;
    wire [2:0]n1;
    
    wire n1458, n3_adj_193, n1726, n1467, n1725, n1727, n1728, 
        n1730, n1177, n1176, n1175, n1243, n1425, n6_adj_195, 
        n1729, n1612, n1610, n1902, n1901, n1586, n1580, n1174, 
        n1173, n1172, n1171, n1170, n1590;
    
    FD1P3IX r_Clock_Count_185__i2 (.D(n69[2]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i2.GSR = "ENABLED";
    LUT4 i821_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_190), .C(r_SM_Main[1]), 
         .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(31[16:25])
    defparam i821_3_lut.init = 16'he5e5;
    FD1P3IX r_Clock_Count_185__i3 (.D(n69[3]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i3.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n1291), .SP(osc_clk_enable_53), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_44 (.D(n3), .SP(osc_clk_enable_56), .CK(osc_clk), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(o_Rx_Byte_c_0), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n1903), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i1_1_lut_rep_36 (.A(r_SM_Main[2]), .Z(osc_clk_enable_56)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_36.init = 16'h5555;
    LUT4 i1_4_lut (.A(r_SM_Main[0]), .B(n1889), .C(n6), .D(r_SM_Main[1]), 
         .Z(n1452)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(41[7] 140[14])
    defparam i1_4_lut.init = 16'h4000;
    LUT4 i20_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_20 (.A(n1098), .B(n1889), .C(n1672), .D(n1[2]), 
         .Z(n1458)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h4000;
    LUT4 i231_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n1[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(96[36:54])
    defparam i231_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut_4_lut (.A(r_SM_Main[2]), .B(o_Rx_DV_c_0), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(osc_clk_enable_19)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0004;
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_193), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(o_Rx_Byte_c_7), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(o_Rx_Byte_c_6), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(o_Rx_Byte_c_5), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(o_Rx_Byte_c_4), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(o_Rx_Byte_c_3), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(o_Rx_Byte_c_2), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(o_Rx_Byte_c_1), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    LUT4 i1552_3_lut (.A(r_Tx_Data[2]), .B(r_Tx_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n1726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1552_3_lut.init = 16'hcaca;
    LUT4 i1583_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n1467)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(41[7] 140[14])
    defparam i1583_3_lut.init = 16'hdfdf;
    FD1P3IX r_Clock_Count_185__i4 (.D(n69[4]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i5 (.D(n69[5]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i5.GSR = "ENABLED";
    LUT4 i1551_3_lut (.A(r_Tx_Data[0]), .B(r_Tx_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n1725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1551_3_lut.init = 16'hcaca;
    PFUMX i1556 (.BLUT(n1727), .ALUT(n1728), .C0(r_Bit_Index[1]), .Z(n1730));
    LUT4 i1_2_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .Z(n1672)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX r_Clock_Count_185__i15 (.D(n69[15]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i14 (.D(n69[14]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i0 (.D(n69[0]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i6 (.D(n69[6]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i6.GSR = "ENABLED";
    CCU2D r_Clock_Count_185_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1177), .S0(n69[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_185_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1176), .COUT(n1177), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1175), .COUT(n1176), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_13.INJECT1_1 = "NO";
    LUT4 i1581_4_lut (.A(r_SM_Main[2]), .B(n1243), .C(n1425), .D(n6_adj_195), 
         .Z(n880)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i1581_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_adj_21 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .Z(n6_adj_195)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_21.init = 16'heeee;
    L6MUX21 i1557 (.D0(n1729), .D1(n1730), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_190));
    PFUMX i1555 (.BLUT(n1725), .ALUT(n1726), .C0(r_Bit_Index[1]), .Z(n1729));
    LUT4 i1_4_lut_adj_22 (.A(r_Clock_Count[13]), .B(n1612), .C(n1610), 
         .D(r_Clock_Count[12]), .Z(n1243)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'hfffe;
    LUT4 i1_4_lut_adj_23 (.A(r_Clock_Count[10]), .B(r_Clock_Count[11]), 
         .C(r_Clock_Count[8]), .D(r_Clock_Count[15]), .Z(n1612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'hfffe;
    LUT4 i410_3_lut_4_lut_then_4_lut (.A(n1425), .B(n1243), .C(r_SM_Main[0]), 
         .D(n1098), .Z(n1902)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i410_3_lut_4_lut_then_4_lut.init = 16'h1e10;
    LUT4 i410_3_lut_4_lut_else_4_lut (.A(n1425), .B(n1243), .C(r_SM_Main[0]), 
         .D(o_Rx_DV_c_0), .Z(n1901)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i410_3_lut_4_lut_else_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_adj_24 (.A(r_Clock_Count[9]), .B(r_Clock_Count[14]), .Z(n1610)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'heeee;
    LUT4 i969_rep_8_4_lut (.A(n1586), .B(r_Clock_Count[7]), .C(n1580), 
         .D(r_Clock_Count[6]), .Z(n1425)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i969_rep_8_4_lut.init = 16'hccc8;
    LUT4 i1_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n1098)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_25 (.A(r_Clock_Count[0]), .B(r_Clock_Count[2]), .C(r_Clock_Count[4]), 
         .D(r_Clock_Count[3]), .Z(n1586)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_25.init = 16'hfffe;
    FD1P3IX r_Clock_Count_185__i7 (.D(n69[7]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i8 (.D(n69[8]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i10 (.D(n69[10]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i11 (.D(n69[11]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i9 (.D(n69[9]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_185__i12 (.D(n69[12]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i12.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1452), .SP(osc_clk_enable_53), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1458), .SP(osc_clk_enable_53), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_26 (.A(r_Clock_Count[1]), .B(r_Clock_Count[5]), .Z(n1580)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_26.init = 16'heeee;
    FD1S3IX r_SM_Main_i2 (.D(n1889), .CK(osc_clk), .CD(n1467), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=130, LSE_RLINE=137 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i1553_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n1727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1553_3_lut.init = 16'hcaca;
    FD1P3IX r_Clock_Count_185__i1 (.D(n69[1]), .SP(osc_clk_enable_56), .CD(n880), 
            .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_27 (.A(n1425), .B(n1243), .Z(n1889)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_27.init = 16'heeee;
    FD1P3IX r_Clock_Count_185__i13 (.D(n69[13]), .SP(osc_clk_enable_56), 
            .CD(n880), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185__i13.GSR = "ENABLED";
    CCU2D r_Clock_Count_185_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1174), .COUT(n1175), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1173), .COUT(n1174), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1172), .COUT(n1173), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1171), .COUT(n1172), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_5.INJECT1_1 = "NO";
    LUT4 i12_3_lut_4_lut (.A(n1425), .B(n1243), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(n3_adj_193)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i12_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1_2_lut_adj_27 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n1291)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_27.init = 16'h4444;
    CCU2D r_Clock_Count_185_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1170), .S1(n69[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_185_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_185_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_1.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_185_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1170), .COUT(n1171), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(116[34:54])
    defparam r_Clock_Count_185_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_185_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_185_add_4_3.INJECT1_1 = "NO";
    LUT4 i1554_3_lut (.A(r_Tx_Data[6]), .B(r_Tx_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n1728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1554_3_lut.init = 16'hcaca;
    LUT4 i1607_4_lut (.A(n1590), .B(n1243), .C(n1425), .D(r_SM_Main[1]), 
         .Z(osc_clk_enable_53)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i1607_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_adj_28 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .Z(n1590)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uarttx.v(31[16:25])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    PFUMX i1627 (.BLUT(n1901), .ALUT(n1902), .C0(r_SM_Main[1]), .Z(n1903));
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (XIn_c, osc_clk, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input XIn_c;
    output osc_clk;
    input GND_net;
    
    wire XIn_c /* synthesis is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(11[8:11])
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    
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
            .PLLADDR4(GND_net), .CLKOP(osc_clk)) /* synthesis FREQUENCY_PIN_CLKOP="120.000000", FREQUENCY_PIN_CLKI="8.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=111 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(109[5] 111[2])
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
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=130) 
//

module \uart_rx(CLKS_PER_BIT=130)  (osc_clk, GND_net, n2005, o_Rx_Byte_c_1, 
            o_Rx_Byte_c_2, o_Rx_Byte_c_3, o_Rx_Byte_c_4, o_Rx_Byte_c_5, 
            o_Rx_Byte_c_6, o_Rx_Byte_c_7, o_Rx_Byte_c_0, o_Rx_DV_c_0) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input GND_net;
    input n2005;
    output o_Rx_Byte_c_1;
    output o_Rx_Byte_c_2;
    output o_Rx_Byte_c_3;
    output o_Rx_Byte_c_4;
    output o_Rx_Byte_c_5;
    output o_Rx_Byte_c_6;
    output o_Rx_Byte_c_7;
    output o_Rx_Byte_c_0;
    output o_Rx_DV_c_0;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    wire [2:0]r_SM_Main;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(44[17:26])
    
    wire n1807, r_Rx_Data, r_Rx_Data_R, n1183;
    wire [15:0]r_Clock_Count;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(40[18:31])
    wire [15:0]n69;
    
    wire n1184, n1371, n1803, n1887, n1899, n1897;
    wire [2:0]r_Bit_Index;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(41[17:28])
    
    wire osc_clk_enable_40, n1293, n1182, n1484, n1896, n1568, osc_clk_enable_54, 
        n912;
    wire [2:0]n109;
    
    wire n1891, n1566, n1181, n1717, n1892, n1550, n1644, n1180, 
        n1179, n1178, n1434, n1295, n1500, n1454, osc_clk_enable_30, 
        n1888, osc_clk_enable_26, osc_clk_enable_51, osc_clk_enable_29, 
        n1824, n26, n1466, n1900, n1345, n1823, n1819, osc_clk_enable_31, 
        osc_clk_enable_32, n1488, n1890, osc_clk_enable_33, osc_clk_enable_34, 
        n1542, n1329, n1628, n1820, o_Rx_DV_N_113, n1461, n768, 
        osc_clk_enable_46, n1658, n1095, n1524, n1574, n1185, n1504, 
        n1598, n1893, n1895, n1801, n1538, n9, n1894, n1802, 
        n1600;
    
    FD1S3IX r_SM_Main_i0 (.D(n1807), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(osc_clk), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    CCU2D r_Clock_Count_183_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1183), .COUT(n1184), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_13.INJECT1_1 = "NO";
    LUT4 n1803_bdd_4_lut_4_lut (.A(r_Rx_Data), .B(r_SM_Main[0]), .C(n1371), 
         .D(n1803), .Z(n1887)) /* synthesis lut_function=(A (B (C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam n1803_bdd_4_lut_4_lut.init = 16'hddd1;
    LUT4 i1_2_lut_rep_37 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .Z(n1899)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i1_2_lut_rep_37.init = 16'h2222;
    LUT4 i1_2_lut_rep_35 (.A(r_Clock_Count[14]), .B(r_Clock_Count[12]), 
         .Z(n1897)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_35.init = 16'heeee;
    FD1P3AX r_Bit_Index_i0 (.D(n1293), .SP(osc_clk_enable_40), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(n2005), .CK(osc_clk), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    CCU2D r_Clock_Count_183_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1182), .COUT(n1183), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(r_Clock_Count[14]), .B(r_Clock_Count[12]), .C(r_Clock_Count[15]), 
         .D(r_Clock_Count[11]), .Z(n1484)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1604_4_lut (.A(r_SM_Main[2]), .B(n1896), .C(n1371), .D(n1568), 
         .Z(osc_clk_enable_54)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i1604_4_lut.init = 16'h5455;
    FD1P3IX r_Clock_Count_183__i8 (.D(n69[8]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i7 (.D(n69[7]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i7.GSR = "ENABLED";
    LUT4 i209_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(119[36:54])
    defparam i209_3_lut.init = 16'h6a6a;
    LUT4 i1601_2_lut_rep_29_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n1891)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i1601_2_lut_rep_29_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut (.A(n1566), .B(r_SM_Main[1]), .C(r_Clock_Count[10]), 
         .D(r_Clock_Count[12]), .Z(n1568)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    CCU2D r_Clock_Count_183_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1181), .COUT(n1182), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_1 (.A(n1717), .B(n1892), .C(r_Clock_Count[9]), .D(n1550), 
         .Z(n1566)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_1.init = 16'h0100;
    FD1P3IX r_Clock_Count_183__i6 (.D(n69[6]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i5 (.D(n69[5]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i4 (.D(n69[4]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i3 (.D(n69[3]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i3.GSR = "ENABLED";
    LUT4 i1544_3_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[15]), .C(r_Clock_Count[14]), 
         .Z(n1717)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1544_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_2_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .Z(n1644)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut (.A(r_SM_Main[0]), .B(r_Rx_Data), .Z(n1550)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    CCU2D r_Clock_Count_183_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1180), .COUT(n1181), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_183_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1179), .COUT(n1180), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_183_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1178), .COUT(n1179), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_183_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1178), .S1(n69[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_183_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_183_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_1.INJECT1_1 = "NO";
    LUT4 i1593_3_lut_4_lut (.A(n1434), .B(n1295), .C(n1500), .D(n1454), 
         .Z(osc_clk_enable_30)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1593_3_lut_4_lut.init = 16'h0e00;
    FD1P3IX r_Clock_Count_183__i2 (.D(n69[2]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i1 (.D(n69[1]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n1888), .CK(osc_clk), .CD(n1891), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(osc_clk_enable_26), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    LUT4 i21_4_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(n1888), .Z(osc_clk_enable_51)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i21_4_lut_4_lut.init = 16'h2505;
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(osc_clk_enable_29), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n1824), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(osc_clk_enable_30), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(n26), 
         .D(n1888), .Z(n1466)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam i1_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_38 (.A(r_Clock_Count[15]), .B(r_Clock_Count[9]), .Z(n1900)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_38.init = 16'heeee;
    LUT4 i1_4_lut_adj_2 (.A(r_SM_Main[2]), .B(n1345), .C(n1888), .D(r_SM_Main[1]), 
         .Z(n912)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_2.init = 16'h5011;
    PFUMX i1614 (.BLUT(n1823), .ALUT(n1819), .C0(r_SM_Main[1]), .Z(n1824));
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(osc_clk_enable_31), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(osc_clk_enable_32), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    LUT4 i1184_4_lut (.A(r_SM_Main[0]), .B(n1896), .C(n1371), .D(n1488), 
         .Z(n1345)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1184_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_3 (.A(n1890), .B(n1484), .C(r_Clock_Count[9]), .D(r_Clock_Count[13]), 
         .Z(n1488)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_4_lut_adj_3.init = 16'hfffe;
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(osc_clk_enable_33), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(osc_clk_enable_34), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    LUT4 i1587_3_lut_4_lut (.A(n1434), .B(n1295), .C(n1542), .D(n1329), 
         .Z(osc_clk_enable_33)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1587_3_lut_4_lut.init = 16'h000e;
    LUT4 i1_3_lut_4_lut_adj_4 (.A(r_Clock_Count[15]), .B(r_Clock_Count[9]), 
         .C(r_Clock_Count[11]), .D(r_Clock_Count[12]), .Z(n1628)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_4.init = 16'hfffe;
    LUT4 n1822_bdd_2_lut_3_lut_4_lut (.A(n1820), .B(n1890), .C(n1628), 
         .D(n1371), .Z(n1823)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam n1822_bdd_2_lut_3_lut_4_lut.init = 16'h0002;
    FD1P3IX r_Clock_Count_183__i15 (.D(n69[15]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i15.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1466), .SP(osc_clk_enable_40), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i14 (.D(n69[14]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i13 (.D(n69[13]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i13.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SM_Main[0]), .B(n1899), .C(n1295), 
         .D(n1434), .Z(o_Rx_DV_N_113)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8880;
    FD1P3IX r_Clock_Count_183__i12 (.D(n69[12]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i12.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1461), .SP(osc_clk_enable_40), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i11 (.D(n69[11]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i10 (.D(n69[10]), .SP(osc_clk_enable_54), 
            .CD(n912), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_183__i9 (.D(n69[9]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i9.GSR = "ENABLED";
    LUT4 i1597_3_lut_4_lut (.A(n1434), .B(n1295), .C(n1500), .D(n768), 
         .Z(osc_clk_enable_26)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1597_3_lut_4_lut.init = 16'h000e;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(osc_clk_enable_46), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_5 (.A(r_Clock_Count[11]), .B(r_Clock_Count[13]), .Z(n1658)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_adj_5.init = 16'heeee;
    LUT4 i1_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n1095)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1595_3_lut_4_lut (.A(n1434), .B(n1295), .C(n1524), .D(n1454), 
         .Z(osc_clk_enable_29)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1595_3_lut_4_lut.init = 16'h0e00;
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_113), .SP(osc_clk_enable_51), .CK(osc_clk), 
            .Q(o_Rx_DV_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=121, LSE_RLINE=126 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(66[10] 161[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    LUT4 i1576_4_lut (.A(n1574), .B(r_SM_Main[0]), .C(n1434), .D(r_SM_Main[2]), 
         .Z(osc_clk_enable_40)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;
    defparam i1576_4_lut.init = 16'h0031;
    LUT4 i1_3_lut_adj_6 (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_Bit_Index[1]), 
         .Z(n768)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_3_lut_adj_6.init = 16'hfbfb;
    LUT4 i1_3_lut_adj_7 (.A(r_Bit_Index[0]), .B(r_SM_Main[0]), .C(r_Bit_Index[2]), 
         .Z(n1500)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1_3_lut_adj_7.init = 16'hfdfd;
    LUT4 i1_3_lut_adj_8 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .Z(n1454)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(69[7] 160[14])
    defparam i1_3_lut_adj_8.init = 16'h2020;
    FD1P3IX r_Clock_Count_183__i0 (.D(n69[0]), .SP(osc_clk_enable_54), .CD(n912), 
            .CK(osc_clk), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_9 (.A(n1295), .B(r_SM_Main[1]), .Z(n1574)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_9.init = 16'h4444;
    CCU2D r_Clock_Count_183_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1185), .S0(n69[15]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_183_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_10 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n1293)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_10.init = 16'h4444;
    CCU2D r_Clock_Count_183_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1184), .COUT(n1185), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(137[34:54])
    defparam r_Clock_Count_183_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_183_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_183_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_11 (.A(r_Bit_Index[0]), .B(r_SM_Main[0]), .C(r_Bit_Index[2]), 
         .Z(n1524)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1_3_lut_adj_11.init = 16'hfefe;
    LUT4 i1578_3_lut_4_lut (.A(n1434), .B(n1295), .C(n1524), .D(n768), 
         .Z(osc_clk_enable_46)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1578_3_lut_4_lut.init = 16'h000e;
    LUT4 i1_rep_26 (.A(n1434), .B(n1295), .Z(n1888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_rep_26.init = 16'heeee;
    LUT4 r_SM_Main_2__N_58_2__bdd_2_lut_3_lut (.A(n1434), .B(n1295), .C(r_SM_Main[0]), 
         .Z(n1819)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam r_SM_Main_2__N_58_2__bdd_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i1591_4_lut (.A(n768), .B(n1888), .C(r_Bit_Index[2]), .D(n1542), 
         .Z(osc_clk_enable_31)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1591_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_adj_12 (.A(r_SM_Main[0]), .B(r_Bit_Index[0]), .Z(n1542)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1_2_lut_adj_12.init = 16'heeee;
    LUT4 i1589_4_lut (.A(n768), .B(n1888), .C(n1504), .D(r_Bit_Index[0]), 
         .Z(osc_clk_enable_32)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1589_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_adj_13 (.A(r_Bit_Index[2]), .B(r_SM_Main[0]), .Z(n1504)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1_2_lut_adj_13.init = 16'hdddd;
    LUT4 i1_2_lut_adj_14 (.A(r_Clock_Count[15]), .B(r_Clock_Count[12]), 
         .Z(n1598)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_adj_14.init = 16'heeee;
    LUT4 i1_2_lut_rep_31 (.A(r_Clock_Count[1]), .B(r_Clock_Count[5]), .Z(n1893)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_31.init = 16'heeee;
    LUT4 i1_2_lut_rep_33 (.A(r_Clock_Count[10]), .B(r_Clock_Count[8]), .Z(n1895)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_33.init = 16'heeee;
    LUT4 i1_4_lut_adj_15 (.A(r_Bit_Index[1]), .B(r_SM_Main[1]), .C(r_Bit_Index[2]), 
         .D(r_SM_Main[2]), .Z(n1329)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_15.init = 16'hff7f;
    LUT4 i1585_4_lut (.A(n1329), .B(n1888), .C(r_Bit_Index[0]), .D(r_SM_Main[0]), 
         .Z(osc_clk_enable_34)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(114[17:39])
    defparam i1585_4_lut.init = 16'h0040;
    LUT4 r_SM_Main_2__N_58_2__bdd_3_lut_4_lut (.A(n1434), .B(n1295), .C(r_SM_Main[0]), 
         .D(n1095), .Z(n1801)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam r_SM_Main_2__N_58_2__bdd_3_lut_4_lut.init = 16'h1e10;
    LUT4 i39_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n26)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i39_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_16 (.A(n1095), .B(n1888), .C(n1644), .D(n109[2]), 
         .Z(n1461)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h4000;
    LUT4 i993_rep_6_4_lut (.A(n1538), .B(r_Clock_Count[7]), .C(n9), .D(n1893), 
         .Z(n1434)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i993_rep_6_4_lut.init = 16'hccc8;
    LUT4 n1806_bdd_3_lut (.A(n1887), .B(n1801), .C(r_SM_Main[1]), .Z(n1807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1806_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_32 (.A(r_Clock_Count[3]), .B(r_Clock_Count[0]), .Z(n1894)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_32.init = 16'heeee;
    LUT4 n5_bdd_4_lut (.A(n1897), .B(n1895), .C(n1658), .D(n1900), .Z(n1802)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n5_bdd_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(r_Clock_Count[3]), .B(r_Clock_Count[0]), .C(r_Clock_Count[6]), 
         .Z(n1538)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 n1626_bdd_4_lut (.A(n1896), .B(r_SM_Main[0]), .C(r_Clock_Count[14]), 
         .D(r_Clock_Count[13]), .Z(n1820)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n1626_bdd_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_30 (.A(r_Clock_Count[13]), .B(r_Clock_Count[8]), .Z(n1892)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_30.init = 16'heeee;
    LUT4 i1_4_lut_adj_17 (.A(r_Clock_Count[10]), .B(n1600), .C(n1598), 
         .D(r_Clock_Count[14]), .Z(n1295)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_4_lut_adj_17.init = 16'hfffe;
    LUT4 i3_2_lut (.A(r_Clock_Count[4]), .B(r_Clock_Count[2]), .Z(n9)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_18 (.A(r_Clock_Count[1]), .B(r_Clock_Count[5]), 
         .C(n1894), .D(n9), .Z(n1371)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_18.init = 16'hfffe;
    LUT4 i1_2_lut_rep_28_3_lut (.A(r_Clock_Count[10]), .B(r_Clock_Count[8]), 
         .C(r_Rx_Data), .Z(n1890)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_28_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_34 (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n1896)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_34.init = 16'hbbbb;
    LUT4 n1802_bdd_2_lut_3_lut (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), 
         .C(n1802), .Z(n1803)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam n1802_bdd_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(r_Clock_Count[13]), .B(r_Clock_Count[8]), 
         .C(r_Clock_Count[9]), .D(r_Clock_Count[11]), .Z(n1600)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/uartrx.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_19.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PWM
//

module PWM (PWMOut_c, osc_clk, GND_net) /* synthesis syn_module_defined=1 */ ;
    output PWMOut_c;
    input osc_clk;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/impl1/source/top.v(22[8:15])
    
    wire PWMOut_N_27;
    wire [7:0]counter;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(7[11:18])
    
    wire n1700, n1694;
    wire [7:0]n37;
    
    wire n1189, n1188, n1187, n1186;
    
    FD1S3AX PWMOut_15 (.D(PWMOut_N_27), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=102, LSE_RLINE=107 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(21[8] 33[5])
    defparam PWMOut_15.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(counter[2]), .B(counter[5]), .C(counter[1]), .D(counter[0]), 
         .Z(n1700)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(counter[3]), .B(counter[4]), .Z(n1694)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3AX counter_181__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i0.GSR = "ENABLED";
    FD1S3AX counter_181__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i1.GSR = "ENABLED";
    FD1S3AX counter_181__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i2.GSR = "ENABLED";
    FD1S3AX counter_181__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i3.GSR = "ENABLED";
    FD1S3AX counter_181__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i4.GSR = "ENABLED";
    FD1S3AX counter_181__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i5.GSR = "ENABLED";
    FD1S3AX counter_181__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i6.GSR = "ENABLED";
    FD1S3AX counter_181__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181__i7.GSR = "ENABLED";
    CCU2D counter_181_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1189), .S0(n37[7]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_181_add_4_9.INIT1 = 16'h0000;
    defparam counter_181_add_4_9.INJECT1_0 = "NO";
    defparam counter_181_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_181_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1188), .COUT(n1189), .S0(n37[5]), .S1(n37[6]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_181_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_181_add_4_7.INJECT1_0 = "NO";
    defparam counter_181_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_181_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1187), .COUT(n1188), .S0(n37[3]), .S1(n37[4]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_181_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_181_add_4_5.INJECT1_0 = "NO";
    defparam counter_181_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_181_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1186), .COUT(n1187), .S0(n37[1]), .S1(n37[2]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_181_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_181_add_4_3.INJECT1_0 = "NO";
    defparam counter_181_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_181_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1186), .S1(n37[0]));   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(23[14:29])
    defparam counter_181_add_4_1.INIT0 = 16'hF000;
    defparam counter_181_add_4_1.INIT1 = 16'h0555;
    defparam counter_181_add_4_1.INJECT1_0 = "NO";
    defparam counter_181_add_4_1.INJECT1_1 = "NO";
    LUT4 i1573_4_lut (.A(n1700), .B(counter[7]), .C(n1694), .D(counter[6]), 
         .Z(PWMOut_N_27)) /* synthesis lut_function=(!(A (B)+!A (B (C+(D))))) */ ;   // c:/users/rinaldi-i3/lattice/fpgasdr_3/pwm.v(32[4:20])
    defparam i1573_4_lut.init = 16'h3337;
    
endmodule
