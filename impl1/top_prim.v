// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.2.115
// Netlist written on Fri Nov 23 23:28:26 2018
//
// Verilog Description of module top
//

module top (i_Rx_Serial, o_Tx_Serial, o_Rx_DV, o_Rx_Byte, MYLED, In0) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(2[8:11])
    input i_Rx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    output o_Tx_Serial;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    output o_Rx_DV;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    output [7:0]o_Rx_Byte;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    output [7:0]MYLED;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    input In0;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(11[13:16])
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[8:15])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Tx_Serial_c, o_Rx_Byte_c_7, 
        o_Rx_Byte_c_6, o_Rx_Byte_c_5, o_Rx_Byte_c_4, o_Rx_Byte_c_3, 
        o_Rx_Byte_c_2, o_Rx_Byte_c_1, o_Rx_Byte_c_0, MYLED_c_1, cos_out_1__N_1, 
        o_Rx_DV_c_0;
    
    VHI i2 (.Z(VCC_net));
    uart_tx uart_tx1 (.GND_net(GND_net), .osc_clk(osc_clk), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .o_Rx_Byte_c_0(o_Rx_Byte_c_0), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_5(o_Rx_Byte_c_5), 
            .o_Rx_Byte_c_6(o_Rx_Byte_c_6), .o_Rx_Byte_c_7(o_Rx_Byte_c_7), 
            .o_Rx_DV_c_0(o_Rx_DV_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(56[34] 63[2])
    GSR GSR_INST (.GSR(VCC_net));
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OB o_Rx_DV_pad (.I(o_Rx_DV_c_0), .O(o_Rx_DV));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(7[13:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(6[11:22])
    OB o_Rx_Byte_pad_7 (.I(o_Rx_Byte_c_7), .O(o_Rx_Byte[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_6 (.I(o_Rx_Byte_c_6), .O(o_Rx_Byte[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_5 (.I(o_Rx_Byte_c_5), .O(o_Rx_Byte[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_4 (.I(o_Rx_Byte_c_4), .O(o_Rx_Byte[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_3 (.I(o_Rx_Byte_c_3), .O(o_Rx_Byte[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_2 (.I(o_Rx_Byte_c_2), .O(o_Rx_Byte[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_1 (.I(o_Rx_Byte_c_1), .O(o_Rx_Byte[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB o_Rx_Byte_pad_0 (.I(o_Rx_Byte_c_0), .O(o_Rx_Byte[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(8[16:25])
    OB MYLED_pad_7 (.I(GND_net), .O(MYLED[7]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_6 (.I(GND_net), .O(MYLED[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_5 (.I(GND_net), .O(MYLED[5]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_4 (.I(GND_net), .O(MYLED[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_3 (.I(cos_out_1__N_1), .O(MYLED[3]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_2 (.I(VCC_net), .O(MYLED[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_1 (.I(MYLED_c_1), .O(MYLED[1]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    OB MYLED_pad_0 (.I(VCC_net), .O(MYLED[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(9[18:23])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(4[13:24])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_rx uart_rx1 (.osc_clk(osc_clk), .o_Rx_Byte_c_6(o_Rx_Byte_c_6), 
            .o_Rx_Byte_c_5(o_Rx_Byte_c_5), .i_Rx_Serial_c(i_Rx_Serial_c), 
            .o_Rx_Byte_c_4(o_Rx_Byte_c_4), .o_Rx_Byte_c_3(o_Rx_Byte_c_3), 
            .o_Rx_Byte_c_2(o_Rx_Byte_c_2), .o_Rx_Byte_c_1(o_Rx_Byte_c_1), 
            .GND_net(GND_net), .o_Rx_DV_c_0(o_Rx_DV_c_0), .o_Rx_Byte_c_0(o_Rx_Byte_c_0), 
            .o_Rx_Byte_c_7(o_Rx_Byte_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(48[34] 53[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    nco_sig nco (.GND_net(GND_net), .MYLED_c_1(MYLED_c_1), .osc_clk(osc_clk), 
            .cos_out_1__N_1(cos_out_1__N_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(35[10] 41[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (GND_net, osc_clk, o_Tx_Serial_c, o_Rx_Byte_c_0, o_Rx_Byte_c_1, 
            o_Rx_Byte_c_2, o_Rx_Byte_c_3, o_Rx_Byte_c_4, o_Rx_Byte_c_5, 
            o_Rx_Byte_c_6, o_Rx_Byte_c_7, o_Rx_DV_c_0) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input osc_clk;
    output o_Tx_Serial_c;
    input o_Rx_Byte_c_0;
    input o_Rx_Byte_c_1;
    input o_Rx_Byte_c_2;
    input o_Rx_Byte_c_3;
    input o_Rx_Byte_c_4;
    input o_Rx_Byte_c_5;
    input o_Rx_Byte_c_6;
    input o_Rx_Byte_c_7;
    input o_Rx_DV_c_0;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[8:15])
    
    wire n1668;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(32[17:30])
    wire [15:0]n69;
    
    wire n1669;
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(33[16:27])
    
    wire osc_clk_enable_45, n1724, n1667, osc_clk_enable_48, n3;
    wire [7:0]r_Tx_Data;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(34[16:25])
    
    wire osc_clk_enable_36, n1357;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(31[16:25])
    
    wire n1087, n10, n1487, n1995, n1996, n1992, n10_adj_304, 
        n1971, n1969, n1664, n1665, o_Tx_Serial_N_299, n1663, n3_adj_305, 
        n1666, n1086;
    wire [15:0]n121;
    
    wire n1537, n1993, n1976, n1948, n1670, n1541, n1994, n1720, 
        n10_adj_306, n1791, n1997;
    
    CCU2D r_Clock_Count_199_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1668), .COUT(n1669), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_13.INJECT1_1 = "NO";
    FD1P3AX r_Bit_Index_i0 (.D(n1724), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    CCU2D r_Clock_Count_199_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1667), .COUT(n1668), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_11.INJECT1_1 = "NO";
    FD1P3AX o_Tx_Serial_44 (.D(n3), .SP(osc_clk_enable_48), .CK(osc_clk), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam o_Tx_Serial_44.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(o_Rx_Byte_c_0), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i15 (.D(n69[15]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i15.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n1087), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i14 (.D(n69[14]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i13 (.D(n69[13]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i12 (.D(n69[12]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i12.GSR = "ENABLED";
    LUT4 i788_4_lut (.A(r_Clock_Count[2]), .B(r_Clock_Count[7]), .C(n10), 
         .D(r_Clock_Count[6]), .Z(n1487)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i788_4_lut.init = 16'hccc8;
    FD1P3IX r_Clock_Count_199__i11 (.D(n69[11]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i11.GSR = "ENABLED";
    LUT4 r_Tx_Data_0__bdd_3_lut_1206 (.A(r_Tx_Data[3]), .B(r_Tx_Data[1]), 
         .C(r_Bit_Index[1]), .Z(n1995)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1206.init = 16'hacac;
    LUT4 r_Tx_Data_0__bdd_3_lut_1213 (.A(r_Tx_Data[0]), .B(r_Tx_Data[2]), 
         .C(r_Bit_Index[1]), .Z(n1996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_1213.init = 16'hcaca;
    FD1P3IX r_Clock_Count_199__i10 (.D(n69[10]), .SP(osc_clk_enable_48), 
            .CD(n1357), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i9 (.D(n69[9]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i8 (.D(n69[8]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i8.GSR = "ENABLED";
    LUT4 r_Tx_Data_5__bdd_3_lut_1203 (.A(r_Tx_Data[5]), .B(r_Tx_Data[7]), 
         .C(r_Bit_Index[1]), .Z(n1992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut_1203.init = 16'hcaca;
    LUT4 i5_3_lut_rep_13 (.A(r_Clock_Count[11]), .B(n10_adj_304), .C(r_Clock_Count[13]), 
         .Z(n1971)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut_rep_13.init = 16'hfefe;
    LUT4 i475_2_lut_rep_11_4_lut (.A(r_Clock_Count[11]), .B(n10_adj_304), 
         .C(r_Clock_Count[13]), .D(r_SM_Main[0]), .Z(n1969)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i475_2_lut_rep_11_4_lut.init = 16'hff01;
    LUT4 i1_1_lut (.A(r_SM_Main[2]), .Z(osc_clk_enable_48)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    FD1P3IX r_Clock_Count_199__i7 (.D(n69[7]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i7.GSR = "ENABLED";
    CCU2D r_Clock_Count_199_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1664), .COUT(n1665), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_5.INJECT1_1 = "NO";
    LUT4 r_SM_Main_2__I_0_55_i3_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_299), 
         .C(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam r_SM_Main_2__I_0_55_i3_3_lut.init = 16'he5e5;
    CCU2D r_Clock_Count_199_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1663), .COUT(n1664), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_3.INJECT1_1 = "NO";
    FD1P3AX r_Tx_Data_i1 (.D(o_Rx_Byte_c_1), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(o_Rx_Byte_c_2), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(o_Rx_Byte_c_3), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(o_Rx_Byte_c_4), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(o_Rx_Byte_c_5), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(o_Rx_Byte_c_6), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(o_Rx_Byte_c_7), .SP(osc_clk_enable_36), .CK(osc_clk), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_305), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    CCU2D r_Clock_Count_199_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1666), .COUT(n1667), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_9.INJECT1_1 = "NO";
    LUT4 i1169_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(n1971), .Z(osc_clk_enable_45)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1169_3_lut_4_lut.init = 16'h1101;
    LUT4 i1174_4_lut (.A(r_SM_Main[2]), .B(n1971), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(n1357)) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;
    defparam i1174_4_lut.init = 16'h4445;
    LUT4 i388_3_lut (.A(n1086), .B(n1971), .C(r_SM_Main[0]), .Z(n1087)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i388_3_lut.init = 16'h3a3a;
    CCU2D r_Clock_Count_199_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1663), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_199_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_199_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_1.INJECT1_1 = "NO";
    LUT4 i387_4_lut (.A(o_Rx_DV_c_0), .B(n1537), .C(r_SM_Main[1]), .D(n1971), 
         .Z(n1086)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i387_4_lut.init = 16'hca0a;
    LUT4 i2_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(o_Rx_DV_c_0), .Z(osc_clk_enable_36)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 r_Tx_Data_5__bdd_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[6]), .C(r_Bit_Index[1]), 
         .Z(n1993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_5__bdd_3_lut.init = 16'hcaca;
    FD1P3IX r_Clock_Count_199__i6 (.D(n69[6]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i6.GSR = "ENABLED";
    LUT4 i238_2_lut_rep_18 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n1976)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i238_2_lut_rep_18.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n1537)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(96[36:54])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    FD1P3IX r_Clock_Count_199__i5 (.D(n69[5]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i4 (.D(n69[4]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i3 (.D(n69[3]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i3.GSR = "ENABLED";
    LUT4 r_SM_Main_1__bdd_4_lut (.A(r_SM_Main[1]), .B(n1969), .C(n1976), 
         .D(r_Bit_Index[2]), .Z(n1948)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam r_SM_Main_1__bdd_4_lut.init = 16'h0220;
    LUT4 i494_3_lut (.A(n1971), .B(r_SM_Main[1]), .C(r_SM_Main[0]), .Z(n3_adj_305)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i494_3_lut.init = 16'h6c6c;
    CCU2D r_Clock_Count_199_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1670), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_199_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_199_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1669), .COUT(n1670), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_15.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n1541), .B(r_Clock_Count[14]), .C(r_Clock_Count[12]), 
         .D(r_Clock_Count[15]), .Z(n10_adj_304)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    PFUMX i1204 (.BLUT(n1993), .ALUT(n1992), .C0(r_Bit_Index[0]), .Z(n1994));
    LUT4 i4_4_lut_adj_6 (.A(r_Clock_Count[1]), .B(r_Clock_Count[3]), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[4]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_6.init = 16'hfffe;
    LUT4 i842_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(n1487), 
         .D(r_Clock_Count[8]), .Z(n1541)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i842_4_lut.init = 16'hccc8;
    FD1P3IX r_Clock_Count_199__i2 (.D(n69[2]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_199__i1 (.D(n69[1]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i1.GSR = "ENABLED";
    LUT4 i1171_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1720)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i1171_3_lut.init = 16'hbfbf;
    FD1S3IX r_SM_Main_i2 (.D(n1971), .CK(osc_clk), .CD(n1720), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1948), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i24_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n10_adj_306)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    FD1P3AX r_Bit_Index_i1 (.D(n1791), .SP(osc_clk_enable_45), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=63 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(38[10] 141[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n1971), .B(r_SM_Main[0]), .C(r_SM_Main[1]), .D(n10_adj_306), 
         .Z(n1791)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h2000;
    LUT4 i1179_3_lut_4_lut (.A(n1971), .B(r_SM_Main[0]), .C(r_Bit_Index[0]), 
         .D(r_SM_Main[1]), .Z(n1724)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(41[7] 140[14])
    defparam i1179_3_lut_4_lut.init = 16'h0200;
    L6MUX21 i1209 (.D0(n1997), .D1(n1994), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_299));
    PFUMX i1207 (.BLUT(n1996), .ALUT(n1995), .C0(r_Bit_Index[0]), .Z(n1997));
    FD1P3IX r_Clock_Count_199__i0 (.D(n69[0]), .SP(osc_clk_enable_48), .CD(n1357), 
            .CK(osc_clk), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199__i0.GSR = "ENABLED";
    CCU2D r_Clock_Count_199_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1665), .COUT(n1666), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uarttx.v(116[34:54])
    defparam r_Clock_Count_199_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_199_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_199_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (osc_clk, o_Rx_Byte_c_6, o_Rx_Byte_c_5, i_Rx_Serial_c, 
            o_Rx_Byte_c_4, o_Rx_Byte_c_3, o_Rx_Byte_c_2, o_Rx_Byte_c_1, 
            GND_net, o_Rx_DV_c_0, o_Rx_Byte_c_0, o_Rx_Byte_c_7) /* synthesis syn_module_defined=1 */ ;
    input osc_clk;
    output o_Rx_Byte_c_6;
    output o_Rx_Byte_c_5;
    input i_Rx_Serial_c;
    output o_Rx_Byte_c_4;
    output o_Rx_Byte_c_3;
    output o_Rx_Byte_c_2;
    output o_Rx_Byte_c_1;
    input GND_net;
    output o_Rx_DV_c_0;
    output o_Rx_Byte_c_0;
    output o_Rx_Byte_c_7;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[8:15])
    
    wire r_Rx_Data, r_Rx_Data_R, osc_clk_enable_1, n1936, n1935;
    wire [2:0]r_SM_Main;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(44[17:26])
    
    wire n1937;
    wire [15:0]r_Clock_Count;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(40[18:31])
    
    wire osc_clk_enable_55, n1344;
    wire [15:0]n69;
    
    wire osc_clk_enable_4;
    wire [2:0]r_Bit_Index;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(41[17:28])
    
    wire osc_clk_enable_52, n1799, osc_clk_enable_7, osc_clk_enable_17, 
        n1972, osc_clk_enable_21, osc_clk_enable_22, n1717, n1575, 
        n1967;
    wire [2:0]r_SM_Main_2__N_173;
    
    wire n1970, n1857, n1563, n1803, n1973, n1831, n8, n6, n1968, 
        n1974, n1966, n1975, o_Rx_DV_N_222, n1816, osc_clk_enable_56, 
        n1557, n6_adj_302, n1710, n1709, osc_clk_enable_50, n1801, 
        n6_adj_303, n1708, n1719, n1859, osc_clk_enable_49, n1855, 
        n1707, n1706, n1705, n1704, n1703;
    
    FD1S3AY r_Rx_Data_50 (.D(r_Rx_Data_R), .CK(osc_clk), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_50.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(osc_clk_enable_1), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_6)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    PFUMX i1190 (.BLUT(n1936), .ALUT(n1935), .C0(r_SM_Main[1]), .Z(n1937));
    FD1P3IX r_Clock_Count_197__i3 (.D(n69[3]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i2 (.D(n69[2]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(osc_clk_enable_4), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_5)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n1799), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_49 (.D(i_Rx_Serial_c), .CK(osc_clk), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(58[9] 62[8])
    defparam r_Rx_Data_R_49.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(osc_clk_enable_7), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_4)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i1 (.D(n69[1]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i6 (.D(n69[6]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i15 (.D(n69[15]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i5 (.D(n69[5]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i8 (.D(n69[8]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i8.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(osc_clk_enable_17), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_3)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    LUT4 i1148_4_lut_4_lut (.A(n1972), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[2]), .Z(osc_clk_enable_52)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;
    defparam i1148_4_lut_4_lut.init = 16'h000b;
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(osc_clk_enable_21), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(osc_clk_enable_22), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[6]), .C(r_Clock_Count[0]), 
         .Z(n1717)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    FD1S3IX r_SM_Main_i1 (.D(n1575), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_9_4_lut_4_lut (.A(n1972), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main[0]), .Z(n1967)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_9_4_lut_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_rep_12 (.A(r_Rx_Data), .B(r_SM_Main_2__N_173[0]), .Z(n1970)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_12.init = 16'heeee;
    LUT4 i1114_2_lut_3_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_173[0]), .C(r_SM_Main[0]), 
         .Z(n1857)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1114_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_14 (.A(n1563), .B(n1803), .Z(n1972)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_14.init = 16'heeee;
    FD1P3IX r_Clock_Count_197__i0 (.D(n69[0]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i0.GSR = "ENABLED";
    LUT4 r_SM_Main_2__N_173_0__bdd_3_lut_1189_4_lut (.A(n1563), .B(n1803), 
         .C(r_SM_Main[0]), .D(n1973), .Z(n1935)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam r_SM_Main_2__N_173_0__bdd_3_lut_1189_4_lut.init = 16'h1e10;
    FD1P3IX r_Clock_Count_197__i7 (.D(n69[7]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i14 (.D(n69[14]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i14.GSR = "ENABLED";
    LUT4 i3_3_lut (.A(n1831), .B(r_Clock_Count[10]), .C(r_Clock_Count[8]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[12]), .C(r_Clock_Count[13]), 
         .D(n6), .Z(n1803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_10_2_lut_3_lut (.A(n1563), .B(n1803), .C(r_SM_Main[0]), 
         .Z(n1968)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_10_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut (.A(r_Clock_Count[14]), .B(r_Clock_Count[15]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_8_3_lut_3_lut_4_lut (.A(n1563), .B(n1803), .C(r_SM_Main[0]), 
         .D(n1974), .Z(n1966)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_rep_8_3_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 i1154_2_lut_3_lut_4_lut_4_lut (.A(n1975), .B(r_Bit_Index[0]), .C(n1974), 
         .D(n1968), .Z(osc_clk_enable_21)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1154_2_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i1145_2_lut_3_lut_4_lut_4_lut (.A(n1974), .B(r_SM_Main[0]), .C(n1803), 
         .D(n1563), .Z(o_Rx_DV_N_222)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1145_2_lut_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1157_2_lut_3_lut_4_lut_4_lut (.A(n1975), .B(r_Bit_Index[0]), .C(n1974), 
         .D(n1968), .Z(osc_clk_enable_17)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1157_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_16 (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .Z(n1974)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_16.init = 16'hbbbb;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[2]), .Z(n1816)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    LUT4 i2_2_lut_rep_15_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n1973)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(119[36:54])
    defparam i2_2_lut_rep_15_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_17 (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .Z(n1975)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1_2_lut_rep_17.init = 16'hbbbb;
    LUT4 i1166_2_lut_2_lut_4_lut (.A(n1968), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(n1973), .Z(osc_clk_enable_56)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1166_2_lut_2_lut_4_lut.init = 16'h0400;
    LUT4 i864_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[10]), .C(n1557), 
         .D(r_Clock_Count[8]), .Z(n1563)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i864_4_lut.init = 16'hccc8;
    LUT4 i1160_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(n1966), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[2]), .Z(osc_clk_enable_7)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1160_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut (.A(r_Clock_Count[7]), .B(n1717), .C(n8), .D(n1803), 
         .Z(r_SM_Main_2__N_173[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i1162_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(n1966), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_4)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1162_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i858_3_lut (.A(r_Clock_Count[6]), .B(r_Clock_Count[7]), .C(n1831), 
         .Z(n1557)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i858_3_lut.init = 16'hc8c8;
    LUT4 i4_4_lut_adj_2 (.A(r_Clock_Count[1]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(n6_adj_302), .Z(n1831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i4_4_lut_adj_2.init = 16'hfffe;
    LUT4 i1_2_lut_adj_3 (.A(r_Clock_Count[5]), .B(r_Clock_Count[4]), .Z(n6_adj_302)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(135[17:47])
    defparam i1_2_lut_adj_3.init = 16'heeee;
    CCU2D r_Clock_Count_197_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1710), .S0(n69[15]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_17.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_197_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_17.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_197_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1709), .COUT(n1710), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_15.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_15.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_15.INJECT1_1 = "NO";
    LUT4 i1136_4_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_Bit_Index[2]), 
         .D(n1967), .Z(osc_clk_enable_50)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1136_4_lut.init = 16'h0001;
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n1801)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i1177_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(n6_adj_303), 
         .D(r_SM_Main[0]), .Z(osc_clk_enable_55)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1177_4_lut.init = 16'h4555;
    LUT4 i2_2_lut (.A(r_Rx_Data), .B(r_SM_Main_2__N_173[0]), .Z(n6_adj_303)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_4 (.A(r_SM_Main[2]), .B(n1857), .C(n1972), .D(r_SM_Main[1]), 
         .Z(n1344)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h5011;
    LUT4 r_SM_Main_2__N_173_0__bdd_3_lut (.A(r_SM_Main_2__N_173[0]), .B(r_Rx_Data), 
         .C(r_SM_Main[0]), .Z(n1936)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam r_SM_Main_2__N_173_0__bdd_3_lut.init = 16'ha3a3;
    CCU2D r_Clock_Count_197_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1708), .COUT(n1709), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_13.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_13.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_13.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_197__i13 (.D(n69[13]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i13.GSR = "ENABLED";
    LUT4 i1151_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(n1966), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[1]), .Z(osc_clk_enable_22)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1151_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1143_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1719)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(69[7] 160[14])
    defparam i1143_3_lut.init = 16'hbfbf;
    LUT4 i26_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(n1859), .Z(osc_clk_enable_49)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (C))) */ ;
    defparam i26_4_lut.init = 16'h2505;
    LUT4 i1_2_lut_adj_5 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n1799)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_5.init = 16'h4444;
    LUT4 i1116_3_lut (.A(r_Clock_Count[13]), .B(n1855), .C(r_Clock_Count[12]), 
         .Z(n1859)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1116_3_lut.init = 16'hfefe;
    CCU2D r_Clock_Count_197_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1707), .COUT(n1708), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_11.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_11.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_11.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_197_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1706), .COUT(n1707), .S0(n69[7]), 
          .S1(n69[8]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_9.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_9.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_9.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_197_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1705), .COUT(n1706), .S0(n69[5]), 
          .S1(n69[6]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_7.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_197__i4 (.D(n69[4]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i4.GSR = "ENABLED";
    LUT4 i1112_4_lut (.A(n1563), .B(r_Clock_Count[15]), .C(r_Clock_Count[14]), 
         .D(r_Clock_Count[11]), .Z(n1855)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1112_4_lut.init = 16'hfffe;
    LUT4 i1164_2_lut_3_lut_4_lut (.A(r_Bit_Index[0]), .B(n1966), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[2]), .Z(osc_clk_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(114[17:39])
    defparam i1164_2_lut_3_lut_4_lut.init = 16'h1000;
    FD1S3IX r_SM_Main_i2 (.D(n1972), .CK(osc_clk), .CD(n1719), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    CCU2D r_Clock_Count_197_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1704), .COUT(n1705), .S0(n69[3]), 
          .S1(n69[4]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_5.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_197__i12 (.D(n69[12]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i12.GSR = "ENABLED";
    CCU2D r_Clock_Count_197_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n1703), .COUT(n1704), .S0(n69[1]), 
          .S1(n69[2]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clock_Count_197_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clock_Count_197_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1703), .S1(n69[0]));   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197_add_4_1.INIT0 = 16'hF000;
    defparam r_Clock_Count_197_add_4_1.INIT1 = 16'h0555;
    defparam r_Clock_Count_197_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_197_add_4_1.INJECT1_1 = "NO";
    FD1P3AX r_Rx_DV_52 (.D(o_Rx_DV_N_222), .SP(osc_clk_enable_49), .CK(osc_clk), 
            .Q(o_Rx_DV_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_DV_52.GSR = "ENABLED";
    LUT4 r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut (.A(n1972), .B(r_SM_Main[0]), 
         .C(n1970), .D(r_SM_Main[1]), .Z(n1575)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B ((D)+!C)+!B (D)))) */ ;
    defparam r_SM_Main_2__I_0_56_Mux_1_i3_4_lut_4_lut.init = 16'h770c;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(osc_clk_enable_50), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_0)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1816), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1801), .SP(osc_clk_enable_52), .CK(osc_clk), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i11 (.D(n69[11]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i10 (.D(n69[10]), .SP(osc_clk_enable_55), 
            .CD(n1344), .CK(osc_clk), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i10.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n1937), .CK(osc_clk), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_197__i9 (.D(n69[9]), .SP(osc_clk_enable_55), .CD(n1344), 
            .CK(osc_clk), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(137[34:54])
    defparam r_Clock_Count_197__i9.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i8 (.D(r_Rx_Data), .SP(osc_clk_enable_56), .CK(osc_clk), 
            .Q(o_Rx_Byte_c_7)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=2, LSE_LCOL=34, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=53 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/uartrx.v(66[10] 161[8])
    defparam r_Rx_Byte_i8.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module nco_sig
//

module nco_sig (GND_net, MYLED_c_1, osc_clk, cos_out_1__N_1) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output MYLED_c_1;
    input osc_clk;
    output cos_out_1__N_1;
    
    wire osc_clk /* synthesis SET_AS_NETWORK=osc_clk, is_clock=1 */ ;   // c:/users/user/lattice/fpgasdr/impl1/source/top.v(14[8:15])
    
    wire n1693;
    wire [63:0]phase_accum;   // c:/users/user/lattice/fpgasdr/nco.v(26[12:23])
    wire [63:0]phase_accum_63__N_73;
    
    wire n1694, n1677, n1678, n1676, n1675, n1686, n1687, n1692, 
        n1691, n1685, n1684, n1674, n1690, n1683, n1682, n1681, 
        n1673, n1689, n1672, n1680, n1688, n1671, n1679, n1701, 
        n1700, n1699, n1698, n1697, n1696, n1695;
    
    CCU2D add_195_47 (.A0(phase_accum[46]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[47]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1693), .COUT(n1694), .S0(phase_accum_63__N_73[46]), 
          .S1(phase_accum_63__N_73[47]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_47.INIT0 = 16'h5aaa;
    defparam add_195_47.INIT1 = 16'h5aaa;
    defparam add_195_47.INJECT1_0 = "NO";
    defparam add_195_47.INJECT1_1 = "NO";
    CCU2D add_195_15 (.A0(phase_accum[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1677), .COUT(n1678), .S0(phase_accum_63__N_73[14]), 
          .S1(phase_accum_63__N_73[15]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_15.INIT0 = 16'h5aaa;
    defparam add_195_15.INIT1 = 16'h5aaa;
    defparam add_195_15.INJECT1_0 = "NO";
    defparam add_195_15.INJECT1_1 = "NO";
    CCU2D add_195_13 (.A0(phase_accum[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1676), .COUT(n1677), .S0(phase_accum_63__N_73[12]), 
          .S1(phase_accum_63__N_73[13]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_13.INIT0 = 16'h5555;
    defparam add_195_13.INIT1 = 16'h5555;
    defparam add_195_13.INJECT1_0 = "NO";
    defparam add_195_13.INJECT1_1 = "NO";
    CCU2D add_195_11 (.A0(phase_accum[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1675), .COUT(n1676), .S0(phase_accum_63__N_73[10]), 
          .S1(phase_accum_63__N_73[11]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_11.INIT0 = 16'h5555;
    defparam add_195_11.INIT1 = 16'h5aaa;
    defparam add_195_11.INJECT1_0 = "NO";
    defparam add_195_11.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i63 (.D(phase_accum_63__N_73[63]), .CK(osc_clk), 
            .Q(MYLED_c_1)) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i63.GSR = "ENABLED";
    FD1S3AX phase_accum_i62 (.D(phase_accum_63__N_73[62]), .CK(osc_clk), 
            .Q(phase_accum[62])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i62.GSR = "ENABLED";
    FD1S3AX phase_accum_i61 (.D(phase_accum_63__N_73[61]), .CK(osc_clk), 
            .Q(phase_accum[61])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i61.GSR = "ENABLED";
    FD1S3AX phase_accum_i60 (.D(phase_accum_63__N_73[60]), .CK(osc_clk), 
            .Q(phase_accum[60])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i60.GSR = "ENABLED";
    FD1S3AX phase_accum_i59 (.D(phase_accum_63__N_73[59]), .CK(osc_clk), 
            .Q(phase_accum[59])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i59.GSR = "ENABLED";
    FD1S3AX phase_accum_i58 (.D(phase_accum_63__N_73[58]), .CK(osc_clk), 
            .Q(phase_accum[58])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i58.GSR = "ENABLED";
    FD1S3AX phase_accum_i57 (.D(phase_accum_63__N_73[57]), .CK(osc_clk), 
            .Q(phase_accum[57])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i57.GSR = "ENABLED";
    FD1S3AX phase_accum_i56 (.D(phase_accum_63__N_73[56]), .CK(osc_clk), 
            .Q(phase_accum[56])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i56.GSR = "ENABLED";
    FD1S3AX phase_accum_i55 (.D(phase_accum_63__N_73[55]), .CK(osc_clk), 
            .Q(phase_accum[55])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i55.GSR = "ENABLED";
    FD1S3AX phase_accum_i54 (.D(phase_accum_63__N_73[54]), .CK(osc_clk), 
            .Q(phase_accum[54])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i54.GSR = "ENABLED";
    FD1S3AX phase_accum_i53 (.D(phase_accum_63__N_73[53]), .CK(osc_clk), 
            .Q(phase_accum[53])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i53.GSR = "ENABLED";
    FD1S3AX phase_accum_i52 (.D(phase_accum_63__N_73[52]), .CK(osc_clk), 
            .Q(phase_accum[52])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i52.GSR = "ENABLED";
    FD1S3AX phase_accum_i51 (.D(phase_accum_63__N_73[51]), .CK(osc_clk), 
            .Q(phase_accum[51])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i51.GSR = "ENABLED";
    FD1S3AX phase_accum_i50 (.D(phase_accum_63__N_73[50]), .CK(osc_clk), 
            .Q(phase_accum[50])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i50.GSR = "ENABLED";
    FD1S3AX phase_accum_i49 (.D(phase_accum_63__N_73[49]), .CK(osc_clk), 
            .Q(phase_accum[49])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i49.GSR = "ENABLED";
    FD1S3AX phase_accum_i48 (.D(phase_accum_63__N_73[48]), .CK(osc_clk), 
            .Q(phase_accum[48])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i48.GSR = "ENABLED";
    FD1S3AX phase_accum_i47 (.D(phase_accum_63__N_73[47]), .CK(osc_clk), 
            .Q(phase_accum[47])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i47.GSR = "ENABLED";
    FD1S3AX phase_accum_i46 (.D(phase_accum_63__N_73[46]), .CK(osc_clk), 
            .Q(phase_accum[46])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i46.GSR = "ENABLED";
    FD1S3AX phase_accum_i45 (.D(phase_accum_63__N_73[45]), .CK(osc_clk), 
            .Q(phase_accum[45])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i45.GSR = "ENABLED";
    FD1S3AX phase_accum_i44 (.D(phase_accum_63__N_73[44]), .CK(osc_clk), 
            .Q(phase_accum[44])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i44.GSR = "ENABLED";
    FD1S3AX phase_accum_i43 (.D(phase_accum_63__N_73[43]), .CK(osc_clk), 
            .Q(phase_accum[43])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i43.GSR = "ENABLED";
    FD1S3AX phase_accum_i42 (.D(phase_accum_63__N_73[42]), .CK(osc_clk), 
            .Q(phase_accum[42])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i42.GSR = "ENABLED";
    CCU2D add_195_33 (.A0(phase_accum[32]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[33]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1686), .COUT(n1687), .S0(phase_accum_63__N_73[32]), 
          .S1(phase_accum_63__N_73[33]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_33.INIT0 = 16'h5aaa;
    defparam add_195_33.INIT1 = 16'h5aaa;
    defparam add_195_33.INJECT1_0 = "NO";
    defparam add_195_33.INJECT1_1 = "NO";
    FD1S3AX phase_accum_i41 (.D(phase_accum_63__N_73[41]), .CK(osc_clk), 
            .Q(phase_accum[41])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i41.GSR = "ENABLED";
    FD1S3AX phase_accum_i40 (.D(phase_accum_63__N_73[40]), .CK(osc_clk), 
            .Q(phase_accum[40])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i40.GSR = "ENABLED";
    FD1S3AX phase_accum_i39 (.D(phase_accum_63__N_73[39]), .CK(osc_clk), 
            .Q(phase_accum[39])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i39.GSR = "ENABLED";
    FD1S3AX phase_accum_i38 (.D(phase_accum_63__N_73[38]), .CK(osc_clk), 
            .Q(phase_accum[38])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i38.GSR = "ENABLED";
    FD1S3AX phase_accum_i37 (.D(phase_accum_63__N_73[37]), .CK(osc_clk), 
            .Q(phase_accum[37])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i37.GSR = "ENABLED";
    FD1S3AX phase_accum_i36 (.D(phase_accum_63__N_73[36]), .CK(osc_clk), 
            .Q(phase_accum[36])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i36.GSR = "ENABLED";
    FD1S3AX phase_accum_i35 (.D(phase_accum_63__N_73[35]), .CK(osc_clk), 
            .Q(phase_accum[35])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i35.GSR = "ENABLED";
    FD1S3AX phase_accum_i34 (.D(phase_accum_63__N_73[34]), .CK(osc_clk), 
            .Q(phase_accum[34])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i34.GSR = "ENABLED";
    FD1S3AX phase_accum_i33 (.D(phase_accum_63__N_73[33]), .CK(osc_clk), 
            .Q(phase_accum[33])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i33.GSR = "ENABLED";
    FD1S3AX phase_accum_i32 (.D(phase_accum_63__N_73[32]), .CK(osc_clk), 
            .Q(phase_accum[32])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i32.GSR = "ENABLED";
    FD1S3AX phase_accum_i31 (.D(phase_accum_63__N_73[31]), .CK(osc_clk), 
            .Q(phase_accum[31])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i31.GSR = "ENABLED";
    FD1S3AX phase_accum_i30 (.D(phase_accum_63__N_73[30]), .CK(osc_clk), 
            .Q(phase_accum[30])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i30.GSR = "ENABLED";
    FD1S3AX phase_accum_i29 (.D(phase_accum_63__N_73[29]), .CK(osc_clk), 
            .Q(phase_accum[29])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i29.GSR = "ENABLED";
    FD1S3AX phase_accum_i28 (.D(phase_accum_63__N_73[28]), .CK(osc_clk), 
            .Q(phase_accum[28])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i28.GSR = "ENABLED";
    FD1S3AX phase_accum_i27 (.D(phase_accum_63__N_73[27]), .CK(osc_clk), 
            .Q(phase_accum[27])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i27.GSR = "ENABLED";
    FD1S3AX phase_accum_i26 (.D(phase_accum_63__N_73[26]), .CK(osc_clk), 
            .Q(phase_accum[26])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i26.GSR = "ENABLED";
    FD1S3AX phase_accum_i25 (.D(phase_accum_63__N_73[25]), .CK(osc_clk), 
            .Q(phase_accum[25])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i25.GSR = "ENABLED";
    FD1S3AX phase_accum_i24 (.D(phase_accum_63__N_73[24]), .CK(osc_clk), 
            .Q(phase_accum[24])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i24.GSR = "ENABLED";
    FD1S3AX phase_accum_i23 (.D(phase_accum_63__N_73[23]), .CK(osc_clk), 
            .Q(phase_accum[23])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i23.GSR = "ENABLED";
    FD1S3AX phase_accum_i22 (.D(phase_accum_63__N_73[22]), .CK(osc_clk), 
            .Q(phase_accum[22])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i22.GSR = "ENABLED";
    FD1S3AX phase_accum_i21 (.D(phase_accum_63__N_73[21]), .CK(osc_clk), 
            .Q(phase_accum[21])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i21.GSR = "ENABLED";
    FD1S3AX phase_accum_i20 (.D(phase_accum_63__N_73[20]), .CK(osc_clk), 
            .Q(phase_accum[20])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i20.GSR = "ENABLED";
    FD1S3AX phase_accum_i19 (.D(phase_accum_63__N_73[19]), .CK(osc_clk), 
            .Q(phase_accum[19])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i19.GSR = "ENABLED";
    FD1S3AX phase_accum_i18 (.D(phase_accum_63__N_73[18]), .CK(osc_clk), 
            .Q(phase_accum[18])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i18.GSR = "ENABLED";
    FD1S3AX phase_accum_i17 (.D(phase_accum_63__N_73[17]), .CK(osc_clk), 
            .Q(phase_accum[17])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i17.GSR = "ENABLED";
    FD1S3AX phase_accum_i16 (.D(phase_accum_63__N_73[16]), .CK(osc_clk), 
            .Q(phase_accum[16])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i16.GSR = "ENABLED";
    FD1S3AX phase_accum_i15 (.D(phase_accum_63__N_73[15]), .CK(osc_clk), 
            .Q(phase_accum[15])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i15.GSR = "ENABLED";
    FD1S3AX phase_accum_i14 (.D(phase_accum_63__N_73[14]), .CK(osc_clk), 
            .Q(phase_accum[14])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i14.GSR = "ENABLED";
    FD1S3AX phase_accum_i13 (.D(phase_accum_63__N_73[13]), .CK(osc_clk), 
            .Q(phase_accum[13])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i13.GSR = "ENABLED";
    FD1S3AX phase_accum_i12 (.D(phase_accum_63__N_73[12]), .CK(osc_clk), 
            .Q(phase_accum[12])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i12.GSR = "ENABLED";
    FD1S3AX phase_accum_i11 (.D(phase_accum_63__N_73[11]), .CK(osc_clk), 
            .Q(phase_accum[11])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i11.GSR = "ENABLED";
    FD1S3AX phase_accum_i10 (.D(phase_accum_63__N_73[10]), .CK(osc_clk), 
            .Q(phase_accum[10])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i10.GSR = "ENABLED";
    FD1S3AX phase_accum_i9 (.D(phase_accum_63__N_73[9]), .CK(osc_clk), .Q(phase_accum[9])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i9.GSR = "ENABLED";
    FD1S3AX phase_accum_i8 (.D(phase_accum_63__N_73[8]), .CK(osc_clk), .Q(phase_accum[8])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i8.GSR = "ENABLED";
    FD1S3AX phase_accum_i7 (.D(phase_accum_63__N_73[7]), .CK(osc_clk), .Q(phase_accum[7])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i7.GSR = "ENABLED";
    FD1S3AX phase_accum_i6 (.D(phase_accum_63__N_73[6]), .CK(osc_clk), .Q(phase_accum[6])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i6.GSR = "ENABLED";
    FD1S3AX phase_accum_i5 (.D(phase_accum_63__N_73[5]), .CK(osc_clk), .Q(phase_accum[5])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i5.GSR = "ENABLED";
    FD1S3AX phase_accum_i4 (.D(phase_accum_63__N_73[4]), .CK(osc_clk), .Q(phase_accum[4])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i4.GSR = "ENABLED";
    FD1S3AX phase_accum_i3 (.D(phase_accum_63__N_73[3]), .CK(osc_clk), .Q(phase_accum[3])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i3.GSR = "ENABLED";
    FD1S3AX phase_accum_i2 (.D(phase_accum_63__N_73[2]), .CK(osc_clk), .Q(phase_accum[2])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i2.GSR = "ENABLED";
    FD1S3AX phase_accum_i1 (.D(phase_accum_63__N_73[1]), .CK(osc_clk), .Q(phase_accum[1])) /* synthesis LSE_LINE_FILE_ID=2, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=41 */ ;   // c:/users/user/lattice/fpgasdr/nco.v(33[7] 46[4])
    defparam phase_accum_i1.GSR = "ENABLED";
    CCU2D add_195_45 (.A0(phase_accum[44]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[45]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1692), .COUT(n1693), .S0(phase_accum_63__N_73[44]), 
          .S1(phase_accum_63__N_73[45]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_45.INIT0 = 16'h5aaa;
    defparam add_195_45.INIT1 = 16'h5aaa;
    defparam add_195_45.INJECT1_0 = "NO";
    defparam add_195_45.INJECT1_1 = "NO";
    CCU2D add_195_43 (.A0(phase_accum[42]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[43]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1691), .COUT(n1692), .S0(phase_accum_63__N_73[42]), 
          .S1(phase_accum_63__N_73[43]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_43.INIT0 = 16'h5aaa;
    defparam add_195_43.INIT1 = 16'h5aaa;
    defparam add_195_43.INJECT1_0 = "NO";
    defparam add_195_43.INJECT1_1 = "NO";
    CCU2D add_195_31 (.A0(phase_accum[30]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[31]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1685), .COUT(n1686), .S0(phase_accum_63__N_73[30]), 
          .S1(phase_accum_63__N_73[31]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_31.INIT0 = 16'h5555;
    defparam add_195_31.INIT1 = 16'h5aaa;
    defparam add_195_31.INJECT1_0 = "NO";
    defparam add_195_31.INJECT1_1 = "NO";
    CCU2D add_195_29 (.A0(phase_accum[28]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[29]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1684), .COUT(n1685), .S0(phase_accum_63__N_73[28]), 
          .S1(phase_accum_63__N_73[29]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_29.INIT0 = 16'h5aaa;
    defparam add_195_29.INIT1 = 16'h5aaa;
    defparam add_195_29.INJECT1_0 = "NO";
    defparam add_195_29.INJECT1_1 = "NO";
    CCU2D add_195_9 (.A0(phase_accum[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1674), .COUT(n1675), .S0(phase_accum_63__N_73[8]), 
          .S1(phase_accum_63__N_73[9]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_9.INIT0 = 16'h5555;
    defparam add_195_9.INIT1 = 16'h5aaa;
    defparam add_195_9.INJECT1_0 = "NO";
    defparam add_195_9.INJECT1_1 = "NO";
    CCU2D add_195_41 (.A0(phase_accum[40]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[41]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1690), .COUT(n1691), .S0(phase_accum_63__N_73[40]), 
          .S1(phase_accum_63__N_73[41]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_41.INIT0 = 16'h5aaa;
    defparam add_195_41.INIT1 = 16'h5aaa;
    defparam add_195_41.INJECT1_0 = "NO";
    defparam add_195_41.INJECT1_1 = "NO";
    CCU2D add_195_27 (.A0(phase_accum[26]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[27]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1683), .COUT(n1684), .S0(phase_accum_63__N_73[26]), 
          .S1(phase_accum_63__N_73[27]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_27.INIT0 = 16'h5aaa;
    defparam add_195_27.INIT1 = 16'h5555;
    defparam add_195_27.INJECT1_0 = "NO";
    defparam add_195_27.INJECT1_1 = "NO";
    CCU2D add_195_25 (.A0(phase_accum[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1682), .COUT(n1683), .S0(phase_accum_63__N_73[24]), 
          .S1(phase_accum_63__N_73[25]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_25.INIT0 = 16'h5555;
    defparam add_195_25.INIT1 = 16'h5555;
    defparam add_195_25.INJECT1_0 = "NO";
    defparam add_195_25.INJECT1_1 = "NO";
    CCU2D add_195_23 (.A0(phase_accum[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1681), .COUT(n1682), .S0(phase_accum_63__N_73[22]), 
          .S1(phase_accum_63__N_73[23]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_23.INIT0 = 16'h5aaa;
    defparam add_195_23.INIT1 = 16'h5aaa;
    defparam add_195_23.INJECT1_0 = "NO";
    defparam add_195_23.INJECT1_1 = "NO";
    CCU2D add_195_7 (.A0(phase_accum[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1673), .COUT(n1674), .S0(phase_accum_63__N_73[6]), 
          .S1(phase_accum_63__N_73[7]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_7.INIT0 = 16'h5555;
    defparam add_195_7.INIT1 = 16'h5aaa;
    defparam add_195_7.INJECT1_0 = "NO";
    defparam add_195_7.INJECT1_1 = "NO";
    CCU2D add_195_39 (.A0(phase_accum[38]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[39]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1689), .COUT(n1690), .S0(phase_accum_63__N_73[38]), 
          .S1(phase_accum_63__N_73[39]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_39.INIT0 = 16'h5aaa;
    defparam add_195_39.INIT1 = 16'h5aaa;
    defparam add_195_39.INJECT1_0 = "NO";
    defparam add_195_39.INJECT1_1 = "NO";
    CCU2D add_195_5 (.A0(phase_accum[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1672), .COUT(n1673), .S0(phase_accum_63__N_73[4]), 
          .S1(phase_accum_63__N_73[5]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_5.INIT0 = 16'h5555;
    defparam add_195_5.INIT1 = 16'h5aaa;
    defparam add_195_5.INJECT1_0 = "NO";
    defparam add_195_5.INJECT1_1 = "NO";
    CCU2D add_195_21 (.A0(phase_accum[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1680), .COUT(n1681), .S0(phase_accum_63__N_73[20]), 
          .S1(phase_accum_63__N_73[21]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_21.INIT0 = 16'h5aaa;
    defparam add_195_21.INIT1 = 16'h5aaa;
    defparam add_195_21.INJECT1_0 = "NO";
    defparam add_195_21.INJECT1_1 = "NO";
    CCU2D add_195_37 (.A0(phase_accum[36]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[37]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1688), .COUT(n1689), .S0(phase_accum_63__N_73[36]), 
          .S1(phase_accum_63__N_73[37]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_37.INIT0 = 16'h5aaa;
    defparam add_195_37.INIT1 = 16'h5555;
    defparam add_195_37.INJECT1_0 = "NO";
    defparam add_195_37.INJECT1_1 = "NO";
    LUT4 phase_accum_63__I_0_2_lut (.A(MYLED_c_1), .B(phase_accum[62]), 
         .Z(cos_out_1__N_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/user/lattice/fpgasdr/nco.v(31[19:54])
    defparam phase_accum_63__I_0_2_lut.init = 16'h9999;
    CCU2D add_195_3 (.A0(phase_accum[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1671), .COUT(n1672), .S0(phase_accum_63__N_73[2]), 
          .S1(phase_accum_63__N_73[3]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_3.INIT0 = 16'h5555;
    defparam add_195_3.INIT1 = 16'h5aaa;
    defparam add_195_3.INJECT1_0 = "NO";
    defparam add_195_3.INJECT1_1 = "NO";
    CCU2D add_195_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(phase_accum[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1671), .S1(phase_accum_63__N_73[1]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_1.INIT0 = 16'hF000;
    defparam add_195_1.INIT1 = 16'h5555;
    defparam add_195_1.INJECT1_0 = "NO";
    defparam add_195_1.INJECT1_1 = "NO";
    CCU2D add_195_19 (.A0(phase_accum[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1679), .COUT(n1680), .S0(phase_accum_63__N_73[18]), 
          .S1(phase_accum_63__N_73[19]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_19.INIT0 = 16'h5aaa;
    defparam add_195_19.INIT1 = 16'h5aaa;
    defparam add_195_19.INJECT1_0 = "NO";
    defparam add_195_19.INJECT1_1 = "NO";
    CCU2D add_195_17 (.A0(phase_accum[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1678), .COUT(n1679), .S0(phase_accum_63__N_73[16]), 
          .S1(phase_accum_63__N_73[17]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_17.INIT0 = 16'h5555;
    defparam add_195_17.INIT1 = 16'h5aaa;
    defparam add_195_17.INJECT1_0 = "NO";
    defparam add_195_17.INJECT1_1 = "NO";
    CCU2D add_195_35 (.A0(phase_accum[34]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[35]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1687), .COUT(n1688), .S0(phase_accum_63__N_73[34]), 
          .S1(phase_accum_63__N_73[35]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_35.INIT0 = 16'h5aaa;
    defparam add_195_35.INIT1 = 16'h5aaa;
    defparam add_195_35.INJECT1_0 = "NO";
    defparam add_195_35.INJECT1_1 = "NO";
    CCU2D add_195_63 (.A0(phase_accum[62]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(MYLED_c_1), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1701), .S0(phase_accum_63__N_73[62]), .S1(phase_accum_63__N_73[63]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_63.INIT0 = 16'h5aaa;
    defparam add_195_63.INIT1 = 16'h5aaa;
    defparam add_195_63.INJECT1_0 = "NO";
    defparam add_195_63.INJECT1_1 = "NO";
    CCU2D add_195_61 (.A0(phase_accum[60]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[61]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1700), .COUT(n1701), .S0(phase_accum_63__N_73[60]), 
          .S1(phase_accum_63__N_73[61]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_61.INIT0 = 16'h5aaa;
    defparam add_195_61.INIT1 = 16'h5aaa;
    defparam add_195_61.INJECT1_0 = "NO";
    defparam add_195_61.INJECT1_1 = "NO";
    CCU2D add_195_59 (.A0(phase_accum[58]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[59]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1699), .COUT(n1700), .S0(phase_accum_63__N_73[58]), 
          .S1(phase_accum_63__N_73[59]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_59.INIT0 = 16'h5aaa;
    defparam add_195_59.INIT1 = 16'h5aaa;
    defparam add_195_59.INJECT1_0 = "NO";
    defparam add_195_59.INJECT1_1 = "NO";
    CCU2D add_195_57 (.A0(phase_accum[56]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[57]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1698), .COUT(n1699), .S0(phase_accum_63__N_73[56]), 
          .S1(phase_accum_63__N_73[57]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_57.INIT0 = 16'h5aaa;
    defparam add_195_57.INIT1 = 16'h5aaa;
    defparam add_195_57.INJECT1_0 = "NO";
    defparam add_195_57.INJECT1_1 = "NO";
    CCU2D add_195_55 (.A0(phase_accum[54]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[55]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1697), .COUT(n1698), .S0(phase_accum_63__N_73[54]), 
          .S1(phase_accum_63__N_73[55]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_55.INIT0 = 16'h5aaa;
    defparam add_195_55.INIT1 = 16'h5aaa;
    defparam add_195_55.INJECT1_0 = "NO";
    defparam add_195_55.INJECT1_1 = "NO";
    CCU2D add_195_53 (.A0(phase_accum[52]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[53]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1696), .COUT(n1697), .S0(phase_accum_63__N_73[52]), 
          .S1(phase_accum_63__N_73[53]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_53.INIT0 = 16'h5aaa;
    defparam add_195_53.INIT1 = 16'h5aaa;
    defparam add_195_53.INJECT1_0 = "NO";
    defparam add_195_53.INJECT1_1 = "NO";
    CCU2D add_195_51 (.A0(phase_accum[50]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[51]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1695), .COUT(n1696), .S0(phase_accum_63__N_73[50]), 
          .S1(phase_accum_63__N_73[51]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_51.INIT0 = 16'h5aaa;
    defparam add_195_51.INIT1 = 16'h5aaa;
    defparam add_195_51.INJECT1_0 = "NO";
    defparam add_195_51.INJECT1_1 = "NO";
    CCU2D add_195_49 (.A0(phase_accum[48]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(phase_accum[49]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1694), .COUT(n1695), .S0(phase_accum_63__N_73[48]), 
          .S1(phase_accum_63__N_73[49]));   // c:/users/user/lattice/fpgasdr/nco.v(41[19:47])
    defparam add_195_49.INIT0 = 16'h5aaa;
    defparam add_195_49.INIT1 = 16'h5aaa;
    defparam add_195_49.INJECT1_0 = "NO";
    defparam add_195_49.INJECT1_1 = "NO";
    
endmodule
