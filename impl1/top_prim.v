// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Wed Nov 28 17:03:30 2018
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, MixerOutSin, 
            RFIn, PWMOut, sinGen, CIC_out_clk) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(2[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    output [7:0]MixerOutSin;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(10[15:26])
    input RFIn;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    output PWMOut;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(12[9:15])
    output sinGen;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:15])
    output CIC_out_clk;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:20])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Tx_Serial_c, o_Rx_Byte_c_7, 
        o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
        o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_Byte_c_0, MYLED_c_7, n1914, 
        MixerOutSin_c_7, RFIn_c, PWMOut_c, sinGen_c, CIC_out_clk_c;
    wire [7:0]MixerOutCos;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(23[12:23])
    wire [7:0]CIC_out;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(25[12:19])
    
    wire RFInR;
    wire [7:0]MixerOutSin_7__N_83;
    wire [7:0]MixerOutCos_7__N_75;
    
    wire o_Rx_DV_c_0;
    
    VHI i2 (.Z(VCC_net));
    uart_tx uart_tx1 (.osc_clk(osc_clk), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(103[34] 110[2])
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_DV_pad (.I(o_Rx_DV_c_0), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB MYLED_pad_7 (.I(MYLED_c_7), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(n1914), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
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
    OB sinGen_pad (.I(sinGen_c), .O(sinGen));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(13[9:15])
    OB CIC_out_clk_pad (.I(CIC_out_clk_c), .O(CIC_out_clk));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[9:20])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    IB RFIn_pad (.I(RFIn), .O(RFIn_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[9:13])
    TSALL TSALL_INST (.TSALL(GND_net));
    PWM PWM1 (.PWMOut_c(PWMOut_c), .osc_clk(osc_clk), .GND_net(GND_net), 
        .CIC_out({CIC_out})) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(82[5] 86[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CIC CIC1 (.osc_clk(osc_clk), .CIC_out_clk_c(CIC_out_clk_c), .CIC_out({CIC_out}), 
        .GND_net(GND_net), .\MixerOutCos[2] (MixerOutCos[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(73[20] 80[2])
    nco_sig_U0 nco (.GND_net(GND_net), .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), 
            .osc_clk(osc_clk), .n1914(n1914), .RFInR(RFInR), .\MixerOutCos_7__N_75[2] (MixerOutCos_7__N_75[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(49[10] 54[2])
    Mixer Mixer1 (.osc_clk(osc_clk), .RFIn_c(RFIn_c), .RFInR(RFInR), .MixerOutSin_c_7(MixerOutSin_c_7), 
          .\MixerOutCos[2] (MixerOutCos[2]), .\MixerOutCos_7__N_75[2] (MixerOutCos_7__N_75[2]), 
          .\MixerOutSin_7__N_83[7] (MixerOutSin_7__N_83[7]), .MYLED_c_7(MYLED_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(64[7] 71[2])
    uart_rx uart_rx1 (.osc_clk(osc_clk), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .i_Rx_Serial_c(i_Rx_Serial_c), .o_Rx_Byte_c_6(o_Rx_Byte_c_6), 
            .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .GND_net(GND_net), .o_Rx_DV_c_0(o_Rx_DV_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(95[34] 100[2])
    nco_sig ncoGen (.GND_net(GND_net), .osc_clk(osc_clk), .sinGen_c(sinGen_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(57[10] 62[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (osc_clk, o_Tx_Serial_c, o_Rx_Byte_c_0, o_Rx_DV_c_0, 
            o_Rx_Byte_c_1, o_Rx_Byte_c_2, o_Rx_Byte_c_3, o_Rx_Byte_c_4, 
            o_Rx_Byte_c_5, o_Rx_Byte_c_6, o_Rx_Byte_c_7, GND_net) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output o_Tx_Serial_c;
    input o_Rx_Byte_c_0;
    input o_Rx_DV_c_0;
    input o_Rx_Byte_c_1;
    input o_Rx_Byte_c_2;
    input o_Rx_Byte_c_3;
    input o_Rx_Byte_c_4;
    input o_Rx_Byte_c_5;
    input o_Rx_Byte_c_6;
    input o_Rx_Byte_c_7;
    input GND_net;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(31[16:25])
    
    wire n1629;
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(33[16:27])
    
    wire osc_clk_enable_636, n1753, osc_clk_enable_634, n3;
    wire [7:0]r_Tx_Data;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(34[16:25])
    
    wire osc_clk_enable_630;
    wire [2:0]r_SM_Main_2__N_2369;
    
    wire n4, n1747, n607, n606, n1911, n1907, n1752;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(32[17:30])
    
    wire n911;
    wire [15:0]n69;
    
    wire n1946;
    wire [15:0]n121;
    
    wire n3_adj_2663, n1606, n1605, n1604, n1603, n1602, n1601, 
        n1600, n1599, n10, n1151, n1945, n1942, n1943, n10_adj_2664, 
        n1161, o_Tx_Serial_N_2407, n1947, n1944;
    
    LUT4 i1281_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1629)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i1281_3_lut.init = 16'hbfbf;
    FD1P3AX r_Bit_Index_i0 (.D(n1753), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_44 (.D(n3), .SP(osc_clk_enable_634), .CK(osc_clk), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(o_Rx_Byte_c_0), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_2__N_2369[1]), .C(n4), 
         .D(r_SM_Main[0]), .Z(n1747)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut.init = 16'h0080;
    FD1S3IX r_SM_Main_i0 (.D(n607), .CK(osc_clk), .CD(r_SM_Main[2]), .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i434_3_lut (.A(n606), .B(r_SM_Main_2__N_2369[1]), .C(r_SM_Main[0]), 
         .Z(n607)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i434_3_lut.init = 16'h3a3a;
    LUT4 i433_4_lut (.A(o_Rx_DV_c_0), .B(n1911), .C(r_SM_Main[1]), .D(r_SM_Main_2__N_2369[1]), 
         .Z(n606)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i433_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut (.A(r_Bit_Index[0]), .B(n1907), .C(r_Bit_Index[1]), 
         .Z(n1752)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4848;
    FD1P3IX r_Clock_Count_239__i15 (.D(n69[15]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i14 (.D(n69[14]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i13 (.D(n69[13]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i12 (.D(n69[12]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i11 (.D(n69[11]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i10 (.D(n69[10]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i9 (.D(n69[9]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i8 (.D(n69[8]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i7 (.D(n69[7]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i6 (.D(n69[6]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i6.GSR = "ENABLED";
    LUT4 r_Tx_Data_0__bdd_3_lut_1320 (.A(r_Tx_Data[0]), .B(r_Tx_Data[2]), 
         .C(r_Bit_Index[1]), .Z(n1946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1320.init = 16'hcaca;
    FD1P3IX r_Clock_Count_239__i5 (.D(n69[5]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i0 (.D(n69[0]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i0.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(o_Rx_Byte_c_1), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(o_Rx_Byte_c_2), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(o_Rx_Byte_c_3), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(o_Rx_Byte_c_4), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(o_Rx_Byte_c_5), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(o_Rx_Byte_c_6), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(o_Rx_Byte_c_7), .SP(osc_clk_enable_630), .CK(osc_clk), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_2663), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    CCU2D r_Clock_Count_239_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1606), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_239_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1605), .COUT(n1606), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1604), .COUT(n1605), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1603), .COUT(n1604), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1602), .COUT(n1603), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1601), .COUT(n1602), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1600), .COUT(n1601), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1599), .COUT(n1600), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_239_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_239_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1599), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_239_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_239_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_239_add_4_1.INJECT1_1 = "NO";
    LUT4 i980_4_lut (.A(r_Clock_Count[2]), .B(r_Clock_Count[7]), .C(n10), 
         .D(r_Clock_Count[5]), .Z(n1151)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i980_4_lut.init = 16'hccc8;
    FD1P3IX r_Clock_Count_239__i4 (.D(n69[4]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i4.GSR = "ENABLED";
    LUT4 r_Tx_Data_0__bdd_3_lut_1315 (.A(r_Tx_Data[3]), .B(r_Tx_Data[1]), 
         .C(r_Bit_Index[1]), .Z(n1945)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1315.init = 16'hacac;
    LUT4 i4_4_lut (.A(r_Clock_Count[1]), .B(r_Clock_Count[4]), .C(r_Clock_Count[3]), 
         .D(r_Clock_Count[6]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 r_Tx_Data_5__bdd_3_lut_1312 (.A(r_Tx_Data[5]), .B(r_Tx_Data[7]), 
         .C(r_Bit_Index[1]), .Z(n1942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut_1312.init = 16'hcaca;
    LUT4 r_Tx_Data_5__bdd_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[6]), .C(r_Bit_Index[1]), 
         .Z(n1943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut.init = 16'hcaca;
    FD1P3IX r_Clock_Count_239__i3 (.D(n69[3]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_239__i2 (.D(n69[2]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i2.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_17_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n1911)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i2_2_lut_rep_17_3_lut.init = 16'h8080;
    FD1P3IX r_Clock_Count_239__i1 (.D(n69[1]), .SP(osc_clk_enable_634), 
            .CD(n911), .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_239__i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_2369[1]), .CK(osc_clk), .CD(n1629), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_2_lut_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i1_3_lut_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_2369[1]), .Z(osc_clk_enable_636)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_3_lut_rep_13 (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_2369[1]), 
         .Z(n1907)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_rep_13.init = 16'h4040;
    LUT4 i1_2_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_2369[1]), 
         .D(r_Bit_Index[0]), .Z(n1753)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0040;
    LUT4 i2_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(o_Rx_DV_c_0), .Z(osc_clk_enable_630)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i1284_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_2369[1]), .C(r_SM_Main[1]), 
         .D(r_SM_Main[0]), .Z(n911)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i1284_4_lut.init = 16'h4445;
    LUT4 i5_3_lut (.A(r_Clock_Count[11]), .B(n10_adj_2664), .C(r_Clock_Count[14]), 
         .Z(r_SM_Main_2__N_2369[1])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_1_lut (.A(r_SM_Main[2]), .Z(osc_clk_enable_634)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i4_4_lut_adj_6 (.A(n1161), .B(r_Clock_Count[13]), .C(r_Clock_Count[12]), 
         .D(r_Clock_Count[15]), .Z(n10_adj_2664)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_6.init = 16'hfffe;
    LUT4 r_SM_Main_2__I_0_55_i3_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_2407), 
         .C(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam r_SM_Main_2__I_0_55_i3_3_lut.init = 16'he5e5;
    LUT4 i551_3_lut (.A(r_SM_Main_2__N_2369[1]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n3_adj_2663)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i551_3_lut.init = 16'h6c6c;
    PFUMX i1316 (.BLUT(n1946), .ALUT(n1945), .C0(r_Bit_Index[0]), .Z(n1947));
    LUT4 i990_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(n1151), 
         .D(r_Clock_Count[8]), .Z(n1161)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i990_4_lut.init = 16'hccc8;
    L6MUX21 i1318 (.D0(n1947), .D1(n1944), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_2407));
    PFUMX i1313 (.BLUT(n1943), .ALUT(n1942), .C0(r_Bit_Index[0]), .Z(n1944));
    FD1P3AX r_Bit_Index_i2 (.D(n1747), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1752), .SP(osc_clk_enable_636), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=103, LSE_RLINE=110 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PWM
//

module PWM (PWMOut_c, osc_clk, GND_net, CIC_out) /* synthesis syn_module_defined=1 */ ;
    output PWMOut_c;
    input osc_clk;
    input GND_net;
    input [7:0]CIC_out;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    
    wire PWMOut_N_2244;
    wire [7:0]counter;   // c:/users/user/lattice/fpgasdr/pwm.v(7[11:18])
    wire [7:0]n37;
    
    wire n1618, n1617, n1616, n1615, n1598, n359, n1597, n1596, 
        n1595;
    
    FD1S3AX PWMOut_9 (.D(PWMOut_N_2244), .CK(osc_clk), .Q(PWMOut_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=82, LSE_RLINE=86 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(10[8] 17[5])
    defparam PWMOut_9.GSR = "ENABLED";
    FD1S3AX counter_235__i0 (.D(n37[0]), .CK(osc_clk), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i0.GSR = "ENABLED";
    CCU2D counter_235_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1618), .S0(n37[7]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_235_add_4_9.INIT1 = 16'h0000;
    defparam counter_235_add_4_9.INJECT1_0 = "NO";
    defparam counter_235_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_235_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1617), .COUT(n1618), .S0(n37[5]), .S1(n37[6]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_235_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_235_add_4_7.INJECT1_0 = "NO";
    defparam counter_235_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_235_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1616), .COUT(n1617), .S0(n37[3]), .S1(n37[4]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_235_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_235_add_4_5.INJECT1_0 = "NO";
    defparam counter_235_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_235_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1615), .COUT(n1616), .S0(n37[1]), .S1(n37[2]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_235_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_235_add_4_3.INJECT1_0 = "NO";
    defparam counter_235_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1615), .S1(n37[0]));   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235_add_4_1.INIT0 = 16'hF000;
    defparam counter_235_add_4_1.INIT1 = 16'h0555;
    defparam counter_235_add_4_1.INJECT1_0 = "NO";
    defparam counter_235_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_9 (.A0(CIC_out[7]), .B0(counter[7]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1598), .S1(n359));
    defparam sub_199_add_2_9.INIT0 = 16'h5999;
    defparam sub_199_add_2_9.INIT1 = 16'h0000;
    defparam sub_199_add_2_9.INJECT1_0 = "NO";
    defparam sub_199_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_7 (.A0(CIC_out[5]), .B0(counter[5]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[6]), .B1(counter[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1597), .COUT(n1598));
    defparam sub_199_add_2_7.INIT0 = 16'h5999;
    defparam sub_199_add_2_7.INIT1 = 16'h5999;
    defparam sub_199_add_2_7.INJECT1_0 = "NO";
    defparam sub_199_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_5 (.A0(CIC_out[3]), .B0(counter[3]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[4]), .B1(counter[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1596), .COUT(n1597));
    defparam sub_199_add_2_5.INIT0 = 16'h5999;
    defparam sub_199_add_2_5.INIT1 = 16'h5999;
    defparam sub_199_add_2_5.INJECT1_0 = "NO";
    defparam sub_199_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_3 (.A0(CIC_out[1]), .B0(counter[1]), .C0(GND_net), 
          .D0(GND_net), .A1(CIC_out[2]), .B1(counter[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1595), .COUT(n1596));
    defparam sub_199_add_2_3.INIT0 = 16'h5999;
    defparam sub_199_add_2_3.INIT1 = 16'h5999;
    defparam sub_199_add_2_3.INJECT1_0 = "NO";
    defparam sub_199_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(CIC_out[0]), .B1(counter[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1595));
    defparam sub_199_add_2_1.INIT0 = 16'h0000;
    defparam sub_199_add_2_1.INIT1 = 16'h5999;
    defparam sub_199_add_2_1.INJECT1_0 = "NO";
    defparam sub_199_add_2_1.INJECT1_1 = "NO";
    LUT4 i201_1_lut (.A(n359), .Z(PWMOut_N_2244)) /* synthesis lut_function=(!(A)) */ ;
    defparam i201_1_lut.init = 16'h5555;
    FD1S3AX counter_235__i1 (.D(n37[1]), .CK(osc_clk), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i1.GSR = "ENABLED";
    FD1S3AX counter_235__i2 (.D(n37[2]), .CK(osc_clk), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i2.GSR = "ENABLED";
    FD1S3AX counter_235__i3 (.D(n37[3]), .CK(osc_clk), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i3.GSR = "ENABLED";
    FD1S3AX counter_235__i4 (.D(n37[4]), .CK(osc_clk), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i4.GSR = "ENABLED";
    FD1S3AX counter_235__i5 (.D(n37[5]), .CK(osc_clk), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i5.GSR = "ENABLED";
    FD1S3AX counter_235__i6 (.D(n37[6]), .CK(osc_clk), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i6.GSR = "ENABLED";
    FD1S3AX counter_235__i7 (.D(n37[7]), .CK(osc_clk), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/pwm.v(12[14:29])
    defparam counter_235__i7.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module CIC
//

module CIC (osc_clk, CIC_out_clk_c, CIC_out, GND_net, \MixerOutCos[2] ) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output CIC_out_clk_c;
    output [7:0]CIC_out;
    input GND_net;
    input \MixerOutCos[2] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    wire [15:0]count;   // c:/users/user/lattice/fpgasdr/cic.v(31[12:17])
    
    wire n18, n20, n16;
    wire [63:0]d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[24:26])
    
    wire osc_clk_enable_71;
    wire [63:0]n1;
    wire [63:0]d2;   // c:/users/user/lattice/fpgasdr/cic.v(18[24:26])
    wire [63:0]d2_63__N_1229;
    wire [63:0]d3;   // c:/users/user/lattice/fpgasdr/cic.v(19[24:26])
    wire [63:0]d3_63__N_1293;
    wire [63:0]d4;   // c:/users/user/lattice/fpgasdr/cic.v(20[24:26])
    wire [63:0]d4_63__N_1357;
    wire [63:0]d5;   // c:/users/user/lattice/fpgasdr/cic.v(21[24:26])
    wire [63:0]d5_63__N_1421;
    wire [63:0]d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[24:29])
    
    wire osc_clk_enable_138;
    wire [63:0]d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[24:26])
    wire [63:0]n2;
    
    wire d_clk_tmp, n867, v_comb;
    wire [63:0]d1;   // c:/users/user/lattice/fpgasdr/cic.v(17[24:26])
    
    wire n19, n17, n18_adj_2416;
    wire [63:0]d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[24:26])
    wire [63:0]n3;
    wire [63:0]d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[24:26])
    wire [63:0]n4;
    wire [63:0]d_d6;   // c:/users/user/lattice/fpgasdr/cic.v(25[28:32])
    wire [63:0]d_d7;   // c:/users/user/lattice/fpgasdr/cic.v(26[28:32])
    wire [63:0]d_d8;   // c:/users/user/lattice/fpgasdr/cic.v(27[28:32])
    wire [63:0]d_d9;   // c:/users/user/lattice/fpgasdr/cic.v(28[28:32])
    wire [63:0]d10;   // c:/users/user/lattice/fpgasdr/cic.v(29[24:27])
    wire [63:0]d_d_tmp;   // c:/users/user/lattice/fpgasdr/cic.v(12[31:38])
    wire [63:0]d1_63__N_1165;
    wire [63:0]n5;
    
    wire n1228, n1229, n1230, n1231, n1232, n1227, n1233, n1234;
    wire [10:0]n49;
    
    wire osc_clk_enable_164, osc_clk_enable_314, osc_clk_enable_264, n1237, 
        n1238, d_clk_tmp_N_2233, osc_clk_enable_214, osc_clk_enable_364, 
        osc_clk_enable_414, osc_clk_enable_464, osc_clk_enable_514, osc_clk_enable_564, 
        osc_clk_enable_614, n1258, n1257, n1623, n1622, n1621, n1620, 
        n1619, n1593, n1592, n1591, n1590, n1589, n1588, n1587, 
        n1586, n1585, n1584, n1583, n1582, n1581, n1580, n1579, 
        n1578, n1577, n1576, n1575, n1574, n1573, n1572, n1571, 
        n1570, n1569, n1568, n1567, n1566, n1565, n1564, n1563, 
        n1560, n1559, n1558, n1557, n1556, n1555, n1554, n1553, 
        n1552, n1551, n1550, n1549, n1548, n1547, n1546, n1545, 
        n1544, n1543, n1542, n1541, n1540, n1539, n1538, n1537, 
        n1536, n1535, n1534, n1533, n1532, n1531, n1530, n1527, 
        n1526, n1525, n1524, n1523, n1522, n1521, n1520, n1519, 
        n1518, n1517, n1516, n1515, n1514, n1513, n1512, n1511, 
        n1510, n1509, n1508, n1507, n1506, n1505, n1504, n1503, 
        n1502, n1501, n1500, n1499, n1498, n1497, n1494, n1493, 
        n1492, n1491, n1490, n1489, n1488, n1487, n1486, n1485, 
        n1484, n1483, n1482, n1481, n1480, n1479, n1478, n1477, 
        n1476, n1475, n1474, n1473, n1472, n1471, n1470, n1469, 
        n1468, n1467, n1466, n1465, n1464, n1462, n1461, n1460, 
        n1459, n1458, n1457, n1456, n1455, n1454, n1453, n1452, 
        n1451, n1450, n1449, n1448, n1447, n1446, n1445, n1444, 
        n1443, n1442, n1441, n1440, n1439, n1438, n1437, n1436, 
        n1435, n1434, n1433, n1432, n1431, n1430, n1429, n1428, 
        n1427, n1426, n1425, n1424, n1423, n1422, n1421, n1420, 
        n1419, n1418, n1417, n1416, n1415, n1414, n1413, n1412, 
        n1411, n1410, n1409, n1408, n1407, n1406, n1405, n1404, 
        n1403, n1402, n1401, n1400, n1399, n1398, n1397, n1396, 
        n1395, n1394, n1393, n1392, n1391, n1390, n1389, n1388, 
        n1387, n1386, n1385, n1384, n1383, n1382, n1381, n1380, 
        n1379, n1378, n1377, n1376, n1375, n1374, n1373, n1372, 
        n1371, n1370, n1369, n1368, n1367, n1366, n1365, n1364, 
        n1363, n1362, n1361, n1360, n1359, n1358, n1357, n1356, 
        n1355, n1354, n1353, n1352, n1351, n1350, n1349, n1348, 
        n1347, n1346, n1345, n1344, n1343, n1342, n1341, n1340, 
        n1339, n1338, n1337, n1336, n1335, n1334, n1333, n1332, 
        n1331, n1330, n1329, n1328, n1327, n1326, n1325, n1324, 
        n1323, n1322, n1321, n1320, n1319, n1318, n1317, n1316, 
        n1315, n1314, n1313, n1312, n1311, n1310, n1309, n1308, 
        n1307, n1306, n1305, n1304, n1303, n1242, n1243, n1245, 
        n1246, n1247, n1248, n1244, n1256, n1255, n1241, n1240, 
        n1239, n1236, n1235, n1254, n1253, n1252, n1251, n1250, 
        n1249;
    
    LUT4 i9_4_lut (.A(count[1]), .B(n18), .C(count[10]), .D(count[8]), 
         .Z(n20)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i5_2_lut (.A(count[2]), .B(count[5]), .Z(n16)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i7_4_lut (.A(count[7]), .B(count[6]), .C(count[3]), .D(count[0]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    FD1P3AX d6_i0_i0 (.D(n1[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i0.GSR = "ENABLED";
    FD1S3AX d2_i0 (.D(d2_63__N_1229[0]), .CK(osc_clk), .Q(d2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i0.GSR = "ENABLED";
    FD1S3AX d3_i0 (.D(d3_63__N_1293[0]), .CK(osc_clk), .Q(d3[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i0.GSR = "ENABLED";
    FD1S3AX d4_i0 (.D(d4_63__N_1357[0]), .CK(osc_clk), .Q(d4[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i0.GSR = "ENABLED";
    FD1S3AX d5_i0 (.D(d5_63__N_1421[0]), .CK(osc_clk), .Q(d5[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i0.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i0 (.D(d5[0]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i0.GSR = "ENABLED";
    FD1P3AX d7_i0_i0 (.D(n2[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i0.GSR = "ENABLED";
    FD1S3JX d_clk_tmp_83 (.D(n867), .CK(osc_clk), .PD(osc_clk_enable_138), 
            .Q(d_clk_tmp)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_clk_tmp_83.GSR = "ENABLED";
    FD1S3AX v_comb_84 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(v_comb)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84.GSR = "ENABLED";
    FD1S3AX d_clk_85 (.D(d_clk_tmp), .CK(osc_clk), .Q(CIC_out_clk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_clk_85.GSR = "ENABLED";
    FD1P3AX d6_i0_i63 (.D(n1[63]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d6_i0_i62 (.D(n1[62]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i62.GSR = "ENABLED";
    LUT4 i1060_2_lut (.A(d1[0]), .B(d2[0]), .Z(d2_63__N_1229[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1060_2_lut.init = 16'h6666;
    LUT4 i694_4_lut (.A(n19), .B(d_clk_tmp), .C(n17), .D(n18_adj_2416), 
         .Z(n867)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam i694_4_lut.init = 16'hccc8;
    FD1P3AX d8_i0_i0 (.D(n3[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d9_i0_i0 (.D(n4[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i0 (.D(d6[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d_d6[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i0 (.D(d7[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d_d7[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i0 (.D(d8[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d_d8[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i0 (.D(d9[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d_d9[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i0.GSR = "ENABLED";
    FD1P3AX d_out_i0_i0 (.D(d10[1]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(CIC_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i0.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i0 (.D(d_tmp[0]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d_d_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i0.GSR = "ENABLED";
    FD1S3AX d1_i0 (.D(d1_63__N_1165[0]), .CK(osc_clk), .Q(d1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i0.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(count[4]), .B(count[1]), .C(count[8]), .D(count[5]), 
         .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_3_lut (.A(count[6]), .B(count[3]), .C(count[10]), .Z(n17)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i6_3_lut.init = 16'hefef;
    LUT4 i7_4_lut_adj_5 (.A(count[7]), .B(count[2]), .C(count[9]), .D(count[0]), 
         .Z(n18_adj_2416)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/cic.v(69[17:47])
    defparam i7_4_lut_adj_5.init = 16'hfffe;
    FD1P3AX d6_i0_i61 (.D(n1[61]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d10__0__i1 (.D(n5[1]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d10[1]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i1.GSR = "ENABLED";
    CCU2D sub_38_add_2_5 (.A0(d7[3]), .B0(d_d7[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[4]), .B1(d_d7[4]), .C1(GND_net), .D1(GND_net), .CIN(n1228), 
          .COUT(n1229), .S0(n3[3]), .S1(n3[4]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_5.INIT0 = 16'h5999;
    defparam sub_38_add_2_5.INIT1 = 16'h5999;
    defparam sub_38_add_2_5.INJECT1_0 = "NO";
    defparam sub_38_add_2_5.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i60 (.D(n1[60]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d6_i0_i59 (.D(n1[59]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d6_i0_i58 (.D(n1[58]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d6_i0_i57 (.D(n1[57]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d6_i0_i56 (.D(n1[56]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d6_i0_i55 (.D(n1[55]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d6_i0_i54 (.D(n1[54]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d6_i0_i53 (.D(n1[53]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d6_i0_i52 (.D(n1[52]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d6_i0_i51 (.D(n1[51]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d6_i0_i50 (.D(n1[50]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d6_i0_i49 (.D(n1[49]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d6_i0_i48 (.D(n1[48]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d6_i0_i47 (.D(n1[47]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i47.GSR = "ENABLED";
    CCU2D sub_38_add_2_9 (.A0(d7[7]), .B0(d_d7[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[8]), .B1(d_d7[8]), .C1(GND_net), .D1(GND_net), .CIN(n1230), 
          .COUT(n1231), .S0(n3[7]), .S1(n3[8]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_9.INIT0 = 16'h5999;
    defparam sub_38_add_2_9.INIT1 = 16'h5999;
    defparam sub_38_add_2_9.INJECT1_0 = "NO";
    defparam sub_38_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_11 (.A0(d7[9]), .B0(d_d7[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[10]), .B1(d_d7[10]), .C1(GND_net), .D1(GND_net), .CIN(n1231), 
          .COUT(n1232), .S0(n3[9]), .S1(n3[10]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_11.INIT0 = 16'h5999;
    defparam sub_38_add_2_11.INIT1 = 16'h5999;
    defparam sub_38_add_2_11.INJECT1_0 = "NO";
    defparam sub_38_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_3 (.A0(d7[1]), .B0(d_d7[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[2]), .B1(d_d7[2]), .C1(GND_net), .D1(GND_net), .CIN(n1227), 
          .COUT(n1228), .S0(n3[1]), .S1(n3[2]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_3.INIT0 = 16'h5999;
    defparam sub_38_add_2_3.INIT1 = 16'h5999;
    defparam sub_38_add_2_3.INJECT1_0 = "NO";
    defparam sub_38_add_2_3.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i46 (.D(n1[46]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d6_i0_i45 (.D(n1[45]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d6_i0_i44 (.D(n1[44]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i44.GSR = "ENABLED";
    CCU2D sub_38_add_2_13 (.A0(d7[11]), .B0(d_d7[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[12]), .B1(d_d7[12]), .C1(GND_net), .D1(GND_net), .CIN(n1232), 
          .COUT(n1233), .S0(n3[11]), .S1(n3[12]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_13.INIT0 = 16'h5999;
    defparam sub_38_add_2_13.INIT1 = 16'h5999;
    defparam sub_38_add_2_13.INJECT1_0 = "NO";
    defparam sub_38_add_2_13.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i43 (.D(n1[43]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d6_i0_i42 (.D(n1[42]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d6_i0_i41 (.D(n1[41]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d6_i0_i40 (.D(n1[40]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i40.GSR = "ENABLED";
    CCU2D sub_38_add_2_15 (.A0(d7[13]), .B0(d_d7[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[14]), .B1(d_d7[14]), .C1(GND_net), .D1(GND_net), .CIN(n1233), 
          .COUT(n1234), .S0(n3[13]), .S1(n3[14]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_15.INIT0 = 16'h5999;
    defparam sub_38_add_2_15.INIT1 = 16'h5999;
    defparam sub_38_add_2_15.INJECT1_0 = "NO";
    defparam sub_38_add_2_15.INJECT1_1 = "NO";
    FD1P3AX d6_i0_i39 (.D(n1[39]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d6_i0_i38 (.D(n1[38]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d6_i0_i37 (.D(n1[37]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d6_i0_i36 (.D(n1[36]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d6_i0_i35 (.D(n1[35]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d6_i0_i34 (.D(n1[34]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d6_i0_i33 (.D(n1[33]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d6_i0_i32 (.D(n1[32]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d6_i0_i31 (.D(n1[31]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d6_i0_i30 (.D(n1[30]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i30.GSR = "ENABLED";
    FD1S3IX count_233_234__i1 (.D(n49[0]), .CK(osc_clk), .CD(osc_clk_enable_138), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i1.GSR = "ENABLED";
    FD1P3AX d6_i0_i29 (.D(n1[29]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d6_i0_i28 (.D(n1[28]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d6_i0_i27 (.D(n1[27]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d6_i0_i26 (.D(n1[26]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d6_i0_i25 (.D(n1[25]), .SP(osc_clk_enable_71), .CK(osc_clk), 
            .Q(d6[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d6_i0_i24 (.D(n1[24]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d6_i0_i23 (.D(n1[23]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d6_i0_i22 (.D(n1[22]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d6_i0_i21 (.D(n1[21]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d6_i0_i20 (.D(n1[20]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d6_i0_i19 (.D(n1[19]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d6_i0_i18 (.D(n1[18]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d6_i0_i17 (.D(n1[17]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d6_i0_i16 (.D(n1[16]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d6_i0_i15 (.D(n1[15]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d6_i0_i14 (.D(n1[14]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d6_i0_i13 (.D(n1[13]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d6_i0_i12 (.D(n1[12]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d6_i0_i11 (.D(n1[11]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d6_i0_i10 (.D(n1[10]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d6_i0_i9 (.D(n1[9]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d6_i0_i8 (.D(n1[8]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d6_i0_i7 (.D(n1[7]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d6_i0_i6 (.D(n1[6]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d6_i0_i5 (.D(n1[5]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d6_i0_i4 (.D(n1[4]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d6_i0_i3 (.D(n1[3]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d6_i0_i2 (.D(n1[2]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d6_i0_i1 (.D(n1[1]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d6_i0_i1.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_26 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_314)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_26.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_25 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_264)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_25.GSR = "ENABLED";
    FD1S3AX d2_i1 (.D(d2_63__N_1229[1]), .CK(osc_clk), .Q(d2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i1.GSR = "ENABLED";
    CCU2D sub_38_add_2_23 (.A0(d7[21]), .B0(d_d7[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[22]), .B1(d_d7[22]), .C1(GND_net), .D1(GND_net), .CIN(n1237), 
          .COUT(n1238), .S0(n3[21]), .S1(n3[22]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_23.INIT0 = 16'h5999;
    defparam sub_38_add_2_23.INIT1 = 16'h5999;
    defparam sub_38_add_2_23.INJECT1_0 = "NO";
    defparam sub_38_add_2_23.INJECT1_1 = "NO";
    LUT4 i1061_2_lut (.A(d2[0]), .B(d3[0]), .Z(d3_63__N_1293[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1061_2_lut.init = 16'h6666;
    FD1S3AX d2_i2 (.D(d2_63__N_1229[2]), .CK(osc_clk), .Q(d2[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i2.GSR = "ENABLED";
    FD1S3AX d2_i3 (.D(d2_63__N_1229[3]), .CK(osc_clk), .Q(d2[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i3.GSR = "ENABLED";
    FD1S3AX d2_i4 (.D(d2_63__N_1229[4]), .CK(osc_clk), .Q(d2[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i4.GSR = "ENABLED";
    FD1S3AX d2_i5 (.D(d2_63__N_1229[5]), .CK(osc_clk), .Q(d2[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i5.GSR = "ENABLED";
    FD1S3AX d2_i6 (.D(d2_63__N_1229[6]), .CK(osc_clk), .Q(d2[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i6.GSR = "ENABLED";
    FD1S3AX d2_i7 (.D(d2_63__N_1229[7]), .CK(osc_clk), .Q(d2[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i7.GSR = "ENABLED";
    FD1S3AX d2_i8 (.D(d2_63__N_1229[8]), .CK(osc_clk), .Q(d2[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i8.GSR = "ENABLED";
    FD1S3AX d2_i9 (.D(d2_63__N_1229[9]), .CK(osc_clk), .Q(d2[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i9.GSR = "ENABLED";
    FD1S3AX d2_i10 (.D(d2_63__N_1229[10]), .CK(osc_clk), .Q(d2[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i10.GSR = "ENABLED";
    FD1S3AX d2_i11 (.D(d2_63__N_1229[11]), .CK(osc_clk), .Q(d2[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i11.GSR = "ENABLED";
    FD1S3AX d2_i12 (.D(d2_63__N_1229[12]), .CK(osc_clk), .Q(d2[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i12.GSR = "ENABLED";
    FD1S3AX d2_i13 (.D(d2_63__N_1229[13]), .CK(osc_clk), .Q(d2[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i13.GSR = "ENABLED";
    FD1S3AX d2_i14 (.D(d2_63__N_1229[14]), .CK(osc_clk), .Q(d2[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i14.GSR = "ENABLED";
    FD1S3AX d2_i15 (.D(d2_63__N_1229[15]), .CK(osc_clk), .Q(d2[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i15.GSR = "ENABLED";
    FD1S3AX d2_i16 (.D(d2_63__N_1229[16]), .CK(osc_clk), .Q(d2[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i16.GSR = "ENABLED";
    FD1S3AX d2_i17 (.D(d2_63__N_1229[17]), .CK(osc_clk), .Q(d2[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i17.GSR = "ENABLED";
    FD1S3AX d2_i18 (.D(d2_63__N_1229[18]), .CK(osc_clk), .Q(d2[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i18.GSR = "ENABLED";
    FD1S3AX d2_i19 (.D(d2_63__N_1229[19]), .CK(osc_clk), .Q(d2[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i19.GSR = "ENABLED";
    FD1S3AX d2_i20 (.D(d2_63__N_1229[20]), .CK(osc_clk), .Q(d2[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i20.GSR = "ENABLED";
    FD1S3AX d2_i21 (.D(d2_63__N_1229[21]), .CK(osc_clk), .Q(d2[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i21.GSR = "ENABLED";
    FD1S3AX d2_i22 (.D(d2_63__N_1229[22]), .CK(osc_clk), .Q(d2[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i22.GSR = "ENABLED";
    FD1S3AX d2_i23 (.D(d2_63__N_1229[23]), .CK(osc_clk), .Q(d2[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i23.GSR = "ENABLED";
    FD1S3AX d2_i24 (.D(d2_63__N_1229[24]), .CK(osc_clk), .Q(d2[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i24.GSR = "ENABLED";
    FD1S3AX d2_i25 (.D(d2_63__N_1229[25]), .CK(osc_clk), .Q(d2[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i25.GSR = "ENABLED";
    FD1S3AX d2_i26 (.D(d2_63__N_1229[26]), .CK(osc_clk), .Q(d2[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i26.GSR = "ENABLED";
    FD1S3AX d2_i27 (.D(d2_63__N_1229[27]), .CK(osc_clk), .Q(d2[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i27.GSR = "ENABLED";
    FD1S3AX d2_i28 (.D(d2_63__N_1229[28]), .CK(osc_clk), .Q(d2[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i28.GSR = "ENABLED";
    FD1S3AX d2_i29 (.D(d2_63__N_1229[29]), .CK(osc_clk), .Q(d2[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i29.GSR = "ENABLED";
    FD1S3AX d2_i30 (.D(d2_63__N_1229[30]), .CK(osc_clk), .Q(d2[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i30.GSR = "ENABLED";
    FD1S3AX d2_i31 (.D(d2_63__N_1229[31]), .CK(osc_clk), .Q(d2[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i31.GSR = "ENABLED";
    FD1S3AX d2_i32 (.D(d2_63__N_1229[32]), .CK(osc_clk), .Q(d2[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i32.GSR = "ENABLED";
    FD1S3AX d2_i33 (.D(d2_63__N_1229[33]), .CK(osc_clk), .Q(d2[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i33.GSR = "ENABLED";
    FD1S3AX d2_i34 (.D(d2_63__N_1229[34]), .CK(osc_clk), .Q(d2[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i34.GSR = "ENABLED";
    FD1S3AX d2_i35 (.D(d2_63__N_1229[35]), .CK(osc_clk), .Q(d2[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i35.GSR = "ENABLED";
    FD1S3AX d2_i36 (.D(d2_63__N_1229[36]), .CK(osc_clk), .Q(d2[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i36.GSR = "ENABLED";
    FD1S3AX d2_i37 (.D(d2_63__N_1229[37]), .CK(osc_clk), .Q(d2[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i37.GSR = "ENABLED";
    FD1S3AX d2_i38 (.D(d2_63__N_1229[38]), .CK(osc_clk), .Q(d2[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i38.GSR = "ENABLED";
    FD1S3AX d2_i39 (.D(d2_63__N_1229[39]), .CK(osc_clk), .Q(d2[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i39.GSR = "ENABLED";
    FD1S3AX d2_i40 (.D(d2_63__N_1229[40]), .CK(osc_clk), .Q(d2[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i40.GSR = "ENABLED";
    FD1S3AX d2_i41 (.D(d2_63__N_1229[41]), .CK(osc_clk), .Q(d2[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i41.GSR = "ENABLED";
    FD1S3AX d2_i42 (.D(d2_63__N_1229[42]), .CK(osc_clk), .Q(d2[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i42.GSR = "ENABLED";
    FD1S3AX d2_i43 (.D(d2_63__N_1229[43]), .CK(osc_clk), .Q(d2[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i43.GSR = "ENABLED";
    FD1S3AX d2_i44 (.D(d2_63__N_1229[44]), .CK(osc_clk), .Q(d2[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i44.GSR = "ENABLED";
    FD1S3AX d2_i45 (.D(d2_63__N_1229[45]), .CK(osc_clk), .Q(d2[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i45.GSR = "ENABLED";
    FD1S3AX d2_i46 (.D(d2_63__N_1229[46]), .CK(osc_clk), .Q(d2[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i46.GSR = "ENABLED";
    FD1S3AX d2_i47 (.D(d2_63__N_1229[47]), .CK(osc_clk), .Q(d2[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i47.GSR = "ENABLED";
    FD1S3AX d2_i48 (.D(d2_63__N_1229[48]), .CK(osc_clk), .Q(d2[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i48.GSR = "ENABLED";
    FD1S3AX d2_i49 (.D(d2_63__N_1229[49]), .CK(osc_clk), .Q(d2[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i49.GSR = "ENABLED";
    FD1S3AX d2_i50 (.D(d2_63__N_1229[50]), .CK(osc_clk), .Q(d2[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i50.GSR = "ENABLED";
    FD1S3AX d2_i51 (.D(d2_63__N_1229[51]), .CK(osc_clk), .Q(d2[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i51.GSR = "ENABLED";
    FD1S3AX d2_i52 (.D(d2_63__N_1229[52]), .CK(osc_clk), .Q(d2[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i52.GSR = "ENABLED";
    FD1S3AX d2_i53 (.D(d2_63__N_1229[53]), .CK(osc_clk), .Q(d2[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i53.GSR = "ENABLED";
    FD1S3AX d2_i54 (.D(d2_63__N_1229[54]), .CK(osc_clk), .Q(d2[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i54.GSR = "ENABLED";
    FD1S3AX d2_i55 (.D(d2_63__N_1229[55]), .CK(osc_clk), .Q(d2[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i55.GSR = "ENABLED";
    FD1S3AX d2_i56 (.D(d2_63__N_1229[56]), .CK(osc_clk), .Q(d2[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i56.GSR = "ENABLED";
    FD1S3AX d2_i57 (.D(d2_63__N_1229[57]), .CK(osc_clk), .Q(d2[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i57.GSR = "ENABLED";
    FD1S3AX d2_i58 (.D(d2_63__N_1229[58]), .CK(osc_clk), .Q(d2[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i58.GSR = "ENABLED";
    FD1S3AX d2_i59 (.D(d2_63__N_1229[59]), .CK(osc_clk), .Q(d2[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i59.GSR = "ENABLED";
    FD1S3AX d2_i60 (.D(d2_63__N_1229[60]), .CK(osc_clk), .Q(d2[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i60.GSR = "ENABLED";
    FD1S3AX d2_i61 (.D(d2_63__N_1229[61]), .CK(osc_clk), .Q(d2[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i61.GSR = "ENABLED";
    FD1S3AX d2_i62 (.D(d2_63__N_1229[62]), .CK(osc_clk), .Q(d2[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i62.GSR = "ENABLED";
    FD1S3AX d2_i63 (.D(d2_63__N_1229[63]), .CK(osc_clk), .Q(d2[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d2_i63.GSR = "ENABLED";
    FD1S3AX d3_i1 (.D(d3_63__N_1293[1]), .CK(osc_clk), .Q(d3[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i1.GSR = "ENABLED";
    FD1S3AX d3_i2 (.D(d3_63__N_1293[2]), .CK(osc_clk), .Q(d3[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i2.GSR = "ENABLED";
    FD1S3AX d3_i3 (.D(d3_63__N_1293[3]), .CK(osc_clk), .Q(d3[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i3.GSR = "ENABLED";
    FD1S3AX d3_i4 (.D(d3_63__N_1293[4]), .CK(osc_clk), .Q(d3[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i4.GSR = "ENABLED";
    FD1S3AX d3_i5 (.D(d3_63__N_1293[5]), .CK(osc_clk), .Q(d3[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i5.GSR = "ENABLED";
    FD1S3AX d3_i6 (.D(d3_63__N_1293[6]), .CK(osc_clk), .Q(d3[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i6.GSR = "ENABLED";
    FD1S3AX d3_i7 (.D(d3_63__N_1293[7]), .CK(osc_clk), .Q(d3[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i7.GSR = "ENABLED";
    FD1S3AX d3_i8 (.D(d3_63__N_1293[8]), .CK(osc_clk), .Q(d3[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i8.GSR = "ENABLED";
    FD1S3AX d3_i9 (.D(d3_63__N_1293[9]), .CK(osc_clk), .Q(d3[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i9.GSR = "ENABLED";
    FD1S3AX d3_i10 (.D(d3_63__N_1293[10]), .CK(osc_clk), .Q(d3[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i10.GSR = "ENABLED";
    FD1S3AX d3_i11 (.D(d3_63__N_1293[11]), .CK(osc_clk), .Q(d3[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i11.GSR = "ENABLED";
    FD1S3AX d3_i12 (.D(d3_63__N_1293[12]), .CK(osc_clk), .Q(d3[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i12.GSR = "ENABLED";
    FD1S3AX d3_i13 (.D(d3_63__N_1293[13]), .CK(osc_clk), .Q(d3[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i13.GSR = "ENABLED";
    FD1S3AX d3_i14 (.D(d3_63__N_1293[14]), .CK(osc_clk), .Q(d3[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i14.GSR = "ENABLED";
    FD1S3AX d3_i15 (.D(d3_63__N_1293[15]), .CK(osc_clk), .Q(d3[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i15.GSR = "ENABLED";
    FD1S3AX d3_i16 (.D(d3_63__N_1293[16]), .CK(osc_clk), .Q(d3[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i16.GSR = "ENABLED";
    FD1S3AX d3_i17 (.D(d3_63__N_1293[17]), .CK(osc_clk), .Q(d3[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i17.GSR = "ENABLED";
    FD1S3AX d3_i18 (.D(d3_63__N_1293[18]), .CK(osc_clk), .Q(d3[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i18.GSR = "ENABLED";
    FD1S3AX d3_i19 (.D(d3_63__N_1293[19]), .CK(osc_clk), .Q(d3[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i19.GSR = "ENABLED";
    FD1S3AX d3_i20 (.D(d3_63__N_1293[20]), .CK(osc_clk), .Q(d3[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i20.GSR = "ENABLED";
    FD1S3AX d3_i21 (.D(d3_63__N_1293[21]), .CK(osc_clk), .Q(d3[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i21.GSR = "ENABLED";
    FD1S3AX d3_i22 (.D(d3_63__N_1293[22]), .CK(osc_clk), .Q(d3[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i22.GSR = "ENABLED";
    FD1S3AX d3_i23 (.D(d3_63__N_1293[23]), .CK(osc_clk), .Q(d3[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i23.GSR = "ENABLED";
    FD1S3AX d3_i24 (.D(d3_63__N_1293[24]), .CK(osc_clk), .Q(d3[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i24.GSR = "ENABLED";
    FD1S3AX d3_i25 (.D(d3_63__N_1293[25]), .CK(osc_clk), .Q(d3[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i25.GSR = "ENABLED";
    FD1S3AX d3_i26 (.D(d3_63__N_1293[26]), .CK(osc_clk), .Q(d3[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i26.GSR = "ENABLED";
    FD1S3AX d3_i27 (.D(d3_63__N_1293[27]), .CK(osc_clk), .Q(d3[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i27.GSR = "ENABLED";
    FD1S3AX d3_i28 (.D(d3_63__N_1293[28]), .CK(osc_clk), .Q(d3[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i28.GSR = "ENABLED";
    FD1S3AX d3_i29 (.D(d3_63__N_1293[29]), .CK(osc_clk), .Q(d3[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i29.GSR = "ENABLED";
    FD1S3AX d3_i30 (.D(d3_63__N_1293[30]), .CK(osc_clk), .Q(d3[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i30.GSR = "ENABLED";
    FD1S3AX d3_i31 (.D(d3_63__N_1293[31]), .CK(osc_clk), .Q(d3[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i31.GSR = "ENABLED";
    FD1S3AX d3_i32 (.D(d3_63__N_1293[32]), .CK(osc_clk), .Q(d3[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i32.GSR = "ENABLED";
    FD1S3AX d3_i33 (.D(d3_63__N_1293[33]), .CK(osc_clk), .Q(d3[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i33.GSR = "ENABLED";
    FD1S3AX d3_i34 (.D(d3_63__N_1293[34]), .CK(osc_clk), .Q(d3[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i34.GSR = "ENABLED";
    FD1S3AX d3_i35 (.D(d3_63__N_1293[35]), .CK(osc_clk), .Q(d3[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i35.GSR = "ENABLED";
    FD1S3AX d3_i36 (.D(d3_63__N_1293[36]), .CK(osc_clk), .Q(d3[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i36.GSR = "ENABLED";
    FD1S3AX d3_i37 (.D(d3_63__N_1293[37]), .CK(osc_clk), .Q(d3[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i37.GSR = "ENABLED";
    FD1S3AX d3_i38 (.D(d3_63__N_1293[38]), .CK(osc_clk), .Q(d3[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i38.GSR = "ENABLED";
    FD1S3AX d3_i39 (.D(d3_63__N_1293[39]), .CK(osc_clk), .Q(d3[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i39.GSR = "ENABLED";
    FD1S3AX d3_i40 (.D(d3_63__N_1293[40]), .CK(osc_clk), .Q(d3[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i40.GSR = "ENABLED";
    FD1S3AX d3_i41 (.D(d3_63__N_1293[41]), .CK(osc_clk), .Q(d3[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i41.GSR = "ENABLED";
    FD1S3AX d3_i42 (.D(d3_63__N_1293[42]), .CK(osc_clk), .Q(d3[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i42.GSR = "ENABLED";
    FD1S3AX d3_i43 (.D(d3_63__N_1293[43]), .CK(osc_clk), .Q(d3[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i43.GSR = "ENABLED";
    FD1S3AX d3_i44 (.D(d3_63__N_1293[44]), .CK(osc_clk), .Q(d3[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i44.GSR = "ENABLED";
    FD1S3AX d3_i45 (.D(d3_63__N_1293[45]), .CK(osc_clk), .Q(d3[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i45.GSR = "ENABLED";
    FD1S3AX d3_i46 (.D(d3_63__N_1293[46]), .CK(osc_clk), .Q(d3[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i46.GSR = "ENABLED";
    FD1S3AX d3_i47 (.D(d3_63__N_1293[47]), .CK(osc_clk), .Q(d3[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i47.GSR = "ENABLED";
    FD1S3AX d3_i48 (.D(d3_63__N_1293[48]), .CK(osc_clk), .Q(d3[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i48.GSR = "ENABLED";
    FD1S3AX d3_i49 (.D(d3_63__N_1293[49]), .CK(osc_clk), .Q(d3[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i49.GSR = "ENABLED";
    FD1S3AX d3_i50 (.D(d3_63__N_1293[50]), .CK(osc_clk), .Q(d3[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i50.GSR = "ENABLED";
    FD1S3AX d3_i51 (.D(d3_63__N_1293[51]), .CK(osc_clk), .Q(d3[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i51.GSR = "ENABLED";
    FD1S3AX d3_i52 (.D(d3_63__N_1293[52]), .CK(osc_clk), .Q(d3[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i52.GSR = "ENABLED";
    FD1S3AX d3_i53 (.D(d3_63__N_1293[53]), .CK(osc_clk), .Q(d3[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i53.GSR = "ENABLED";
    FD1S3AX d3_i54 (.D(d3_63__N_1293[54]), .CK(osc_clk), .Q(d3[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i54.GSR = "ENABLED";
    FD1S3AX d3_i55 (.D(d3_63__N_1293[55]), .CK(osc_clk), .Q(d3[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i55.GSR = "ENABLED";
    FD1S3AX d3_i56 (.D(d3_63__N_1293[56]), .CK(osc_clk), .Q(d3[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i56.GSR = "ENABLED";
    FD1S3AX d3_i57 (.D(d3_63__N_1293[57]), .CK(osc_clk), .Q(d3[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i57.GSR = "ENABLED";
    FD1S3AX d3_i58 (.D(d3_63__N_1293[58]), .CK(osc_clk), .Q(d3[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i58.GSR = "ENABLED";
    FD1S3AX d3_i59 (.D(d3_63__N_1293[59]), .CK(osc_clk), .Q(d3[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i59.GSR = "ENABLED";
    FD1S3AX d3_i60 (.D(d3_63__N_1293[60]), .CK(osc_clk), .Q(d3[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i60.GSR = "ENABLED";
    FD1S3AX d3_i61 (.D(d3_63__N_1293[61]), .CK(osc_clk), .Q(d3[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i61.GSR = "ENABLED";
    FD1S3AX d3_i62 (.D(d3_63__N_1293[62]), .CK(osc_clk), .Q(d3[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i62.GSR = "ENABLED";
    FD1S3AX d3_i63 (.D(d3_63__N_1293[63]), .CK(osc_clk), .Q(d3[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d3_i63.GSR = "ENABLED";
    FD1S3AX d4_i1 (.D(d4_63__N_1357[1]), .CK(osc_clk), .Q(d4[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i1.GSR = "ENABLED";
    FD1S3AX d4_i2 (.D(d4_63__N_1357[2]), .CK(osc_clk), .Q(d4[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i2.GSR = "ENABLED";
    FD1S3AX d4_i3 (.D(d4_63__N_1357[3]), .CK(osc_clk), .Q(d4[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i3.GSR = "ENABLED";
    FD1S3AX d4_i4 (.D(d4_63__N_1357[4]), .CK(osc_clk), .Q(d4[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i4.GSR = "ENABLED";
    FD1S3AX d4_i5 (.D(d4_63__N_1357[5]), .CK(osc_clk), .Q(d4[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i5.GSR = "ENABLED";
    FD1S3AX d4_i6 (.D(d4_63__N_1357[6]), .CK(osc_clk), .Q(d4[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i6.GSR = "ENABLED";
    FD1S3AX d4_i7 (.D(d4_63__N_1357[7]), .CK(osc_clk), .Q(d4[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i7.GSR = "ENABLED";
    FD1S3AX d4_i8 (.D(d4_63__N_1357[8]), .CK(osc_clk), .Q(d4[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i8.GSR = "ENABLED";
    FD1S3AX d4_i9 (.D(d4_63__N_1357[9]), .CK(osc_clk), .Q(d4[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i9.GSR = "ENABLED";
    FD1S3AX d4_i10 (.D(d4_63__N_1357[10]), .CK(osc_clk), .Q(d4[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i10.GSR = "ENABLED";
    FD1S3AX d4_i11 (.D(d4_63__N_1357[11]), .CK(osc_clk), .Q(d4[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i11.GSR = "ENABLED";
    FD1S3AX d4_i12 (.D(d4_63__N_1357[12]), .CK(osc_clk), .Q(d4[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i12.GSR = "ENABLED";
    FD1S3AX d4_i13 (.D(d4_63__N_1357[13]), .CK(osc_clk), .Q(d4[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i13.GSR = "ENABLED";
    FD1S3AX d4_i14 (.D(d4_63__N_1357[14]), .CK(osc_clk), .Q(d4[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i14.GSR = "ENABLED";
    FD1S3AX d4_i15 (.D(d4_63__N_1357[15]), .CK(osc_clk), .Q(d4[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i15.GSR = "ENABLED";
    FD1S3AX d4_i16 (.D(d4_63__N_1357[16]), .CK(osc_clk), .Q(d4[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i16.GSR = "ENABLED";
    FD1S3AX d4_i17 (.D(d4_63__N_1357[17]), .CK(osc_clk), .Q(d4[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i17.GSR = "ENABLED";
    FD1S3AX d4_i18 (.D(d4_63__N_1357[18]), .CK(osc_clk), .Q(d4[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i18.GSR = "ENABLED";
    FD1S3AX d4_i19 (.D(d4_63__N_1357[19]), .CK(osc_clk), .Q(d4[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i19.GSR = "ENABLED";
    FD1S3AX d4_i20 (.D(d4_63__N_1357[20]), .CK(osc_clk), .Q(d4[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i20.GSR = "ENABLED";
    FD1S3AX d4_i21 (.D(d4_63__N_1357[21]), .CK(osc_clk), .Q(d4[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i21.GSR = "ENABLED";
    FD1S3AX d4_i22 (.D(d4_63__N_1357[22]), .CK(osc_clk), .Q(d4[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i22.GSR = "ENABLED";
    FD1S3AX d4_i23 (.D(d4_63__N_1357[23]), .CK(osc_clk), .Q(d4[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i23.GSR = "ENABLED";
    FD1S3AX d4_i24 (.D(d4_63__N_1357[24]), .CK(osc_clk), .Q(d4[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i24.GSR = "ENABLED";
    FD1S3AX d4_i25 (.D(d4_63__N_1357[25]), .CK(osc_clk), .Q(d4[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i25.GSR = "ENABLED";
    FD1S3AX d4_i26 (.D(d4_63__N_1357[26]), .CK(osc_clk), .Q(d4[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i26.GSR = "ENABLED";
    FD1S3AX d4_i27 (.D(d4_63__N_1357[27]), .CK(osc_clk), .Q(d4[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i27.GSR = "ENABLED";
    FD1S3AX d4_i28 (.D(d4_63__N_1357[28]), .CK(osc_clk), .Q(d4[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i28.GSR = "ENABLED";
    FD1S3AX d4_i29 (.D(d4_63__N_1357[29]), .CK(osc_clk), .Q(d4[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i29.GSR = "ENABLED";
    FD1S3AX d4_i30 (.D(d4_63__N_1357[30]), .CK(osc_clk), .Q(d4[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i30.GSR = "ENABLED";
    FD1S3AX d4_i31 (.D(d4_63__N_1357[31]), .CK(osc_clk), .Q(d4[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i31.GSR = "ENABLED";
    FD1S3AX d4_i32 (.D(d4_63__N_1357[32]), .CK(osc_clk), .Q(d4[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i32.GSR = "ENABLED";
    FD1S3AX d4_i33 (.D(d4_63__N_1357[33]), .CK(osc_clk), .Q(d4[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i33.GSR = "ENABLED";
    FD1S3AX d4_i34 (.D(d4_63__N_1357[34]), .CK(osc_clk), .Q(d4[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i34.GSR = "ENABLED";
    FD1S3AX d4_i35 (.D(d4_63__N_1357[35]), .CK(osc_clk), .Q(d4[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i35.GSR = "ENABLED";
    FD1S3AX d4_i36 (.D(d4_63__N_1357[36]), .CK(osc_clk), .Q(d4[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i36.GSR = "ENABLED";
    FD1S3AX d4_i37 (.D(d4_63__N_1357[37]), .CK(osc_clk), .Q(d4[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i37.GSR = "ENABLED";
    FD1S3AX d4_i38 (.D(d4_63__N_1357[38]), .CK(osc_clk), .Q(d4[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i38.GSR = "ENABLED";
    FD1S3AX d4_i39 (.D(d4_63__N_1357[39]), .CK(osc_clk), .Q(d4[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i39.GSR = "ENABLED";
    FD1S3AX d4_i40 (.D(d4_63__N_1357[40]), .CK(osc_clk), .Q(d4[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i40.GSR = "ENABLED";
    FD1S3AX d4_i41 (.D(d4_63__N_1357[41]), .CK(osc_clk), .Q(d4[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i41.GSR = "ENABLED";
    FD1S3AX d4_i42 (.D(d4_63__N_1357[42]), .CK(osc_clk), .Q(d4[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i42.GSR = "ENABLED";
    FD1S3AX d4_i43 (.D(d4_63__N_1357[43]), .CK(osc_clk), .Q(d4[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i43.GSR = "ENABLED";
    FD1S3AX d4_i44 (.D(d4_63__N_1357[44]), .CK(osc_clk), .Q(d4[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i44.GSR = "ENABLED";
    FD1S3AX d4_i45 (.D(d4_63__N_1357[45]), .CK(osc_clk), .Q(d4[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i45.GSR = "ENABLED";
    FD1S3AX d4_i46 (.D(d4_63__N_1357[46]), .CK(osc_clk), .Q(d4[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i46.GSR = "ENABLED";
    FD1S3AX d4_i47 (.D(d4_63__N_1357[47]), .CK(osc_clk), .Q(d4[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i47.GSR = "ENABLED";
    FD1S3AX d4_i48 (.D(d4_63__N_1357[48]), .CK(osc_clk), .Q(d4[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i48.GSR = "ENABLED";
    FD1S3AX d4_i49 (.D(d4_63__N_1357[49]), .CK(osc_clk), .Q(d4[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i49.GSR = "ENABLED";
    FD1S3AX d4_i50 (.D(d4_63__N_1357[50]), .CK(osc_clk), .Q(d4[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i50.GSR = "ENABLED";
    FD1S3AX d4_i51 (.D(d4_63__N_1357[51]), .CK(osc_clk), .Q(d4[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i51.GSR = "ENABLED";
    FD1S3AX d4_i52 (.D(d4_63__N_1357[52]), .CK(osc_clk), .Q(d4[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i52.GSR = "ENABLED";
    FD1S3AX d4_i53 (.D(d4_63__N_1357[53]), .CK(osc_clk), .Q(d4[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i53.GSR = "ENABLED";
    FD1S3AX d4_i54 (.D(d4_63__N_1357[54]), .CK(osc_clk), .Q(d4[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i54.GSR = "ENABLED";
    FD1S3AX d4_i55 (.D(d4_63__N_1357[55]), .CK(osc_clk), .Q(d4[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i55.GSR = "ENABLED";
    FD1S3AX d4_i56 (.D(d4_63__N_1357[56]), .CK(osc_clk), .Q(d4[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i56.GSR = "ENABLED";
    FD1S3AX d4_i57 (.D(d4_63__N_1357[57]), .CK(osc_clk), .Q(d4[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i57.GSR = "ENABLED";
    FD1S3AX d4_i58 (.D(d4_63__N_1357[58]), .CK(osc_clk), .Q(d4[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i58.GSR = "ENABLED";
    FD1S3AX d4_i59 (.D(d4_63__N_1357[59]), .CK(osc_clk), .Q(d4[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i59.GSR = "ENABLED";
    FD1S3AX d4_i60 (.D(d4_63__N_1357[60]), .CK(osc_clk), .Q(d4[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i60.GSR = "ENABLED";
    FD1S3AX d4_i61 (.D(d4_63__N_1357[61]), .CK(osc_clk), .Q(d4[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i61.GSR = "ENABLED";
    FD1S3AX d4_i62 (.D(d4_63__N_1357[62]), .CK(osc_clk), .Q(d4[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i62.GSR = "ENABLED";
    FD1S3AX d4_i63 (.D(d4_63__N_1357[63]), .CK(osc_clk), .Q(d4[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d4_i63.GSR = "ENABLED";
    FD1S3AX d5_i1 (.D(d5_63__N_1421[1]), .CK(osc_clk), .Q(d5[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i1.GSR = "ENABLED";
    FD1S3AX d5_i2 (.D(d5_63__N_1421[2]), .CK(osc_clk), .Q(d5[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i2.GSR = "ENABLED";
    FD1S3AX d5_i3 (.D(d5_63__N_1421[3]), .CK(osc_clk), .Q(d5[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i3.GSR = "ENABLED";
    FD1S3AX d5_i4 (.D(d5_63__N_1421[4]), .CK(osc_clk), .Q(d5[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i4.GSR = "ENABLED";
    FD1S3AX d5_i5 (.D(d5_63__N_1421[5]), .CK(osc_clk), .Q(d5[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i5.GSR = "ENABLED";
    FD1S3AX d5_i6 (.D(d5_63__N_1421[6]), .CK(osc_clk), .Q(d5[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i6.GSR = "ENABLED";
    FD1S3AX d5_i7 (.D(d5_63__N_1421[7]), .CK(osc_clk), .Q(d5[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i7.GSR = "ENABLED";
    FD1S3AX d5_i8 (.D(d5_63__N_1421[8]), .CK(osc_clk), .Q(d5[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i8.GSR = "ENABLED";
    FD1S3AX d5_i9 (.D(d5_63__N_1421[9]), .CK(osc_clk), .Q(d5[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i9.GSR = "ENABLED";
    FD1S3AX d5_i10 (.D(d5_63__N_1421[10]), .CK(osc_clk), .Q(d5[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i10.GSR = "ENABLED";
    FD1S3AX d5_i11 (.D(d5_63__N_1421[11]), .CK(osc_clk), .Q(d5[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i11.GSR = "ENABLED";
    FD1S3AX d5_i12 (.D(d5_63__N_1421[12]), .CK(osc_clk), .Q(d5[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i12.GSR = "ENABLED";
    FD1S3AX d5_i13 (.D(d5_63__N_1421[13]), .CK(osc_clk), .Q(d5[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i13.GSR = "ENABLED";
    FD1S3AX d5_i14 (.D(d5_63__N_1421[14]), .CK(osc_clk), .Q(d5[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i14.GSR = "ENABLED";
    FD1S3AX d5_i15 (.D(d5_63__N_1421[15]), .CK(osc_clk), .Q(d5[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i15.GSR = "ENABLED";
    FD1S3AX d5_i16 (.D(d5_63__N_1421[16]), .CK(osc_clk), .Q(d5[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i16.GSR = "ENABLED";
    FD1S3AX d5_i17 (.D(d5_63__N_1421[17]), .CK(osc_clk), .Q(d5[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i17.GSR = "ENABLED";
    FD1S3AX d5_i18 (.D(d5_63__N_1421[18]), .CK(osc_clk), .Q(d5[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i18.GSR = "ENABLED";
    FD1S3AX d5_i19 (.D(d5_63__N_1421[19]), .CK(osc_clk), .Q(d5[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i19.GSR = "ENABLED";
    FD1S3AX d5_i20 (.D(d5_63__N_1421[20]), .CK(osc_clk), .Q(d5[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i20.GSR = "ENABLED";
    FD1S3AX d5_i21 (.D(d5_63__N_1421[21]), .CK(osc_clk), .Q(d5[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i21.GSR = "ENABLED";
    FD1S3AX d5_i22 (.D(d5_63__N_1421[22]), .CK(osc_clk), .Q(d5[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i22.GSR = "ENABLED";
    FD1S3AX d5_i23 (.D(d5_63__N_1421[23]), .CK(osc_clk), .Q(d5[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i23.GSR = "ENABLED";
    FD1S3AX d5_i24 (.D(d5_63__N_1421[24]), .CK(osc_clk), .Q(d5[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i24.GSR = "ENABLED";
    FD1S3AX d5_i25 (.D(d5_63__N_1421[25]), .CK(osc_clk), .Q(d5[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i25.GSR = "ENABLED";
    FD1S3AX d5_i26 (.D(d5_63__N_1421[26]), .CK(osc_clk), .Q(d5[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i26.GSR = "ENABLED";
    FD1S3AX d5_i27 (.D(d5_63__N_1421[27]), .CK(osc_clk), .Q(d5[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i27.GSR = "ENABLED";
    FD1S3AX d5_i28 (.D(d5_63__N_1421[28]), .CK(osc_clk), .Q(d5[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i28.GSR = "ENABLED";
    FD1S3AX d5_i29 (.D(d5_63__N_1421[29]), .CK(osc_clk), .Q(d5[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i29.GSR = "ENABLED";
    FD1S3AX d5_i30 (.D(d5_63__N_1421[30]), .CK(osc_clk), .Q(d5[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i30.GSR = "ENABLED";
    FD1S3AX d5_i31 (.D(d5_63__N_1421[31]), .CK(osc_clk), .Q(d5[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i31.GSR = "ENABLED";
    FD1S3AX d5_i32 (.D(d5_63__N_1421[32]), .CK(osc_clk), .Q(d5[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i32.GSR = "ENABLED";
    FD1S3AX d5_i33 (.D(d5_63__N_1421[33]), .CK(osc_clk), .Q(d5[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i33.GSR = "ENABLED";
    FD1S3AX d5_i34 (.D(d5_63__N_1421[34]), .CK(osc_clk), .Q(d5[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i34.GSR = "ENABLED";
    FD1S3AX d5_i35 (.D(d5_63__N_1421[35]), .CK(osc_clk), .Q(d5[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i35.GSR = "ENABLED";
    FD1S3AX d5_i36 (.D(d5_63__N_1421[36]), .CK(osc_clk), .Q(d5[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i36.GSR = "ENABLED";
    FD1S3AX d5_i37 (.D(d5_63__N_1421[37]), .CK(osc_clk), .Q(d5[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i37.GSR = "ENABLED";
    FD1S3AX d5_i38 (.D(d5_63__N_1421[38]), .CK(osc_clk), .Q(d5[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i38.GSR = "ENABLED";
    FD1S3AX d5_i39 (.D(d5_63__N_1421[39]), .CK(osc_clk), .Q(d5[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i39.GSR = "ENABLED";
    FD1S3AX d5_i40 (.D(d5_63__N_1421[40]), .CK(osc_clk), .Q(d5[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i40.GSR = "ENABLED";
    FD1S3AX d5_i41 (.D(d5_63__N_1421[41]), .CK(osc_clk), .Q(d5[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i41.GSR = "ENABLED";
    FD1S3AX d5_i42 (.D(d5_63__N_1421[42]), .CK(osc_clk), .Q(d5[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i42.GSR = "ENABLED";
    FD1S3AX d5_i43 (.D(d5_63__N_1421[43]), .CK(osc_clk), .Q(d5[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i43.GSR = "ENABLED";
    FD1S3AX d5_i44 (.D(d5_63__N_1421[44]), .CK(osc_clk), .Q(d5[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i44.GSR = "ENABLED";
    FD1S3AX d5_i45 (.D(d5_63__N_1421[45]), .CK(osc_clk), .Q(d5[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i45.GSR = "ENABLED";
    FD1S3AX d5_i46 (.D(d5_63__N_1421[46]), .CK(osc_clk), .Q(d5[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i46.GSR = "ENABLED";
    FD1S3AX d5_i47 (.D(d5_63__N_1421[47]), .CK(osc_clk), .Q(d5[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i47.GSR = "ENABLED";
    FD1S3AX d5_i48 (.D(d5_63__N_1421[48]), .CK(osc_clk), .Q(d5[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i48.GSR = "ENABLED";
    FD1S3AX d5_i49 (.D(d5_63__N_1421[49]), .CK(osc_clk), .Q(d5[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i49.GSR = "ENABLED";
    FD1S3AX d5_i50 (.D(d5_63__N_1421[50]), .CK(osc_clk), .Q(d5[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i50.GSR = "ENABLED";
    FD1S3AX d5_i51 (.D(d5_63__N_1421[51]), .CK(osc_clk), .Q(d5[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i51.GSR = "ENABLED";
    FD1S3AX d5_i52 (.D(d5_63__N_1421[52]), .CK(osc_clk), .Q(d5[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i52.GSR = "ENABLED";
    FD1S3AX d5_i53 (.D(d5_63__N_1421[53]), .CK(osc_clk), .Q(d5[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i53.GSR = "ENABLED";
    FD1S3AX d5_i54 (.D(d5_63__N_1421[54]), .CK(osc_clk), .Q(d5[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i54.GSR = "ENABLED";
    FD1S3AX d5_i55 (.D(d5_63__N_1421[55]), .CK(osc_clk), .Q(d5[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i55.GSR = "ENABLED";
    FD1S3AX d5_i56 (.D(d5_63__N_1421[56]), .CK(osc_clk), .Q(d5[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i56.GSR = "ENABLED";
    FD1S3AX d5_i57 (.D(d5_63__N_1421[57]), .CK(osc_clk), .Q(d5[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i57.GSR = "ENABLED";
    FD1S3AX d5_i58 (.D(d5_63__N_1421[58]), .CK(osc_clk), .Q(d5[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i58.GSR = "ENABLED";
    FD1S3AX d5_i59 (.D(d5_63__N_1421[59]), .CK(osc_clk), .Q(d5[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i59.GSR = "ENABLED";
    FD1S3AX d5_i60 (.D(d5_63__N_1421[60]), .CK(osc_clk), .Q(d5[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i60.GSR = "ENABLED";
    FD1S3AX d5_i61 (.D(d5_63__N_1421[61]), .CK(osc_clk), .Q(d5[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i61.GSR = "ENABLED";
    FD1S3AX d5_i62 (.D(d5_63__N_1421[62]), .CK(osc_clk), .Q(d5[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i62.GSR = "ENABLED";
    FD1S3AX d5_i63 (.D(d5_63__N_1421[63]), .CK(osc_clk), .Q(d5[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d5_i63.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i1 (.D(d5[1]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i2 (.D(d5[2]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i3 (.D(d5[3]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i4 (.D(d5[4]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i5 (.D(d5[5]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i6 (.D(d5[6]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i7 (.D(d5[7]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i8 (.D(d5[8]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i9 (.D(d5[9]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i10 (.D(d5[10]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i11 (.D(d5[11]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i12 (.D(d5[12]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i13 (.D(d5[13]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i14 (.D(d5[14]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i15 (.D(d5[15]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i16 (.D(d5[16]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i17 (.D(d5[17]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i18 (.D(d5[18]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i19 (.D(d5[19]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i20 (.D(d5[20]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i21 (.D(d5[21]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i22 (.D(d5[22]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i23 (.D(d5[23]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i24 (.D(d5[24]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i25 (.D(d5[25]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i26 (.D(d5[26]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i27 (.D(d5[27]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i28 (.D(d5[28]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i29 (.D(d5[29]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i30 (.D(d5[30]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i31 (.D(d5[31]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i32 (.D(d5[32]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i33 (.D(d5[33]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i34 (.D(d5[34]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i35 (.D(d5[35]), .SP(osc_clk_enable_138), .CK(osc_clk), 
            .Q(d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i36 (.D(d5[36]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i37 (.D(d5[37]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i38 (.D(d5[38]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i39 (.D(d5[39]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i40 (.D(d5[40]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i41 (.D(d5[41]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i42 (.D(d5[42]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i43 (.D(d5[43]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i44 (.D(d5[44]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i45 (.D(d5[45]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i46 (.D(d5[46]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i47 (.D(d5[47]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i48 (.D(d5[48]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i49 (.D(d5[49]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i50 (.D(d5[50]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i51 (.D(d5[51]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i52 (.D(d5[52]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i53 (.D(d5[53]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i54 (.D(d5[54]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i55 (.D(d5[55]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i56 (.D(d5[56]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i57 (.D(d5[57]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i58 (.D(d5[58]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i59 (.D(d5[59]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i60 (.D(d5[60]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i61 (.D(d5[61]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i62 (.D(d5[62]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_tmp_i0_i63 (.D(d5[63]), .SP(d_clk_tmp_N_2233), .CK(osc_clk), 
            .Q(d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d_tmp_i0_i63.GSR = "ENABLED";
    FD1P3AX d7_i0_i1 (.D(n2[1]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d7_i0_i2 (.D(n2[2]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d7_i0_i3 (.D(n2[3]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d7_i0_i4 (.D(n2[4]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d7_i0_i5 (.D(n2[5]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d7_i0_i6 (.D(n2[6]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d7_i0_i7 (.D(n2[7]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d7_i0_i8 (.D(n2[8]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d7_i0_i9 (.D(n2[9]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d7_i0_i10 (.D(n2[10]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d7_i0_i11 (.D(n2[11]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d7_i0_i12 (.D(n2[12]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d7_i0_i13 (.D(n2[13]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d7_i0_i14 (.D(n2[14]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d7_i0_i15 (.D(n2[15]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d7_i0_i16 (.D(n2[16]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d7_i0_i17 (.D(n2[17]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d7_i0_i18 (.D(n2[18]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d7_i0_i19 (.D(n2[19]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d7_i0_i20 (.D(n2[20]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d7_i0_i21 (.D(n2[21]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d7_i0_i22 (.D(n2[22]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d7_i0_i23 (.D(n2[23]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d7_i0_i24 (.D(n2[24]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d7_i0_i25 (.D(n2[25]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d7_i0_i26 (.D(n2[26]), .SP(osc_clk_enable_164), .CK(osc_clk), 
            .Q(d7[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d7_i0_i27 (.D(n2[27]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d7_i0_i28 (.D(n2[28]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d7_i0_i29 (.D(n2[29]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d7_i0_i30 (.D(n2[30]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d7_i0_i31 (.D(n2[31]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d7_i0_i32 (.D(n2[32]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d7_i0_i33 (.D(n2[33]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d7_i0_i34 (.D(n2[34]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d7_i0_i35 (.D(n2[35]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d7_i0_i36 (.D(n2[36]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d7_i0_i37 (.D(n2[37]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d7_i0_i38 (.D(n2[38]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d7_i0_i39 (.D(n2[39]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d7_i0_i40 (.D(n2[40]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d7_i0_i41 (.D(n2[41]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d7_i0_i42 (.D(n2[42]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d7_i0_i43 (.D(n2[43]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d7_i0_i44 (.D(n2[44]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d7_i0_i45 (.D(n2[45]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d7_i0_i46 (.D(n2[46]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d7_i0_i47 (.D(n2[47]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d7_i0_i48 (.D(n2[48]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d7_i0_i49 (.D(n2[49]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d7_i0_i50 (.D(n2[50]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d7_i0_i51 (.D(n2[51]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d7_i0_i52 (.D(n2[52]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d7_i0_i53 (.D(n2[53]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d7_i0_i54 (.D(n2[54]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d7_i0_i55 (.D(n2[55]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d7_i0_i56 (.D(n2[56]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d7_i0_i57 (.D(n2[57]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d7_i0_i58 (.D(n2[58]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d7_i0_i59 (.D(n2[59]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d7_i0_i60 (.D(n2[60]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d7_i0_i61 (.D(n2[61]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d7_i0_i62 (.D(n2[62]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d7_i0_i63 (.D(n2[63]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d7[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d8_i0_i1 (.D(n3[1]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d8_i0_i2 (.D(n3[2]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d8_i0_i3 (.D(n3[3]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d8_i0_i4 (.D(n3[4]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d8_i0_i5 (.D(n3[5]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d8_i0_i6 (.D(n3[6]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d8_i0_i7 (.D(n3[7]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d8_i0_i8 (.D(n3[8]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d8_i0_i9 (.D(n3[9]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d8_i0_i10 (.D(n3[10]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d8_i0_i11 (.D(n3[11]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d8_i0_i12 (.D(n3[12]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d8_i0_i13 (.D(n3[13]), .SP(osc_clk_enable_214), .CK(osc_clk), 
            .Q(d8[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d8_i0_i14 (.D(n3[14]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d8_i0_i15 (.D(n3[15]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d8_i0_i16 (.D(n3[16]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d8_i0_i17 (.D(n3[17]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d8_i0_i18 (.D(n3[18]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d8_i0_i19 (.D(n3[19]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d8_i0_i20 (.D(n3[20]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d8_i0_i21 (.D(n3[21]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d8_i0_i22 (.D(n3[22]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d8_i0_i23 (.D(n3[23]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d8_i0_i24 (.D(n3[24]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d8_i0_i25 (.D(n3[25]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d8_i0_i26 (.D(n3[26]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d8_i0_i27 (.D(n3[27]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d8_i0_i28 (.D(n3[28]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d8_i0_i29 (.D(n3[29]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d8_i0_i30 (.D(n3[30]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d8_i0_i31 (.D(n3[31]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d8_i0_i32 (.D(n3[32]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d8_i0_i33 (.D(n3[33]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d8_i0_i34 (.D(n3[34]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d8_i0_i35 (.D(n3[35]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d8_i0_i36 (.D(n3[36]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d8_i0_i37 (.D(n3[37]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d8_i0_i38 (.D(n3[38]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d8_i0_i39 (.D(n3[39]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d8_i0_i40 (.D(n3[40]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d8_i0_i41 (.D(n3[41]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d8_i0_i42 (.D(n3[42]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d8_i0_i43 (.D(n3[43]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d8_i0_i44 (.D(n3[44]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d8_i0_i45 (.D(n3[45]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d8_i0_i46 (.D(n3[46]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d8_i0_i47 (.D(n3[47]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d8_i0_i48 (.D(n3[48]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d8_i0_i49 (.D(n3[49]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d8_i0_i50 (.D(n3[50]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d8_i0_i51 (.D(n3[51]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d8_i0_i52 (.D(n3[52]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d8_i0_i53 (.D(n3[53]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d8_i0_i54 (.D(n3[54]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d8_i0_i55 (.D(n3[55]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d8_i0_i56 (.D(n3[56]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d8_i0_i57 (.D(n3[57]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d8_i0_i58 (.D(n3[58]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d8_i0_i59 (.D(n3[59]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d8_i0_i60 (.D(n3[60]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d8_i0_i61 (.D(n3[61]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d8_i0_i62 (.D(n3[62]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d8_i0_i63 (.D(n3[63]), .SP(osc_clk_enable_264), .CK(osc_clk), 
            .Q(d8[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d9_i0_i1 (.D(n4[1]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d9_i0_i2 (.D(n4[2]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d9_i0_i3 (.D(n4[3]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d9_i0_i4 (.D(n4[4]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d9_i0_i5 (.D(n4[5]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d9_i0_i6 (.D(n4[6]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d9_i0_i7 (.D(n4[7]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d9_i0_i8 (.D(n4[8]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d9_i0_i9 (.D(n4[9]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d9_i0_i10 (.D(n4[10]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d9_i0_i11 (.D(n4[11]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d9_i0_i12 (.D(n4[12]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d9_i0_i13 (.D(n4[13]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d9_i0_i14 (.D(n4[14]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d9_i0_i15 (.D(n4[15]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d9_i0_i16 (.D(n4[16]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d9_i0_i17 (.D(n4[17]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d9_i0_i18 (.D(n4[18]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d9_i0_i19 (.D(n4[19]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d9_i0_i20 (.D(n4[20]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d9_i0_i21 (.D(n4[21]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d9_i0_i22 (.D(n4[22]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d9_i0_i23 (.D(n4[23]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d9_i0_i24 (.D(n4[24]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d9_i0_i25 (.D(n4[25]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d9_i0_i26 (.D(n4[26]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d9_i0_i27 (.D(n4[27]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d9_i0_i28 (.D(n4[28]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d9_i0_i29 (.D(n4[29]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d9_i0_i30 (.D(n4[30]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d9_i0_i31 (.D(n4[31]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d9_i0_i32 (.D(n4[32]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d9_i0_i33 (.D(n4[33]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d9_i0_i34 (.D(n4[34]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d9_i0_i35 (.D(n4[35]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d9_i0_i36 (.D(n4[36]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d9_i0_i37 (.D(n4[37]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d9_i0_i38 (.D(n4[38]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d9_i0_i39 (.D(n4[39]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d9_i0_i40 (.D(n4[40]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d9_i0_i41 (.D(n4[41]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d9_i0_i42 (.D(n4[42]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d9_i0_i43 (.D(n4[43]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d9_i0_i44 (.D(n4[44]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d9_i0_i45 (.D(n4[45]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d9_i0_i46 (.D(n4[46]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d9_i0_i47 (.D(n4[47]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d9_i0_i48 (.D(n4[48]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d9_i0_i49 (.D(n4[49]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d9_i0_i50 (.D(n4[50]), .SP(osc_clk_enable_314), .CK(osc_clk), 
            .Q(d9[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d9_i0_i51 (.D(n4[51]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d9_i0_i52 (.D(n4[52]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d9_i0_i53 (.D(n4[53]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d9_i0_i54 (.D(n4[54]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d9_i0_i55 (.D(n4[55]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d9_i0_i56 (.D(n4[56]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d9_i0_i57 (.D(n4[57]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d9_i0_i58 (.D(n4[58]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d9_i0_i59 (.D(n4[59]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d9_i0_i60 (.D(n4[60]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d9_i0_i61 (.D(n4[61]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d9_i0_i62 (.D(n4[62]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d9_i0_i63 (.D(n4[63]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d9[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i1 (.D(d6[1]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i2 (.D(d6[2]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i3 (.D(d6[3]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i4 (.D(d6[4]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i5 (.D(d6[5]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i6 (.D(d6[6]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i7 (.D(d6[7]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i8 (.D(d6[8]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i9 (.D(d6[9]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i10 (.D(d6[10]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i11 (.D(d6[11]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i12 (.D(d6[12]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i13 (.D(d6[13]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i14 (.D(d6[14]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i15 (.D(d6[15]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i16 (.D(d6[16]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i17 (.D(d6[17]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i18 (.D(d6[18]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i19 (.D(d6[19]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i20 (.D(d6[20]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i21 (.D(d6[21]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i22 (.D(d6[22]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i23 (.D(d6[23]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i24 (.D(d6[24]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i25 (.D(d6[25]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i26 (.D(d6[26]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i27 (.D(d6[27]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i28 (.D(d6[28]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i29 (.D(d6[29]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i30 (.D(d6[30]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i31 (.D(d6[31]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i32 (.D(d6[32]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i33 (.D(d6[33]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i34 (.D(d6[34]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i35 (.D(d6[35]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i36 (.D(d6[36]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i37 (.D(d6[37]), .SP(osc_clk_enable_364), .CK(osc_clk), 
            .Q(d_d6[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i38 (.D(d6[38]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i39 (.D(d6[39]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i40 (.D(d6[40]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i41 (.D(d6[41]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i42 (.D(d6[42]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i43 (.D(d6[43]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i44 (.D(d6[44]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i45 (.D(d6[45]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i46 (.D(d6[46]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i47 (.D(d6[47]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i48 (.D(d6[48]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i49 (.D(d6[49]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i50 (.D(d6[50]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i51 (.D(d6[51]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i52 (.D(d6[52]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i53 (.D(d6[53]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i54 (.D(d6[54]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i55 (.D(d6[55]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i56 (.D(d6[56]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i57 (.D(d6[57]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i58 (.D(d6[58]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i59 (.D(d6[59]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i60 (.D(d6[60]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i61 (.D(d6[61]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i62 (.D(d6[62]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d6_i0_i63 (.D(d6[63]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d6[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d6_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i1 (.D(d7[1]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i2 (.D(d7[2]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i3 (.D(d7[3]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i4 (.D(d7[4]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i5 (.D(d7[5]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i6 (.D(d7[6]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i7 (.D(d7[7]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i8 (.D(d7[8]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i9 (.D(d7[9]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i10 (.D(d7[10]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i11 (.D(d7[11]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i12 (.D(d7[12]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i13 (.D(d7[13]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i14 (.D(d7[14]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i15 (.D(d7[15]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i16 (.D(d7[16]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i17 (.D(d7[17]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i18 (.D(d7[18]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i19 (.D(d7[19]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i20 (.D(d7[20]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i21 (.D(d7[21]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i22 (.D(d7[22]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i23 (.D(d7[23]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i24 (.D(d7[24]), .SP(osc_clk_enable_414), .CK(osc_clk), 
            .Q(d_d7[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i25 (.D(d7[25]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i26 (.D(d7[26]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i27 (.D(d7[27]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i28 (.D(d7[28]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i29 (.D(d7[29]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i30 (.D(d7[30]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i31 (.D(d7[31]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i32 (.D(d7[32]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i33 (.D(d7[33]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i34 (.D(d7[34]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i35 (.D(d7[35]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i36 (.D(d7[36]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i37 (.D(d7[37]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i38 (.D(d7[38]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i39 (.D(d7[39]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i40 (.D(d7[40]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i41 (.D(d7[41]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i42 (.D(d7[42]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i43 (.D(d7[43]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i44 (.D(d7[44]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i45 (.D(d7[45]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i46 (.D(d7[46]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i47 (.D(d7[47]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i48 (.D(d7[48]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i49 (.D(d7[49]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i50 (.D(d7[50]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i51 (.D(d7[51]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i52 (.D(d7[52]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i53 (.D(d7[53]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i54 (.D(d7[54]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i55 (.D(d7[55]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i56 (.D(d7[56]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i57 (.D(d7[57]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i58 (.D(d7[58]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i59 (.D(d7[59]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i60 (.D(d7[60]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i61 (.D(d7[61]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i62 (.D(d7[62]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d7_i0_i63 (.D(d7[63]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d7[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d7_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i1 (.D(d8[1]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i2 (.D(d8[2]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i3 (.D(d8[3]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i4 (.D(d8[4]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i5 (.D(d8[5]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i6 (.D(d8[6]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i7 (.D(d8[7]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i8 (.D(d8[8]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i9 (.D(d8[9]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i10 (.D(d8[10]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i11 (.D(d8[11]), .SP(osc_clk_enable_464), .CK(osc_clk), 
            .Q(d_d8[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i12 (.D(d8[12]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i13 (.D(d8[13]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i14 (.D(d8[14]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i15 (.D(d8[15]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i16 (.D(d8[16]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i17 (.D(d8[17]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i18 (.D(d8[18]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i19 (.D(d8[19]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i20 (.D(d8[20]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i21 (.D(d8[21]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i22 (.D(d8[22]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i23 (.D(d8[23]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i24 (.D(d8[24]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i25 (.D(d8[25]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i26 (.D(d8[26]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i27 (.D(d8[27]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i28 (.D(d8[28]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i29 (.D(d8[29]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i30 (.D(d8[30]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i31 (.D(d8[31]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i32 (.D(d8[32]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i33 (.D(d8[33]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i34 (.D(d8[34]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i35 (.D(d8[35]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i36 (.D(d8[36]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i37 (.D(d8[37]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i38 (.D(d8[38]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i39 (.D(d8[39]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i40 (.D(d8[40]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i41 (.D(d8[41]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i42 (.D(d8[42]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i43 (.D(d8[43]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i44 (.D(d8[44]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i45 (.D(d8[45]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i46 (.D(d8[46]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i47 (.D(d8[47]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i48 (.D(d8[48]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i49 (.D(d8[49]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i50 (.D(d8[50]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i51 (.D(d8[51]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i52 (.D(d8[52]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i53 (.D(d8[53]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i54 (.D(d8[54]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i55 (.D(d8[55]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i56 (.D(d8[56]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i57 (.D(d8[57]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i58 (.D(d8[58]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i59 (.D(d8[59]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i60 (.D(d8[60]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i61 (.D(d8[61]), .SP(osc_clk_enable_514), .CK(osc_clk), 
            .Q(d_d8[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i62 (.D(d8[62]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d8[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d8_i0_i63 (.D(d8[63]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d8[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d8_i0_i63.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i1 (.D(d9[1]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i2 (.D(d9[2]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i3 (.D(d9[3]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i4 (.D(d9[4]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i5 (.D(d9[5]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i6 (.D(d9[6]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i7 (.D(d9[7]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i8 (.D(d9[8]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i9 (.D(d9[9]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i10 (.D(d9[10]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i11 (.D(d9[11]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i12 (.D(d9[12]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i13 (.D(d9[13]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i14 (.D(d9[14]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i15 (.D(d9[15]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i16 (.D(d9[16]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i17 (.D(d9[17]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i18 (.D(d9[18]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i19 (.D(d9[19]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i20 (.D(d9[20]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i21 (.D(d9[21]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i22 (.D(d9[22]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i23 (.D(d9[23]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i24 (.D(d9[24]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i25 (.D(d9[25]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i26 (.D(d9[26]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i27 (.D(d9[27]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i28 (.D(d9[28]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i29 (.D(d9[29]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i30 (.D(d9[30]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i31 (.D(d9[31]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i32 (.D(d9[32]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i33 (.D(d9[33]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i34 (.D(d9[34]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i35 (.D(d9[35]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i36 (.D(d9[36]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i37 (.D(d9[37]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i38 (.D(d9[38]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i39 (.D(d9[39]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i40 (.D(d9[40]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i41 (.D(d9[41]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i42 (.D(d9[42]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i43 (.D(d9[43]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i44 (.D(d9[44]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i45 (.D(d9[45]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i46 (.D(d9[46]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i47 (.D(d9[47]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i48 (.D(d9[48]), .SP(osc_clk_enable_564), .CK(osc_clk), 
            .Q(d_d9[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i49 (.D(d9[49]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i50 (.D(d9[50]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i51 (.D(d9[51]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i52 (.D(d9[52]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i53 (.D(d9[53]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i54 (.D(d9[54]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i55 (.D(d9[55]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i56 (.D(d9[56]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i57 (.D(d9[57]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i58 (.D(d9[58]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i59 (.D(d9[59]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i60 (.D(d9[60]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i61 (.D(d9[61]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i62 (.D(d9[62]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d9_i0_i63 (.D(d9[63]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d9[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d9_i0_i63.GSR = "ENABLED";
    FD1P3AX d_out_i0_i1 (.D(d10[2]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i1.GSR = "ENABLED";
    FD1P3AX d_out_i0_i2 (.D(d10[3]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i2.GSR = "ENABLED";
    FD1P3AX d_out_i0_i3 (.D(d10[4]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i3.GSR = "ENABLED";
    FD1P3AX d_out_i0_i4 (.D(d10[5]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i4.GSR = "ENABLED";
    FD1P3AX d_out_i0_i5 (.D(d10[6]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i5.GSR = "ENABLED";
    FD1P3AX d_out_i0_i6 (.D(d10[7]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i6.GSR = "ENABLED";
    FD1P3AX d_out_i0_i7 (.D(d10[63]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(CIC_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_out_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i1 (.D(d_tmp[1]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i1.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i2 (.D(d_tmp[2]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i2.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i3 (.D(d_tmp[3]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i3.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i4 (.D(d_tmp[4]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i4.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i5 (.D(d_tmp[5]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i5.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i6 (.D(d_tmp[6]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i6.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i7 (.D(d_tmp[7]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i7.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i8 (.D(d_tmp[8]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i8.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i9 (.D(d_tmp[9]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i9.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i10 (.D(d_tmp[10]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i10.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i11 (.D(d_tmp[11]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i11.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i12 (.D(d_tmp[12]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i12.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i13 (.D(d_tmp[13]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i13.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i14 (.D(d_tmp[14]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i14.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i15 (.D(d_tmp[15]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i15.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i16 (.D(d_tmp[16]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i16.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i17 (.D(d_tmp[17]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i17.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i18 (.D(d_tmp[18]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i18.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i19 (.D(d_tmp[19]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i19.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i20 (.D(d_tmp[20]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i20.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i21 (.D(d_tmp[21]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i21.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i22 (.D(d_tmp[22]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i22.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i23 (.D(d_tmp[23]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i23.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i24 (.D(d_tmp[24]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i24.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i25 (.D(d_tmp[25]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i25.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i26 (.D(d_tmp[26]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i26.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i27 (.D(d_tmp[27]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i27.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i28 (.D(d_tmp[28]), .SP(osc_clk_enable_614), .CK(osc_clk), 
            .Q(d_d_tmp[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i28.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i29 (.D(d_tmp[29]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i29.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i30 (.D(d_tmp[30]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i30.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i31 (.D(d_tmp[31]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i31.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i32 (.D(d_tmp[32]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i32.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i33 (.D(d_tmp[33]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i33.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i34 (.D(d_tmp[34]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i34.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i35 (.D(d_tmp[35]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i35.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i36 (.D(d_tmp[36]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i36.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i37 (.D(d_tmp[37]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i37.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i38 (.D(d_tmp[38]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i38.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i39 (.D(d_tmp[39]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i39.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i40 (.D(d_tmp[40]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i40.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i41 (.D(d_tmp[41]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i41.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i42 (.D(d_tmp[42]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i42.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i43 (.D(d_tmp[43]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i43.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i44 (.D(d_tmp[44]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i44.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i45 (.D(d_tmp[45]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i45.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i46 (.D(d_tmp[46]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i46.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i47 (.D(d_tmp[47]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i47.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i48 (.D(d_tmp[48]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i48.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i49 (.D(d_tmp[49]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i49.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i50 (.D(d_tmp[50]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i50.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i51 (.D(d_tmp[51]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i51.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i52 (.D(d_tmp[52]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i52.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i53 (.D(d_tmp[53]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i53.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i54 (.D(d_tmp[54]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i54.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i55 (.D(d_tmp[55]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i55.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i56 (.D(d_tmp[56]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i56.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i57 (.D(d_tmp[57]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i57.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i58 (.D(d_tmp[58]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i58.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i59 (.D(d_tmp[59]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i59.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i60 (.D(d_tmp[60]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i60.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i61 (.D(d_tmp[61]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i61.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i62 (.D(d_tmp[62]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i62.GSR = "ENABLED";
    FD1P3AX d_d_tmp_i0_i63 (.D(d_tmp[63]), .SP(v_comb), .CK(osc_clk), 
            .Q(d_d_tmp[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d_d_tmp_i0_i63.GSR = "ENABLED";
    FD1S3AX d1_i1 (.D(d1_63__N_1165[1]), .CK(osc_clk), .Q(d1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i1.GSR = "ENABLED";
    FD1S3AX d1_i2 (.D(d1_63__N_1165[2]), .CK(osc_clk), .Q(d1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i2.GSR = "ENABLED";
    FD1S3AX d1_i3 (.D(d1_63__N_1165[3]), .CK(osc_clk), .Q(d1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i3.GSR = "ENABLED";
    FD1S3AX d1_i4 (.D(d1_63__N_1165[4]), .CK(osc_clk), .Q(d1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i4.GSR = "ENABLED";
    FD1S3AX d1_i5 (.D(d1_63__N_1165[5]), .CK(osc_clk), .Q(d1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i5.GSR = "ENABLED";
    FD1S3AX d1_i6 (.D(d1_63__N_1165[6]), .CK(osc_clk), .Q(d1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i6.GSR = "ENABLED";
    FD1S3AX d1_i7 (.D(d1_63__N_1165[7]), .CK(osc_clk), .Q(d1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i7.GSR = "ENABLED";
    FD1S3AX d1_i8 (.D(d1_63__N_1165[8]), .CK(osc_clk), .Q(d1[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i8.GSR = "ENABLED";
    FD1S3AX d1_i9 (.D(d1_63__N_1165[9]), .CK(osc_clk), .Q(d1[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i9.GSR = "ENABLED";
    FD1S3AX d1_i10 (.D(d1_63__N_1165[10]), .CK(osc_clk), .Q(d1[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i10.GSR = "ENABLED";
    FD1S3AX d1_i11 (.D(d1_63__N_1165[11]), .CK(osc_clk), .Q(d1[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i11.GSR = "ENABLED";
    FD1S3AX d1_i12 (.D(d1_63__N_1165[12]), .CK(osc_clk), .Q(d1[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i12.GSR = "ENABLED";
    FD1S3AX d1_i13 (.D(d1_63__N_1165[13]), .CK(osc_clk), .Q(d1[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i13.GSR = "ENABLED";
    FD1S3AX d1_i14 (.D(d1_63__N_1165[14]), .CK(osc_clk), .Q(d1[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i14.GSR = "ENABLED";
    FD1S3AX d1_i15 (.D(d1_63__N_1165[15]), .CK(osc_clk), .Q(d1[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i15.GSR = "ENABLED";
    FD1S3AX d1_i16 (.D(d1_63__N_1165[16]), .CK(osc_clk), .Q(d1[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i16.GSR = "ENABLED";
    FD1S3AX d1_i17 (.D(d1_63__N_1165[17]), .CK(osc_clk), .Q(d1[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i17.GSR = "ENABLED";
    FD1S3AX d1_i18 (.D(d1_63__N_1165[18]), .CK(osc_clk), .Q(d1[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i18.GSR = "ENABLED";
    FD1S3AX d1_i19 (.D(d1_63__N_1165[19]), .CK(osc_clk), .Q(d1[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i19.GSR = "ENABLED";
    FD1S3AX d1_i20 (.D(d1_63__N_1165[20]), .CK(osc_clk), .Q(d1[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i20.GSR = "ENABLED";
    FD1S3AX d1_i21 (.D(d1_63__N_1165[21]), .CK(osc_clk), .Q(d1[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i21.GSR = "ENABLED";
    FD1S3AX d1_i22 (.D(d1_63__N_1165[22]), .CK(osc_clk), .Q(d1[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i22.GSR = "ENABLED";
    FD1S3AX d1_i23 (.D(d1_63__N_1165[23]), .CK(osc_clk), .Q(d1[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i23.GSR = "ENABLED";
    FD1S3AX d1_i24 (.D(d1_63__N_1165[24]), .CK(osc_clk), .Q(d1[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i24.GSR = "ENABLED";
    FD1S3AX d1_i25 (.D(d1_63__N_1165[25]), .CK(osc_clk), .Q(d1[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i25.GSR = "ENABLED";
    FD1S3AX d1_i26 (.D(d1_63__N_1165[26]), .CK(osc_clk), .Q(d1[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i26.GSR = "ENABLED";
    FD1S3AX d1_i27 (.D(d1_63__N_1165[27]), .CK(osc_clk), .Q(d1[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i27.GSR = "ENABLED";
    FD1S3AX d1_i28 (.D(d1_63__N_1165[28]), .CK(osc_clk), .Q(d1[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i28.GSR = "ENABLED";
    FD1S3AX d1_i29 (.D(d1_63__N_1165[29]), .CK(osc_clk), .Q(d1[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i29.GSR = "ENABLED";
    FD1S3AX d1_i30 (.D(d1_63__N_1165[30]), .CK(osc_clk), .Q(d1[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i30.GSR = "ENABLED";
    FD1S3AX d1_i31 (.D(d1_63__N_1165[31]), .CK(osc_clk), .Q(d1[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i31.GSR = "ENABLED";
    FD1S3AX d1_i32 (.D(d1_63__N_1165[32]), .CK(osc_clk), .Q(d1[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i32.GSR = "ENABLED";
    FD1S3AX d1_i33 (.D(d1_63__N_1165[33]), .CK(osc_clk), .Q(d1[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i33.GSR = "ENABLED";
    FD1S3AX d1_i34 (.D(d1_63__N_1165[34]), .CK(osc_clk), .Q(d1[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i34.GSR = "ENABLED";
    FD1S3AX d1_i35 (.D(d1_63__N_1165[35]), .CK(osc_clk), .Q(d1[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i35.GSR = "ENABLED";
    FD1S3AX d1_i36 (.D(d1_63__N_1165[36]), .CK(osc_clk), .Q(d1[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i36.GSR = "ENABLED";
    FD1S3AX d1_i37 (.D(d1_63__N_1165[37]), .CK(osc_clk), .Q(d1[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i37.GSR = "ENABLED";
    FD1S3AX d1_i38 (.D(d1_63__N_1165[38]), .CK(osc_clk), .Q(d1[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i38.GSR = "ENABLED";
    FD1S3AX d1_i39 (.D(d1_63__N_1165[39]), .CK(osc_clk), .Q(d1[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i39.GSR = "ENABLED";
    FD1S3AX d1_i40 (.D(d1_63__N_1165[40]), .CK(osc_clk), .Q(d1[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i40.GSR = "ENABLED";
    FD1S3AX d1_i41 (.D(d1_63__N_1165[41]), .CK(osc_clk), .Q(d1[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i41.GSR = "ENABLED";
    FD1S3AX d1_i42 (.D(d1_63__N_1165[42]), .CK(osc_clk), .Q(d1[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i42.GSR = "ENABLED";
    FD1S3AX d1_i43 (.D(d1_63__N_1165[43]), .CK(osc_clk), .Q(d1[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i43.GSR = "ENABLED";
    FD1S3AX d1_i44 (.D(d1_63__N_1165[44]), .CK(osc_clk), .Q(d1[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i44.GSR = "ENABLED";
    FD1S3AX d1_i45 (.D(d1_63__N_1165[45]), .CK(osc_clk), .Q(d1[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i45.GSR = "ENABLED";
    FD1S3AX d1_i46 (.D(d1_63__N_1165[46]), .CK(osc_clk), .Q(d1[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i46.GSR = "ENABLED";
    FD1S3AX d1_i47 (.D(d1_63__N_1165[47]), .CK(osc_clk), .Q(d1[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i47.GSR = "ENABLED";
    FD1S3AX d1_i48 (.D(d1_63__N_1165[48]), .CK(osc_clk), .Q(d1[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i48.GSR = "ENABLED";
    FD1S3AX d1_i49 (.D(d1_63__N_1165[49]), .CK(osc_clk), .Q(d1[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i49.GSR = "ENABLED";
    FD1S3AX d1_i50 (.D(d1_63__N_1165[50]), .CK(osc_clk), .Q(d1[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i50.GSR = "ENABLED";
    FD1S3AX d1_i51 (.D(d1_63__N_1165[51]), .CK(osc_clk), .Q(d1[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i51.GSR = "ENABLED";
    FD1S3AX d1_i52 (.D(d1_63__N_1165[52]), .CK(osc_clk), .Q(d1[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i52.GSR = "ENABLED";
    FD1S3AX d1_i53 (.D(d1_63__N_1165[53]), .CK(osc_clk), .Q(d1[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i53.GSR = "ENABLED";
    FD1S3AX d1_i54 (.D(d1_63__N_1165[54]), .CK(osc_clk), .Q(d1[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i54.GSR = "ENABLED";
    FD1S3AX d1_i55 (.D(d1_63__N_1165[55]), .CK(osc_clk), .Q(d1[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i55.GSR = "ENABLED";
    FD1S3AX d1_i56 (.D(d1_63__N_1165[56]), .CK(osc_clk), .Q(d1[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i56.GSR = "ENABLED";
    FD1S3AX d1_i57 (.D(d1_63__N_1165[57]), .CK(osc_clk), .Q(d1[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i57.GSR = "ENABLED";
    FD1S3AX d1_i58 (.D(d1_63__N_1165[58]), .CK(osc_clk), .Q(d1[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i58.GSR = "ENABLED";
    FD1S3AX d1_i59 (.D(d1_63__N_1165[59]), .CK(osc_clk), .Q(d1[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i59.GSR = "ENABLED";
    FD1S3AX d1_i60 (.D(d1_63__N_1165[60]), .CK(osc_clk), .Q(d1[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i60.GSR = "ENABLED";
    FD1S3AX d1_i61 (.D(d1_63__N_1165[61]), .CK(osc_clk), .Q(d1[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i61.GSR = "ENABLED";
    FD1S3AX d1_i62 (.D(d1_63__N_1165[62]), .CK(osc_clk), .Q(d1[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i62.GSR = "ENABLED";
    FD1S3AX d1_i63 (.D(d1_63__N_1165[63]), .CK(osc_clk), .Q(d1[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam d1_i63.GSR = "ENABLED";
    LUT4 i1062_2_lut (.A(d3[0]), .B(d4[0]), .Z(d4_63__N_1357[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1062_2_lut.init = 16'h6666;
    CCU2D sub_38_add_2_65 (.A0(d7[63]), .B0(d_d7[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1258), 
          .S0(n3[63]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_65.INIT0 = 16'h5999;
    defparam sub_38_add_2_65.INIT1 = 16'h0000;
    defparam sub_38_add_2_65.INJECT1_0 = "NO";
    defparam sub_38_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_63 (.A0(d7[61]), .B0(d_d7[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[62]), .B1(d_d7[62]), .C1(GND_net), .D1(GND_net), .CIN(n1257), 
          .COUT(n1258), .S0(n3[61]), .S1(n3[62]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_63.INIT0 = 16'h5999;
    defparam sub_38_add_2_63.INIT1 = 16'h5999;
    defparam sub_38_add_2_63.INJECT1_0 = "NO";
    defparam sub_38_add_2_63.INJECT1_1 = "NO";
    FD1P3AX d10__0__i2 (.D(n5[2]), .SP(v_comb), .CK(osc_clk), .Q(d10[2]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i2.GSR = "ENABLED";
    CCU2D count_233_234_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1623), .S0(n49[9]), .S1(n49[10]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_11.INIT0 = 16'hfaaa;
    defparam count_233_234_add_4_11.INIT1 = 16'hfaaa;
    defparam count_233_234_add_4_11.INJECT1_0 = "NO";
    defparam count_233_234_add_4_11.INJECT1_1 = "NO";
    CCU2D count_233_234_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1622), .COUT(n1623), .S0(n49[7]), .S1(n49[8]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_9.INIT0 = 16'hfaaa;
    defparam count_233_234_add_4_9.INIT1 = 16'hfaaa;
    defparam count_233_234_add_4_9.INJECT1_0 = "NO";
    defparam count_233_234_add_4_9.INJECT1_1 = "NO";
    CCU2D count_233_234_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1621), .COUT(n1622), .S0(n49[5]), .S1(n49[6]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_7.INIT0 = 16'hfaaa;
    defparam count_233_234_add_4_7.INIT1 = 16'hfaaa;
    defparam count_233_234_add_4_7.INJECT1_0 = "NO";
    defparam count_233_234_add_4_7.INJECT1_1 = "NO";
    CCU2D count_233_234_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1620), .COUT(n1621), .S0(n49[3]), .S1(n49[4]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_5.INIT0 = 16'hfaaa;
    defparam count_233_234_add_4_5.INIT1 = 16'hfaaa;
    defparam count_233_234_add_4_5.INJECT1_0 = "NO";
    defparam count_233_234_add_4_5.INJECT1_1 = "NO";
    CCU2D count_233_234_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1619), .COUT(n1620), .S0(n49[1]), .S1(n49[2]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_3.INIT0 = 16'hfaaa;
    defparam count_233_234_add_4_3.INIT1 = 16'hfaaa;
    defparam count_233_234_add_4_3.INJECT1_0 = "NO";
    defparam count_233_234_add_4_3.INJECT1_1 = "NO";
    CCU2D count_233_234_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1619), .S1(n49[0]));   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234_add_4_1.INIT0 = 16'hF000;
    defparam count_233_234_add_4_1.INIT1 = 16'h0555;
    defparam count_233_234_add_4_1.INJECT1_0 = "NO";
    defparam count_233_234_add_4_1.INJECT1_1 = "NO";
    CCU2D add_7_64 (.A0(d4[62]), .B0(d5[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[63]), .B1(d5[63]), .C1(GND_net), .D1(GND_net), .CIN(n1593), 
          .S0(d5_63__N_1421[62]), .S1(d5_63__N_1421[63]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_64.INIT0 = 16'h5666;
    defparam add_7_64.INIT1 = 16'h5666;
    defparam add_7_64.INJECT1_0 = "NO";
    defparam add_7_64.INJECT1_1 = "NO";
    CCU2D add_7_62 (.A0(d4[60]), .B0(d5[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[61]), .B1(d5[61]), .C1(GND_net), .D1(GND_net), .CIN(n1592), 
          .COUT(n1593), .S0(d5_63__N_1421[60]), .S1(d5_63__N_1421[61]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_62.INIT0 = 16'h5666;
    defparam add_7_62.INIT1 = 16'h5666;
    defparam add_7_62.INJECT1_0 = "NO";
    defparam add_7_62.INJECT1_1 = "NO";
    CCU2D add_7_60 (.A0(d4[58]), .B0(d5[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[59]), .B1(d5[59]), .C1(GND_net), .D1(GND_net), .CIN(n1591), 
          .COUT(n1592), .S0(d5_63__N_1421[58]), .S1(d5_63__N_1421[59]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_60.INIT0 = 16'h5666;
    defparam add_7_60.INIT1 = 16'h5666;
    defparam add_7_60.INJECT1_0 = "NO";
    defparam add_7_60.INJECT1_1 = "NO";
    CCU2D add_7_58 (.A0(d4[56]), .B0(d5[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[57]), .B1(d5[57]), .C1(GND_net), .D1(GND_net), .CIN(n1590), 
          .COUT(n1591), .S0(d5_63__N_1421[56]), .S1(d5_63__N_1421[57]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_58.INIT0 = 16'h5666;
    defparam add_7_58.INIT1 = 16'h5666;
    defparam add_7_58.INJECT1_0 = "NO";
    defparam add_7_58.INJECT1_1 = "NO";
    CCU2D add_7_56 (.A0(d4[54]), .B0(d5[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[55]), .B1(d5[55]), .C1(GND_net), .D1(GND_net), .CIN(n1589), 
          .COUT(n1590), .S0(d5_63__N_1421[54]), .S1(d5_63__N_1421[55]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_56.INIT0 = 16'h5666;
    defparam add_7_56.INIT1 = 16'h5666;
    defparam add_7_56.INJECT1_0 = "NO";
    defparam add_7_56.INJECT1_1 = "NO";
    CCU2D add_7_54 (.A0(d4[52]), .B0(d5[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[53]), .B1(d5[53]), .C1(GND_net), .D1(GND_net), .CIN(n1588), 
          .COUT(n1589), .S0(d5_63__N_1421[52]), .S1(d5_63__N_1421[53]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_54.INIT0 = 16'h5666;
    defparam add_7_54.INIT1 = 16'h5666;
    defparam add_7_54.INJECT1_0 = "NO";
    defparam add_7_54.INJECT1_1 = "NO";
    CCU2D add_7_52 (.A0(d4[50]), .B0(d5[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[51]), .B1(d5[51]), .C1(GND_net), .D1(GND_net), .CIN(n1587), 
          .COUT(n1588), .S0(d5_63__N_1421[50]), .S1(d5_63__N_1421[51]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_52.INIT0 = 16'h5666;
    defparam add_7_52.INIT1 = 16'h5666;
    defparam add_7_52.INJECT1_0 = "NO";
    defparam add_7_52.INJECT1_1 = "NO";
    CCU2D add_7_50 (.A0(d4[48]), .B0(d5[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[49]), .B1(d5[49]), .C1(GND_net), .D1(GND_net), .CIN(n1586), 
          .COUT(n1587), .S0(d5_63__N_1421[48]), .S1(d5_63__N_1421[49]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_50.INIT0 = 16'h5666;
    defparam add_7_50.INIT1 = 16'h5666;
    defparam add_7_50.INJECT1_0 = "NO";
    defparam add_7_50.INJECT1_1 = "NO";
    CCU2D add_7_48 (.A0(d4[46]), .B0(d5[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[47]), .B1(d5[47]), .C1(GND_net), .D1(GND_net), .CIN(n1585), 
          .COUT(n1586), .S0(d5_63__N_1421[46]), .S1(d5_63__N_1421[47]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_48.INIT0 = 16'h5666;
    defparam add_7_48.INIT1 = 16'h5666;
    defparam add_7_48.INJECT1_0 = "NO";
    defparam add_7_48.INJECT1_1 = "NO";
    CCU2D add_7_46 (.A0(d4[44]), .B0(d5[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[45]), .B1(d5[45]), .C1(GND_net), .D1(GND_net), .CIN(n1584), 
          .COUT(n1585), .S0(d5_63__N_1421[44]), .S1(d5_63__N_1421[45]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_46.INIT0 = 16'h5666;
    defparam add_7_46.INIT1 = 16'h5666;
    defparam add_7_46.INJECT1_0 = "NO";
    defparam add_7_46.INJECT1_1 = "NO";
    CCU2D add_7_44 (.A0(d4[42]), .B0(d5[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[43]), .B1(d5[43]), .C1(GND_net), .D1(GND_net), .CIN(n1583), 
          .COUT(n1584), .S0(d5_63__N_1421[42]), .S1(d5_63__N_1421[43]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_44.INIT0 = 16'h5666;
    defparam add_7_44.INIT1 = 16'h5666;
    defparam add_7_44.INJECT1_0 = "NO";
    defparam add_7_44.INJECT1_1 = "NO";
    CCU2D add_7_42 (.A0(d4[40]), .B0(d5[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[41]), .B1(d5[41]), .C1(GND_net), .D1(GND_net), .CIN(n1582), 
          .COUT(n1583), .S0(d5_63__N_1421[40]), .S1(d5_63__N_1421[41]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_42.INIT0 = 16'h5666;
    defparam add_7_42.INIT1 = 16'h5666;
    defparam add_7_42.INJECT1_0 = "NO";
    defparam add_7_42.INJECT1_1 = "NO";
    CCU2D add_7_40 (.A0(d4[38]), .B0(d5[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[39]), .B1(d5[39]), .C1(GND_net), .D1(GND_net), .CIN(n1581), 
          .COUT(n1582), .S0(d5_63__N_1421[38]), .S1(d5_63__N_1421[39]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_40.INIT0 = 16'h5666;
    defparam add_7_40.INIT1 = 16'h5666;
    defparam add_7_40.INJECT1_0 = "NO";
    defparam add_7_40.INJECT1_1 = "NO";
    CCU2D add_7_38 (.A0(d4[36]), .B0(d5[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[37]), .B1(d5[37]), .C1(GND_net), .D1(GND_net), .CIN(n1580), 
          .COUT(n1581), .S0(d5_63__N_1421[36]), .S1(d5_63__N_1421[37]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_38.INIT0 = 16'h5666;
    defparam add_7_38.INIT1 = 16'h5666;
    defparam add_7_38.INJECT1_0 = "NO";
    defparam add_7_38.INJECT1_1 = "NO";
    CCU2D add_7_36 (.A0(d4[34]), .B0(d5[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[35]), .B1(d5[35]), .C1(GND_net), .D1(GND_net), .CIN(n1579), 
          .COUT(n1580), .S0(d5_63__N_1421[34]), .S1(d5_63__N_1421[35]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_36.INIT0 = 16'h5666;
    defparam add_7_36.INIT1 = 16'h5666;
    defparam add_7_36.INJECT1_0 = "NO";
    defparam add_7_36.INJECT1_1 = "NO";
    CCU2D add_7_34 (.A0(d4[32]), .B0(d5[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[33]), .B1(d5[33]), .C1(GND_net), .D1(GND_net), .CIN(n1578), 
          .COUT(n1579), .S0(d5_63__N_1421[32]), .S1(d5_63__N_1421[33]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_34.INIT0 = 16'h5666;
    defparam add_7_34.INIT1 = 16'h5666;
    defparam add_7_34.INJECT1_0 = "NO";
    defparam add_7_34.INJECT1_1 = "NO";
    CCU2D add_7_32 (.A0(d4[30]), .B0(d5[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[31]), .B1(d5[31]), .C1(GND_net), .D1(GND_net), .CIN(n1577), 
          .COUT(n1578), .S0(d5_63__N_1421[30]), .S1(d5_63__N_1421[31]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_32.INIT0 = 16'h5666;
    defparam add_7_32.INIT1 = 16'h5666;
    defparam add_7_32.INJECT1_0 = "NO";
    defparam add_7_32.INJECT1_1 = "NO";
    CCU2D add_7_30 (.A0(d4[28]), .B0(d5[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[29]), .B1(d5[29]), .C1(GND_net), .D1(GND_net), .CIN(n1576), 
          .COUT(n1577), .S0(d5_63__N_1421[28]), .S1(d5_63__N_1421[29]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_30.INIT0 = 16'h5666;
    defparam add_7_30.INIT1 = 16'h5666;
    defparam add_7_30.INJECT1_0 = "NO";
    defparam add_7_30.INJECT1_1 = "NO";
    CCU2D add_7_28 (.A0(d4[26]), .B0(d5[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[27]), .B1(d5[27]), .C1(GND_net), .D1(GND_net), .CIN(n1575), 
          .COUT(n1576), .S0(d5_63__N_1421[26]), .S1(d5_63__N_1421[27]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_28.INIT0 = 16'h5666;
    defparam add_7_28.INIT1 = 16'h5666;
    defparam add_7_28.INJECT1_0 = "NO";
    defparam add_7_28.INJECT1_1 = "NO";
    CCU2D add_7_26 (.A0(d4[24]), .B0(d5[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[25]), .B1(d5[25]), .C1(GND_net), .D1(GND_net), .CIN(n1574), 
          .COUT(n1575), .S0(d5_63__N_1421[24]), .S1(d5_63__N_1421[25]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_26.INIT0 = 16'h5666;
    defparam add_7_26.INIT1 = 16'h5666;
    defparam add_7_26.INJECT1_0 = "NO";
    defparam add_7_26.INJECT1_1 = "NO";
    CCU2D add_7_24 (.A0(d4[22]), .B0(d5[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[23]), .B1(d5[23]), .C1(GND_net), .D1(GND_net), .CIN(n1573), 
          .COUT(n1574), .S0(d5_63__N_1421[22]), .S1(d5_63__N_1421[23]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_24.INIT0 = 16'h5666;
    defparam add_7_24.INIT1 = 16'h5666;
    defparam add_7_24.INJECT1_0 = "NO";
    defparam add_7_24.INJECT1_1 = "NO";
    CCU2D add_7_22 (.A0(d4[20]), .B0(d5[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[21]), .B1(d5[21]), .C1(GND_net), .D1(GND_net), .CIN(n1572), 
          .COUT(n1573), .S0(d5_63__N_1421[20]), .S1(d5_63__N_1421[21]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_22.INIT0 = 16'h5666;
    defparam add_7_22.INIT1 = 16'h5666;
    defparam add_7_22.INJECT1_0 = "NO";
    defparam add_7_22.INJECT1_1 = "NO";
    CCU2D add_7_20 (.A0(d4[18]), .B0(d5[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[19]), .B1(d5[19]), .C1(GND_net), .D1(GND_net), .CIN(n1571), 
          .COUT(n1572), .S0(d5_63__N_1421[18]), .S1(d5_63__N_1421[19]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_20.INIT0 = 16'h5666;
    defparam add_7_20.INIT1 = 16'h5666;
    defparam add_7_20.INJECT1_0 = "NO";
    defparam add_7_20.INJECT1_1 = "NO";
    CCU2D add_7_18 (.A0(d4[16]), .B0(d5[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[17]), .B1(d5[17]), .C1(GND_net), .D1(GND_net), .CIN(n1570), 
          .COUT(n1571), .S0(d5_63__N_1421[16]), .S1(d5_63__N_1421[17]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_18.INIT0 = 16'h5666;
    defparam add_7_18.INIT1 = 16'h5666;
    defparam add_7_18.INJECT1_0 = "NO";
    defparam add_7_18.INJECT1_1 = "NO";
    CCU2D add_7_16 (.A0(d4[14]), .B0(d5[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[15]), .B1(d5[15]), .C1(GND_net), .D1(GND_net), .CIN(n1569), 
          .COUT(n1570), .S0(d5_63__N_1421[14]), .S1(d5_63__N_1421[15]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_16.INIT0 = 16'h5666;
    defparam add_7_16.INIT1 = 16'h5666;
    defparam add_7_16.INJECT1_0 = "NO";
    defparam add_7_16.INJECT1_1 = "NO";
    CCU2D add_7_14 (.A0(d4[12]), .B0(d5[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[13]), .B1(d5[13]), .C1(GND_net), .D1(GND_net), .CIN(n1568), 
          .COUT(n1569), .S0(d5_63__N_1421[12]), .S1(d5_63__N_1421[13]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_14.INIT0 = 16'h5666;
    defparam add_7_14.INIT1 = 16'h5666;
    defparam add_7_14.INJECT1_0 = "NO";
    defparam add_7_14.INJECT1_1 = "NO";
    CCU2D add_7_12 (.A0(d4[10]), .B0(d5[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[11]), .B1(d5[11]), .C1(GND_net), .D1(GND_net), .CIN(n1567), 
          .COUT(n1568), .S0(d5_63__N_1421[10]), .S1(d5_63__N_1421[11]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_12.INIT0 = 16'h5666;
    defparam add_7_12.INIT1 = 16'h5666;
    defparam add_7_12.INJECT1_0 = "NO";
    defparam add_7_12.INJECT1_1 = "NO";
    CCU2D add_7_10 (.A0(d4[8]), .B0(d5[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[9]), .B1(d5[9]), .C1(GND_net), .D1(GND_net), .CIN(n1566), 
          .COUT(n1567), .S0(d5_63__N_1421[8]), .S1(d5_63__N_1421[9]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_10.INIT0 = 16'h5666;
    defparam add_7_10.INIT1 = 16'h5666;
    defparam add_7_10.INJECT1_0 = "NO";
    defparam add_7_10.INJECT1_1 = "NO";
    CCU2D add_7_8 (.A0(d4[6]), .B0(d5[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[7]), .B1(d5[7]), .C1(GND_net), .D1(GND_net), .CIN(n1565), 
          .COUT(n1566), .S0(d5_63__N_1421[6]), .S1(d5_63__N_1421[7]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_8.INIT0 = 16'h5666;
    defparam add_7_8.INIT1 = 16'h5666;
    defparam add_7_8.INJECT1_0 = "NO";
    defparam add_7_8.INJECT1_1 = "NO";
    CCU2D add_7_6 (.A0(d4[4]), .B0(d5[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[5]), .B1(d5[5]), .C1(GND_net), .D1(GND_net), .CIN(n1564), 
          .COUT(n1565), .S0(d5_63__N_1421[4]), .S1(d5_63__N_1421[5]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_6.INIT0 = 16'h5666;
    defparam add_7_6.INIT1 = 16'h5666;
    defparam add_7_6.INJECT1_0 = "NO";
    defparam add_7_6.INJECT1_1 = "NO";
    CCU2D add_7_4 (.A0(d4[2]), .B0(d5[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[3]), .B1(d5[3]), .C1(GND_net), .D1(GND_net), .CIN(n1563), 
          .COUT(n1564), .S0(d5_63__N_1421[2]), .S1(d5_63__N_1421[3]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_4.INIT0 = 16'h5666;
    defparam add_7_4.INIT1 = 16'h5666;
    defparam add_7_4.INJECT1_0 = "NO";
    defparam add_7_4.INJECT1_1 = "NO";
    CCU2D add_7_2 (.A0(d4[0]), .B0(d5[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d4[1]), .B1(d5[1]), .C1(GND_net), .D1(GND_net), .COUT(n1563), 
          .S1(d5_63__N_1421[1]));   // c:/users/user/lattice/fpgasdr/cic.v(59[10:17])
    defparam add_7_2.INIT0 = 16'h7000;
    defparam add_7_2.INIT1 = 16'h5666;
    defparam add_7_2.INJECT1_0 = "NO";
    defparam add_7_2.INJECT1_1 = "NO";
    CCU2D add_6_64 (.A0(d3[62]), .B0(d4[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[63]), .B1(d4[63]), .C1(GND_net), .D1(GND_net), .CIN(n1560), 
          .S0(d4_63__N_1357[62]), .S1(d4_63__N_1357[63]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_64.INIT0 = 16'h5666;
    defparam add_6_64.INIT1 = 16'h5666;
    defparam add_6_64.INJECT1_0 = "NO";
    defparam add_6_64.INJECT1_1 = "NO";
    CCU2D add_6_62 (.A0(d3[60]), .B0(d4[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[61]), .B1(d4[61]), .C1(GND_net), .D1(GND_net), .CIN(n1559), 
          .COUT(n1560), .S0(d4_63__N_1357[60]), .S1(d4_63__N_1357[61]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_62.INIT0 = 16'h5666;
    defparam add_6_62.INIT1 = 16'h5666;
    defparam add_6_62.INJECT1_0 = "NO";
    defparam add_6_62.INJECT1_1 = "NO";
    CCU2D add_6_60 (.A0(d3[58]), .B0(d4[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[59]), .B1(d4[59]), .C1(GND_net), .D1(GND_net), .CIN(n1558), 
          .COUT(n1559), .S0(d4_63__N_1357[58]), .S1(d4_63__N_1357[59]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_60.INIT0 = 16'h5666;
    defparam add_6_60.INIT1 = 16'h5666;
    defparam add_6_60.INJECT1_0 = "NO";
    defparam add_6_60.INJECT1_1 = "NO";
    CCU2D add_6_58 (.A0(d3[56]), .B0(d4[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[57]), .B1(d4[57]), .C1(GND_net), .D1(GND_net), .CIN(n1557), 
          .COUT(n1558), .S0(d4_63__N_1357[56]), .S1(d4_63__N_1357[57]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_58.INIT0 = 16'h5666;
    defparam add_6_58.INIT1 = 16'h5666;
    defparam add_6_58.INJECT1_0 = "NO";
    defparam add_6_58.INJECT1_1 = "NO";
    CCU2D add_6_56 (.A0(d3[54]), .B0(d4[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[55]), .B1(d4[55]), .C1(GND_net), .D1(GND_net), .CIN(n1556), 
          .COUT(n1557), .S0(d4_63__N_1357[54]), .S1(d4_63__N_1357[55]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_56.INIT0 = 16'h5666;
    defparam add_6_56.INIT1 = 16'h5666;
    defparam add_6_56.INJECT1_0 = "NO";
    defparam add_6_56.INJECT1_1 = "NO";
    CCU2D add_6_54 (.A0(d3[52]), .B0(d4[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[53]), .B1(d4[53]), .C1(GND_net), .D1(GND_net), .CIN(n1555), 
          .COUT(n1556), .S0(d4_63__N_1357[52]), .S1(d4_63__N_1357[53]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_54.INIT0 = 16'h5666;
    defparam add_6_54.INIT1 = 16'h5666;
    defparam add_6_54.INJECT1_0 = "NO";
    defparam add_6_54.INJECT1_1 = "NO";
    CCU2D add_6_52 (.A0(d3[50]), .B0(d4[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[51]), .B1(d4[51]), .C1(GND_net), .D1(GND_net), .CIN(n1554), 
          .COUT(n1555), .S0(d4_63__N_1357[50]), .S1(d4_63__N_1357[51]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_52.INIT0 = 16'h5666;
    defparam add_6_52.INIT1 = 16'h5666;
    defparam add_6_52.INJECT1_0 = "NO";
    defparam add_6_52.INJECT1_1 = "NO";
    CCU2D add_6_50 (.A0(d3[48]), .B0(d4[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[49]), .B1(d4[49]), .C1(GND_net), .D1(GND_net), .CIN(n1553), 
          .COUT(n1554), .S0(d4_63__N_1357[48]), .S1(d4_63__N_1357[49]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_50.INIT0 = 16'h5666;
    defparam add_6_50.INIT1 = 16'h5666;
    defparam add_6_50.INJECT1_0 = "NO";
    defparam add_6_50.INJECT1_1 = "NO";
    CCU2D add_6_48 (.A0(d3[46]), .B0(d4[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[47]), .B1(d4[47]), .C1(GND_net), .D1(GND_net), .CIN(n1552), 
          .COUT(n1553), .S0(d4_63__N_1357[46]), .S1(d4_63__N_1357[47]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_48.INIT0 = 16'h5666;
    defparam add_6_48.INIT1 = 16'h5666;
    defparam add_6_48.INJECT1_0 = "NO";
    defparam add_6_48.INJECT1_1 = "NO";
    CCU2D add_6_46 (.A0(d3[44]), .B0(d4[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[45]), .B1(d4[45]), .C1(GND_net), .D1(GND_net), .CIN(n1551), 
          .COUT(n1552), .S0(d4_63__N_1357[44]), .S1(d4_63__N_1357[45]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_46.INIT0 = 16'h5666;
    defparam add_6_46.INIT1 = 16'h5666;
    defparam add_6_46.INJECT1_0 = "NO";
    defparam add_6_46.INJECT1_1 = "NO";
    CCU2D add_6_44 (.A0(d3[42]), .B0(d4[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[43]), .B1(d4[43]), .C1(GND_net), .D1(GND_net), .CIN(n1550), 
          .COUT(n1551), .S0(d4_63__N_1357[42]), .S1(d4_63__N_1357[43]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_44.INIT0 = 16'h5666;
    defparam add_6_44.INIT1 = 16'h5666;
    defparam add_6_44.INJECT1_0 = "NO";
    defparam add_6_44.INJECT1_1 = "NO";
    CCU2D add_6_42 (.A0(d3[40]), .B0(d4[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[41]), .B1(d4[41]), .C1(GND_net), .D1(GND_net), .CIN(n1549), 
          .COUT(n1550), .S0(d4_63__N_1357[40]), .S1(d4_63__N_1357[41]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_42.INIT0 = 16'h5666;
    defparam add_6_42.INIT1 = 16'h5666;
    defparam add_6_42.INJECT1_0 = "NO";
    defparam add_6_42.INJECT1_1 = "NO";
    CCU2D add_6_40 (.A0(d3[38]), .B0(d4[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[39]), .B1(d4[39]), .C1(GND_net), .D1(GND_net), .CIN(n1548), 
          .COUT(n1549), .S0(d4_63__N_1357[38]), .S1(d4_63__N_1357[39]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_40.INIT0 = 16'h5666;
    defparam add_6_40.INIT1 = 16'h5666;
    defparam add_6_40.INJECT1_0 = "NO";
    defparam add_6_40.INJECT1_1 = "NO";
    CCU2D add_6_38 (.A0(d3[36]), .B0(d4[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[37]), .B1(d4[37]), .C1(GND_net), .D1(GND_net), .CIN(n1547), 
          .COUT(n1548), .S0(d4_63__N_1357[36]), .S1(d4_63__N_1357[37]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_38.INIT0 = 16'h5666;
    defparam add_6_38.INIT1 = 16'h5666;
    defparam add_6_38.INJECT1_0 = "NO";
    defparam add_6_38.INJECT1_1 = "NO";
    CCU2D add_6_36 (.A0(d3[34]), .B0(d4[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[35]), .B1(d4[35]), .C1(GND_net), .D1(GND_net), .CIN(n1546), 
          .COUT(n1547), .S0(d4_63__N_1357[34]), .S1(d4_63__N_1357[35]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_36.INIT0 = 16'h5666;
    defparam add_6_36.INIT1 = 16'h5666;
    defparam add_6_36.INJECT1_0 = "NO";
    defparam add_6_36.INJECT1_1 = "NO";
    CCU2D add_6_34 (.A0(d3[32]), .B0(d4[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[33]), .B1(d4[33]), .C1(GND_net), .D1(GND_net), .CIN(n1545), 
          .COUT(n1546), .S0(d4_63__N_1357[32]), .S1(d4_63__N_1357[33]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_34.INIT0 = 16'h5666;
    defparam add_6_34.INIT1 = 16'h5666;
    defparam add_6_34.INJECT1_0 = "NO";
    defparam add_6_34.INJECT1_1 = "NO";
    CCU2D add_6_32 (.A0(d3[30]), .B0(d4[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[31]), .B1(d4[31]), .C1(GND_net), .D1(GND_net), .CIN(n1544), 
          .COUT(n1545), .S0(d4_63__N_1357[30]), .S1(d4_63__N_1357[31]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_32.INIT0 = 16'h5666;
    defparam add_6_32.INIT1 = 16'h5666;
    defparam add_6_32.INJECT1_0 = "NO";
    defparam add_6_32.INJECT1_1 = "NO";
    CCU2D add_6_30 (.A0(d3[28]), .B0(d4[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[29]), .B1(d4[29]), .C1(GND_net), .D1(GND_net), .CIN(n1543), 
          .COUT(n1544), .S0(d4_63__N_1357[28]), .S1(d4_63__N_1357[29]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_30.INIT0 = 16'h5666;
    defparam add_6_30.INIT1 = 16'h5666;
    defparam add_6_30.INJECT1_0 = "NO";
    defparam add_6_30.INJECT1_1 = "NO";
    CCU2D add_6_28 (.A0(d3[26]), .B0(d4[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[27]), .B1(d4[27]), .C1(GND_net), .D1(GND_net), .CIN(n1542), 
          .COUT(n1543), .S0(d4_63__N_1357[26]), .S1(d4_63__N_1357[27]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_28.INIT0 = 16'h5666;
    defparam add_6_28.INIT1 = 16'h5666;
    defparam add_6_28.INJECT1_0 = "NO";
    defparam add_6_28.INJECT1_1 = "NO";
    CCU2D add_6_26 (.A0(d3[24]), .B0(d4[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[25]), .B1(d4[25]), .C1(GND_net), .D1(GND_net), .CIN(n1541), 
          .COUT(n1542), .S0(d4_63__N_1357[24]), .S1(d4_63__N_1357[25]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_26.INIT0 = 16'h5666;
    defparam add_6_26.INIT1 = 16'h5666;
    defparam add_6_26.INJECT1_0 = "NO";
    defparam add_6_26.INJECT1_1 = "NO";
    CCU2D add_6_24 (.A0(d3[22]), .B0(d4[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[23]), .B1(d4[23]), .C1(GND_net), .D1(GND_net), .CIN(n1540), 
          .COUT(n1541), .S0(d4_63__N_1357[22]), .S1(d4_63__N_1357[23]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_24.INIT0 = 16'h5666;
    defparam add_6_24.INIT1 = 16'h5666;
    defparam add_6_24.INJECT1_0 = "NO";
    defparam add_6_24.INJECT1_1 = "NO";
    CCU2D add_6_22 (.A0(d3[20]), .B0(d4[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[21]), .B1(d4[21]), .C1(GND_net), .D1(GND_net), .CIN(n1539), 
          .COUT(n1540), .S0(d4_63__N_1357[20]), .S1(d4_63__N_1357[21]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_22.INIT0 = 16'h5666;
    defparam add_6_22.INIT1 = 16'h5666;
    defparam add_6_22.INJECT1_0 = "NO";
    defparam add_6_22.INJECT1_1 = "NO";
    CCU2D add_6_20 (.A0(d3[18]), .B0(d4[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[19]), .B1(d4[19]), .C1(GND_net), .D1(GND_net), .CIN(n1538), 
          .COUT(n1539), .S0(d4_63__N_1357[18]), .S1(d4_63__N_1357[19]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_20.INIT0 = 16'h5666;
    defparam add_6_20.INIT1 = 16'h5666;
    defparam add_6_20.INJECT1_0 = "NO";
    defparam add_6_20.INJECT1_1 = "NO";
    CCU2D add_6_18 (.A0(d3[16]), .B0(d4[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[17]), .B1(d4[17]), .C1(GND_net), .D1(GND_net), .CIN(n1537), 
          .COUT(n1538), .S0(d4_63__N_1357[16]), .S1(d4_63__N_1357[17]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_18.INIT0 = 16'h5666;
    defparam add_6_18.INIT1 = 16'h5666;
    defparam add_6_18.INJECT1_0 = "NO";
    defparam add_6_18.INJECT1_1 = "NO";
    CCU2D add_6_16 (.A0(d3[14]), .B0(d4[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[15]), .B1(d4[15]), .C1(GND_net), .D1(GND_net), .CIN(n1536), 
          .COUT(n1537), .S0(d4_63__N_1357[14]), .S1(d4_63__N_1357[15]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_16.INIT0 = 16'h5666;
    defparam add_6_16.INIT1 = 16'h5666;
    defparam add_6_16.INJECT1_0 = "NO";
    defparam add_6_16.INJECT1_1 = "NO";
    CCU2D add_6_14 (.A0(d3[12]), .B0(d4[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[13]), .B1(d4[13]), .C1(GND_net), .D1(GND_net), .CIN(n1535), 
          .COUT(n1536), .S0(d4_63__N_1357[12]), .S1(d4_63__N_1357[13]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_14.INIT0 = 16'h5666;
    defparam add_6_14.INIT1 = 16'h5666;
    defparam add_6_14.INJECT1_0 = "NO";
    defparam add_6_14.INJECT1_1 = "NO";
    CCU2D add_6_12 (.A0(d3[10]), .B0(d4[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[11]), .B1(d4[11]), .C1(GND_net), .D1(GND_net), .CIN(n1534), 
          .COUT(n1535), .S0(d4_63__N_1357[10]), .S1(d4_63__N_1357[11]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_12.INIT0 = 16'h5666;
    defparam add_6_12.INIT1 = 16'h5666;
    defparam add_6_12.INJECT1_0 = "NO";
    defparam add_6_12.INJECT1_1 = "NO";
    CCU2D add_6_10 (.A0(d3[8]), .B0(d4[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[9]), .B1(d4[9]), .C1(GND_net), .D1(GND_net), .CIN(n1533), 
          .COUT(n1534), .S0(d4_63__N_1357[8]), .S1(d4_63__N_1357[9]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_10.INIT0 = 16'h5666;
    defparam add_6_10.INIT1 = 16'h5666;
    defparam add_6_10.INJECT1_0 = "NO";
    defparam add_6_10.INJECT1_1 = "NO";
    CCU2D add_6_8 (.A0(d3[6]), .B0(d4[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[7]), .B1(d4[7]), .C1(GND_net), .D1(GND_net), .CIN(n1532), 
          .COUT(n1533), .S0(d4_63__N_1357[6]), .S1(d4_63__N_1357[7]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_8.INIT0 = 16'h5666;
    defparam add_6_8.INIT1 = 16'h5666;
    defparam add_6_8.INJECT1_0 = "NO";
    defparam add_6_8.INJECT1_1 = "NO";
    CCU2D add_6_6 (.A0(d3[4]), .B0(d4[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[5]), .B1(d4[5]), .C1(GND_net), .D1(GND_net), .CIN(n1531), 
          .COUT(n1532), .S0(d4_63__N_1357[4]), .S1(d4_63__N_1357[5]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_6.INIT0 = 16'h5666;
    defparam add_6_6.INIT1 = 16'h5666;
    defparam add_6_6.INJECT1_0 = "NO";
    defparam add_6_6.INJECT1_1 = "NO";
    CCU2D add_6_4 (.A0(d3[2]), .B0(d4[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[3]), .B1(d4[3]), .C1(GND_net), .D1(GND_net), .CIN(n1530), 
          .COUT(n1531), .S0(d4_63__N_1357[2]), .S1(d4_63__N_1357[3]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_4.INIT0 = 16'h5666;
    defparam add_6_4.INIT1 = 16'h5666;
    defparam add_6_4.INJECT1_0 = "NO";
    defparam add_6_4.INJECT1_1 = "NO";
    CCU2D add_6_2 (.A0(d3[0]), .B0(d4[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d3[1]), .B1(d4[1]), .C1(GND_net), .D1(GND_net), .COUT(n1530), 
          .S1(d4_63__N_1357[1]));   // c:/users/user/lattice/fpgasdr/cic.v(57[10:17])
    defparam add_6_2.INIT0 = 16'h7000;
    defparam add_6_2.INIT1 = 16'h5666;
    defparam add_6_2.INJECT1_0 = "NO";
    defparam add_6_2.INJECT1_1 = "NO";
    CCU2D add_5_64 (.A0(d2[62]), .B0(d3[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[63]), .B1(d3[63]), .C1(GND_net), .D1(GND_net), .CIN(n1527), 
          .S0(d3_63__N_1293[62]), .S1(d3_63__N_1293[63]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_64.INIT0 = 16'h5666;
    defparam add_5_64.INIT1 = 16'h5666;
    defparam add_5_64.INJECT1_0 = "NO";
    defparam add_5_64.INJECT1_1 = "NO";
    CCU2D add_5_62 (.A0(d2[60]), .B0(d3[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[61]), .B1(d3[61]), .C1(GND_net), .D1(GND_net), .CIN(n1526), 
          .COUT(n1527), .S0(d3_63__N_1293[60]), .S1(d3_63__N_1293[61]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_62.INIT0 = 16'h5666;
    defparam add_5_62.INIT1 = 16'h5666;
    defparam add_5_62.INJECT1_0 = "NO";
    defparam add_5_62.INJECT1_1 = "NO";
    CCU2D add_5_60 (.A0(d2[58]), .B0(d3[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[59]), .B1(d3[59]), .C1(GND_net), .D1(GND_net), .CIN(n1525), 
          .COUT(n1526), .S0(d3_63__N_1293[58]), .S1(d3_63__N_1293[59]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_60.INIT0 = 16'h5666;
    defparam add_5_60.INIT1 = 16'h5666;
    defparam add_5_60.INJECT1_0 = "NO";
    defparam add_5_60.INJECT1_1 = "NO";
    CCU2D add_5_58 (.A0(d2[56]), .B0(d3[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[57]), .B1(d3[57]), .C1(GND_net), .D1(GND_net), .CIN(n1524), 
          .COUT(n1525), .S0(d3_63__N_1293[56]), .S1(d3_63__N_1293[57]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_58.INIT0 = 16'h5666;
    defparam add_5_58.INIT1 = 16'h5666;
    defparam add_5_58.INJECT1_0 = "NO";
    defparam add_5_58.INJECT1_1 = "NO";
    CCU2D add_5_56 (.A0(d2[54]), .B0(d3[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[55]), .B1(d3[55]), .C1(GND_net), .D1(GND_net), .CIN(n1523), 
          .COUT(n1524), .S0(d3_63__N_1293[54]), .S1(d3_63__N_1293[55]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_56.INIT0 = 16'h5666;
    defparam add_5_56.INIT1 = 16'h5666;
    defparam add_5_56.INJECT1_0 = "NO";
    defparam add_5_56.INJECT1_1 = "NO";
    CCU2D add_5_54 (.A0(d2[52]), .B0(d3[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[53]), .B1(d3[53]), .C1(GND_net), .D1(GND_net), .CIN(n1522), 
          .COUT(n1523), .S0(d3_63__N_1293[52]), .S1(d3_63__N_1293[53]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_54.INIT0 = 16'h5666;
    defparam add_5_54.INIT1 = 16'h5666;
    defparam add_5_54.INJECT1_0 = "NO";
    defparam add_5_54.INJECT1_1 = "NO";
    CCU2D add_5_52 (.A0(d2[50]), .B0(d3[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[51]), .B1(d3[51]), .C1(GND_net), .D1(GND_net), .CIN(n1521), 
          .COUT(n1522), .S0(d3_63__N_1293[50]), .S1(d3_63__N_1293[51]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_52.INIT0 = 16'h5666;
    defparam add_5_52.INIT1 = 16'h5666;
    defparam add_5_52.INJECT1_0 = "NO";
    defparam add_5_52.INJECT1_1 = "NO";
    CCU2D add_5_50 (.A0(d2[48]), .B0(d3[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[49]), .B1(d3[49]), .C1(GND_net), .D1(GND_net), .CIN(n1520), 
          .COUT(n1521), .S0(d3_63__N_1293[48]), .S1(d3_63__N_1293[49]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_50.INIT0 = 16'h5666;
    defparam add_5_50.INIT1 = 16'h5666;
    defparam add_5_50.INJECT1_0 = "NO";
    defparam add_5_50.INJECT1_1 = "NO";
    CCU2D add_5_48 (.A0(d2[46]), .B0(d3[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[47]), .B1(d3[47]), .C1(GND_net), .D1(GND_net), .CIN(n1519), 
          .COUT(n1520), .S0(d3_63__N_1293[46]), .S1(d3_63__N_1293[47]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_48.INIT0 = 16'h5666;
    defparam add_5_48.INIT1 = 16'h5666;
    defparam add_5_48.INJECT1_0 = "NO";
    defparam add_5_48.INJECT1_1 = "NO";
    CCU2D add_5_46 (.A0(d2[44]), .B0(d3[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[45]), .B1(d3[45]), .C1(GND_net), .D1(GND_net), .CIN(n1518), 
          .COUT(n1519), .S0(d3_63__N_1293[44]), .S1(d3_63__N_1293[45]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_46.INIT0 = 16'h5666;
    defparam add_5_46.INIT1 = 16'h5666;
    defparam add_5_46.INJECT1_0 = "NO";
    defparam add_5_46.INJECT1_1 = "NO";
    CCU2D add_5_44 (.A0(d2[42]), .B0(d3[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[43]), .B1(d3[43]), .C1(GND_net), .D1(GND_net), .CIN(n1517), 
          .COUT(n1518), .S0(d3_63__N_1293[42]), .S1(d3_63__N_1293[43]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_44.INIT0 = 16'h5666;
    defparam add_5_44.INIT1 = 16'h5666;
    defparam add_5_44.INJECT1_0 = "NO";
    defparam add_5_44.INJECT1_1 = "NO";
    CCU2D add_5_42 (.A0(d2[40]), .B0(d3[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[41]), .B1(d3[41]), .C1(GND_net), .D1(GND_net), .CIN(n1516), 
          .COUT(n1517), .S0(d3_63__N_1293[40]), .S1(d3_63__N_1293[41]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_42.INIT0 = 16'h5666;
    defparam add_5_42.INIT1 = 16'h5666;
    defparam add_5_42.INJECT1_0 = "NO";
    defparam add_5_42.INJECT1_1 = "NO";
    CCU2D add_5_40 (.A0(d2[38]), .B0(d3[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[39]), .B1(d3[39]), .C1(GND_net), .D1(GND_net), .CIN(n1515), 
          .COUT(n1516), .S0(d3_63__N_1293[38]), .S1(d3_63__N_1293[39]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_40.INIT0 = 16'h5666;
    defparam add_5_40.INIT1 = 16'h5666;
    defparam add_5_40.INJECT1_0 = "NO";
    defparam add_5_40.INJECT1_1 = "NO";
    CCU2D add_5_38 (.A0(d2[36]), .B0(d3[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[37]), .B1(d3[37]), .C1(GND_net), .D1(GND_net), .CIN(n1514), 
          .COUT(n1515), .S0(d3_63__N_1293[36]), .S1(d3_63__N_1293[37]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_38.INIT0 = 16'h5666;
    defparam add_5_38.INIT1 = 16'h5666;
    defparam add_5_38.INJECT1_0 = "NO";
    defparam add_5_38.INJECT1_1 = "NO";
    CCU2D add_5_36 (.A0(d2[34]), .B0(d3[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[35]), .B1(d3[35]), .C1(GND_net), .D1(GND_net), .CIN(n1513), 
          .COUT(n1514), .S0(d3_63__N_1293[34]), .S1(d3_63__N_1293[35]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_36.INIT0 = 16'h5666;
    defparam add_5_36.INIT1 = 16'h5666;
    defparam add_5_36.INJECT1_0 = "NO";
    defparam add_5_36.INJECT1_1 = "NO";
    CCU2D add_5_34 (.A0(d2[32]), .B0(d3[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[33]), .B1(d3[33]), .C1(GND_net), .D1(GND_net), .CIN(n1512), 
          .COUT(n1513), .S0(d3_63__N_1293[32]), .S1(d3_63__N_1293[33]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_34.INIT0 = 16'h5666;
    defparam add_5_34.INIT1 = 16'h5666;
    defparam add_5_34.INJECT1_0 = "NO";
    defparam add_5_34.INJECT1_1 = "NO";
    CCU2D add_5_32 (.A0(d2[30]), .B0(d3[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[31]), .B1(d3[31]), .C1(GND_net), .D1(GND_net), .CIN(n1511), 
          .COUT(n1512), .S0(d3_63__N_1293[30]), .S1(d3_63__N_1293[31]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_32.INIT0 = 16'h5666;
    defparam add_5_32.INIT1 = 16'h5666;
    defparam add_5_32.INJECT1_0 = "NO";
    defparam add_5_32.INJECT1_1 = "NO";
    CCU2D add_5_30 (.A0(d2[28]), .B0(d3[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[29]), .B1(d3[29]), .C1(GND_net), .D1(GND_net), .CIN(n1510), 
          .COUT(n1511), .S0(d3_63__N_1293[28]), .S1(d3_63__N_1293[29]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_30.INIT0 = 16'h5666;
    defparam add_5_30.INIT1 = 16'h5666;
    defparam add_5_30.INJECT1_0 = "NO";
    defparam add_5_30.INJECT1_1 = "NO";
    CCU2D add_5_28 (.A0(d2[26]), .B0(d3[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[27]), .B1(d3[27]), .C1(GND_net), .D1(GND_net), .CIN(n1509), 
          .COUT(n1510), .S0(d3_63__N_1293[26]), .S1(d3_63__N_1293[27]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_28.INIT0 = 16'h5666;
    defparam add_5_28.INIT1 = 16'h5666;
    defparam add_5_28.INJECT1_0 = "NO";
    defparam add_5_28.INJECT1_1 = "NO";
    CCU2D add_5_26 (.A0(d2[24]), .B0(d3[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[25]), .B1(d3[25]), .C1(GND_net), .D1(GND_net), .CIN(n1508), 
          .COUT(n1509), .S0(d3_63__N_1293[24]), .S1(d3_63__N_1293[25]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_26.INIT0 = 16'h5666;
    defparam add_5_26.INIT1 = 16'h5666;
    defparam add_5_26.INJECT1_0 = "NO";
    defparam add_5_26.INJECT1_1 = "NO";
    CCU2D add_5_24 (.A0(d2[22]), .B0(d3[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[23]), .B1(d3[23]), .C1(GND_net), .D1(GND_net), .CIN(n1507), 
          .COUT(n1508), .S0(d3_63__N_1293[22]), .S1(d3_63__N_1293[23]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_24.INIT0 = 16'h5666;
    defparam add_5_24.INIT1 = 16'h5666;
    defparam add_5_24.INJECT1_0 = "NO";
    defparam add_5_24.INJECT1_1 = "NO";
    CCU2D add_5_22 (.A0(d2[20]), .B0(d3[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[21]), .B1(d3[21]), .C1(GND_net), .D1(GND_net), .CIN(n1506), 
          .COUT(n1507), .S0(d3_63__N_1293[20]), .S1(d3_63__N_1293[21]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_22.INIT0 = 16'h5666;
    defparam add_5_22.INIT1 = 16'h5666;
    defparam add_5_22.INJECT1_0 = "NO";
    defparam add_5_22.INJECT1_1 = "NO";
    CCU2D add_5_20 (.A0(d2[18]), .B0(d3[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[19]), .B1(d3[19]), .C1(GND_net), .D1(GND_net), .CIN(n1505), 
          .COUT(n1506), .S0(d3_63__N_1293[18]), .S1(d3_63__N_1293[19]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_20.INIT0 = 16'h5666;
    defparam add_5_20.INIT1 = 16'h5666;
    defparam add_5_20.INJECT1_0 = "NO";
    defparam add_5_20.INJECT1_1 = "NO";
    CCU2D add_5_18 (.A0(d2[16]), .B0(d3[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[17]), .B1(d3[17]), .C1(GND_net), .D1(GND_net), .CIN(n1504), 
          .COUT(n1505), .S0(d3_63__N_1293[16]), .S1(d3_63__N_1293[17]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_18.INIT0 = 16'h5666;
    defparam add_5_18.INIT1 = 16'h5666;
    defparam add_5_18.INJECT1_0 = "NO";
    defparam add_5_18.INJECT1_1 = "NO";
    CCU2D add_5_16 (.A0(d2[14]), .B0(d3[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[15]), .B1(d3[15]), .C1(GND_net), .D1(GND_net), .CIN(n1503), 
          .COUT(n1504), .S0(d3_63__N_1293[14]), .S1(d3_63__N_1293[15]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_16.INIT0 = 16'h5666;
    defparam add_5_16.INIT1 = 16'h5666;
    defparam add_5_16.INJECT1_0 = "NO";
    defparam add_5_16.INJECT1_1 = "NO";
    CCU2D add_5_14 (.A0(d2[12]), .B0(d3[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[13]), .B1(d3[13]), .C1(GND_net), .D1(GND_net), .CIN(n1502), 
          .COUT(n1503), .S0(d3_63__N_1293[12]), .S1(d3_63__N_1293[13]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_14.INIT0 = 16'h5666;
    defparam add_5_14.INIT1 = 16'h5666;
    defparam add_5_14.INJECT1_0 = "NO";
    defparam add_5_14.INJECT1_1 = "NO";
    CCU2D add_5_12 (.A0(d2[10]), .B0(d3[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[11]), .B1(d3[11]), .C1(GND_net), .D1(GND_net), .CIN(n1501), 
          .COUT(n1502), .S0(d3_63__N_1293[10]), .S1(d3_63__N_1293[11]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_12.INIT0 = 16'h5666;
    defparam add_5_12.INIT1 = 16'h5666;
    defparam add_5_12.INJECT1_0 = "NO";
    defparam add_5_12.INJECT1_1 = "NO";
    CCU2D add_5_10 (.A0(d2[8]), .B0(d3[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[9]), .B1(d3[9]), .C1(GND_net), .D1(GND_net), .CIN(n1500), 
          .COUT(n1501), .S0(d3_63__N_1293[8]), .S1(d3_63__N_1293[9]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_10.INIT0 = 16'h5666;
    defparam add_5_10.INIT1 = 16'h5666;
    defparam add_5_10.INJECT1_0 = "NO";
    defparam add_5_10.INJECT1_1 = "NO";
    CCU2D add_5_8 (.A0(d2[6]), .B0(d3[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[7]), .B1(d3[7]), .C1(GND_net), .D1(GND_net), .CIN(n1499), 
          .COUT(n1500), .S0(d3_63__N_1293[6]), .S1(d3_63__N_1293[7]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_8.INIT0 = 16'h5666;
    defparam add_5_8.INIT1 = 16'h5666;
    defparam add_5_8.INJECT1_0 = "NO";
    defparam add_5_8.INJECT1_1 = "NO";
    CCU2D add_5_6 (.A0(d2[4]), .B0(d3[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[5]), .B1(d3[5]), .C1(GND_net), .D1(GND_net), .CIN(n1498), 
          .COUT(n1499), .S0(d3_63__N_1293[4]), .S1(d3_63__N_1293[5]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_6.INIT0 = 16'h5666;
    defparam add_5_6.INIT1 = 16'h5666;
    defparam add_5_6.INJECT1_0 = "NO";
    defparam add_5_6.INJECT1_1 = "NO";
    CCU2D add_5_4 (.A0(d2[2]), .B0(d3[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[3]), .B1(d3[3]), .C1(GND_net), .D1(GND_net), .CIN(n1497), 
          .COUT(n1498), .S0(d3_63__N_1293[2]), .S1(d3_63__N_1293[3]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_4.INIT0 = 16'h5666;
    defparam add_5_4.INIT1 = 16'h5666;
    defparam add_5_4.INJECT1_0 = "NO";
    defparam add_5_4.INJECT1_1 = "NO";
    CCU2D add_5_2 (.A0(d2[0]), .B0(d3[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d2[1]), .B1(d3[1]), .C1(GND_net), .D1(GND_net), .COUT(n1497), 
          .S1(d3_63__N_1293[1]));   // c:/users/user/lattice/fpgasdr/cic.v(55[10:17])
    defparam add_5_2.INIT0 = 16'h7000;
    defparam add_5_2.INIT1 = 16'h5666;
    defparam add_5_2.INJECT1_0 = "NO";
    defparam add_5_2.INJECT1_1 = "NO";
    CCU2D add_4_64 (.A0(d1[62]), .B0(d2[62]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[63]), .B1(d2[63]), .C1(GND_net), .D1(GND_net), .CIN(n1494), 
          .S0(d2_63__N_1229[62]), .S1(d2_63__N_1229[63]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_64.INIT0 = 16'h5666;
    defparam add_4_64.INIT1 = 16'h5666;
    defparam add_4_64.INJECT1_0 = "NO";
    defparam add_4_64.INJECT1_1 = "NO";
    CCU2D add_4_62 (.A0(d1[60]), .B0(d2[60]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[61]), .B1(d2[61]), .C1(GND_net), .D1(GND_net), .CIN(n1493), 
          .COUT(n1494), .S0(d2_63__N_1229[60]), .S1(d2_63__N_1229[61]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_62.INIT0 = 16'h5666;
    defparam add_4_62.INIT1 = 16'h5666;
    defparam add_4_62.INJECT1_0 = "NO";
    defparam add_4_62.INJECT1_1 = "NO";
    CCU2D add_4_60 (.A0(d1[58]), .B0(d2[58]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[59]), .B1(d2[59]), .C1(GND_net), .D1(GND_net), .CIN(n1492), 
          .COUT(n1493), .S0(d2_63__N_1229[58]), .S1(d2_63__N_1229[59]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_60.INIT0 = 16'h5666;
    defparam add_4_60.INIT1 = 16'h5666;
    defparam add_4_60.INJECT1_0 = "NO";
    defparam add_4_60.INJECT1_1 = "NO";
    CCU2D add_4_58 (.A0(d1[56]), .B0(d2[56]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[57]), .B1(d2[57]), .C1(GND_net), .D1(GND_net), .CIN(n1491), 
          .COUT(n1492), .S0(d2_63__N_1229[56]), .S1(d2_63__N_1229[57]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_58.INIT0 = 16'h5666;
    defparam add_4_58.INIT1 = 16'h5666;
    defparam add_4_58.INJECT1_0 = "NO";
    defparam add_4_58.INJECT1_1 = "NO";
    CCU2D add_4_56 (.A0(d1[54]), .B0(d2[54]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[55]), .B1(d2[55]), .C1(GND_net), .D1(GND_net), .CIN(n1490), 
          .COUT(n1491), .S0(d2_63__N_1229[54]), .S1(d2_63__N_1229[55]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_56.INIT0 = 16'h5666;
    defparam add_4_56.INIT1 = 16'h5666;
    defparam add_4_56.INJECT1_0 = "NO";
    defparam add_4_56.INJECT1_1 = "NO";
    CCU2D add_4_54 (.A0(d1[52]), .B0(d2[52]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[53]), .B1(d2[53]), .C1(GND_net), .D1(GND_net), .CIN(n1489), 
          .COUT(n1490), .S0(d2_63__N_1229[52]), .S1(d2_63__N_1229[53]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_54.INIT0 = 16'h5666;
    defparam add_4_54.INIT1 = 16'h5666;
    defparam add_4_54.INJECT1_0 = "NO";
    defparam add_4_54.INJECT1_1 = "NO";
    CCU2D add_4_52 (.A0(d1[50]), .B0(d2[50]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[51]), .B1(d2[51]), .C1(GND_net), .D1(GND_net), .CIN(n1488), 
          .COUT(n1489), .S0(d2_63__N_1229[50]), .S1(d2_63__N_1229[51]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_52.INIT0 = 16'h5666;
    defparam add_4_52.INIT1 = 16'h5666;
    defparam add_4_52.INJECT1_0 = "NO";
    defparam add_4_52.INJECT1_1 = "NO";
    CCU2D add_4_50 (.A0(d1[48]), .B0(d2[48]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[49]), .B1(d2[49]), .C1(GND_net), .D1(GND_net), .CIN(n1487), 
          .COUT(n1488), .S0(d2_63__N_1229[48]), .S1(d2_63__N_1229[49]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_50.INIT0 = 16'h5666;
    defparam add_4_50.INIT1 = 16'h5666;
    defparam add_4_50.INJECT1_0 = "NO";
    defparam add_4_50.INJECT1_1 = "NO";
    CCU2D add_4_48 (.A0(d1[46]), .B0(d2[46]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[47]), .B1(d2[47]), .C1(GND_net), .D1(GND_net), .CIN(n1486), 
          .COUT(n1487), .S0(d2_63__N_1229[46]), .S1(d2_63__N_1229[47]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_48.INIT0 = 16'h5666;
    defparam add_4_48.INIT1 = 16'h5666;
    defparam add_4_48.INJECT1_0 = "NO";
    defparam add_4_48.INJECT1_1 = "NO";
    CCU2D add_4_46 (.A0(d1[44]), .B0(d2[44]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[45]), .B1(d2[45]), .C1(GND_net), .D1(GND_net), .CIN(n1485), 
          .COUT(n1486), .S0(d2_63__N_1229[44]), .S1(d2_63__N_1229[45]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_46.INIT0 = 16'h5666;
    defparam add_4_46.INIT1 = 16'h5666;
    defparam add_4_46.INJECT1_0 = "NO";
    defparam add_4_46.INJECT1_1 = "NO";
    CCU2D add_4_44 (.A0(d1[42]), .B0(d2[42]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[43]), .B1(d2[43]), .C1(GND_net), .D1(GND_net), .CIN(n1484), 
          .COUT(n1485), .S0(d2_63__N_1229[42]), .S1(d2_63__N_1229[43]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_44.INIT0 = 16'h5666;
    defparam add_4_44.INIT1 = 16'h5666;
    defparam add_4_44.INJECT1_0 = "NO";
    defparam add_4_44.INJECT1_1 = "NO";
    CCU2D add_4_42 (.A0(d1[40]), .B0(d2[40]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[41]), .B1(d2[41]), .C1(GND_net), .D1(GND_net), .CIN(n1483), 
          .COUT(n1484), .S0(d2_63__N_1229[40]), .S1(d2_63__N_1229[41]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_42.INIT0 = 16'h5666;
    defparam add_4_42.INIT1 = 16'h5666;
    defparam add_4_42.INJECT1_0 = "NO";
    defparam add_4_42.INJECT1_1 = "NO";
    CCU2D add_4_40 (.A0(d1[38]), .B0(d2[38]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[39]), .B1(d2[39]), .C1(GND_net), .D1(GND_net), .CIN(n1482), 
          .COUT(n1483), .S0(d2_63__N_1229[38]), .S1(d2_63__N_1229[39]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_40.INIT0 = 16'h5666;
    defparam add_4_40.INIT1 = 16'h5666;
    defparam add_4_40.INJECT1_0 = "NO";
    defparam add_4_40.INJECT1_1 = "NO";
    CCU2D add_4_38 (.A0(d1[36]), .B0(d2[36]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[37]), .B1(d2[37]), .C1(GND_net), .D1(GND_net), .CIN(n1481), 
          .COUT(n1482), .S0(d2_63__N_1229[36]), .S1(d2_63__N_1229[37]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_38.INIT0 = 16'h5666;
    defparam add_4_38.INIT1 = 16'h5666;
    defparam add_4_38.INJECT1_0 = "NO";
    defparam add_4_38.INJECT1_1 = "NO";
    CCU2D add_4_36 (.A0(d1[34]), .B0(d2[34]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[35]), .B1(d2[35]), .C1(GND_net), .D1(GND_net), .CIN(n1480), 
          .COUT(n1481), .S0(d2_63__N_1229[34]), .S1(d2_63__N_1229[35]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_36.INIT0 = 16'h5666;
    defparam add_4_36.INIT1 = 16'h5666;
    defparam add_4_36.INJECT1_0 = "NO";
    defparam add_4_36.INJECT1_1 = "NO";
    CCU2D add_4_34 (.A0(d1[32]), .B0(d2[32]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[33]), .B1(d2[33]), .C1(GND_net), .D1(GND_net), .CIN(n1479), 
          .COUT(n1480), .S0(d2_63__N_1229[32]), .S1(d2_63__N_1229[33]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_34.INIT0 = 16'h5666;
    defparam add_4_34.INIT1 = 16'h5666;
    defparam add_4_34.INJECT1_0 = "NO";
    defparam add_4_34.INJECT1_1 = "NO";
    CCU2D add_4_32 (.A0(d1[30]), .B0(d2[30]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[31]), .B1(d2[31]), .C1(GND_net), .D1(GND_net), .CIN(n1478), 
          .COUT(n1479), .S0(d2_63__N_1229[30]), .S1(d2_63__N_1229[31]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_32.INIT0 = 16'h5666;
    defparam add_4_32.INIT1 = 16'h5666;
    defparam add_4_32.INJECT1_0 = "NO";
    defparam add_4_32.INJECT1_1 = "NO";
    CCU2D add_4_30 (.A0(d1[28]), .B0(d2[28]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[29]), .B1(d2[29]), .C1(GND_net), .D1(GND_net), .CIN(n1477), 
          .COUT(n1478), .S0(d2_63__N_1229[28]), .S1(d2_63__N_1229[29]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_30.INIT0 = 16'h5666;
    defparam add_4_30.INIT1 = 16'h5666;
    defparam add_4_30.INJECT1_0 = "NO";
    defparam add_4_30.INJECT1_1 = "NO";
    CCU2D add_4_28 (.A0(d1[26]), .B0(d2[26]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[27]), .B1(d2[27]), .C1(GND_net), .D1(GND_net), .CIN(n1476), 
          .COUT(n1477), .S0(d2_63__N_1229[26]), .S1(d2_63__N_1229[27]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_28.INIT0 = 16'h5666;
    defparam add_4_28.INIT1 = 16'h5666;
    defparam add_4_28.INJECT1_0 = "NO";
    defparam add_4_28.INJECT1_1 = "NO";
    CCU2D add_4_26 (.A0(d1[24]), .B0(d2[24]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[25]), .B1(d2[25]), .C1(GND_net), .D1(GND_net), .CIN(n1475), 
          .COUT(n1476), .S0(d2_63__N_1229[24]), .S1(d2_63__N_1229[25]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_26.INIT0 = 16'h5666;
    defparam add_4_26.INIT1 = 16'h5666;
    defparam add_4_26.INJECT1_0 = "NO";
    defparam add_4_26.INJECT1_1 = "NO";
    CCU2D add_4_24 (.A0(d1[22]), .B0(d2[22]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[23]), .B1(d2[23]), .C1(GND_net), .D1(GND_net), .CIN(n1474), 
          .COUT(n1475), .S0(d2_63__N_1229[22]), .S1(d2_63__N_1229[23]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_24.INIT0 = 16'h5666;
    defparam add_4_24.INIT1 = 16'h5666;
    defparam add_4_24.INJECT1_0 = "NO";
    defparam add_4_24.INJECT1_1 = "NO";
    CCU2D add_4_22 (.A0(d1[20]), .B0(d2[20]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[21]), .B1(d2[21]), .C1(GND_net), .D1(GND_net), .CIN(n1473), 
          .COUT(n1474), .S0(d2_63__N_1229[20]), .S1(d2_63__N_1229[21]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_22.INIT0 = 16'h5666;
    defparam add_4_22.INIT1 = 16'h5666;
    defparam add_4_22.INJECT1_0 = "NO";
    defparam add_4_22.INJECT1_1 = "NO";
    CCU2D add_4_20 (.A0(d1[18]), .B0(d2[18]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[19]), .B1(d2[19]), .C1(GND_net), .D1(GND_net), .CIN(n1472), 
          .COUT(n1473), .S0(d2_63__N_1229[18]), .S1(d2_63__N_1229[19]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_20.INIT0 = 16'h5666;
    defparam add_4_20.INIT1 = 16'h5666;
    defparam add_4_20.INJECT1_0 = "NO";
    defparam add_4_20.INJECT1_1 = "NO";
    CCU2D add_4_18 (.A0(d1[16]), .B0(d2[16]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[17]), .B1(d2[17]), .C1(GND_net), .D1(GND_net), .CIN(n1471), 
          .COUT(n1472), .S0(d2_63__N_1229[16]), .S1(d2_63__N_1229[17]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_18.INIT0 = 16'h5666;
    defparam add_4_18.INIT1 = 16'h5666;
    defparam add_4_18.INJECT1_0 = "NO";
    defparam add_4_18.INJECT1_1 = "NO";
    CCU2D add_4_16 (.A0(d1[14]), .B0(d2[14]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[15]), .B1(d2[15]), .C1(GND_net), .D1(GND_net), .CIN(n1470), 
          .COUT(n1471), .S0(d2_63__N_1229[14]), .S1(d2_63__N_1229[15]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_16.INIT0 = 16'h5666;
    defparam add_4_16.INIT1 = 16'h5666;
    defparam add_4_16.INJECT1_0 = "NO";
    defparam add_4_16.INJECT1_1 = "NO";
    CCU2D add_4_14 (.A0(d1[12]), .B0(d2[12]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[13]), .B1(d2[13]), .C1(GND_net), .D1(GND_net), .CIN(n1469), 
          .COUT(n1470), .S0(d2_63__N_1229[12]), .S1(d2_63__N_1229[13]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_14.INIT0 = 16'h5666;
    defparam add_4_14.INIT1 = 16'h5666;
    defparam add_4_14.INJECT1_0 = "NO";
    defparam add_4_14.INJECT1_1 = "NO";
    CCU2D add_4_12 (.A0(d1[10]), .B0(d2[10]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[11]), .B1(d2[11]), .C1(GND_net), .D1(GND_net), .CIN(n1468), 
          .COUT(n1469), .S0(d2_63__N_1229[10]), .S1(d2_63__N_1229[11]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_12.INIT0 = 16'h5666;
    defparam add_4_12.INIT1 = 16'h5666;
    defparam add_4_12.INJECT1_0 = "NO";
    defparam add_4_12.INJECT1_1 = "NO";
    CCU2D add_4_10 (.A0(d1[8]), .B0(d2[8]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[9]), .B1(d2[9]), .C1(GND_net), .D1(GND_net), .CIN(n1467), 
          .COUT(n1468), .S0(d2_63__N_1229[8]), .S1(d2_63__N_1229[9]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_10.INIT0 = 16'h5666;
    defparam add_4_10.INIT1 = 16'h5666;
    defparam add_4_10.INJECT1_0 = "NO";
    defparam add_4_10.INJECT1_1 = "NO";
    CCU2D add_4_8 (.A0(d1[6]), .B0(d2[6]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[7]), .B1(d2[7]), .C1(GND_net), .D1(GND_net), .CIN(n1466), 
          .COUT(n1467), .S0(d2_63__N_1229[6]), .S1(d2_63__N_1229[7]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_8.INIT0 = 16'h5666;
    defparam add_4_8.INIT1 = 16'h5666;
    defparam add_4_8.INJECT1_0 = "NO";
    defparam add_4_8.INJECT1_1 = "NO";
    CCU2D add_4_6 (.A0(d1[4]), .B0(d2[4]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[5]), .B1(d2[5]), .C1(GND_net), .D1(GND_net), .CIN(n1465), 
          .COUT(n1466), .S0(d2_63__N_1229[4]), .S1(d2_63__N_1229[5]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_6.INIT0 = 16'h5666;
    defparam add_4_6.INIT1 = 16'h5666;
    defparam add_4_6.INJECT1_0 = "NO";
    defparam add_4_6.INJECT1_1 = "NO";
    CCU2D add_4_4 (.A0(d1[2]), .B0(d2[2]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[3]), .B1(d2[3]), .C1(GND_net), .D1(GND_net), .CIN(n1464), 
          .COUT(n1465), .S0(d2_63__N_1229[2]), .S1(d2_63__N_1229[3]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_4.INIT0 = 16'h5666;
    defparam add_4_4.INIT1 = 16'h5666;
    defparam add_4_4.INJECT1_0 = "NO";
    defparam add_4_4.INJECT1_1 = "NO";
    CCU2D add_4_2 (.A0(d1[0]), .B0(d2[0]), .C0(GND_net), .D0(GND_net), 
          .A1(d1[1]), .B1(d2[1]), .C1(GND_net), .D1(GND_net), .COUT(n1464), 
          .S1(d2_63__N_1229[1]));   // c:/users/user/lattice/fpgasdr/cic.v(53[10:17])
    defparam add_4_2.INIT0 = 16'h7000;
    defparam add_4_2.INIT1 = 16'h5666;
    defparam add_4_2.INJECT1_0 = "NO";
    defparam add_4_2.INJECT1_1 = "NO";
    CCU2D add_3_65 (.A0(\MixerOutCos[2] ), .B0(d1[63]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1462), .S0(d1_63__N_1165[63]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_65.INIT0 = 16'h5666;
    defparam add_3_65.INIT1 = 16'h0000;
    defparam add_3_65.INJECT1_0 = "NO";
    defparam add_3_65.INJECT1_1 = "NO";
    CCU2D add_3_63 (.A0(\MixerOutCos[2] ), .B0(d1[61]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1461), .COUT(n1462), .S0(d1_63__N_1165[61]), 
          .S1(d1_63__N_1165[62]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_63.INIT0 = 16'h5666;
    defparam add_3_63.INIT1 = 16'h5666;
    defparam add_3_63.INJECT1_0 = "NO";
    defparam add_3_63.INJECT1_1 = "NO";
    CCU2D add_3_61 (.A0(\MixerOutCos[2] ), .B0(d1[59]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1460), .COUT(n1461), .S0(d1_63__N_1165[59]), 
          .S1(d1_63__N_1165[60]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_61.INIT0 = 16'h5666;
    defparam add_3_61.INIT1 = 16'h5666;
    defparam add_3_61.INJECT1_0 = "NO";
    defparam add_3_61.INJECT1_1 = "NO";
    CCU2D add_3_59 (.A0(\MixerOutCos[2] ), .B0(d1[57]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1459), .COUT(n1460), .S0(d1_63__N_1165[57]), 
          .S1(d1_63__N_1165[58]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_59.INIT0 = 16'h5666;
    defparam add_3_59.INIT1 = 16'h5666;
    defparam add_3_59.INJECT1_0 = "NO";
    defparam add_3_59.INJECT1_1 = "NO";
    CCU2D add_3_57 (.A0(\MixerOutCos[2] ), .B0(d1[55]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1458), .COUT(n1459), .S0(d1_63__N_1165[55]), 
          .S1(d1_63__N_1165[56]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_57.INIT0 = 16'h5666;
    defparam add_3_57.INIT1 = 16'h5666;
    defparam add_3_57.INJECT1_0 = "NO";
    defparam add_3_57.INJECT1_1 = "NO";
    CCU2D add_3_55 (.A0(\MixerOutCos[2] ), .B0(d1[53]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1457), .COUT(n1458), .S0(d1_63__N_1165[53]), 
          .S1(d1_63__N_1165[54]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_55.INIT0 = 16'h5666;
    defparam add_3_55.INIT1 = 16'h5666;
    defparam add_3_55.INJECT1_0 = "NO";
    defparam add_3_55.INJECT1_1 = "NO";
    CCU2D add_3_53 (.A0(\MixerOutCos[2] ), .B0(d1[51]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1456), .COUT(n1457), .S0(d1_63__N_1165[51]), 
          .S1(d1_63__N_1165[52]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_53.INIT0 = 16'h5666;
    defparam add_3_53.INIT1 = 16'h5666;
    defparam add_3_53.INJECT1_0 = "NO";
    defparam add_3_53.INJECT1_1 = "NO";
    CCU2D add_3_51 (.A0(\MixerOutCos[2] ), .B0(d1[49]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1455), .COUT(n1456), .S0(d1_63__N_1165[49]), 
          .S1(d1_63__N_1165[50]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_51.INIT0 = 16'h5666;
    defparam add_3_51.INIT1 = 16'h5666;
    defparam add_3_51.INJECT1_0 = "NO";
    defparam add_3_51.INJECT1_1 = "NO";
    CCU2D add_3_49 (.A0(\MixerOutCos[2] ), .B0(d1[47]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1454), .COUT(n1455), .S0(d1_63__N_1165[47]), 
          .S1(d1_63__N_1165[48]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_49.INIT0 = 16'h5666;
    defparam add_3_49.INIT1 = 16'h5666;
    defparam add_3_49.INJECT1_0 = "NO";
    defparam add_3_49.INJECT1_1 = "NO";
    CCU2D add_3_47 (.A0(\MixerOutCos[2] ), .B0(d1[45]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1453), .COUT(n1454), .S0(d1_63__N_1165[45]), 
          .S1(d1_63__N_1165[46]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_47.INIT0 = 16'h5666;
    defparam add_3_47.INIT1 = 16'h5666;
    defparam add_3_47.INJECT1_0 = "NO";
    defparam add_3_47.INJECT1_1 = "NO";
    CCU2D add_3_45 (.A0(\MixerOutCos[2] ), .B0(d1[43]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1452), .COUT(n1453), .S0(d1_63__N_1165[43]), 
          .S1(d1_63__N_1165[44]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_45.INIT0 = 16'h5666;
    defparam add_3_45.INIT1 = 16'h5666;
    defparam add_3_45.INJECT1_0 = "NO";
    defparam add_3_45.INJECT1_1 = "NO";
    CCU2D add_3_43 (.A0(\MixerOutCos[2] ), .B0(d1[41]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1451), .COUT(n1452), .S0(d1_63__N_1165[41]), 
          .S1(d1_63__N_1165[42]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_43.INIT0 = 16'h5666;
    defparam add_3_43.INIT1 = 16'h5666;
    defparam add_3_43.INJECT1_0 = "NO";
    defparam add_3_43.INJECT1_1 = "NO";
    CCU2D add_3_41 (.A0(\MixerOutCos[2] ), .B0(d1[39]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1450), .COUT(n1451), .S0(d1_63__N_1165[39]), 
          .S1(d1_63__N_1165[40]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_41.INIT0 = 16'h5666;
    defparam add_3_41.INIT1 = 16'h5666;
    defparam add_3_41.INJECT1_0 = "NO";
    defparam add_3_41.INJECT1_1 = "NO";
    CCU2D add_3_39 (.A0(\MixerOutCos[2] ), .B0(d1[37]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1449), .COUT(n1450), .S0(d1_63__N_1165[37]), 
          .S1(d1_63__N_1165[38]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_39.INIT0 = 16'h5666;
    defparam add_3_39.INIT1 = 16'h5666;
    defparam add_3_39.INJECT1_0 = "NO";
    defparam add_3_39.INJECT1_1 = "NO";
    CCU2D add_3_37 (.A0(\MixerOutCos[2] ), .B0(d1[35]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1448), .COUT(n1449), .S0(d1_63__N_1165[35]), 
          .S1(d1_63__N_1165[36]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_37.INIT0 = 16'h5666;
    defparam add_3_37.INIT1 = 16'h5666;
    defparam add_3_37.INJECT1_0 = "NO";
    defparam add_3_37.INJECT1_1 = "NO";
    CCU2D add_3_35 (.A0(\MixerOutCos[2] ), .B0(d1[33]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1447), .COUT(n1448), .S0(d1_63__N_1165[33]), 
          .S1(d1_63__N_1165[34]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_35.INIT0 = 16'h5666;
    defparam add_3_35.INIT1 = 16'h5666;
    defparam add_3_35.INJECT1_0 = "NO";
    defparam add_3_35.INJECT1_1 = "NO";
    CCU2D add_3_33 (.A0(\MixerOutCos[2] ), .B0(d1[31]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1446), .COUT(n1447), .S0(d1_63__N_1165[31]), 
          .S1(d1_63__N_1165[32]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_33.INIT0 = 16'h5666;
    defparam add_3_33.INIT1 = 16'h5666;
    defparam add_3_33.INJECT1_0 = "NO";
    defparam add_3_33.INJECT1_1 = "NO";
    CCU2D add_3_31 (.A0(\MixerOutCos[2] ), .B0(d1[29]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1445), .COUT(n1446), .S0(d1_63__N_1165[29]), 
          .S1(d1_63__N_1165[30]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_31.INIT0 = 16'h5666;
    defparam add_3_31.INIT1 = 16'h5666;
    defparam add_3_31.INJECT1_0 = "NO";
    defparam add_3_31.INJECT1_1 = "NO";
    CCU2D add_3_29 (.A0(\MixerOutCos[2] ), .B0(d1[27]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1444), .COUT(n1445), .S0(d1_63__N_1165[27]), 
          .S1(d1_63__N_1165[28]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_29.INIT0 = 16'h5666;
    defparam add_3_29.INIT1 = 16'h5666;
    defparam add_3_29.INJECT1_0 = "NO";
    defparam add_3_29.INJECT1_1 = "NO";
    CCU2D add_3_27 (.A0(\MixerOutCos[2] ), .B0(d1[25]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1443), .COUT(n1444), .S0(d1_63__N_1165[25]), 
          .S1(d1_63__N_1165[26]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_27.INIT0 = 16'h5666;
    defparam add_3_27.INIT1 = 16'h5666;
    defparam add_3_27.INJECT1_0 = "NO";
    defparam add_3_27.INJECT1_1 = "NO";
    CCU2D add_3_25 (.A0(\MixerOutCos[2] ), .B0(d1[23]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1442), .COUT(n1443), .S0(d1_63__N_1165[23]), 
          .S1(d1_63__N_1165[24]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_25.INIT0 = 16'h5666;
    defparam add_3_25.INIT1 = 16'h5666;
    defparam add_3_25.INJECT1_0 = "NO";
    defparam add_3_25.INJECT1_1 = "NO";
    CCU2D add_3_23 (.A0(\MixerOutCos[2] ), .B0(d1[21]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1441), .COUT(n1442), .S0(d1_63__N_1165[21]), 
          .S1(d1_63__N_1165[22]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_23.INIT0 = 16'h5666;
    defparam add_3_23.INIT1 = 16'h5666;
    defparam add_3_23.INJECT1_0 = "NO";
    defparam add_3_23.INJECT1_1 = "NO";
    CCU2D add_3_21 (.A0(\MixerOutCos[2] ), .B0(d1[19]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1440), .COUT(n1441), .S0(d1_63__N_1165[19]), 
          .S1(d1_63__N_1165[20]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_21.INIT0 = 16'h5666;
    defparam add_3_21.INIT1 = 16'h5666;
    defparam add_3_21.INJECT1_0 = "NO";
    defparam add_3_21.INJECT1_1 = "NO";
    CCU2D add_3_19 (.A0(\MixerOutCos[2] ), .B0(d1[17]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1439), .COUT(n1440), .S0(d1_63__N_1165[17]), 
          .S1(d1_63__N_1165[18]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_19.INIT0 = 16'h5666;
    defparam add_3_19.INIT1 = 16'h5666;
    defparam add_3_19.INJECT1_0 = "NO";
    defparam add_3_19.INJECT1_1 = "NO";
    CCU2D add_3_17 (.A0(\MixerOutCos[2] ), .B0(d1[15]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1438), .COUT(n1439), .S0(d1_63__N_1165[15]), 
          .S1(d1_63__N_1165[16]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_17.INIT0 = 16'h5666;
    defparam add_3_17.INIT1 = 16'h5666;
    defparam add_3_17.INJECT1_0 = "NO";
    defparam add_3_17.INJECT1_1 = "NO";
    CCU2D add_3_15 (.A0(\MixerOutCos[2] ), .B0(d1[13]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1437), .COUT(n1438), .S0(d1_63__N_1165[13]), 
          .S1(d1_63__N_1165[14]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_15.INIT0 = 16'h5666;
    defparam add_3_15.INIT1 = 16'h5666;
    defparam add_3_15.INJECT1_0 = "NO";
    defparam add_3_15.INJECT1_1 = "NO";
    CCU2D add_3_13 (.A0(\MixerOutCos[2] ), .B0(d1[11]), .C0(GND_net), 
          .D0(GND_net), .A1(\MixerOutCos[2] ), .B1(d1[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1436), .COUT(n1437), .S0(d1_63__N_1165[11]), 
          .S1(d1_63__N_1165[12]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_13.INIT0 = 16'h5666;
    defparam add_3_13.INIT1 = 16'h5666;
    defparam add_3_13.INJECT1_0 = "NO";
    defparam add_3_13.INJECT1_1 = "NO";
    CCU2D add_3_11 (.A0(\MixerOutCos[2] ), .B0(d1[9]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1435), .COUT(n1436), .S0(d1_63__N_1165[9]), .S1(d1_63__N_1165[10]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_11.INIT0 = 16'h5666;
    defparam add_3_11.INIT1 = 16'h5666;
    defparam add_3_11.INJECT1_0 = "NO";
    defparam add_3_11.INJECT1_1 = "NO";
    CCU2D add_3_9 (.A0(\MixerOutCos[2] ), .B0(d1[7]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1434), .COUT(n1435), .S0(d1_63__N_1165[7]), .S1(d1_63__N_1165[8]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_9.INIT0 = 16'h5666;
    defparam add_3_9.INIT1 = 16'h5666;
    defparam add_3_9.INJECT1_0 = "NO";
    defparam add_3_9.INJECT1_1 = "NO";
    CCU2D add_3_7 (.A0(\MixerOutCos[2] ), .B0(d1[5]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1433), .COUT(n1434), .S0(d1_63__N_1165[5]), .S1(d1_63__N_1165[6]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_7.INIT0 = 16'h5666;
    defparam add_3_7.INIT1 = 16'h5666;
    defparam add_3_7.INJECT1_0 = "NO";
    defparam add_3_7.INJECT1_1 = "NO";
    CCU2D add_3_5 (.A0(\MixerOutCos[2] ), .B0(d1[3]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1432), .COUT(n1433), .S0(d1_63__N_1165[3]), .S1(d1_63__N_1165[4]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_5.INIT0 = 16'h5666;
    defparam add_3_5.INIT1 = 16'h5666;
    defparam add_3_5.INJECT1_0 = "NO";
    defparam add_3_5.INJECT1_1 = "NO";
    CCU2D add_3_3 (.A0(\MixerOutCos[2] ), .B0(d1[1]), .C0(GND_net), .D0(GND_net), 
          .A1(\MixerOutCos[2] ), .B1(d1[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n1431), .COUT(n1432), .S0(d1_63__N_1165[1]), .S1(d1_63__N_1165[2]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_3.INIT0 = 16'h5666;
    defparam add_3_3.INIT1 = 16'h5666;
    defparam add_3_3.INJECT1_0 = "NO";
    defparam add_3_3.INJECT1_1 = "NO";
    CCU2D add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1431), 
          .S1(d1_63__N_1165[0]));   // c:/users/user/lattice/fpgasdr/cic.v(51[10:19])
    defparam add_3_1.INIT0 = 16'hF000;
    defparam add_3_1.INIT1 = 16'h0555;
    defparam add_3_1.INJECT1_0 = "NO";
    defparam add_3_1.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_65 (.A0(d_tmp[63]), .B0(d_d_tmp[63]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1430), .S0(n1[63]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_65.INIT0 = 16'h5999;
    defparam sub_36_add_2_65.INIT1 = 16'h0000;
    defparam sub_36_add_2_65.INJECT1_0 = "NO";
    defparam sub_36_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_63 (.A0(d_tmp[61]), .B0(d_d_tmp[61]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[62]), .B1(d_d_tmp[62]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1429), .COUT(n1430), .S0(n1[61]), .S1(n1[62]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_63.INIT0 = 16'h5999;
    defparam sub_36_add_2_63.INIT1 = 16'h5999;
    defparam sub_36_add_2_63.INJECT1_0 = "NO";
    defparam sub_36_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_61 (.A0(d_tmp[59]), .B0(d_d_tmp[59]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[60]), .B1(d_d_tmp[60]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1428), .COUT(n1429), .S0(n1[59]), .S1(n1[60]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_61.INIT0 = 16'h5999;
    defparam sub_36_add_2_61.INIT1 = 16'h5999;
    defparam sub_36_add_2_61.INJECT1_0 = "NO";
    defparam sub_36_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_59 (.A0(d_tmp[57]), .B0(d_d_tmp[57]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[58]), .B1(d_d_tmp[58]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1427), .COUT(n1428), .S0(n1[57]), .S1(n1[58]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_59.INIT0 = 16'h5999;
    defparam sub_36_add_2_59.INIT1 = 16'h5999;
    defparam sub_36_add_2_59.INJECT1_0 = "NO";
    defparam sub_36_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_57 (.A0(d_tmp[55]), .B0(d_d_tmp[55]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[56]), .B1(d_d_tmp[56]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1426), .COUT(n1427), .S0(n1[55]), .S1(n1[56]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_57.INIT0 = 16'h5999;
    defparam sub_36_add_2_57.INIT1 = 16'h5999;
    defparam sub_36_add_2_57.INJECT1_0 = "NO";
    defparam sub_36_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_55 (.A0(d_tmp[53]), .B0(d_d_tmp[53]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[54]), .B1(d_d_tmp[54]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1425), .COUT(n1426), .S0(n1[53]), .S1(n1[54]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_55.INIT0 = 16'h5999;
    defparam sub_36_add_2_55.INIT1 = 16'h5999;
    defparam sub_36_add_2_55.INJECT1_0 = "NO";
    defparam sub_36_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_53 (.A0(d_tmp[51]), .B0(d_d_tmp[51]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[52]), .B1(d_d_tmp[52]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1424), .COUT(n1425), .S0(n1[51]), .S1(n1[52]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_53.INIT0 = 16'h5999;
    defparam sub_36_add_2_53.INIT1 = 16'h5999;
    defparam sub_36_add_2_53.INJECT1_0 = "NO";
    defparam sub_36_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_51 (.A0(d_tmp[49]), .B0(d_d_tmp[49]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[50]), .B1(d_d_tmp[50]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1423), .COUT(n1424), .S0(n1[49]), .S1(n1[50]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_51.INIT0 = 16'h5999;
    defparam sub_36_add_2_51.INIT1 = 16'h5999;
    defparam sub_36_add_2_51.INJECT1_0 = "NO";
    defparam sub_36_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_49 (.A0(d_tmp[47]), .B0(d_d_tmp[47]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[48]), .B1(d_d_tmp[48]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1422), .COUT(n1423), .S0(n1[47]), .S1(n1[48]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_49.INIT0 = 16'h5999;
    defparam sub_36_add_2_49.INIT1 = 16'h5999;
    defparam sub_36_add_2_49.INJECT1_0 = "NO";
    defparam sub_36_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_47 (.A0(d_tmp[45]), .B0(d_d_tmp[45]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[46]), .B1(d_d_tmp[46]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1421), .COUT(n1422), .S0(n1[45]), .S1(n1[46]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_47.INIT0 = 16'h5999;
    defparam sub_36_add_2_47.INIT1 = 16'h5999;
    defparam sub_36_add_2_47.INJECT1_0 = "NO";
    defparam sub_36_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_45 (.A0(d_tmp[43]), .B0(d_d_tmp[43]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[44]), .B1(d_d_tmp[44]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1420), .COUT(n1421), .S0(n1[43]), .S1(n1[44]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_45.INIT0 = 16'h5999;
    defparam sub_36_add_2_45.INIT1 = 16'h5999;
    defparam sub_36_add_2_45.INJECT1_0 = "NO";
    defparam sub_36_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_43 (.A0(d_tmp[41]), .B0(d_d_tmp[41]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[42]), .B1(d_d_tmp[42]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1419), .COUT(n1420), .S0(n1[41]), .S1(n1[42]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_43.INIT0 = 16'h5999;
    defparam sub_36_add_2_43.INIT1 = 16'h5999;
    defparam sub_36_add_2_43.INJECT1_0 = "NO";
    defparam sub_36_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_41 (.A0(d_tmp[39]), .B0(d_d_tmp[39]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[40]), .B1(d_d_tmp[40]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1418), .COUT(n1419), .S0(n1[39]), .S1(n1[40]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_41.INIT0 = 16'h5999;
    defparam sub_36_add_2_41.INIT1 = 16'h5999;
    defparam sub_36_add_2_41.INJECT1_0 = "NO";
    defparam sub_36_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_39 (.A0(d_tmp[37]), .B0(d_d_tmp[37]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[38]), .B1(d_d_tmp[38]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1417), .COUT(n1418), .S0(n1[37]), .S1(n1[38]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_39.INIT0 = 16'h5999;
    defparam sub_36_add_2_39.INIT1 = 16'h5999;
    defparam sub_36_add_2_39.INJECT1_0 = "NO";
    defparam sub_36_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_37 (.A0(d_tmp[35]), .B0(d_d_tmp[35]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[36]), .B1(d_d_tmp[36]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1416), .COUT(n1417), .S0(n1[35]), .S1(n1[36]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_37.INIT0 = 16'h5999;
    defparam sub_36_add_2_37.INIT1 = 16'h5999;
    defparam sub_36_add_2_37.INJECT1_0 = "NO";
    defparam sub_36_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_35 (.A0(d_tmp[33]), .B0(d_d_tmp[33]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[34]), .B1(d_d_tmp[34]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1415), .COUT(n1416), .S0(n1[33]), .S1(n1[34]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_35.INIT0 = 16'h5999;
    defparam sub_36_add_2_35.INIT1 = 16'h5999;
    defparam sub_36_add_2_35.INJECT1_0 = "NO";
    defparam sub_36_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_33 (.A0(d_tmp[31]), .B0(d_d_tmp[31]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[32]), .B1(d_d_tmp[32]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1414), .COUT(n1415), .S0(n1[31]), .S1(n1[32]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_33.INIT0 = 16'h5999;
    defparam sub_36_add_2_33.INIT1 = 16'h5999;
    defparam sub_36_add_2_33.INJECT1_0 = "NO";
    defparam sub_36_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_31 (.A0(d_tmp[29]), .B0(d_d_tmp[29]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[30]), .B1(d_d_tmp[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1413), .COUT(n1414), .S0(n1[29]), .S1(n1[30]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_31.INIT0 = 16'h5999;
    defparam sub_36_add_2_31.INIT1 = 16'h5999;
    defparam sub_36_add_2_31.INJECT1_0 = "NO";
    defparam sub_36_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_29 (.A0(d_tmp[27]), .B0(d_d_tmp[27]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[28]), .B1(d_d_tmp[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1412), .COUT(n1413), .S0(n1[27]), .S1(n1[28]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_29.INIT0 = 16'h5999;
    defparam sub_36_add_2_29.INIT1 = 16'h5999;
    defparam sub_36_add_2_29.INJECT1_0 = "NO";
    defparam sub_36_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_27 (.A0(d_tmp[25]), .B0(d_d_tmp[25]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[26]), .B1(d_d_tmp[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1411), .COUT(n1412), .S0(n1[25]), .S1(n1[26]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_27.INIT0 = 16'h5999;
    defparam sub_36_add_2_27.INIT1 = 16'h5999;
    defparam sub_36_add_2_27.INJECT1_0 = "NO";
    defparam sub_36_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_25 (.A0(d_tmp[23]), .B0(d_d_tmp[23]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[24]), .B1(d_d_tmp[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1410), .COUT(n1411), .S0(n1[23]), .S1(n1[24]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_25.INIT0 = 16'h5999;
    defparam sub_36_add_2_25.INIT1 = 16'h5999;
    defparam sub_36_add_2_25.INJECT1_0 = "NO";
    defparam sub_36_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_23 (.A0(d_tmp[21]), .B0(d_d_tmp[21]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[22]), .B1(d_d_tmp[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1409), .COUT(n1410), .S0(n1[21]), .S1(n1[22]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_23.INIT0 = 16'h5999;
    defparam sub_36_add_2_23.INIT1 = 16'h5999;
    defparam sub_36_add_2_23.INJECT1_0 = "NO";
    defparam sub_36_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_21 (.A0(d_tmp[19]), .B0(d_d_tmp[19]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[20]), .B1(d_d_tmp[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1408), .COUT(n1409), .S0(n1[19]), .S1(n1[20]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_21.INIT0 = 16'h5999;
    defparam sub_36_add_2_21.INIT1 = 16'h5999;
    defparam sub_36_add_2_21.INJECT1_0 = "NO";
    defparam sub_36_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_19 (.A0(d_tmp[17]), .B0(d_d_tmp[17]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[18]), .B1(d_d_tmp[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1407), .COUT(n1408), .S0(n1[17]), .S1(n1[18]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_19.INIT0 = 16'h5999;
    defparam sub_36_add_2_19.INIT1 = 16'h5999;
    defparam sub_36_add_2_19.INJECT1_0 = "NO";
    defparam sub_36_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_17 (.A0(d_tmp[15]), .B0(d_d_tmp[15]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[16]), .B1(d_d_tmp[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1406), .COUT(n1407), .S0(n1[15]), .S1(n1[16]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_17.INIT0 = 16'h5999;
    defparam sub_36_add_2_17.INIT1 = 16'h5999;
    defparam sub_36_add_2_17.INJECT1_0 = "NO";
    defparam sub_36_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_15 (.A0(d_tmp[13]), .B0(d_d_tmp[13]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[14]), .B1(d_d_tmp[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1405), .COUT(n1406), .S0(n1[13]), .S1(n1[14]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_15.INIT0 = 16'h5999;
    defparam sub_36_add_2_15.INIT1 = 16'h5999;
    defparam sub_36_add_2_15.INJECT1_0 = "NO";
    defparam sub_36_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_13 (.A0(d_tmp[11]), .B0(d_d_tmp[11]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[12]), .B1(d_d_tmp[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1404), .COUT(n1405), .S0(n1[11]), .S1(n1[12]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_13.INIT0 = 16'h5999;
    defparam sub_36_add_2_13.INIT1 = 16'h5999;
    defparam sub_36_add_2_13.INJECT1_0 = "NO";
    defparam sub_36_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_11 (.A0(d_tmp[9]), .B0(d_d_tmp[9]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[10]), .B1(d_d_tmp[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1403), .COUT(n1404), .S0(n1[9]), .S1(n1[10]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_11.INIT0 = 16'h5999;
    defparam sub_36_add_2_11.INIT1 = 16'h5999;
    defparam sub_36_add_2_11.INJECT1_0 = "NO";
    defparam sub_36_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_9 (.A0(d_tmp[7]), .B0(d_d_tmp[7]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[8]), .B1(d_d_tmp[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1402), .COUT(n1403), .S0(n1[7]), .S1(n1[8]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_9.INIT0 = 16'h5999;
    defparam sub_36_add_2_9.INIT1 = 16'h5999;
    defparam sub_36_add_2_9.INJECT1_0 = "NO";
    defparam sub_36_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_7 (.A0(d_tmp[5]), .B0(d_d_tmp[5]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[6]), .B1(d_d_tmp[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1401), .COUT(n1402), .S0(n1[5]), .S1(n1[6]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_7.INIT0 = 16'h5999;
    defparam sub_36_add_2_7.INIT1 = 16'h5999;
    defparam sub_36_add_2_7.INJECT1_0 = "NO";
    defparam sub_36_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_5 (.A0(d_tmp[3]), .B0(d_d_tmp[3]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[4]), .B1(d_d_tmp[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1400), .COUT(n1401), .S0(n1[3]), .S1(n1[4]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_5.INIT0 = 16'h5999;
    defparam sub_36_add_2_5.INIT1 = 16'h5999;
    defparam sub_36_add_2_5.INJECT1_0 = "NO";
    defparam sub_36_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_3 (.A0(d_tmp[1]), .B0(d_d_tmp[1]), .C0(GND_net), 
          .D0(GND_net), .A1(d_tmp[2]), .B1(d_d_tmp[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n1399), .COUT(n1400), .S0(n1[1]), .S1(n1[2]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_3.INIT0 = 16'h5999;
    defparam sub_36_add_2_3.INIT1 = 16'h5999;
    defparam sub_36_add_2_3.INJECT1_0 = "NO";
    defparam sub_36_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_36_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d_tmp[0]), .B1(d_d_tmp[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n1399), .S1(n1[0]));   // c:/users/user/lattice/fpgasdr/cic.v(104[11:26])
    defparam sub_36_add_2_1.INIT0 = 16'h0000;
    defparam sub_36_add_2_1.INIT1 = 16'h5999;
    defparam sub_36_add_2_1.INJECT1_0 = "NO";
    defparam sub_36_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_65 (.A0(d6[63]), .B0(d_d6[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1398), 
          .S0(n2[63]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_65.INIT0 = 16'h5999;
    defparam sub_37_add_2_65.INIT1 = 16'h0000;
    defparam sub_37_add_2_65.INJECT1_0 = "NO";
    defparam sub_37_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_63 (.A0(d6[61]), .B0(d_d6[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[62]), .B1(d_d6[62]), .C1(GND_net), .D1(GND_net), .CIN(n1397), 
          .COUT(n1398), .S0(n2[61]), .S1(n2[62]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_63.INIT0 = 16'h5999;
    defparam sub_37_add_2_63.INIT1 = 16'h5999;
    defparam sub_37_add_2_63.INJECT1_0 = "NO";
    defparam sub_37_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_61 (.A0(d6[59]), .B0(d_d6[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[60]), .B1(d_d6[60]), .C1(GND_net), .D1(GND_net), .CIN(n1396), 
          .COUT(n1397), .S0(n2[59]), .S1(n2[60]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_61.INIT0 = 16'h5999;
    defparam sub_37_add_2_61.INIT1 = 16'h5999;
    defparam sub_37_add_2_61.INJECT1_0 = "NO";
    defparam sub_37_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_59 (.A0(d6[57]), .B0(d_d6[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[58]), .B1(d_d6[58]), .C1(GND_net), .D1(GND_net), .CIN(n1395), 
          .COUT(n1396), .S0(n2[57]), .S1(n2[58]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_59.INIT0 = 16'h5999;
    defparam sub_37_add_2_59.INIT1 = 16'h5999;
    defparam sub_37_add_2_59.INJECT1_0 = "NO";
    defparam sub_37_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_57 (.A0(d6[55]), .B0(d_d6[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[56]), .B1(d_d6[56]), .C1(GND_net), .D1(GND_net), .CIN(n1394), 
          .COUT(n1395), .S0(n2[55]), .S1(n2[56]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_57.INIT0 = 16'h5999;
    defparam sub_37_add_2_57.INIT1 = 16'h5999;
    defparam sub_37_add_2_57.INJECT1_0 = "NO";
    defparam sub_37_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_55 (.A0(d6[53]), .B0(d_d6[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[54]), .B1(d_d6[54]), .C1(GND_net), .D1(GND_net), .CIN(n1393), 
          .COUT(n1394), .S0(n2[53]), .S1(n2[54]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_55.INIT0 = 16'h5999;
    defparam sub_37_add_2_55.INIT1 = 16'h5999;
    defparam sub_37_add_2_55.INJECT1_0 = "NO";
    defparam sub_37_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_53 (.A0(d6[51]), .B0(d_d6[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[52]), .B1(d_d6[52]), .C1(GND_net), .D1(GND_net), .CIN(n1392), 
          .COUT(n1393), .S0(n2[51]), .S1(n2[52]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_53.INIT0 = 16'h5999;
    defparam sub_37_add_2_53.INIT1 = 16'h5999;
    defparam sub_37_add_2_53.INJECT1_0 = "NO";
    defparam sub_37_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_51 (.A0(d6[49]), .B0(d_d6[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[50]), .B1(d_d6[50]), .C1(GND_net), .D1(GND_net), .CIN(n1391), 
          .COUT(n1392), .S0(n2[49]), .S1(n2[50]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_51.INIT0 = 16'h5999;
    defparam sub_37_add_2_51.INIT1 = 16'h5999;
    defparam sub_37_add_2_51.INJECT1_0 = "NO";
    defparam sub_37_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_49 (.A0(d6[47]), .B0(d_d6[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[48]), .B1(d_d6[48]), .C1(GND_net), .D1(GND_net), .CIN(n1390), 
          .COUT(n1391), .S0(n2[47]), .S1(n2[48]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_49.INIT0 = 16'h5999;
    defparam sub_37_add_2_49.INIT1 = 16'h5999;
    defparam sub_37_add_2_49.INJECT1_0 = "NO";
    defparam sub_37_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_47 (.A0(d6[45]), .B0(d_d6[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[46]), .B1(d_d6[46]), .C1(GND_net), .D1(GND_net), .CIN(n1389), 
          .COUT(n1390), .S0(n2[45]), .S1(n2[46]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_47.INIT0 = 16'h5999;
    defparam sub_37_add_2_47.INIT1 = 16'h5999;
    defparam sub_37_add_2_47.INJECT1_0 = "NO";
    defparam sub_37_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_45 (.A0(d6[43]), .B0(d_d6[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[44]), .B1(d_d6[44]), .C1(GND_net), .D1(GND_net), .CIN(n1388), 
          .COUT(n1389), .S0(n2[43]), .S1(n2[44]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_45.INIT0 = 16'h5999;
    defparam sub_37_add_2_45.INIT1 = 16'h5999;
    defparam sub_37_add_2_45.INJECT1_0 = "NO";
    defparam sub_37_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_43 (.A0(d6[41]), .B0(d_d6[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[42]), .B1(d_d6[42]), .C1(GND_net), .D1(GND_net), .CIN(n1387), 
          .COUT(n1388), .S0(n2[41]), .S1(n2[42]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_43.INIT0 = 16'h5999;
    defparam sub_37_add_2_43.INIT1 = 16'h5999;
    defparam sub_37_add_2_43.INJECT1_0 = "NO";
    defparam sub_37_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_41 (.A0(d6[39]), .B0(d_d6[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[40]), .B1(d_d6[40]), .C1(GND_net), .D1(GND_net), .CIN(n1386), 
          .COUT(n1387), .S0(n2[39]), .S1(n2[40]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_41.INIT0 = 16'h5999;
    defparam sub_37_add_2_41.INIT1 = 16'h5999;
    defparam sub_37_add_2_41.INJECT1_0 = "NO";
    defparam sub_37_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_39 (.A0(d6[37]), .B0(d_d6[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[38]), .B1(d_d6[38]), .C1(GND_net), .D1(GND_net), .CIN(n1385), 
          .COUT(n1386), .S0(n2[37]), .S1(n2[38]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_39.INIT0 = 16'h5999;
    defparam sub_37_add_2_39.INIT1 = 16'h5999;
    defparam sub_37_add_2_39.INJECT1_0 = "NO";
    defparam sub_37_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_37 (.A0(d6[35]), .B0(d_d6[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[36]), .B1(d_d6[36]), .C1(GND_net), .D1(GND_net), .CIN(n1384), 
          .COUT(n1385), .S0(n2[35]), .S1(n2[36]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_37.INIT0 = 16'h5999;
    defparam sub_37_add_2_37.INIT1 = 16'h5999;
    defparam sub_37_add_2_37.INJECT1_0 = "NO";
    defparam sub_37_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_35 (.A0(d6[33]), .B0(d_d6[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[34]), .B1(d_d6[34]), .C1(GND_net), .D1(GND_net), .CIN(n1383), 
          .COUT(n1384), .S0(n2[33]), .S1(n2[34]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_35.INIT0 = 16'h5999;
    defparam sub_37_add_2_35.INIT1 = 16'h5999;
    defparam sub_37_add_2_35.INJECT1_0 = "NO";
    defparam sub_37_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_33 (.A0(d6[31]), .B0(d_d6[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[32]), .B1(d_d6[32]), .C1(GND_net), .D1(GND_net), .CIN(n1382), 
          .COUT(n1383), .S0(n2[31]), .S1(n2[32]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_33.INIT0 = 16'h5999;
    defparam sub_37_add_2_33.INIT1 = 16'h5999;
    defparam sub_37_add_2_33.INJECT1_0 = "NO";
    defparam sub_37_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_31 (.A0(d6[29]), .B0(d_d6[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[30]), .B1(d_d6[30]), .C1(GND_net), .D1(GND_net), .CIN(n1381), 
          .COUT(n1382), .S0(n2[29]), .S1(n2[30]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_31.INIT0 = 16'h5999;
    defparam sub_37_add_2_31.INIT1 = 16'h5999;
    defparam sub_37_add_2_31.INJECT1_0 = "NO";
    defparam sub_37_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_29 (.A0(d6[27]), .B0(d_d6[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[28]), .B1(d_d6[28]), .C1(GND_net), .D1(GND_net), .CIN(n1380), 
          .COUT(n1381), .S0(n2[27]), .S1(n2[28]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_29.INIT0 = 16'h5999;
    defparam sub_37_add_2_29.INIT1 = 16'h5999;
    defparam sub_37_add_2_29.INJECT1_0 = "NO";
    defparam sub_37_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_27 (.A0(d6[25]), .B0(d_d6[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[26]), .B1(d_d6[26]), .C1(GND_net), .D1(GND_net), .CIN(n1379), 
          .COUT(n1380), .S0(n2[25]), .S1(n2[26]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_27.INIT0 = 16'h5999;
    defparam sub_37_add_2_27.INIT1 = 16'h5999;
    defparam sub_37_add_2_27.INJECT1_0 = "NO";
    defparam sub_37_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_25 (.A0(d6[23]), .B0(d_d6[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[24]), .B1(d_d6[24]), .C1(GND_net), .D1(GND_net), .CIN(n1378), 
          .COUT(n1379), .S0(n2[23]), .S1(n2[24]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_25.INIT0 = 16'h5999;
    defparam sub_37_add_2_25.INIT1 = 16'h5999;
    defparam sub_37_add_2_25.INJECT1_0 = "NO";
    defparam sub_37_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_23 (.A0(d6[21]), .B0(d_d6[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[22]), .B1(d_d6[22]), .C1(GND_net), .D1(GND_net), .CIN(n1377), 
          .COUT(n1378), .S0(n2[21]), .S1(n2[22]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_23.INIT0 = 16'h5999;
    defparam sub_37_add_2_23.INIT1 = 16'h5999;
    defparam sub_37_add_2_23.INJECT1_0 = "NO";
    defparam sub_37_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_21 (.A0(d6[19]), .B0(d_d6[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[20]), .B1(d_d6[20]), .C1(GND_net), .D1(GND_net), .CIN(n1376), 
          .COUT(n1377), .S0(n2[19]), .S1(n2[20]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_21.INIT0 = 16'h5999;
    defparam sub_37_add_2_21.INIT1 = 16'h5999;
    defparam sub_37_add_2_21.INJECT1_0 = "NO";
    defparam sub_37_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_19 (.A0(d6[17]), .B0(d_d6[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[18]), .B1(d_d6[18]), .C1(GND_net), .D1(GND_net), .CIN(n1375), 
          .COUT(n1376), .S0(n2[17]), .S1(n2[18]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_19.INIT0 = 16'h5999;
    defparam sub_37_add_2_19.INIT1 = 16'h5999;
    defparam sub_37_add_2_19.INJECT1_0 = "NO";
    defparam sub_37_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_17 (.A0(d6[15]), .B0(d_d6[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[16]), .B1(d_d6[16]), .C1(GND_net), .D1(GND_net), .CIN(n1374), 
          .COUT(n1375), .S0(n2[15]), .S1(n2[16]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_17.INIT0 = 16'h5999;
    defparam sub_37_add_2_17.INIT1 = 16'h5999;
    defparam sub_37_add_2_17.INJECT1_0 = "NO";
    defparam sub_37_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_15 (.A0(d6[13]), .B0(d_d6[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[14]), .B1(d_d6[14]), .C1(GND_net), .D1(GND_net), .CIN(n1373), 
          .COUT(n1374), .S0(n2[13]), .S1(n2[14]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_15.INIT0 = 16'h5999;
    defparam sub_37_add_2_15.INIT1 = 16'h5999;
    defparam sub_37_add_2_15.INJECT1_0 = "NO";
    defparam sub_37_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_13 (.A0(d6[11]), .B0(d_d6[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[12]), .B1(d_d6[12]), .C1(GND_net), .D1(GND_net), .CIN(n1372), 
          .COUT(n1373), .S0(n2[11]), .S1(n2[12]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_13.INIT0 = 16'h5999;
    defparam sub_37_add_2_13.INIT1 = 16'h5999;
    defparam sub_37_add_2_13.INJECT1_0 = "NO";
    defparam sub_37_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_11 (.A0(d6[9]), .B0(d_d6[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[10]), .B1(d_d6[10]), .C1(GND_net), .D1(GND_net), .CIN(n1371), 
          .COUT(n1372), .S0(n2[9]), .S1(n2[10]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_11.INIT0 = 16'h5999;
    defparam sub_37_add_2_11.INIT1 = 16'h5999;
    defparam sub_37_add_2_11.INJECT1_0 = "NO";
    defparam sub_37_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_9 (.A0(d6[7]), .B0(d_d6[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[8]), .B1(d_d6[8]), .C1(GND_net), .D1(GND_net), .CIN(n1370), 
          .COUT(n1371), .S0(n2[7]), .S1(n2[8]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_9.INIT0 = 16'h5999;
    defparam sub_37_add_2_9.INIT1 = 16'h5999;
    defparam sub_37_add_2_9.INJECT1_0 = "NO";
    defparam sub_37_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_7 (.A0(d6[5]), .B0(d_d6[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[6]), .B1(d_d6[6]), .C1(GND_net), .D1(GND_net), .CIN(n1369), 
          .COUT(n1370), .S0(n2[5]), .S1(n2[6]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_7.INIT0 = 16'h5999;
    defparam sub_37_add_2_7.INIT1 = 16'h5999;
    defparam sub_37_add_2_7.INJECT1_0 = "NO";
    defparam sub_37_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_5 (.A0(d6[3]), .B0(d_d6[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[4]), .B1(d_d6[4]), .C1(GND_net), .D1(GND_net), .CIN(n1368), 
          .COUT(n1369), .S0(n2[3]), .S1(n2[4]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_5.INIT0 = 16'h5999;
    defparam sub_37_add_2_5.INIT1 = 16'h5999;
    defparam sub_37_add_2_5.INJECT1_0 = "NO";
    defparam sub_37_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_3 (.A0(d6[1]), .B0(d_d6[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d6[2]), .B1(d_d6[2]), .C1(GND_net), .D1(GND_net), .CIN(n1367), 
          .COUT(n1368), .S0(n2[1]), .S1(n2[2]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_3.INIT0 = 16'h5999;
    defparam sub_37_add_2_3.INIT1 = 16'h5999;
    defparam sub_37_add_2_3.INJECT1_0 = "NO";
    defparam sub_37_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_37_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d6[0]), .B1(d_d6[0]), .C1(GND_net), .D1(GND_net), .COUT(n1367), 
          .S1(n2[0]));   // c:/users/user/lattice/fpgasdr/cic.v(107[11:20])
    defparam sub_37_add_2_1.INIT0 = 16'h0000;
    defparam sub_37_add_2_1.INIT1 = 16'h5999;
    defparam sub_37_add_2_1.INJECT1_0 = "NO";
    defparam sub_37_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_65 (.A0(d9[63]), .B0(d_d9[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1366), 
          .S0(n5[63]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_65.INIT0 = 16'h5999;
    defparam sub_40_add_2_65.INIT1 = 16'h0000;
    defparam sub_40_add_2_65.INJECT1_0 = "NO";
    defparam sub_40_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_63 (.A0(d9[61]), .B0(d_d9[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[62]), .B1(d_d9[62]), .C1(GND_net), .D1(GND_net), .CIN(n1365), 
          .COUT(n1366));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_63.INIT0 = 16'h5999;
    defparam sub_40_add_2_63.INIT1 = 16'h5999;
    defparam sub_40_add_2_63.INJECT1_0 = "NO";
    defparam sub_40_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_61 (.A0(d9[59]), .B0(d_d9[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[60]), .B1(d_d9[60]), .C1(GND_net), .D1(GND_net), .CIN(n1364), 
          .COUT(n1365));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_61.INIT0 = 16'h5999;
    defparam sub_40_add_2_61.INIT1 = 16'h5999;
    defparam sub_40_add_2_61.INJECT1_0 = "NO";
    defparam sub_40_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_59 (.A0(d9[57]), .B0(d_d9[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[58]), .B1(d_d9[58]), .C1(GND_net), .D1(GND_net), .CIN(n1363), 
          .COUT(n1364));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_59.INIT0 = 16'h5999;
    defparam sub_40_add_2_59.INIT1 = 16'h5999;
    defparam sub_40_add_2_59.INJECT1_0 = "NO";
    defparam sub_40_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_57 (.A0(d9[55]), .B0(d_d9[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[56]), .B1(d_d9[56]), .C1(GND_net), .D1(GND_net), .CIN(n1362), 
          .COUT(n1363));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_57.INIT0 = 16'h5999;
    defparam sub_40_add_2_57.INIT1 = 16'h5999;
    defparam sub_40_add_2_57.INJECT1_0 = "NO";
    defparam sub_40_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_55 (.A0(d9[53]), .B0(d_d9[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[54]), .B1(d_d9[54]), .C1(GND_net), .D1(GND_net), .CIN(n1361), 
          .COUT(n1362));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_55.INIT0 = 16'h5999;
    defparam sub_40_add_2_55.INIT1 = 16'h5999;
    defparam sub_40_add_2_55.INJECT1_0 = "NO";
    defparam sub_40_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_53 (.A0(d9[51]), .B0(d_d9[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[52]), .B1(d_d9[52]), .C1(GND_net), .D1(GND_net), .CIN(n1360), 
          .COUT(n1361));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_53.INIT0 = 16'h5999;
    defparam sub_40_add_2_53.INIT1 = 16'h5999;
    defparam sub_40_add_2_53.INJECT1_0 = "NO";
    defparam sub_40_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_51 (.A0(d9[49]), .B0(d_d9[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[50]), .B1(d_d9[50]), .C1(GND_net), .D1(GND_net), .CIN(n1359), 
          .COUT(n1360));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_51.INIT0 = 16'h5999;
    defparam sub_40_add_2_51.INIT1 = 16'h5999;
    defparam sub_40_add_2_51.INJECT1_0 = "NO";
    defparam sub_40_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_49 (.A0(d9[47]), .B0(d_d9[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[48]), .B1(d_d9[48]), .C1(GND_net), .D1(GND_net), .CIN(n1358), 
          .COUT(n1359));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_49.INIT0 = 16'h5999;
    defparam sub_40_add_2_49.INIT1 = 16'h5999;
    defparam sub_40_add_2_49.INJECT1_0 = "NO";
    defparam sub_40_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_47 (.A0(d9[45]), .B0(d_d9[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[46]), .B1(d_d9[46]), .C1(GND_net), .D1(GND_net), .CIN(n1357), 
          .COUT(n1358));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_47.INIT0 = 16'h5999;
    defparam sub_40_add_2_47.INIT1 = 16'h5999;
    defparam sub_40_add_2_47.INJECT1_0 = "NO";
    defparam sub_40_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_45 (.A0(d9[43]), .B0(d_d9[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[44]), .B1(d_d9[44]), .C1(GND_net), .D1(GND_net), .CIN(n1356), 
          .COUT(n1357));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_45.INIT0 = 16'h5999;
    defparam sub_40_add_2_45.INIT1 = 16'h5999;
    defparam sub_40_add_2_45.INJECT1_0 = "NO";
    defparam sub_40_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_43 (.A0(d9[41]), .B0(d_d9[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[42]), .B1(d_d9[42]), .C1(GND_net), .D1(GND_net), .CIN(n1355), 
          .COUT(n1356));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_43.INIT0 = 16'h5999;
    defparam sub_40_add_2_43.INIT1 = 16'h5999;
    defparam sub_40_add_2_43.INJECT1_0 = "NO";
    defparam sub_40_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_41 (.A0(d9[39]), .B0(d_d9[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[40]), .B1(d_d9[40]), .C1(GND_net), .D1(GND_net), .CIN(n1354), 
          .COUT(n1355));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_41.INIT0 = 16'h5999;
    defparam sub_40_add_2_41.INIT1 = 16'h5999;
    defparam sub_40_add_2_41.INJECT1_0 = "NO";
    defparam sub_40_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_39 (.A0(d9[37]), .B0(d_d9[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[38]), .B1(d_d9[38]), .C1(GND_net), .D1(GND_net), .CIN(n1353), 
          .COUT(n1354));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_39.INIT0 = 16'h5999;
    defparam sub_40_add_2_39.INIT1 = 16'h5999;
    defparam sub_40_add_2_39.INJECT1_0 = "NO";
    defparam sub_40_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_37 (.A0(d9[35]), .B0(d_d9[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[36]), .B1(d_d9[36]), .C1(GND_net), .D1(GND_net), .CIN(n1352), 
          .COUT(n1353));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_37.INIT0 = 16'h5999;
    defparam sub_40_add_2_37.INIT1 = 16'h5999;
    defparam sub_40_add_2_37.INJECT1_0 = "NO";
    defparam sub_40_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_35 (.A0(d9[33]), .B0(d_d9[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[34]), .B1(d_d9[34]), .C1(GND_net), .D1(GND_net), .CIN(n1351), 
          .COUT(n1352));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_35.INIT0 = 16'h5999;
    defparam sub_40_add_2_35.INIT1 = 16'h5999;
    defparam sub_40_add_2_35.INJECT1_0 = "NO";
    defparam sub_40_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_33 (.A0(d9[31]), .B0(d_d9[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[32]), .B1(d_d9[32]), .C1(GND_net), .D1(GND_net), .CIN(n1350), 
          .COUT(n1351));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_33.INIT0 = 16'h5999;
    defparam sub_40_add_2_33.INIT1 = 16'h5999;
    defparam sub_40_add_2_33.INJECT1_0 = "NO";
    defparam sub_40_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_31 (.A0(d9[29]), .B0(d_d9[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[30]), .B1(d_d9[30]), .C1(GND_net), .D1(GND_net), .CIN(n1349), 
          .COUT(n1350));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_31.INIT0 = 16'h5999;
    defparam sub_40_add_2_31.INIT1 = 16'h5999;
    defparam sub_40_add_2_31.INJECT1_0 = "NO";
    defparam sub_40_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_29 (.A0(d9[27]), .B0(d_d9[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[28]), .B1(d_d9[28]), .C1(GND_net), .D1(GND_net), .CIN(n1348), 
          .COUT(n1349));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_29.INIT0 = 16'h5999;
    defparam sub_40_add_2_29.INIT1 = 16'h5999;
    defparam sub_40_add_2_29.INJECT1_0 = "NO";
    defparam sub_40_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_27 (.A0(d9[25]), .B0(d_d9[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[26]), .B1(d_d9[26]), .C1(GND_net), .D1(GND_net), .CIN(n1347), 
          .COUT(n1348));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_27.INIT0 = 16'h5999;
    defparam sub_40_add_2_27.INIT1 = 16'h5999;
    defparam sub_40_add_2_27.INJECT1_0 = "NO";
    defparam sub_40_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_25 (.A0(d9[23]), .B0(d_d9[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[24]), .B1(d_d9[24]), .C1(GND_net), .D1(GND_net), .CIN(n1346), 
          .COUT(n1347));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_25.INIT0 = 16'h5999;
    defparam sub_40_add_2_25.INIT1 = 16'h5999;
    defparam sub_40_add_2_25.INJECT1_0 = "NO";
    defparam sub_40_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_23 (.A0(d9[21]), .B0(d_d9[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[22]), .B1(d_d9[22]), .C1(GND_net), .D1(GND_net), .CIN(n1345), 
          .COUT(n1346));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_23.INIT0 = 16'h5999;
    defparam sub_40_add_2_23.INIT1 = 16'h5999;
    defparam sub_40_add_2_23.INJECT1_0 = "NO";
    defparam sub_40_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_21 (.A0(d9[19]), .B0(d_d9[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[20]), .B1(d_d9[20]), .C1(GND_net), .D1(GND_net), .CIN(n1344), 
          .COUT(n1345));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_21.INIT0 = 16'h5999;
    defparam sub_40_add_2_21.INIT1 = 16'h5999;
    defparam sub_40_add_2_21.INJECT1_0 = "NO";
    defparam sub_40_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_19 (.A0(d9[17]), .B0(d_d9[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[18]), .B1(d_d9[18]), .C1(GND_net), .D1(GND_net), .CIN(n1343), 
          .COUT(n1344));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_19.INIT0 = 16'h5999;
    defparam sub_40_add_2_19.INIT1 = 16'h5999;
    defparam sub_40_add_2_19.INJECT1_0 = "NO";
    defparam sub_40_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_17 (.A0(d9[15]), .B0(d_d9[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[16]), .B1(d_d9[16]), .C1(GND_net), .D1(GND_net), .CIN(n1342), 
          .COUT(n1343));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_17.INIT0 = 16'h5999;
    defparam sub_40_add_2_17.INIT1 = 16'h5999;
    defparam sub_40_add_2_17.INJECT1_0 = "NO";
    defparam sub_40_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_15 (.A0(d9[13]), .B0(d_d9[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[14]), .B1(d_d9[14]), .C1(GND_net), .D1(GND_net), .CIN(n1341), 
          .COUT(n1342));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_15.INIT0 = 16'h5999;
    defparam sub_40_add_2_15.INIT1 = 16'h5999;
    defparam sub_40_add_2_15.INJECT1_0 = "NO";
    defparam sub_40_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_13 (.A0(d9[11]), .B0(d_d9[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[12]), .B1(d_d9[12]), .C1(GND_net), .D1(GND_net), .CIN(n1340), 
          .COUT(n1341));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_13.INIT0 = 16'h5999;
    defparam sub_40_add_2_13.INIT1 = 16'h5999;
    defparam sub_40_add_2_13.INJECT1_0 = "NO";
    defparam sub_40_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_11 (.A0(d9[9]), .B0(d_d9[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[10]), .B1(d_d9[10]), .C1(GND_net), .D1(GND_net), .CIN(n1339), 
          .COUT(n1340));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_11.INIT0 = 16'h5999;
    defparam sub_40_add_2_11.INIT1 = 16'h5999;
    defparam sub_40_add_2_11.INJECT1_0 = "NO";
    defparam sub_40_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_9 (.A0(d9[7]), .B0(d_d9[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[8]), .B1(d_d9[8]), .C1(GND_net), .D1(GND_net), .CIN(n1338), 
          .COUT(n1339), .S0(n5[7]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_9.INIT0 = 16'h5999;
    defparam sub_40_add_2_9.INIT1 = 16'h5999;
    defparam sub_40_add_2_9.INJECT1_0 = "NO";
    defparam sub_40_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_7 (.A0(d9[5]), .B0(d_d9[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[6]), .B1(d_d9[6]), .C1(GND_net), .D1(GND_net), .CIN(n1337), 
          .COUT(n1338), .S0(n5[5]), .S1(n5[6]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_7.INIT0 = 16'h5999;
    defparam sub_40_add_2_7.INIT1 = 16'h5999;
    defparam sub_40_add_2_7.INJECT1_0 = "NO";
    defparam sub_40_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_5 (.A0(d9[3]), .B0(d_d9[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[4]), .B1(d_d9[4]), .C1(GND_net), .D1(GND_net), .CIN(n1336), 
          .COUT(n1337), .S0(n5[3]), .S1(n5[4]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_5.INIT0 = 16'h5999;
    defparam sub_40_add_2_5.INIT1 = 16'h5999;
    defparam sub_40_add_2_5.INJECT1_0 = "NO";
    defparam sub_40_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_3 (.A0(d9[1]), .B0(d_d9[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d9[2]), .B1(d_d9[2]), .C1(GND_net), .D1(GND_net), .CIN(n1335), 
          .COUT(n1336), .S0(n5[1]), .S1(n5[2]));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_3.INIT0 = 16'h5999;
    defparam sub_40_add_2_3.INIT1 = 16'h5999;
    defparam sub_40_add_2_3.INJECT1_0 = "NO";
    defparam sub_40_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_40_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d9[0]), .B1(d_d9[0]), .C1(GND_net), .D1(GND_net), .COUT(n1335));   // c:/users/user/lattice/fpgasdr/cic.v(116[12:21])
    defparam sub_40_add_2_1.INIT0 = 16'h0000;
    defparam sub_40_add_2_1.INIT1 = 16'h5999;
    defparam sub_40_add_2_1.INJECT1_0 = "NO";
    defparam sub_40_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_65 (.A0(d8[63]), .B0(d_d8[63]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1334), 
          .S0(n4[63]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_65.INIT0 = 16'h5999;
    defparam sub_39_add_2_65.INIT1 = 16'h0000;
    defparam sub_39_add_2_65.INJECT1_0 = "NO";
    defparam sub_39_add_2_65.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_63 (.A0(d8[61]), .B0(d_d8[61]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[62]), .B1(d_d8[62]), .C1(GND_net), .D1(GND_net), .CIN(n1333), 
          .COUT(n1334), .S0(n4[61]), .S1(n4[62]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_63.INIT0 = 16'h5999;
    defparam sub_39_add_2_63.INIT1 = 16'h5999;
    defparam sub_39_add_2_63.INJECT1_0 = "NO";
    defparam sub_39_add_2_63.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_61 (.A0(d8[59]), .B0(d_d8[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[60]), .B1(d_d8[60]), .C1(GND_net), .D1(GND_net), .CIN(n1332), 
          .COUT(n1333), .S0(n4[59]), .S1(n4[60]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_61.INIT0 = 16'h5999;
    defparam sub_39_add_2_61.INIT1 = 16'h5999;
    defparam sub_39_add_2_61.INJECT1_0 = "NO";
    defparam sub_39_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_59 (.A0(d8[57]), .B0(d_d8[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[58]), .B1(d_d8[58]), .C1(GND_net), .D1(GND_net), .CIN(n1331), 
          .COUT(n1332), .S0(n4[57]), .S1(n4[58]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_59.INIT0 = 16'h5999;
    defparam sub_39_add_2_59.INIT1 = 16'h5999;
    defparam sub_39_add_2_59.INJECT1_0 = "NO";
    defparam sub_39_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_57 (.A0(d8[55]), .B0(d_d8[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[56]), .B1(d_d8[56]), .C1(GND_net), .D1(GND_net), .CIN(n1330), 
          .COUT(n1331), .S0(n4[55]), .S1(n4[56]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_57.INIT0 = 16'h5999;
    defparam sub_39_add_2_57.INIT1 = 16'h5999;
    defparam sub_39_add_2_57.INJECT1_0 = "NO";
    defparam sub_39_add_2_57.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_55 (.A0(d8[53]), .B0(d_d8[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[54]), .B1(d_d8[54]), .C1(GND_net), .D1(GND_net), .CIN(n1329), 
          .COUT(n1330), .S0(n4[53]), .S1(n4[54]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_55.INIT0 = 16'h5999;
    defparam sub_39_add_2_55.INIT1 = 16'h5999;
    defparam sub_39_add_2_55.INJECT1_0 = "NO";
    defparam sub_39_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_53 (.A0(d8[51]), .B0(d_d8[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[52]), .B1(d_d8[52]), .C1(GND_net), .D1(GND_net), .CIN(n1328), 
          .COUT(n1329), .S0(n4[51]), .S1(n4[52]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_53.INIT0 = 16'h5999;
    defparam sub_39_add_2_53.INIT1 = 16'h5999;
    defparam sub_39_add_2_53.INJECT1_0 = "NO";
    defparam sub_39_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_51 (.A0(d8[49]), .B0(d_d8[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[50]), .B1(d_d8[50]), .C1(GND_net), .D1(GND_net), .CIN(n1327), 
          .COUT(n1328), .S0(n4[49]), .S1(n4[50]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_51.INIT0 = 16'h5999;
    defparam sub_39_add_2_51.INIT1 = 16'h5999;
    defparam sub_39_add_2_51.INJECT1_0 = "NO";
    defparam sub_39_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_49 (.A0(d8[47]), .B0(d_d8[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[48]), .B1(d_d8[48]), .C1(GND_net), .D1(GND_net), .CIN(n1326), 
          .COUT(n1327), .S0(n4[47]), .S1(n4[48]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_49.INIT0 = 16'h5999;
    defparam sub_39_add_2_49.INIT1 = 16'h5999;
    defparam sub_39_add_2_49.INJECT1_0 = "NO";
    defparam sub_39_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_47 (.A0(d8[45]), .B0(d_d8[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[46]), .B1(d_d8[46]), .C1(GND_net), .D1(GND_net), .CIN(n1325), 
          .COUT(n1326), .S0(n4[45]), .S1(n4[46]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_47.INIT0 = 16'h5999;
    defparam sub_39_add_2_47.INIT1 = 16'h5999;
    defparam sub_39_add_2_47.INJECT1_0 = "NO";
    defparam sub_39_add_2_47.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_45 (.A0(d8[43]), .B0(d_d8[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[44]), .B1(d_d8[44]), .C1(GND_net), .D1(GND_net), .CIN(n1324), 
          .COUT(n1325), .S0(n4[43]), .S1(n4[44]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_45.INIT0 = 16'h5999;
    defparam sub_39_add_2_45.INIT1 = 16'h5999;
    defparam sub_39_add_2_45.INJECT1_0 = "NO";
    defparam sub_39_add_2_45.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_43 (.A0(d8[41]), .B0(d_d8[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[42]), .B1(d_d8[42]), .C1(GND_net), .D1(GND_net), .CIN(n1323), 
          .COUT(n1324), .S0(n4[41]), .S1(n4[42]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_43.INIT0 = 16'h5999;
    defparam sub_39_add_2_43.INIT1 = 16'h5999;
    defparam sub_39_add_2_43.INJECT1_0 = "NO";
    defparam sub_39_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_41 (.A0(d8[39]), .B0(d_d8[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[40]), .B1(d_d8[40]), .C1(GND_net), .D1(GND_net), .CIN(n1322), 
          .COUT(n1323), .S0(n4[39]), .S1(n4[40]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_41.INIT0 = 16'h5999;
    defparam sub_39_add_2_41.INIT1 = 16'h5999;
    defparam sub_39_add_2_41.INJECT1_0 = "NO";
    defparam sub_39_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_39 (.A0(d8[37]), .B0(d_d8[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[38]), .B1(d_d8[38]), .C1(GND_net), .D1(GND_net), .CIN(n1321), 
          .COUT(n1322), .S0(n4[37]), .S1(n4[38]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_39.INIT0 = 16'h5999;
    defparam sub_39_add_2_39.INIT1 = 16'h5999;
    defparam sub_39_add_2_39.INJECT1_0 = "NO";
    defparam sub_39_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_37 (.A0(d8[35]), .B0(d_d8[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[36]), .B1(d_d8[36]), .C1(GND_net), .D1(GND_net), .CIN(n1320), 
          .COUT(n1321), .S0(n4[35]), .S1(n4[36]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_37.INIT0 = 16'h5999;
    defparam sub_39_add_2_37.INIT1 = 16'h5999;
    defparam sub_39_add_2_37.INJECT1_0 = "NO";
    defparam sub_39_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_35 (.A0(d8[33]), .B0(d_d8[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[34]), .B1(d_d8[34]), .C1(GND_net), .D1(GND_net), .CIN(n1319), 
          .COUT(n1320), .S0(n4[33]), .S1(n4[34]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_35.INIT0 = 16'h5999;
    defparam sub_39_add_2_35.INIT1 = 16'h5999;
    defparam sub_39_add_2_35.INJECT1_0 = "NO";
    defparam sub_39_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_33 (.A0(d8[31]), .B0(d_d8[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[32]), .B1(d_d8[32]), .C1(GND_net), .D1(GND_net), .CIN(n1318), 
          .COUT(n1319), .S0(n4[31]), .S1(n4[32]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_33.INIT0 = 16'h5999;
    defparam sub_39_add_2_33.INIT1 = 16'h5999;
    defparam sub_39_add_2_33.INJECT1_0 = "NO";
    defparam sub_39_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_31 (.A0(d8[29]), .B0(d_d8[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[30]), .B1(d_d8[30]), .C1(GND_net), .D1(GND_net), .CIN(n1317), 
          .COUT(n1318), .S0(n4[29]), .S1(n4[30]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_31.INIT0 = 16'h5999;
    defparam sub_39_add_2_31.INIT1 = 16'h5999;
    defparam sub_39_add_2_31.INJECT1_0 = "NO";
    defparam sub_39_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_29 (.A0(d8[27]), .B0(d_d8[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[28]), .B1(d_d8[28]), .C1(GND_net), .D1(GND_net), .CIN(n1316), 
          .COUT(n1317), .S0(n4[27]), .S1(n4[28]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_29.INIT0 = 16'h5999;
    defparam sub_39_add_2_29.INIT1 = 16'h5999;
    defparam sub_39_add_2_29.INJECT1_0 = "NO";
    defparam sub_39_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_27 (.A0(d8[25]), .B0(d_d8[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[26]), .B1(d_d8[26]), .C1(GND_net), .D1(GND_net), .CIN(n1315), 
          .COUT(n1316), .S0(n4[25]), .S1(n4[26]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_27.INIT0 = 16'h5999;
    defparam sub_39_add_2_27.INIT1 = 16'h5999;
    defparam sub_39_add_2_27.INJECT1_0 = "NO";
    defparam sub_39_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_25 (.A0(d8[23]), .B0(d_d8[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[24]), .B1(d_d8[24]), .C1(GND_net), .D1(GND_net), .CIN(n1314), 
          .COUT(n1315), .S0(n4[23]), .S1(n4[24]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_25.INIT0 = 16'h5999;
    defparam sub_39_add_2_25.INIT1 = 16'h5999;
    defparam sub_39_add_2_25.INJECT1_0 = "NO";
    defparam sub_39_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_23 (.A0(d8[21]), .B0(d_d8[21]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[22]), .B1(d_d8[22]), .C1(GND_net), .D1(GND_net), .CIN(n1313), 
          .COUT(n1314), .S0(n4[21]), .S1(n4[22]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_23.INIT0 = 16'h5999;
    defparam sub_39_add_2_23.INIT1 = 16'h5999;
    defparam sub_39_add_2_23.INJECT1_0 = "NO";
    defparam sub_39_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_21 (.A0(d8[19]), .B0(d_d8[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[20]), .B1(d_d8[20]), .C1(GND_net), .D1(GND_net), .CIN(n1312), 
          .COUT(n1313), .S0(n4[19]), .S1(n4[20]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_21.INIT0 = 16'h5999;
    defparam sub_39_add_2_21.INIT1 = 16'h5999;
    defparam sub_39_add_2_21.INJECT1_0 = "NO";
    defparam sub_39_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_19 (.A0(d8[17]), .B0(d_d8[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[18]), .B1(d_d8[18]), .C1(GND_net), .D1(GND_net), .CIN(n1311), 
          .COUT(n1312), .S0(n4[17]), .S1(n4[18]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_19.INIT0 = 16'h5999;
    defparam sub_39_add_2_19.INIT1 = 16'h5999;
    defparam sub_39_add_2_19.INJECT1_0 = "NO";
    defparam sub_39_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_17 (.A0(d8[15]), .B0(d_d8[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[16]), .B1(d_d8[16]), .C1(GND_net), .D1(GND_net), .CIN(n1310), 
          .COUT(n1311), .S0(n4[15]), .S1(n4[16]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_17.INIT0 = 16'h5999;
    defparam sub_39_add_2_17.INIT1 = 16'h5999;
    defparam sub_39_add_2_17.INJECT1_0 = "NO";
    defparam sub_39_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_15 (.A0(d8[13]), .B0(d_d8[13]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[14]), .B1(d_d8[14]), .C1(GND_net), .D1(GND_net), .CIN(n1309), 
          .COUT(n1310), .S0(n4[13]), .S1(n4[14]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_15.INIT0 = 16'h5999;
    defparam sub_39_add_2_15.INIT1 = 16'h5999;
    defparam sub_39_add_2_15.INJECT1_0 = "NO";
    defparam sub_39_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_13 (.A0(d8[11]), .B0(d_d8[11]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[12]), .B1(d_d8[12]), .C1(GND_net), .D1(GND_net), .CIN(n1308), 
          .COUT(n1309), .S0(n4[11]), .S1(n4[12]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_13.INIT0 = 16'h5999;
    defparam sub_39_add_2_13.INIT1 = 16'h5999;
    defparam sub_39_add_2_13.INJECT1_0 = "NO";
    defparam sub_39_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_11 (.A0(d8[9]), .B0(d_d8[9]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[10]), .B1(d_d8[10]), .C1(GND_net), .D1(GND_net), .CIN(n1307), 
          .COUT(n1308), .S0(n4[9]), .S1(n4[10]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_11.INIT0 = 16'h5999;
    defparam sub_39_add_2_11.INIT1 = 16'h5999;
    defparam sub_39_add_2_11.INJECT1_0 = "NO";
    defparam sub_39_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_9 (.A0(d8[7]), .B0(d_d8[7]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[8]), .B1(d_d8[8]), .C1(GND_net), .D1(GND_net), .CIN(n1306), 
          .COUT(n1307), .S0(n4[7]), .S1(n4[8]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_9.INIT0 = 16'h5999;
    defparam sub_39_add_2_9.INIT1 = 16'h5999;
    defparam sub_39_add_2_9.INJECT1_0 = "NO";
    defparam sub_39_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_7 (.A0(d8[5]), .B0(d_d8[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[6]), .B1(d_d8[6]), .C1(GND_net), .D1(GND_net), .CIN(n1305), 
          .COUT(n1306), .S0(n4[5]), .S1(n4[6]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_7.INIT0 = 16'h5999;
    defparam sub_39_add_2_7.INIT1 = 16'h5999;
    defparam sub_39_add_2_7.INJECT1_0 = "NO";
    defparam sub_39_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_5 (.A0(d8[3]), .B0(d_d8[3]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[4]), .B1(d_d8[4]), .C1(GND_net), .D1(GND_net), .CIN(n1304), 
          .COUT(n1305), .S0(n4[3]), .S1(n4[4]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_5.INIT0 = 16'h5999;
    defparam sub_39_add_2_5.INIT1 = 16'h5999;
    defparam sub_39_add_2_5.INJECT1_0 = "NO";
    defparam sub_39_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_3 (.A0(d8[1]), .B0(d_d8[1]), .C0(GND_net), .D0(GND_net), 
          .A1(d8[2]), .B1(d_d8[2]), .C1(GND_net), .D1(GND_net), .CIN(n1303), 
          .COUT(n1304), .S0(n4[1]), .S1(n4[2]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_3.INIT0 = 16'h5999;
    defparam sub_39_add_2_3.INIT1 = 16'h5999;
    defparam sub_39_add_2_3.INJECT1_0 = "NO";
    defparam sub_39_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_39_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d8[0]), .B1(d_d8[0]), .C1(GND_net), .D1(GND_net), .COUT(n1303), 
          .S1(n4[0]));   // c:/users/user/lattice/fpgasdr/cic.v(113[11:20])
    defparam sub_39_add_2_1.INIT0 = 16'h0000;
    defparam sub_39_add_2_1.INIT1 = 16'h5999;
    defparam sub_39_add_2_1.INJECT1_0 = "NO";
    defparam sub_39_add_2_1.INJECT1_1 = "NO";
    FD1P3AX d10__0__i3 (.D(n5[3]), .SP(v_comb), .CK(osc_clk), .Q(d10[3]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i3.GSR = "ENABLED";
    FD1P3AX d10__0__i4 (.D(n5[4]), .SP(v_comb), .CK(osc_clk), .Q(d10[4]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i4.GSR = "ENABLED";
    FD1P3AX d10__0__i5 (.D(n5[5]), .SP(v_comb), .CK(osc_clk), .Q(d10[5]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i5.GSR = "ENABLED";
    FD1P3AX d10__0__i6 (.D(n5[6]), .SP(v_comb), .CK(osc_clk), .Q(d10[6]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i6.GSR = "ENABLED";
    FD1P3AX d10__0__i7 (.D(n5[7]), .SP(v_comb), .CK(osc_clk), .Q(d10[7]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i7.GSR = "ENABLED";
    FD1P3AX d10__0__i8 (.D(n5[63]), .SP(v_comb), .CK(osc_clk), .Q(d10[63]));   // c:/users/user/lattice/fpgasdr/cic.v(82[9] 124[5])
    defparam d10__0__i8.GSR = "ENABLED";
    CCU2D sub_38_add_2_33 (.A0(d7[31]), .B0(d_d7[31]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[32]), .B1(d_d7[32]), .C1(GND_net), .D1(GND_net), .CIN(n1242), 
          .COUT(n1243), .S0(n3[31]), .S1(n3[32]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_33.INIT0 = 16'h5999;
    defparam sub_38_add_2_33.INIT1 = 16'h5999;
    defparam sub_38_add_2_33.INJECT1_0 = "NO";
    defparam sub_38_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_39 (.A0(d7[37]), .B0(d_d7[37]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[38]), .B1(d_d7[38]), .C1(GND_net), .D1(GND_net), .CIN(n1245), 
          .COUT(n1246), .S0(n3[37]), .S1(n3[38]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_39.INIT0 = 16'h5999;
    defparam sub_38_add_2_39.INIT1 = 16'h5999;
    defparam sub_38_add_2_39.INJECT1_0 = "NO";
    defparam sub_38_add_2_39.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(d7[0]), .B1(d_d7[0]), .C1(GND_net), .D1(GND_net), .COUT(n1227), 
          .S1(n3[0]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_1.INIT0 = 16'h0000;
    defparam sub_38_add_2_1.INIT1 = 16'h5999;
    defparam sub_38_add_2_1.INJECT1_0 = "NO";
    defparam sub_38_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_7 (.A0(d7[5]), .B0(d_d7[5]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[6]), .B1(d_d7[6]), .C1(GND_net), .D1(GND_net), .CIN(n1229), 
          .COUT(n1230), .S0(n3[5]), .S1(n3[6]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_7.INIT0 = 16'h5999;
    defparam sub_38_add_2_7.INIT1 = 16'h5999;
    defparam sub_38_add_2_7.INJECT1_0 = "NO";
    defparam sub_38_add_2_7.INJECT1_1 = "NO";
    LUT4 i1063_2_lut (.A(d4[0]), .B(d5[0]), .Z(d5_63__N_1421[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1063_2_lut.init = 16'h6666;
    CCU2D sub_38_add_2_43 (.A0(d7[41]), .B0(d_d7[41]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[42]), .B1(d_d7[42]), .C1(GND_net), .D1(GND_net), .CIN(n1247), 
          .COUT(n1248), .S0(n3[41]), .S1(n3[42]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_43.INIT0 = 16'h5999;
    defparam sub_38_add_2_43.INIT1 = 16'h5999;
    defparam sub_38_add_2_43.INJECT1_0 = "NO";
    defparam sub_38_add_2_43.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_37 (.A0(d7[35]), .B0(d_d7[35]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[36]), .B1(d_d7[36]), .C1(GND_net), .D1(GND_net), .CIN(n1244), 
          .COUT(n1245), .S0(n3[35]), .S1(n3[36]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_37.INIT0 = 16'h5999;
    defparam sub_38_add_2_37.INIT1 = 16'h5999;
    defparam sub_38_add_2_37.INJECT1_0 = "NO";
    defparam sub_38_add_2_37.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_61 (.A0(d7[59]), .B0(d_d7[59]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[60]), .B1(d_d7[60]), .C1(GND_net), .D1(GND_net), .CIN(n1256), 
          .COUT(n1257), .S0(n3[59]), .S1(n3[60]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_61.INIT0 = 16'h5999;
    defparam sub_38_add_2_61.INIT1 = 16'h5999;
    defparam sub_38_add_2_61.INJECT1_0 = "NO";
    defparam sub_38_add_2_61.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_59 (.A0(d7[57]), .B0(d_d7[57]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[58]), .B1(d_d7[58]), .C1(GND_net), .D1(GND_net), .CIN(n1255), 
          .COUT(n1256), .S0(n3[57]), .S1(n3[58]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_59.INIT0 = 16'h5999;
    defparam sub_38_add_2_59.INIT1 = 16'h5999;
    defparam sub_38_add_2_59.INJECT1_0 = "NO";
    defparam sub_38_add_2_59.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_35 (.A0(d7[33]), .B0(d_d7[33]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[34]), .B1(d_d7[34]), .C1(GND_net), .D1(GND_net), .CIN(n1243), 
          .COUT(n1244), .S0(n3[33]), .S1(n3[34]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_35.INIT0 = 16'h5999;
    defparam sub_38_add_2_35.INIT1 = 16'h5999;
    defparam sub_38_add_2_35.INJECT1_0 = "NO";
    defparam sub_38_add_2_35.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_31 (.A0(d7[29]), .B0(d_d7[29]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[30]), .B1(d_d7[30]), .C1(GND_net), .D1(GND_net), .CIN(n1241), 
          .COUT(n1242), .S0(n3[29]), .S1(n3[30]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_31.INIT0 = 16'h5999;
    defparam sub_38_add_2_31.INIT1 = 16'h5999;
    defparam sub_38_add_2_31.INJECT1_0 = "NO";
    defparam sub_38_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_41 (.A0(d7[39]), .B0(d_d7[39]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[40]), .B1(d_d7[40]), .C1(GND_net), .D1(GND_net), .CIN(n1246), 
          .COUT(n1247), .S0(n3[39]), .S1(n3[40]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_41.INIT0 = 16'h5999;
    defparam sub_38_add_2_41.INIT1 = 16'h5999;
    defparam sub_38_add_2_41.INJECT1_0 = "NO";
    defparam sub_38_add_2_41.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_29 (.A0(d7[27]), .B0(d_d7[27]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[28]), .B1(d_d7[28]), .C1(GND_net), .D1(GND_net), .CIN(n1240), 
          .COUT(n1241), .S0(n3[27]), .S1(n3[28]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_29.INIT0 = 16'h5999;
    defparam sub_38_add_2_29.INIT1 = 16'h5999;
    defparam sub_38_add_2_29.INJECT1_0 = "NO";
    defparam sub_38_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_27 (.A0(d7[25]), .B0(d_d7[25]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[26]), .B1(d_d7[26]), .C1(GND_net), .D1(GND_net), .CIN(n1239), 
          .COUT(n1240), .S0(n3[25]), .S1(n3[26]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_27.INIT0 = 16'h5999;
    defparam sub_38_add_2_27.INIT1 = 16'h5999;
    defparam sub_38_add_2_27.INJECT1_0 = "NO";
    defparam sub_38_add_2_27.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(count[4]), .B(n20), .C(n16), .D(count[9]), .Z(d_clk_tmp_N_2233)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    LUT4 i10_4_lut_rep_34 (.A(count[4]), .B(n20), .C(n16), .D(count[9]), 
         .Z(osc_clk_enable_138)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut_rep_34.init = 16'h8000;
    CCU2D sub_38_add_2_25 (.A0(d7[23]), .B0(d_d7[23]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[24]), .B1(d_d7[24]), .C1(GND_net), .D1(GND_net), .CIN(n1238), 
          .COUT(n1239), .S0(n3[23]), .S1(n3[24]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_25.INIT0 = 16'h5999;
    defparam sub_38_add_2_25.INIT1 = 16'h5999;
    defparam sub_38_add_2_25.INJECT1_0 = "NO";
    defparam sub_38_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_21 (.A0(d7[19]), .B0(d_d7[19]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[20]), .B1(d_d7[20]), .C1(GND_net), .D1(GND_net), .CIN(n1236), 
          .COUT(n1237), .S0(n3[19]), .S1(n3[20]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_21.INIT0 = 16'h5999;
    defparam sub_38_add_2_21.INIT1 = 16'h5999;
    defparam sub_38_add_2_21.INJECT1_0 = "NO";
    defparam sub_38_add_2_21.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_32 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_614)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_32.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_31 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_564)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_31.GSR = "ENABLED";
    CCU2D sub_38_add_2_19 (.A0(d7[17]), .B0(d_d7[17]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[18]), .B1(d_d7[18]), .C1(GND_net), .D1(GND_net), .CIN(n1235), 
          .COUT(n1236), .S0(n3[17]), .S1(n3[18]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_19.INIT0 = 16'h5999;
    defparam sub_38_add_2_19.INIT1 = 16'h5999;
    defparam sub_38_add_2_19.INJECT1_0 = "NO";
    defparam sub_38_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_17 (.A0(d7[15]), .B0(d_d7[15]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[16]), .B1(d_d7[16]), .C1(GND_net), .D1(GND_net), .CIN(n1234), 
          .COUT(n1235), .S0(n3[15]), .S1(n3[16]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_17.INIT0 = 16'h5999;
    defparam sub_38_add_2_17.INIT1 = 16'h5999;
    defparam sub_38_add_2_17.INJECT1_0 = "NO";
    defparam sub_38_add_2_17.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_30 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_514)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_30.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_29 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_464)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_29.GSR = "ENABLED";
    FD1S3IX count_233_234__i2 (.D(n49[1]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i2.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_28 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_414)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_28.GSR = "ENABLED";
    CCU2D sub_38_add_2_57 (.A0(d7[55]), .B0(d_d7[55]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[56]), .B1(d_d7[56]), .C1(GND_net), .D1(GND_net), .CIN(n1254), 
          .COUT(n1255), .S0(n3[55]), .S1(n3[56]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_57.INIT0 = 16'h5999;
    defparam sub_38_add_2_57.INIT1 = 16'h5999;
    defparam sub_38_add_2_57.INJECT1_0 = "NO";
    defparam sub_38_add_2_57.INJECT1_1 = "NO";
    FD1S3IX count_233_234__i3 (.D(n49[2]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i3.GSR = "ENABLED";
    FD1S3IX count_233_234__i4 (.D(n49[3]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i4.GSR = "ENABLED";
    FD1S3IX count_233_234__i5 (.D(n49[4]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i5.GSR = "ENABLED";
    FD1S3IX count_233_234__i6 (.D(n49[5]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i6.GSR = "ENABLED";
    FD1S3IX count_233_234__i7 (.D(n49[6]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i7.GSR = "ENABLED";
    FD1S3IX count_233_234__i8 (.D(n49[7]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i8.GSR = "ENABLED";
    FD1S3IX count_233_234__i9 (.D(n49[8]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i9.GSR = "ENABLED";
    FD1S3IX count_233_234__i10 (.D(n49[9]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i10.GSR = "ENABLED";
    FD1S3IX count_233_234__i11 (.D(n49[10]), .CK(osc_clk), .CD(d_clk_tmp_N_2233), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(76[14:27])
    defparam count_233_234__i11.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_27 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_364)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_27.GSR = "ENABLED";
    CCU2D sub_38_add_2_55 (.A0(d7[53]), .B0(d_d7[53]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[54]), .B1(d_d7[54]), .C1(GND_net), .D1(GND_net), .CIN(n1253), 
          .COUT(n1254), .S0(n3[53]), .S1(n3[54]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_55.INIT0 = 16'h5999;
    defparam sub_38_add_2_55.INIT1 = 16'h5999;
    defparam sub_38_add_2_55.INJECT1_0 = "NO";
    defparam sub_38_add_2_55.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_53 (.A0(d7[51]), .B0(d_d7[51]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[52]), .B1(d_d7[52]), .C1(GND_net), .D1(GND_net), .CIN(n1252), 
          .COUT(n1253), .S0(n3[51]), .S1(n3[52]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_53.INIT0 = 16'h5999;
    defparam sub_38_add_2_53.INIT1 = 16'h5999;
    defparam sub_38_add_2_53.INJECT1_0 = "NO";
    defparam sub_38_add_2_53.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_51 (.A0(d7[49]), .B0(d_d7[49]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[50]), .B1(d_d7[50]), .C1(GND_net), .D1(GND_net), .CIN(n1251), 
          .COUT(n1252), .S0(n3[49]), .S1(n3[50]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_51.INIT0 = 16'h5999;
    defparam sub_38_add_2_51.INIT1 = 16'h5999;
    defparam sub_38_add_2_51.INJECT1_0 = "NO";
    defparam sub_38_add_2_51.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_49 (.A0(d7[47]), .B0(d_d7[47]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[48]), .B1(d_d7[48]), .C1(GND_net), .D1(GND_net), .CIN(n1250), 
          .COUT(n1251), .S0(n3[47]), .S1(n3[48]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_49.INIT0 = 16'h5999;
    defparam sub_38_add_2_49.INIT1 = 16'h5999;
    defparam sub_38_add_2_49.INJECT1_0 = "NO";
    defparam sub_38_add_2_49.INJECT1_1 = "NO";
    CCU2D sub_38_add_2_47 (.A0(d7[45]), .B0(d_d7[45]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[46]), .B1(d_d7[46]), .C1(GND_net), .D1(GND_net), .CIN(n1249), 
          .COUT(n1250), .S0(n3[45]), .S1(n3[46]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_47.INIT0 = 16'h5999;
    defparam sub_38_add_2_47.INIT1 = 16'h5999;
    defparam sub_38_add_2_47.INJECT1_0 = "NO";
    defparam sub_38_add_2_47.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_24 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_214)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_24.GSR = "ENABLED";
    CCU2D sub_38_add_2_45 (.A0(d7[43]), .B0(d_d7[43]), .C0(GND_net), .D0(GND_net), 
          .A1(d7[44]), .B1(d_d7[44]), .C1(GND_net), .D1(GND_net), .CIN(n1248), 
          .COUT(n1249), .S0(n3[43]), .S1(n3[44]));   // c:/users/user/lattice/fpgasdr/cic.v(110[11:20])
    defparam sub_38_add_2_45.INIT0 = 16'h5999;
    defparam sub_38_add_2_45.INIT1 = 16'h5999;
    defparam sub_38_add_2_45.INJECT1_0 = "NO";
    defparam sub_38_add_2_45.INJECT1_1 = "NO";
    FD1S3AX v_comb_84_rep_22 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_71)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_22.GSR = "ENABLED";
    FD1S3AX v_comb_84_rep_23 (.D(osc_clk_enable_138), .CK(osc_clk), .Q(osc_clk_enable_164)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=20, LSE_RCOL=2, LSE_LLINE=73, LSE_RLINE=80 */ ;   // c:/users/user/lattice/fpgasdr/cic.v(38[9] 80[5])
    defparam v_comb_84_rep_23.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module nco_sig_U0
//

module nco_sig_U0 (GND_net, \MixerOutSin_7__N_83[7] , osc_clk, n1914, 
            RFInR, \MixerOutCos_7__N_75[2] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \MixerOutSin_7__N_83[7] ;
    input osc_clk;
    output n1914;
    input RFInR;
    output \MixerOutCos_7__N_75[2] ;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    
    wire n1280;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(32[12:23])
    wire [63:0]phase_accum_63__N_1;
    
    wire n1265, n1266, n1279, n1278, n1277, n1276, n1275, n1264, 
        n1274, n1273, n1272, n1271, n1270, n1269, n1268, n1267, 
        n1263, n1262, n1261, n1260, n1259;
    
    CCU2D phase_accum_63__I_0_12_45 (.A0(phase_accum[62]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\MixerOutSin_7__N_83[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1280), .S0(phase_accum_63__N_1[62]), 
          .S1(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_45.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_45.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_45.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[32]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[33]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1265), .COUT(n1266), .S0(phase_accum_63__N_1[32]), 
          .S1(phase_accum_63__N_1[33]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[60]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[61]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1279), .COUT(n1280), .S0(phase_accum_63__N_1[60]), 
          .S1(phase_accum_63__N_1[61]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[58]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[59]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1278), .COUT(n1279), .S0(phase_accum_63__N_1[58]), 
          .S1(phase_accum_63__N_1[59]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[56]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[57]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1277), .COUT(n1278), .S0(phase_accum_63__N_1[56]), 
          .S1(phase_accum_63__N_1[57]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[54]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[55]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1276), .COUT(n1277), .S0(phase_accum_63__N_1[54]), 
          .S1(phase_accum_63__N_1[55]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[52]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[53]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1275), .COUT(n1276), .S0(phase_accum_63__N_1[52]), 
          .S1(phase_accum_63__N_1[53]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[30]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[31]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1264), .COUT(n1265), .S0(phase_accum_63__N_1[30]), 
          .S1(phase_accum_63__N_1[31]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[50]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[51]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1274), .COUT(n1275), .S0(phase_accum_63__N_1[50]), 
          .S1(phase_accum_63__N_1[51]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[48]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[49]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1273), .COUT(n1274), .S0(phase_accum_63__N_1[48]), 
          .S1(phase_accum_63__N_1[49]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[46]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[47]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1272), .COUT(n1273), .S0(phase_accum_63__N_1[46]), 
          .S1(phase_accum_63__N_1[47]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[44]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[45]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1271), .COUT(n1272), .S0(phase_accum_63__N_1[44]), 
          .S1(phase_accum_63__N_1[45]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[42]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[43]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1270), .COUT(n1271), .S0(phase_accum_63__N_1[42]), 
          .S1(phase_accum_63__N_1[43]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[40]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[41]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1269), .COUT(n1270), .S0(phase_accum_63__N_1[40]), 
          .S1(phase_accum_63__N_1[41]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[38]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[39]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1268), .COUT(n1269), .S0(phase_accum_63__N_1[38]), 
          .S1(phase_accum_63__N_1[39]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[36]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[37]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1267), .COUT(n1268), .S0(phase_accum_63__N_1[36]), 
          .S1(phase_accum_63__N_1[37]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[34]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[35]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1266), .COUT(n1267), .S0(phase_accum_63__N_1[34]), 
          .S1(phase_accum_63__N_1[35]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[28]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[29]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1263), .COUT(n1264), .S0(phase_accum_63__N_1[28]), 
          .S1(phase_accum_63__N_1[29]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[26]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[27]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1262), .COUT(n1263), .S0(phase_accum_63__N_1[26]), 
          .S1(phase_accum_63__N_1[27]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(\MixerOutSin_7__N_83[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_1[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_1[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_1[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=49, LSE_RLINE=54 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[24]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[25]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1261), .COUT(n1262), .S0(phase_accum_63__N_1[24]), 
          .S1(phase_accum_63__N_1[25]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[22]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[23]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1260), .COUT(n1261), .S0(phase_accum_63__N_1[22]), 
          .S1(phase_accum_63__N_1[23]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[20]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[21]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1259), .COUT(n1260), .S0(phase_accum_63__N_1[20]), 
          .S1(phase_accum_63__N_1[21]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1259), .S1(phase_accum_63__N_1[19]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_2_lut_rep_20 (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .Z(n1914)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[19:54])
    defparam phase_accum_63__I_0_2_lut_rep_20.init = 16'h9999;
    LUT4 i1244_2_lut_3_lut (.A(\MixerOutSin_7__N_83[7] ), .B(phase_accum[62]), 
         .C(RFInR), .Z(\MixerOutCos_7__N_75[2] )) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(36[19:54])
    defparam i1244_2_lut_3_lut.init = 16'h6969;
    
endmodule
//
// Verilog Description of module Mixer
//

module Mixer (osc_clk, RFIn_c, RFInR, MixerOutSin_c_7, \MixerOutCos[2] , 
            \MixerOutCos_7__N_75[2] , \MixerOutSin_7__N_83[7] , MYLED_c_7) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    input RFIn_c;
    output RFInR;
    output MixerOutSin_c_7;
    output \MixerOutCos[2] ;
    input \MixerOutCos_7__N_75[2] ;
    input \MixerOutSin_7__N_83[7] ;
    output MYLED_c_7;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    
    wire RFInR1;
    wire [7:0]MixerOutSin_7__N_67;
    
    FD1S3AY RFInR1_20 (.D(RFIn_c), .CK(osc_clk), .Q(RFInR1)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=64, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(20[8] 23[25])
    defparam RFInR1_20.GSR = "ENABLED";
    FD1S3AY RFInR_21 (.D(RFInR1), .CK(osc_clk), .Q(RFInR)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=64, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(20[8] 23[25])
    defparam RFInR_21.GSR = "ENABLED";
    FD1S3AX MixerOutSin_i7 (.D(MixerOutSin_7__N_67[7]), .CK(osc_clk), .Q(MixerOutSin_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=64, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(27[8] 50[5])
    defparam MixerOutSin_i7.GSR = "ENABLED";
    FD1S3AX MixerOutCos_i2 (.D(\MixerOutCos_7__N_75[2] ), .CK(osc_clk), 
            .Q(\MixerOutCos[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=2, LSE_LLINE=64, LSE_RLINE=71 */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(27[8] 50[5])
    defparam MixerOutCos_i2.GSR = "ENABLED";
    LUT4 i1246_2_lut (.A(\MixerOutSin_7__N_83[7] ), .B(RFInR), .Z(MixerOutSin_7__N_67[7])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/mixer.v(35[4] 38[27])
    defparam i1246_2_lut.init = 16'h9999;
    LUT4 phase_accum_63__I_0_13_1_lut (.A(\MixerOutSin_7__N_83[7] ), .Z(MYLED_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(35[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (osc_clk, o_Rx_Byte_c_7, i_Rx_Serial_c, o_Rx_Byte_c_6, 
            o_Rx_Byte_c_0, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
            o_Rx_Byte_c_2, o_Rx_Byte_c_1, GND_net, o_Rx_DV_c_0) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output o_Rx_Byte_c_7;
    input i_Rx_Serial_c;
    output o_Rx_Byte_c_6;
    output o_Rx_Byte_c_0;
    output o_Rx_Byte_c_5;
    output o_Rx_Byte_c_4;
    output o_Rx_Byte_c_3;
    output o_Rx_Byte_c_2;
    output o_Rx_Byte_c_1;
    input GND_net;
    output o_Rx_DV_c_0;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(41[17:28])
    
    wire osc_clk_enable_17, n1890, r_Rx_Data;
    wire [2:0]r_SM_Main_2__N_2281;
    
    wire n1909;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(44[17:26])
    
    wire n1875, r_Rx_Data_R, n1730, osc_clk_enable_16, n1650, n1783, 
        osc_clk_enable_19, n1910;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(40[18:31])
    
    wire osc_clk_enable_641, n897;
    wire [15:0]n69;
    
    wire n1163, n1738, n1906, osc_clk_enable_26, osc_clk_enable_28, 
        osc_clk_enable_44, osc_clk_enable_46, osc_clk_enable_47, n426, 
        n1787, osc_clk_enable_642, n1913, n1785, n1149, n6, n1908, 
        n1769, n1874, n1873, n6_adj_2410, n1183, osc_clk_enable_615, 
        n1630, n1634, n8, n1912, n1614, n1613, n1612, n1611, 
        n1610, n1609, n1608, n1607, n6_adj_2411, o_Rx_DV_N_2330, 
        n10;
    
    FD1P3AX r_Bit_Index_i2 (.D(n1890), .SP(osc_clk_enable_17), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_15 (.A(r_Rx_Data), .B(r_SM_Main_2__N_2281[0]), .Z(n1909)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_15.init = 16'heeee;
    FD1S3IX r_SM_Main_i0 (.D(n1875), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(osc_clk), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1730), .SP(osc_clk_enable_17), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(osc_clk_enable_16), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n1650), .SP(osc_clk_enable_17), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(i_Rx_Serial_c), .CK(osc_clk), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    LUT4 i1222_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_2281[0]), .C(r_SM_Main[0]), 
         .Z(n1783)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1222_2_lut_3_lut.init = 16'he0e0;
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(osc_clk_enable_19), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n1910), .B(r_SM_Main[2]), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(osc_clk_enable_17)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;
    defparam i2_4_lut.init = 16'h0023;
    FD1P3IX r_Clock_Count_237__i9 (.D(n69[9]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i8 (.D(n69[8]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i8.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_16 (.A(n1163), .B(n1738), .Z(n1910)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_16.init = 16'heeee;
    LUT4 i1277_3_lut_4_lut (.A(n1906), .B(r_Bit_Index[2]), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_19)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1277_3_lut_4_lut.init = 16'h0400;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(osc_clk_enable_26), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i7 (.D(n69[7]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i7.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(osc_clk_enable_28), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i6 (.D(n69[6]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i6.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(osc_clk_enable_44), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i5 (.D(n69[5]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i5.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(osc_clk_enable_46), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(osc_clk_enable_47), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i4 (.D(n69[4]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i10 (.D(n69[10]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i10.GSR = "ENABLED";
    LUT4 i1279_2_lut_4_lut (.A(n1906), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_16)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1279_2_lut_4_lut.init = 16'h4000;
    LUT4 i256_2_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n426)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i256_2_lut.init = 16'h8888;
    LUT4 i26_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(n1787), .Z(osc_clk_enable_642)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i26_4_lut.init = 16'h2505;
    LUT4 i2_2_lut_rep_12_3_lut_4_lut (.A(n1163), .B(n1738), .C(n1913), 
         .D(r_SM_Main[0]), .Z(n1906)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i2_2_lut_rep_12_3_lut_4_lut.init = 16'hfff1;
    LUT4 i1226_3_lut (.A(r_Clock_Count[13]), .B(n1785), .C(r_Clock_Count[12]), 
         .Z(n1787)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1226_3_lut.init = 16'hfefe;
    LUT4 i1224_4_lut (.A(n1163), .B(r_Clock_Count[15]), .C(r_Clock_Count[14]), 
         .D(r_Clock_Count[11]), .Z(n1785)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1224_4_lut.init = 16'hfffe;
    LUT4 i992_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(n1149), 
         .D(r_Clock_Count[8]), .Z(n1163)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i992_4_lut.init = 16'hccc8;
    LUT4 i1287_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6), .D(r_SM_Main[0]), 
         .Z(osc_clk_enable_641)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1287_4_lut.init = 16'h4555;
    LUT4 i1_2_lut_rep_14_3_lut (.A(n1163), .B(n1738), .C(r_SM_Main[0]), 
         .Z(n1908)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_14_3_lut.init = 16'hf1f1;
    LUT4 i978_3_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n1769), 
         .Z(n1149)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i978_3_lut.init = 16'hc8c8;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_2281[0]), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    PFUMX i1300 (.BLUT(n1874), .ALUT(n1873), .C0(r_SM_Main[1]), .Z(n1875));
    LUT4 i4_4_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[12]), .C(r_Clock_Count[13]), 
         .D(n6_adj_2410), .Z(n1738)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(r_Clock_Count[14]), .B(r_Clock_Count[15]), .Z(n6_adj_2410)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(r_SM_Main[2]), .B(n1783), .C(n1910), .D(r_SM_Main[1]), 
         .Z(n897)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h5011;
    FD1P3IX r_Clock_Count_237__i3 (.D(n69[3]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i2 (.D(n69[2]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i1 (.D(n69[1]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i1.GSR = "ENABLED";
    LUT4 r_SM_Main_2__N_2275_2__bdd_4_lut (.A(n1910), .B(n426), .C(r_Bit_Index[2]), 
         .D(r_SM_Main[0]), .Z(n1873)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(D))) */ ;
    defparam r_SM_Main_2__N_2275_2__bdd_4_lut.init = 16'h5580;
    LUT4 i1274_2_lut_4_lut (.A(n1906), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_28)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1274_2_lut_4_lut.init = 16'h0040;
    FD1S3IX r_SM_Main_i1 (.D(n1183), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(osc_clk_enable_615), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n1910), .CK(osc_clk), .CD(n1630), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_2 (.A(r_Clock_Count[7]), .B(n1634), .C(n8), .D(n1738), 
         .Z(r_SM_Main_2__N_2281[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_4_lut_adj_2.init = 16'hfffb;
    LUT4 i1_2_lut_rep_18 (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n1912)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1_2_lut_rep_18.init = 16'heeee;
    FD1P3IX r_Clock_Count_237__i0 (.D(n69[0]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[0]), .C(r_Clock_Count[6]), 
         .Z(n1634)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    CCU2D r_Clock_Count_237_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1614), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_237_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1613), .COUT(n1614), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_15.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1612), .COUT(n1613), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_13.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1611), .COUT(n1612), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1610), .COUT(n1611), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1609), .COUT(n1610), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_7.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1608), .COUT(n1609), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_5.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1607), .COUT(n1608), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_237_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_237_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1607), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_237_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_237_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_237_add_4_1.INJECT1_1 = "NO";
    LUT4 i1254_2_lut_3_lut_4_lut_4_lut (.A(n1912), .B(r_Bit_Index[2]), .C(n1908), 
         .D(n1913), .Z(osc_clk_enable_26)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1254_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i3_3_lut (.A(n1769), .B(r_Clock_Count[10]), .C(r_Clock_Count[8]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_3 (.A(r_Clock_Count[1]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(n6_adj_2411), .Z(n1769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i4_4_lut_adj_3.init = 16'hfffe;
    LUT4 i1_2_lut_rep_19 (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .Z(n1913)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_19.init = 16'hbbbb;
    LUT4 i1263_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1906), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_615)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1263_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_4 (.A(r_Clock_Count[5]), .B(r_Clock_Count[4]), .Z(n6_adj_2411)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(85[17:52])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i1251_2_lut_3_lut_4_lut_4_lut (.A(n1913), .B(r_SM_Main[0]), .C(n1738), 
         .D(n1163), .Z(o_Rx_DV_N_2330)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1251_2_lut_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1266_2_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1906), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_47)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1266_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 r_SM_Main_1__bdd_4_lut (.A(r_SM_Main[1]), .B(n1908), .C(r_Bit_Index[2]), 
         .D(n426), .Z(n1890)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam r_SM_Main_1__bdd_4_lut.init = 16'h0220;
    LUT4 i3_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n1910), .D(n10), 
         .Z(n1730)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i24_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    LUT4 i1271_2_lut_2_lut_3_lut_4_lut (.A(n1913), .B(n1908), .C(n1912), 
         .D(r_Bit_Index[2]), .Z(osc_clk_enable_44)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1271_2_lut_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1268_2_lut_3_lut_4_lut (.A(r_Bit_Index[2]), .B(n1906), .C(r_Bit_Index[0]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_46)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1268_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1290_3_lut_4_lut (.A(r_SM_Main[0]), .B(n1910), .C(r_Bit_Index[0]), 
         .D(r_SM_Main[1]), .Z(n1650)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1290_3_lut_4_lut.init = 16'h0400;
    LUT4 i1260_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1630)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1260_3_lut.init = 16'hbfbf;
    LUT4 r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut (.A(n1910), .B(r_SM_Main[0]), 
         .C(n1909), .D(r_SM_Main[1]), .Z(n1183)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    LUT4 r_SM_Main_2__N_2275_2__bdd_3_lut (.A(r_SM_Main_2__N_2281[0]), .B(r_Rx_Data), 
         .C(r_SM_Main[0]), .Z(n1874)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam r_SM_Main_2__N_2275_2__bdd_3_lut.init = 16'ha3a3;
    FD1P3IX r_Clock_Count_237__i15 (.D(n69[15]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i13 (.D(n69[13]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i14 (.D(n69[14]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i11 (.D(n69[11]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_237__i12 (.D(n69[12]), .SP(osc_clk_enable_641), 
            .CD(n897), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_237__i12.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_2330), .SP(osc_clk_enable_642), .CK(osc_clk), 
            .Q(o_Rx_DV_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=95, LSE_RLINE=100 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module nco_sig
//

module nco_sig (GND_net, osc_clk, sinGen_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output sinGen_c;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(17[8:15])
    
    wire n1290;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(32[12:23])
    wire [63:0]phase_accum_63__N_1;
    
    wire n1291, n1289, n1288, n1287, n1286, n1285, n1284, n1283, 
        n1282, n1302, n1301, n1300, n1299, n1298, n1297, n1296, 
        n1295, n1294, n1293, n1292;
    
    CCU2D phase_accum_63__I_0_12_19 (.A0(phase_accum[39]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[40]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1290), .COUT(n1291), .S0(phase_accum_63__N_1[39]), 
          .S1(phase_accum_63__N_1[40]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_19.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_19.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_19.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_17 (.A0(phase_accum[37]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[38]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1289), .COUT(n1290), .S0(phase_accum_63__N_1[37]), 
          .S1(phase_accum_63__N_1[38]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_17.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_17.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_17.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_15 (.A0(phase_accum[35]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[36]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1288), .COUT(n1289), .S0(phase_accum_63__N_1[35]), 
          .S1(phase_accum_63__N_1[36]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_15.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_15.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_15.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_13 (.A0(phase_accum[33]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[34]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1287), .COUT(n1288), .S0(phase_accum_63__N_1[33]), 
          .S1(phase_accum_63__N_1[34]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_13.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_13.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_13.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_11 (.A0(phase_accum[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[32]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1286), .COUT(n1287), .S0(phase_accum_63__N_1[31]), 
          .S1(phase_accum_63__N_1[32]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_11.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_11.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_11.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_9 (.A0(phase_accum[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1285), .COUT(n1286), .S0(phase_accum_63__N_1[29]), 
          .S1(phase_accum_63__N_1[30]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_9.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_9.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_9.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_7 (.A0(phase_accum[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1284), .COUT(n1285), .S0(phase_accum_63__N_1[27]), 
          .S1(phase_accum_63__N_1[28]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_7.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_7.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_7.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_5 (.A0(phase_accum[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1283), .COUT(n1284), .S0(phase_accum_63__N_1[25]), 
          .S1(phase_accum_63__N_1[26]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_5.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_5.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_5.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_5.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_3 (.A0(phase_accum[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1282), .COUT(n1283), .S0(phase_accum_63__N_1[23]), 
          .S1(phase_accum_63__N_1[24]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_3.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_3.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_3.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1282), .S1(phase_accum_63__N_1[22]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_1.INIT0 = 16'hF000;
    defparam phase_accum_63__I_0_12_1.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_1.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_1.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_1[63]), .CK(osc_clk), 
            .Q(phase_accum[63])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_1[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_1[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_1[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_1[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_1[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_1[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_1[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_1[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_1[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_1[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_1[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_1[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_1[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_1[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_1[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_1[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_1[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_1[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_1[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_1[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_1[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_1[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_1[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_1[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_1[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_1[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_1[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_1[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_1[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_1[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_1[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_1[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_1[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_1[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_1[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_1[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_1[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_1[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_1[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_1[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_1[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=62 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(38[7] 51[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    CCU2D phase_accum_63__I_0_12_43 (.A0(phase_accum[63]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1302), .S0(phase_accum_63__N_1[63]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_43.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_43.INIT1 = 16'h0000;
    defparam phase_accum_63__I_0_12_43.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_43.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_41 (.A0(phase_accum[61]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[62]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1301), .COUT(n1302), .S0(phase_accum_63__N_1[61]), 
          .S1(phase_accum_63__N_1[62]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_41.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_41.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_41.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_39 (.A0(phase_accum[59]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[60]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1300), .COUT(n1301), .S0(phase_accum_63__N_1[59]), 
          .S1(phase_accum_63__N_1[60]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_39.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_39.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_39.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_37 (.A0(phase_accum[57]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[58]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1299), .COUT(n1300), .S0(phase_accum_63__N_1[57]), 
          .S1(phase_accum_63__N_1[58]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_37.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_37.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_37.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_35 (.A0(phase_accum[55]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[56]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1298), .COUT(n1299), .S0(phase_accum_63__N_1[55]), 
          .S1(phase_accum_63__N_1[56]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_35.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_35.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_35.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_33 (.A0(phase_accum[53]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[54]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1297), .COUT(n1298), .S0(phase_accum_63__N_1[53]), 
          .S1(phase_accum_63__N_1[54]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_33.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_33.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_33.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_31 (.A0(phase_accum[51]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[52]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1296), .COUT(n1297), .S0(phase_accum_63__N_1[51]), 
          .S1(phase_accum_63__N_1[52]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_31.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_31.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_31.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_31.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_29 (.A0(phase_accum[49]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[50]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1295), .COUT(n1296), .S0(phase_accum_63__N_1[49]), 
          .S1(phase_accum_63__N_1[50]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_29.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_29.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_29.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_29.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_27 (.A0(phase_accum[47]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[48]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1294), .COUT(n1295), .S0(phase_accum_63__N_1[47]), 
          .S1(phase_accum_63__N_1[48]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_27.INIT0 = 16'h5555;
    defparam phase_accum_63__I_0_12_27.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_27.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_27.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_25 (.A0(phase_accum[45]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[46]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1293), .COUT(n1294), .S0(phase_accum_63__N_1[45]), 
          .S1(phase_accum_63__N_1[46]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_25.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_25.INIT1 = 16'h5555;
    defparam phase_accum_63__I_0_12_25.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_25.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_23 (.A0(phase_accum[43]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[44]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1292), .COUT(n1293), .S0(phase_accum_63__N_1[43]), 
          .S1(phase_accum_63__N_1[44]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_23.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_23.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_23.INJECT1_1 = "NO";
    CCU2D phase_accum_63__I_0_12_21 (.A0(phase_accum[41]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(phase_accum[42]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1291), .COUT(n1292), .S0(phase_accum_63__N_1[41]), 
          .S1(phase_accum_63__N_1[42]));   // c:/users/user/lattice/fpgasdr/nco.v(46[17:45])
    defparam phase_accum_63__I_0_12_21.INIT0 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INIT1 = 16'h5aaa;
    defparam phase_accum_63__I_0_12_21.INJECT1_0 = "NO";
    defparam phase_accum_63__I_0_12_21.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_13_1_lut (.A(phase_accum[63]), .Z(sinGen_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(35[18:56])
    defparam phase_accum_63__I_0_13_1_lut.init = 16'h5555;
    
endmodule
