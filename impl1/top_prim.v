// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Wed Nov 28 11:28:07 2018
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            RFIn, PWMOut) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(2[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:15])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Tx_Serial_c, o_Rx_Byte_c_7, 
        o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
        o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_Byte_c_0, MYLED_c_7, MixerOutSin_c_7, 
        RFIn_c, PWMOut_c;
    wire [7:0]MixerOutCos;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(20[12:23])
    wire [7:0]CIC_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(22[12:19])
    
    wire RFInR;
    wire [7:0]MixerOutSin_7__N_83;
    wire [7:0]MixerOutCos_7__N_75;
    
    wire o_Rx_DV_c_0, n1660;
    
    VHI i2 (.Z(VCC_net));
    uart_tx uart_tx1 (.GND_net(GND_net), .osc_clk(osc_clk), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_1(o_Rx_Byte_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(91[34] 98[2])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_DV_pad (.I(o_Rx_DV_c_0), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    GSR GSR_INST (.GSR(VCC_net));
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    PWM PWM1 (.CIC_out({CIC_out}), .GND_net(GND_net), .PWMOut_c(PWMOut_c), 
        .osc_clk(osc_clk)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(70[5] 74[2])
    OB MYLED_pad_7 (.I(MYLED_c_7), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(n1660), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_5 (.I(MixerOutSin_c_7), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_4 (.I(MixerOutSin_c_7), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_3 (.I(MixerOutSin_c_7), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_2 (.I(MixerOutSin_c_7), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_1 (.I(MixerOutSin_c_7), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_0 (.I(VCC_net), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MixerOutSin_pad_7 (.I(MixerOutSin_c_7), .O(MixerOutSin[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_6 (.I(MixerOutSin_c_7), .O(MixerOutSin[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_5 (.I(MixerOutSin_c_7), .O(MixerOutSin[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_4 (.I(MixerOutSin_c_7), .O(MixerOutSin[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_3 (.I(MixerOutSin_c_7), .O(MixerOutSin[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_2 (.I(MixerOutSin_c_7), .O(MixerOutSin[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_1 (.I(MixerOutSin_c_7), .O(MixerOutSin[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB MixerOutSin_pad_0 (.I(VCC_net), .O(MixerOutSin[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    OB PWMOut_pad (.I(PWMOut_c), .O(PWMOut));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:15])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    VLO i1 (.Z(GND_net));
    CIC CIC1 (.osc_clk(osc_clk), .CIC_out({CIC_out}), .GND_net(GND_net), 
        .\MixerOutCos[7] (MixerOutCos[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(61[20] 68[2])
    Mixer Mixer1 (.osc_clk(osc_clk), .RFIn_c(RFIn_c), .RFInR(RFInR), .\MixerOutCos[7] (MixerOutCos[7]), 
          .\MixerOutCos_7__N_75[2] (MixerOutCos_7__N_75[2]), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), .MYLED_c_7(MYLED_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(52[7] 59[2])
    nco_sig nco (.osc_clk(osc_clk), .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), 
            .GND_net(GND_net), .n1660(n1660), .RFInR(RFInR), .\MixerOutCos_7__N_75[2] (MixerOutCos_7__N_75[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(45[10] 50[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    uart_rx uart_rx1 (.osc_clk(osc_clk), .i_Rx_Serial_c(i_Rx_Serial_c), 
            .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .GND_net(GND_net), .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_7(o_Rx_Byte_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(83[34] 88[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (GND_net, osc_clk, o_Tx_Serial_c, o_Rx_Byte_c_0, o_Rx_DV_c_0, 
            o_Rx_Byte_c_7, o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, 
            o_Rx_Byte_c_3, o_Rx_Byte_c_2, o_Rx_Byte_c_1) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
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
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    
    wire n1305;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(32[17:30])
    wire [15:0]n69;
    
    wire n1306, n1304, n1303;
    wire [15:0]n121;
    wire [7:0]r_Tx_Data;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(34[16:25])
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(33[16:27])
    
    wire n1679, n1676, osc_clk_enable_156, n928, n1675;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(31[16:25])
    wire [2:0]r_SM_Main_2__N_705;
    
    wire osc_clk_enable_138, n1469, n3, n1307, n3_adj_803, osc_clk_enable_45, 
        n613, o_Tx_Serial_N_743, n1657, n1487, n1499, n10, n612, 
        n1162, n1677, n43, n1678, n10_adj_804, n1310, n1308, n1309, 
        n1372, n1489, n1680;
    
    CCU2D r_Clock_Count_242_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1305), .COUT(n1306), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_242_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1304), .COUT(n1305), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_242_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1303), .COUT(n1304), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_242_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1303), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_242_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_242_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_1.INJECT1_1 = "NO";
    LUT4 r_Tx_Data_0__bdd_3_lut_1369 (.A(r_Tx_Data[0]), .B(r_Tx_Data[2]), 
         .C(r_Bit_Index[1]), .Z(n1679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1369.init = 16'hcaca;
    LUT4 r_Tx_Data_5__bdd_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[6]), .C(r_Bit_Index[1]), 
         .Z(n1676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut.init = 16'hcaca;
    FD1P3IX r_Clock_Count_242__i8 (.D(n69[8]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i8.GSR = "ENABLED";
    LUT4 r_Tx_Data_5__bdd_3_lut_1356 (.A(r_Tx_Data[5]), .B(r_Tx_Data[7]), 
         .C(r_Bit_Index[1]), .Z(n1675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut_1356.init = 16'hcaca;
    LUT4 i1298_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_705[1]), .Z(osc_clk_enable_138)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1298_4_lut.init = 16'h1101;
    LUT4 i1_2_lut (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n1469)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1P3IX r_Clock_Count_242__i9 (.D(n69[9]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i9.GSR = "ENABLED";
    LUT4 i12_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_705[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(31[16:25])
    defparam i12_3_lut.init = 16'h6c6c;
    FD1P3IX r_Clock_Count_242__i10 (.D(n69[10]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i10.GSR = "ENABLED";
    CCU2D r_Clock_Count_242_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1306), .COUT(n1307), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_9.INJECT1_1 = "NO";
    FD1P3AX r_Bit_Index_i0 (.D(n1469), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_44 (.D(n3_adj_803), .SP(osc_clk_enable_156), .CK(osc_clk), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(o_Rx_Byte_c_0), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n613), .CK(osc_clk), .CD(r_SM_Main[2]), .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i837_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_743), .C(r_SM_Main[1]), 
         .Z(n3_adj_803)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(31[16:25])
    defparam i837_3_lut.init = 16'he5e5;
    FD1P3IX r_Clock_Count_242__i11 (.D(n69[11]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i12 (.D(n69[12]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i13 (.D(n69[13]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i13.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_14_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n1657)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i2_2_lut_rep_14_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(n1487), 
         .D(r_Bit_Index[2]), .Z(n1499)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    LUT4 i3_4_lut (.A(o_Rx_DV_c_0), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(osc_clk_enable_45)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    LUT4 i1_1_lut (.A(r_SM_Main[2]), .Z(osc_clk_enable_156)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i1301_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_705[1]), .C(r_SM_Main[1]), 
         .D(r_SM_Main[0]), .Z(n928)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i1301_4_lut.init = 16'h4445;
    LUT4 i5_3_lut (.A(r_Clock_Count[11]), .B(n10), .C(r_Clock_Count[14]), 
         .Z(r_SM_Main_2__N_705[1])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i446_3_lut (.A(n612), .B(r_SM_Main_2__N_705[1]), .C(r_SM_Main[0]), 
         .Z(n613)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i446_3_lut.init = 16'h3a3a;
    FD1S3IX r_SM_Main_i1 (.D(n3), .CK(osc_clk), .CD(r_SM_Main[2]), .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(o_Rx_Byte_c_7), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(o_Rx_Byte_c_6), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(o_Rx_Byte_c_5), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(o_Rx_Byte_c_4), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(o_Rx_Byte_c_3), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(o_Rx_Byte_c_2), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(o_Rx_Byte_c_1), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i14 (.D(n69[14]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i15 (.D(n69[15]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i0 (.D(n69[0]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i0.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n1162), .B(r_Clock_Count[13]), .C(r_Clock_Count[12]), 
         .D(r_Clock_Count[15]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i445_4_lut (.A(o_Rx_DV_c_0), .B(n1657), .C(r_SM_Main[1]), .D(r_SM_Main_2__N_705[1]), 
         .Z(n612)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i445_4_lut.init = 16'hca0a;
    PFUMX i1357 (.BLUT(n1676), .ALUT(n1675), .C0(r_Bit_Index[0]), .Z(n1677));
    LUT4 i998_4_lut (.A(r_Clock_Count[8]), .B(r_Clock_Count[10]), .C(n43), 
         .D(r_Clock_Count[9]), .Z(n1162)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i998_4_lut.init = 16'hccc8;
    LUT4 r_Tx_Data_0__bdd_3_lut_1359 (.A(r_Tx_Data[3]), .B(r_Tx_Data[1]), 
         .C(r_Bit_Index[1]), .Z(n1678)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1359.init = 16'hacac;
    LUT4 i1_4_lut (.A(r_Clock_Count[2]), .B(r_Clock_Count[7]), .C(n10_adj_804), 
         .D(r_Clock_Count[3]), .Z(n43)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(32[17:30])
    defparam i1_4_lut.init = 16'hccc8;
    CCU2D r_Clock_Count_242_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1310), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_242_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_17.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_6 (.A(r_Clock_Count[1]), .B(r_Clock_Count[5]), .C(r_Clock_Count[6]), 
         .D(r_Clock_Count[4]), .Z(n10_adj_804)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(32[17:30])
    defparam i4_4_lut_adj_6.init = 16'hfffe;
    CCU2D r_Clock_Count_242_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1307), .COUT(n1308), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_242_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1308), .COUT(n1309), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_242_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1309), .COUT(n1310), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_242_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_242_add_4_15.INJECT1_1 = "NO";
    LUT4 i1303_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1372)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i1303_3_lut.init = 16'hbfbf;
    FD1P3AX r_Bit_Index_i1 (.D(n1489), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1499), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_705[1]), .CK(osc_clk), .CD(n1372), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i1 (.D(n69[1]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i2 (.D(n69[2]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i3 (.D(n69[3]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i4 (.D(n69[4]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i5 (.D(n69[5]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_242__i6 (.D(n69[6]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i6.GSR = "ENABLED";
    L6MUX21 i1362 (.D0(n1680), .D1(n1677), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_743));
    PFUMX i1360 (.BLUT(n1679), .ALUT(n1678), .C0(r_Bit_Index[0]), .Z(n1680));
    LUT4 i1_3_lut (.A(n1487), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n1489)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i2_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main_2__N_705[1]), .C(r_SM_Main[1]), 
         .Z(n1487)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    FD1P3IX r_Clock_Count_242__i7 (.D(n69[7]), .SP(osc_clk_enable_156), 
            .CD(n928), .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_242__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PWM
//

module PWM (CIC_out, GND_net, PWMOut_c, osc_clk) /* synthesis syn_module_defined=1 */ ;
    input [7:0]CIC_out;
    input GND_net;
    output PWMOut_c;
    input osc_clk;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    
    wire n1302;
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    
    wire n357, n1301, n1300, n1299, PWMOut_N_580;
    wire [7:0]n37;
    
    wire n1322, n1321, n1320, n1319;
    
    CCU2D sub_199_add_2_9 (.A0(CIC_out[7]), .B0(counter[7]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1302), .S1(n357));
    defparam sub_199_add_2_9.INIT0 = 16'h5999;
    defparam sub_199_add_2_9.INIT1 = 16'h0000;
    defparam sub_199_add_2_9.INJECT1_0 = "NO";
    defparam sub_199_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_7 (.A0(CIC_out[5]), .B0(counter[5]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[6]), .B1(counter[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1301), .COUT(n1302));
    defparam sub_199_add_2_7.INIT0 = 16'h5999;
    defparam sub_199_add_2_7.INIT1 = 16'h5999;
    defparam sub_199_add_2_7.INJECT1_0 = "NO";
    defparam sub_199_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_5 (.A0(CIC_out[3]), .B0(counter[3]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[4]), .B1(counter[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1300), .COUT(n1301));
    defparam sub_199_add_2_5.INIT0 = 16'h5999;
    defparam sub_199_add_2_5.INIT1 = 16'h5999;
    defparam sub_199_add_2_5.INJECT1_0 = "NO";
    defparam sub_199_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_3 (.A0(CIC_out[1]), .B0(counter[1]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[2]), .B1(counter[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1299), .COUT(n1300));
    defparam sub_199_add_2_3.INIT0 = 16'h5999;
    defparam sub_199_add_2_3.INIT1 = 16'h5999;
    defparam sub_199_add_2_3.INJECT1_0 = "NO";
    defparam sub_199_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[0]), .B1(counter[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1299));
    defparam sub_199_add_2_1.INIT0 = 16'h0000;
    defparam sub_199_add_2_1.INIT1 = 16'h5999;
    defparam sub_199_add_2_1.INJECT1_0 = "NO";
    defparam sub_199_add_2_1.INJECT1_1 = "NO";
    FD1S3AX PWMOut_9 (.D(PWMOut_N_580), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(10[8] 17[5])
    defparam PWMOut_9.GSR = "ENABLED";
    FD1S3AX counter_238__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i0.GSR = "ENABLED";
    CCU2D counter_238_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1322), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_238_add_4_9.INIT1 = 16'h0000;
    defparam counter_238_add_4_9.INJECT1_0 = "NO";
    defparam counter_238_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_238_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1321), .COUT(n1322), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_238_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_238_add_4_7.INJECT1_0 = "NO";
    defparam counter_238_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_238_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1320), .COUT(n1321), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_238_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_238_add_4_5.INJECT1_0 = "NO";
    defparam counter_238_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_238_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1319), .COUT(n1320), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_238_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_238_add_4_3.INJECT1_0 = "NO";
    defparam counter_238_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_238_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1319), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238_add_4_1.INIT0 = 16'hF000;
    defparam counter_238_add_4_1.INIT1 = 16'h0555;
    defparam counter_238_add_4_1.INJECT1_0 = "NO";
    defparam counter_238_add_4_1.INJECT1_1 = "NO";
    LUT4 i201_1_lut (.A(n357), .Z(PWMOut_N_580)) /* synthesis lut_function=(!(A)) */ ;
    defparam i201_1_lut.init = 16'h5555;
    FD1S3AX counter_238__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i1.GSR = "ENABLED";
    FD1S3AX counter_238__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i2.GSR = "ENABLED";
    FD1S3AX counter_238__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i3.GSR = "ENABLED";
    FD1S3AX counter_238__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i4.GSR = "ENABLED";
    FD1S3AX counter_238__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i5.GSR = "ENABLED";
    FD1S3AX counter_238__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i6.GSR = "ENABLED";
    FD1S3AX counter_238__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_238__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module CIC
//

module CIC (osc_clk, CIC_out, GND_net, \MixerOutCos[7] ) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output [7:0]CIC_out;
    input GND_net;
    input \MixerOutCos[7] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    wire [11:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[24:29])
    
    wire v_comb_N_550;
    wire [11:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(21[24:26])
    wire [11:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(29[24:27])
    
    wire osc_clk_enable_80;
    wire [11:0]n423;
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(31[12:17])
    
    wire n18, n20, v_comb;
    wire [11:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[24:26])
    wire [11:0]n384;
    wire [11:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[24:26])
    wire [11:0]n397;
    wire [11:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(20[24:26])
    wire [11:0]n1;
    wire [11:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(19[24:26])
    wire [11:0]n2;
    wire [11:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(18[24:26])
    wire [11:0]n3;
    
    wire n16;
    wire [11:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[24:26])
    wire [11:0]n410;
    wire [11:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[28:32])
    wire [11:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[24:26])
    wire [11:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[28:32])
    wire [11:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[28:32])
    wire [11:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[28:32])
    wire [11:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[31:38])
    wire [11:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(17[24:26])
    wire [11:0]n4;
    
    wire n1256, n1255;
    wire [11:0]n371;
    
    wire n1254, n1253;
    wire [10:0]n49;
    wire [11:0]n5;
    
    wire n1362, n1361, n1360, n1359, n1358, n1357, n1355, n1354, 
        n1353, n1352, n1351, n1348, n1347, n1346, n1345, n1344, 
        n1341, n1340, n1339, n1338, n1337, n1334, n1333, n1332, 
        n1331, n1330, n1252, n1251, n1250, n1327, n1326, n1325, 
        n1324, n1323, n1249, n1248, osc_clk_enable_130, n1274, n1273, 
        n1272, n1271, n1270, n1269, n1268, n1267, n1266, n1265, 
        n1264, n1263, n1262, n1261, n1260, n1259, n1258, n1257, 
        n1247, n1246, n1245;
    
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n423[4]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d10[4]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i1.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(count[6]), .B(n18), .C(count[3]), .D(count[10]), 
         .Z(n20)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    FD1S3AX v_comb_84 (.D(v_comb_N_550), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n384[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d8_i0_i0 (.D(n397[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    LUT4 i1084_2_lut (.A(d4[0]), .B(d5[0]), .Z(n1[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1084_2_lut.init = 16'h6666;
    LUT4 i1085_2_lut (.A(d3[0]), .B(d4[0]), .Z(n2[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1085_2_lut.init = 16'h6666;
    LUT4 i1086_2_lut (.A(d2[0]), .B(d3[0]), .Z(n3[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1086_2_lut.init = 16'h6666;
    LUT4 i5_2_lut (.A(count[1]), .B(count[5]), .Z(n16)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1P3AX d9_i0_i0 (.D(n410[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[4]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    LUT4 i1087_2_lut (.A(d1[0]), .B(d2[0]), .Z(n4[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1087_2_lut.init = 16'h6666;
    CCU2D sub_39_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1256), 
          .S0(n410[11]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_13.INIT0 = 16'h5999;
    defparam sub_39_add_2_13.INIT1 = 16'h0000;
    defparam sub_39_add_2_13.INJECT1_0 = "NO";
    defparam sub_39_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n1255), 
          .COUT(n1256), .S0(n410[9]), .S1(n410[10]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_11.INIT0 = 16'h5999;
    defparam sub_39_add_2_11.INIT1 = 16'h5999;
    defparam sub_39_add_2_11.INJECT1_0 = "NO";
    defparam sub_39_add_2_11.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i0 (.D(n371[0]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    CCU2D sub_39_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n1254), 
          .COUT(n1255), .S0(n410[7]), .S1(n410[8]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_9.INIT0 = 16'h5999;
    defparam sub_39_add_2_9.INIT1 = 16'h5999;
    defparam sub_39_add_2_9.INJECT1_0 = "NO";
    defparam sub_39_add_2_9.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i11 (.D(n371[11]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n371[10]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n371[9]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n371[8]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n371[7]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n371[6]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n371[5]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n371[4]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n371[3]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i2 (.D(n371[2]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(n371[1]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    CCU2D sub_39_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n1253), 
          .COUT(n1254), .S0(n410[5]), .S1(n410[6]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_7.INIT0 = 16'h5999;
    defparam sub_39_add_2_7.INIT1 = 16'h5999;
    defparam sub_39_add_2_7.INJECT1_0 = "NO";
    defparam sub_39_add_2_7.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(count[7]), .B(count[2]), .C(count[9]), .D(count[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    FD1S3IX count_236_237__i1 (.D(n49[0]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i1.GSR = "ENABLED";
    FD1S3AX d5_235__i0 (.D(n1[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i0.GSR = "ENABLED";
    FD1S3AX d4_234__i0 (.D(n2[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i0.GSR = "ENABLED";
    FD1S3AX d3_233__i0 (.D(n3[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i0.GSR = "ENABLED";
    FD1S3AX d2_232__i0 (.D(n4[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i0.GSR = "ENABLED";
    FD1S3AX d1_231__i0 (.D(n5[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i0.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(count[4]), .B(n20), .C(n16), .D(count[8]), .Z(v_comb_N_550)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    CCU2D d1_231_add_4_13 (.A0(\MixerOutCos[7] ), .B0(d1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1362), .S0(n5[11]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_13.INIT0 = 16'h5666;
    defparam d1_231_add_4_13.INIT1 = 16'h0000;
    defparam d1_231_add_4_13.INJECT1_0 = "NO";
    defparam d1_231_add_4_13.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_11 (.A0(\MixerOutCos[7] ), .B0(d1[9]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1361), .COUT(n1362), .S0(n5[9]), .S1(n5[10]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_11.INIT0 = 16'h5666;
    defparam d1_231_add_4_11.INIT1 = 16'h5666;
    defparam d1_231_add_4_11.INJECT1_0 = "NO";
    defparam d1_231_add_4_11.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_9 (.A0(\MixerOutCos[7] ), .B0(d1[7]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1360), .COUT(n1361), .S0(n5[7]), .S1(n5[8]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_9.INIT0 = 16'h5666;
    defparam d1_231_add_4_9.INIT1 = 16'h5666;
    defparam d1_231_add_4_9.INJECT1_0 = "NO";
    defparam d1_231_add_4_9.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_7 (.A0(\MixerOutCos[7] ), .B0(d1[5]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1359), .COUT(n1360), .S0(n5[5]), .S1(n5[6]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_7.INIT0 = 16'h5666;
    defparam d1_231_add_4_7.INIT1 = 16'h5666;
    defparam d1_231_add_4_7.INJECT1_0 = "NO";
    defparam d1_231_add_4_7.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_5 (.A0(\MixerOutCos[7] ), .B0(d1[3]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1358), .COUT(n1359), .S0(n5[3]), .S1(n5[4]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_5.INIT0 = 16'h5666;
    defparam d1_231_add_4_5.INIT1 = 16'h5666;
    defparam d1_231_add_4_5.INJECT1_0 = "NO";
    defparam d1_231_add_4_5.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_3 (.A0(\MixerOutCos[7] ), .B0(d1[1]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[7] ), .B1(d1[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1357), .COUT(n1358), .S0(n5[1]), .S1(n5[2]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_3.INIT0 = 16'h5666;
    defparam d1_231_add_4_3.INIT1 = 16'h5666;
    defparam d1_231_add_4_3.INJECT1_0 = "NO";
    defparam d1_231_add_4_3.INJECT1_1 = "NO";
    CCU2D d1_231_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1357), 
          .S1(n5[0]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231_add_4_1.INIT0 = 16'hF000;
    defparam d1_231_add_4_1.INIT1 = 16'h0555;
    defparam d1_231_add_4_1.INJECT1_0 = "NO";
    defparam d1_231_add_4_1.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n1355), 
          .S0(n4[10]), .S1(n4[11]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_12.INIT0 = 16'h5666;
    defparam d2_232_add_4_12.INIT1 = 16'h5666;
    defparam d2_232_add_4_12.INJECT1_0 = "NO";
    defparam d2_232_add_4_12.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n1354), 
          .COUT(n1355), .S0(n4[8]), .S1(n4[9]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_10.INIT0 = 16'h5666;
    defparam d2_232_add_4_10.INIT1 = 16'h5666;
    defparam d2_232_add_4_10.INJECT1_0 = "NO";
    defparam d2_232_add_4_10.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1353), 
          .COUT(n1354), .S0(n4[6]), .S1(n4[7]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_8.INIT0 = 16'h5666;
    defparam d2_232_add_4_8.INIT1 = 16'h5666;
    defparam d2_232_add_4_8.INJECT1_0 = "NO";
    defparam d2_232_add_4_8.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1352), 
          .COUT(n1353), .S0(n4[4]), .S1(n4[5]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_6.INIT0 = 16'h5666;
    defparam d2_232_add_4_6.INIT1 = 16'h5666;
    defparam d2_232_add_4_6.INJECT1_0 = "NO";
    defparam d2_232_add_4_6.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1351), 
          .COUT(n1352), .S0(n4[2]), .S1(n4[3]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_4.INIT0 = 16'h5666;
    defparam d2_232_add_4_4.INIT1 = 16'h5666;
    defparam d2_232_add_4_4.INJECT1_0 = "NO";
    defparam d2_232_add_4_4.INJECT1_1 = "NO";
    CCU2D d2_232_add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n1351), 
          .S1(n4[1]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232_add_4_2.INIT0 = 16'h7000;
    defparam d2_232_add_4_2.INIT1 = 16'h5666;
    defparam d2_232_add_4_2.INJECT1_0 = "NO";
    defparam d2_232_add_4_2.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n1348), 
          .S0(n3[10]), .S1(n3[11]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_12.INIT0 = 16'h5666;
    defparam d3_233_add_4_12.INIT1 = 16'h5666;
    defparam d3_233_add_4_12.INJECT1_0 = "NO";
    defparam d3_233_add_4_12.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n1347), 
          .COUT(n1348), .S0(n3[8]), .S1(n3[9]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_10.INIT0 = 16'h5666;
    defparam d3_233_add_4_10.INIT1 = 16'h5666;
    defparam d3_233_add_4_10.INJECT1_0 = "NO";
    defparam d3_233_add_4_10.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n1346), 
          .COUT(n1347), .S0(n3[6]), .S1(n3[7]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_8.INIT0 = 16'h5666;
    defparam d3_233_add_4_8.INIT1 = 16'h5666;
    defparam d3_233_add_4_8.INJECT1_0 = "NO";
    defparam d3_233_add_4_8.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n1345), 
          .COUT(n1346), .S0(n3[4]), .S1(n3[5]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_6.INIT0 = 16'h5666;
    defparam d3_233_add_4_6.INIT1 = 16'h5666;
    defparam d3_233_add_4_6.INJECT1_0 = "NO";
    defparam d3_233_add_4_6.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n1344), 
          .COUT(n1345), .S0(n3[2]), .S1(n3[3]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_4.INIT0 = 16'h5666;
    defparam d3_233_add_4_4.INIT1 = 16'h5666;
    defparam d3_233_add_4_4.INJECT1_0 = "NO";
    defparam d3_233_add_4_4.INJECT1_1 = "NO";
    CCU2D d3_233_add_4_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n1344), 
          .S1(n3[1]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233_add_4_2.INIT0 = 16'h7000;
    defparam d3_233_add_4_2.INIT1 = 16'h5666;
    defparam d3_233_add_4_2.INJECT1_0 = "NO";
    defparam d3_233_add_4_2.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n1341), 
          .S0(n2[10]), .S1(n2[11]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_12.INIT0 = 16'h5666;
    defparam d4_234_add_4_12.INIT1 = 16'h5666;
    defparam d4_234_add_4_12.INJECT1_0 = "NO";
    defparam d4_234_add_4_12.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n1340), 
          .COUT(n1341), .S0(n2[8]), .S1(n2[9]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_10.INIT0 = 16'h5666;
    defparam d4_234_add_4_10.INIT1 = 16'h5666;
    defparam d4_234_add_4_10.INJECT1_0 = "NO";
    defparam d4_234_add_4_10.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n1339), 
          .COUT(n1340), .S0(n2[6]), .S1(n2[7]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_8.INIT0 = 16'h5666;
    defparam d4_234_add_4_8.INIT1 = 16'h5666;
    defparam d4_234_add_4_8.INJECT1_0 = "NO";
    defparam d4_234_add_4_8.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n1338), 
          .COUT(n1339), .S0(n2[4]), .S1(n2[5]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_6.INIT0 = 16'h5666;
    defparam d4_234_add_4_6.INIT1 = 16'h5666;
    defparam d4_234_add_4_6.INJECT1_0 = "NO";
    defparam d4_234_add_4_6.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n1337), 
          .COUT(n1338), .S0(n2[2]), .S1(n2[3]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_4.INIT0 = 16'h5666;
    defparam d4_234_add_4_4.INIT1 = 16'h5666;
    defparam d4_234_add_4_4.INJECT1_0 = "NO";
    defparam d4_234_add_4_4.INJECT1_1 = "NO";
    CCU2D d4_234_add_4_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n1337), 
          .S1(n2[1]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234_add_4_2.INIT0 = 16'h7000;
    defparam d4_234_add_4_2.INIT1 = 16'h5666;
    defparam d4_234_add_4_2.INJECT1_0 = "NO";
    defparam d4_234_add_4_2.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n1334), 
          .S0(n1[10]), .S1(n1[11]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_12.INIT0 = 16'h5666;
    defparam d5_235_add_4_12.INIT1 = 16'h5666;
    defparam d5_235_add_4_12.INJECT1_0 = "NO";
    defparam d5_235_add_4_12.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n1333), 
          .COUT(n1334), .S0(n1[8]), .S1(n1[9]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_10.INIT0 = 16'h5666;
    defparam d5_235_add_4_10.INIT1 = 16'h5666;
    defparam d5_235_add_4_10.INJECT1_0 = "NO";
    defparam d5_235_add_4_10.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n1332), 
          .COUT(n1333), .S0(n1[6]), .S1(n1[7]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_8.INIT0 = 16'h5666;
    defparam d5_235_add_4_8.INIT1 = 16'h5666;
    defparam d5_235_add_4_8.INJECT1_0 = "NO";
    defparam d5_235_add_4_8.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n1331), 
          .COUT(n1332), .S0(n1[4]), .S1(n1[5]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_6.INIT0 = 16'h5666;
    defparam d5_235_add_4_6.INIT1 = 16'h5666;
    defparam d5_235_add_4_6.INJECT1_0 = "NO";
    defparam d5_235_add_4_6.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n1330), 
          .COUT(n1331), .S0(n1[2]), .S1(n1[3]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_4.INIT0 = 16'h5666;
    defparam d5_235_add_4_4.INIT1 = 16'h5666;
    defparam d5_235_add_4_4.INJECT1_0 = "NO";
    defparam d5_235_add_4_4.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n1252), 
          .COUT(n1253), .S0(n410[3]), .S1(n410[4]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_5.INIT0 = 16'h5999;
    defparam sub_39_add_2_5.INIT1 = 16'h5999;
    defparam sub_39_add_2_5.INJECT1_0 = "NO";
    defparam sub_39_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n1251), 
          .COUT(n1252), .S0(n410[1]), .S1(n410[2]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_3.INIT0 = 16'h5999;
    defparam sub_39_add_2_3.INIT1 = 16'h5999;
    defparam sub_39_add_2_3.INJECT1_0 = "NO";
    defparam sub_39_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n1251), 
          .S1(n410[0]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_1.INIT0 = 16'h0000;
    defparam sub_39_add_2_1.INIT1 = 16'h5999;
    defparam sub_39_add_2_1.INJECT1_0 = "NO";
    defparam sub_39_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1250), 
          .S0(n423[11]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_13.INIT0 = 16'h5999;
    defparam sub_40_add_2_13.INIT1 = 16'h0000;
    defparam sub_40_add_2_13.INJECT1_0 = "NO";
    defparam sub_40_add_2_13.INJECT1_1 = "NO";
    CCU2D d5_235_add_4_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n1330), 
          .S1(n1[1]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235_add_4_2.INIT0 = 16'h7000;
    defparam d5_235_add_4_2.INIT1 = 16'h5666;
    defparam d5_235_add_4_2.INJECT1_0 = "NO";
    defparam d5_235_add_4_2.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1327), .S0(n49[9]), .S1(n49[10]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_11.INIT0 = 16'hfaaa;
    defparam count_236_237_add_4_11.INIT1 = 16'hfaaa;
    defparam count_236_237_add_4_11.INJECT1_0 = "NO";
    defparam count_236_237_add_4_11.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1326), .COUT(n1327), .S0(n49[7]), .S1(n49[8]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_9.INIT0 = 16'hfaaa;
    defparam count_236_237_add_4_9.INIT1 = 16'hfaaa;
    defparam count_236_237_add_4_9.INJECT1_0 = "NO";
    defparam count_236_237_add_4_9.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1325), .COUT(n1326), .S0(n49[5]), .S1(n49[6]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_7.INIT0 = 16'hfaaa;
    defparam count_236_237_add_4_7.INIT1 = 16'hfaaa;
    defparam count_236_237_add_4_7.INJECT1_0 = "NO";
    defparam count_236_237_add_4_7.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1324), .COUT(n1325), .S0(n49[3]), .S1(n49[4]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_5.INIT0 = 16'hfaaa;
    defparam count_236_237_add_4_5.INIT1 = 16'hfaaa;
    defparam count_236_237_add_4_5.INJECT1_0 = "NO";
    defparam count_236_237_add_4_5.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1323), .COUT(n1324), .S0(n49[1]), .S1(n49[2]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_3.INIT0 = 16'hfaaa;
    defparam count_236_237_add_4_3.INIT1 = 16'hfaaa;
    defparam count_236_237_add_4_3.INJECT1_0 = "NO";
    defparam count_236_237_add_4_3.INJECT1_1 = "NO";
    CCU2D count_236_237_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1323), .S1(n49[0]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237_add_4_1.INIT0 = 16'hF000;
    defparam count_236_237_add_4_1.INIT1 = 16'h0555;
    defparam count_236_237_add_4_1.INJECT1_0 = "NO";
    defparam count_236_237_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n1249), 
          .COUT(n1250), .S0(n423[9]), .S1(n423[10]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_11.INIT0 = 16'h5999;
    defparam sub_40_add_2_11.INIT1 = 16'h5999;
    defparam sub_40_add_2_11.INJECT1_0 = "NO";
    defparam sub_40_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n1248), 
          .COUT(n1249), .S0(n423[7]), .S1(n423[8]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_9.INIT0 = 16'h5999;
    defparam sub_40_add_2_9.INIT1 = 16'h5999;
    defparam sub_40_add_2_9.INJECT1_0 = "NO";
    defparam sub_40_add_2_9.INJECT1_1 = "NO";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[11]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[10]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[9]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[8]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[7]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[6]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[5]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(CIC_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_80), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n410[11]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n410[10]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n410[9]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n410[8]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n410[7]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n410[6]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n410[5]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n410[4]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n410[3]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n410[2]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n410[1]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n397[11]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n397[10]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n397[9]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n397[8]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n397[7]), .SP(osc_clk_enable_130), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n397[6]), .SP(v_comb), .CK(osc_clk), .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n397[5]), .SP(v_comb), .CK(osc_clk), .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n397[4]), .SP(v_comb), .CK(osc_clk), .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n397[3]), .SP(v_comb), .CK(osc_clk), .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(n397[2]), .SP(v_comb), .CK(osc_clk), .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n397[1]), .SP(v_comb), .CK(osc_clk), .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n384[11]), .SP(v_comb), .CK(osc_clk), .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n384[10]), .SP(v_comb), .CK(osc_clk), .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n384[9]), .SP(v_comb), .CK(osc_clk), .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n384[8]), .SP(v_comb), .CK(osc_clk), .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n384[7]), .SP(v_comb), .CK(osc_clk), .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n384[6]), .SP(v_comb), .CK(osc_clk), .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n384[5]), .SP(v_comb), .CK(osc_clk), .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_19 (.D(v_comb_N_550), .CK(osc_clk), .Q(osc_clk_enable_80)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_19.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n384[4]), .SP(v_comb), .CK(osc_clk), .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n384[3]), .SP(v_comb), .CK(osc_clk), .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n384[2]), .SP(v_comb), .CK(osc_clk), .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n384[1]), .SP(v_comb), .CK(osc_clk), .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n423[11]), .SP(v_comb), .CK(osc_clk), .Q(d10[11]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i8.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n423[10]), .SP(v_comb), .CK(osc_clk), .Q(d10[10]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n423[9]), .SP(v_comb), .CK(osc_clk), .Q(d10[9]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n423[8]), .SP(v_comb), .CK(osc_clk), .Q(d10[8]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n423[7]), .SP(v_comb), .CK(osc_clk), .Q(d10[7]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i3 (.D(n423[6]), .SP(v_comb), .CK(osc_clk), .Q(d10[6]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i2 (.D(n423[5]), .SP(v_comb), .CK(osc_clk), .Q(d10[5]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 121[5])
    defparam d10__0__i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(v_comb_N_550), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(v_comb_N_550), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(v_comb_N_550), .CK(osc_clk), .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    CCU2D sub_36_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1274), .S0(n371[11]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_13.INIT0 = 16'h5999;
    defparam sub_36_add_2_13.INIT1 = 16'h0000;
    defparam sub_36_add_2_13.INJECT1_0 = "NO";
    defparam sub_36_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1273), .COUT(n1274), .S0(n371[9]), .S1(n371[10]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_11.INIT0 = 16'h5999;
    defparam sub_36_add_2_11.INIT1 = 16'h5999;
    defparam sub_36_add_2_11.INJECT1_0 = "NO";
    defparam sub_36_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1272), .COUT(n1273), .S0(n371[7]), .S1(n371[8]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_9.INIT0 = 16'h5999;
    defparam sub_36_add_2_9.INIT1 = 16'h5999;
    defparam sub_36_add_2_9.INJECT1_0 = "NO";
    defparam sub_36_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1271), .COUT(n1272), .S0(n371[5]), .S1(n371[6]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_7.INIT0 = 16'h5999;
    defparam sub_36_add_2_7.INIT1 = 16'h5999;
    defparam sub_36_add_2_7.INJECT1_0 = "NO";
    defparam sub_36_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1270), .COUT(n1271), .S0(n371[3]), .S1(n371[4]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_5.INIT0 = 16'h5999;
    defparam sub_36_add_2_5.INIT1 = 16'h5999;
    defparam sub_36_add_2_5.INJECT1_0 = "NO";
    defparam sub_36_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1269), .COUT(n1270), .S0(n371[1]), .S1(n371[2]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_3.INIT0 = 16'h5999;
    defparam sub_36_add_2_3.INIT1 = 16'h5999;
    defparam sub_36_add_2_3.INJECT1_0 = "NO";
    defparam sub_36_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1269), .S1(n371[0]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_1.INIT0 = 16'h0000;
    defparam sub_36_add_2_1.INIT1 = 16'h5999;
    defparam sub_36_add_2_1.INJECT1_0 = "NO";
    defparam sub_36_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1268), 
          .S0(n384[11]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_13.INIT0 = 16'h5999;
    defparam sub_37_add_2_13.INIT1 = 16'h0000;
    defparam sub_37_add_2_13.INJECT1_0 = "NO";
    defparam sub_37_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n1267), 
          .COUT(n1268), .S0(n384[9]), .S1(n384[10]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_11.INIT0 = 16'h5999;
    defparam sub_37_add_2_11.INIT1 = 16'h5999;
    defparam sub_37_add_2_11.INJECT1_0 = "NO";
    defparam sub_37_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n1266), 
          .COUT(n1267), .S0(n384[7]), .S1(n384[8]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_9.INIT0 = 16'h5999;
    defparam sub_37_add_2_9.INIT1 = 16'h5999;
    defparam sub_37_add_2_9.INJECT1_0 = "NO";
    defparam sub_37_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n1265), 
          .COUT(n1266), .S0(n384[5]), .S1(n384[6]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_7.INIT0 = 16'h5999;
    defparam sub_37_add_2_7.INIT1 = 16'h5999;
    defparam sub_37_add_2_7.INJECT1_0 = "NO";
    defparam sub_37_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n1264), 
          .COUT(n1265), .S0(n384[3]), .S1(n384[4]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_5.INIT0 = 16'h5999;
    defparam sub_37_add_2_5.INIT1 = 16'h5999;
    defparam sub_37_add_2_5.INJECT1_0 = "NO";
    defparam sub_37_add_2_5.INJECT1_1 = "NO";
    FD1S3IX count_236_237__i2 (.D(n49[1]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i2.GSR = "ENABLED";
    CCU2D sub_37_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n1263), 
          .COUT(n1264), .S0(n384[1]), .S1(n384[2]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_3.INIT0 = 16'h5999;
    defparam sub_37_add_2_3.INIT1 = 16'h5999;
    defparam sub_37_add_2_3.INJECT1_0 = "NO";
    defparam sub_37_add_2_3.INJECT1_1 = "NO";
    FD1S3IX count_236_237__i3 (.D(n49[2]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i3.GSR = "ENABLED";
    FD1S3IX count_236_237__i4 (.D(n49[3]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i4.GSR = "ENABLED";
    FD1S3IX count_236_237__i5 (.D(n49[4]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i5.GSR = "ENABLED";
    FD1S3IX count_236_237__i6 (.D(n49[5]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i6.GSR = "ENABLED";
    FD1S3IX count_236_237__i7 (.D(n49[6]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i7.GSR = "ENABLED";
    FD1S3IX count_236_237__i8 (.D(n49[7]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i8.GSR = "ENABLED";
    FD1S3IX count_236_237__i9 (.D(n49[8]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i9.GSR = "ENABLED";
    FD1S3IX count_236_237__i10 (.D(n49[9]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i10.GSR = "ENABLED";
    FD1S3IX count_236_237__i11 (.D(n49[10]), .CK(osc_clk), .CD(v_comb_N_550), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_236_237__i11.GSR = "ENABLED";
    FD1S3AX d5_235__i1 (.D(n1[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i1.GSR = "ENABLED";
    FD1S3AX d5_235__i2 (.D(n1[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i2.GSR = "ENABLED";
    FD1S3AX d5_235__i3 (.D(n1[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i3.GSR = "ENABLED";
    FD1S3AX d5_235__i4 (.D(n1[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i4.GSR = "ENABLED";
    FD1S3AX d5_235__i5 (.D(n1[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i5.GSR = "ENABLED";
    FD1S3AX d5_235__i6 (.D(n1[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i6.GSR = "ENABLED";
    FD1S3AX d5_235__i7 (.D(n1[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i7.GSR = "ENABLED";
    FD1S3AX d5_235__i8 (.D(n1[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i8.GSR = "ENABLED";
    FD1S3AX d5_235__i9 (.D(n1[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i9.GSR = "ENABLED";
    FD1S3AX d5_235__i10 (.D(n1[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i10.GSR = "ENABLED";
    FD1S3AX d5_235__i11 (.D(n1[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam d5_235__i11.GSR = "ENABLED";
    FD1S3AX d4_234__i1 (.D(n2[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i1.GSR = "ENABLED";
    FD1S3AX d4_234__i2 (.D(n2[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i2.GSR = "ENABLED";
    FD1S3AX d4_234__i3 (.D(n2[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i3.GSR = "ENABLED";
    FD1S3AX d4_234__i4 (.D(n2[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i4.GSR = "ENABLED";
    FD1S3AX d4_234__i5 (.D(n2[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i5.GSR = "ENABLED";
    FD1S3AX d4_234__i6 (.D(n2[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i6.GSR = "ENABLED";
    FD1S3AX d4_234__i7 (.D(n2[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i7.GSR = "ENABLED";
    FD1S3AX d4_234__i8 (.D(n2[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i8.GSR = "ENABLED";
    FD1S3AX d4_234__i9 (.D(n2[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i9.GSR = "ENABLED";
    FD1S3AX d4_234__i10 (.D(n2[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i10.GSR = "ENABLED";
    FD1S3AX d4_234__i11 (.D(n2[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam d4_234__i11.GSR = "ENABLED";
    FD1S3AX d3_233__i1 (.D(n3[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i1.GSR = "ENABLED";
    FD1S3AX d3_233__i2 (.D(n3[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i2.GSR = "ENABLED";
    FD1S3AX d3_233__i3 (.D(n3[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i3.GSR = "ENABLED";
    FD1S3AX d3_233__i4 (.D(n3[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i4.GSR = "ENABLED";
    FD1S3AX d3_233__i5 (.D(n3[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i5.GSR = "ENABLED";
    FD1S3AX d3_233__i6 (.D(n3[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i6.GSR = "ENABLED";
    FD1S3AX d3_233__i7 (.D(n3[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i7.GSR = "ENABLED";
    FD1S3AX d3_233__i8 (.D(n3[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i8.GSR = "ENABLED";
    FD1S3AX d3_233__i9 (.D(n3[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i9.GSR = "ENABLED";
    FD1S3AX d3_233__i10 (.D(n3[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i10.GSR = "ENABLED";
    FD1S3AX d3_233__i11 (.D(n3[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam d3_233__i11.GSR = "ENABLED";
    FD1S3AX d2_232__i1 (.D(n4[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i1.GSR = "ENABLED";
    FD1S3AX d2_232__i2 (.D(n4[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i2.GSR = "ENABLED";
    FD1S3AX d2_232__i3 (.D(n4[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i3.GSR = "ENABLED";
    FD1S3AX d2_232__i4 (.D(n4[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i4.GSR = "ENABLED";
    FD1S3AX d2_232__i5 (.D(n4[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i5.GSR = "ENABLED";
    FD1S3AX d2_232__i6 (.D(n4[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i6.GSR = "ENABLED";
    FD1S3AX d2_232__i7 (.D(n4[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i7.GSR = "ENABLED";
    FD1S3AX d2_232__i8 (.D(n4[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i8.GSR = "ENABLED";
    FD1S3AX d2_232__i9 (.D(n4[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i9.GSR = "ENABLED";
    FD1S3AX d2_232__i10 (.D(n4[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i10.GSR = "ENABLED";
    FD1S3AX d2_232__i11 (.D(n4[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam d2_232__i11.GSR = "ENABLED";
    FD1S3AX d1_231__i1 (.D(n5[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i1.GSR = "ENABLED";
    FD1S3AX d1_231__i2 (.D(n5[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i2.GSR = "ENABLED";
    FD1S3AX d1_231__i3 (.D(n5[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i3.GSR = "ENABLED";
    FD1S3AX d1_231__i4 (.D(n5[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i4.GSR = "ENABLED";
    FD1S3AX d1_231__i5 (.D(n5[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i5.GSR = "ENABLED";
    FD1S3AX d1_231__i6 (.D(n5[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i6.GSR = "ENABLED";
    FD1S3AX d1_231__i7 (.D(n5[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i7.GSR = "ENABLED";
    FD1S3AX d1_231__i8 (.D(n5[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i8.GSR = "ENABLED";
    FD1S3AX d1_231__i9 (.D(n5[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i9.GSR = "ENABLED";
    FD1S3AX d1_231__i10 (.D(n5[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i10.GSR = "ENABLED";
    FD1S3AX d1_231__i11 (.D(n5[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam d1_231__i11.GSR = "ENABLED";
    CCU2D sub_37_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n1263), 
          .S1(n384[0]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_1.INIT0 = 16'h0000;
    defparam sub_37_add_2_1.INIT1 = 16'h5999;
    defparam sub_37_add_2_1.INJECT1_0 = "NO";
    defparam sub_37_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1262), 
          .S0(n397[11]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_13.INIT0 = 16'h5999;
    defparam sub_38_add_2_13.INIT1 = 16'h0000;
    defparam sub_38_add_2_13.INJECT1_0 = "NO";
    defparam sub_38_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n1261), 
          .COUT(n1262), .S0(n397[9]), .S1(n397[10]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_11.INIT0 = 16'h5999;
    defparam sub_38_add_2_11.INIT1 = 16'h5999;
    defparam sub_38_add_2_11.INJECT1_0 = "NO";
    defparam sub_38_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n1260), 
          .COUT(n1261), .S0(n397[7]), .S1(n397[8]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_9.INIT0 = 16'h5999;
    defparam sub_38_add_2_9.INIT1 = 16'h5999;
    defparam sub_38_add_2_9.INJECT1_0 = "NO";
    defparam sub_38_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n1259), 
          .COUT(n1260), .S0(n397[5]), .S1(n397[6]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_7.INIT0 = 16'h5999;
    defparam sub_38_add_2_7.INIT1 = 16'h5999;
    defparam sub_38_add_2_7.INJECT1_0 = "NO";
    defparam sub_38_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n1258), 
          .COUT(n1259), .S0(n397[3]), .S1(n397[4]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_5.INIT0 = 16'h5999;
    defparam sub_38_add_2_5.INIT1 = 16'h5999;
    defparam sub_38_add_2_5.INJECT1_0 = "NO";
    defparam sub_38_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n1257), 
          .COUT(n1258), .S0(n397[1]), .S1(n397[2]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_3.INIT0 = 16'h5999;
    defparam sub_38_add_2_3.INIT1 = 16'h5999;
    defparam sub_38_add_2_3.INJECT1_0 = "NO";
    defparam sub_38_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n1257), 
          .S1(n397[0]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_1.INIT0 = 16'h0000;
    defparam sub_38_add_2_1.INIT1 = 16'h5999;
    defparam sub_38_add_2_1.INJECT1_0 = "NO";
    defparam sub_38_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n1247), 
          .COUT(n1248), .S0(n423[5]), .S1(n423[6]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_7.INIT0 = 16'h5999;
    defparam sub_40_add_2_7.INIT1 = 16'h5999;
    defparam sub_40_add_2_7.INJECT1_0 = "NO";
    defparam sub_40_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n1246), 
          .COUT(n1247), .S1(n423[4]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_5.INIT0 = 16'h5999;
    defparam sub_40_add_2_5.INIT1 = 16'h5999;
    defparam sub_40_add_2_5.INJECT1_0 = "NO";
    defparam sub_40_add_2_5.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_20 (.D(v_comb_N_550), .CK(osc_clk), .Q(osc_clk_enable_130)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=61, LSE_RLINE=68 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_20.GSR = "ENABLED";
    CCU2D sub_40_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n1245), 
          .COUT(n1246));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_3.INIT0 = 16'h5999;
    defparam sub_40_add_2_3.INIT1 = 16'h5999;
    defparam sub_40_add_2_3.INJECT1_0 = "NO";
    defparam sub_40_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n1245));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_1.INIT0 = 16'h0000;
    defparam sub_40_add_2_1.INIT1 = 16'h5999;
    defparam sub_40_add_2_1.INJECT1_0 = "NO";
    defparam sub_40_add_2_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (osc_clk, RFIn_c, RFInR, \MixerOutCos[7] , \MixerOutCos_7__N_75[2] , 
            MixerOutSin_c_7, \MixerOutSin_7__N_83[7] , MYLED_c_7) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input RFIn_c;
    output RFInR;
    output \MixerOutCos[7] ;
    input \MixerOutCos_7__N_75[2] ;
    output MixerOutSin_c_7;
    input \MixerOutSin_7__N_83[7] ;
    output MYLED_c_7;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_67;
    
    FD1S3AY RFInR1_20 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=52, LSE_RLINE=59 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(20[8] 23[25])
    defparam RFInR1_20.GSR = "ENABLED";
    FD1S3AY RFInR_21 (.D(RFInR1), .CK(osc_clk), .Q(RFInR)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=52, LSE_RLINE=59 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(20[8] 23[25])
    defparam RFInR_21.GSR = "ENABLED";
    FD1S3AX MixerOutCos_i7 (.D(\MixerOutCos_7__N_75[2] ), .CK(osc_clk), 
            .Q(\MixerOutCos[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=52, LSE_RLINE=59 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(27[8] 50[5])
    defparam MixerOutCos_i7.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[2]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=52, LSE_RLINE=59 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(27[8] 50[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    LUT4 i1279_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(RFInR), .Z(MixerOutSin_7__N_67[2])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(35[4] 38[27])
    defparam i1279_2_lut.init = 16'h9999;
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\MixerOutSin_7__N_83[7] ), .Z(MYLED_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(30[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (osc_clk, \MixerOutSin_7__N_83[7] , GND_net, n1660, RFInR, 
            \MixerOutCos_7__N_75[2] ) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output \MixerOutSin_7__N_83[7] ;
    input GND_net;
    output n1660;
    input RFInR;
    output \MixerOutCos_7__N_75[2] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(27[12:23])
    wire [63:0]phase_accum_63__N_1;
    
    wire n1298, n1297, n1296, n1295, n1294, n1293, n1292, n1291, 
        n1290, n1289, n1288, n1287, n1286, n1285, n1284, n1283, 
        n1282, n1281, n1280, n1279, n1278, n1277, n1276, n1275;
    
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_49 (.A0(\MixerOutSin_7__N_83[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1298), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_49.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_49.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_49.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_49.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_47 (.A0(phase_accum[61]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[62]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1297), .COUT(n1298), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_47.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_47.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_47.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[59]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[60]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1296), .COUT(n1297), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[57]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[58]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1295), .COUT(n1296), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[56]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1294), .COUT(n1295), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1293), .COUT(n1294), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1292), .COUT(n1293), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1291), .COUT(n1292), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1290), .COUT(n1291), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1289), .COUT(n1290), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1288), .COUT(n1289), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1287), .COUT(n1288), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1286), .COUT(n1287), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1285), .COUT(n1286), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1284), .COUT(n1285), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1283), .COUT(n1284), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1282), .COUT(n1283), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1281), .COUT(n1282), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_2_lut_rep_17 (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .Z(n1660)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(31[19:54])
    defparam phase_accum_63__I_0_2_lut_rep_17.init = 16'h9999;
    LUT4 i1281_2_lut_3_lut (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .C(RFInR), .Z(\MixerOutCos_7__N_75[2] )) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(31[19:54])
    defparam i1281_2_lut_3_lut.init = 16'h6969;
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1280), .COUT(n1281), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1279), .COUT(n1280), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1278), .COUT(n1279), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    FD1S3AX phase_accum_i18 (.D(phase_accum_63__N_1[18]), .CK(osc_clk), 
            .Q(phase_accum[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i18.GSR = "ENABLED";
    FD1S3AX phase_accum_i17 (.D(phase_accum_63__N_1[17]), .CK(osc_clk), 
            .Q(phase_accum[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i17.GSR = "ENABLED";
    FD1S3AX phase_accum_i16 (.D(phase_accum_63__N_1[16]), .CK(osc_clk), 
            .Q(phase_accum[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i16.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1277), .COUT(n1278), .S0(phase_accum_63__N_1[21]), 
          .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1276), .COUT(n1277), .S0(phase_accum_63__N_1[19]), 
          .S1(phase_accum_63__N_1[20]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1275), .COUT(n1276), .S0(phase_accum_63__N_1[17]), 
          .S1(phase_accum_63__N_1[18]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1275), .S1(phase_accum_63__N_1[16]));   // c:/users/user/lattice/fpgasdr/nco.v(41[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\MixerOutSin_7__N_83[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=50 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (osc_clk, i_Rx_Serial_c, o_Rx_DV_c_0, o_Rx_Byte_c_0, 
            o_Rx_Byte_c_1, o_Rx_Byte_c_2, o_Rx_Byte_c_3, GND_net, o_Rx_Byte_c_4, 
            o_Rx_Byte_c_5, o_Rx_Byte_c_6, o_Rx_Byte_c_7) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input i_Rx_Serial_c;
    output o_Rx_DV_c_0;
    output o_Rx_Byte_c_0;
    output o_Rx_Byte_c_1;
    output o_Rx_Byte_c_2;
    output o_Rx_Byte_c_3;
    input GND_net;
    output o_Rx_Byte_c_4;
    output o_Rx_Byte_c_5;
    output o_Rx_Byte_c_6;
    output o_Rx_Byte_c_7;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(15[8:15])
    
    wire n1216, n1473, n1658;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(44[17:26])
    
    wire o_Rx_DV_N_666, n1654, n1659;
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(41[17:28])
    
    wire n1621, n1624, r_Rx_Data, r_Rx_Data_R, n1653, osc_clk_enable_35;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(40[18:31])
    
    wire osc_clk_enable_155, n927;
    wire [15:0]n69;
    
    wire osc_clk_enable_131, osc_clk_enable_136, n1467, n1623, n1622, 
        n1502, osc_clk_enable_46, osc_clk_enable_32, n1656, n1167, 
        osc_clk_enable_50, n1655, n1226, osc_clk_enable_133, osc_clk_enable_49, 
        n1503, n1203, n1318, n1317, n1316, n1315, n1314, n1313, 
        n1312, n1311, osc_clk_enable_132, osc_clk_enable_134, n1367, 
        n8;
    wire [2:0]r_SM_Main_2__N_617;
    
    wire n6, n6_adj_746, n1532, n1536, n1534, n10, n1451, n6_adj_747;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(n1216), .B(n1473), .C(n1658), .D(r_SM_Main[0]), 
         .Z(o_Rx_DV_N_666)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 r_SM_Main_1__bdd_4_lut (.A(r_SM_Main[1]), .B(n1654), .C(n1659), 
         .D(r_Bit_Index[2]), .Z(n1621)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam r_SM_Main_1__bdd_4_lut.init = 16'h0220;
    FD1S3IX r_SM_Main_i0 (.D(n1624), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(osc_clk), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    LUT4 i1290_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n1653), .Z(osc_clk_enable_35)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1290_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3IX r_Clock_Count_240__i4 (.D(n69[4]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i4.GSR = "ENABLED";
    LUT4 i1314_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .D(n1653), .Z(osc_clk_enable_131)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1314_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_15 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .Z(n1658)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1_2_lut_rep_15.init = 16'h2222;
    FD1P3AX r_Bit_Index_i0 (.D(n1467), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(i_Rx_Serial_c), .CK(osc_clk), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    PFUMX i1342 (.BLUT(n1623), .ALUT(n1622), .C0(r_SM_Main[1]), .Z(n1624));
    LUT4 i1325_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n1502)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1325_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1322_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1653), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_46)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1322_3_lut_4_lut.init = 16'h0010;
    FD1P3IX r_Clock_Count_240__i3 (.D(n69[3]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i2 (.D(n69[2]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i2.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_666), .SP(osc_clk_enable_32), .CK(osc_clk), 
            .Q(o_Rx_DV_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i1 (.D(n69[1]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i1.GSR = "ENABLED";
    LUT4 i259_2_lut_rep_16 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n1659)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i259_2_lut_rep_16.init = 16'h8888;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(osc_clk_enable_35), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n1656), .CK(osc_clk), .CD(n1502), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n1167)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i1316_2_lut_2_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(n1653), .D(r_Bit_Index[2]), .Z(osc_clk_enable_50)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i1316_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut (.A(n1656), .B(r_SM_Main[0]), 
         .C(n1655), .D(r_SM_Main[1]), .Z(n1226)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    LUT4 i1308_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(r_Bit_Index[2]), .D(n1653), .Z(osc_clk_enable_133)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1308_2_lut_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i1319_2_lut_3_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), 
         .C(r_Bit_Index[2]), .D(n1653), .Z(osc_clk_enable_49)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1319_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i2_3_lut_rep_10_4_lut_4_lut (.A(n1656), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main[0]), .Z(n1653)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_10_4_lut_4_lut.init = 16'hfff7;
    LUT4 i1039_3_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n1503), 
         .Z(n1203)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1039_3_lut.init = 16'hc8c8;
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(osc_clk_enable_46), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    LUT4 i1331_3_lut_4_lut_4_lut (.A(n1656), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(osc_clk_enable_136)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i1331_3_lut_4_lut_4_lut.init = 16'h0203;
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(osc_clk_enable_49), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(osc_clk_enable_50), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i0 (.D(n69[0]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i0.GSR = "ENABLED";
    CCU2D r_Clock_Count_240_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1318), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_240_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1317), .COUT(n1318), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1316), .COUT(n1317), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1315), .COUT(n1316), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1314), .COUT(n1315), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1313), .COUT(n1314), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_240_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1312), .COUT(n1313), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n1467)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    FD1S3IX r_SM_Main_i1 (.D(n1226), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i508_2_lut_rep_11_2_lut_3_lut (.A(n1216), .B(n1473), .C(r_SM_Main[0]), 
         .Z(n1654)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i508_2_lut_rep_11_2_lut_3_lut.init = 16'hf1f1;
    LUT4 r_SM_Main_2__N_617_0__bdd_3_lut_1341_4_lut (.A(n1216), .B(n1473), 
         .C(r_SM_Main[0]), .D(n1167), .Z(n1622)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam r_SM_Main_2__N_617_0__bdd_3_lut_1341_4_lut.init = 16'h1e10;
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(osc_clk_enable_131), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    CCU2D r_Clock_Count_240_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1311), .COUT(n1312), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_240_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_3.INJECT1_1 = "NO";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(osc_clk_enable_132), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    CCU2D r_Clock_Count_240_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1311), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_240_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_240_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_240_add_4_1.INJECT1_1 = "NO";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(osc_clk_enable_133), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(osc_clk_enable_134), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_Clock_Count[7]), .B(n1367), .C(n8), .D(n1473), 
         .Z(r_SM_Main_2__N_617[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[6]), .C(r_Clock_Count[0]), 
         .Z(n1367)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i3_3_lut (.A(n1503), .B(r_Clock_Count[10]), .C(r_Clock_Count[8]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(r_Clock_Count[1]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(n6), .Z(n1503)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_2 (.A(r_Clock_Count[5]), .B(r_Clock_Count[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_2_lut_adj_2.init = 16'heeee;
    LUT4 i4_4_lut_adj_3 (.A(r_Clock_Count[11]), .B(r_Clock_Count[12]), .C(r_Clock_Count[14]), 
         .D(n6_adj_746), .Z(n1473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i4_4_lut_adj_3.init = 16'hfffe;
    LUT4 r_SM_Main_2__N_617_0__bdd_3_lut (.A(r_SM_Main_2__N_617[0]), .B(r_Rx_Data), 
         .C(r_SM_Main[0]), .Z(n1623)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam r_SM_Main_2__N_617_0__bdd_3_lut.init = 16'ha3a3;
    LUT4 i1_2_lut_adj_4 (.A(r_Clock_Count[13]), .B(r_Clock_Count[15]), .Z(n6_adj_746)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i1261_3_lut (.A(r_Clock_Count[14]), .B(n1532), .C(r_Clock_Count[12]), 
         .Z(n1536)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1261_3_lut.init = 16'hfefe;
    LUT4 i1257_4_lut (.A(n1216), .B(r_Clock_Count[15]), .C(r_Clock_Count[13]), 
         .D(r_Clock_Count[11]), .Z(n1532)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1257_4_lut.init = 16'hfffe;
    LUT4 i1259_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_617[0]), .C(r_SM_Main[0]), 
         .Z(n1534)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1259_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1052_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(n1203), 
         .D(r_Clock_Count[8]), .Z(n1216)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1052_4_lut.init = 16'hccc8;
    LUT4 i1253_2_lut_rep_12 (.A(r_Rx_Data), .B(r_SM_Main_2__N_617[0]), .Z(n1655)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1253_2_lut_rep_12.init = 16'heeee;
    LUT4 i3_4_lut (.A(n1656), .B(r_SM_Main[0]), .C(r_SM_Main[1]), .D(n10), 
         .Z(n1451)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_13 (.A(n1216), .B(n1473), .Z(n1656)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_2_lut_rep_13.init = 16'heeee;
    LUT4 i26_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(n1536), .Z(osc_clk_enable_32)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i26_4_lut.init = 16'h2505;
    FD1P3AX r_Bit_Index_i1 (.D(n1451), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1621), .SP(osc_clk_enable_136), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=88 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1328_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6_adj_747), 
         .D(r_SM_Main[0]), .Z(osc_clk_enable_155)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1328_4_lut.init = 16'h4555;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_617[0]), .Z(n6_adj_747)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_5 (.A(r_SM_Main[2]), .B(n1534), .C(n1656), .D(r_SM_Main[1]), 
         .Z(n927)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_5.init = 16'h5011;
    FD1P3IX r_Clock_Count_240__i15 (.D(n69[15]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i13 (.D(n69[13]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i13.GSR = "ENABLED";
    LUT4 i24_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    FD1P3IX r_Clock_Count_240__i14 (.D(n69[14]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i11 (.D(n69[11]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i12 (.D(n69[12]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i12.GSR = "ENABLED";
    LUT4 i1305_2_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1653), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(osc_clk_enable_134)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1305_2_lut_3_lut_4_lut.init = 16'h2000;
    FD1P3IX r_Clock_Count_240__i9 (.D(n69[9]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i10 (.D(n69[10]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i7 (.D(n69[7]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i8 (.D(n69[8]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i5 (.D(n69[5]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_240__i6 (.D(n69[6]), .SP(osc_clk_enable_155), 
            .CD(n927), .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_240__i6.GSR = "ENABLED";
    LUT4 i1311_2_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1653), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(osc_clk_enable_132)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1311_2_lut_3_lut_4_lut.init = 16'h0200;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

